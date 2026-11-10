"""Koei MMC5 bytecode (BIOS v2) disassembler for Uncharted Waters NES.

Opcode semantics follow AWJ's nesdev notes; lengths were verified against the
handlers in bank 63 ($E503 dispatcher, tables $ECD4/$EDD4, B7 table $EF21).
"""
import sys
from nes6502 import Rom

LEN = {}
for o in range(0x00, 0x80): LEN[o] = 1
for o in (0x81, 0x83, 0x85, 0x87, 0x89, 0x8B, 0x8D, 0x8F): LEN[o] = 2
for o in (0x82, 0x84, 0x86, 0x88, 0x8A, 0x8C, 0x8E, 0x90): LEN[o] = 3
for o in range(0xA0, 0xAE): LEN[o] = 3
LEN[0xAE] = 2; LEN[0xAF] = 3
for o in list(range(0xB0, 0xB7)) + list(range(0xB8, 0xC0)) + list(range(0xC0, 0xCE)): LEN[o] = 1
LEN[0xCF] = 1
for o in range(0xD0, 0xD5): LEN[o] = 1
LEN[0xD6] = 3; LEN[0xD7] = 3; LEN[0xD8] = 3
for o in (0xDA, 0xDB, 0xDC, 0xDD): LEN[o] = 1
LEN[0xDE] = 3; LEN[0xDF] = 3
for o in (0xE0, 0xE1, 0xE2): LEN[o] = 3
for o in range(0xE3, 0xE9): LEN[o] = 2
LEN[0xE9] = 4; LEN[0xEA] = 2
# 0xD5 / 0xD9 / 0xB7 variable

B7LEN = {o: 2 for o in range(1, 0x30)}
for o in range(0x0C, 0x14): B7LEN[o] = 4
B7LEN[0x18] = 6; B7LEN[0x19] = 6

LOC = lambda n: -0x18 + 2 * n  # frame offsets for quick locals (00-0B -> -$18..-$02)
ARGQ = {0x0C: 0x0B, 0x0D: 0x0D, 0x0E: 0x0F, 0x0F: 0x11}  # quick args (fp+$0B..)

NAMES = {
    0x81: 'LDL near', 0x82: 'LDL far', 0x83: 'LDR near', 0x84: 'LDR far', 0x85: 'STL near', 0x86: 'STL far',
    0x87: 'PUSH near', 0x88: 'PUSH far', 0x89: 'LDL #b', 0x8A: 'LDL #w', 0x8B: 'LDR #b', 0x8C: 'LDR #w',
    0x8D: 'PUSH #b', 0x8E: 'PUSH #w', 0x8F: 'ADDL #b', 0x90: 'ADDL #w',
    0xA0: 'LDLB far', 0xA1: 'LDRB far', 0xA2: 'STLB far', 0xA3: 'PUSHB far', 0xA4: 'LDL abs', 0xA5: 'LDLB abs',
    0xA6: 'LDR abs', 0xA7: 'LDRB abs', 0xA8: 'STL abs', 0xA9: 'STLB abs', 0xAA: 'PUSH abs', 0xAB: 'PUSHB abs',
    0xAC: 'CALL', 0xAD: 'COPY', 0xAE: 'UNSTACK', 0xAF: 'UNSTACK w',
    0xB0: 'DEREF', 0xB1: 'POPSTORE', 0xB2: 'NOP', 0xB3: 'PUSHL', 0xB4: 'POPR', 0xB5: 'MUL', 0xB6: 'SDIV?',
    0xB8: 'UDIV?', 0xB9: 'SMOD?', 0xBA: 'UMOD?', 0xBB: 'ADD', 0xBC: 'SUB', 0xBD: 'SHL?', 0xBE: 'SHR?', 0xBF: 'ASR?',
    0xC0: 'EQ', 0xC1: 'NE', 0xC2: 'LT', 0xC3: 'LE?', 0xC4: 'GT?', 0xC5: 'GE?', 0xC6: 'ULT?', 0xC7: 'ULE?',
    0xC8: 'UGT?', 0xC9: 'UGE?', 0xCA: 'NOT', 0xCB: 'NEG', 0xCC: 'COMPL', 0xCD: 'SWAP', 0xCF: 'RETURN',
    0xD0: 'INC', 0xD1: 'DEC', 0xD2: 'SHL1', 0xD3: 'DEREFB', 0xD4: 'POPSTOREB', 0xD5: 'SWITCH',
    0xD6: 'JUMP', 0xD7: 'JUMPT', 0xD8: 'JUMPF', 0xD9: 'SWITCHN', 0xDA: 'AND', 0xDB: 'OR', 0xDC: 'XOR',
    0xDD: 'CALLPTR', 0xDE: 'LEAL', 0xDF: 'LEAR', 0xE0: 'BFEXT', 0xE1: 'BFEXTU', 0xE2: 'BFINS',
    0xE3: 'JMPb', 0xE4: 'JTb', 0xE5: 'JFb', 0xE6: 'JMPf', 0xE7: 'JTf', 0xE8: 'JFf', 0xE9: 'CALL+', 0xEA: 'CALLPTR+',
}

def s8(v): return v - 256 if v > 127 else v
def s16(v): return v - 65536 if v > 32767 else v

def insn(buf, off, pc):
    """Decode one bytecode instruction.
    buf is bytes for the 8K bank, off offset within it, pc the CPU address.
    Returns dict(len, text, kind, targets, call, absref)."""
    op = buf[off]
    g = lambda i: buf[off + i] if off + i < len(buf) else 0
    w = lambda i: g(i) | (g(i + 1) << 8)
    res = {'op': op, 'targets': [], 'call': None, 'abs': None, 'end': False, 'imm': None}
    if op < 0x80:
        hi, lo = op >> 4, op & 15
        if op < 0x0C: t = f'LDL L{LOC(op):+d}'
        elif op < 0x10: t = f'LDL A{ARGQ[op]:+d}'
        elif op < 0x1C: t = f'LDR L{LOC(op-0x10):+d}'
        elif op < 0x20: t = f'LDR A{ARGQ[op-0x10]:+d}'
        elif op < 0x2C: t = f'STL L{LOC(op-0x20):+d}'
        elif op < 0x30: t = f'STL A{ARGQ[op-0x20]:+d}'
        elif op < 0x3C: t = f'PUSH L{LOC(op-0x30):+d}'
        elif op < 0x40: t = f'PUSH A{ARGQ[op-0x30]:+d}'
        elif op < 0x50: t = f'LDL #{lo}'; res['imm'] = lo
        elif op < 0x60: t = f'LDR #{lo}'
        elif op < 0x70: t = f'PUSH #{lo}'; res['imm'] = lo
        else: t = f'ADDL #{lo}'
        res['len'] = 1; res['text'] = t
        return res
    if op == 0xB7:
        sub = g(1)
        n = B7LEN.get(sub)
        if n is None:
            res['len'] = 2; res['text'] = f'B7 ??{sub:02X}'; res['bad'] = True; return res
        res['len'] = n
        if n == 4: res['text'] = f'LONG.{sub:02X} ${w(2):04X}'
        elif n == 6: res['text'] = f'LONG.{sub:02X} #${w(4):04X}{w(2):04X}'
        else: res['text'] = f'LONG.{sub:02X}'
        if sub in (0x10, 0x11, 0x12, 0x13): res['abs'] = w(2)
        return res
    if op == 0xD5:
        base, lim, dflt = s16(w(1)), w(3), w(5)
        if lim > 512:
            res['len'] = 1; res['text'] = 'SWITCH ??'; res['bad'] = True; return res
        tbl = [w(7 + 2 * i) for i in range(lim)]
        res['len'] = 7 + 2 * lim
        res['targets'] = [dflt] + tbl
        res['end'] = True
        res['text'] = f'SWITCH base={-base} n={lim} default=${dflt:04X} [' + ' '.join(f'${x:04X}' for x in tbl) + ']'
        return res
    if op == 0xD9:
        n = w(1)
        if n > 512:
            res['len'] = 1; res['text'] = 'SWITCHN ??'; res['bad'] = True; return res
        ents = [(w(3 + 4 * i), w(5 + 4 * i)) for i in range(n)]
        dflt = w(3 + 4 * n)
        res['len'] = 3 + 4 * n + 2
        res['targets'] = [dflt] + [t for v, t in ents]
        res['end'] = True
        res['text'] = f'SWITCHN default=${dflt:04X} ' + ' '.join(f'{s16(v)}:${t:04X}' for v, t in ents)
        res['cases'] = ents
        return res
    n = LEN.get(op)
    if n is None:
        res['len'] = 1; res['text'] = f'.db ${op:02X} ; invalid'; res['bad'] = True; return res
    res['len'] = n
    name = NAMES.get(op, f'OP{op:02X}')
    if n == 1:
        t = name
        if op == 0xCF: res['end'] = True
    elif n == 2:
        v = g(1)
        if op in (0xE3, 0xE4, 0xE5):
            tgt = (pc + 2 + v - 256) & 0xFFFF
            res['targets'] = [tgt]; t = f'{name} ${tgt:04X}'
            if op == 0xE3: res['end'] = True
        elif op in (0xE6, 0xE7, 0xE8):
            tgt = (pc + 2 + v) & 0xFFFF
            res['targets'] = [tgt]; t = f'{name} ${tgt:04X}'
            if op == 0xE6: res['end'] = True
        elif op in (0x89, 0x8B, 0x8D, 0x8F):
            t = f'{name.split()[0]} #{s8(v)}'; res['imm'] = s8(v)
        elif op in (0xAE, 0xEA):
            t = f'{name} {v}'
        else:
            t = f'{name.split()[0]} L{s8(v):+d}'
    elif n == 3:
        v = w(1)
        if op in (0xD6, 0xD7, 0xD8):
            res['targets'] = [v]; t = f'{name} ${v:04X}'
            if op == 0xD6: res['end'] = True
        elif op == 0xAC:
            res['call'] = v; t = f'CALL ${v:04X}'
        elif op in (0x8A, 0x8C, 0x8E, 0x90):
            t = f'{name.split()[0]} #${v:04X}'; res['imm'] = v
        elif op in range(0xA4, 0xAC):
            res['abs'] = v; t = f'{name.split()[0]} ${v:04X}'
        elif op in (0x82, 0x84, 0x86, 0x88, 0xA0, 0xA1, 0xA2, 0xA3, 0xDE, 0xDF):
            t = f'{name.split()[0]} L{s16(v):+d}'
        else:
            t = f'{name} ${v:04X}'
    elif n == 4:
        v = w(1); a = g(3)
        res['call'] = v; t = f'CALL ${v:04X}, {a}'
    res['text'] = t
    return res

def is_func_header(buf, off):
    """JSR $E4BF followed by negative (or zero) frame size."""
    return off + 5 <= len(buf) and buf[off] == 0x20 and buf[off + 1] == 0xBF and buf[off + 2] == 0xE4

def dis_func(buf, off, pc, maxlen=4000):
    """Disassemble bytecode linearly from function entry (JSR $E4BF)."""
    lines = []
    fs = buf[off + 3] | (buf[off + 4] << 8)
    lines.append(f'{pc:04X}: FUNC frame={65536 - fs if fs else 0}')
    o = off + 5; p = pc + 5
    end = off + maxlen
    while o < min(end, len(buf)):
        d = insn(buf, o, p)
        raw = ' '.join(f'{x:02X}' for x in buf[o:o + min(d['len'], 8)])
        lines.append(f'  {p:04X}  {raw:<24} {d["text"]}')
        o += d['len']; p += d['len']
        if d.get('bad'):
            break
    return '\n'.join(lines)

if __name__ == '__main__':
    r = Rom()
    bank = int(sys.argv[1]); addr = int(sys.argv[2], 16)
    base = int(sys.argv[3], 16) if len(sys.argv) > 3 else addr & 0xE000
    n = int(sys.argv[4]) if len(sys.argv) > 4 else 60
    buf = r.bank8(bank)
    off = addr - base
    if is_func_header(buf, off):
        print('\n'.join(dis_func(buf, off, addr).split('\n')[:n]))
    else:
        o, p = off, addr
        for _ in range(n):
            d = insn(buf, o, p)
            print(f'  {p:04X}  {" ".join(f"{x:02X}" for x in buf[o:o+min(d["len"],8)]):<24} {d["text"]}')
            o += d['len']; p += d['len']
