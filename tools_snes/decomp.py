"""Pseudo-C for Koei bytecode functions, read from the emitted sources (src/root.s, src/ovl/*.s).

usage: python3 decomp.py <module> <label-or-hex-address> [more ...]
       python3 decomp.py <module> --all  > file

The VM has two registers (L, R) and a stack. Binary ops do L = L op R, calls take their
arguments from the stack, conditional jumps test L. Each call becomes its own statement
(t1 = f(...)) so side effects stay in order.
"""
import os, re, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import names as NM

BIN = {'k_add': '+', 'k_sub': '-', 'k_mul': '*', 'k_sdiv': '/', 'k_udiv': '/', 'k_smod': '%', 'k_umod': '%',
       'k_shl': '<<', 'k_shr': '>>', 'k_asr': '>>', 'k_and': '&', 'k_or': '|', 'k_xor': '^',
       'k_eq': '==', 'k_ne': '!=', 'k_lt': '<', 'k_le': '<=', 'k_gt': '>', 'k_ge': '>=',
       'k_ult': '<', 'k_ule': '<=', 'k_ugt': '>', 'k_uge': '>='}


def num(t):
    t = t.strip()
    if t.startswith('$'): return int(t[1:], 16)
    try: return int(t)
    except ValueError: return None


def loc(off):
    o = num(off)
    if o is None: return off
    if o >= 0x0B: return f'a{(o - 0x0B) // 2}'
    return f'v{-o}'


def lit(t):
    v = num(t)
    if v is None: return t
    if v > 0xFFFF: return str(v)
    return str(v) if -1000 < v < 1000 or (t.startswith('$') and len(t) > 5) else f'${v & 0xFFFF:04X}'


def byte(a):
    return f'(byte)({a})' if '+' in a else f'(byte){a}'


def P(e):
    return e if re.fullmatch(r'[\w$.+\[\]*()]+', e) and not any(c in e for c in ' ') else f'({e})'


class Dec:
    def __init__(self):
        self.out = []; self.L = 'L'; self.R = 'R'; self.st = []; self.t = 0; self.ind = '  '
        self.jcond = {}; self.incoming = {}; self.last = None; self.dead = False

    def emit(self, s): self.out.append(self.ind + s)

    def call(self, name, args):
        self.t += 1
        v = f't{self.t}'
        self.emit(f'{v} = {name}({", ".join(args)})')
        self.L = v

    def pop(self):
        return self.st.pop() if self.st else 'pop()'

    def op(self, op, a):
        if op in ('k_ldl', 'k_ldln', 'k_ldlf'): self.L = loc(a)
        elif op == 'k_ldlbf': self.L = f'(byte){loc(a)}'
        elif op in ('k_ldlarg',): self.L = loc(a)
        elif op in ('k_ldli', 'k_ldlib', 'k_ldliw'): self.L = lit(a)
        elif op == 'k_ldla': self.L = a
        elif op == 'k_ldlba': self.L = byte(a)
        elif op in ('k_ldr', 'k_ldrn', 'k_ldrf', 'k_ldrarg'): self.R = loc(a)
        elif op in ('k_ldri', 'k_ldrib', 'k_ldriw'): self.R = lit(a)
        elif op == 'k_ldra': self.R = a
        elif op == 'k_ldrba': self.R = byte(a)
        elif op == 'k_ldrbf': self.R = f'(byte){loc(a)}'
        elif op in ('k_stl', 'k_stln', 'k_stlf', 'k_stlarg'): self.emit(f'{loc(a)} = {self.L}')
        elif op == 'k_stlbf': self.emit(f'(byte){loc(a)} = {self.L}')
        elif op == 'k_stla': self.emit(f'{a} = {self.L}')
        elif op == 'k_stlba': self.emit(f'{byte(a)} = {self.L}')
        elif op in ('k_push', 'k_pushn', 'k_pushf', 'k_pusharg'): self.st.append(loc(a))
        elif op == 'k_pushbf': self.st.append(f'(byte){loc(a)}')
        elif op in ('k_pushi', 'k_pushib', 'k_pushiw'): self.st.append(lit(a))
        elif op == 'k_pusha': self.st.append(a)
        elif op == 'k_pushba': self.st.append(byte(a))
        elif op == 'k_pushl': self.st.append(self.L)
        elif op == 'k_popr': self.R = self.pop()
        elif op in BIN: self.L = f'{P(self.L)} {BIN[op]} {P(self.R)}'
        elif op == 'k_not': self.L = f'!{P(self.L)}'
        elif op == 'k_neg': self.L = f'-{P(self.L)}'
        elif op == 'k_compl': self.L = f'~{P(self.L)}'
        elif op == 'k_inc': self.L = f'{P(self.L)} + 1'
        elif op == 'k_dec': self.L = f'{P(self.L)} - 1'
        elif op == 'k_shl1': self.L = f'{P(self.L)} * 2'
        elif op in ('k_addli', 'k_addlib', 'k_addliw'):
            v = num(a); self.L = f'{P(self.L)} {"-" if v is not None and v < 0 else "+"} {lit(str(abs(v))) if v is not None else a}'
        elif op == 'k_swap': self.L, self.R = self.R, self.L
        elif op == 'k_deref': self.L = f'W[{self.L}]'
        elif op == 'k_derefb': self.L = f'B[{self.L}]'
        elif op == 'k_popstore': self.emit(f'W[{self.pop()}] = {self.L}')
        elif op == 'k_popstoreb': self.emit(f'B[{self.pop()}] = {self.L}')
        elif op == 'k_leal': self.L = f'&{loc(a)}'
        elif op == 'k_lear': self.R = f'&{loc(a)}'
        elif op == 'k_call': self.call(a, [])
        elif op == 'k_callx':
            f, n = [x.strip() for x in a.split(',')]
            n = num(n) // 2
            args = [self.pop() for _ in range(n)]
            if f in ('syscall', 'RL_21BE'):
                no = num(args[0]) if args else None
                nm = NM.SYS.get(no, (f'sys{no}',))[0] if no is not None else 'sys'
                self.call(f'sys{no}_{nm}' if no is not None else 'syscall', args[1:])
            else:
                self.call(f, args)  # a0 first (last pushed)
        elif op in ('k_callptr', 'k_callptrn'): self.call(f'(*{P(self.L)})', [a] if a else [])
        elif op == 'k_jump':
            self.incoming.setdefault(a, []).append((self.L, self.last))
            if self.L in ('L',) or not re.fullmatch(r'-?[\w$]+', self.L):
                self.emit(f'goto {a}')
            else:
                self.out.append(f'{self.ind}goto {a}  // L = {self.L}')
            self.L = 'L'; self.dead = True
        elif op == 'k_jumpt':
            self.emit(f'if ({self.L}) goto {a}'); self.jcond[a] = (self.L, True); self.last = (self.L, False)
        elif op == 'k_jumpf':
            self.emit(f'if (!{P(self.L)}) goto {a}'); self.jcond[a] = (self.L, False); self.last = (self.L, True)
        elif op == 'k_return': self.emit(f'return {self.L}' if self.L != 'L' else 'return'); self.dead = True
        elif op == 'k_func': self.emit(f'// frame {a}')
        elif op == 'k_switch':
            self.emit(f'switch ({self.L}) [{a}]')
        elif op == 'k_switchn': self.emit(f'switch ({self.L}) {{{a} cases}}')
        elif op in ('k_long', 'k_longw', 'k_longd'):
            p = [x.strip() for x in a.split(',')]
            sub = num(p[0]); arg = p[1] if len(p) > 1 else None
            L32 = {0x01: '*', 0x02: '/', 0x03: '+', 0x04: '-', 0x06: '==', 0x07: '!=', 0x08: '<', 0x09: '<=',
                   0x0A: '>', 0x0B: '>=', 0x1E: '%', 0x22: '&', 0x23: '|', 0x24: '^', 0x29: '<', 0x2A: '<=',
                   0x2B: '>', 0x2C: '>=', 0x2E: '/', 0x2F: '%'}
            if sub in L32: self.L = f'{P(self.L)} {L32[sub]} {P(self.R)}'
            elif sub == 0x26: self.L = f'{self.L}'
            elif sub == 0x25: self.L = f'{self.L}'
            elif sub == 0x27: pass
            elif sub == 0x05: self.L = f'-{P(self.L)}'
            elif sub == 0x0C: self.L = f'{loc(lit(arg) if num(arg) is None else str(num(arg) - 0x10000 if num(arg) > 0x7FFF else num(arg)))}'
            elif sub == 0x0D: self.R = f'{loc(str(num(arg) - 0x10000 if num(arg) > 0x7FFF else num(arg)))}'
            elif sub == 0x0E: self.emit(f'{loc(str(num(arg) - 0x10000 if num(arg) > 0x7FFF else num(arg)))} = {self.L}')
            elif sub == 0x0F: self.st.append(loc(str(num(arg) - 0x10000 if num(arg) > 0x7FFF else num(arg))))
            elif sub == 0x10: self.L = f'D[{arg}]'
            elif sub == 0x11: self.R = f'D[{arg}]'
            elif sub == 0x12: self.emit(f'D[{arg}] = {self.L}')
            elif sub == 0x13: self.st.append(f'D[{arg}]')
            elif sub == 0x14: self.st.append(self.L)
            elif sub == 0x15: self.R = self.pop()
            elif sub == 0x16: self.L = f'D[{self.L}]'
            elif sub == 0x17: self.emit(f'D[{self.pop()}] = {self.L}')
            elif sub == 0x18: self.L = lit(arg)
            elif sub == 0x19: self.R = lit(arg)
            elif sub == 0x1A: self.L, self.R = self.R, self.L
            elif sub == 0x1B: self.L = f'{P(self.L)} + 1'
            elif sub == 0x1C: self.L = f'{P(self.L)} - 1'
            elif sub == 0x1D: self.L = f'({self.L} != 0)'
            elif sub == 0x28: self.L = f'!{P(self.L)}'
            elif sub == 0x21: self.L = f'~{P(self.L)}'
            else: self.L = f'long{p[0]}({P(self.L)}{", " + arg if arg else ""})'
        elif op in ('k_bfext', 'k_bfextu'): self.L = f'bits({P(self.L)}, {a})'
        elif op == 'k_bfins': self.emit(f'bits_set({self.pop()}, {a}, {self.L})')
        elif op == 'k_copy': self.emit(f'copy({self.pop()}, {self.L}, {a})')
        elif op == 'k_nop': pass
        else: self.emit(f'?? {op} {a}')


def load(mod):
    p = os.path.join(ROOT, 'src', 'root.s' if mod == 'root' else f'ovl/{mod}.s')
    return open(p).read().split('\n')


def functions(lines):
    out = {}
    for i, l in enumerate(lines):
        m = re.match(r'^([A-Za-z_]\w*):$', l)
        if m and i + 1 < len(lines) and lines[i + 1].startswith('  k_func'):
            out[m.group(1)] = i
    return out


def decompile(lines, start):
    d = Dec()
    name = lines[start][:-1]
    i = start + 1
    d.out.append(f'{name}:')
    while i < len(lines):
        l = lines[i]
        if re.match(r'^[A-Za-z_]\w*:$', l):
            if i + 1 < len(lines) and lines[i + 1].startswith('  k_func'): break
            lab = l[:-1]
            newL = 'L'
            inc = d.incoming.get(lab, [])
            if len(inc) == 1 and not d.dead and d.last is not None:
                x, ctx = inc[0]
                if ctx is not None and ctx[0] == d.last[0] and ctx[1] != d.last[1] and x != 'L' and d.L != 'L':
                    c = ctx[0]
                    newL = f'({c} ? {x} : {d.L})' if ctx[1] else f'({c} ? {d.L} : {x})'
            d.out.append(l); d.L, d.R = newL, 'R'
            if lab in d.jcond:
                c, pol = d.jcond[lab]; d.last = (c, pol)
            d.dead = False
        elif l.startswith('  k_'):
            body = l.split(';')[0].strip()
            parts = body.split(None, 1)
            d.op(parts[0], parts[1] if len(parts) > 1 else '')
        elif l.startswith('  .word') and d.out and 'switch' in d.out[-1]:
            d.emit('  ' + l.strip()[6:])
        elif l.startswith(';') or not l.strip():
            pass
        else:
            break   # data or native code
        i += 1
    return d.out


def main():
    mod = sys.argv[1]
    lines = load(mod)
    F = functions(lines)
    if sys.argv[2] == '--all':
        for nm, i in sorted(F.items(), key=lambda x: x[1]):
            print('\n'.join(decompile(lines, i))); print()
        return
    for want in sys.argv[2:]:
        key = None
        if want in F: key = want
        else:
            for nm in F:
                if nm.endswith(want.upper()): key = nm
        if key is None:
            # any label: find the function that contains it
            for j, l in enumerate(lines):
                if l.endswith(f'_{want.upper()}:') or l == f'{want}:':
                    key = max((n for n in F if F[n] <= j), key=lambda n: F[n]); break
        print('\n'.join(decompile(lines, F[key]))); print()


if __name__ == '__main__':
    main()
