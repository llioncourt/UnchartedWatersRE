"""Stateful SNES driver: python3 step.py <state_in|-> <state_out> <script> <shot.png>
script: comma list of 'N' (wait N frames) or 'BTN:N' (hold BTN for N frames, then 1 frame release) ; BTN may be A+B etc."""
import sys, numpy as np, stable_retro as retro
from PIL import Image
names = ['B', 'Y', 'SELECT', 'START', 'UP', 'DOWN', 'LEFT', 'RIGHT', 'A', 'X', 'L', 'R']
sin, sout, script, shot = sys.argv[1:5]
em = retro.RetroEmulator('us.sfc')
if sin != '-':
    em.set_state(open(sin, 'rb').read())
def run(mask, n):
    for _ in range(n):
        em.set_button_mask(mask, 0); em.step()
z = np.zeros(12, dtype=np.uint8)
for it in script.split(','):
    it = it.strip()
    if not it: continue
    if ':' in it:
        b, n = it.split(':'); m = z.copy()
        for x in b.split('+'): m[names.index(x)] = 1
        run(m, int(n)); run(z, 6)
    else:
        run(z, int(it))
open(sout, 'wb').write(em.get_state())
img = Image.fromarray(em.get_screen()); img = img.resize((img.width * 2, img.height * 2), Image.NEAREST); img.save(shot)
print('ok')
