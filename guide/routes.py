import json, math, heapq, itertools
t = json.load(open('../editor/reference_us.json'))
allp = json.load(open('../out/snes_ports_all.json'))
G = t['goods']; P = t['ports']; M = t['markets']
pos = {i: (x, y) for i, n, x, y in allp}
name = {i: n for i, n, x, y in allp}
W = {'GIB': (527, 171), 'BRITTANY': (535, 118), 'SICILY': (585, 170), 'OTRANTO': (598, 156), 'AEGEAN': (606, 165),
     'BOSPORUS': (622, 144), 'YUCATAN': (258, 248)}
for k, v in W.items(): pos[k] = v; name[k] = k
def dist(a, b):
    (x1, y1), (x2, y2) = pos[a], pos[b]
    return math.hypot(x1 - x2, y1 - y2)
E = {}
def edge(a, b):
    E.setdefault(a, set()).add(b); E.setdefault(b, set()).add(a)
def chain(*xs):
    for a, b in zip(xs, xs[1:]): edge(a, b)
def clique(*xs):
    for a, b in itertools.combinations(xs, 2): edge(a, b)
# Europe Atlantic / North
chain(1, 0, 'BRITTANY', 16); chain('BRITTANY', 19, 15, 18, 17); edge(19, 18); edge(15, 17)
# Gibraltar & Mediterranean (west basin open; Italy via Sicily; Adriatic via Otranto; east via Aegean)
chain(1, 'GIB'); edge(0, 'GIB')
clique('GIB', 7, 9, 8, 6, 3, 5, 10, 'SICILY', 11)
chain(11, 'SICILY'); chain('SICILY', 'OTRANTO', 4); chain('SICILY', 'AEGEAN', 2); chain('AEGEAN', 12); edge('SICILY', 12); edge(10, 12)
chain(2, 'BOSPORUS', 13); chain('BOSPORUS', 14)
# West Africa
chain(0, 61, 27, 28, 60, 59); edge(1, 61)
# East Africa / Arabia / India / SE Asia / Far East
chain(59, 29, 30, 31, 68, 34)
chain(34, 35)                 # Red Sea
chain(34, 32); chain(32, 36, 33)   # Gulf
clique(31, 30, 34, 32, 38, 37, 45, 46, 40)    # Arabian Sea open water
chain(38, 37, 45, 46, 40)
chain(40, 39, 52, 48, 49, 47); chain(40, 41); chain(39, 41, 42, 44, 43); edge(42, 43)
# Caribbean & South America
clique(20, 21, 22, 23, 25, 50, 'YUCATAN'); chain('YUCATAN', 24)
chain(25, 26); chain(26, 58)
# Atlantic crossings
edge(0, 20); edge(0, 25); edge(61, 25); edge(61, 26); edge(28, 26); edge(0, 56); edge(56, 20)
def sp(src):
    D = {src: 0.0}; pq = [(0.0, src)]
    while pq:
        dd, u = heapq.heappop(pq)
        if dd > D[u]: continue
        for v in E.get(u, ()):
            nd = dd + dist(u, v)
            if nd < D.get(v, 1e18): D[v] = nd; heapq.heappush(pq, (nd, v))
    return D
SP = {i: sp(i) for i in range(50)}
def idxf(p, use_initial=True):
    return (P[p]['price_index'] + 50) if use_initial else 100
def buy_list(p, use_initial=True):
    """goods a port sells to the player at game start: {good: (price, req_econ)}"""
    out = {}
    m = M[P[p]['market']]; f = idxf(p, use_initial); ec = P[p]['econ_worth']
    for j, g in enumerate(m['goods']):
        if g == 255: continue
        out[g] = (f * m['buy'][j] // 100, m['req'][j] * 50, m['req'][j] * 50 <= ec)
    if P[p]['mkt_b1'] != 255:
        g = P[p]['mkt_b1']
        pr = f * P[p]['field12'] // 100
        if g not in out or pr < out[g][0]:
            out[g] = (pr, P[p]['mkt_b2'] * 50, P[p]['mkt_b2'] * 50 <= ec)
    return out
def sell_price(p, g, use_initial=True):
    f = idxf(p, use_initial)
    # anti-arbitrage rule (koueki $B1F0): selling the port's own special good pays half its buy price + 1
    if P[p]['mkt_b1'] == g and P[p]['mkt_b2'] * 50 <= P[p]['econ_worth']:
        return (f * P[p]['field12'] // 100) // 2 + 1
    return f * M[P[p]['market']]['sell'][g] // 100
if __name__ == '__main__':
    import sys
    rows = []
    for a in range(50):
        for g, (pr, req, ok) in buy_list(a).items():
            for b in range(50):
                if b == a: continue
                prof = sell_price(b, g) - pr
                if prof <= 0: continue
                dd = SP[a].get(b)
                rows.append((prof, g, a, b, pr, sell_price(b, g), dd, req, ok))
    json.dump(rows, open('rows.json', 'w'))
    # best sell port for each (buy port, good)
    best = {}
    for r in rows:
        k = (r[2], r[1])
        if k not in best or r[0] > best[k][0]: best[k] = r
    for k, r in sorted(best.items(), key=lambda kv: -kv[1][0])[:45]:
        prof, g, a, b, pr, sp_, dd, req, ok = r
        print(f'{G[g]:<10} compra {name[a]:<13}{pr:5d}  vende {name[b]:<13}{sp_:5d}  lucro/un {prof:5d}  dist {dd:6.0f}  {"" if ok else "(econ>=%d)" % req}')
