"""Collect bytecode calls to the syscall gate ($21BE) with constant arguments."""
import os, sys, pickle
from collections import defaultdict, Counter
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'tools'))
import trace as TR
from kbc import insn
ROM = TR.ROM
ram = pickle.load(open('../out/trace_ram.pickle', 'rb'))
uses = defaultdict(list)
for name, (start, off, size, ins) in ram.items():
    buf = ROM[off:off + size]
    seq = sorted(a for a, t in ins.items() if t[1] == 'B')
    prev = []
    for a in seq:
        d = insn(buf, a - start, a); op = buf[a - start]
        if op == 0xE9 and (buf[a-start+1] | buf[a-start+2] << 8) == 0x21BE:
            n = buf[a - start + 3]
            # walk back over pushes: each push is 2 bytes of args
            args = []
            for p in reversed(prev[-12:]):
                t = p[1]
                if t.startswith('PUSH #') or t.startswith('PUSH $') or t.startswith('PUSH A') or t.startswith('PUSH L') or t.startswith('PUSHL') or t.startswith('PUSHB'):
                    args.append(t)
                    if len(args) * 2 >= n: break
                else:
                    args.append('?' + t)
                    if len(args) > 14: break
            sc = args[0] if args else '?'
            uses[sc].append((name, a, list(reversed(args[1:]))))
        prev.append((a, d['text']))
        if len(prev) > 40: prev = prev[-40:]
cnt = Counter({k: len(v) for k, v in uses.items()})
for k, c in sorted(cnt.items(), key=lambda kv: -kv[1]):
    ex = uses[k][0]
    print(f'{k:<14} {c:4d}  e.g. {ex[0]}:{ex[1]:04X} {ex[2][-6:]}')
pickle.dump(dict(uses), open('../out/syscall_uses.pickle', 'wb'))
