"""Whole-ROM static analysis for Uncharted Waters (NES).

Builds a database of functions (bytecode + native), their instructions,
calls, syscalls (with constant args when pushed as immediates), immediates
and absolute RAM references. Saves to out/db.pickle.
"""
import pickle, collections, os
from nes6502 import Rom, decode, branch_target
from kbc import insn

BASE = {1: 0xA000, 62: 0xC000, 63: 0xE000}
CODE_BANKS = [b for b in list(range(0, 31)) + [35, 36, 37, 38, 62, 63]]
SYSCALL = 0xEED4

def base_of(n):
    return BASE.get(n, 0x8000)

class Func:
    def __init__(self, bank, addr, kind):
        self.bank, self.addr, self.kind = bank, addr, kind
        self.ins = {}          # pc -> decoded dict (bytecode) or tuple (native)
        self.calls = []        # (pc, target)
        self.sys = []          # (pc, [args...]) args = list of immediates (None if unknown), args[0]=sysno
        self.imms = []         # (pc, value)
        self.absrefs = []      # (pc, addr, opname)
        self.callptr = []      # pcs
        self.frame = 0
        self.end = addr
        self.bad = False

def trace_bytecode(r, bank, off):
    buf = r.bank8(bank); base = base_of(bank)
    pc0 = base + off
    f = Func(bank, pc0, 'bc')
    fs = buf[off + 3] | (buf[off + 4] << 8)
    f.frame = (65536 - fs) & 0xFFFF
    todo = [pc0 + 5]
    while todo:
        pc = todo.pop()
        while True:
            if pc in f.ins: break
            o = pc - base
            if not (0 <= o < 0x2000):
                f.bad = True; break
            d = insn(buf, o, pc)
            f.ins[pc] = d
            if d.get('bad'):
                f.bad = True; break
            for t in d['targets']:
                if base <= t < base + 0x2000:
                    todo.append(t)
                else:
                    f.bad = True
            if d['end']: break
            pc += d['len']
    # second pass in address order: calls / syscalls / immediates
    pcs = sorted(f.ins)
    if pcs:
        last = pcs[-1]
        f.end = last + f.ins[last]['len']
    stackimm = []
    for pc in pcs:
        d = f.ins[pc]; op = d['op']
        if d['imm'] is not None and op in (0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6A,0x6B,0x6C,0x6D,0x6E,0x6F,0x8D,0x8E):
            stackimm.append(d['imm'])
        elif op in (0x89, 0x8A) or 0x40 <= op < 0x50:
            pass
        if d['imm'] is not None and op in (0x8A, 0x8C, 0x8E, 0x90):
            f.imms.append((pc, d['imm']))
        if d['abs'] is not None:
            f.absrefs.append((pc, d['abs'], d['text'].split()[0]))
        if d['call'] is not None:
            f.calls.append((pc, d['call']))
            if d['call'] == SYSCALL:
                nargs = (buf[pc - base + 3] // 2) if op == 0xE9 else None
                args = list(reversed(stackimm[-nargs:])) if nargs and len(stackimm) >= nargs else None
                f.sys.append((pc, args, nargs))
            stackimm = []
        if op in (0xDD, 0xEA):
            f.callptr.append(pc); stackimm = []
        if d['end'] or d['targets']:
            stackimm = [] if d['end'] else stackimm
        if op not in (0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6A,0x6B,0x6C,0x6D,0x6E,0x6F,0x8D,0x8E) and d['call'] is None:
            # any other push breaks the immediate chain (args computed at runtime)
            if op in (0x87, 0x88, 0xA3, 0xAA, 0xAB, 0xB3) or (0x30 <= op < 0x40):
                stackimm.append(None)
    return f

def trace_native(r, bank, off, entry_skip=6, kind='nat'):
    buf = r.bank8(bank); base = base_of(bank)
    pc0 = base + off
    f = Func(bank, pc0, kind)
    if kind == 'nat':
        f.frame = buf[off + 4] | (buf[off + 5] << 8)
    todo = [pc0 + entry_skip]
    prev = {}
    while todo:
        pc = todo.pop()
        while True:
            if pc in f.ins: break
            o = pc - base
            if not (0 <= o < 0x2000):
                break
            d = decode(buf, o, pc)
            if not d:
                f.bad = True; break
            sz, mn, md, val, t = d
            f.ins[pc] = d
            if md == 'rel':
                todo.append(branch_target(md, val, pc))
            if mn == 'JSR':
                if val == 0xE338:
                    tgt = buf[o+3] | (buf[o+4] << 8)
                    f.calls.append((pc, tgt))
                    f.ins[pc] = (6, 'JSR', 'abs', val, f'CALLX ${tgt:04X},{buf[o+5]}')
                    pc += 6
                    continue
                f.calls.append((pc, val))
                if val == 0xE4BF or val == 0xE299:
                    f.bad = True; break
            if mn == 'JMP':
                if md == 'abs':
                    if base <= val < base + 0x2000:
                        todo.append(val)
                    else:
                        f.calls.append((pc, val))
                break
            if mn in ('RTS', 'RTI', 'BRK'): break
            if md in ('abs', 'abx', 'aby') and mn != 'JSR':
                f.absrefs.append((pc, val, mn))
            if md in ('zp', 'zpx', 'zpy'):
                f.absrefs.append((pc, val, mn))
            pc += sz
    # immediate pairs LDA #lo ... LDX/LDA #hi -> pointer candidates
    pcs = sorted(f.ins)
    for i, pc in enumerate(pcs):
        sz, mn, md, val, t = f.ins[pc]
        if md == 'imm' and i + 1 < len(pcs):
            for j in range(1, 4):
                if i + j >= len(pcs): break
                sz2, mn2, md2, val2, t2 = f.ins[pcs[i + j]]
                if md2 == 'imm':
                    f.imms.append((pc, val | (val2 << 8)))   # lo then hi
                    f.imms.append((pc, (val << 8) | val2))   # hi then lo (PHA order)
                    break
    if pcs:
        f.end = pcs[-1] + f.ins[pcs[-1]][0]
    return f

def build():
    r = Rom()
    funcs = {}
    for n in CODE_BANKS:
        buf = r.bank8(n)
        for i in range(len(buf) - 6):
            if buf[i] == 0x20 and buf[i+1] == 0xBF and buf[i+2] == 0xE4:
                f = trace_bytecode(r, n, i)
                funcs[(n, f.addr)] = f
            elif buf[i] == 0x20 and buf[i+1] == 0x99 and buf[i+2] == 0xE2:
                f = trace_native(r, n, i)
                funcs[(n, f.addr)] = f
    return r, funcs

if __name__ == '__main__':
    r, funcs = build()
    os.makedirs('../out', exist_ok=True)
    with open(os.environ.get('UW_DB', '../out/db.pickle'), 'wb') as fh:
        pickle.dump(funcs, fh)
    kinds = collections.Counter(f.kind for f in funcs.values())
    bad = [k for k, f in funcs.items() if f.bad]
    print('functions:', len(funcs), dict(kinds), 'bad:', len(bad))
    for k in bad[:30]:
        print('  bad', k[0], '%04X' % k[1])
    # syscall histogram
    sysc = collections.Counter()
    for f in funcs.values():
        for pc, args, n in f.sys:
            sysc[args[0] if args else None] += 1
    print('syscalls:', sorted(sysc.items(), key=lambda x: (x[0] is None, x[0] or 0)))
