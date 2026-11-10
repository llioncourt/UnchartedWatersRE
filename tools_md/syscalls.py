import re, collections, sys
from cg import CG
def calls(v):
    g = CG(v)
    ins = g.ins
    out = []
    a2bfc = False
    for i, (a, s, m, o) in enumerate(ins):
        if m.startswith('link') or (m == 'movem.l' and '-(a7)' in o and i and ins[i-1][2] == 'rts'):
            a2bfc = False
        if m == 'movea.l' and o == '#$bfc, a2': a2bfc = True
        if (m == 'jsr' and o == '(a2)' and a2bfc) or (m == 'jsr' and o == '$bfc.l'):
            pushes = []
            for j in range(i - 1, max(i - 8, 0), -1):
                aa, ss, mm, oo = ins[j]
                if mm.startswith('pea'):
                    mt = re.match(r'\$([0-9a-f]+)\.w', oo)
                    pushes.append(int(mt.group(1), 16) if mt else None)
                elif mm == 'clr.l' and oo == '-(a7)': pushes.append(0)
                elif oo.endswith('-(a7)'): pushes.append(None)
                elif mm in ('jsr', 'bsr.w', 'bsr.b', 'rts', 'bra.w', 'bra.b') or mm.startswith('b'): break
                if len(pushes) >= 3: break
            out.append((a, pushes))
    return g, out
if __name__ == '__main__':
    v = sys.argv[1]; want = [int(x) for x in sys.argv[2].split(',')]
    g, out = calls(v)
    c = collections.Counter()
    for a, p in out:
        if p and p[0] in want:
            c[(p[0], p[1] if len(p) > 1 else None)] += 1
    for k, n in sorted(c.items(), key=lambda x: (x[0][0], -1 if x[0][1] is None else x[0][1])): print(k, n)
