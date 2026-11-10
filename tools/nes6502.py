"""6502 opcode table + ROM helpers for Uncharted Waters (NES, MMC5) RE."""
import os

ROM_PATH = os.environ.get('UW_ROM') or os.path.join(os.path.dirname(__file__), '..', 'extracted', 'Uncharted Waters (USA).nes')

# mode: imp, acc, imm, zp, zpx, zpy, abs, abx, aby, ind, izx, izy, rel
OPS = {}
def _o(code, mn, mode):
    OPS[code] = (mn, mode)

_tbl = """
00 BRK imp|01 ORA izx|05 ORA zp|06 ASL zp|08 PHP imp|09 ORA imm|0A ASL acc|0D ORA abs|0E ASL abs
10 BPL rel|11 ORA izy|15 ORA zpx|16 ASL zpx|18 CLC imp|19 ORA aby|1D ORA abx|1E ASL abx
20 JSR abs|21 AND izx|24 BIT zp|25 AND zp|26 ROL zp|28 PLP imp|29 AND imm|2A ROL acc|2C BIT abs|2D AND abs|2E ROL abs
30 BMI rel|31 AND izy|35 AND zpx|36 ROL zpx|38 SEC imp|39 AND aby|3D AND abx|3E ROL abx
40 RTI imp|41 EOR izx|45 EOR zp|46 LSR zp|48 PHA imp|49 EOR imm|4A LSR acc|4C JMP abs|4D EOR abs|4E LSR abs
50 BVC rel|51 EOR izy|55 EOR zpx|56 LSR zpx|58 CLI imp|59 EOR aby|5D EOR abx|5E LSR abx
60 RTS imp|61 ADC izx|65 ADC zp|66 ROR zp|68 PLA imp|69 ADC imm|6A ROR acc|6C JMP ind|6D ADC abs|6E ROR abs
70 BVS rel|71 ADC izy|75 ADC zpx|76 ROR zpx|78 SEI imp|79 ADC aby|7D ADC abx|7E ROR abx
81 STA izx|84 STY zp|85 STA zp|86 STX zp|88 DEY imp|8A TXA imp|8C STY abs|8D STA abs|8E STX abs
90 BCC rel|91 STA izy|94 STY zpx|95 STA zpx|96 STX zpy|98 TYA imp|99 STA aby|9A TXS imp|9D STA abx
A0 LDY imm|A1 LDA izx|A2 LDX imm|A4 LDY zp|A5 LDA zp|A6 LDX zp|A8 TAY imp|A9 LDA imm|AA TAX imp|AC LDY abs|AD LDA abs|AE LDX abs
B0 BCS rel|B1 LDA izy|B4 LDY zpx|B5 LDA zpx|B6 LDX zpy|B8 CLV imp|B9 LDA aby|BA TSX imp|BC LDY abx|BD LDA abx|BE LDX aby
C0 CPY imm|C1 CMP izx|C4 CPY zp|C5 CMP zp|C6 DEC zp|C8 INY imp|C9 CMP imm|CA DEX imp|CC CPY abs|CD CMP abs|CE DEC abs
D0 BNE rel|D1 CMP izy|D5 CMP zpx|D6 DEC zpx|D8 CLD imp|D9 CMP aby|DD CMP abx|DE DEC abx
E0 CPX imm|E1 SBC izx|E4 CPX zp|E5 SBC zp|E6 INC zp|E8 INX imp|E9 SBC imm|EA NOP imp|EC CPX abs|ED SBC abs|EE INC abs
F0 BEQ rel|F1 SBC izy|F5 SBC zpx|F6 INC zpx|F8 SED imp|F9 SBC aby|FD SBC abx|FE INC abx
"""
for chunk in _tbl.replace('\n', '|').split('|'):
    chunk = chunk.strip()
    if not chunk:
        continue
    c, mn, md = chunk.split()
    _o(int(c, 16), mn, md)

SIZE = {'imp': 1, 'acc': 1, 'imm': 2, 'zp': 2, 'zpx': 2, 'zpy': 2, 'abs': 3, 'abx': 3,
        'aby': 3, 'ind': 3, 'izx': 2, 'izy': 2, 'rel': 2}

def fmt(mn, mode, val, pc):
    if mode == 'imp': return mn
    if mode == 'acc': return mn + ' A'
    if mode == 'imm': return f'{mn} #${val:02X}'
    if mode == 'zp': return f'{mn} ${val:02X}'
    if mode == 'zpx': return f'{mn} ${val:02X},X'
    if mode == 'zpy': return f'{mn} ${val:02X},Y'
    if mode == 'abs': return f'{mn} ${val:04X}'
    if mode == 'abx': return f'{mn} ${val:04X},X'
    if mode == 'aby': return f'{mn} ${val:04X},Y'
    if mode == 'ind': return f'{mn} (${val:04X})'
    if mode == 'izx': return f'{mn} (${val:02X},X)'
    if mode == 'izy': return f'{mn} (${val:02X}),Y'
    if mode == 'rel':
        t = (pc + 2 + (val - 256 if val > 127 else val)) & 0xFFFF
        return f'{mn} ${t:04X}'

def decode(buf, off, pc):
    """Return (size, mn, mode, val, text) or None if illegal."""
    if off >= len(buf):
        return None
    op = buf[off]
    if op not in OPS:
        return None
    mn, mode = OPS[op]
    sz = SIZE[mode]
    if off + sz > len(buf):
        return None
    if sz == 1: val = None
    elif sz == 2: val = buf[off + 1]
    else: val = buf[off + 1] | (buf[off + 2] << 8)
    return sz, mn, mode, val, fmt(mn, mode, val, pc)

def branch_target(mode, val, pc):
    if mode == 'rel':
        return (pc + 2 + (val - 256 if val > 127 else val)) & 0xFFFF
    return val

class Rom:
    def __init__(self, path=ROM_PATH):
        d = open(path, 'rb').read()
        self.hdr = d[:16]
        self.prg_size = d[4] * 0x4000
        self.chr_size = d[5] * 0x2000
        self.prg = d[16:16 + self.prg_size]
        self.chr = d[16 + self.prg_size:16 + self.prg_size + self.chr_size]
        self.n8 = self.prg_size // 0x2000

    def bank8(self, n):
        n %= self.n8
        return self.prg[n * 0x2000:(n + 1) * 0x2000]

    def file_off(self, bank8, addr):
        return 16 + bank8 * 0x2000 + (addr & 0x1FFF)
