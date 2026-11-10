import sys, io, contextlib
import show
spec = sys.argv[1:]
for s in spec:
    b, f, p = s.split(':'); b = int(b); f = int(f, 16); p = int(p, 16)
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf):
        show.show(b, f)
    print(f'== {b}:{f:04X} near {p:04X}')
    for line in buf.getvalue().splitlines()[1:]:
        a = int(line.split()[0], 16)
        if p - 14 <= a <= p + 22: print(line)
