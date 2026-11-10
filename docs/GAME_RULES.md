# Regras do jogo tiradas do código (SNES US)

Base para o walkthrough Master Play. Cada regra aponta a função de onde saiu.

## Fama e títulos

- Fama em `$EE74` (máx. 50.000); título em `$EE76` (0 sem título, 1 Page, 2 Squire, 3 Knight, 4 Baronet, 5 Baron, 6 Viscount, 7 Count, 8 Marquis, 9 Duke).
- O rei chama quando fama > (título+1)² × 400 (`ibento 9D79`). A moça da taverna avisa ("I hear the King of Portugal wants to see you", `s_onna`).
- Sem título só se entra no palácio de Lisbon quando chamado (`oukyu B047`).
- Até Baron, às vezes o rei "não está" (chance 1/(título+3)); é só voltar (`oukyu BED0`).
- Missão sorteada por título (`ibento 9C71`): 0 → caixas; 1-2 → caixas ou carta; 3-4 → carta ou pirata; 5-6 → pirata ou tesouro; 7-8 → tesouro ou princesa; 9 → princesa.
- Cumprir: +1 título e o novo título × (3 a 5) × 1.000 de ouro na poupança do palácio (limite 10 milhões) (`oukyu B3BE`, `B7D8`).
- Recusar ou falhar: perde fama/10 + rand(fama/10) (`oukyu B842` e similares).

### Missão 0: caixas (`ibento 983A`, `oukyu B9B3`)
- Mercadoria = tabela `ibento $9EBD`[título + rand(3)]: sem título Porcelain, Wool ou Grain; Page Wool, Grain ou Coral; Squire Grain, Coral ou Ivory.
- Quantidade ≈ (título+1) × 2.000 ÷ preço da mercadoria no porto + 0..4, no máximo metade da capacidade do navio capitânia. Pode entregar em partes.

### Missão 1: carta secreta (`ibento 985D`, `oukyu B79C`)
- Destino sorteado: rei da Espanha (Seville) ou sultão (Istanbul). Entregar no palácio de lá e voltar a Lisbon.

### Missão 3: tesouro (`ibento 9A97`)
- Monta uma cadeia de pistas com rand(2) + título/3 + 1 passos; cada passo é um porto ou um ponto de desembarque.
- Em 2 de cada 3 vezes, uma frota rival (6 a 20) carrega o tesouro e é preciso vencê-la (`senfe B131`).
- Nome do tesouro = adjetivo (Lion, Dragon, Hydra, Ebony, Bronze, Crystal, Silver, Ruby, Magic, Royal, Golden, Emerald) + objeto (Dagger, Charm, Crown, Goblet, Statue, Harp, Mirror, Ladle, Shield, Armor, Sword, Helmet, Ring).

### Missão 4: princesa (`ibento 9B5D`, `oukyu B2D3`, `senfe B1D7`)
- Sequestradora: frota de guerra (4ª/5ª) da nação, Espanha ou Turquia, com pior relação com Portugal se abaixo de 51; senão, uma frota pirata (16-20).
- Vencer essa frota marca o resgate (`$EF61` bit 2); voltar ao palácio de Lisbon dispara o final (`$F169 = $FF`).

## Fontes de fama
- Descobrir porto: 20 + 100 × (tipo de mercado ÷ 2); porto de abastecimento 100 (`uarugo AD00`). Já conhecidos no início: Lisbon, Seville, Istanbul, Genoa, Marseille, Tunis, Naples.
- Porto vira aliado de Portugal pelo seu investimento: (economia + indústria)/2 + rand(100) (`koueki C2E1`, `zousen`).
- Vitória em batalha contra frota não portuguesa: 600 (guerra/pirata) ou 200 (mercante) + rand(10)×10 (`senfe BB03`).
- Encomenda de mercador entregue: 150 + 100 × (título/2) (`um_sub B19D`); item procurado entregue: 2.000 (`um_sub C3FF`).

## Investimento (`koueki C3FF`)
- Efeito: < 1.000 → (X+1)/20; 1.000-9.999 → X/100 + 50; ≥ 10.000 → X/1.000 + 150.
- Apoio português sobe rand(2) + (efeito+1)/k, k = apoio/7 se apoio > 49, senão (100 − apoio)/7. Soma dos apoios limitada a 100.
- Dono do porto = nação com apoio ≥ 80 (`root 4353`).

## Preços e frotas rivais
- Preço = base × (índice) / 100, índice = byte + 50 (%). Ver `docs/NOTES.md` e o guia de comércio.
- Mercantes rivais: compram a especial (índice +4..6, base +3 até 600), investem metade do ouro, sobem o apoio da nação (`cminato 96CA`). Destino por apoio político (`cminato A102`, `A05F`).
- Frota que volta para casa: índice da capital −2..3 (`cminato 9AFF`).
- Mensal: índice volta rand(min(d,5)) pontos para 100% (`maituki A3BB`).

## Abertura (`initop`)
- Atributos do herói: Charisma, Wisdom, Intel, Courage, Strength (nomes em `initop $AE24`). Cada um começa em 40 + rand(30).
- Pontos de bônus: 40 + rand(30), e em 1 de cada 40 sorteios soma mais 20 a 69 (máximo 138). Dá para sortear de novo quantas vezes quiser respondendo "não" (`initop 998B`).
- Ficha do herói em `$EAB0` (nome) e `$EAC1` (atributos); `$E444` aponta para o nome.

## Itens citados pela tripulação (`uminato2`)
- Figurehead (proteção contra desastre), telescope, sextant, speculum. Falta decodificar onde se obtêm e o efeito.

## Itens (`fdata $1604`, 17 bytes: nome[15] + preço; tipo/poder em `fdata $1824`)
Itens do jogador: bits em `$E56F` (frota 0 +11). `root 41CD(tipo)` devolve o maior poder entre os itens daquele tipo.

| Tipo | Itens (poder, preço) | Efeito |
| --- | --- | --- |
| 0 instrumentos | Telescope (1, 1.000), Sextant (2, 800), Speculum (3, 12.000) | navegação (a decodificar em `ucom`) |
| 1 amuletos | Nymph (1, 1.500), Sun (2, 3.000), Angel (3, 7.500), Shining (4, 12.000) | na batalha, dano recebido −10% por nível (`senmain AAB0`) |
| 2 armas | Dagger (1, 750), Sword (2, 2.000), Sabre (3, 3.500), Chinese Sword (4, 8.000) | força do capitânia +12,5% por nível (`senmain A90C`) |
| 3 ícones | Falcon (1, 1.200), Hawk (2, 4.800), Eagle (3, 9.600), Dragon (4, 15.000) | valor de combate +12,5% por nível, máx. 100 (`senmain AA3F`) |
| 4 objetos de valor | Coral Ring, Ivory Box, Candlestick, Gold Nugget, Silver Rosary, Pearl/Coral/Gold Bracelet, Sapphire, Ruby, Opal, Emerald, Crown, Jewelled Ladle, Ring, Silver Comb (800 a 15.000) | presentes/venda (a decodificar em `s_onna`) |

## Estaleiro (`zousen`, `z_tyuuko`, `z_sinzou`)
- Serviços: consertar, vender, comprar usado, construir, remodelar (canhões Culverin/Cannon, velas de 3 ou 4 pontas), carranca (Unicorn, Dragon, Neptune; Venus rara), renomear (10 de ouro), investir (indústria; em porto estrangeiro precisa do consentimento do rei/sultão).
- Classes (`fdata $0418`, 21 bytes): Latin, Redonda (capacidade 70), Bergantin (105), Nao (310), Carrack (420), Galleon (490). Para construir: casco Teak, Beach ou Mahogany; mastros; velas 3 pontas (bolina) ou 4 pontas (popa); canhões e beliches. Heavy Galleon só em poucos portos.
- O Hermes do início é uma Latin (capacidade 70).

## Porto (`um_sub`, `uminato2`, `hantei`)
- Hospedagem (inn), informação sobre nações (pago), loja de itens (compra e venda de tesouros), encomendas de mercadores.
- Cais: Sail, Restock (água, comida, madeira), Transfer.
- Em porto hostil, oficiais podem confiscar a carga; dá para subornar (`hantei`).

## Navegação (`ucom`)
- Sextant: mostra a posição atual ("We don't have a sextant" sem ele). Telescope: muda a identificação das frotas à vista (`ucom A217`). Speculum: necessário para examinar a terra ("There's nothing unusual" sem ele, `ucom B273`).
- Comandos no mar: direção (8 rumos), ancorar, aportar, desembarcar (escolher ponto), olhar/inspecionar/negociar com frotas, rações (1 a 99), dar ouro aos imediatos (lealdade), trocar navegador, descartar navio.

## Taverna (`sakaba`, `s_*`)
- Menus: Crew (recrutar marujos pagando, `s_nori`), Find mates / Quit mates (imediatos, `s_nsaso`/`s_nwaka`), Gossip (bebida, `s_sake`; moça da taverna, `s_onna`), Gamble (pôquer, blackjack, cartas; só em portos com índice suficiente, `s_tobaku`).
- A taverna é a central de pistas: avisa quando o rei, o mercador-chefe, o mestre da guilda ou o dono da estalagem de outro porto procura você; diz onde comprar e vender cada mercadoria e quais portos precisam de investimento; e conduz a caça ao tesouro (quem tem o mapa, para que lado fica, que rival carrega o tesouro). A moça da taverna pode dar o mapa em troca de visitas.

## Fins de jogo (`ending`, `$F169`)
- `$F169` = 1: suprimentos acabaram no mar; 2: tempestade; 3: prazo (ano > 1521, `root 8272`); 4: derrota sem texto; `$FF`: final bom.
- Prazo: o ano começa em 1502 (`$EA8D` = ano − 1500); ao virar 1522 o jogo acaba ("After 20 long years ... passed away").
- Final bom (script em `ending $B51D`): o rei oferece Land, Princess, Honor ou Refuse. Land e Honor dão o título de Lord of Alcobaca; Princess leva ao casamento com Christiana e à coroa de Portugal; Land também pode terminar no pedido de casamento. Detalhar as condições do script.

## Suprimentos e moral (`uarugo A445`)
- Por dia e por navio, água e comida caem cada uma em tripulantes × ração / 100 + 1 (tripulantes em `$EB96 + 7×navio`; ração padrão 50). Ex.: 20 homens, ração 50 → 11 por dia; 200 unidades duram 18 dias.
- Ração ≥ 50: moral do navio (`carga +22`) sobe (ração − 50)/10 por dia, até 100. Ração < 50: moral cai (50 − ração)/2 e a lealdade do imediato do navio cai (50 − ração)/10 por dia.
- Acabou água ou comida em todos os navios: fim de jogo "lost at sea" (`$F169 = 1`).
- Perigos no mar (`uarugo`): tempestade (dano, leme), algas que prendem o leme, navio que some em certas águas, falta de suprimento.
