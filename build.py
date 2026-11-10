#!/usr/bin/env python3
"""Rebuild Uncharted Waters (SNES US) from source and compare with the original ROM.

usage: python3 build.py <path to your Uncharted Waters (USA).sfc>
Code (engine bank $00, resident image and the 35 overlays) is assembled from src/ with ca65/ld65.
Everything else (game data files, graphics, sound) is copied from your ROM into assets/ on the
first run; assets/ is never committed. Output: build/uw.sfc, plus a byte-by-byte comparison.
"""
import sys, os, subprocess, hashlib, json
HERE = os.path.dirname(os.path.abspath(__file__))
SHA1 = 'see out/rom_map.json'

def sh(*a):
    r = subprocess.run(a, capture_output=True, text=True)
    if r.returncode: sys.exit(f'{" ".join(a)}\n{r.stdout}{r.stderr}')

def assemble(src, start, size, name):
    os.makedirs(os.path.join(HERE, 'build'), exist_ok=True)
    o = os.path.join(HERE, 'build', name + '.o'); b = os.path.join(HERE, 'build', name + '.bin')
    cfg = os.path.join(HERE, 'build', name + '.cfg')
    open(cfg, 'w').write(f'MEMORY {{ M: start=${start:X}, size=${size:X}, file=%O, fill=yes; }}\nSEGMENTS {{ CODE: load=M, type=rw; }}\n')
    sh('ca65', '-I', os.path.join(HERE, 'include'), src, '-o', o)
    sh('ld65', '-C', cfg, o, '-o', b)
    return open(b, 'rb').read()

def main():
    base = open(sys.argv[1], 'rb').read()
    m = json.load(open(os.path.join(HERE, 'out', 'rom_map.json')))
    if hashlib.sha1(base).hexdigest() != m['sha1']:
        sys.exit('this is not the expected ROM (Uncharted Waters (USA).sfc, SHA-1 ' + m['sha1'] + ')')
    rom = bytearray(len(base))
    filled = bytearray(len(base))
    for mod in m['modules']:
        data = assemble(os.path.join(HERE, mod['src']), mod['run'], mod['size'], mod['name'])
        rom[mod['off']:mod['off'] + mod['size']] = data
        for i in range(mod['off'], mod['off'] + mod['size']): filled[i] = 1
        same = data == base[mod['off']:mod['off'] + mod['size']]
        print(f"{mod['name']:<10} {mod['size']:6d} bytes  {'identical' if same else 'DIFFERENT'}")
    os.makedirs(os.path.join(HERE, 'assets'), exist_ok=True)
    for a in m['assets']:
        if 'fill' in a:
            rom[a['off']:a['off'] + a['size']] = bytes([a['fill']]) * a['size']
            for i in range(a['off'], a['off'] + a['size']): filled[i] = 1
            continue
        p = os.path.join(HERE, 'assets', a['name'] + '.bin')
        if not os.path.exists(p):
            open(p, 'wb').write(base[a['off']:a['off'] + a['size']])
        rom[a['off']:a['off'] + a['size']] = open(p, 'rb').read()
        for i in range(a['off'], a['off'] + a['size']): filled[i] = 1
    assert all(filled), 'gap in the module/asset map'
    out = os.path.join(HERE, 'build', 'uw.sfc'); open(out, 'wb').write(rom)
    diff = [i for i in range(len(rom)) if rom[i] != base[i]]
    print('ROM', 'IDENTICAL' if not diff else f'{len(diff)} bytes differ, first at ${diff[0]:06X}', hashlib.sha1(rom).hexdigest())

if __name__ == '__main__':
    main()
