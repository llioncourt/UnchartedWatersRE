import pickle, collections, __main__
from analyze import Func
__main__.Func = Func
us = pickle.load(open('../out/db.pickle', 'rb'))
jp = pickle.load(open('../out/db_jp.pickle', 'rb'))
def sig(f):
    if f.kind == 'bc':
        return ('bc',) + tuple(f.ins[p]['op'] for p in sorted(f.ins))
    return ('nat',) + tuple(f.ins[p][1] for p in sorted(f.ins))
def coarse(f):
    # opcode multiset-ish: sequence of ops but ignore immediate-push variants
    if f.kind == 'bc':
        return tuple(sorted(collections.Counter(f.ins[p]['op'] for p in f.ins).items()))
    return tuple(sorted(collections.Counter(f.ins[p][1] for p in f.ins).items()))
usig = collections.Counter(sig(f) for f in us.values())
jsig = collections.Counter(sig(f) for f in jp.values())
jp_only = [f for f in jp.values() if usig[sig(f)] == 0]
us_only = [f for f in us.values() if jsig[sig(f)] == 0]
print('JP funcs', len(jp), 'US funcs', len(us))
print('JP-only (exact opcode seq)', len(jp_only), ' US-only', len(us_only))
pickle.dump(([(f.bank, f.addr) for f in jp_only], [(f.bank, f.addr) for f in us_only]), open('../out/diff.pickle', 'wb'))
by = collections.Counter(f.bank for f in jp_only)
print('JP-only by bank', sorted(by.items()))
by = collections.Counter(f.bank for f in us_only)
print('US-only by bank', sorted(by.items()))
