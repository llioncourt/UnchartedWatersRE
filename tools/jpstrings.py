import re, pickle, os, __main__
from analyze import Func, base_of, CODE_BANKS
__main__.Func = Func
from nes6502 import Rom
jp = Rom('../extracted_jp/Daikoukai Jidai (Japan).nes')
funcs = pickle.load(open('../out/db_jp.pickle', 'rb'))
allimm = {}
for f in funcs.values():
    for pc, v in f.imms: allimm.setdefault(v, []).append(f.bank)
def kana(c): return 0xA1 <= c <= 0xDF or 0xE0 <= c <= 0xFF or 0x80 <= c <= 0x9F
out = []
for n in CODE_BANKS:
    b = jp.bank8(n); base = base_of(n)
    for m in re.finditer(rb'[\x0a\x1b\x20-\x7e\x80-\xff]{4,}\x00', b):
        s = m.group()[:-1]
        if sum(1 for c in s if kana(c)) < 3: continue
        st = m.start()
        k = st
        while k > 0 and b[k-1] != 0 and st - k < 16: k -= 1
        # referenced?
        hit = False
        for v in range(base + k, base + st + 3):
            for bb in allimm.get(v, []):
                if bb == n or bb in (1, 62, 63) or n in (1, 62, 63): hit = True
            pat = bytes([v & 255, v >> 8])
            for bn in set([n, 1, 62, 63]):
                if jp.bank8(bn).find(pat) != -1: hit = True
        if not hit: out.append((n, base + st, s))
pickle.dump(out, open('../out/jp_unref_strings.pickle', 'wb'))
print('JP unreferenced kana strings:', len(out))
for n, a, s in out[:80]:
    print(f'{n:2d}:{a:04X} len={len(s)} {s[:24].hex(" ")}')
