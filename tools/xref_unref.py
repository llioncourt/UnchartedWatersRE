import pickle, collections
from analyze import Func, base_of
from unref_funcs import callers
un = pickle.load(open('../out/unref_funcs.pickle', 'rb'))
for (n, a) in un:
    xs = [(cb, '%04X' % ca, '%04X' % pc, k) for (cb, ca, pc, k) in callers.get(a, [])]
    print(f'{n:2d}:{a:04X}', 'cross-bank refs:', xs[:6])
