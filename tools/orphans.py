import pickle, os, __main__
from analyze import Func
__main__.Func = Func
import unref_funcs as U
un = pickle.load(open(os.environ.get('UW_UNREF', '../out/unref_funcs.pickle'), 'rb'))
for (n, a) in un:
    if not U.callers.get(a):
        f = U.funcs[(n, a)]
        print(f'{n:2d}:{a:04X} {f.kind} size={f.end - f.addr}')
