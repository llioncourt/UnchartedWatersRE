"""Headless MD/SNES runner. usage: run.py rom out_prefix script
script: comma list of 'frame:buttons' holds (buttons = names joined by +), shots at 'S<frame>'"""
import sys, numpy as np
import stable_retro as retro
from PIL import Image
rom, prefix, script = sys.argv[1], sys.argv[2], sys.argv[3]
em = retro.RetroEmulator(rom)
btn_md = ['B', 'A', 'MODE', 'START', 'UP', 'DOWN', 'LEFT', 'RIGHT', 'C', 'Y', 'X', 'Z']
btn_snes = ['B', 'Y', 'SELECT', 'START', 'UP', 'DOWN', 'LEFT', 'RIGHT', 'A', 'X', 'L', 'R']
names = btn_snes if rom.endswith('.sfc') else btn_md
holds = []  # (start, end, mask)
shots = set(); last = 0
for item in script.split(','):
    item = item.strip()
    if item.startswith('S'):
        f = int(item[1:]); shots.add(f); last = max(last, f)
    else:
        rng, b = item.split(':')
        s, e = (int(x) for x in rng.split('-'))
        m = np.zeros(len(names), dtype=np.uint8)
        for n in b.split('+'): m[names.index(n)] = 1
        holds.append((s, e, m)); last = max(last, e)
for f in range(1, last + 1):
    mask = np.zeros(len(names), dtype=np.uint8)
    for s, e, m in holds:
        if s <= f <= e: mask |= m
    em.set_button_mask(mask, 0)
    em.step()
    if f in shots:
        Image.fromarray(em.get_screen()).save(f'{prefix}_{f:05d}.png')
print('done', last)
