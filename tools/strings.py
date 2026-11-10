"""Extract C strings from code banks and find references to them."""
import re, pickle, collections, sys
from nes6502 import Rom
from analyze import base_of, CODE_BANKS, Func

GLOBAL = (1, 62, 63)

def extract(r):
    out = []
    for n in CODE_BANKS + [57, 58, 32, 33, 34, 39, 40, 41, 47]:
        b = r.bank8(n); base = base_of(n)
        for m in re.finditer(rb'[\x20-\x7e\n]{3,}\x00', b):
            s = m.group()[:-1]
            if sum(chr(c).isalpha() for c in s) < 3: continue
            st = m.start()
            k = st
            while k > 0 and b[k-1] != 0 and st - k < 6 and b[k-1] < 0x20 and b[k-1] != 0x0A:
                k -= 1
            out.append((n, base + k, b[k:m.end()-1].decode('latin1')))
    return out

def word_hits(r, val, banks):
    lo, hi = val & 0xFF, val >> 8
    pat = bytes([lo, hi])
    hits = []
    for n in banks:
        b = r.bank8(n)
        i = b.find(pat)
        while i != -1:
            hits.append((n, i)); i = b.find(pat, i + 1)
    return hits

if __name__ == '__main__':
    r = Rom()
    funcs = pickle.load(open('../out/db.pickle', 'rb'))
    imm_by_bank = collections.defaultdict(set)
    for f in funcs.values():
        for pc, v in f.imms:
            imm_by_bank[f.bank].add(v)
    strs = extract(r)
    res = []
    for n, a, s in strs:
        if n in GLOBAL:
            scope = list(range(64))
        else:
            scope = [n] + list(GLOBAL)
        code_ref = any(a in imm_by_bank[b] for b in scope)
        raw = word_hits(r, a, [n] + list(GLOBAL)) if not code_ref else []
        res.append((n, a, s, code_ref, raw))
    pickle.dump(res, open('../out/strings.pickle', 'wb'))
    unref = [x for x in res if not x[3] and not x[4]]
    rawonly = [x for x in res if not x[3] and x[4]]
    print('strings', len(res), 'code-ref', sum(1 for x in res if x[3]), 'raw-word-only', len(rawonly), 'unreferenced', len(unref))
    for n, a, s, c, raw in unref:
        print(f'UNREF {n:2d}:{a:04X} {s!r}'[:110])
