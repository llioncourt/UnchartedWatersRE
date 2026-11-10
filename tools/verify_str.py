import pickle, sys, re
from analyze import *
from nes6502 import Rom
r = Rom()
funcs = pickle.load(open('../out/db.pickle', 'rb'))
allimm = {}
for f in funcs.values():
    for pc, v in f.imms: allimm.setdefault(v, []).append((f.bank, pc))
def check(n, a):
    b = r.bank8(n); base = base_of(n); o = a - base
    s = o
    while s > 0 and b[s-1] != 0 and o - s < 16: s -= 1
    k = o
    while k < len(b) and not chr(b[k]).isalpha(): k += 1
    hits = []
    for v in range(base + s, base + k + 2):
        for bb, pc in allimm.get(v, []):
            if bb == n or bb in (1, 62, 63) or n in (1, 62, 63):
                hits.append(('imm', bb, '%04X' % pc, '%04X' % v))
        pat = bytes([v & 255, v >> 8])
        for bn in set([n, 1, 62, 63]):
            bb = r.bank8(bn); i = bb.find(pat)
            while i != -1:
                hits.append(('raw', bn, '%04X' % (base_of(bn) + i), '%04X' % v)); i = bb.find(pat, i + 1)
    return base + s, hits
if __name__ == '__main__':
    for arg in sys.argv[1:]:
        n, a = arg.split(':'); n = int(n); a = int(a, 16)
        st, h = check(n, a)
        print(f'{n}:{a:04X} true_start={st:04X} hits={h}')
