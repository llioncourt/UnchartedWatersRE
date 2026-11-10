"""Detect link base of each code bank from bytecode jump targets / native JMP/JSR targets."""
import collections
from nes6502 import Rom, decode
from kbc import insn

def headers(buf):
    hb, hn = [], []
    for i in range(len(buf) - 5):
        if buf[i] == 0x20 and buf[i+2] == 0xE4 and buf[i+1] == 0xBF: hb.append(i)
        if buf[i] == 0x20 and buf[i+2] == 0xE2 and buf[i+1] == 0x99: hn.append(i)
    return hb, hn

def detect_base(r, n):
    buf = r.bank8(n)
    hb, hn = headers(buf)
    votes = collections.Counter()
    for h in hb[:40]:
        o = h + 5
        for _ in range(60):
            if o >= len(buf): break
            d = insn(buf, o, 0)
            if d.get('bad'): break
            for t in d['targets']:
                votes[t & 0xE000] += 1
            if buf[o] in (0xD6, 0xD7, 0xD8):
                pass
            o += d['len']
            if d['end'] and buf[o:o+3] == b'\x20\xbf\xe4': break
    for h in hn[:40]:
        o = h + 6
        for _ in range(60):
            d = decode(buf, o, 0)
            if not d: break
            sz, mn, md, val, t = d
            if mn in ('JMP',) and md == 'abs' and val < 0xE000:
                votes[val & 0xE000] += 1
            o += sz
    return votes, hb, hn

if __name__ == '__main__':
    r = Rom()
    for n in range(r.n8):
        v, hb, hn = detect_base(r, n)
        b = r.bank8(n)
        top = v.most_common(3)
        print(f'{n:2d} start={b[0]:02X}{b[1]:02X}{b[2]:02X} bc={len(hb):3d} nat={len(hn):3d} base_votes=' + ' '.join(f'{k:04X}:{c}' for k, c in top))
