"""Print the source of the function containing an address: fn.py <module> <hexaddr> [maxlines]"""
import sys, re, os
mod, addr = sys.argv[1], int(sys.argv[2], 16)
mx = int(sys.argv[3]) if len(sys.argv) > 3 else 400
p = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'src', 'root.s' if mod == 'root' else ('bank00.s' if mod == 'bank00' else f'ovl/{mod}.s'))
L = open(p).read().split('\n')
heads = [(int(m.group(1), 16), i) for i, l in enumerate(L) if (m := re.match(r'^\w*F_([0-9A-F]{4}):', l))]
heads.sort()
s = max((h for h in heads if h[0] <= addr), default=None)
if s is None: sys.exit('no function')
i = s[1]; out = [L[i]]; i += 1
while i < len(L) and not re.match(r'^\w*F_[0-9A-F]{4}:', L[i]) and len(out) < mx:
    out.append(L[i]); i += 1
print('\n'.join(out))
