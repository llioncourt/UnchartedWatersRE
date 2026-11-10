"""Koei LZ decompressor of Uncharted Waters (SNES), syscall 76, routine $00:97F3.

Stream layout (one byte pointer shared by everything, LoROM banks are contiguous):
  * a 16-bit little-endian word is read whenever the bit reader runs dry
    (the first one at the very start);
  * a flag byte gives 8 tokens, MSB first: 1 = literal byte (copied from the stream),
    0 = back-reference whose length and distance come from the bit reader.
Bit reader: 16-bit window, MSB first, refilled from 16-bit words.
Length codes (count = copied bytes):
  1                       -> 2
  010 / 011               -> 3 / 4
  001xx                   -> 5..8
  0001xxx                 -> 9..16
  00001xxxx               -> 17..32
  000001xxxxx             -> 33..64
  0000001xxxxxx           -> 65..128
  0000000xxxxxxx          -> 129..255, 0000000 1111111 ends the stream
Distance codes (distance = bytes back from the write pointer):
  0 0000x / 0 0001x       -> 1..4
  0 0010xx                -> 5..8
  0 0011xxx / 0 01xxxxx   -> 9..32
  0 1xxxxxxx (below 011)  -> 33..128
  011 + 7 bits ... 111 + 11 bits -> 129..4096
"""

M = [(1 << k) - 1 for k in range(17)]


def _tables(rom):
    b = lambda a, n: rom[a - 0x8000:a - 0x8000 + n]
    return dict(
        t9696=b(0x9696, 64), t96D6=b(0x96D6, 64), t9715=b(0x9715, 8),
        t971D=b(0x971D, 192), t97DD=b(0x97DD, 12), t97E6=b(0x97E6, 8), t97EB=b(0x97EB, 8))


def decompress(rom, pos, tabs=None, limit=0x10000):
    """Returns (data, end_pos). pos is a file offset."""
    T = tabs or _tables(rom)
    st = {'pos': pos, 'win': 0, 'cur': 0, 'av': 0}

    def take(n):
        win = (st['win'] << n) & 0xFFFF if n < 16 else 0
        if st['av'] >= n:
            st['av'] -= n
            win |= (st['cur'] >> st['av']) & M[n]
        else:
            need = n - st['av']
            win |= ((st['cur'] & M[st['av']]) << need) & 0xFFFF
            p = st['pos']; st['cur'] = rom[p] | rom[p + 1] << 8; st['pos'] = p + 2
            st['av'] = 16 - need
            win |= (st['cur'] >> st['av']) & M[need]
        st['win'] = win

    take(16)
    out = bytearray(); fx = 0; flags = 0
    while True:
        fx -= 1
        if fx < 0:
            fx = 7; flags = rom[st['pos']]; st['pos'] += 1
        bit = flags & 0x80; flags = (flags << 1) & 0xFF
        if bit:
            out.append(rom[st['pos']]); st['pos'] += 1
            if len(out) > limit: raise ValueError('too long')
            continue
        w = st['win']
        if w & 0x8000:
            cnt = 1
        else:
            y = (w >> 9) & 0x7F
            if y == 0:
                cnt = ((w >> 2) | 0x80) & 0xFFFF
                if cnt == 0xFF: return bytes(out), st['pos']
            elif y < 8:
                cnt = (w >> 1) >> (T['t9715'][y] // 2)
            else:
                cnt = T['t9696'][y]
            take(T['t96D6'][y] // 2)
        w = st['win']
        a = (w << 1) & 0xFFFF
        if a < 0x6000:
            y = ((a << 1) >> 8) & 0xFF
            off = T['t971D'][y]; nb = T['t97DD'][y >> 4] // 2
        else:
            y = (a >> 13) & 7
            off = (0x1000 | (w & 0x0FFF)) >> (T['t97E6'][y] // 2); nb = T['t97EB'][y] // 2
        take(nb)
        src = len(out) - off - 1
        if src < 0: raise ValueError('reference before start')
        for i in range(cnt + 1):
            out.append(out[src + i])
        if len(out) > limit: raise ValueError('too long')


def lorom(bank, addr):
    return (bank & 0x7F) * 0x8000 + (addr & 0x7FFF)


if __name__ == '__main__':
    import sys
    rom = open(sys.argv[1], 'rb').read()
    bank, addr = int(sys.argv[2], 16), int(sys.argv[3], 16)
    d, e = decompress(rom, lorom(bank, addr))
    print(f'{len(d)} bytes out, stream ${lorom(bank, addr):06X}-${e - 1:06X} ({e - lorom(bank, addr)} bytes)')
