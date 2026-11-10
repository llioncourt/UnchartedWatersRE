'use strict';
// Testes da lógica de parse, escrita, checksum e JSON do editor.
// Rodar:  node --test /home/claude/uncharted-waters/editor/test/core.test.js
const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');
const zlib = require('zlib');
const { loadCore, HTML_PATH } = require('./load_core');
const { pyZipInfo } = require('./zip_check');

const ROM_PATH = '/home/claude/uncharted-waters/ports/snes_us/rom/Uncharted Waters (USA).sfc';
const REF_PATH = path.join(__dirname, '..', 'reference_us.json');

const C = loadCore();
const ROM = fs.readFileSync(ROM_PATH);
const ROM_SHA_BEFORE = sha256(ROM);
const REF = JSON.parse(fs.readFileSync(REF_PATH, 'utf8'));

// Offsets e checksum reimplementados aqui, direto do SPEC, sem usar o código do editor.
const SPEC = {
  CHECKSUM_BYTES: [0x7FDC, 0x7FDD, 0x7FDE, 0x7FDF],
  MARKETS: 0x10836 + 0x1864,        // 0x1209A
  PORT_ECON: 0xF5AE + 0x7B4,        // 0xFD62
  PORT_MKT: 0x10836 + 0x150A        // 0x11D40
};

function sha256(b) { return crypto.createHash('sha256').update(b).digest('hex'); }
function u16(b, o) { return b[o] | (b[o + 1] << 8); }
function specChecksum(rom) {
  let s = 0;
  for (let i = 0; i < rom.length; i++) {
    if (i === 0x7FDC || i === 0x7FDD) s += 0xFF;
    else if (i === 0x7FDE || i === 0x7FDF) s += 0x00;
    else s += rom[i];
  }
  return s & 0xFFFF;
}
function specChecksumValid(rom) {
  const c = specChecksum(rom);
  return u16(rom, 0x7FDE) === c && u16(rom, 0x7FDC) === (c ^ 0xFFFF);
}
function diffOffsets(a, b) {
  assert.equal(a.length, b.length, 'tamanhos diferentes');
  const out = [];
  for (let i = 0; i < a.length; i++) if (a[i] !== b[i]) out.push(i);
  return out;
}
function hex(v) { return '0x' + v.toString(16).toUpperCase(); }
function clone(o) { return JSON.parse(JSON.stringify(o)); }

test('pré-condição: ROM original com checksum 0xA84F / complemento 0x57B0', () => {
  assert.equal(ROM.length, 1048576);
  assert.equal(u16(ROM, 0x7FDE), 0xA84F);
  assert.equal(u16(ROM, 0x7FDC), 0x57B0);
  assert.equal(specChecksum(ROM), 0xA84F);
  assert.equal(C.computeChecksum(new Uint8Array(ROM)), 0xA84F);
});

test('a) parse bate 100% com reference_us.json', () => {
  const r = C.openRom(ROM);
  assert.equal(r.headerSize, 0);
  assert.equal(r.checksum.valid, true);
  assert.deepStrictEqual(r.state, REF);
  // Também idêntico como texto (mesma ordem de chaves que o decoder Python).
  assert.equal(JSON.stringify(r.state), JSON.stringify(REF));
  assert.equal(r.state.ports.length, 50);
  assert.equal(r.state.markets.length, 8);
  assert.equal(r.state.goods.length, 26);
});

test('b) exportar sem alterações gera arquivo idêntico byte a byte', () => {
  const r = C.openRom(ROM);
  const out = C.exportRom(r.file, r.headerSize, r.state, r.state);
  assert.equal(out.length, ROM.length);
  assert.equal(Buffer.compare(Buffer.from(out), ROM), 0);
  assert.equal(sha256(out), ROM_SHA_BEFORE);
});

test('c) preço de compra da vaga 0 do mercado 0 = 30: só os bytes esperados + checksum mudam, checksum válido', () => {
  const r = C.openRom(ROM);
  const st = clone(r.state);
  assert.equal(st.markets[0].buy[0], 42);
  st.markets[0].buy[0] = 30;
  const out = C.exportRom(r.file, r.headerSize, st, r.state);

  const target = SPEC.MARKETS + 18;        // vaga 0, u16 LE em [18..19]
  assert.equal(target, 0x120AC);
  const allowed = new Set([target, target + 1, ...SPEC.CHECKSUM_BYTES]);
  const diffs = diffOffsets(ROM, out);
  for (const d of diffs) assert.ok(allowed.has(d), 'byte inesperado alterado em ' + hex(d));
  assert.ok(diffs.includes(target), 'o byte do preço não mudou');
  assert.equal(u16(out, target), 30);

  // Checksum pelo algoritmo do SPEC, implementado de forma independente.
  assert.ok(specChecksumValid(out), 'checksum inválido');
  assert.equal(specChecksum(out), (0xA84F - 12) & 0xFFFF);   // 42 -> 30 tira 12 da soma
  assert.equal(C.verifyChecksum(out), true);

  // Reabrir o arquivo exportado: só aquele campo difere da referência.
  const expected = clone(REF);
  expected.markets[0].buy[0] = 30;
  assert.deepStrictEqual(C.openRom(out).state, expected);

  console.log('   bytes alterados: ' + diffs.map((d) => hex(d) + ' ' + hex(ROM[d]) + '->' + hex(out[d])).join(', '));
  console.log('   checksum novo: ' + hex(u16(out, 0x7FDE)) + ', complemento ' + hex(u16(out, 0x7FDC)));
});

test('d) importar o JSON exportado reproduz o mesmo estado', () => {
  const r = C.openRom(ROM);
  const st = clone(r.state);
  st.markets[0].buy[0] = 30;
  st.markets[3].goods[8] = 0;
  st.markets[7].sell[25] = 65535;
  st.markets[5].req[2] = 9;
  st.ports[0].econ_worth = 1234;
  st.ports[2].field12 = 300;
  st.ports[5].mkt_b1 = 255;
  st.ports[13].market = 7;
  st.ports[20].mkt_b3 = 42;
  st.ports[49].mkt_b4 = 3;
  st.ports[49].support_tr = 255;

  const text = C.exportJSON(st);
  const back = C.importJSON(text, r.state, r.state);
  assert.deepStrictEqual(back, st);
  assert.equal(C.diff(r.state, back).length, 11);

  // A ROM gerada a partir do estado importado é a mesma.
  const a = C.exportRom(r.file, r.headerSize, st, r.state);
  const b = C.exportRom(r.file, r.headerSize, back, r.state);
  assert.equal(Buffer.compare(Buffer.from(a), Buffer.from(b)), 0);

  // E exportar/importar de novo é estável (texto idêntico).
  assert.equal(C.exportJSON(back), text);

  // O JSON do estado original reimportado gera a ROM original.
  const orig = C.importJSON(C.exportJSON(r.state), r.state, r.state);
  assert.equal(Buffer.compare(Buffer.from(C.exportRom(r.file, 0, orig, r.state)), ROM), 0);
});

test('extra: reference_us.json do decoder Python também é aceito como JSON de importação', () => {
  const r = C.openRom(ROM);
  const st = C.importJSON(fs.readFileSync(REF_PATH, 'utf8'), r.state, r.state);
  assert.deepStrictEqual(st, REF);
});

test('extra: header de copiador de 512 bytes é removido ao ler e mantido ao salvar', () => {
  const header = Buffer.alloc(512);
  for (let i = 0; i < 512; i++) header[i] = (i * 7 + 3) & 0xFF;
  const file = Buffer.concat([header, ROM]);
  const r = C.openRom(file);
  assert.equal(r.headerSize, 512);
  assert.deepStrictEqual(r.state, REF);

  const same = C.exportRom(r.file, r.headerSize, r.state, r.state);
  assert.equal(Buffer.compare(Buffer.from(same), file), 0);

  const st = clone(r.state);
  st.ports[0].econ_worth = 0xBEEF;        // muda os dois bytes do u16
  const out = C.exportRom(r.file, r.headerSize, st, r.state);
  assert.equal(out.length, file.length);
  assert.equal(Buffer.compare(Buffer.from(out.subarray(0, 512)), header), 0, 'header alterado');
  const romOut = out.subarray(512);
  const diffs = diffOffsets(ROM, romOut);
  const allowed = new Set([SPEC.PORT_ECON, SPEC.PORT_ECON + 1, ...SPEC.CHECKSUM_BYTES]);
  for (const d of diffs) assert.ok(allowed.has(d), 'byte inesperado alterado em ' + hex(d));
  assert.equal(u16(romOut, SPEC.PORT_ECON), 0xBEEF);
  assert.ok(specChecksumValid(romOut));
});

test('extra: cada campo editável grava no offset do SPEC', () => {
  // Para cada campo, grava um valor diferente e confere que só o(s) byte(s)
  // daquele campo mudam (fora o checksum). 1124 campos.
  const r = C.openRom(ROM);
  const fields = C.fields();
  assert.equal(fields.length, 50 * 14 + 8 * (9 + 9 + 9 + 26));
  const portKeys = { econ_worth: [0, 2], econ_invest: [2, 2], ind_worth: [4, 2], ind_invest: [6, 2], support_pt: [8, 1], support_es: [9, 1], support_tr: [10, 1], price_index: [11, 1], field12: [12, 2] };
  const mktKeys = { market: 0, mkt_b1: 1, mkt_b2: 2, mkt_b3: 3, mkt_b4: 4 };
  const marketArr = { req: [0, 1], goods: [9, 1], buy: [18, 2], sell: [36, 2] };
  for (const f of fields) {
    const p = f.path;
    let off, size;
    if (p[0] === 'ports') {
      if (portKeys[p[2]]) { off = SPEC.PORT_ECON + 14 * p[1] + portKeys[p[2]][0]; size = portKeys[p[2]][1]; }
      else { off = SPEC.PORT_MKT + 5 * p[1] + mktKeys[p[2]]; size = 1; }
    } else {
      const a = marketArr[p[2]];
      off = SPEC.MARKETS + 88 * p[1] + a[0] + a[1] * p[3]; size = a[1];
    }
    assert.equal(f.offset, off, f.id);
    assert.equal(f.size, size, f.id);
  }
  // Amostra gravando de fato (todos os campos de um porto e de um mercado).
  for (const f of fields.filter((x) => (x.path[0] === 'ports' && x.path[1] === 7) || (x.path[0] === 'markets' && x.path[1] === 6))) {
    const st = clone(r.state);
    const old = C.getPath(st, f.path);
    let v = f.domain === 'market' ? (old + 1) % 8 : f.domain === 'goodOrNone' ? (old === 0 ? 1 : 0) : (old === 0 ? 1 : old - 1);
    C.setPath(st, f.path, v);
    const out = C.exportRom(r.file, 0, st, r.state);
    const diffs = diffOffsets(ROM, out).filter((d) => !SPEC.CHECKSUM_BYTES.includes(d));
    assert.ok(diffs.length >= 1 && diffs.every((d) => d >= f.offset && d < f.offset + f.size), f.id + ' gravou em ' + diffs.map(hex));
    assert.ok(specChecksumValid(out), f.id + ': checksum inválido');
  }
});

test('extra: ROMs erradas são recusadas com mensagem clara', () => {
  assert.throws(() => C.openRom(Buffer.alloc(1000)), /Tamanho inesperado/);
  const badTitle = Buffer.from(ROM); badTitle[0x7FC0] = 0x58;
  assert.throws(() => C.openRom(badTitle), /título interno/);
  const badPort = Buffer.from(ROM); badPort[0x10836 + 0x0FD8 + 19 * 2] = 0x58;   // Istanbul -> Xstanbul
  assert.throws(() => C.openRom(badPort), /porto 2 se chama "Xstanbul"/);
  const badChecksum = Buffer.from(ROM); badChecksum[0x7FDE] ^= 1;
  const r = C.openRom(badChecksum);     // aceita, mas avisa
  assert.equal(r.checksum.valid, false);
  assert.ok(specChecksumValid(C.exportRom(r.file, 0, r.state, r.state)), 'exportação corrige o checksum');
});

test('extra: valores inválidos são recusados na exportação e na importação', () => {
  const r = C.openRom(ROM);
  const st = clone(r.state);
  st.ports[0].support_pt = 256;
  assert.throws(() => C.exportRom(r.file, 0, st, r.state), /Porto 0 \(Lisbon\), Apoio a Portugal \(%\): fora do limite \(0 a 255\)/);
  const st2 = clone(r.state); st2.markets[0].sell[0] = 70000;
  assert.throws(() => C.exportRom(r.file, 0, st2, r.state), /preço de venda de Pepper: fora do limite \(0 a 65535\)/);

  const doc = JSON.parse(C.exportJSON(r.state));
  const j1 = clone(doc); j1.ports[3].market = 8;
  assert.throws(() => C.importJSON(JSON.stringify(j1), r.state, r.state), /tipo de mercado vai de 0 a 7/);
  const j2 = clone(doc); j2.markets[1].goods[0] = 26;
  assert.throws(() => C.importJSON(JSON.stringify(j2), r.state, r.state), /mercadoria vai de 0 a 25/);
  const j3 = clone(doc); j3.ports[1].name = 'Sevilha';
  assert.throws(() => C.importJSON(JSON.stringify(j3), r.state, r.state), /não corresponde a esta ROM/);
  const j4 = clone(doc); delete j4.markets[2].buy;
  assert.throws(() => C.importJSON(JSON.stringify(j4), r.state, r.state), /valor ausente/);
  const j5 = clone(doc); j5.formato = 'outro';
  assert.throws(() => C.importJSON(JSON.stringify(j5), r.state, r.state), /Formato de JSON desconhecido/);
  assert.throws(() => C.importJSON('{ruim', r.state, r.state), /não é um JSON válido/);
  const j6 = clone(doc); j6.ports[0].econ_worth = 1.5;
  assert.throws(() => C.importJSON(JSON.stringify(j6), r.state, r.state), /número inteiro/);
});

test('extra: prévia de preços segue a fórmula do SPEC (conferida por força bruta)', () => {
  const st = C.openRom(ROM).state;
  // Lisbon: índice 51 -> efetivo 101. Olive Oil na vaga 0 (base 42) e especial Sugar (base 25).
  const lis = C.portOffers(st, 0);
  assert.equal(lis.index, 101);
  assert.deepEqual([lis.slots[0].good, lis.slots[0].price, lis.slots[0].available], [5, 42, true]);
  assert.deepEqual([lis.special.good, lis.special.price, lis.special.available], [7, 25, true]);
  assert.equal(C.portBids(st, 0)[10].price, 1010);   // Gold: floor(101 * 1000 / 100)

  // Melhor lucro: recalculado aqui só com REF + fórmula (com a regra da especial do porto na venda).
  const eff = (p) => p.price_index + 50;
  const price = (p, base) => Math.floor(eff(p) * base / 100);
  const ownSpecial = (p, g) => p.mkt_b1 === g && p.mkt_b2 * 50 <= p.econ_worth;
  const bid = (p, g) => ownSpecial(p, g) ? Math.floor(price(p, p.field12) / 2) + 1 : price(p, REF.markets[p.market].sell[g]);
  for (let i = 0; i < 50; i++) {
    C.portBids(st, i).forEach((b) => assert.equal(b.price, bid(REF.ports[i], b.good), REF.ports[i].name + '/' + REF.goods[b.good]));
  }
  for (let g = 0; g < 26; g++) {
    let buy = null, sell = null;
    REF.ports.forEach((p, i) => {
      const m = REF.markets[p.market];
      for (let j = 0; j < 9; j++) {
        if (m.goods[j] === g && m.req[j] * 50 <= p.econ_worth) {
          const v = price(p, m.buy[j]);
          if (!buy || v < buy.price) buy = { port: i, price: v };
        }
      }
      if (p.mkt_b1 === g && p.mkt_b2 * 50 <= p.econ_worth) {
        const v = price(p, p.field12);
        if (!buy || v < buy.price) buy = { port: i, price: v };
      }
      const s = bid(p, g);
      if (!sell || s > sell.price) sell = { port: i, price: s };
    });
    const row = C.bestProfit(st)[g];
    assert.deepEqual(row.buy && { port: row.buy.port, price: row.buy.price }, buy, 'compra ' + REF.goods[g]);
    assert.deepEqual(row.sell, sell, 'venda ' + REF.goods[g]);
    assert.equal(row.profit, buy && sell ? sell.price - buy.price : null);
  }
});

test('preço: o porto que compra a própria especial paga floor(preço de compra / 2) + 1', () => {
  const st = C.openRom(ROM).state;
  // Lisbon: índice 51 (efetivo 101), especial Sugar (7), campo +12 = 25.
  assert.deepEqual([st.ports[0].name, st.ports[0].mkt_b1, st.ports[0].field12], ['Lisbon', 7, 25]);
  const sugar = C.portBids(st, 0)[7];
  assert.equal(sugar.ownSpecial, true);
  assert.equal(sugar.price, 13);                        // floor(floor(101*25/100)/2)+1
  assert.equal(sugar.normalPrice, 45);                  // o que pagaria sem a regra
  // Pisa: índice 54 (efetivo 104), especial Artwork (24), campo +12 = 280.
  assert.deepEqual([st.ports[5].name, st.ports[5].price_index, st.ports[5].mkt_b1, st.ports[5].field12], ['Pisa', 54, 24, 280]);
  assert.equal(C.portBids(st, 5)[24].price, 146);       // floor(floor(104*280/100)/2)+1
  assert.equal(C.portBids(st, 5)[24].ownSpecial, true);
  // Só a especial do porto muda: as outras mercadorias de Lisbon seguem o preço normal.
  assert.equal(C.portBids(st, 0).filter((b) => b.ownSpecial).length, 1);
  // Especial que não está à venda (Trebizond, Cotton, requer 200 > 164): preço normal.
  const treb = C.portBids(st, 13)[16];
  assert.equal(treb.ownSpecial, false);
  assert.equal(treb.price, Math.floor((st.ports[13].price_index + 50) * st.markets[st.ports[13].market].sell[16] / 100));
  // Liberar a especial (b2 = 3 -> 150 <= 164) passa a aplicar a regra.
  const st2 = clone(st); st2.ports[13].mkt_b2 = 3;
  assert.equal(C.portBids(st2, 13)[16].price, Math.floor(Math.floor((st.ports[13].price_index + 50) * st.ports[13].field12 / 100) / 2) + 1);
});

test('zip: o .zip da ROM é válido (zipfile do Python), store, uma entrada, bytes iguais à ROM exportada', () => {
  const r = C.openRom(ROM);
  const st = clone(r.state); st.markets[0].buy[0] = 30;
  const out = C.exportRom(r.file, r.headerSize, st, r.state);
  const zip = C.romZip(out, new Date(2026, 10, 10, 12, 34, 56));
  assert.equal(C.ZIP_FILE_NAME, 'Uncharted Waters (USA) [economia].zip');
  assert.equal(C.crc32(out), zlib.crc32(Buffer.from(out)));        // CRC-32 confere com o zlib do Node
  const info = pyZipInfo(zip);
  assert.equal(info.testzip, null, 'CRC inválido segundo o zipfile');
  assert.equal(info.entries.length, 1);
  const e = info.entries[0];
  assert.equal(e.name, 'Uncharted Waters (USA) [economia].sfc');
  assert.equal(e.compress_type, 0);                                 // store
  assert.equal(e.file_size, 1048576);
  assert.equal(e.compress_size, 1048576);
  assert.equal(e.crc, zlib.crc32(Buffer.from(out)));
  assert.deepEqual(e.date_time, [2026, 11, 10, 12, 34, 56]);
  assert.equal(e.sha256, sha256(out));
  assert.equal(zip.length, 30 + 46 + 2 * e.name.length + 1048576 + 22);
});

test('zip: com header de 512 bytes, a entrada do .zip mantém o header', () => {
  const header = Buffer.alloc(512, 0x5A);
  const file = Buffer.concat([header, ROM]);
  const r = C.openRom(file);
  const out = C.exportRom(r.file, r.headerSize, r.state, r.state);
  const info = pyZipInfo(C.romZip(out));
  assert.equal(info.testzip, null);
  assert.equal(info.entries.length, 1);
  assert.equal(info.entries[0].file_size, 1049088);
  assert.equal(info.entries[0].sha256, sha256(file));
});

test('extra: HTML sem alert/confirm/prompt (o frame do Claude recusa)', () => {
  const html = fs.readFileSync(HTML_PATH, 'utf8');
  const hits = html.match(/\b(alert|confirm|prompt)\s*\(/g);
  assert.equal(hits, null, 'chamadas encontradas: ' + hits);
  // E a capacidade de downloads só é pedida dentro de uma função chamada no clique.
  assert.equal((html.match(/claude\.use\(/g) || []).length, 1);
});

test('extra: HTML autocontido, sem travessão e sem recursos externos', () => {
  const html = fs.readFileSync(HTML_PATH, 'utf8');
  assert.ok(!html.includes('\u2014'), 'tem travessão (U+2014)');
  assert.ok(!html.includes('\u2013'), 'tem meia-risca (U+2013)');
  assert.ok(!/https?:\/\//i.test(html), 'tem URL externa');
  assert.ok(!/<script[^>]+src=/i.test(html), 'tem script externo');
  assert.ok(!/<link[^>]+rel=["']?stylesheet/i.test(html), 'tem CSS externo');
  assert.ok(!/@import/i.test(html), 'tem @import');
  assert.match(html, /<html lang="pt-BR">/);
});

test('a ROM original no disco continua intacta', () => {
  assert.equal(sha256(fs.readFileSync(ROM_PATH)), ROM_SHA_BEFORE);
  assert.equal(ROM_SHA_BEFORE, '794152fc6f55cb15a0b203fa645ac9fa314a293da999d8ec8b3dda080434d175');
});
