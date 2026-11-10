"""Full annotated bytecode listing of an overlay (linear sweep by function)."""
import sys, re
from ovl import overlay, insn
def cstr(buf, base, a):
    o = a - base
    if not (0 <= o < len(buf)): return None
    s = buf[o:o+80].split(b'\0')[0]
    if len(s) >= 2 and all(32 <= c < 127 or c == 10 for c in s):
        return repr(s.decode())
    return None
def listing(name, v='us'):
    buf, base = overlay(name, v)
    hdrs = [i for i in range(len(buf)-4) if buf[i] == 0x20 and buf[i+1] == 0xBA and buf[i+2] == 0x21]
    out = []
    for k, h in enumerate(hdrs):
        end = hdrs[k+1] if k + 1 < len(hdrs) else len(buf)
        fs = buf[h+3] | (buf[h+4] << 8)
        out.append(f'\n{base+h:04X}: FUNC frame={(65536-fs)&0xFFFF}')
        o = h + 5
        while o < end:
            d = insn(buf, o, base + o)
            ann = ''
            if d['imm'] is not None and isinstance(d['imm'], int) and d['imm'] >= 0x100:
                s = cstr(buf, base, d['imm'])
                if s: ann = '   ; ' + s
            out.append(f'  {base+o:04X}  {d["text"]}{ann}')
            o += d['len']
            if d.get('bad') or (d['end'] and o < end and not (buf[o] == 0x20 and buf[o+1] == 0xBA)):
                # trailing data until next header
                if d['end']:
                    rest = buf[o:end]
                    if rest:
                        out.append(f'  {base+o:04X}  .data {len(rest)} bytes')
                    break
    return '\n'.join(out), base, buf
if __name__ == '__main__':
    name = sys.argv[1]; v = sys.argv[2] if len(sys.argv) > 2 else 'us'
    txt, base, buf = listing(name, v)
    open(f'../out/snes_{v}_{name}.lst', 'w').write(txt)
    print(name, 'base %04X' % base, 'lines', txt.count('\n'), 'funcs', txt.count('FUNC'))
