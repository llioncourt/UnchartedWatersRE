"""Write out/rom_map.json: which file ranges are assembled from source and which are assets."""
import os, json, hashlib, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import trace as TR
ROM = TR.ROM
ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
mods = [{'name': 'bank00', 'src': 'src/bank00.s', 'off': 0, 'size': 0x8000, 'run': 0x8000}]
assets = []
for name, off, size in TR.DIR:
    if name == 'root':
        mods.append({'name': 'root', 'src': 'src/root.s', 'off': off, 'size': size, 'run': 0x2000})
    elif name in TR.SEGS:
        s = TR.SEGS[name]
        mods.append({'name': name, 'src': f'src/ovl/{name}.s', 'off': off, 'size': size, 'run': s.start})
    else:
        assets.append({'name': name, 'off': off, 'size': size, 'kind': 'data file'})
end = max(m['off'] + m['size'] for m in mods + assets)
b = end // 0x8000
assets.append({'name': f'bank{b:02X}_tail', 'off': end, 'size': (b + 1) * 0x8000 - end, 'kind': 'unclassified'})
for b in range(b + 1, len(ROM) // 0x8000):
    assets.append({'name': f'bank{b:02X}', 'off': b * 0x8000, 'size': 0x8000, 'kind': 'unclassified'})
m = {'rom': 'Uncharted Waters (USA).sfc', 'sha1': hashlib.sha1(ROM).hexdigest(), 'size': len(ROM), 'modules': mods, 'assets': assets}
json.dump(m, open(os.path.join(ROOT, 'out', 'rom_map.json'), 'w'), indent=1)
print(len(mods), 'modules,', len(assets), 'assets, sha1', m['sha1'])
