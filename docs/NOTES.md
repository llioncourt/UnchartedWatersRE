# Uncharted Waters (SNES US) — notas de engenharia reversa

ROM: `Uncharted Waters (USA).sfc`, 1 MB LoROM, SHA-1 `08aa3634b5cf3b912b1afc74d6ef6183e8c65299`.

## Como remontar

```
python3 build.py "Uncharted Waters (USA).sfc"
```

Monta o código a partir de `src/` com ca65/ld65, copia os dados da sua ROM para `assets/` (nunca vai para o git) e compara byte a byte. Estado atual: **ROM IDENTICAL**.

Para regerar a fonte a partir da ROM: `cd tools_snes && python3 trace.py && python3 emit_src.py && python3 mk_map.py`.

## Mapa da ROM

| Arquivo (offset) | Conteúdo | Fonte |
| --- | --- | --- |
| `$000000-$007FFF` | Banco $00: motor nativo 65816 (VM do bytecode, 79 syscalls, NMI/IRQ, sistema de arquivos, descompressor), diretório de arquivos em `$7800`, cabeçalho em `$7FC0` | `src/bank00.s` |
| `$008000-$00F5AD` | `root`: imagem residente, copiada para `$7E:2000` | `src/root.s` |
| `$00F5AE` | `sgdata` (estado inicial: portos, frotas, personagens) | asset |
| `$010836` | `fdata` (tabelas fixas: mercados, mercadorias, nomes, navios) | asset |
| `$01400E` | `cbmap0` (retratos) | asset |
| `$0228F4-$04DB7B` | 34 overlays + `kdata` | `src/ovl/*.s` |
| `$04DB7C-$0FFFFF` | gráficos (LZ e tiles crus), mapa-múndi, som do APU, preenchimento; mapa byte a byte em `docs/ASSETS.md` | assets |

Diretório: entradas de 16 bytes em `$7800` (nome[8], banco, endereço, tamanho). Offset = banco × $8000 + endereço − $8000.

## Motor (banco $00)

- Vetores: RESET `$800F`, NMI `$8361`, IRQ `$9593`. O boot salta por `JML [$809C]` para `$7E:2000` (root).
- Tabela de saltos em `$00:8000`: `$8000` → `vm_enter` ($A0FD), `$8003` → `syscall_gate` ($A0D9).
- VM: busca em `$A141`; tabela de opcodes em `$A797` (256 words), prefixo `B7` em `$A9AF`. Handlers entram com M=0, X=0.
- Syscalls: `$8DDD` despacha por `$52` na tabela `$99F0` (79 entradas). Argumentos em `$54, $56, ...`.
- Prólogo de função bytecode: `JSR $21BA` (que faz `JSL $008000`) + palavra com −tamanho do frame.
- Chamada de syscall no bytecode: empilha args, empilha o número, `CALL+ $21BE, n`.
- Rotina RAM em `$006C`: `MVN` automodificado + `RTS` (montado no boot).
- `00:9ADD BEQ $9B2E` chega com M=1 num caminho morto (nome de arquivo > 8 letras); decodificado como M=0.

Syscalls de recurso: 11 e 13 (DMA de ROM para VRAM; args banco/endereço), 55, 65 (sobe som para o APU via `$2140`), 76 (descompressor, saída em `$7F`).

## Overlays

Camadas carregadas por cima umas das outras:

- `$9600`: initop, ibento, maituki, cminato, jouriku, scom, sensou, senmain, uarugo, ucom, ending, uminato
- `$B000`: hantei, mdisp1, uminato2, um_sub, oukyu, koueki, sakaba, zousen (senfe em `$A500`)
- `$B800`: s_* (taverna, filhas de sakaba)
- `$D000`: z_tyuuko, z_sinzou (filhas de zousen)

Overlays de `$B000` chamam funções do overlay de `$9600` que estiver carregado (em geral `uminato`).

## RAM conhecida ($7E)

| Endereço | Uso |
| --- | --- |
| `$DF05 + 51×(n−1)` | capitão/almirante da frota n (+4 missão, +5 destino, +6 dias no porto, +7 ponteiro de rota) |
| `$E444` | nome do jogador |
| `$E564 + 16×n` | frota n (0 = jogador): +0..3 posição, +9 ouro, +15 flags |
| `$E56D` | ouro do jogador |
| `$E6B4 + 14×p` | porto p: +0 economia, +2 invest. econ., +4 indústria, +6 invest. ind., +8..10 apoio PT/ES/TR, +11 índice−50, +12 preço da especial |
| `$E9A6 + 24×s` | carga do navio s (+16 água, +18 comida) |
| `$EA8A-$EA8C` | data (dia em `$EA8B`, mês em `$EA8C`) |
| `$EA8F` | relações entre nações (pares) |
| `$EB92 + 7×s` | navios |
| `$EE72` | poupança no palácio |
| `$EE74` | fama (máx. 50.000) |
| `$EE76` | título (0 = sem título … 9 = Duke) |
| `$EE78 + p` | porto p: bits 0-1 dono (nação+1), bit 3 descoberto |
| `$EEBE + 4×n` | nação n (`$EEC0` hostilidade com o jogador, `$EEC1` nação rival da vez) |
| `$EF54-$EF5C` | missão do rei (porto, origem, tipo, alvo, quantidade, recompensa) |
| `$EF61` | flags da princesa (1 missão ativa, 2 resgatada, 8 sequestrada) |
| `$EF69` | porto atual |
| `$F169` | `$FF` = final |
| `$F27E/$F280/$F282/$F284` | handles: sgdata, cbmap0, fdata, kdata |

## Regras do jogo já decodificadas

Ver o guia de comércio (artifact) e o walkthrough. Resumo: preço = base × (índice) / 100; frotas rivais compram a especial (+4..6 no índice, +3 no preço base até 600) e baixam o índice da capital ao voltar (−2..3); o índice volta 0..4 pontos/mês para 100%. Fama para o rei chamar: (título+1)² × 400. Missão por título: 0 caixas, 1 carta, 2 pirata, 3 tesouro, 4 princesa.
