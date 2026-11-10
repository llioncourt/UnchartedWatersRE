'use strict';
// Confere um .zip com o zipfile do Python (leitor independente do código do editor).
const { spawnSync } = require('child_process');

const PY = `
import io, sys, json, zipfile, hashlib
raw = sys.stdin.buffer.read()
z = zipfile.ZipFile(io.BytesIO(raw))
out = {"testzip": z.testzip(), "entries": []}
for i in z.infolist():
    data = z.read(i)
    out["entries"].append({
        "name": i.filename, "compress_type": i.compress_type, "file_size": i.file_size,
        "compress_size": i.compress_size, "crc": i.CRC, "flag_bits": i.flag_bits,
        "date_time": list(i.date_time), "sha256": hashlib.sha256(data).hexdigest()})
print(json.dumps(out))
`;

function pyZipInfo(bytes) {
  const r = spawnSync('python3', ['-I', '-c', PY], { input: Buffer.from(bytes), maxBuffer: 1 << 24 });
  if (r.status !== 0) throw new Error('zipfile do Python recusou o arquivo: ' + r.stderr.toString());
  return JSON.parse(r.stdout.toString());
}

module.exports = { pyZipInfo };
