import pickle, difflib, collections, __main__
from analyze import Func
__main__.Func = Func
from diffjp import us, jp, sig
jo, uo = pickle.load(open('../out/diff.pickle', 'rb'))
def seq(f): return list(sig(f))
uall = collections.defaultdict(list)
for f in us.values(): uall[f.bank].append(f)
jall = collections.defaultdict(list)
for f in jp.values(): jall[f.bank].append(f)
def best(f, pool):
    s = seq(f); bestr, bf = 0, None
    for g in pool:
        if g.kind != f.kind: continue
        t = seq(g)
        if abs(len(t) - len(s)) > max(len(s), len(t)) * 0.6: continue
        r = difflib.SequenceMatcher(None, s, t, autojunk=False).ratio()
        if r > bestr: bestr, bf = r, g
    return bestr, bf
print('--- JP functions with weak US match (<0.6) ---')
for (b, a) in sorted(jo):
    f = jp[(b, a)]
    r, g = best(f, uall[b])
    if r < 0.6:
        print(f'JP {b:2d}:{a:04X} {f.kind} n={len(f.ins):4d} best={r:.2f} ' + (f'US {g.bank}:{g.addr:04X}' if g else ''))
print('--- US functions with weak JP match (<0.6) ---')
for (b, a) in sorted(uo):
    f = us[(b, a)]
    r, g = best(f, jall[b])
    if r < 0.6:
        print(f'US {b:2d}:{a:04X} {f.kind} n={len(f.ins):4d} best={r:.2f} ' + (f'JP {g.bank}:{g.addr:04X}' if g else ''))
