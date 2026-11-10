'use strict';
// Carrega o bloco <script id="uw-core"> direto do HTML entregue, para que os
// testes exercitem exatamente o código que roda no navegador.
const fs = require('fs');
const path = require('path');
const vm = require('vm');

const HTML_PATH = path.join(__dirname, '..', 'uw_snes_economy_editor.html');

function extractCore(html) {
  const m = html.match(/<script id="uw-core">([\s\S]*?)<\/script>/);
  if (!m) throw new Error('bloco <script id="uw-core"> não encontrado em ' + HTML_PATH);
  return m[1];
}

function loadCore() {
  const html = fs.readFileSync(HTML_PATH, 'utf8');
  const code = extractCore(html);
  // runInThisContext: mesmo realm do teste, então deepStrictEqual compara
  // objetos com os mesmos protótipos.
  const factory = vm.runInThisContext('(function () {\n' + code + '\nreturn UWCore;\n})', {
    filename: HTML_PATH + '#uw-core'
  });
  return factory();
}

module.exports = { HTML_PATH, loadCore, extractCore };
