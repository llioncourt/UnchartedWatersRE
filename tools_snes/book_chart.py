"""World chart images for the Master Play book: the sea chart at half-square resolution, plus regional insets.
usage: python3 book_chart.py <rom.sfc> <out_dir> <fdata.bin> > chartdata.json
(writes worldchart.png and inset_*.png, out/chart_quarters.pkl, and prints port positions as JSON)"""
import sys, json, pickle, os
from PIL import Image
R = open(sys.argv[1], 'rb').read(); OUT = sys.argv[2]
if len(R) % 1024 == 512: R = R[512:]
B = 0x50000
w = lambda o: R[o] | R[o + 1] << 8
bt, ct = w(B), w(B + 2)
# fdata (file) holds the quarter table and the port records
FD = open(sys.argv[3], 'rb').read() if len(sys.argv) > 3 else None
grid = [[0] * 504 for _ in range(252)]
for zy in range(12):
    for zx in range(24):
        blk = R[B + 4 + 5 * (zy * 24 + zx)]
        for by in range(3):
            for bx in range(3):
                ch = w(B + bt + 18 * blk + 2 * (by * 3 + bx))
                for cy in range(7):
                    for cx in range(7):
                        grid[zy * 21 + by * 7 + cy][zx * 21 + bx * 7 + cx] = R[B + ct + 49 * ch + cy * 7 + cx]
T = [list(FD[0x25F8 + 4 * i:0x25F8 + 4 * i + 4]) for i in range(53)]
Q = [[0] * 1008 for _ in range(504)]
for y in range(252):
    for x in range(504):
        t = T[grid[y][x]]
        for q in range(4): Q[2 * y + (q >> 1)][2 * x + (q & 1)] = t[q]
COL = {0: (29, 79, 134), 9: (236, 226, 198), 14: (232, 220, 188), 15: (222, 208, 172), 16: (205, 185, 141), 17: (236, 226, 198)}
SHORE = (205, 185, 141)
pickle.dump(Q, open(os.path.join(os.path.dirname(__file__), '..', 'out', 'chart_quarters.pkl'), 'wb'))  # input of guide/seadist.py
img = Image.new('RGB', (1008, 504))
px = img.load()
for y in range(504):
    for x in range(1008):
        c = Q[y][x]
        px[x, y] = COL.get(c, SHORE)
img.resize((4032, 2016), Image.NEAREST).save(f'{OUT}/worldchart.png')
INSETS = {'eu': (218, 26, 292, 90), 'af': (204, 78, 326, 200), 'ea': (326, 80, 462, 196), 'nw': (84, 54, 196, 230)}
for k, (x0, y0, x1, y1) in INSETS.items():
    img.crop((2 * x0, 2 * y0, 2 * x1, 2 * y1)).resize((16 * (x1 - x0), 16 * (y1 - y0)), Image.NEAREST).save(f'{OUT}/inset_{k}.png')
ports = []
o = 0x0FD8
for i in range(70):
    rec = FD[o:o + 19]; o += 19
    a, b, c, d = rec[15:19]
    ports.append([i, rec[:15].split(b'\0')[0].decode(), (a * 14 + c) / 2, (b * 14 + d) / 2])
print(json.dumps({'insets': INSETS, 'ports': ports}))
