# Mapa dos recursos da ROM (SNES US), de $04DB7C a $0FFFFF

Gerado por `tools_snes/assets.py`. Cada byte da cauda da ROM está numa região abaixo.
As referências vêm de três fontes: argumentos constantes de syscalls no bytecode (`out/sysargs.json`),
fórmulas e tabelas lidas no código (citadas na coluna "origem") e syscalls registradas com o jogo rodando
(`emu_snes/syslog.py`, saída em `out/syslog.jsonl`).

## Totais

| tipo | bytes |
|---|---:|
| LZ Koei (syscall 76) | 103054 |
| mapa-múndi | 70677 |
| preenchimento | 167319 |
| som (upload para o APU) | 47757 |
| tiles crus (DMA para a VRAM) | 340874 |
| sem referência encontrada | 563 |

## Formatos

- **LZ Koei** (`tools_snes/lz.py`, rotina `$00:97F3`): um byte de flags dá 8 tokens (1 = literal, 0 = cópia);
  comprimento e distância vêm de um leitor de bits MSB-first alimentado por palavras de 16 bits intercaladas no
  mesmo fluxo. Distância até 4096, cópia de 2 a 255 bytes, fim = `0000000 1111111`. O codificador grava uma
  palavra a mais no fim de cada fluxo. Saída em `$7F:xxxx`.
- **Tiles crus**: 4bpp (32 bytes por tile) ou 2bpp (16) enviados por DMA nas syscalls 11/13/14; a 55 anima
  sprites trocando quadros de 32 bytes.
- **Som**: blocos IPL `[tamanho][endereço na ARAM][dados]`, tamanho 0 encerra e dá o ponto de entrada ($0800).
- **Mapa-múndi** (lido byte a byte por `RF_3F4F` a partir de `$0A:8000`): cabeçalho com dois offsets; 288 zonas
  (24 × 12) de 5 bytes (número do bloco + 3 bytes de atributos); 223 blocos de 3 × 3 pedaços; 1331 pedaços de
  7 × 7 células (1 byte cada). O mar inteiro tem 504 × 252 células.
- **Retratos**: 53 retratos de 30 tiles, 33 no banco `$19` e 20 no `$1A`; cada um precedido por uma palavra
  com o número do seu primeiro tile (k × 30), que o jogo não lê.

## Regiões

| início | fim | bytes | tipo | conteúdo | origem |
|---|---|---:|---|---|---|
| $04DB7C | $04FFFF | 9348 | PAD | $00 |  |
| $050000 | $050003 | 4 | MAP | world map header: block table and chunk table offsets | root:RF_54D9 |
| $050004 | $0505A3 | 1440 | MAP | world map zones: 288 records of 5 bytes (24 x 12): block number, 3 attribute bytes | root:RF_5449 |
| $0505A4 | $051551 | 4014 | MAP | world map blocks: 223 blocks of 3x3 chunk numbers (18 bytes) | root:RF_5449 |
| $051552 | $061414 | 65219 | MAP | world map chunks: 1331 chunks of 7x7 tiles (49 bytes) | root:RF_5449 |
| $061415 | $061CFF | 2283 | PAD | $00 |  |
| $061D00 | $06260A | 2315 | LZ | 5632 bytes unpacked | root:113 |
| $06260B | $06260C | 2 | LZ | end of stream (flush word) |  |
| $06260D | $062724 | 280 | LZ | 1056 bytes unpacked | root:125 |
| $062725 | $062726 | 2 | LZ | end of stream (flush word) |  |
| $062727 | $062846 | 288 | TILE | 9 tiles 4bpp to VRAM tile 0xe0 | root:138 |
| $062847 | $062866 | 32 | UNREF |  |  |
| $062867 | $062BC6 | 864 | TILE | 54 tiles 2bpp to VRAM tile 0x160 | root:145 |
| $062BC7 | $062BE6 | 32 | PAD | $FF |  |
| $062BE7 | $062CBF | 217 | PAD | $00 |  |
| $062CC0 | $067F73 | 21172 | LZ | 26880 bytes unpacked | initop:1058 |
| $067F74 | $067F74 | 1 | LZ | end of stream (flush word) |  |
| $067F75 | $067FFF | 139 | PAD | $00 |  |
| $068000 | $073A8C | 47757 | SPC | APU upload 90@0600 24@0700 2903@0800 18611@B000 209@FE00 64@0400 25824@1350 | initop:21 |
| $073A8D | $077FFF | 17779 | PAD | $00 |  |
| $078000 | $07837F | 896 | TILE | 28 tiles 4bpp to VRAM tile 0x2a0 | root:14539 |
| $078380 | $07FFFF | 31872 | PAD | $00 |  |
| $080000 | $0808FF | 2304 | TILE | 72 tiles 4bpp, set 0 of 4 | root:7892 formula |
| $080900 | $0811FF | 2304 | TILE | 72 tiles 4bpp to VRAM tile 0x77 | root:7892 formula |
| $081200 | $081AFF | 2304 | TILE | 72 tiles 4bpp to VRAM tile 0x77 | root:7892 formula |
| $081B00 | $0823FF | 2304 | TILE | 72 tiles 4bpp, set 3 of 4 | root:7892 formula |
| $082400 | $0831CE | 3535 | LZ | 5408 bytes unpacked | root:14456 |
| $0831CF | $0837AB | 1501 | LZ | 1664 bytes unpacked | root:14488 |
| $0837AC | $083803 | 88 | UNREF |  |  |
| $083804 | $083CDB | 1240 | LZ | 1664 bytes unpacked | root:14507 |
| $083CDC | $083CDD | 2 | LZ | end of stream (flush word) |  |
| $083CDE | $083D5D | 128 | TILE | sprite animation, 4 frames | jogo rodando |
| $083D5E | $083DDD | 128 | TILE | sprite animation, 4 frames | jogo rodando |
| $083DDE | $083E5D | 128 | TILE | sprite animation, 4 frames | jogo rodando |
| $083E5E | $083EDD | 128 | TILE | sprite animation, 4 frames | jogo rodando |
| $083EDE | $0840DD | 512 | TILE | sprite animation, 4 frames | root:9078 formula |
| $0840DE | $0842DD | 512 | TILE | 16 tiles 4bpp to VRAM tile 0xbf | root:9078 formula |
| $0842DE | $0844DD | 512 | TILE | 16 tiles 4bpp to VRAM tile 0xbf | root:9078 formula |
| $0844DE | $0846DD | 512 | TILE | 16 tiles 4bpp to VRAM tile 0xbf | root:9078 formula |
| $0846DE | $0848DD | 512 | TILE | 16 tiles 4bpp, frame 4 of 8 | root:9078 formula |
| $0848DE | $084ADD | 512 | TILE | 16 tiles 4bpp, frame 5 of 8 | root:9078 formula |
| $084ADE | $084CDD | 512 | TILE | 16 tiles 4bpp, frame 6 of 8 | root:9078 formula |
| $084CDE | $084EDD | 512 | TILE | sprite animation, 4 frames | root:9078 formula |
| $084EDE | $0850DD | 512 | TILE | sprite animation, 4 frames | root:9089 formula |
| $0850DE | $0852DD | 512 | TILE | 16 tiles 4bpp to VRAM tile 0xcf | root:9089 formula |
| $0852DE | $0854DD | 512 | TILE | 16 tiles 4bpp to VRAM tile 0xcf | root:9089 formula |
| $0854DE | $0856DD | 512 | TILE | 16 tiles 4bpp to VRAM tile 0xcf | root:9089 formula |
| $0856DE | $0858DD | 512 | TILE | 16 tiles 4bpp, frame 4 of 8 | root:9089 formula |
| $0858DE | $085ADD | 512 | TILE | 16 tiles 4bpp, frame 5 of 8 | root:9089 formula |
| $085ADE | $085CDD | 512 | TILE | 16 tiles 4bpp, frame 6 of 8 | root:9089 formula |
| $085CDE | $0868DD | 3072 | TILE | 96 tiles 4bpp to VRAM tile 0x220 | root:14532, root:9089 formula |
| $0868DE | $086A5D | 384 | UNREF |  |  |
| $086A5E | $086C9D | 576 | TILE | 18 tiles 4bpp to VRAM tile 0x180 | root:14552 |
| $086C9E | $086E9D | 512 | TILE | 16 tiles 4bpp to VRAM tile 0x280 | root:14546, root:14882 |
| $086E9E | $087FFF | 4450 | PAD | $00 |  |
| $088000 | $08877F | 1920 | TILE | 60 tiles 4bpp to VRAM tile 0xf0 | ending:1840 |
| $088780 | $089CDF | 5472 | TILE | 171 tiles 4bpp to VRAM tile 0x12c | mdisp1:855 table |
| $089CE0 | $08B35F | 5760 | TILE | 180 tiles 4bpp, entry 1 of MDISP1 BD16 | mdisp1:855 table |
| $08B360 | $08C81F | 5312 | TILE | 166 tiles 4bpp, entry 2 of MDISP1 BD16 | mdisp1:855 table |
| $08C820 | $08DABF | 4768 | TILE | 149 tiles 4bpp, entry 3 of MDISP1 BD16 | mdisp1:855 table |
| $08DAC0 | $08E23F | 1920 | TILE | 60 tiles 4bpp, entry 4 of MDISP1 BD16 | mdisp1:855 table |
| $08E240 | $08FFFF | 7616 | PAD | $00 |  |
| $090000 | $09381F | 14368 | TILE | 449 tiles 4bpp to VRAM tile 0x1a0 | ending:1853, uminato:341 table |
| $093820 | $096A9F | 12928 | TILE | 404 tiles 4bpp, port town set 1 of 8 | uminato:341 table |
| $096AA0 | $097FFF | 5472 | PAD | $00 |  |
| $098000 | $09BEDF | 16096 | TILE | 503 tiles 4bpp, port town set 2 of 8 | uminato:341 table |
| $09BEE0 | $09F0BF | 12768 | TILE | 399 tiles 4bpp, port town set 3 of 8 | uminato:341 table |
| $09F0C0 | $09FFFF | 3904 | PAD | $00 |  |
| $0A0000 | $0A401F | 16416 | TILE | 513 tiles 4bpp, port town set 4 of 8 | uminato:341 table |
| $0A4020 | $0A6C3F | 11296 | TILE | 353 tiles 4bpp, port town set 5 of 8 | uminato:341 table |
| $0A6C40 | $0A7FFF | 5056 | PAD | $00 |  |
| $0A8000 | $0AB33F | 13120 | TILE | 410 tiles 4bpp, port town set 6 of 8 | uminato:341 table |
| $0AB340 | $0AE99F | 13920 | TILE | 435 tiles 4bpp, port town set 7 of 8 | uminato:341 table |
| $0AE9A0 | $0AFFFF | 5728 | PAD | $00 |  |
| $0B0000 | $0B0B6C | 2925 | LZ | 6400 bytes unpacked | ending:1820 |
| $0B0B6D | $0B0F6C | 1024 | TILE | 32 tiles 4bpp to VRAM tile 0x77 | ending:1500, ending:1511 |
| $0B0F6D | $0B16FA | 1934 | LZ | 9408 bytes unpacked | zousen:39 |
| $0B16FB | $0B4CE4 | 13802 | LZ | 30048 bytes unpacked | ending:1359 |
| $0B4CE5 | $0B4CE6 | 2 | LZ | end of stream (flush word) |  |
| $0B4CE7 | $0B5C83 | 3997 | LZ | 12928 bytes unpacked | s_card:65 |
| $0B5C84 | $0B7FFF | 9084 | PAD | $00 |  |
| $0B8000 | $0B81F2 | 499 | LZ | 864 bytes unpacked | root:1190 |
| $0B81F3 | $0B81F4 | 2 | LZ | end of stream (flush word) |  |
| $0B81F5 | $0B8904 | 1808 | LZ | 3456 bytes unpacked, entry 0 of RD_8D72 | root:1332 table RD_8D72 |
| $0B8905 | $0B8906 | 2 | LZ | end of stream (flush word) |  |
| $0B8907 | $0B92B9 | 2483 | LZ | 3456 bytes unpacked, entry 7 of RD_8D72 | root:1332 table RD_8D72 |
| $0B92BA | $0B92BB | 2 | LZ | end of stream (flush word) |  |
| $0B92BC | $0B9CE5 | 2602 | LZ | 3456 bytes unpacked, entry 5 of RD_8D72 | root:1332 table RD_8D72 |
| $0B9CE6 | $0BA78C | 2727 | LZ | 3456 bytes unpacked, entry 4 of RD_8D72 | root:1332 table RD_8D72 |
| $0BA78D | $0BB092 | 2310 | LZ | 3456 bytes unpacked, entry 3 of RD_8D72 | root:1332 table RD_8D72 |
| $0BB093 | $0BB094 | 2 | LZ | end of stream (flush word) |  |
| $0BB095 | $0BB9D8 | 2372 | LZ | 3456 bytes unpacked, entry 6 of RD_8D72 | root:1332 table RD_8D72 |
| $0BB9D9 | $0BB9DA | 2 | LZ | end of stream (flush word) |  |
| $0BB9DB | $0BC328 | 2382 | LZ | 3456 bytes unpacked, entry 2 of RD_8D72 | root:1332 table RD_8D72 |
| $0BC329 | $0BC32A | 2 | LZ | end of stream (flush word) |  |
| $0BC32B | $0BD11E | 3572 | LZ | 4480 bytes unpacked, entry 1 of RD_8D72 | root:1332 table RD_8D72 |
| $0BD11F | $0BD120 | 2 | LZ | end of stream (flush word) |  |
| $0BD121 | $0BFFFF | 11999 | PAD | $00 |  |
| $0C0000 | $0C003F | 64 | TILE | 2 tiles 4bpp to VRAM tile 0x57 | root:873 |
| $0C0040 | $0C015F | 288 | TILE | 9 tiles 4bpp to VRAM tile 0x23 | root:532 formula |
| $0C0160 | $0C027F | 288 | TILE | 9 tiles 4bpp, set 2 of 7 | root:532 formula |
| $0C0280 | $0C039F | 288 | TILE | 9 tiles 4bpp, set 3 of 7 | root:532 formula |
| $0C03A0 | $0C04BF | 288 | TILE | 9 tiles 4bpp, set 4 of 7 | root:532 formula |
| $0C04C0 | $0C05DF | 288 | TILE | 9 tiles 4bpp, set 5 of 7 | root:532 formula |
| $0C05E0 | $0C06FF | 288 | TILE | 9 tiles 4bpp, set 6 of 7 | root:532 formula |
| $0C0700 | $0C081F | 288 | TILE | 9 tiles 4bpp, set 7 of 7 | root:532 formula |
| $0C0820 | $0C0B9F | 896 | TILE | 28 tiles 4bpp to VRAM tile 0x2c | root:RF_22A8 formula |
| $0C0BA0 | $0C0F1F | 896 | TILE | 28 tiles 4bpp, block 1 of 15 | root:RF_22A8 formula |
| $0C0F20 | $0C129F | 896 | TILE | 28 tiles 4bpp, block 2 of 15 | root:RF_22A8 formula |
| $0C12A0 | $0C161F | 896 | TILE | 28 tiles 4bpp, block 3 of 15 | root:RF_22A8 formula |
| $0C1620 | $0C199F | 896 | TILE | 28 tiles 4bpp, block 4 of 15 | root:RF_22A8 formula |
| $0C19A0 | $0C1D1F | 896 | TILE | 28 tiles 4bpp, block 5 of 15 | root:RF_22A8 formula |
| $0C1D20 | $0C209F | 896 | TILE | 15 tiles 4bpp to VRAM tile 0x48 | root:443 table RD_8B7A, root:RF_22A8 formula |
| $0C20A0 | $0C20DF | 64 | TILE | 28 tiles 4bpp, block 7 of 15 | root:RF_22A8 formula |
| $0C20E0 | $0C241F | 832 | TILE | 15 tiles 4bpp to VRAM tile 0x48 | root:443 table RD_8B7A |
| $0C2420 | $0C249F | 128 | TILE | 28 tiles 4bpp, block 8 of 15 | root:RF_22A8 formula |
| $0C24A0 | $0C279F | 768 | TILE | 15 tiles 4bpp, entry 9 of RD_8B7A | root:443 table RD_8B7A |
| $0C27A0 | $0C285F | 192 | TILE | 28 tiles 4bpp, block 9 of 15 | root:RF_22A8 formula |
| $0C2860 | $0C2B1F | 704 | TILE | 15 tiles 4bpp, entry 11 of RD_8B7A | root:443 table RD_8B7A |
| $0C2B20 | $0C2C1F | 256 | TILE | 28 tiles 4bpp, block 10 of 15 | root:RF_22A8 formula |
| $0C2C20 | $0C2E9F | 640 | TILE | 15 tiles 4bpp, entry 13 of RD_8B7A | root:443 table RD_8B7A |
| $0C2EA0 | $0C2FDF | 320 | TILE | 28 tiles 4bpp, block 11 of 15 | root:RF_22A8 formula |
| $0C2FE0 | $0C321F | 576 | TILE | 15 tiles 4bpp, entry 19 of RD_8B7A | root:443 table RD_8B7A |
| $0C3220 | $0C339F | 384 | TILE | 28 tiles 4bpp, block 12 of 15 | root:RF_22A8 formula |
| $0C33A0 | $0C359F | 512 | TILE | 15 tiles 4bpp, entry 22 of RD_8B7A | root:443 table RD_8B7A |
| $0C35A0 | $0C375F | 448 | TILE | 28 tiles 4bpp, block 13 of 15 | root:RF_22A8 formula |
| $0C3760 | $0C391F | 448 | TILE | 15 tiles 4bpp, entry 6 of RD_8B7A | root:443 table RD_8B7A |
| $0C3920 | $0C393F | 32 | TILE | 28 tiles 4bpp, block 14 of 15 | root:RF_22A8 formula |
| $0C3940 | $0C3C9F | 864 | TILE | 15 tiles 4bpp, entry 15 of RD_8B7A | root:443 table RD_8B7A |
| $0C3CA0 | $0C3CFF | 96 | TILE |  |  |
| $0C3D00 | $0C7FFF | 17152 | PAD | $00 |  |
| $0C8000 | $0C8001 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C8002 | $0C83C1 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0C83C2 | $0C83C3 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C83C4 | $0C8783 | 960 | TILE | 30 tiles 4bpp, portrait 1 | root:15459 formula |
| $0C8784 | $0C8785 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C8786 | $0C8B45 | 960 | TILE | 30 tiles 4bpp, portrait 2 | root:15459 formula |
| $0C8B46 | $0C8B47 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C8B48 | $0C8F07 | 960 | TILE | 30 tiles 4bpp, portrait 3 | root:15459 formula |
| $0C8F08 | $0C8F09 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C8F0A | $0C92C9 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0C92CA | $0C92CB | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C92CC | $0C968B | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0C968C | $0C968D | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C968E | $0C9A4D | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0C9A4E | $0C9A4F | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C9A50 | $0C9E0F | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0C9E10 | $0C9E11 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0C9E12 | $0CA1D1 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0CA1D2 | $0CA1D3 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CA1D4 | $0CA593 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0CA594 | $0CA595 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CA596 | $0CA955 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0CA956 | $0CA957 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CA958 | $0CAD17 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0CAD18 | $0CAD19 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CAD1A | $0CB0D9 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0CB0DA | $0CB0DB | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CB0DC | $0CB49B | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0CB49C | $0CB49D | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CB49E | $0CB85D | 960 | TILE | 30 tiles 4bpp, portrait 14 | root:15459 formula |
| $0CB85E | $0CB85F | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CB860 | $0CBC1F | 960 | TILE | 30 tiles 4bpp, portrait 15 | root:15459 formula |
| $0CBC20 | $0CBC21 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CBC22 | $0CBFE1 | 960 | TILE | 30 tiles 4bpp, portrait 16 | root:15459 formula |
| $0CBFE2 | $0CBFE3 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CBFE4 | $0CC3A3 | 960 | TILE | 30 tiles 4bpp, portrait 17 | root:15459 formula |
| $0CC3A4 | $0CC3A5 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CC3A6 | $0CC765 | 960 | TILE | 30 tiles 4bpp, portrait 18 | root:15459 formula |
| $0CC766 | $0CC767 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CC768 | $0CCB27 | 960 | TILE | 30 tiles 4bpp, portrait 19 | root:15459 formula |
| $0CCB28 | $0CCB29 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CCB2A | $0CCEE9 | 960 | TILE | 30 tiles 4bpp, portrait 20 | root:15459 formula |
| $0CCEEA | $0CCEEB | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CCEEC | $0CD2AB | 960 | TILE | 30 tiles 4bpp, portrait 21 | root:15459 formula |
| $0CD2AC | $0CD2AD | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CD2AE | $0CD66D | 960 | TILE | 30 tiles 4bpp, portrait 22 | root:15459 formula |
| $0CD66E | $0CD66F | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CD670 | $0CDA2F | 960 | TILE | 30 tiles 4bpp, portrait 23 | root:15459 formula |
| $0CDA30 | $0CDA31 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CDA32 | $0CDDF1 | 960 | TILE | 30 tiles 4bpp, portrait 24 | root:15459 formula |
| $0CDDF2 | $0CDDF3 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CDDF4 | $0CE1B3 | 960 | TILE | 30 tiles 4bpp, portrait 25 | root:15459 formula |
| $0CE1B4 | $0CE1B5 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CE1B6 | $0CE575 | 960 | TILE | 30 tiles 4bpp, portrait 26 | root:15459 formula |
| $0CE576 | $0CE577 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CE578 | $0CE937 | 960 | TILE | 30 tiles 4bpp, portrait 27 | root:15459 formula |
| $0CE938 | $0CE939 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CE93A | $0CECF9 | 960 | TILE | 30 tiles 4bpp, portrait 28 | root:15459 formula |
| $0CECFA | $0CECFB | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CECFC | $0CF0BB | 960 | TILE | 30 tiles 4bpp, portrait 29 | root:15459 formula |
| $0CF0BC | $0CF0BD | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CF0BE | $0CF47D | 960 | TILE | 30 tiles 4bpp, portrait 30 | root:15459 formula |
| $0CF47E | $0CF47F | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CF480 | $0CF83F | 960 | TILE | 30 tiles 4bpp, portrait 31 | root:15459 formula |
| $0CF840 | $0CF841 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0CF842 | $0CFC01 | 960 | TILE | 30 tiles 4bpp, portrait 32 | root:15459 formula |
| $0CFC02 | $0CFFFF | 1022 | PAD | $00 |  |
| $0D0000 | $0D0001 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D0002 | $0D03C1 | 960 | TILE | 30 tiles 4bpp, portrait 33 | root:15459 formula |
| $0D03C2 | $0D03C3 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D03C4 | $0D0783 | 960 | TILE | 30 tiles 4bpp, portrait 34 | root:15459 formula |
| $0D0784 | $0D0785 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D0786 | $0D0B45 | 960 | TILE | 30 tiles 4bpp, portrait 35 | root:15459 formula |
| $0D0B46 | $0D0B47 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D0B48 | $0D0F07 | 960 | TILE | 30 tiles 4bpp, portrait 36 | root:15459 formula |
| $0D0F08 | $0D0F09 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D0F0A | $0D12C9 | 960 | TILE | 30 tiles 4bpp, portrait 37 | root:15459 formula |
| $0D12CA | $0D12CB | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D12CC | $0D168B | 960 | TILE | 30 tiles 4bpp, portrait 38 | root:15459 formula |
| $0D168C | $0D168D | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D168E | $0D1A4D | 960 | TILE | 30 tiles 4bpp, portrait 39 | root:15459 formula |
| $0D1A4E | $0D1A4F | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D1A50 | $0D1E0F | 960 | TILE | 30 tiles 4bpp, portrait 40 | root:15459 formula |
| $0D1E10 | $0D1E11 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D1E12 | $0D21D1 | 960 | TILE | 30 tiles 4bpp, portrait 41 | root:15459 formula |
| $0D21D2 | $0D21D3 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D21D4 | $0D2593 | 960 | TILE | 30 tiles 4bpp, portrait 42 | root:15459 formula |
| $0D2594 | $0D2595 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D2596 | $0D2955 | 960 | TILE | 30 tiles 4bpp, portrait 43 | root:15459 formula |
| $0D2956 | $0D2957 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D2958 | $0D2D17 | 960 | TILE | 30 tiles 4bpp, portrait 44 | root:15459 formula |
| $0D2D18 | $0D2D19 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D2D1A | $0D30D9 | 960 | TILE | 30 tiles 4bpp, portrait 45 | root:15459 formula |
| $0D30DA | $0D30DB | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D30DC | $0D349B | 960 | TILE | 30 tiles 4bpp, portrait 46 | root:15459 formula |
| $0D349C | $0D349D | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D349E | $0D385D | 960 | TILE | 30 tiles 4bpp, portrait 47 | root:15459 formula |
| $0D385E | $0D385F | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D3860 | $0D3C1F | 960 | TILE | 30 tiles 4bpp, portrait 48 | root:15459 formula |
| $0D3C20 | $0D3C21 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D3C22 | $0D3FE1 | 960 | TILE | 30 tiles 4bpp, portrait 49 | root:15459 formula |
| $0D3FE2 | $0D3FE3 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D3FE4 | $0D43A3 | 960 | TILE | 30 tiles 4bpp, portrait 50 | root:15459 formula |
| $0D43A4 | $0D43A5 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D43A6 | $0D4765 | 960 | TILE | 30 tiles 4bpp, portrait 51 | root:15459 formula |
| $0D4766 | $0D4767 | 2 | TILE | portrait header: its first tile number (k*30), not read by the game | root:15459 formula |
| $0D4768 | $0D4B27 | 960 | TILE | 30 tiles 4bpp to VRAM tile 0x59 | root:15459 formula |
| $0D4B28 | $0D7FFF | 13528 | PAD | $00 |  |
| $0D8000 | $0D827F | 640 | TILE | 20 tiles 4bpp, face part: type 0, part 0, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8280 | $0D84FF | 640 | TILE | 20 tiles 4bpp, face part: type 0, part 0, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8500 | $0D877F | 640 | TILE | 20 tiles 4bpp, face part: type 0, part 0, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8780 | $0D89FF | 640 | TILE | 20 tiles 4bpp, face part: type 0, part 0, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8A00 | $0D8A5F | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 1, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8A60 | $0D8ABF | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 1, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8AC0 | $0D8B1F | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 1, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8B20 | $0D8B7F | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 1, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8B80 | $0D8BDF | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 2, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8BE0 | $0D8C3F | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 2, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8C40 | $0D8C9F | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 2, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8CA0 | $0D8CFF | 96 | TILE | 3 tiles 4bpp, face part: type 0, part 2, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8D00 | $0D8D3F | 64 | TILE | 2 tiles 4bpp, face part: type 0, part 3, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8D40 | $0D8D7F | 64 | TILE | 2 tiles 4bpp, face part: type 0, part 3, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8D80 | $0D8DBF | 64 | TILE | 2 tiles 4bpp, face part: type 0, part 3, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8DC0 | $0D8DFF | 64 | TILE | 2 tiles 4bpp, face part: type 0, part 3, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8E00 | $0D8FDF | 480 | TILE | 15 tiles 4bpp, face part: type 0, part 4, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0D8FE0 | $0D91BF | 480 | TILE | 15 tiles 4bpp, face part: type 0, part 4, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0D91C0 | $0D939F | 480 | TILE | 15 tiles 4bpp, face part: type 0, part 4, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0D93A0 | $0D957F | 480 | TILE | 15 tiles 4bpp, face part: type 0, part 4, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0D9580 | $0D989F | 800 | TILE | 25 tiles 4bpp, face part: type 1, part 0, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0D98A0 | $0D9BBF | 800 | TILE | 25 tiles 4bpp, face part: type 1, part 0, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0D9BC0 | $0D9EDF | 800 | TILE | 25 tiles 4bpp, face part: type 1, part 0, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0D9EE0 | $0DA1FF | 800 | TILE | 25 tiles 4bpp, face part: type 1, part 0, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA200 | $0DA25F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 1, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA260 | $0DA2BF | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 1, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA2C0 | $0DA31F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 1, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA320 | $0DA37F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 1, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA380 | $0DA3DF | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 2, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA3E0 | $0DA43F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 2, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA440 | $0DA49F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 2, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA4A0 | $0DA4FF | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 2, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA500 | $0DA55F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 3, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA560 | $0DA5BF | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 3, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA5C0 | $0DA61F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 3, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA620 | $0DA67F | 96 | TILE | 3 tiles 4bpp, face part: type 1, part 3, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA680 | $0DA71F | 160 | TILE | 5 tiles 4bpp, face part: type 1, part 4, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA720 | $0DA7BF | 160 | TILE | 5 tiles 4bpp, face part: type 1, part 4, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA7C0 | $0DA85F | 160 | TILE | 5 tiles 4bpp, face part: type 1, part 4, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA860 | $0DA8FF | 160 | TILE | 5 tiles 4bpp, face part: type 1, part 4, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DA900 | $0DAADF | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 0, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DAAE0 | $0DACBF | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 0, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DACC0 | $0DAE9F | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 0, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DAEA0 | $0DB07F | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 0, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB080 | $0DB0DF | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 1, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB0E0 | $0DB13F | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 1, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB140 | $0DB19F | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 1, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB1A0 | $0DB1FF | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 1, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB200 | $0DB25F | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 2, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB260 | $0DB2BF | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 2, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB2C0 | $0DB31F | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 2, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB320 | $0DB37F | 96 | TILE | 3 tiles 4bpp, face part: type 3, part 2, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB380 | $0DB3BF | 64 | TILE | 2 tiles 4bpp, face part: type 3, part 3, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB3C0 | $0DB3FF | 64 | TILE | 2 tiles 4bpp, face part: type 3, part 3, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB400 | $0DB43F | 64 | TILE | 2 tiles 4bpp, face part: type 3, part 3, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB440 | $0DB47F | 64 | TILE | 2 tiles 4bpp, face part: type 3, part 3, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB480 | $0DB65F | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 4, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB660 | $0DB83F | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 4, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DB840 | $0DBA1F | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 4, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DBA20 | $0DBBFF | 480 | TILE | 15 tiles 4bpp, face part: type 3, part 4, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DBC00 | $0DBDDF | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 0, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DBDE0 | $0DBFBF | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 0, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DBFC0 | $0DC19F | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 0, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC1A0 | $0DC37F | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 0, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC380 | $0DC3DF | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 1, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC3E0 | $0DC43F | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 1, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC440 | $0DC49F | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 1, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC4A0 | $0DC4FF | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 1, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC500 | $0DC55F | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 2, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC560 | $0DC5BF | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 2, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC5C0 | $0DC61F | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 2, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC620 | $0DC67F | 96 | TILE | 3 tiles 4bpp, face part: type 2, part 2, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC680 | $0DC6BF | 64 | TILE | 2 tiles 4bpp, face part: type 2, part 3, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC6C0 | $0DC6FF | 64 | TILE | 2 tiles 4bpp, face part: type 2, part 3, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC700 | $0DC73F | 64 | TILE | 2 tiles 4bpp, face part: type 2, part 3, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC740 | $0DC77F | 64 | TILE | 2 tiles 4bpp, face part: type 2, part 3, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC780 | $0DC95F | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 4, variant 0 | root:RF_837B tables RD_94BE/RD_955E |
| $0DC960 | $0DCB3F | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 4, variant 1 | root:RF_837B tables RD_94BE/RD_955E |
| $0DCB40 | $0DCD1F | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 4, variant 2 | root:RF_837B tables RD_94BE/RD_955E |
| $0DCD20 | $0DCEFF | 480 | TILE | 15 tiles 4bpp, face part: type 2, part 4, variant 3 | root:RF_837B tables RD_94BE/RD_955E |
| $0DCF00 | $0DFFFF | 12544 | PAD | $00 |  |
| $0E0000 | $0E669F | 26272 | TILE | 821 tiles 4bpp to VRAM tile 0x77 | senfe:1527, sensou:127 |
| $0E66A0 | $0E74DF | 3648 | TILE | 114 tiles 4bpp to VRAM tile 0x100 | senfe:1533 |
| $0E74E0 | $0E7FFF | 2848 | PAD | $00 |  |
| $0E8000 | $0E8D9F | 3488 | TILE | 109 tiles 4bpp to VRAM tile 0x77 | ending:1061 |
| $0E8DA0 | $0E9C9F | 3840 | TILE | 120 tiles 4bpp to VRAM tile 0xf0 | ending:1074 |
| $0E9CA0 | $0EC69F | 10752 | TILE | 336 tiles 4bpp to VRAM tile 0xe4 | ending:1068 |
| $0EC6A0 | $0EF27F | 11232 | TILE | 351 tiles 4bpp to VRAM tile 0x77 | ending:2019 |
| $0EF280 | $0EFAFF | 2176 | TILE | 68 tiles 4bpp to VRAM tile 0x12c | ending:1846 |
| $0EFB00 | $0EFD5F | 608 | TILE | 19 tiles 4bpp to VRAM tile 0x234 | ending:1081 |
| $0EFD60 | $0EFD9A | 59 | UNREF |  |  |
| $0EFD9B | $0EFFFF | 613 | PAD | $00 |  |
| $0F0000 | $0F529F | 21152 | TILE | 661 tiles 4bpp to VRAM tile 0x77 | ending:2064, ending:2070 |
| $0F52A0 | $0F52FF | 96 | PAD | $00 |  |
| $0F5300 | $0F683F | 5440 | TILE | 170 tiles 4bpp to VRAM tile 0x90 | initop:1232, root:1826 |
| $0F6840 | $0F78BF | 4224 | TILE |  |  |
| $0F78C0 | $0F7FFF | 1856 | PAD | $00 |  |
| $0F8000 | $0F8BA0 | 2977 | LZ | 4480 bytes unpacked | initop:2132 |
| $0F8BA1 | $0F8BA2 | 2 | PAD | $00 |  |
| $0F8BA3 | $0FB5B4 | 10770 | LZ | 22208 bytes unpacked | initop:2163 |
| $0FB5B5 | $0FCE0E | 6234 | LZ | 33152 bytes unpacked | initop:2226 |
| $0FCE0F | $0FCE10 | 2 | LZ | end of stream (flush word) |  |
| $0FCE11 | $0FE45D | 5709 | LZ | 16064 bytes unpacked | initop:2730 |
| $0FE45E | $0FE45F | 2 | LZ | end of stream (flush word) |  |
| $0FE460 | $0FE65F | 512 | TILE | 16 tiles 4bpp to VRAM tile 0x2fc | initop:2470, initop:2483 |
| $0FE660 | $0FF3D7 | 3448 | LZ | 7696 bytes unpacked | initop:2749 |
| $0FF3D8 | $0FF3D9 | 2 | LZ | end of stream (flush word) |  |
| $0FF3DA | $0FF586 | 429 | LZ | 544 bytes unpacked | initop:1818 |
| $0FF587 | $0FF588 | 2 | LZ | end of stream (flush word) |  |
| $0FF589 | $0FFFFF | 2679 | PAD | $00 |  |
