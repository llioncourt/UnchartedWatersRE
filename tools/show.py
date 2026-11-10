"""Pretty-print a function (bytecode or native) with string annotations."""
import sys, pickle
from analyze import Func, base_of
from nes6502 import Rom
from kbc import insn
r = Rom()
import __main__; __main__.Func = Func
import os
funcs = pickle.load(open(os.environ.get('UW_DB', '../out/db.pickle'), 'rb'))
def cstr(n, a, maxlen=60):
    base = base_of(n)
    if not (base <= a < base + 0x2000): return None
    b = r.bank8(n); o = a - base; s = b[o:o + 200].split(b'\x00')[0]
    if len(s) >= 3 and sum(32 <= c < 127 or c == 10 for c in s) >= len(s) * 0.7:
        return repr(s[:maxlen].decode('latin1'))
    return None
def show(n, a):
    f = funcs[(n, a)]
    print(f'== {n}:{a:04X} {f.kind} frame={f.frame} end={f.end:04X}')
    for pc in sorted(f.ins):
        d = f.ins[pc]
        if f.kind == 'bc':
            txt = d['text']; ann = ''
            if d['imm'] is not None and isinstance(d['imm'], int) and d['imm'] >= 0x8000:
                for nb in (n, 1, 62, 63):
                    s = cstr(nb, d['imm'])
                    if s: ann = '  ; ' + s; break
            print(f'  {pc:04X}  {txt}{ann}')
        else:
            print(f'  {pc:04X}  {d[4]}')
if __name__ == '__main__':
    for arg in sys.argv[1:]:
        n, a = arg.split(':'); show(int(n), int(a, 16))
