"""Map every byte of the ROM tail ($04DB7C-$0FFFFF): graphics, sound, padding.

Sources of references:
  * out/sysargs.json      constant syscall arguments found in the bytecode (sysargs.py)
  * out/syslog.jsonl      syscalls recorded while the game ran (emu_snes/syslog.py)
Kinds:
  LZ    Koei LZ stream (syscall 76), exact extent from lz.decompress
  TILE  raw tiles sent to VRAM by DMA (syscalls 11, 13, 14; animation frames of 55)
  SPC   APU upload (syscall 65): IPL blocks [size][ARAM address][data], size 0 ends
  PAD   filler bytes
  MAP   world map (zones, 3x3 blocks, 7x7 chunks)
  UNREF bytes no code path seen so far refers to
Output: out/assets.json, docs/ASSETS.md
"""
import json, os, sys
from collections import defaultdict
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import lz

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ROM = open(os.path.join(ROOT, 'ports', 'snes_us', 'rom', 'Uncharted Waters (USA).sfc'), 'rb').read()
TAIL = 0x4DB7C
END = len(ROM)


def calls():
    """Yield (num, args[$54..], origin) from static scan and from the run log."""
    sa = json.load(open(os.path.join(ROOT, 'out', 'sysargs.json')))
    for k, cs in sa.items():
        for c in cs:
            yield int(k), c['args'], f"{c['mod']}:{c['line']}"
    p = os.path.join(ROOT, 'out', 'syslog.jsonl')
    if os.path.exists(p):
        for l in open(p):
            d = json.loads(l)
            yield d['n'], d['a'], 'run'


def collect():
    refs = []   # (start, end, kind, info, origin)
    seen = set()
    last55 = 4
    T = lz._tables(ROM)
    for n, a, org in calls():
        key = (n, tuple(a[:9]))
        if n == 76 and a[1] is not None and a[2] is not None and a[2] < 0x7E:
            s = lz.lorom(a[2], a[1])
            if (n, s) in seen: continue
            seen.add((n, s))
            out, e = lz.decompress(ROM, s, T)
            refs.append((s, e, 'LZ', f'{len(out)} bytes unpacked', org))
        elif n in (11, 13, 14) and None not in a[1:4] and a[3] < 0x7E:
            unit = 16 if (n == 11 and a[4] == 3) else 32
            s = lz.lorom(a[3], a[2]); e = s + a[1] * unit
            if key in seen: continue
            seen.add(key)
            refs.append((s, e, 'TILE', f'{a[1]} tiles {"2bpp" if unit == 16 else "4bpp"} to VRAM tile {a[0]:#x}', org))
        elif n == 55:
            if a[4]: last55 = a[4]
            if a[0] == 0 and a[4]: last55 = a[4]
            if a[7] is None or a[8] is None or a[8] >= 0x7E or a[7] < 0x8000: continue
            s = lz.lorom(a[8], a[7]); e = s + 32 * last55
            if key in seen: continue
            seen.add(key)
            refs.append((s, e, 'TILE', f'sprite animation, {last55} frames', org))
        elif n == 65 and None not in a[:2]:
            s = lz.lorom(a[1], a[0]); p = s
            if (n, s) in seen: continue
            seen.add((n, s))
            parts = []
            while True:
                ln = ROM[p] | ROM[p + 1] << 8; ad = ROM[p + 2] | ROM[p + 3] << 8
                if ln == 0: p += 4; break
                parts.append(f'{ln}@{ad:04X}'); p += 4 + ln
            refs.append((s, p, 'SPC', 'APU upload ' + ' '.join(parts), org))
    return refs


MODMAP = {x['name']: (x['run'], x['off']) for x in json.load(open(os.path.join(ROOT, 'out', 'rom_map.json')))['modules']}


def mword(mod, addr):
    st, off = MODMAP[mod]
    o = off + addr - st
    return ROM[o] | ROM[o + 1] << 8


def families():
    """Address families computed by the code (formula or table), read from the bytecode.
    Each item: (start, end, kind, info, origin)."""
    out = []
    # world map, read byte by byte through root RF_3F4F (linear offset from $0A:8000)
    # header: word offset of block table, word offset of chunk table
    base = 0x50000
    bt = ROM[base] | ROM[base + 1] << 8; ct = ROM[base + 2] | ROM[base + 3] << 8
    nz = (bt - 4) // 5; nb = (ct - bt) // 18
    nch = 1331
    out.append((base, base + 4, 'MAP', 'world map header: block table and chunk table offsets', 'root:RF_54D9'))
    out.append((base + 4, base + bt, 'MAP', f'world map zones: {nz} records of 5 bytes (24 x {nz // 24}): block number, 3 attribute bytes', 'root:RF_5449'))
    out.append((base + bt, base + ct, 'MAP', f'world map blocks: {nb} blocks of 3x3 chunk numbers (18 bytes)', 'root:RF_5449'))
    out.append((base + ct, base + ct + 49 * nch, 'MAP', f'world map chunks: {nch} chunks of 7x7 tiles (49 bytes)', 'root:RF_5449'))
    def tiles(bank, addr, n, info, org, unit=32):
        s = lz.lorom(bank, addr); out.append((s, s + n * unit, 'TILE', f'{n} tiles 4bpp, {info}', org))
    for k in range(7):        # root RF_23xx: $8040 + (arg-1)*$120, 9 tiles
        tiles(0x18, 0x8040 + 0x120 * k, 9, f'set {k + 1} of 7', 'root:532 formula')
    for k in range(15):       # root RF_22A8: $8820 + i*$380, 28 tiles
        tiles(0x18, 0x8820 + 0x380 * k, 28, f'block {k} of 15', 'root:RF_22A8 formula')
    for i in range(27):       # root table RD_8B7A, 15 tiles from bank $18
        a = mword('root', 0x8B7A + 2 * i)
        if a: tiles(0x18, a, 15, f'entry {i} of RD_8B7A', 'root:443 table RD_8B7A')
    for k in range(4):        # root: $8000 + ($F164*4)*$240, 72 tiles
        tiles(0x10, 0x8000 + 0x900 * k, 72, f'set {k} of 4', 'root:7892 formula')
    for base, org in ((0xBEDE, 'root:9078'), (0xCEDE, 'root:9089')):
        for k in range(8):    # (($EF86 >> 6) & 7) << 9
            tiles(0x10, base + 0x200 * k, 16, f'frame {k} of 8', org + ' formula')
    for bank, cnt in ((0x19, 33), (0x1A, 20)):   # portraits: idx<33 -> $19 else $1A
        for k in range(cnt):
            a = 0x8000 + 2 * (k + 1) + 0x3C0 * k
            s = lz.lorom(bank, a)
            out.append((s - 2, s, 'TILE', 'portrait header: its first tile number (k*30), not read by the game', 'root:15459 formula'))
            tiles(bank, a, 30, f'portrait {k + (33 if bank == 0x1A else 0)}', 'root:15459 formula')
    for i in range(5):        # mdisp1 table BD16: (address, tiles), bank $11, syscall 13
        a = mword('mdisp1', 0xBD16 + 4 * i); n = mword('mdisp1', 0xBD18 + 4 * i)
        tiles(0x11, a, n, f'entry {i} of MDISP1 BD16', 'mdisp1:855 table')
    for i in range(8):        # uminato table AB54: (tiles, address, bank)
        n = mword('uminato', 0xAB54 + 6 * i); a = mword('uminato', 0xAB56 + 6 * i); b = mword('uminato', 0xAB58 + 6 * i)
        tiles(b, a, n, f'port town set {i} of 8', 'uminato:341 table')
    for r in range(4):        # root RF_837B face builder: 4 face types x 5 parts x 4 variants, bank $1B
        for j in range(5):
            n = mword('root', 0x955E + 20 * r + 4 * j + 2)
            for v in range(4):
                a = 0x8000 + mword('root', 0x94BE + 40 * r + 8 * j + 2 * v)
                tiles(0x1B, a, n, f'face part: type {r}, part {j}, variant {v}', 'root:RF_837B tables RD_94BE/RD_955E')
    T = lz._tables(ROM)
    for i in range(8):        # root table RD_8D72: LZ streams in bank $17
        a = mword('root', 0x8D72 + 2 * i); s = lz.lorom(0x17, a)
        d, e = lz.decompress(ROM, s, T)
        out.append((s, e, 'LZ', f'{len(d)} bytes unpacked, entry {i} of RD_8D72', 'root:1332 table RD_8D72'))
    return out


def build():
    refs = [r for r in collect() + families() if r[1] > TAIL and r[0] < END]
    owner = [None] * (END - TAIL)
    for s, e, k, info, org in sorted(refs, key=lambda r: (r[0], -(r[1] - r[0]))):
        for x in range(max(s, TAIL), min(e, END)):
            if owner[x - TAIL] is None: owner[x - TAIL] = (s, k)
    # group into regions
    regions = []
    x = TAIL
    while x < END:
        o = owner[x - TAIL]
        y = x
        while y < END and owner[y - TAIL] == o: y += 1
        if o is None:
            # trailing fill up to the next asset or bank end is padding; the rest is unreferenced data
            q = y
            while q > x and ROM[q - 1] in (0x00, 0xFF) and ROM[q - 1] == ROM[y - 1]: q -= 1
            if y - q < 16 and not (y % 0x8000 == 0 and y - q > 0): q = y
            if q > x:
                # leading fill (right after an asset) of 16 or more bytes is padding too
                p = x
                while p < q and ROM[p] in (0x00, 0xFF) and ROM[p] == ROM[x]: p += 1
                if p - x >= 16 or p == q:
                    regions.append([x, p, 'PAD', f'${ROM[x]:02X}', []])
                    if p < q: regions.append([p, q, 'UNREF', '', []])
                else:
                    regions.append([x, q, 'UNREF', '', []])
            if q < y: regions.append([q, y, 'PAD', f'${ROM[y - 1]:02X}', []])
        else:
            regions.append([x, y, o[1], '', []])
        x = y
    # attach info/origins
    byst = defaultdict(list)
    for s, e, k, info, org in refs: byst[s].append((info, org))
    for r in regions:
        if r[2] in ('LZ', 'TILE', 'SPC', 'MAP'):
            for s in sorted(byst):
                if r[0] <= s < r[1]:
                    for info, org in byst[s]:
                        r[4].append({'at': s, 'info': info, 'from': org})
            if r[4]: r[3] = r[4][0]['info']
    # the encoder ends every LZ stream with one more word the decoder never needs
    for i in range(1, len(regions)):
        r, p = regions[i], regions[i - 1]
        if r[2] == 'UNREF' and p[2] == 'LZ' and r[1] - r[0] <= 2:
            r[2] = 'LZ'; r[3] = 'end of stream (flush word)'
    # merge adjacent padding
    merged = []
    for r in regions:
        if merged and r[2] == merged[-1][2] == 'PAD' and r[3] == merged[-1][3]:
            merged[-1][1] = r[1]
        else: merged.append(r)
    return merged


KIND_PT = {'LZ': 'LZ Koei (syscall 76)', 'TILE': 'tiles crus (DMA para a VRAM)', 'SPC': 'som (upload para o APU)',
           'MAP': 'mapa-múndi', 'PAD': 'preenchimento', 'UNREF': 'sem referência encontrada'}


def write_doc(regs, tot):
    L = ['# Mapa dos recursos da ROM (SNES US), de $04DB7C a $0FFFFF', '',
         'Gerado por `tools_snes/assets.py`. Cada byte da cauda da ROM está numa região abaixo.',
         'As referências vêm de três fontes: argumentos constantes de syscalls no bytecode (`out/sysargs.json`),',
         'fórmulas e tabelas lidas no código (citadas na coluna "origem") e syscalls registradas com o jogo rodando',
         '(`emu_snes/syslog.py`, saída em `out/syslog.jsonl`).', '',
         '## Totais', '', '| tipo | bytes |', '|---|---:|']
    for k in sorted(tot): L.append(f'| {KIND_PT[k]} | {tot[k]} |')
    L += ['', '## Formatos', '',
          '- **LZ Koei** (`tools_snes/lz.py`, rotina `$00:97F3`): um byte de flags dá 8 tokens (1 = literal, 0 = cópia);',
          '  comprimento e distância vêm de um leitor de bits MSB-first alimentado por palavras de 16 bits intercaladas no',
          '  mesmo fluxo. Distância até 4096, cópia de 2 a 255 bytes, fim = `0000000 1111111`. O codificador grava uma',
          '  palavra a mais no fim de cada fluxo. Saída em `$7F:xxxx`.',
          '- **Tiles crus**: 4bpp (32 bytes por tile) ou 2bpp (16) enviados por DMA nas syscalls 11/13/14; a 55 anima',
          '  sprites trocando quadros de 32 bytes.',
          '- **Som**: blocos IPL `[tamanho][endereço na ARAM][dados]`, tamanho 0 encerra e dá o ponto de entrada ($0800).',
          '- **Mapa-múndi** (lido byte a byte por `RF_3F4F` a partir de `$0A:8000`): cabeçalho com dois offsets; 288 zonas',
          '  (24 × 12) de 5 bytes (número do bloco + 3 bytes de atributos); 223 blocos de 3 × 3 pedaços; 1331 pedaços de',
          '  7 × 7 células (1 byte cada). O mar inteiro tem 504 × 252 células.',
          '- **Retratos**: 53 retratos de 30 tiles, 33 no banco `$19` e 20 no `$1A`; cada um precedido por uma palavra',
          '  com o número do seu primeiro tile (k × 30), que o jogo não lê.', '',
          '## Regiões', '', '| início | fim | bytes | tipo | conteúdo | origem |', '|---|---|---:|---|---|---|']
    for s, e, k, info, rf in regs:
        org = ', '.join(sorted({r['from'] for r in rf if r['from'] != 'run'})[:2]) or ('jogo rodando' if rf else '')
        L.append(f'| ${s:06X} | ${e - 1:06X} | {e - s} | {k} | {info} | {org} |')
    open(os.path.join(ROOT, 'docs', 'ASSETS.md'), 'w').write('\n'.join(L) + '\n')


def main():
    regs = build()
    tot = defaultdict(int)
    for s, e, k, *_ in regs: tot[k] += e - s
    json.dump([{'start': s, 'end': e, 'kind': k, 'info': i, 'refs': rf} for s, e, k, i, rf in regs],
              open(os.path.join(ROOT, 'out', 'assets.json'), 'w'), indent=0)
    for k in sorted(tot): print(f'{k:6s} {tot[k]:7d} bytes')
    write_doc(regs, tot)
    print('total', sum(tot.values()), 'of', END - TAIL)
    return regs


if __name__ == '__main__':
    main()
