import pickle, re, bisect, collections, struct
from m68 import load
class CG:
    def __init__(self, v):
        self.v = v
        self.ins = pickle.load(open(f'../out/md_{v}_sweep.pickle', 'rb'))
        self.addrs = [x[0] for x in self.ins]
        self.funcs = [x[0] for x in self.ins if x[2].startswith('link')]
        self.callers = collections.defaultdict(list)
        self.refs = collections.defaultdict(list)
        for a, s, m, o in self.ins:
            mt = re.search(r'\$([0-9a-f]+)(\.l)?$', o) if m in ('jsr', 'jmp', 'bsr.w', 'bsr.b', 'bra.w') else None
            if mt and m in ('jsr', 'jmp', 'bsr.w', 'bsr.b'):
                self.callers[int(mt.group(1), 16)].append(a)
            for mt in re.finditer(r'#?\$([0-9a-f]{4,6})(\.l)?', o):
                self.refs[int(mt.group(1), 16)].append(a)
    def func_of(self, a):
        i = bisect.bisect_right(self.funcs, a) - 1
        return self.funcs[i] if i >= 0 else None
    def show(self, start, n=60):
        i = bisect.bisect_left(self.addrs, start)
        out = []
        for a, s, m, o in self.ins[i:i + n]:
            out.append('%06X %s %s' % (a, m, o))
        return '\n'.join(out)
