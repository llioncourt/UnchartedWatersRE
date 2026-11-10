from PIL import Image
from nes6502 import Rom
r = Rom()
PAL = [(0, 0, 0), (90, 90, 90), (170, 170, 170), (255, 255, 255)]
def tile(img, data, t, x0, y0):
    for y in range(8):
        lo = data[t * 16 + y]; hi = data[t * 16 + 8 + y]
        for x in range(8):
            c = ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1)
            img.putpixel((x0 + x, y0 + y), PAL[c])
def sheet(bank4k):
    data = r.chr[bank4k * 0x1000:(bank4k + 1) * 0x1000]
    img = Image.new('RGB', (128, 128))
    for t in range(256):
        tile(img, data, t, (t % 16) * 8, (t // 16) * 8)
    return img
if __name__ == '__main__':
    import os
    os.makedirs('../out/chr', exist_ok=True)
    n = len(r.chr) // 0x1000
    sheets = [sheet(i) for i in range(n)]
    # 4 composites of 8 sheets each (4x2 grid), 2x scale
    for g in range(n // 8):
        c = Image.new('RGB', (4 * 132, 2 * 132), (60, 0, 60))
        for k in range(8):
            i = g * 8 + k
            c.paste(sheets[i], ((k % 4) * 132, (k // 4) * 132))
        c = c.resize((c.width * 2, c.height * 2), Image.NEAREST)
        c.save(f'../out/chr/chr_group{g}.png')
    # empty-tile stats
    for i in range(n):
        data = r.chr[i * 0x1000:(i + 1) * 0x1000]
        empty = sum(1 for t in range(256) if data[t*16:(t+1)*16] in (bytes(16), b'\xff' * 16))
        print(f'4K bank {i:2d}: blank tiles {empty}')
