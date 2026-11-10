# Editor de Economia: Uncharted Waters (SNES, USA)

## Objetivo
Uma página HTML única e autocontida (sem dependências externas, sem CDN, funciona offline no Microsoft Edge)
que abre a ROM `Uncharted Waters (USA).sfc` do disco do usuário, mostra e edita as tabelas de economia
e exporta uma ROM corrigida (checksum recalculado). Tudo roda no navegador, nada é instalado.
Interface em português do Brasil. Não usar travessão (o caractere "—") em nenhum texto da interface.

## ROM
- SNES LoROM, 1.048.576 bytes, sem header de copiador (se o arquivo tiver 1.049.088 bytes, há header de 512 bytes: remover ao ler e manter ao salvar).
- Título interno em 0x7FC0: `UNCHARTED WATERS` (21 bytes, completado com espaços).
- Checksum: complemento (u16 LE) em 0x7FDC, checksum (u16 LE) em 0x7FDE.
  Algoritmo verificado no original: soma de todos os bytes da ROM mod 65536, com os 4 bytes em 0x7FDC..0x7FDF valendo FF FF 00 00 durante a soma.
  Complemento = checksum XOR 0xFFFF. Original: checksum 0xA84F, complemento 0x57B0.
- Só a versão americana é suportada. Validar título + nomes de porto (Lisbon, Seville, Istanbul nos 3 primeiros registros) e recusar com mensagem clara se não bater.

## Tabelas (offsets de arquivo, ROM americana)
Constantes: FDATA = 0x10836, SGDATA = 0xF5AE.

### 1. Economia inicial dos portos (estado de novo jogo)
- Offset: SGDATA + 0x7B4 = 0xFD62. 50 registros de 14 bytes (portos 0..49).
- Campos:
  - +0  u16 Economic worth (valor econômico). Também decide quais mercadorias o porto vende (ver mercados).
  - +2  u16 Economic investment
  - +4  u16 Industrial worth
  - +6  u16 Industrial investment
  - +8  u8  Apoio a Portugal (%)
  - +9  u8  Apoio à Espanha (%)
  - +10 u8  Apoio à Turquia (%)
  - +11 u8  Índice de preço base. Preço efetivo usa (índice + 50) %.
  - +12 u16 Preço base da mercadoria especial do porto (ver tabela 2, campo b1)
- Observação para a UI: são os valores de início de jogo. Saves existentes guardam a própria cópia e não mudam.

### 2. Mapa porto -> mercado
- Offset: FDATA + 0x150A = 0x11D40. 50 registros de 5 bytes.
  - b0 u8 tipo de mercado (0..7, índice da tabela 3)
  - b1 u8 mercadoria especial do porto (0..25, 0xFF = nenhuma)
  - b2 u8 requisito da especial: aparece se b2*50 <= Economic worth
  - b3 u8 desconhecido (mostrar como "b3", só leitura não, editável com aviso)
  - b4 u8 provável região (0 Mediterrâneo/Europa, 1 África Ocidental, 2 África Oriental/Índico, 3, 4, 5 Caribe...). Rotular "região (provável)".

### 3. Tipos de mercado
- Offset: FDATA + 0x1864 = 0x1209A. 8 registros de 88 bytes.
  - [0..8]   9 x u8: requisito de cada vaga de venda (a vaga aparece se req*50 <= Economic worth do porto)
  - [9..17]  9 x u8: mercadoria de cada vaga (0..25, 0xFF = vaga vazia)
  - [18..35] 9 x u16: preço base de COMPRA (o que o jogador paga) de cada vaga
  - [36..87] 26 x u16: preço base de VENDA (o que o mercado paga ao jogador) para cada uma das 26 mercadorias

### 4. Nomes (só leitura)
- Mercadorias: tabela de 26 ponteiros u16 em FDATA + 0x1B49; cada ponteiro é relativo a FDATA; string ASCII terminada em 0.
  Ordem: Pepper, Cinnamon, Nutmeg, Pimento, Cloves, Olive Oil, Grapes, Sugar, Cheese, Grain, Gold, Silver, Quartz, Coral,
  Ivory, Pearl, Cotton, Raw Silk, Wool, Cloth, Silk, Firearms, Wood, Porcelain, Artwork, Carpet.
- Portos: registros de 19 bytes em FDATA + 0x0FD8; nome ASCII terminado em 0 no início; os últimos 4 bytes (posições 15..18) são coordenadas no mapa (bloco X, bloco Y, sub X, sub Y). Ler os 50 primeiros.

## Fórmula de preço (reconstruída do overlay de comércio)
- índice efetivo = byte +11 do porto + 50
- compra (vaga j do mercado do porto) = floor(índice efetivo * buy[j] / 100), se req[j]*50 <= Economic worth e goods[j] != 0xFF
- especial = floor(índice efetivo * campo +12 / 100), se b1 != 0xFF e b2*50 <= Economic worth
- venda (mercadoria g) = floor(índice efetivo * sell[g] / 100)
- exceção na venda (correção posterior, do código de venda de carga no overlay de comércio): se a mercadoria g é a especial
  do próprio porto e está à venda nele (b1 == g e b2*50 <= Economic worth), o porto paga
  floor(floor(índice efetivo * campo +12 / 100) / 2) + 1, e não o preço de venda normal.
  Ex.: Lisbon (índice 51, especial Sugar, campo +12 = 25) paga floor(floor(101*25/100)/2)+1 = 13 por Sugar, não 45.
Observação: em jogo, o byte +11 muda com o tempo e com o comércio; a prévia mostra o preço com o valor inicial.

## Funcionalidades
1. Abrir ROM (input de arquivo + arrastar e soltar). Validar como acima.
2. Aba "Portos": tabela dos 50 portos com todos os campos da tabela 1 e da tabela 2, editáveis inline, com limites (u8 0..255, u16 0..65535). Mercado e especial como listas de seleção com nomes.
3. Aba "Mercados": os 8 tipos; para cada um, as 9 vagas (mercadoria, requisito, preço de compra) e os 26 preços de venda.
4. Aba "Prévia de preços": escolher um porto e ver o que ele vende (com preço) e quanto paga por cada mercadoria, usando a fórmula. Também uma matriz "melhor lucro": para cada mercadoria, o porto mais barato para comprar e o que paga mais.
5. Destacar campos alterados em relação ao original; botão "desfazer tudo".
6. Exportar ROM: gera o .sfc corrigido com checksum recalculado e baixa como `Uncharted Waters (USA) [economia].sfc`. Se o arquivo de entrada tinha header de 512 bytes, manter.
7. Exportar e importar JSON com todas as tabelas (para guardar edições).
8. Visual limpo, legível, responsivo (funciona também no celular). Sem bibliotecas externas.

## Testes obrigatórios (rodar antes de entregar)
- Escrever um teste em Node (o node pode não estar instalado; se faltar, instalar via apt ou usar o que houver) ou extrair a lógica de parse/escrita do HTML para um módulo JS testável que o HTML embute.
- Com a ROM em /home/claude/uncharted-waters/ports/snes_us/rom/Uncharted Waters (USA).sfc:
  a) o parse bate 100% com /home/claude/uncharted-waters/editor/reference_us.json (gerado pelo decoder Python em tools_snes/econ.py);
  b) exportar sem alterações produz arquivo idêntico byte a byte ao original;
  c) alterar um campo (ex.: preço de compra da vaga 0 do mercado 0 para 30) muda só os bytes esperados + os 4 bytes de checksum, e o checksum resultante é válido pelo algoritmo acima;
  d) import de JSON exportado reproduz o mesmo estado.
- Não modificar a ROM original nem nada fora de /home/claude/uncharted-waters/editor/.

## Entrega
- /home/claude/uncharted-waters/editor/uw_snes_economy_editor.html (arquivo único)
- /home/claude/uncharted-waters/editor/test/ (testes) e um resumo curto do que foi testado e do resultado.
