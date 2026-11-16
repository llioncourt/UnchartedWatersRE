"""Data for the Master Play Vol. 4 revision (Nov 2026): sextant reading of every port, the twenty mates,
the twenty barmaids, the five pirates and the squares where a treasure can be hidden. All read from the
SNES US ROM (sgdata = new-game RAM image at $7E:DF00, fdata = fixed tables).
usage: python3 book_people.py <rom.sfc> <out.json> [<candidates.png>]"""
import sys, json
R = open(sys.argv[1], 'rb').read()
if len(R) % 1024 == 512: R = R[512:]
SG = R[0xF5AE:0xF5AE + 0x1288]          # sgdata, loaded at $DF00 by initop
FD = R[0x10836:0x10836 + 0x37D8]        # fdata
ram = lambda a: SG[a - 0xDF00]
w = lambda a: ram(a) | ram(a + 1) << 8
fw = lambda o: FD[o] | FD[o + 1] << 8
fs = lambda o: FD[o:o + 16].split(b'\0')[0].decode('latin1')

def sextant(bx, by):
    """ucom Survey (UCOM_F_9FAF): block coordinates (7x7 squares) -> on-screen reading."""
    t = (bx + 38) % 72
    lon = ((72 - t) * 5, 'W') if t // 36 else (t * 5, 'E')
    lat = ((5 * by - 90), 'S') if by // 18 else ((90 - 5 * by), 'N')
    return {'lat': lat[1], 'lat_deg': lat[0], 'lon': lon[1], 'lon_deg': lon[0]}

PORTS = []
for i in range(70):
    rec = FD[0xFD8 + 19 * i:0xFD8 + 19 * i + 19]
    a, b, c, d = rec[15:19]
    PORTS.append(dict(id=i, name=rec[:15].split(b'\0')[0].decode(), block=[a, b], sub=[c, d],
                      kind='trading' if i < 50 else 'supply', **sextant(a, b)))

def person(p):
    a = 0xE444 + 7 * p
    st = [ram(0xEAC0 + 10 * p + k) for k in range(6)] if p <= 20 else None
    return dict(name=fs(w(a)), battle=ram(a + 2), sailing=ram(a + 3), portrait=w(a + 4), flags=ram(a + 6), stats=st)

MATES = []
for p in range(1, 21):
    q = person(p); age, cha, wis, int_, cou, str_ = q['stats']
    port = ram(0xE971 + 2 * (p - 1))
    MATES.append(dict(n=p, name=q['name'], age=age, cha=cha, wis=wis, int=int_, cou=cou, str=str_,
                      battle=q['battle'], sailing=q['sailing'], portrait=q['portrait'],
                      loyalty=ram(0xE970 + 2 * (p - 1)), port=PORTS[port]['name'],
                      wanders=p <= 10))   # maituki MAITUKI_F_A5A2 moves the first ten each month

BAR = []
names = [fs(fw(0x0C + 2 * i)) for i in range(20)]
for i in range(20):
    ports = [PORTS[p]['name'] for p in range(50) if FD[0x150A + 5 * p + 3] == i]
    BAR.append(dict(i=i, name=names[i], port=ports[0], portrait=13 + i, affection=ram(0xE42E + i)))

PIR = []
for n in range(16, 21):
    q = person(n + 20)
    f = [ram(0xE564 + 16 * n + k) for k in range(16)]
    cap = 0xDF05 + 51 * (n - 1)
    route = []
    k = cap + 9
    while ram(k) != 0xFF:
        route.append([ram(k), ram(k + 1)]); k += 2
    PIR.append(dict(fleet=n, name=q['name'], battle=q['battle'], sailing=q['sailing'], portrait=q['portrait'],
                    start=f[:4], gold=f[9] | f[10] << 8, start_reading=sextant(f[0], f[1]), route=route,
                    route_readings=[sextant(x, y) for x, y in route]))

# treasure squares (ibento IBENTO_F_9721): land tile types 5-16, 21-24, 29-40; quarter bit from IBENTO_D_9DCE
B = 0x50000
mw = lambda o: R[o] | R[o + 1] << 8
bt, ct = mw(B), mw(B + 2)
grid = [[0] * 504 for _ in range(252)]
for zy in range(12):
    for zx in range(24):
        blk = R[B + 4 + 5 * (zy * 24 + zx)]
        for by in range(3):
            for bx in range(3):
                ch = mw(B + bt + 18 * blk + 2 * (by * 3 + bx))
                for cy in range(7):
                    for cx in range(7):
                        grid[zy * 21 + by * 7 + cy][zx * 21 + bx * 7 + cx] = R[B + ct + 49 * ch + cy * 7 + cx]
T = [0x0F, 0xFF, 0x01, 0x24, 0x8A, 0x53, 0xCE, 0xDB, 0x7F, 0xFF, 0xFE, 0xDB, 0x7F, 0xFF, 0xF4, 0x82, 0x8E, 0xDB, 0x7E, 0xDB, 0x7F, 0xFF, 0xFF, 0xFF, 0xF0, 0x00, 0x00]
ok = lambda t: 4 < t < 17 or 20 < t < 25 or 28 < t < 41
cand = []
for y in range(252):
    for x in range(504):
        t = grid[y][x]
        if not ok(t): continue
        nib = (T[t >> 1] >> (4 if t % 2 == 0 else 0)) & 15
        for q in range(4):
            if nib & (8 >> q): cand.append([2 * x + (q & 1), 2 * y + (q >> 1)])
zones = sorted({(x // 42, y // 42) for x, y in cand})
json.dump(dict(ports=PORTS, mates=MATES, barmaids=BAR, pirates=PIR,
               treasure=dict(quarters=len(cand), zones=len(zones), zones_total=288, squares=cand)),
          open(sys.argv[2], 'w'), indent=1)
print(len(cand), 'treasure quarters in', len(zones), 'zones')
