import pickle, collections
from analyze import *
from nes6502 import Rom
r = Rom()
funcs = pickle.load(open(__import__('os').environ.get('UW_DB','../out/db.pickle'), 'rb'))
GLOBAL = (1, 62, 63)
callers = collections.defaultdict(list)
for f in funcs.values():
    for pc, t in f.calls:
        callers[t].append((f.bank, f.addr, pc, 'call'))
    for pc, v in f.imms:
        callers[v].append((f.bank, f.addr, pc, 'imm'))
def refs(fn):
    a = fn.addr; n = fn.bank; out = []
    for (cb, ca, pc, k) in callers.get(a, []):
        if cb == n or cb in GLOBAL or n in GLOBAL:
            out.append((cb, ca, pc, k))
    # raw word in same bank / globals
    pat = bytes([a & 255, a >> 8])
    for bn in set([n] + list(GLOBAL)):
        bb = r.bank8(bn); i = bb.find(pat)
        while i != -1:
            out.append((bn, None, base_of(bn) + i, 'raw')); i = bb.find(pat, i + 1)
    # bank entry JMP
    b = r.bank8(n)
    if b[0] == 0x4C and (b[1] | (b[2] << 8)) == a:
        out.append((n, None, base_of(n), 'entry'))
    return out
if __name__ == '__main__':
    un = []
    for k, fn in sorted(funcs.items()):
        rr = refs(fn)
        if not rr:
            un.append(fn)
    print('functions', len(funcs), 'unreferenced', len(un))
    for fn in un:
        size = fn.end - fn.addr
        print(f'{fn.bank:2d}:{fn.addr:04X} {fn.kind} size={size:4d} calls={len(fn.calls)} sys={[a[0] if a else None for p,a,n in fn.sys]}')
    pickle.dump([(fn.bank, fn.addr) for fn in un], open(__import__('os').environ.get('UW_UNREF','../out/unref_funcs.pickle'), 'wb'))
