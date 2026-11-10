"""Koei bytecode on SNES overlays: reuse NES kbc decoder (same compiler/VM)."""
import sys, pickle, os
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'tools'))
from kbc import insn
from w65816 import load
HERE = os.path.dirname(os.path.abspath(__file__))
ENTS = {e[0]: e for e in pickle.load(open(os.path.join(HERE, '../out/snes_overlays.pickle'), 'rb'))}
def overlay(name, v='us'):
    d = load(v)
    e = ENTS[name]
    buf = d[e[4]:e[4] + e[3]]
    base = (buf[1] | (buf[2] << 8)) - 3
    return buf, base
def dis_at(name, addr, n=60, v='us'):
    buf, base = overlay(name, v)
    o = addr - base; p = addr; out = []
    for _ in range(n):
        if o >= len(buf): break
        if buf[o] == 0x20 and buf[o+1] == 0xBA and buf[o+2] == 0x21:
            fs = buf[o+3] | (buf[o+4] << 8)
            out.append(f'{p:04X}: ---- FUNC frame={(65536-fs)&0xFFFF}')
            o += 5; p += 5; continue
        dd = insn(buf, o, p)
        out.append(f'  {p:04X}  {buf[o:o+min(dd["len"],8)].hex(" "):<24} {dd["text"]}')
        o += dd['len']; p += dd['len']
    return '\n'.join(out)
if __name__ == '__main__':
    print(dis_at(sys.argv[1], int(sys.argv[2], 16), int(sys.argv[3]) if len(sys.argv) > 3 else 60))
