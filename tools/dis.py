"""Linear disassembly helper: python3 dis.py <bank8> <addr_hex> [count] [base_hex]
bank8 = 8KB PRG bank index (0-63). base = CPU address where bank is mapped (default from addr).
"""
import sys
from nes6502 import Rom, decode

def dis(r, bank, addr, n=60, base=None, stop_at_rts=False):
    b = r.bank8(bank)
    if base is None:
        base = addr & 0xE000
    off = addr - base
    pc = addr
    out = []
    for _ in range(n):
        if off >= 0x2000:
            break
        d = decode(b, off, pc)
        if not d:
            out.append('%02d:%04X  %02X         .db $%02X' % (bank, pc, b[off], b[off]))
            off += 1; pc += 1
            continue
        sz, mn, md, val, t = d
        out.append('%02d:%04X  %-9s  %s' % (bank, pc, ' '.join('%02X' % x for x in b[off:off + sz]), t))
        off += sz; pc += sz
        if mn in ('RTS', 'RTI', 'JMP'):
            out.append('         ----')
            if stop_at_rts:
                break
    return '\n'.join(out)

if __name__ == '__main__':
    r = Rom()
    bank = int(sys.argv[1])
    addr = int(sys.argv[2], 16)
    n = int(sys.argv[3]) if len(sys.argv) > 3 else 60
    base = int(sys.argv[4], 16) if len(sys.argv) > 4 else None
    print(dis(r, bank, addr, n, base))
