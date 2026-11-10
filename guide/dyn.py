"""Ranking over 8 emulated years: per-snapshot prices (index, special price, economy) from sim.jsonl."""
import json, copy, statistics as st
import routes, loops
from routes import P, G, SP
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
base = {(r[3], r[4]): r for r in loops.loops(True)}
n = len(S)
rows = []
for (a, b), v in res.items():
    tots = [t for t, _, _ in v] + [0] * (n - len(v))
    d = SP[a][b]
    mean = sum(tots) / n
    p10 = sorted(tots)[n // 10]
    rows.append((mean / (2 * d), mean, p10, min(tots), max(tots), d, a, b, v[-1][1], v[-1][2]))
rows.sort(reverse=True)
json.dump([[r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7]] for r in rows], open('dyn_rank.json', 'w'))
nm = lambda i: P[i]['name']
print('total', len(rows), 'snapshots', n)
for i, r in enumerate(rows[:25]):
    print(f"{i+1:3d} {nm(r[6]):<13}<->{nm(r[7]):<13} d{r[5]:5.0f} média {r[1]:6.1f} p10 {r[2]:5d} min {r[3]:5d} max {r[4]:5d} /casa {r[0]:5.2f}")
for k, (a, b) in enumerate([(r[6], r[7]) for r in rows]):
    if {nm(a), nm(b)} in ({'Lisbon', 'London'}, {'Lisbon', 'Bordeaux'}, {'Lisbon', 'San Jorge'}):
        r = rows[k]; print('pos', k + 1, nm(a), nm(b), 'média', round(r[1], 1), 'p10', r[2], 'min', r[3], 'max', r[4], 'base', base.get((a, b), (0, 0))[1])
