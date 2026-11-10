"""Let game time run at sea, keeping the player's ship alive and parked.
usage: python3 sim.py <state_in> <state_out> <chunks> <log.jsonl>
Every chunk (2000 frames): refill water/food, park the player's fleet, log economy + AI fleets."""
import sys, json, numpy as np, stable_retro as retro
from PIL import Image
B = 0x10b96                     # WRAM inside the savestate
sin, sout, n, logf = sys.argv[1], sys.argv[2], int(sys.argv[3]), sys.argv[4]
em = retro.RetroEmulator('us.sfc')
em.set_state(open(sin, 'rb').read())
z = np.zeros(12, dtype=np.uint8)
PARK = bytes([29, 5, 4, 11])    # open Atlantic west of Lisbon
log = open(logf, 'a')
last, stall = None, 0
for k in range(n):
    s = bytearray(em.get_state())
    w = s[B:B + 0x10000]
    for o in (0xE9B6, 0xE9B8):  # water, food of the player's ship
        s[B + o] = 200; s[B + o + 1] = 0
    s[B + 0xE564:B + 0xE568] = PARK
    em.set_state(bytes(s))
    for _ in range(2000):
        em.set_button_mask(z, 0); em.step()
    r = em.get_state()[B:B + 0x10000]
    date = (r[0xEA8A], r[0xEA8C], r[0xEA8B])
    ports = [list(r[0xE6B4 + 14 * p:0xE6B4 + 14 * p + 14]) for p in range(50)]
    fleets = [list(r[0xE564 + 16 * f:0xE564 + 16 * f + 16]) for f in range(21)]
    caps = [list(r[0xDF05 + 51 * (f - 1):0xDF05 + 51 * (f - 1) + 8]) for f in range(1, 21)]
    own = list(r[0xEE78:0xEEAA])
    nat = list(r[0xEEBE:0xEECE])
    log.write(json.dumps({'k': k, 'date': date, 'ports': ports, 'fleets': fleets, 'caps': caps, 'own': own, 'nat': nat}) + '\n')
    stall = stall + 1 if date == last else 0
    last = date
    if stall >= 3:
        print('stalled at', date, 'chunk', k)
        break
log.close()
open(sout, 'wb').write(em.get_state())
Image.fromarray(em.get_screen()).save(sout.replace('.state', '.png'))
print('end date', last)
