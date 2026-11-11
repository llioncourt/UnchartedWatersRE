"""Sea distances between ports on the game's own chart (half-square grid, 8 directions, the world wraps east-west).
Writes seadist.json: {a: {b: squares}} for all 70 ports.
usage: python3 seadist.py ../out/chart_quarters.pkl chartdata.json   (both from tools_snes/book_chart.py)"""
import json, pickle, sys, numpy as np
from scipy.sparse import coo_matrix
from scipy.sparse.csgraph import dijkstra
Q = np.array(pickle.load(open(sys.argv[1], 'rb')))
ports = json.load(open(sys.argv[2]))['ports']
H, W = Q.shape
sea = (Q == 0)
idx = -np.ones((H, W), dtype=np.int64); n = int(sea.sum()); idx[sea] = np.arange(n)
rows, cols, wts = [], [], []
ys, xs = np.nonzero(sea)
for dy, dx, c in ((0, 1, 1.0), (1, 0, 1.0), (1, 1, 2 ** .5), (1, -1, 2 ** .5)):
    ny = ys + dy; nx = (xs + dx) % W
    ok = (ny < H)
    ny, nx, sy, sx = ny[ok], nx[ok], ys[ok], xs[ok]
    m = sea[ny, nx]
    a = idx[sy[m], sx[m]]; b = idx[ny[m], nx[m]]
    rows += [a, b]; cols += [b, a]; wts += [np.full(len(a), c), np.full(len(a), c)]
G = coo_matrix((np.concatenate(wts), (np.concatenate(rows), np.concatenate(cols))), shape=(n, n)).tocsr()
def node(x, y):
    best = None
    for r in range(1, 6):
        for yy in range(int(y) - r, int(y) + r + 1):
            for xx in range(int(x) - r, int(x) + r + 1):
                if 0 <= yy < H and sea[yy, xx % W]:
                    d = (yy - y) ** 2 + (xx - x) ** 2
                    if best is None or d < best[0]: best = (d, idx[yy, xx % W])
        if best: return best[1]
src = [node(2 * p[2], 2 * p[3]) for p in ports]
D = dijkstra(G, indices=src)
out = {}
for i, p in enumerate(ports):
    out[p[0]] = {q[0]: round(float(D[i, src[j]]) / 2, 1) for j, q in enumerate(ports)}
json.dump(out, open('seadist.json', 'w'))
print('ok', len(out), 'Lisbon-London', out[0][15], 'Lisbon-Calicut', out[0][45], 'Lisbon-Nagasaki', out[0][47], 'Lisbon-Argin', out[0][27])
