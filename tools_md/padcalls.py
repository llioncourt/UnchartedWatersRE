import pickle, re, sys
def find(v):
    ins = pickle.load(open(f'../out/md_{v}_sweep.pickle', 'rb'))
    res = []
    for i, (a, s, m, o) in enumerate(ins):
        if m == 'jsr' and o == '$bfc.l':
            # syscall number = last push before jsr
            num = None
            for j in range(i - 1, max(i - 4, 0), -1):
                aa, ss, mm, oo = ins[j]
                mm2 = re.match(r'pea\.?l? \$([0-9a-f]+)\.w', mm + ' ' + oo)
                if mm == 'pea.l' or mm == 'pea':
                    mt = re.match(r'\$([0-9a-f]+)\.w', oo)
                    if mt: num = int(mt.group(1), 16); break
                if mm == 'move.l' and oo.endswith('-(a7)'):
                    mt = re.match(r'#\$([0-9a-f]+), -\(a7\)', oo)
                    if mt: num = int(mt.group(1), 16)
                    break
                if mm == 'clr.l' and oo == '-(a7)': num = 0; break
            res.append((i, a, num))
    return ins, res
if __name__ == '__main__':
    v = sys.argv[1]
    ins, res = find(v)
    import collections
    print(v, collections.Counter(n for _, _, n in res).most_common(40))
