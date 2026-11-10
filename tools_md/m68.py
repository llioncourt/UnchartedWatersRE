import sys, capstone
ROMS = {'us': '../ports/md_us/rom/Uncharted Waters (USA).md', 'jp': '../ports/md_jp/rom/Daikoukai Jidai (Japan).md'}
def load(v): return open(ROMS[v], 'rb').read()
md = capstone.Cs(capstone.CS_ARCH_M68K, capstone.CS_MODE_M68K_000)
md.skipdata = True
def dis(d, addr, n=40):
    out = []
    for i, ins in enumerate(md.disasm(d[addr:addr + n * 10], addr)):
        if i >= n: break
        out.append('%06X  %-20s %s %s' % (ins.address, ins.bytes.hex(), ins.mnemonic, ins.op_str))
    return '\n'.join(out)
if __name__ == '__main__':
    d = load(sys.argv[1]); a = int(sys.argv[2], 16); n = int(sys.argv[3]) if len(sys.argv) > 3 else 40
    print(dis(d, a, n))
