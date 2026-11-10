"""Minimal 65816 disassembler for LoROM SNES (Uncharted Waters RE).

Tracks M/X flags through REP/SEP linearly (good enough for compiled code).
"""
import sys, os

ROMS = {
    'us': '../ports/snes_us/rom/Uncharted Waters (USA).sfc',
    'jp': '../ports/snes_jp/rom/Super Daikoukai Jidai (Japan).sfc',
    'jp1': '../ports/snes_jp_r1/rom/Super Daikoukai Jidai (Japan) (Rev 1).sfc',
}
HERE = os.path.dirname(os.path.abspath(__file__))

def load(v='us'):
    return open(os.path.join(HERE, ROMS[v]), 'rb').read()

def lo2off(bank, addr):
    """LoROM CPU address -> file offset (None if not ROM)."""
    if addr < 0x8000: return None
    return ((bank & 0x7F) * 0x8000) + (addr - 0x8000)

def off2lo(off):
    return (off >> 15), (off & 0x7FFF) | 0x8000

# modes: imp, acc, immM, immX, imm8, dp, dpx, dpy, idp, idpx, idpy, idl, idly, abs, absx, absy,
#        absl, abslx, ind, indx, indl, rel, rell, sr, sry, blk
T = {}
def d(op, mn, md): T[op] = (mn, md)
_rows = """
00 BRK imm8|01 ORA idpx|02 COP imm8|03 ORA sr|04 TSB dp|05 ORA dp|06 ASL dp|07 ORA idl|08 PHP imp|09 ORA immM|0A ASL acc|0B PHD imp|0C TSB abs|0D ORA abs|0E ASL abs|0F ORA absl
10 BPL rel|11 ORA idpy|12 ORA idp|13 ORA sry|14 TRB dp|15 ORA dpx|16 ASL dpx|17 ORA idly|18 CLC imp|19 ORA absy|1A INC acc|1B TCS imp|1C TRB abs|1D ORA absx|1E ASL absx|1F ORA abslx
20 JSR abs|21 AND idpx|22 JSL absl|23 AND sr|24 BIT dp|25 AND dp|26 ROL dp|27 AND idl|28 PLP imp|29 AND immM|2A ROL acc|2B PLD imp|2C BIT abs|2D AND abs|2E ROL abs|2F AND absl
30 BMI rel|31 AND idpy|32 AND idp|33 AND sry|34 BIT dpx|35 AND dpx|36 ROL dpx|37 AND idly|38 SEC imp|39 AND absy|3A DEC acc|3B TSC imp|3C BIT absx|3D AND absx|3E ROL absx|3F AND abslx
40 RTI imp|41 EOR idpx|42 WDM imm8|43 EOR sr|44 MVP blk|45 EOR dp|46 LSR dp|47 EOR idl|48 PHA imp|49 EOR immM|4A LSR acc|4B PHK imp|4C JMP abs|4D EOR abs|4E LSR abs|4F EOR absl
50 BVC rel|51 EOR idpy|52 EOR idp|53 EOR sry|54 MVN blk|55 EOR dpx|56 LSR dpx|57 EOR idly|58 CLI imp|59 EOR absy|5A PHY imp|5B TCD imp|5C JML absl|5D EOR absx|5E LSR absx|5F EOR abslx
60 RTS imp|61 ADC idpx|62 PER rell|63 ADC sr|64 STZ dp|65 ADC dp|66 ROR dp|67 ADC idl|68 PLA imp|69 ADC immM|6A ROR acc|6B RTL imp|6C JMP ind|6D ADC abs|6E ROR abs|6F ADC absl
70 BVS rel|71 ADC idpy|72 ADC idp|73 ADC sry|74 STZ dpx|75 ADC dpx|76 ROR dpx|77 ADC idly|78 SEI imp|79 ADC absy|7A PLY imp|7B TDC imp|7C JMP indx|7D ADC absx|7E ROR absx|7F ADC abslx
80 BRA rel|81 STA idpx|82 BRL rell|83 STA sr|84 STY dp|85 STA dp|86 STX dp|87 STA idl|88 DEY imp|89 BIT immM|8A TXA imp|8B PHB imp|8C STY abs|8D STA abs|8E STX abs|8F STA absl
90 BCC rel|91 STA idpy|92 STA idp|93 STA sry|94 STY dpx|95 STA dpx|96 STX dpy|97 STA idly|98 TYA imp|99 STA absy|9A TXS imp|9B TXY imp|9C STZ abs|9D STA absx|9E STZ absx|9F STA abslx
A0 LDY immX|A1 LDA idpx|A2 LDX immX|A3 LDA sr|A4 LDY dp|A5 LDA dp|A6 LDX dp|A7 LDA idl|A8 TAY imp|A9 LDA immM|AA TAX imp|AB PLB imp|AC LDY abs|AD LDA abs|AE LDX abs|AF LDA absl
B0 BCS rel|B1 LDA idpy|B2 LDA idp|B3 LDA sry|B4 LDY dpx|B5 LDA dpx|B6 LDX dpy|B7 LDA idly|B8 CLV imp|B9 LDA absy|BA TSX imp|BB TYX imp|BC LDY absx|BD LDA absx|BE LDX absy|BF LDA abslx
C0 CPY immX|C1 CMP idpx|C2 REP imm8|C3 CMP sr|C4 CPY dp|C5 CMP dp|C6 DEC dp|C7 CMP idl|C8 INY imp|C9 CMP immM|CA DEX imp|CB WAI imp|CC CPY abs|CD CMP abs|CE DEC abs|CF CMP absl
D0 BNE rel|D1 CMP idpy|D2 CMP idp|D3 CMP sry|D4 PEI dp|D5 CMP dpx|D6 DEC dpx|D7 CMP idly|D8 CLD imp|D9 CMP absy|DA PHX imp|DB STP imp|DC JML indl|DD CMP absx|DE DEC absx|DF CMP abslx
E0 CPX immX|E1 SBC idpx|E2 SEP imm8|E3 SBC sr|E4 CPX dp|E5 SBC dp|E6 INC dp|E7 SBC idl|E8 INX imp|E9 SBC immM|EA NOP imp|EB XBA imp|EC CPX abs|ED SBC abs|EE INC abs|EF SBC absl
F0 BEQ rel|F1 SBC idpy|F2 SBC idp|F3 SBC sry|F4 PEA abs|F5 SBC dpx|F6 INC dpx|F7 SBC idly|F8 SED imp|F9 SBC absy|FA PLX imp|FB XCE imp|FC JSR indx|FD SBC absx|FE INC absx|FF SBC abslx
"""
for row in _rows.strip().splitlines():
    for cell in row.split('|'):
        c, mn, md = cell.split()
        d(int(c, 16), mn, md)

FIX = {'imp': 1, 'acc': 1, 'imm8': 2, 'dp': 2, 'dpx': 2, 'dpy': 2, 'idp': 2, 'idpx': 2, 'idpy': 2, 'idl': 2,
       'idly': 2, 'sr': 2, 'sry': 2, 'abs': 3, 'absx': 3, 'absy': 3, 'ind': 3, 'indx': 3, 'indl': 3,
       'absl': 4, 'abslx': 4, 'rel': 2, 'rell': 3, 'blk': 3}

def ins_len(op, m, x):
    mn, md = T[op]
    if md == 'immM': return 2 if m else 3
    if md == 'immX': return 2 if x else 3
    return FIX[md]

def fmt(mn, md, val, pc, bank):
    if md in ('imp',): return mn
    if md == 'acc': return f'{mn} A'
    if md in ('immM', 'immX', 'imm8'): return f'{mn} #${val:0{4 if val > 255 else 2}X}'
    if md == 'dp': return f'{mn} ${val:02X}'
    if md == 'dpx': return f'{mn} ${val:02X},X'
    if md == 'dpy': return f'{mn} ${val:02X},Y'
    if md == 'idp': return f'{mn} (${val:02X})'
    if md == 'idpx': return f'{mn} (${val:02X},X)'
    if md == 'idpy': return f'{mn} (${val:02X}),Y'
    if md == 'idl': return f'{mn} [${val:02X}]'
    if md == 'idly': return f'{mn} [${val:02X}],Y'
    if md == 'sr': return f'{mn} ${val:02X},S'
    if md == 'sry': return f'{mn} (${val:02X},S),Y'
    if md == 'abs': return f'{mn} ${val:04X}'
    if md == 'absx': return f'{mn} ${val:04X},X'
    if md == 'absy': return f'{mn} ${val:04X},Y'
    if md == 'ind': return f'{mn} (${val:04X})'
    if md == 'indx': return f'{mn} (${val:04X},X)'
    if md == 'indl': return f'{mn} [${val:04X}]'
    if md == 'absl': return f'{mn} ${val:06X}'
    if md == 'abslx': return f'{mn} ${val:06X},X'
    if md == 'rel':
        t = (pc + 2 + (val - 256 if val > 127 else val)) & 0xFFFF
        return f'{mn} ${t:04X}'
    if md == 'rell':
        t = (pc + 3 + (val - 65536 if val > 32767 else val)) & 0xFFFF
        return f'{mn} ${t:04X}'
    if md == 'blk': return f'{mn} ${val & 255:02X},${val >> 8:02X}'
    return mn

def decode(buf, off, pc, bank, m, x):
    op = buf[off]
    mn, md = T[op]
    n = ins_len(op, m, x)
    raw = buf[off:off + n]
    val = int.from_bytes(raw[1:], 'little') if n > 1 else None
    return n, mn, md, val, fmt(mn, md, val, pc, bank)

def dis(buf_or_v, bank, addr, count=40, m=True, x=True, base_off=None, show=True):
    """Linear disassembly. buf_or_v: rom key or bytes; base_off: file offset of addr (else LoROM)."""
    rom = load(buf_or_v) if isinstance(buf_or_v, str) else buf_or_v
    off = base_off if base_off is not None else lo2off(bank, addr)
    pc = addr
    out = []
    for _ in range(count):
        n, mn, md, val, t = decode(rom, off, pc, bank, m, x)
        if mn == 'REP':
            if val & 0x20: m = False
            if val & 0x10: x = False
        if mn == 'SEP':
            if val & 0x20: m = True
            if val & 0x10: x = True
        out.append(f'{bank:02X}:{pc:04X}  {rom[off:off+n].hex(" "):<12} {t:<22} m{int(m)}x{int(x)}')
        off += n; pc = (pc + n) & 0xFFFF
        if mn in ('RTS', 'RTL', 'RTI', 'JMP', 'JML', 'BRA', 'BRL'):
            out.append('          ----')
    if show: print('\n'.join(out))
    return out

if __name__ == '__main__':
    v = sys.argv[1]
    ba = sys.argv[2]
    bank, addr = (int(s, 16) for s in ba.split(':'))
    n = int(sys.argv[3]) if len(sys.argv) > 3 else 40
    m = (sys.argv[4][0] == '1') if len(sys.argv) > 4 else True
    x = (sys.argv[4][1] == '1') if len(sys.argv) > 4 else True
    dis(v, bank, addr, n, m, x)
