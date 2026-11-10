import sys, re, capstone, pickle
from m68 import load
md = capstone.Cs(capstone.CS_ARCH_M68K, capstone.CS_MODE_M68K_000)
md.skipdata = True
def sweep(v, start=0x200, end=0x39800):
    d = load(v)
    ins = []
    for i in md.disasm(d[start:end], start):
        ins.append((i.address, i.size, i.mnemonic, i.op_str))
    return ins
if __name__ == '__main__':
    for v in ('us', 'jp'):
        ins = sweep(v)
        pickle.dump(ins, open(f'../out/md_{v}_sweep.pickle', 'wb'))
        print(v, len(ins))
