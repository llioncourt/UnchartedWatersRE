# Uncharted Waters RE

Engenharia reversa de **Uncharted Waters** (Koei), com foco na versão SNES US. O código remonta byte a byte idêntico à ROM original.

Nenhuma ROM está neste repositório. Você precisa da sua própria `Uncharted Waters (USA).sfc` (SHA-1 `08aa3634b5cf3b912b1afc74d6ef6183e8c65299`).

## Remontar a ROM

Requisitos: Python 3 e cc65 (`ca65`, `ld65`).

```
python3 build.py "Uncharted Waters (USA).sfc"
```

Saída em `build/uw.sfc`. Na primeira execução, os dados que ainda não viraram fonte (gráficos, som, tabelas do jogo) são copiados da sua ROM para `assets/`.

## Estrutura

| Pasta | Conteúdo |
| --- | --- |
| `src/bank00.s` | motor nativo 65816: VM do bytecode, syscalls, NMI/IRQ, sistema de arquivos |
| `src/root.s` | imagem residente (bytecode Koei + rotinas nativas), roda em `$7E:2000` |
| `src/ovl/` | os 34 overlays de código (mercado, palácio, taverna, batalha...) |
| `include/kvm.inc` | macros do bytecode Koei, uma por forma de instrução |
| `tools_snes/` | rastreador, gerador de fonte, decodificadores de tabelas |
| `tools/`, `tools_md/` | ferramentas das versões NES e Mega Drive |
| `docs/NOTES.md` | mapa da ROM, motor, RAM conhecida |
| `docs/GAME_RULES.md` | regras do jogo tiradas do código |
| `editor/` | editor de economia (HTML) |
| `guide/`, `emu_snes/` | rotas de comércio e simulação de preços no emulador |

## Estado

- Código: completo e remontável.
- Nomes: handlers da VM e syscalls nomeados; o resto ainda por endereço.
- Dados: arquivos do jogo identificados; gráficos e som em classificação.
