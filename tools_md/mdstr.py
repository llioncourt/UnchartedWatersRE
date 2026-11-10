import re, sys, struct, collections
from m68 import load
def strings_ascii(d):
    out = []
    for m in re.finditer(rb'[\x0a\x20-\x7e]{4,}\x00', d):
        s = m.group()[:-1]
        if sum(chr(c).isalpha() for c in s) < 3: continue
        st = m.start(); k = st
        while k > 0 and d[k-1] != 0 and st - k < 8 and d[k-1] < 0x20 and d[k-1] != 0x0a: k -= 1
        out.append((k, st, s))
    return out
def refs_index(d):
    idx = collections.defaultdict(list)
    for i in range(0, len(d) - 3, 2):  # 68k: longs on even addresses
        v = struct.unpack('>I', d[i:i+4])[0]
        if v < len(d): idx[v].append(i)
    return idx
if __name__ == '__main__':
    v = sys.argv[1]
    d = load(v)
    idx = refs_index(d)
    S = strings_ascii(d)
    unref = []
    for k, st, s in S:
        hit = any(idx.get(a) for a in range(k, st + 2))
        if not hit: unref.append((k, s))
    print(v, 'strings', len(S), 'unreferenced', len(unref))
    for k, s in unref:
        print('%06X %r' % (k, s[:80]))
