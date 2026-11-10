"""Linear sweep that does NOT stop at JUMP/RETURN (only at bad opcode)."""
import sys
from ovl import overlay, insn
from listing import cstr
def full(name, v='us'):
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
            if d.get('bad'):
                out.append(f'  {base+o:04X}  .data {end-o} bytes'); break
    return '\n'.join(out)
if __name__ == '__main__':
    name = sys.argv[1]
    t = full(name)
    open(f'../out/snes_us_{name}.full.lst', 'w').write(t)
    print(name, t.count('\n'), t.count('.data'))
