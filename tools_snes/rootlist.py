import sys
from ovl import insn
from w65816 import load
def root_listing(v='us'):
    d = load(v)
    buf = d[0x8000:0x8000 + 0x75AE]; base = 0x2000
    hdrs = [i for i in range(len(buf)-4) if buf[i] == 0x20 and buf[i+1] == 0xBA and buf[i+2] == 0x21]
    out = []
    for k, h in enumerate(hdrs):
        end = hdrs[k+1] if k + 1 < len(hdrs) else len(buf)
        fs = buf[h+3] | (buf[h+4] << 8)
        out.append(f'\n{base+h:04X}: FUNC frame={(65536-fs)&0xFFFF}')
        o = h + 5
        while o < end:
            dd = insn(buf, o, base + o)
            out.append(f'  {base+o:04X}  {dd["text"]}')
            o += dd['len']
            if dd.get('bad'): break
    return '\n'.join(out)
if __name__ == '__main__':
    txt = root_listing()
    open('../out/snes_us_root.lst', 'w').write(txt)
    print(txt.count('FUNC'), 'funcs')
