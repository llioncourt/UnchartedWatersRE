"""Record asset-loading syscalls while the game runs.

Builds us_log.sfc: syscall_gate's `jsr syscall_dispatch` ($00:A0F5) is redirected to a stub
in the free space at $00:C000, which appends $52..$67 (number + 10 argument words) to a
buffer at $7F:C000 when the number is one of WATCH. The host drains the buffer every
POLL frames.

usage: python3 syslog.py <out.jsonl> <frames> <buttons> state1 [state2 ...]
  buttons: 'none' | 'mash' (pseudo-random presses, fixed seed per state)
"""
import sys, json, random, numpy as np, stable_retro as retro

B = 0x10b96
WATCH = [11, 13, 14, 26, 28, 55, 65, 76]
BUF, IDX, CAP = 0x1C000, 0x1BFFE, 0x1800        # offsets into WRAM ($7F:C000, $7F:BFFE)
POLL = 30


def build_rom(src='us.sfc', dst='us_log.sfc'):
    rom = bytearray(open(src, 'rb').read())
    a = rom.find(bytes.fromhex('20dd8da568850a6b'), 0x2000, 0x2200)
    assert a == 0x20F5, hex(a)
    rom[a:a + 3] = bytes([0x20, 0x00, 0xC0])        # jsr $C000
    c = []
    c += [0x08, 0xC2, 0x30, 0x48, 0xDA, 0x5A]        # php rep#$30 pha phx phy
    c += [0xA5, 0x52, 0x29, 0xFF, 0x00]             # lda $52 and #$00FF
    skip_patch = []
    for n in WATCH:
        c += [0xC9, n, 0x00, 0xF0, 0x00]            # cmp #n beq log
        skip_patch.append(len(c) - 1)
    c += [0x80, 0x00]; bra_done = len(c) - 1         # bra done
    log = len(c)
    for p in skip_patch: c[p] = log - (p + 1)
    c += [0xAF, 0xFE, 0xBF, 0x7F, 0xAA]              # lda $7FBFFE tax
    c += [0xE0, CAP & 0xFF, CAP >> 8, 0xB0, 0x00]; bcs_done = len(c) - 1
    for i in range(11):
        c += [0xA5, 0x52 + 2 * i, 0x9F, (0xC000 + 2 * i) & 0xFF, (0xC000 + 2 * i) >> 8, 0x7F]
    c += [0x8A, 0x18, 0x69, 22, 0x00, 0x8F, 0xFE, 0xBF, 0x7F]   # txa clc adc #22 sta $7FBFFE
    done = len(c)
    c[bra_done] = done - (bra_done + 1); c[bcs_done] = done - (bcs_done + 1)
    c += [0x7A, 0xFA, 0x68, 0x28, 0x4C, 0xDD, 0x8D]  # ply plx pla plp jmp $8DDD
    assert all(v == 0 for v in rom[0x4000:0x4000 + len(c)])
    rom[0x4000:0x4000 + len(c)] = bytes(c)
    open(dst, 'wb').write(rom)


def drain(em, out, tag, frame):
    s = bytearray(em.get_state())
    n = s[B + IDX] | s[B + IDX + 1] << 8
    if n == 0x5555: n = 0
    for k in range(0, min(n, CAP), 22):
        e = s[B + BUF + k:B + BUF + k + 22]
        w = [e[i] | e[i + 1] << 8 for i in range(0, 22, 2)]
        out.write(json.dumps({'st': tag, 'f': frame, 'n': w[0] & 0xFF, 'a': w[1:]}) + '\n')
    s[B + IDX] = 0; s[B + IDX + 1] = 0
    em.set_state(bytes(s))


def main():
    outp, frames, mode = sys.argv[1], int(sys.argv[2]), sys.argv[3]
    build_rom()
    em = retro.RetroEmulator('us_log.sfc')
    em.step(); boot = em.get_state()
    out = open(outp, 'a')
    for st in sys.argv[4:]:
        if st == 'boot':
            em.set_state(boot)
        else:
            em.set_state(open(st, 'rb').read())
        s = bytearray(em.get_state()); s[B + IDX] = 0; s[B + IDX + 1] = 0; em.set_state(bytes(s))
        rnd = random.Random(st)
        btn = np.zeros(12, dtype=np.uint8); hold = 0
        for f in range(frames):
            if mode == 'mash':
                if hold == 0:
                    btn = np.zeros(12, dtype=np.uint8)
                    # B Y SEL START UP DOWN LEFT RIGHT A X L R
                    k = rnd.choice([8, 8, 8, 0, 4, 5, 6, 7, 4, 5, 6, 7, 9, 3, 1])
                    btn[k] = 1; hold = rnd.randint(2, 12)
                elif hold == 1:
                    btn = np.zeros(12, dtype=np.uint8)
                hold -= 1
            em.set_button_mask(btn, 0); em.step()
            if f % POLL == POLL - 1: drain(em, out, st, f)
        drain(em, out, st, frames)
        out.flush()
    out.close()


if __name__ == '__main__':
    main()
