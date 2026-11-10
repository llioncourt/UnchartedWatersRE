"""Static scan of every syscall call site in the bytecode sources.

Walks src/root.s and src/ovl/*.s, keeps a symbolic value stack and the L register
inside each basic block, and records the constant arguments of each
`k_callx RL_21BE, n`. Output: out/sysargs.json  {num: [{mod, line, args:[$54,$56,...]}]}
An argument that is not a compile-time constant is null.
"""
import json, os, re, glob

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

HEXNAME = re.compile(r'^[A-Z0-9_]*?_?[DFL]?_?([0-9A-F]{4})$')


def val(tok):
    tok = tok.strip()
    if tok.startswith('$'): return int(tok[1:], 16)
    if re.fullmatch(r'-?\d+', tok): return int(tok)
    m = re.search(r'([0-9A-F]{4})$', tok)
    return int(m.group(1), 16) if m else None


MODS = None
WRITTEN = set()


def load_mods():
    """name -> (start, size, file offset); plus the set of addresses some code stores to."""
    global MODS
    m = json.load(open(os.path.join(ROOT, 'out', 'rom_map.json')))['modules']
    MODS = {}
    for x in m:
        MODS[x['name']] = (x['run'], x['size'], x['off'])
    for p in [os.path.join(ROOT, 'src', 'root.s'), os.path.join(ROOT, 'src', 'bank00.s')] + glob.glob(os.path.join(ROOT, 'src', 'ovl', '*.s')):
        for raw in open(p):
            t = raw.split(';')[0].split()
            if len(t) >= 2 and t[0] in ('k_stla', 'k_stlba', 'sta', 'stx', 'sty', 'stz'):
                v = val(t[1].replace('a:', '').replace('f:', '').split(',')[0])
                if v is not None: WRITTEN.add(v & 0xFFFF)


ROM = None


def ro_word(mod, tok, size=2):
    """Initial value of a never-written data word named by a label of this module or of root."""
    global ROM
    if ROM is None: ROM = open(os.path.join(ROOT, 'ports', 'snes_us', 'rom', 'Uncharted Waters (USA).sfc'), 'rb').read()
    if '_D_' not in tok and not tok.startswith('RD_'): return None
    a = val(tok)
    if a is None or a in WRITTEN or (size == 2 and (a + 1) in WRITTEN): return None
    for name in (mod, 'root'):
        if name in MODS:
            st, sz, off = MODS[name]
            if st <= a < st + sz - 1:
                o = off + a - st
                return ROM[o] | (ROM[o + 1] << 8 if size == 2 else 0)
    return None


def scan_file(path, mod, out):
    stack = []          # known values pushed since the last barrier (None = unknown)
    L = None            # 32-bit value of L or None
    for ln, raw in enumerate(open(path), 1):
        line = raw.split(';')[0].rstrip()
        if not line.strip(): continue
        if not line.startswith(' '):          # label: block boundary
            stack, L = [], None; continue
        parts = line.split(None, 1)
        op = parts[0]; arg = parts[1] if len(parts) > 1 else ''
        if op in ('k_pushi', 'k_pushib', 'k_pushiw'):
            stack.append(val(arg) & 0xFFFF if val(arg) is not None else None)
        elif op in ('k_pusha', 'k_pushba'):
            stack.append(ro_word(mod, arg, 2 if op == 'k_pusha' else 1))
        elif op in ('k_push', 'k_pusharg', 'k_pushn', 'k_pushf', 'k_pushbf'):
            stack.append(None)
        elif op in ('k_ldla', 'k_ldlba'):
            L = ro_word(mod, arg, 2 if op == 'k_ldla' else 1)
        elif op in ('k_addli', 'k_addlib', 'k_addliw'):
            v = val(arg)
            L = None if (L is None or v is None) else (L + v) & 0xFFFF
        elif op == 'k_pushl':
            stack.append(None if L is None else L & 0xFFFF)
        elif op in ('k_ldli', 'k_ldlib', 'k_ldliw'):
            v = val(arg); L = None if v is None else v & 0xFFFF
        elif op == 'k_long':
            sub = val(arg)
            if sub == 0x26: L = None if L is None else L & 0xFFFF
            elif sub == 0x25: L = None if L is None else (L | 0xFFFF0000 if L & 0x8000 else L & 0xFFFF)
            elif sub == 0x14:
                if L is None: stack += [None, None]
                else: stack += [(L >> 16) & 0xFFFF, L & 0xFFFF]
            else:
                stack, L = [], None
        elif op == 'k_callx' and arg.startswith('RL_21BE'):
            n = val(arg.split(',')[1]) // 2
            if len(stack) >= 1 and stack[-1] is not None:
                num = stack[-1]
                args = []
                for i in range(2, n + 1):
                    args.append(stack[-i] if len(stack) >= i else None)
                out.setdefault(num, []).append({'mod': mod, 'line': ln, 'args': args})
            stack, L = [], None
        elif op.startswith('.') or op.startswith('k_func'):
            stack, L = [], None
        else:
            # any other VM op may consume the stack or change L: barrier
            stack, L = [], None


def run():
    load_mods()
    out = {}
    scan_file(os.path.join(ROOT, 'src', 'root.s'), 'root', out)
    for p in sorted(glob.glob(os.path.join(ROOT, 'src', 'ovl', '*.s'))):
        scan_file(p, os.path.basename(p)[:-2], out)
    json.dump({str(k): v for k, v in sorted(out.items())}, open(os.path.join(ROOT, 'out', 'sysargs.json'), 'w'), indent=0)
    return out


if __name__ == '__main__':
    o = run()
    for k in sorted(o):
        known = sum(1 for c in o[k] if all(a is not None for a in c['args']))
        print(f'sys {k:3d}: {len(o[k]):4d} sites, {known:4d} fully constant')
