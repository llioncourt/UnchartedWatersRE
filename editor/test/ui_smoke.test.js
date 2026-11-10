'use strict';
// Testes de fumaça da interface no Chromium (Playwright), abrindo o HTML entregue via file://.
//  1) página local: abrir, editar, exportar .sfc e .json direto, desfazer (diálogo na página), importar.
//  2) dentro do Claude (window.claude.use simulado): ROM sai em .zip via downloads.save, JSON em .json,
//     e as recusas (declined, rate_limited, outras) mostram a mensagem certa.
// Rodar:  node --test /home/claude/uncharted-waters/editor/test/ui_smoke.test.js
// Pulado se o Playwright não estiver disponível.
const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');
const { HTML_PATH, loadCore } = require('./load_core');
const { pyZipInfo } = require('./zip_check');

const ROM_PATH = '/home/claude/uncharted-waters/ports/snes_us/rom/Uncharted Waters (USA).sfc';
const OUT = path.join(__dirname, 'out');
const TMP = path.join(OUT, 'tmp');

function findPlaywright() {
  const candidates = ['playwright', '/opt/node22/lib/node_modules/playwright', '/opt/npm-tools/node_modules/playwright'];
  for (const c of candidates) {
    try { return require(c); } catch (e) { /* tenta o próximo */ }
  }
  return null;
}

const pw = findPlaywright();
const SKIP = !pw && 'playwright indisponível';

function u16(b, o) { return b[o] | (b[o + 1] << 8); }
function sha256(b) { return crypto.createHash('sha256').update(b).digest('hex'); }

async function withBrowser(fn) {
  fs.mkdirSync(TMP, { recursive: true });
  process.env.TMPDIR = TMP;      // perfis e downloads temporários ficam dentro de editor/test/out
  const browser = await pw.chromium.launch({ downloadsPath: path.join(OUT, 'downloads') });
  try {
    await fn(browser);
  } finally {
    await browser.close();
    // Mantém só os screenshots: apaga temporários, downloads (cópia da ROM) e o JSON.
    fs.rmSync(TMP, { recursive: true, force: true });
    fs.rmSync(path.join(OUT, 'downloads'), { recursive: true, force: true });
    fs.rmSync(path.join(OUT, 'exportado.json'), { force: true });
  }
}

function watch(page, errors, tag) {
  page.on('pageerror', (e) => errors.push(tag + ' pageerror: ' + e.message));
  page.on('console', (m) => { if (m.type() === 'error') errors.push(tag + ' console: ' + m.text()); });
  page.on('dialog', (d) => { errors.push(tag + ' diálogo nativo: ' + d.type()); d.dismiss(); });
}

async function setValue(page, field, value) {
  await page.fill('[data-field="' + field + '"]', value);
  await page.press('[data-field="' + field + '"]', 'Tab');
}

test('interface (arquivo local): abrir, editar, exportar direto, desfazer, importar', { skip: SKIP }, async () => {
  const errors = [];
  await withBrowser(async (browser) => {
    const context = await browser.newContext({ acceptDownloads: true, viewport: { width: 1366, height: 900 } });
    const page = await context.newPage();
    watch(page, errors, 'desktop');
    await page.goto('file://' + HTML_PATH);
    await page.screenshot({ path: path.join(OUT, 'desktop_0_inicio.png'), fullPage: true });

    // Arquivo errado: mensagem clara, editor continua fechado.
    await page.setInputFiles('#rom-input', { name: 'ruim.sfc', mimeType: 'application/octet-stream', buffer: Buffer.alloc(1000) });
    await page.waitForSelector('#load-error:not([hidden])');
    assert.match(await page.textContent('#load-error'), /Tamanho inesperado/);
    assert.equal(await page.isHidden('#editor'), true);

    // ROM certa.
    await page.setInputFiles('#rom-input', ROM_PATH);
    await page.waitForSelector('#editor:not([hidden])');
    assert.equal(await page.locator('#panel-portos tbody tr').count(), 50);
    assert.match(await page.textContent('#status'), /Checksum da ROM aberta válido \(0xA84F\)/);
    assert.match(await page.textContent('#status'), /Nenhuma alteração/);
    assert.match(await page.textContent('#export-help'), /Dentro do Claude, a ROM vem num \.zip: extraia o \.sfc/);
    await page.screenshot({ path: path.join(OUT, 'desktop_1_portos.png') });

    // Portos: requisito da especial de Lisbon para 20 (20 x 50 = 1000 > 800): a dica avisa.
    await setValue(page, 'ports.0.mkt_b2', '20');
    assert.match(await page.textContent('[data-hint="ports.0.mkt_b2"]'), /não aparece/);
    assert.equal(await page.textContent('#badge-portos'), '1');
    // Valor fora do limite é recusado e o anterior volta.
    await setValue(page, 'ports.0.support_pt', '300');
    assert.equal(await page.inputValue('[data-field="ports.0.support_pt"]'), '100');
    await page.waitForSelector('.toast.erro');
    await setValue(page, 'ports.0.mkt_b2', '1');
    assert.equal(await page.textContent('#badge-portos'), '');

    // Mercados: preço de compra da vaga 0 do mercado 0 para 30.
    await page.click('#tab-mercados');
    const buy = '[data-field="markets.0.buy.0"]';
    assert.equal(await page.inputValue(buy), '42');
    await setValue(page, 'markets.0.buy.0', '30');
    assert.ok(await page.locator(buy).evaluate((n) => n.classList.contains('changed')));
    assert.equal((await page.textContent('[data-was="markets.0.buy.0"]')).trim(), 'era 42');
    assert.equal(await page.textContent('#badge-mercados'), '1');
    assert.match(await page.textContent('#status'), /1 alteração/);
    await page.screenshot({ path: path.join(OUT, 'desktop_2_mercados.png'), fullPage: true });

    // Exportar ROM: sem window.claude, baixa o .sfc direto.
    let dl = page.waitForEvent('download');
    await page.click('#btn-export-rom');
    let d = await dl;
    assert.equal(d.suggestedFilename(), 'Uncharted Waters (USA) [economia].sfc');
    const romOut = fs.readFileSync(await d.path());
    const romIn = fs.readFileSync(ROM_PATH);
    assert.equal(romOut.length, romIn.length);
    const allowed = new Set([0x120AC, 0x120AD, 0x7FDC, 0x7FDD, 0x7FDE, 0x7FDF]);
    for (let i = 0; i < romIn.length; i++) if (romIn[i] !== romOut[i]) assert.ok(allowed.has(i), 'byte inesperado ' + i.toString(16));
    assert.equal(u16(romOut, 0x120AC), 30);
    assert.equal(u16(romOut, 0x7FDE), 0xA843);
    assert.equal(u16(romOut, 0x7FDC), 0xA843 ^ 0xFFFF);
    await page.waitForFunction(() => document.querySelector('#btn-export-rom').textContent === 'Exportar ROM');

    // Exportar JSON: direto também.
    dl = page.waitForEvent('download');
    await page.click('#btn-export-json');
    d = await dl;
    assert.equal(d.suggestedFilename(), 'Uncharted Waters (USA) [economia].json');
    const jsonPath = path.join(OUT, 'exportado.json');
    fs.copyFileSync(await d.path(), jsonPath);
    assert.equal(JSON.parse(fs.readFileSync(jsonPath, 'utf8')).markets[0].buy[0], 30);

    // Desfazer tudo: diálogo na página. Cancelar mantém; confirmar desfaz.
    await page.click('#btn-undo-all');
    await page.waitForSelector('#modal:not([hidden])');
    assert.match(await page.textContent('#modal-text'), /Desfazer 1 alteração/);
    await page.screenshot({ path: path.join(OUT, 'desktop_4_dialogo.png') });
    await page.click('#modal-cancel');
    assert.equal(await page.isHidden('#modal'), true);
    assert.equal(await page.inputValue(buy), '30');
    await page.click('#btn-undo-all');
    await page.waitForSelector('#modal:not([hidden])');
    await page.keyboard.press('Escape');
    assert.equal(await page.inputValue(buy), '30');
    await page.click('#btn-undo-all');
    await page.click('#modal-ok');
    await page.waitForFunction(() => document.querySelector('#badge-mercados').textContent === '');
    assert.equal(await page.inputValue(buy), '42');

    // Importar o JSON.
    await page.setInputFiles('#json-input', jsonPath);
    await page.waitForFunction(() => document.querySelector('#badge-mercados').textContent === '1');
    assert.equal(await page.inputValue(buy), '30');

    // Abrir outra ROM com alterações não exportadas pede confirmação na página.
    // (Logo após importar, o estado está salvo no próprio JSON; por isso uma edição nova antes.)
    await setValue(page, 'markets.0.buy.1', '37');
    await page.setInputFiles('#rom-input', ROM_PATH);
    await page.waitForSelector('#modal:not([hidden])');
    assert.match(await page.textContent('#modal-text'), /alterações não exportadas/);
    await page.click('#modal-cancel');
    assert.equal(await page.inputValue(buy), '30');

    // Prévia: Lisbon vende Olive Oil e Sugar; paga 13 por Sugar (especial do porto), não 45.
    await page.click('#tab-previa');
    const vende = await page.textContent('#panel-previa .two-col');
    assert.match(vende, /Olive Oil/);
    const cells = (sel) => page.$eval(sel, (tr) => Array.from(tr.cells).map((c) => c.textContent.trim()));
    const sugarRow = await cells('#panel-previa tr[data-good="7"]');
    assert.deepEqual(sugarRow, ['Sugarespecial do porto: metade do preço de compra + 1', '25', '13']);
    assert.match(await page.textContent('#panel-previa'), /Exceção: quando o porto compra a própria especial/);
    assert.equal(await page.locator('#panel-previa tr.own-special').count(), 1);
    assert.equal(await page.locator('#panel-previa table.profit tbody tr').count(), 26);
    await page.screenshot({ path: path.join(OUT, 'desktop_3_previa.png'), fullPage: true });
    // Pisa paga 146 por Artwork.
    await page.selectOption('#preview-port', '5');
    assert.deepEqual((await cells('#panel-previa tr[data-good="24"]')).slice(1), ['280', '146']);
    await page.selectOption('#profit-sort', 'lucro');
    await page.click('#panel-previa table.profit tbody tr:first-child [data-preview-port]');
    assert.notEqual(await page.inputValue('#preview-port'), '');

    // Nenhum travessão no texto visível de nenhuma aba.
    for (const t of ['portos', 'mercados', 'previa']) {
      await page.click('#tab-' + t);
      const txt = await page.evaluate(() => document.body.innerText + Array.from(document.querySelectorAll('[title]')).map((n) => n.title).join(' '));
      assert.ok(!/[\u2013\u2014]/.test(txt), 'travessão na aba ' + t);
    }

    // Celular.
    const mobile = await browser.newContext({ viewport: { width: 390, height: 844 }, isMobile: true, hasTouch: true, deviceScaleFactor: 2 });
    const mp = await mobile.newPage();
    watch(mp, errors, 'celular');
    await mp.goto('file://' + HTML_PATH);
    await mp.screenshot({ path: path.join(OUT, 'mobile_0_inicio.png') });
    await mp.setInputFiles('#rom-input', ROM_PATH);
    await mp.waitForSelector('#editor:not([hidden])');
    const overflow = await mp.evaluate(() => document.documentElement.scrollWidth - window.innerWidth);
    assert.ok(overflow <= 1, 'página mais larga que a tela no celular: ' + overflow + 'px');
    await mp.screenshot({ path: path.join(OUT, 'mobile_1_portos.png') });
    await mp.click('#tab-mercados');
    await mp.screenshot({ path: path.join(OUT, 'mobile_2_mercados.png'), fullPage: true });
    await mp.click('#tab-previa');
    await mp.screenshot({ path: path.join(OUT, 'mobile_3_previa.png'), fullPage: true });
    const overflow2 = await mp.evaluate(() => document.documentElement.scrollWidth - window.innerWidth);
    assert.ok(overflow2 <= 1, 'prévia mais larga que a tela no celular: ' + overflow2 + 'px');
    await mobile.close();
    await context.close();
  });
  assert.deepEqual(errors, []);
});

// window.claude simulado: use('downloads') devolve { save } que guarda o que recebeu.
// window.__mode: 'ok' | código de erro; window.__useDelay: ms até use() responder; window.__useNull: use() responde null.
const FAKE_CLAUDE = `
window.__useCalls = 0; window.__saves = []; window.__mode = 'ok'; window.__useDelay = 0; window.__useNull = false;
window.claude = {
  use: function (name) {
    window.__useCalls++;
    return new Promise(function (resolve) {
      setTimeout(function () {
        if (window.__useNull || name !== 'downloads') { resolve(null); return; }
        resolve({
          save: async function (opts) {
            var buf = new Uint8Array(await opts.data.arrayBuffer());
            var s = '';
            for (var i = 0; i < buf.length; i += 0x8000) s += String.fromCharCode.apply(null, buf.subarray(i, i + 0x8000));
            window.__saves.push({ filename: opts.filename, type: opts.data.type, isBlob: opts.data instanceof Blob, b64: btoa(s), mode: window.__mode });
            if (window.__mode !== 'ok') { var e = new Error(window.__mode); e.code = window.__mode; throw e; }
          }
        });
      }, window.__useDelay);
    });
  }
};`;

test('interface (dentro do Claude): downloads.save recebe .zip da ROM e .json; recusas mostram aviso', { skip: SKIP }, async () => {
  const errors = [];
  const C = loadCore();
  await withBrowser(async (browser) => {
    const context = await browser.newContext({ acceptDownloads: true, viewport: { width: 1366, height: 900 } });
    await context.addInitScript(FAKE_CLAUDE);
    const page = await context.newPage();
    watch(page, errors, 'claude');
    await page.goto('file://' + HTML_PATH);
    await page.setInputFiles('#rom-input', ROM_PATH);
    await page.waitForSelector('#editor:not([hidden])');
    assert.equal(await page.evaluate(() => window.__useCalls), 0, 'claude.use chamado antes de qualquer clique');

    await page.click('#tab-mercados');
    await setValue(page, 'markets.0.buy.0', '30');

    // ROM: botão em "Preparando download..." enquanto use() não responde; depois .zip via save.
    await page.evaluate(() => { window.__useDelay = 700; });
    await page.click('#btn-export-rom');
    assert.equal(await page.textContent('#btn-export-rom'), 'Preparando download...');
    assert.equal(await page.isDisabled('#btn-export-rom'), true);
    await page.waitForFunction(() => window.__saves.length === 1);
    await page.waitForFunction(() => document.querySelector('#btn-export-rom').textContent === 'Exportar ROM');
    await page.evaluate(() => { window.__useDelay = 0; });
    const romSave = await page.evaluate(() => window.__saves[0]);
    assert.equal(romSave.filename, 'Uncharted Waters (USA) [economia].zip');
    assert.equal(romSave.isBlob, true);
    assert.equal(romSave.type, 'application/zip');
    const zip = Buffer.from(romSave.b64, 'base64');
    const info = pyZipInfo(zip);
    assert.equal(info.testzip, null);
    assert.equal(info.entries.length, 1);
    assert.equal(info.entries[0].name, 'Uncharted Waters (USA) [economia].sfc');
    assert.equal(info.entries[0].compress_type, 0);
    // Os bytes dentro do .zip são exatamente a ROM exportada com a mesma edição.
    const r = C.openRom(fs.readFileSync(ROM_PATH));
    const st = C.clone(r.state); st.markets[0].buy[0] = 30;
    assert.equal(info.entries[0].sha256, sha256(C.exportRom(r.file, 0, st, r.state)));
    await page.waitForSelector('.toast:has-text("extraia o .sfc")');

    // JSON: .json via save.
    await page.click('#btn-export-json');
    await page.waitForFunction(() => window.__saves.length === 2);
    const jsonSave = await page.evaluate(() => window.__saves[1]);
    assert.equal(jsonSave.filename, 'Uncharted Waters (USA) [economia].json');
    assert.equal(jsonSave.type, 'application/json');
    assert.equal(JSON.parse(Buffer.from(jsonSave.b64, 'base64').toString('utf8')).markets[0].buy[0], 30);

    // Recusas.
    const cases = [
      ['declined', 'Download cancelado.'],
      ['rate_limited', 'Já existe uma confirmação aberta; tente de novo em instantes.'],
      ['host_error', 'Download indisponível nesta visualização.']
    ];
    for (const [mode, msg] of cases) {
      await page.evaluate((m) => { window.__mode = m; document.getElementById('toasts').textContent = ''; }, mode);
      await page.click('#btn-export-rom');
      await page.waitForSelector('.toast:has-text("' + msg + '")');
      await page.waitForFunction(() => !document.querySelector('#btn-export-rom').disabled);
    }
    // Cancelamento no JSON: nota discreta, não erro.
    await page.evaluate(() => { window.__mode = 'declined'; document.getElementById('toasts').textContent = ''; });
    await page.click('#btn-export-json');
    await page.waitForSelector('.toast:has-text("Download cancelado.")');
    assert.equal(await page.locator('.toast.erro').count(), 0, 'cancelamento não deve aparecer como erro');

    // use() respondendo null (sem host): cai no download direto do .sfc.
    await page.evaluate(() => { window.__mode = 'ok'; window.__useNull = true; });
    const dl = page.waitForEvent('download');
    await page.click('#btn-export-rom');
    const d = await dl;
    assert.equal(d.suggestedFilename(), 'Uncharted Waters (USA) [economia].sfc');
    assert.equal(fs.statSync(await d.path()).size, 1048576);
    await context.close();
  });
  assert.deepEqual(errors, []);
});
