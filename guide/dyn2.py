"""dyn.py with the real sea distances (seadist.json) instead of the old straight-line graph."""
import json, copy
import routes
SD = json.load(open('seadist.json'))
for a in range(50):
    routes.SP[a] = {b: SD[str(a)][str(b)] for b in range(50) if b != a}
import loops
loops.SP = routes.SP
from routes import P, G
L = [json.loads(l) for l in open('../emu_snes/sim.jsonl')]
S = L[::2]
orig = copy.deepcopy(P)
w = lambda p, o: p[o] | p[o + 1] << 8
loops.USE = True
res = {}
for x in S:
    for p in range(50):
        r = x['ports'][p]
        P[p]['price_index'] = r[11]; P[p]['field12'] = w(r, 12); P[p]['econ_worth'] = w(r, 0)
    for eff, tot, d, a, b, ab, ba in loops.loops(True):
        res.setdefault((a, b), []).append((tot, ab, ba))
for p in range(50): P[p].update(orig[p])
n = len(S); rows = []
for (a, b), v in res.items():
    tots = [t for t, _, _ in v] + [0] * (n - len(v))
    d = routes.SP[a][b]; mean = sum(tots) / n
    # most frequent goods each way
    from collections import Counter
    g1 = Counter(G[x[1][1]] for x in v if x[1][1] is not None).most_common(1)
    g2 = Counter(G[x[2][1]] for x in v if x[2][1] is not None).most_common(1)
    rows.append(dict(eff=mean / (2 * d), mean=mean, p10=sorted(tots)[n // 10], d=d, a=a, b=b,
                     ga=g1[0][0] if g1 else None, gb=g2[0][0] if g2 else None))
rows.sort(key=lambda r: -r['eff'])
json.dump(rows, open('dyn_rank2.json', 'w'))
nm = lambda i: P[i]['name']
print('routes', len(rows), 'snapshots', n)
for i, r in enumerate(rows[:30]):
    print(f"{i+1:3d} {nm(r['a']):<13}<->{nm(r['b']):<13} d{r['d']:6.1f} mean {r['mean']:6.1f} p10 {r['p10']:5d} /sq {r['eff']:5.2f}  {r['ga']} / {r['gb']}")
