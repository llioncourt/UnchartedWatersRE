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
- Monta uma cadeia de pistas com rand(2) + título/3 + 1 passos; cada pista é uma pessoa a encontrar nas tavernas: um dos 20 imediatos ou uma das 20 garçonetes.
- Em 1 de cada 3 vezes, uma frota rival (6 a 20) carrega o tesouro e é preciso vencê-la (`senfe B131`).
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
- Serviços: consertar, vender, comprar usado, construir, remodelar (canhões Culverin/Cannon, velas de 3 ou 4 pontas), carranca (Unicorn, Dragon, Neptune; Venus rara), renomear (10 de ouro), investir (indústria). As três capitais (Lisbon, Seville, Istanbul) nunca aceitam investimento, no mercado nem no estaleiro ("You can't invest here without the King's consent"); todos os outros portos aceitam (`koueki` 902-910, `zousen` 591-599).
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
- Final bom (`ENDING_F_9D6A`): o rei oferece Land, Princess, Honor ou Refuse; cada escolha toca uma cena (`99ED`, `9A21`, `9A2E`, `9A48`, roteiros em `$B5C4`, `$B7FF`, `$B874`, `$BA70`). Não há condição escondida: a cena depende só da escolha.
  - Land: Alcobaca, terra dos antepassados, e o título de Lord of Alcobaca; em seguida o rei, sem filho homem, pede que case com Christiana e seja o sucessor (Accept / Refuse; recusar faz o rei pedir de novo).
  - Princess: o rei hesita ("I had planned for her to marry into Spain..."), Christiana insiste e ele passa a coroa: "As of this day you are King of Portugal".
  - Honor: "Easily done. I dub you Lord of Alcobaca".
  - Refuse: "I desire nothing in return"; Christiana corre atrás ("Wait!") e o rei percebe ("You must be hiding something from me").

## Suprimentos e moral (`uarugo A445`)
- Por dia e por navio, água e comida caem cada uma em tripulantes × ração / 100 + 1 (tripulantes em `$EB96 + 7×navio`; ração padrão 50). Ex.: 20 homens, ração 50 → 11 por dia; 200 unidades duram 18 dias.
- Ração ≥ 50: moral do navio (`carga +22`) sobe (ração − 50)/10 por dia, até 100. Ração < 50: moral cai (50 − ração)/2 e a lealdade do imediato do navio cai (50 − ração)/10 por dia.
- Acabou água ou comida em todos os navios: fim de jogo "lost at sea" (`$F169 = 1`).
- Perigos no mar (`uarugo`): tempestade (dano, leme), algas que prendem o leme, navio que some em certas águas, falta de suprimento.

## Estaleiro (`zousen`, `z_sinzou`, `z_tyuuko`)

### Navio novo (`z_sinzou`)
- Tipos: Caravel (0), Bergantin (1), Nao (2), Carrack (3), Galleon (4), Heavy Galleon (5). O estaleiro oferece do 0 até (indústria − 100) / 180 (`Z_SINZOU_F_D759`).
- Escolhas: casco Teak 0, Beach 1, Oak 2, Mahogany 3; mastros 1 ou 2 (Caravel, Bergantin), 1 a 3 (Nao, Carrack), 2 ou 3 (Galleon, Heavy Galleon); velas 3-point (0) ou 4-point (1).
- Durabilidade = 10 × tipo + 10 × casco + 20 (`D071`).
- Manobra = (20 − tipo) × 100 / 20 × (10 − mastros) / 10 × (4 − velas) / 4, com mastros = 0, 1, 2 para 1, 2, 3 mastros (`D09D`).
- Força (velocidade) = mín(100, (10 × mastros + 100) × (10 − tipo) / 10 × (velas + 3) / 4) (`D0E3`).
- Capacidade = (tipo + 2) / 2 × 300 + (tipo ímpar ? tipo × 50 : 0) + (tipo / 5) × 50 − 200: 100, 150, 400, 550, 700, 1000 (`D12A`).
- Canhões: até ((tipo / 2) + 1) × 20 + (tipo / 5) × 40 posições: 20, 20, 40, 40, 60, 100. Beliches: mínimo 20. Carga = capacidade − tripulação − canhões (`D36A`).
- Preço = (((7 × tipo) / 2 + 1) × índice × (casco + 2) / 2) × 7 + ((tipo / 2) × 6 + 1) × índice × (mastros + 1) × 3, teto 60.000; índice = índice de preço do porto em % (`D41F`).
- Barganha: ao recusar o preço, chance 1/(título + 1) de poder propor outro valor; o mínimo aceito é a mesma regra do navio usado: (10 − título) × preço / 20 + preço / 2, menos rand(preço / 10).

### Navio usado (`z_tyuuko`)
- Modelos (registros de `fdata` +$0481, 21 bytes: nome[15], tripulação, canhões, carga, byte de projeto): Latin, Redonda, Bergantin, Nao, Carrack, Galleon.

| Modelo | Tripulação | Canhões | Carga | Projeto |
| --- | --- | --- | --- | --- |
| Latin | 20 | 10 | 70 | Caravel, Beach, 1 mastro, 3-point |
| Redonda | 20 | 10 | 70 | Caravel, Beach, 1 mastro, 4-point |
| Bergantin | 25 | 20 | 105 | Bergantin, Beach, 1 mastro, 3-point |
| Nao | 60 | 30 | 310 | Nao, Beach, 2 mastros, 4-point |
| Carrack | 90 | 40 | 420 | Carrack, Beach, 2 mastros, 4-point |
| Galleon | 160 | 50 | 490 | Galleon, Beach, 3 mastros, 4-point |

- Oferta: modelos 0 até (indústria − 100) / 160; com chance 1/20 o vendedor tem um a mais ("There's a beauty in store for ye today", `D675`).
- Durabilidade, manobra e força = as do projeto menos 5 a 9 (desgaste) (`D2C4`).
- Preço = (índice − 10) × ((casco + 2) × (7 × tipo / 2 + 1) / 2 × 700 + (mastros + 1) × ((tipo / 2) × 6 + 1) × 300) / 100 (`D4B2`).
- Barganha: ao recusar, chance 1/(título + 1); o mínimo aceito é (10 − título) × preço / 20 + preço / 2 − rand(preço / 10). Abaixo disso: "No good land-lubber!".
- **Segredo**: na barganha, digitar **3594** como oferta compra o navio por 3.594 e em seguida deixa o ouro em **60.000** (`Z_TYUUKO_L_D5E3`, compara com `$0E0A`). O valor digitado não pode passar do ouro nem do preço pedido.

### Reformas (`zousen`)
- Renomear: 10 de ouro.
- Canhões: Saker e Culverin custam 1 × índice cada, Cannon 2 × índice. Trocar o tipo revende os antigos pela metade do preço (`B473`).
- Velas: trocar 3-point ↔ 4-point custa (mastros + 1) × (índice − 30) × 3 e recalcula manobra e força (`B722`).
- Carrancas: Swan 1.000, Eagle 2.000, Unicorn 4.000, Lion 8.000, Dragon 16.000, Neptune 32.000; o estaleiro mostra economia / 170 + 1 delas. Com mais de 35.000 de ouro num porto de economia acima de 850, chance 1/100 de oferecerem a **Venus** por 30.000 + rand(1.000) (`B9A7`).

## Pessoas e atributos
- Ficha de pessoa em `$EAC0 + 10 × p` (p = 0 herói, 1.. imediatos, 20.. almirantes rivais): +1 Charisma, +2 Wisdom, +3 Intelligence, +4 Courage, +5 Strength, +6 experiência de batalha (word), +8 experiência de navegação (word). Tela de status em `root RD_8D13` ("Charisma / Wisdom / Strength / Courage / Intelligence").
- Segunda ficha em `$E444 + 7 × p`: +0 ponteiro do nome, +2 nível de batalha, +3 nível de navegação. Lealdade dos imediatos em `$E970 + 2 × (p − 1)`.

## Batalha (`senmain`, `senfe`)
- Cada lado usa os atributos do navegador do navio que age. O inimigo usa 75 em tudo se for a capitânia, 65 nos demais; moral 80; nível = o do almirante da frota (`SENMAIN_F_A836`).
- **Tiro** (`A9EE`): força = (2 × Courage + Charisma) × (nível / 5 + 1) / 40 + rand(5) + (2 × Courage + Charisma) / 15. No navio do herói soma força × (poder do melhor ícone) / 8; o inimigo sempre soma +25%. Teto 100.
  Dano = mín(canhões, tripulação) / 2 × moral / 100 × força / 100 + rand(3); **Cannon dobra o dano**. Contra o navio do herói, cada nível de amuleto tira 10%; o tiro do jogador sai com −20%.
  O alvo perde esse dano em durabilidade e metade dele (+ rand(3)) em tripulação, força e manobra.
- **Abordagem** (`A8C5`, `A95C`): força = (2 × Strength + Wisdom + Courage) × (nível / 5 + 1) / 40 + rand(3), + poder da melhor arma / 8 no navio do herói. Baixas causadas = tripulação × moral / 150 × força / 100 + 1. Os dois lados trocam golpes.
- Experiência de batalha ao afundar ou esvaziar um navio inimigo: (k − 4)² × 100, com k = modelo do inimigo (Latin 100, Redonda 400, Bergantin 900, Nao 1.600, Carrack 2.500, Galleon 3.600); teto 60.000.
- Nível (`SENFE_F_B5C3`): do nível L para L+1 custa L² × 50 de experiência até o nível 14 e 12.000 a partir do 15; máximo 50. Cada nível ganho soma rand(4 × níveis) a Courage e a Strength (teto 100).
- Fim: capitânia sem tripulação ou sem casco perde (`$F300 = 5`); a capitânia inimiga idem dá a vitória (`$F300 = 4`). Ao pôr do sol a luta acaba ("the sun's setting").

## Taverna (`sakaba` e `s_*`)
- **Marinheiros** (`s_nori`): você gasta de 50 até mín(ouro, 1.000); custo por homem = (20 − apoio português / 10) + (10 − título) + (1.000 − economia) / 100; vêm gasto / custo + rand(2) + 1 homens, limitados pelos beliches livres. Recrutar é mais barato em porto rico, português e com título alto.
- **Imediatos** (`s_nsaso`, "Find mates"): o candidato compara o próprio atributo mais alto × (nível de batalha + nível de navegação) com o mesmo atributo do herói × níveis do herói × (1 + título / 10) + rand(20). Se o dele for maior: "You don't know who you're dealing with!".
- **Garçonete** (`s_onna`): gorjeta de 10 de ouro soma 10 + rand(5) ao afeto dela (teto 200); acima de 100 ela às vezes recusa. A qualidade da informação sobe a cada 45 pontos de afeto. Ela conta onde estão frotas rivais, onde se vende uma mercadoria, quem tem o mapa do tesouro, e avisa quando o rei, o mercador ou o mestre da guilda procuram você.
- **Jogo** (`s_tobaku`, `s_bj`, `s_pk`, `s_card`): Black Jack e Poker com baralho de 52 cartas embaralhado com 104 trocas aleatórias (honesto). No Black Jack a vitória paga 1 para 1; a casa encerra o dia quando seu ouro passa de (economia / 2 + rand(50)) acima do que você tinha ao sentar, ou chega a 60.000.

## No mar (`uarugo`)
- Todo dia, em cada navio: moral (+22 do registro de carga) sobe (2 × Charisma + Wisdom do navegador) / 60 + rand(2), teto 100; depois o consumo de água e comida. Moral abaixo de 20 faz perder (20 − moral)% da tripulação + 1. Navio com menos de 5 tripulantes some ("We've lost sight of..."); se for a capitânia, fim de jogo (`UARUGO_F_A529`).
- **Tempestade** (`A762`, `A8A0`): a cada 10 passos, cada navio tem chance 1/(carranca + 1) de levar dano (−3 durabilidade, manobra e força, −2 tripulantes). Carranca 0 = nenhuma; Swan 1 … Neptune 6, Venus 7. Casco 0 ou menos de 5 tripulantes afunda o navio; a capitânia afundada é fim de jogo (`$F169 = 2`). Passada a tempestade: +200 + rand(50) de experiência de navegação e −(10 + rand(5)) de moral.
- **Sargaço** (`A6C5`): o navio com o navegador de menor nível de navegação fica com força 0 ("caught up in seaweed").
- **Desaparecimento** (`A706`): o navio do navegador de menor nível de navegação some com ele ("has mysteriously vanished"); se só houver a capitânia, só o aviso.

## Mercado: o jogador mexe no índice (`koueki`)
- Comprar: se o gasto passar de 1.000, o índice do porto sobe min(10, gasto/1.000) pontos, até o byte 100 (150%) (`KOUEKI_L_BCB2`).
- Vender: cada venda guarda min(10, receita/1.000); ao sair, o índice cai esse valor (se o byte for > 9; senão vai a 0, ou seja 50%) (`KOUEKI_L_B5C6`).
- A bolsa trava em 60.000: a venda que passar disso perde o excesso ("We've got a wealth of gold now!").

## Pessoas e frotas (`sgdata`, `fdata`)
- 21 fichas iniciais em `$EAC0+10p` (p 0 herói, 1..20 imediatos): +0 desconhecido, +1..+5 atributos. Níveis em `$E444+7p` (+2 batalha, +3 navegação), +6 = nação×16 + 1 (0 Portugal, 1 Espanha, 2 Turquia, 3 outros/piratas).
- Almirante da frota n (1..20) = pessoa n+20. Frotas 1-5 Portugal, 6-10 Espanha, 11-15 Turquia, 16-20 piratas (Singleton, El Drago, Morgan, Gonzales, Gregorio). Todos começam no nível de batalha 5.
- Garçonetes: 20 nomes em `fdata $0036`; o byte +3 do registro de mercado do porto (`fdata $150A+5p`, `mkt_b3`) é o índice da garçonete (255 = nenhuma). Lisbon = Carlotta.

## Carta do mundo
- Cada célula do mapa vira 2×2 quartos pela tabela `fdata $25F8` (4 bytes por tipo de tile); quarto 0 = mar. Os 70 portos (`fdata $0FD8`, 19 bytes: nome[15] + a, b, c, d) ficam em meio-quadrado: x = (14a + c)/2, y = (14b + d)/2. Todos os portos ficam no mesmo mar navegável (`tools_snes/book_chart.py`, `guide/seadist.py`).
- Estaleiro: indústria < 100 → "Sorry, we don't build ships around here".

## NES e Mega Drive
- NES: o arquivo de dados (`fdata`) é idêntico ao do SNES até `$1CA8`, tirando ponteiros; o mapa do mundo é idêntico; todas as falas citadas no livro existem; a VM do NES tem o mesmo código para o segredo 3594, a Venus, o tiro e os níveis.
- Mega Drive: mesmas falas e mesmo mapa; itens, navios e 3594 conferidos antes.

## Revisão do livro, 10/11/2026 (QA independente)
- Palácio de Lisbon, menu: Meet King, Secret Call, Request (Funds, Crew), Savings (`oukyu` C74F).
- Request: reservas mensais do Rei (`maituki` 9E55). Ouro: $EECE += (rand(15) + nações/50) × título, teto 10.000 pontos. Funds oferece min(60.000 − ouro, reserva × 10), arredondado para baixo em milhares; cada X de ouro retirado custa X/10 + 1 pontos (`oukyu` C261). Homens: $EED0 += (W/50 + rand(5)) × título, teto 1.000; Crew oferece min(vagas, reserva); com reserva ≤ 10: "His Majesty hopes that you will manage on your own".
- Secret Call (`oukyu` C38C): visita à princesa. Opções Profess love, Flowers, Gift. Gift entrega o item de maior índice (≤ 30) do inventário; sem item, paga 300 de ouro e ela pode recusar (mais provável com estima baixa). Estima $E442 sobe a cada visita, teto 200; cai todo mês min(estima, 9 − título + rand(2)). Com chance 1 em 2^(5 − estima/45) ela soma 1.000 pontos à reserva de ouro, se estiver abaixo de 5.000. Títulos 0 a 2 podem ser expulsos ("You make me suspicious...") se estima < rand(100) e rand(3) + título < 3.
- Palácio estrangeiro (`oukyu` B0B2): só recebe se as relações permitem, e então com chance título/(título + 1).
- Habilidade náutica do navegador (`root` RF_2986): S = 2 × Sabedoria + Carisma + Intel; habilidade = ((S × nível de navegação)/8 + S)/8. Manobra e potência usáveis = valor/2 × habilidade/100 + valor/2, teto 100; a frota usa o menor valor entre os navios (RF_29D2, RF_2A38).
- Intel também é testado em terra (`jouriku` 614, 710).
- Rações separadas de água ($E99A) e comida ($E99B), cada uma de 1 a 99 (`ucom` B5F5).
- Investimento: o ouro vai para o fundo do porto; todo mês, se o fundo passa de 1.000, economia (ou indústria) sobe 4 por 1.000 inteiro + rand(10), teto 1.000, e o resto fica (`maituki` A339). Os pontos da tabela (X+1)/20, X/100+50, X/1000+150 (estaleiro: X/1000+50 na faixa do meio) só alimentam o apoio de Portugal no porto (`koueki` 940-960).
- Índice: só uma compra de mais de 1.000 de ouro mexe no índice (+1 por 1.000 inteiro, até +10) (`koueki` 591-598).
- Garçonetes: todo mês cada uma perde 5 a 8 pontos de afeição (`maituki` A5EF).
- Missão de carga: recompensa (título + 1) × 2.000 na poupança; o Rei paga as caixas entregues ao preço, e o que passa de 60.000 vai para a poupança (`oukyu` BBxx).
- Estado inicial: Hermes com 5 de pimenta e 2 de quartzo, moral 70, carranca Swan; espaço livre no porão 18 (água, comida e madeira ocupam o porão).
- Canhões, reembolso ao trocar o tipo (`zousen` 303 contra 259): compra = ((posição no menu / 2) + 1) × índice; reembolso = ((tipo antigo / 2) + 1) × índice / 2, com tipo 1 Saker, 2 Culverin, 3 Cannon. Sakers e cannons voltam pela metade; culverins voltam pelo preço cheio (o texto do jogo diz "half price").
- Alcance (`senmain` C0C2): tipo de canhão ímpar (Saker, Cannon) cobre 6 casas da tabela de alcance; par (Culverin) cobre 14. Mesmo dano entre saker e culverin.
- Venda e índice: cada venda sobrescreve a queda guardada, min(10, receita / 1.000); ela é aplicada uma vez ao sair do mercado (`koueki` 173, B5C6). Só a última venda conta.
- Fim no mar: faltar água ou comida não encerra o jogo; tira 20 a 22 de moral por dia e 4 a 5 de lealdade do imediato (`uarugo` A3B5). Abaixo de moral 20 deserta (20 − moral)% + 1 da tripulação por dia. O final "perdido no mar" vem quando o navio do herói fica com menos de 5 marinheiros (`uarugo` A5EE).
- Investimento mínimo: 1 de ouro (`koueki` C3F6). Todo investimento soma rand(2) ao apoio, além dos pontos: investir 1 de ouro de cada vez sobe o apoio por quase nada.
- Gift da princesa: só aparece com 400 de ouro ou mais; o jogo escolhe o item (o de maior índice até 30 que você tiver).
