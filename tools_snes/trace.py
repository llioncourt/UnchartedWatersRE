"""Recursive tracer for Uncharted Waters (SNES US): native 65816 + Koei bytecode.

Segments (each maps CPU addresses to file offsets):
  rom    LoROM banks $00-$1F (mirrors $80-$9F)
  root   resident image, $7E:2000-$95AD  <- file $8000
  <ovl>  each overlay at its own load base in bank $7E
Native code inside root/overlays runs from RAM; bytecode functions start with JSR $21BA.

Output: out/trace_<seg>.json with per-byte class (N=native, B=bytecode, - unknown),
instruction starts, entry points, and a log of unresolved indirect jumps.
"""
import sys, os, json, pickle
from collections import defaultdict, deque
from w65816 import load, T, ins_len, FIX
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'tools'))
from kbc import insn as kinsn

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, '..', 'out')
ROM = load('us')
HDR = bytes([0x20, 0xBA, 0x21])   # bytecode function prologue (JSR $21BA)

# ---------------------------------------------------------------- segments
class Seg:
    def __init__(s, name, bank, start, size, off):
        s.name, s.bank, s.start, s.size, s.off = name, bank, start, size, off
        s.cls = bytearray(b'-' * size)
        s.ins = {}            # addr -> (len, kind, text, m, x)
        s.entries = set()
        s.flags = {}          # addr -> (m,x) for native
        s.log = []
    def has(s, a): return s.start <= a < s.start + s.size
    def b(s, a): return ROM[s.off + a - s.start]
    def mark(s, a, n, c):
        for i in range(n):
            j = a - s.start + i
            if 0 <= j < s.size:
                if s.cls[j] not in (ord('-'), ord(c)):
                    s.log.append(f'overlap {c} at {a+i:04X} (was {chr(s.cls[j])})')
                s.cls[j] = ord(c)

def directory():
    ents = []
    o = 0x7800
    while True:
        name = ROM[o:o + 8].split(b'\0')[0]
        if not name or not all(32 < c < 127 for c in name): break
        bank = ROM[o + 8] | ROM[o + 9] << 8; addr = ROM[o + 10] | ROM[o + 11] << 8; size = ROM[o + 12] | ROM[o + 13] << 8
        ents.append((name.decode(), bank * 0x8000 + addr - 0x8000, size)); o += 16
    return ents

DIR = directory()
SEGS = {}
for name, off, size in DIR:
    if name == 'root':
        SEGS['root'] = Seg('root', 0x7E, 0x2000, size, off)
    elif name in ('sgdata', 'fdata', 'cbmap0', 'kdata'):
        continue
    else:
        base = (ROM[off + 1] | ROM[off + 2] << 8) - 3       # overlays start with JSR <entry>... base = load address
        SEGS[name] = Seg(name, 0x7E, base, size, off)

class RomSeg(Seg):
    def __init__(s):
        super().__init__('rom', 0, 0, 0, 0)
        s.cls = bytearray(b'-' * len(ROM)); s.bankmap = True
    def has(s, a): return True
    def b(s, a): return ROM[a]
    def mark(s, a, n, c):
        for i in range(n):
            if s.cls[a + i] not in (ord('-'), ord(c)):
                s.log.append(f'overlap {c} at {a+i:06X} (was {chr(s.cls[a+i])})')
            s.cls[a + i] = ord(c)
RS = RomSeg()

def rom_off(bank, addr):
    bank &= 0x7F
    if bank > 0x1F or addr < 0x8000: return None
    return bank * 0x8000 + addr - 0x8000

# ---------------------------------------------------------------- native tracing
BR_END = {'RTS', 'RTL', 'RTI', 'BRK', 'STP', 'COP'}
NORETURN = {0x008000}
JSR_NORET = {0x21BA}                        # JSR $21BA in RAM = bytecode function prologue
FORCE_FLAGS = {0x9B2E: (False, False)}   # BEQ from 00:9ADD arrives with M=1: dead path (name >8 chars)
IND_TABLES = {0x99F0: 79, 0x995C: 17, 0x99A4: 17}                       # JSL $008000 = enter bytecode VM, never returns here
TABLES = [(0xA797, 256, 'vm_op'), (0xA9AF, 0x30, 'vm_b7'), (0x99F0, 79, 'syscall')]

def native_trace(work):
    """work: deque of (seg, bank, pc, m, x). seg is a Seg (RAM image) or RS (ROM)."""
    seen = set()
    calls = []
    while work:
        seg, bank, pc, m, x = work.popleft()
        stack = []
        while True:
            if seg is RS and (bank & 0x7F) == 0 and pc in FORCE_FLAGS and (m, x) != FORCE_FLAGS[pc]:
                RS.log.append(f'forced flags at 00:{pc:04X} from m{int(m)}x{int(x)}'); m, x = FORCE_FLAGS[pc]
            key = (seg.name, bank & 0x7F, pc, m, x)
            if seg is RS:
                off = rom_off(bank, pc)
                if off is None:
                    RS.log.append(f'native jump outside ROM {bank:02X}:{pc:04X}'); break
                read = lambda i, off=off: ROM[off + i]
                addr_key = off
            else:
                if not seg.has(pc):
                    seg.log.append(f'native jump outside segment {pc:04X}'); break
                read = lambda i, seg=seg, pc=pc: seg.b(pc + i)
                addr_key = pc
            if key in seen:
                break
            seen.add(key)
            op = read(0); mn, md = T[op]; n = ins_len(op, m, x)
            val = 0
            for i in range(1, n): val |= read(i) << (8 * (i - 1))
            prev = seg.ins.get(addr_key)
            if prev and prev[1] == 'H':
                break                                   # native jump into a bytecode function prologue
            if prev and prev[1] == 'N' and prev[0] != n:
                seg.log.append(f'length conflict at {bank:02X}:{pc:04X} {mn} m{int(m)}x{int(x)} n={n} vs n={prev[0]}')
            seg.flags[addr_key] = (m, x)
            if not prev or prev[1] != 'N': seg.ins[addr_key] = (n, 'N', mn, md, val, m, x, bank)
            if seg is RS or seg.ins.get(addr_key, (0, ''))[1] != 'H':
                seg.mark(addr_key, n, 'N')
            nxt = (pc + n) & 0xFFFF
            if mn == 'REP':
                if val & 0x20: m = False
                if val & 0x10: x = False
            elif mn == 'SEP':
                if val & 0x20: m = True
                if val & 0x10: x = True
            elif mn == 'PHP': stack.append((m, x))
            elif mn == 'PLP':
                if stack: m, x = stack.pop()
            if md == 'rel':
                t = (nxt + (val - 256 if val > 127 else val)) & 0xFFFF
                work.append((seg, bank, t, m, x))
                if mn == 'BRA': break
            elif md == 'rell':
                t = (nxt + (val - 65536 if val > 32767 else val)) & 0xFFFF
                work.append((seg, bank, t, m, x))
                if mn == 'BRL': break
            elif mn in ('JSR', 'JMP') and md == 'abs':
                if not (seg is not RS and val in JSR_NORET):
                    work.append((seg, bank, val, m, x))
                calls.append((seg.name, bank, pc, val))
                if mn == 'JMP' or (seg is not RS and val in JSR_NORET): break
            elif md == 'indx' and seg is RS and val in IND_TABLES:
                for i in range(IND_TABLES[val]):
                    t = ROM[rom_off(0, val) + 2 * i] | ROM[rom_off(0, val) + 2 * i + 1] << 8
                    work.append((seg, bank, t, m, x))
                if mn == 'JMP': break
            elif mn in ('JSL', 'JML') and md == 'absl':
                tb, ta = val >> 16, val & 0xFFFF
                tseg = RS if (tb & 0x7F) <= 0x1F and ta >= 0x8000 else None
                if tb == 0x7E:
                    tseg = SEGS['root'] if SEGS['root'].has(ta) else None
                    if tseg is None:
                        seg.log.append(f'JSL into RAM {val:06X} from {bank:02X}:{pc:04X} (overlay?)')
                if tseg is not None: work.append((tseg, tb, ta, m, x))
                calls.append((seg.name, bank, pc, val))
                if mn == 'JML' or val in NORETURN: break
            elif mn == 'JML' and md == 'indl' and val == 0x809C:
                work.append((SEGS['root'], 0x7E, 0x2000, m, x)); break
            elif md in ('ind', 'indx', 'indl'):
                seg.log.append(f'indirect {mn} {md} ${val:04X} at {bank:02X}:{pc:04X}')
                if mn != 'JSR': break
            elif mn in BR_END:
                break
            pc = nxt
    return calls

# ---------------------------------------------------------------- bytecode tracing
def bc_trace(seg, entries):
    q = deque(entries); seen = set(); ncalls = set(); ext = set()
    while q:
        f = q.popleft()
        if f in seen: continue
        if not seg.has(f):
            ext.add(f); continue
        seen.add(f)
        o = f - seg.start
        if ROM[seg.off + o:seg.off + o + 3] != HDR:
            ncalls.add(f); continue
        seg.entries.add(f)
        seg.mark(f, 5, 'B'); seg.ins[f] = (5, 'H', 'FUNC', None, ROM[seg.off + o + 3] | ROM[seg.off + o + 4] << 8, 0, 0, 0x7E)
        work = deque([f + 5]); vis = set()
        buf = ROM[seg.off:seg.off + seg.size]
        while work:
            pc = work.popleft()
            while seg.has(pc) and pc not in vis:
                vis.add(pc)
                d = kinsn(buf, pc - seg.start, pc)
                seg.ins[pc] = (d['len'], 'B', d['text'], None, None, 0, 0, 0x7E)
                seg.mark(pc, d['len'], 'B')
                if d.get('bad'): seg.log.append(f'bad bytecode at {pc:04X} in func {f:04X}'); break
                for t in d['targets']: work.append(t)
                if d['call'] is not None: q.append(d['call'])
                if d['end']: break
                pc += d['len']
    return ncalls, ext

if __name__ == '__main__':
    # 1) bytecode: every function header in every RAM segment is an entry
    native_from_bc = defaultdict(set); ext_calls = {}
    for name, seg in SEGS.items():
        heads = [seg.start + i for i in range(seg.size - 3) if ROM[seg.off + i:seg.off + i + 3] == HDR]
        nc, ext = bc_trace(seg, heads)
        for a in nc:
            native_from_bc[name].add(a)
        ext_calls[name] = ext
    # calls from overlays into root: bytecode functions are already traced (all headers), the rest is native
    root = SEGS['root']
    for name, ext in ext_calls.items():
        for a in ext:
            if root.has(a) and ROM[root.off + a - root.start:root.off + a - root.start + 3] != HDR:
                native_from_bc['root'].add(a)
            elif not root.has(a):
                SEGS[name].log.append(f'call outside root/overlay ${a:04X}')
    # every overlay starts with JMP <first function>
    for name, seg in SEGS.items():
        if name != 'root' and ROM[seg.off] == 0x4C: native_from_bc[name].add(seg.start)
    # 2) native
    work = deque()
    v = lambda o: ROM[o] | ROM[o + 1] << 8
    work.append((RS, 0, v(0x7FFC), True, True))              # RESET (emulation)
    for o in (0x7FE4, 0x7FE6, 0x7FE8, 0x7FEA, 0x7FEE):
        if v(o) >= 0x8000: work.append((RS, 0, v(o), False, False))
    a = 0x8000
    while ROM[rom_off(0, a)] == 0x4C:                          # engine JMP table at $00:8000
        work.append((RS, 0, a, False, False)); a += 3
    for tb, n, tag in TABLES:
        for i in range(n):
            t = v(rom_off(0, tb) + 2 * i)
            if t >= 0x8000: work.append((RS, 0, t, False, False))
    for name, addrs in native_from_bc.items():
        for a in addrs:
            seg = SEGS[name] if SEGS[name].has(a) else SEGS['root']
            work.append((seg, 0x7E, a, False, False))
    calls = native_trace(work)
    # 3) report
    rep = {}
    for seg in list(SEGS.values()) + [RS]:
        c = bytes(seg.cls)
        rep[seg.name] = {'size': len(c), 'N': c.count(b'N'), 'B': c.count(b'B'), '-': c.count(b'-'),
                         'funcs': len(seg.entries), 'log': seg.log[:2000]}
        open(os.path.join(OUT, f'trace_{seg.name}.cls'), 'wb').write(c)
    pickle.dump({n: (s.start, s.off, s.size, s.ins) for n, s in SEGS.items()}, open(os.path.join(OUT, 'trace_ram.pickle'), 'wb'))
    pickle.dump(RS.ins, open(os.path.join(OUT, 'trace_rom.pickle'), 'wb'))
    json.dump(rep, open(os.path.join(OUT, 'trace_report.json'), 'w'), indent=1)
    for n, r in rep.items():
        print(f"{n:<9} size {r['size']:7d}  native {r['N']:6d}  bytecode {r['B']:6d}  unknown {r['-']:7d}  funcs {r['funcs']:4d}  log {len(r['log'])}")
