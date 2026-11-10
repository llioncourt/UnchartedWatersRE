"""Decode the SNES (US) economy/market tables. Offsets are file offsets in the .sfc."""
import struct, json, sys
from w65816 import load
FDATA = 0x10836          # 'fdata' segment (root dir @0x7800: bank 2 $8836, size 0x37D8)
SGDATA = 0xF5AE          # 'sgdata' segment (bank 1 $F5AE, size 0x1288) -> loaded at RAM $7E:DF00
PORT_ECON = SGDATA + (0xE6B4 - 0xDF00)   # 50 x 14 bytes (RAM $E6B4)
PORT_MKT = FDATA + 0x150A               # 50 x 5 bytes
MARKETS = FDATA + 0x1864                # 8 x 88 bytes
GOODS_PTR = FDATA + 0x1B49              # 26 x u16 (fdata-relative)
PORT_NAMES = FDATA + 0x0FD8             # 52 x 19 bytes
NPORTS, NMARKETS, NGOODS = 50, 8, 26
def decode(d):
    u16 = lambda o: struct.unpack('<H', d[o:o+2])[0]
    goods = []
    for i in range(NGOODS):
        p = FDATA + u16(GOODS_PTR + 2*i)
        goods.append(d[p:p+20].split(b'\0')[0].decode('latin1'))
    ports = []
    for i in range(NPORTS):
        nm = d[PORT_NAMES + 19*i: PORT_NAMES + 19*i + 19]
        e = PORT_ECON + 14*i; m = PORT_MKT + 5*i
        ports.append({
            'id': i, 'name': nm.split(b'\0')[0].decode('latin1'), 'coord': list(nm[15:19]),
            'econ_worth': u16(e), 'econ_invest': u16(e+2), 'ind_worth': u16(e+4), 'ind_invest': u16(e+6),
            'support_pt': d[e+8], 'support_es': d[e+9], 'support_tr': d[e+10], 'price_index': d[e+11],
            'field12': u16(e+12),
            'market': d[m], 'mkt_b1': d[m+1], 'mkt_b2': d[m+2], 'mkt_b3': d[m+3], 'mkt_b4': d[m+4]})
    markets = []
    for k in range(NMARKETS):
        o = MARKETS + 88*k
        markets.append({'id': k, 'req': list(d[o:o+9]), 'goods': list(d[o+9:o+18]),
                        'buy': [u16(o+18+2*j) for j in range(9)],
                        'sell': [u16(o+36+2*j) for j in range(26)]})
    return {'goods': goods, 'ports': ports, 'markets': markets}
if __name__ == '__main__':
    d = load(sys.argv[1] if len(sys.argv) > 1 else 'us')
    t = decode(d)
    json.dump(t, open('../editor/reference_us.json', 'w'), indent=1)
    for p in t['ports'][:4]: print(p)
    print(t['markets'][0])
