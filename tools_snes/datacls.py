"""Classify the non-code bytes inside the code modules and find data references.

Classes per byte: N native, B bytecode, S string, P pointer table, T table/other data, Z padding.
A data label is created at every address that code refers to as a word immediate/absolute
operand and that falls on a non-code byte of a module.
"""
import os, sys, pickle
from collections import defaultdict
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'tools'))
import trace as TR
from kbc import insn as kinsn

ROM = TR.ROM
ROOTDIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
WORD_IMM_OPS = {0x8A, 0x8C, 0x8E, 0x90, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB}

class Mod:
    def __init__(self, name, start, size, off, ins):
        self.name, self.start, self.size, self.off, self.ins = name, start, size, off, ins
        self.buf = ROM[off:off + size]
        self.code = bytearray(b'-' * size)      # N/B from instructions (canonical walk)
        a = start
        self.starts = {}
        for addr, t in ins.items():
            if start <= addr < start + size: self.starts[addr] = t
        # mark code bytes from instruction starts
        for addr, t in self.starts.items():
            k = 'B' if t[1] in ('B', 'H') else 'N'
            for i in range(t[0]):
                j = addr - start + i
                if 0 <= j < size: self.code[j] = ord(k)
        self.refs = defaultdict(set)            # addr -> set of referencing (module, addr)
    def has(self, a): return self.start <= a < self.start + self.size
    def is_data(self, a): return self.has(a) and self.code[a - self.start] == ord('-')

def load_mods():
    ram = pickle.load(open(os.path.join(ROOTDIR, 'out', 'trace_ram.pickle'), 'rb'))
    mods = {}
    rom_ins = pickle.load(open(os.path.join(ROOTDIR, 'out', 'trace_rom.pickle'), 'rb'))
    b0 = {off + 0x8000: t for off, t in rom_ins.items() if off < 0x8000}
    mods['bank00'] = Mod('bank00', 0x8000, 0x8000, 0, b0)
    for name, (start, off, size, ins) in ram.items():
        mods[name] = Mod(name, start, size, off, ins)
    return mods

def collect_refs(mods):
    root = mods['root']
    for m in mods.values():
        for a, t in m.starts.items():
            vals = []
            if t[1] == 'B':
                op = m.buf[a - m.start]
                if op in WORD_IMM_OPS:
                    vals.append(m.buf[a - m.start + 1] | m.buf[a - m.start + 2] << 8)
            elif t[1] == 'N':
                n, kind, mn, md, val = t[:5]
                if md in ('abs', 'absx', 'absy') and mn not in ('JSR', 'JMP'): vals.append(val)
                elif md in ('immM', 'immX') and val is not None and val > 0xFF: vals.append(val)
                elif mn == 'PEA': vals.append(val)
            for v in vals:
                if m.is_data(v): m.refs[v].add((m.name, a))
                elif m.name != 'root' and m.name != 'bank00' and root.is_data(v): root.refs[v].add((m.name, a))

STR_OK = set(range(0x20, 0x7F)) | {0x0A, 0x09}
def string_len(buf, i, end):
    """Length of a NUL-terminated string at i (including the NUL) or 0."""
    j = i; pr = 0
    while j < end and buf[j] != 0:
        c = buf[j]
        if c in STR_OK: pr += 1
        elif c >= 0x80: return 0
        j += 1
    if j >= end or j == i: return 0
    n = j - i
    if n < 2 or pr / n < 0.8: return 0
    return n + 1

def classify(m, code_starts_all):
    """Returns list of blocks (addr, size, kind) covering every data byte, kind in S/P/T/Z."""
    blocks = []
    i = 0; S = m.size
    labels = set(m.refs)
    while i < S:
        if m.code[i] != ord('-'): i += 1; continue
        j = i
        while j < S and m.code[j] == ord('-'): j += 1
        # run [i, j)
        p = i
        while p < j:
            a = m.start + p
            # padding: a run of >= 16 identical $00/$FF bytes
            c0 = m.buf[p]
            if c0 in (0, 0xFF):
                q = p
                while q < j and m.buf[q] == c0 and (q == p or (m.start + q) not in labels): q += 1
                if q - p >= 16:
                    blocks.append((a, q - p, 'Z')); p = q; continue
            n = string_len(m.buf, p, j)
            if n:
                blocks.append((a, n, 'S')); p += n; continue
            # pointer table: >=2 consecutive words pointing at labels/strings/code inside the module
            q = p; cnt = 0
            while q + 1 < j:
                w = m.buf[q] | m.buf[q + 1] << 8
                ok = m.has(w) and (w in labels or w in m.starts or string_len(m.buf, w - m.start, m.size))
                if not ok: break
                cnt += 1; q += 2
                if (m.start + q) in labels and cnt >= 2: break
            if cnt >= 2:
                blocks.append((a, q - p, 'P')); p = q; continue
            # table: until next label, next string start, or run end
            q = p + 1
            while q < j and (m.start + q) not in labels and not string_len(m.buf, q, j):
                if m.buf[q] in (0, 0xFF) and q + 16 <= j and len(set(m.buf[q:q + 16])) == 1: break
                q += 1
            blocks.append((a, q - p, 'T')); p = q
        i = j
    return blocks

def run():
    mods = load_mods()
    collect_refs(mods)
    out = {}
    for name, m in mods.items():
        blocks = classify(m, None)
        cls = bytearray(m.code)
        for a, n, k in blocks:
            for x in range(n): cls[a - m.start + x] = ord(k)
        out[name] = {'start': m.start, 'size': m.size, 'off': m.off, 'blocks': blocks,
                     'refs': {a: sorted(v) for a, v in m.refs.items()}, 'cls': bytes(cls)}
    pickle.dump(out, open(os.path.join(ROOTDIR, 'out', 'datacls.pickle'), 'wb'))
    tot = defaultdict(int)
    for name, d in out.items():
        c = d['cls']
        for k in 'NBSPTZ-': tot[k] += c.count(k.encode())
        print(f"{name:<9}", ' '.join(f"{k}:{c.count(k.encode())}" for k in 'NBSPTZ-'))
    print('TOTAL', dict(tot))
    return out

if __name__ == '__main__':
    run()
