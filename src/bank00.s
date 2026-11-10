; Uncharted Waters (SNES US) - engine bank $00
.p816
.smart -
.include "kvm.inc"

.segment "CODE"

  jmp EL_A0FD
  jmp EL_A0D9
  jmp EL_A997
  jmp EL_A997
  jmp EL_8E04
  clc
  xce
  sei
  rep #$30
.a16
  lda #$00
  tcd
  sep #$20
  cld
.a8
  lda #$00
  pha
  plb
  lda #$80
  sta a:$2100
  stz a:$4200
  stz a:$420C
  stz a:$420B
.i16
  ldx #$08FC
  txs
  lda #$54
  sta z:$6C
  lda #$60
  sta z:$6F
  rep #$20
  ldy #$14
  ldx #$00
EL_8041:
.a16
  lda #$00
  sta a:$1E00,x
  dey
  beq EL_8052
  txa
  clc
  adc #$0E
  tax
  bra EL_8041
EL_8052:
  lda #$00
  sta z:$46
  lda #$F800
  sta z:$44
  ldy #$08
  lda [$44],y
  sta z:$42
  iny
  iny
  lda [$44],y
  sta z:$40
  iny
  iny
  lda [$44],y
  sta z:$4C
  lda #$7E
  sta z:$46
  lda #$2000
  sta z:$44
  jsr EL_9CBF
  rep #$10
  sep #$20
  ldx #$FFFF
  stx z:$32
  ldx #$8000
  stx z:$35
  jsr EL_80A0
  jsr EL_8190
  jsr EL_82B3
  jsr EL_82E3
  jsr EL_8314
  jml [$809C]
  .byte $00, $20, $7E, $00
EL_80A0:
  rep #$10
  sep #$20
.a8
  lda #$00
  sta a:$2101
  sta a:$2102
  sta a:$2103
  sta a:$2105
  sta a:$2106
  sta a:$2107
  sta a:$2108
  sta a:$2109
  sta a:$210A
  sta a:$210B
  sta a:$210C
  sta a:$210D
  sta a:$210D
  sta a:$210E
  sta a:$210E
  sta a:$210F
  sta a:$210F
  sta a:$2110
  sta a:$2110
  sta a:$2111
  sta a:$2111
  sta a:$2112
  sta a:$2112
  sta a:$2113
  sta a:$2113
  sta a:$2114
  sta a:$2114
  lda #$80
  sta a:$2115
  sta a:$211A
  sta a:$211B
  lda #$01
  sta a:$211B
  lda #$00
  sta a:$211C
  sta a:$211C
  sta a:$211D
  sta a:$211D
  sta a:$211E
  lda #$01
  sta a:$211E
  lda #$00
  sta a:$211F
  sta a:$211F
  sta a:$2120
  sta a:$2120
  sta a:$2123
  sta a:$2124
  sta a:$2125
  sta a:$2126
  sta a:$2127
  sta a:$2128
  sta a:$2129
  sta a:$212A
  sta a:$212B
  sta a:$212C
  sta a:$212D
  sta a:$212E
  sta a:$212F
  lda #$30
  sta a:$2130
  stz a:$2131
  lda #$E0
  sta a:$2132
  lda #$04
  sta a:$2133
  ldx #$00
  sta a:$4200
  lda #$FF
  sta a:$4201
  lda #$00
  sta a:$4202
  sta a:$4203
  sta a:$4204
  sta a:$4205
  sta a:$4206
  sta a:$4207
  sta a:$4208
  sta a:$4209
  sta a:$420A
  sta a:$420D
  rts
EL_8190:
  ldx #$0120
  stx a:$0B27
  lda #$8F
  sta a:$0B3E
  lda #$00
  ldx #$00
  sta a:$0E19
  sta a:$0B4A
  stx a:$0B4B
  sta a:$0B4D
  stx a:$0B4E
  sta a:$0B50
  stx a:$0B51
  stx a:$0B53
  sta a:$0B55
  sta a:$0E03
  sta a:$0DD8
  inc a:$0DD8
  sta a:$0B56
  sta a:$0B57
  stx a:$0B58
  stx a:$0B5A
  stx a:$0B5C
  sta a:$0B5E
  sta a:$0B62
  sta a:$0B63
  sta a:$0B6C
  stx a:$0B64
  stx a:$0B67
  stx a:$0B69
  sta a:$0B6B
  stx a:$0B6D
  stx a:$0B6F
  sta a:$0B71
  stx a:$0B72
  sta a:$0B74
  stx a:$0B75
  stx a:$0B77
  stx a:$0B79
  stx a:$0B7B
  stx a:$0B7D
  sta a:$0B7F
  sta a:$0B80
  sta a:$0B87
  sta a:$0B88
  sta a:$0DD9
  stx a:$0DDA
  stx a:$0DDC
  sta a:$0DDE
  stx a:$0DDF
  stx a:$0DE1
  stx a:$0DE3
  stx a:$0DE5
  stx a:$0DE7
  stx a:$0DE9
  stx a:$0DEB
  stx a:$0DED
  stx a:$0DEF
  sta a:$0DF1
  sta a:$0DF2
  sta a:$0DF3
  stx a:$0DF4
  sta a:$0DF6
  sta a:$0B86
  stx a:$0DF7
  stx a:$0DF9
  stx a:$0DFB
  stx a:$0DFD
  sta a:$0E09
  sta a:$0E04
  sta a:$0E05
  sta a:$0E07
  sta a:$0E08
  sta a:$0E06
  stx a:$0E0A
  stx a:$0E0C
  stx a:$0E0E
  stx a:$0E10
  stx a:$0E12
  stx a:$0E14
  sta a:$0E16
  lda #$13
  sta a:$0DD6
  sta a:$0DD7
  lda #$00
  sta a:$0DCC
  stx a:$0BA2
  stx a:$0BCE
  stx a:$0CB4
  ldy #$0B
EL_829A:
  sta a:$0B96,y
  dey
  bpl EL_829A
  ldy #$BF
EL_82A3:
  sta a:$0BD4,y
  dey
  bpl EL_82A3
  ldy #$1F
EL_82AC:
  sta a:$0C94,y
  dey
  bpl EL_82AC
  rts
EL_82B3:
  sep #$30
  lda #$09
.i8
  ldx #$18
  ldy #$4C
  stz z:$4C
  sta a:$4300
  lda #$00
  sta a:$2116
  sta a:$2117
  sta a:$420C
  stx a:$4301
  sty a:$4302
  sta a:$4303
  sta a:$4304
  sta a:$4305
  sta a:$4306
  ldx #$01
  stx a:$420B
  rts
EL_82E3:
  sep #$30
  lda #$08
  ldx #$22
  ldy #$4C
  sta a:$4300
  lda #$00
  sta z:$4C
  sta z:$4D
  sta a:$2121
  sta a:$420C
  stx a:$4301
  sty a:$4302
  sta a:$4303
  sta a:$4304
  sta a:$4305
  ldx #$02
  stx a:$4306
  ldx #$01
  stx a:$420B
  rts
EL_8314:
  rep #$30
.a16
  lda #$F000
.i16
  ldx #$00
  ldy #$80
EL_831F:
  sta a:$0900,x
  inx
  inx
  inx
  inx
  dey
  bne EL_831F
  lda #$00
  tax
  ldy #$10
EL_8330:
  sta a:$0B00,x
  inx
  inx
  dey
  bne EL_8330
  rts
  .byte $E2, $20, $C2, $10, $A2, $A0, $9A, $86, $CE, $A9, $00, $85, $D0, $20, $55, $B8
  .byte $60, $E2, $20, $78, $A9, $A1, $8D, $00, $42, $A9, $24, $8D, $09, $41, $9C, $0A
  .byte $41, $9C, $07, $41, $9C, $08, $41, $60
  sei
  rep #$30
  pha
  phx
  phy
  phb
  phd
  lda z:$4C
  pha
  lda z:$4E
  pha
  lda z:$50
  pha
  sep #$20
.a8
  lda #$00
  pha
  plb
  cmp a:$4210
  lda a:$0E09
  bne EL_83A0
  lda a:$0E04
  beq EL_8394
  lda a:$0E05
  sta a:$2140
  lda a:$0E06
  sta a:$2141
  stz a:$0E04
EL_8394:
  lda a:$0E07
  sta a:$2142
  lda a:$0E08
  sta a:$2143
EL_83A0:
  lda #$80
  sta a:$2100
  lda #$01
  sta a:$4200
  lda #$00
  sta a:$420C
  jsr EL_8829
  jsr EL_8870
  jsr EL_8B20
  jsr EL_8B58
  jsr EL_8C79
  jsr EL_8C97
  sep #$20
  lda a:$0B56
  beq EL_83EF
  lsr a
  bcc EL_83DA
  lda #$01
  sta z:$4C
  jsr EL_8430
  lda #$FE
  and a:$0B56
  sta a:$0B56
EL_83DA:
  lda a:$0B56
  and #$02
  sta a:$0B56
  beq EL_83EF
  lda a:$0B56
  sta z:$4C
  jsr EL_8457
  stz a:$0B56
EL_83EF:
  lda a:$0B57
  beq EL_83F7
  jsr EL_8488
EL_83F7:
  lda a:$0B74
  beq EL_8406
  bmi EL_8403
  jsr EL_8636
  bra EL_8406
EL_8403:
  jsr EL_87B0
EL_8406:
  jsr EL_8D07
  jsr EL_8C05
  stz a:$0B55
  sep #$20
  stz a:$0B55
  lda a:$0B3E
  sta a:$2100
  lda #$81
  sta a:$4200
  rep #$30
  pla
  sta z:$50
  pla
  sta z:$4E
  pla
  sta z:$4C
  pld
  plb
  ply
  plx
  pla
  rti
EL_8430:
  rep #$10
  sep #$20
  ldx #$4300
  stx z:$38
  stz a:$2102
  stz a:$0B20
  lda #$04
  sta a:$0B21
  ldx #$0900
  stx a:$0B22
  stz a:$0B24
  ldx #$0220
  stx a:$0B25
  jsr EL_8512
  rts
EL_8457:
  rep #$10
  sep #$20
  ldx #$4310
  stx z:$38
  lda a:$0B4A
  sta z:$30
  stz z:$31
  sta a:$2121
  stz a:$0B20
  lda #$22
  sta a:$0B21
  ldx a:$0B4B
  stx a:$0B22
  lda a:$0B4D
  sta a:$0B24
  ldx a:$0B4E
  stx a:$0B25
  jsr EL_8512
  rts
EL_8488:
  sep #$20
  rep #$10
  ldx #$4300
  stx z:$38
  ldx a:$0B72
  stx z:$30
  stx a:$2116
  lda #$80
  sta a:$2115
  lda a:$0B57
  sta a:$0B20
  bmi EL_84AA
  lda #$18
  bra EL_84AF
EL_84AA:
  lda a:$213A
  lda #$39
EL_84AF:
  sta a:$0B21
  ldx a:$0B6F
  stx a:$0B22
  lda a:$0B71
  sta a:$0B24
  rep #$20
  lda a:$0B6D
.a16
  cmp #$0800
  bcc EL_84D4
  sec
  sbc #$0800
  sta a:$0B6D
  lda #$0800
  bra EL_84DA
EL_84D4:
  ldx #$00
  stx a:$0B6D
EL_84DA:
  sta a:$0B25
  clc
  lda a:$0B72
  adc #$0400
  sta a:$0B72
  clc
  lda a:$0B6F
  adc #$0800
  bcc EL_84FD
  clc
  adc #$8000
  pha
  php
  sep #$20
  inc a:$0B71
  plp
  pla
EL_84FD:
  sta a:$0B6F
  sep #$20
.a8
  lda #$01
  sta z:$4C
  jsr EL_8512
  ldx a:$0B6D
  bne EL_8511
  stz a:$0B57
EL_8511:
  rts
EL_8512:
  rep #$10
  sep #$20
  phy
  phx
  ldx #$01
  stz a:$0DFF
  rep #$20
  lda a:$0B25
  sta z:$4E
  sta z:$50
  dec a
  clc
  adc a:$0B22
  bcc EL_857A
  bne EL_8546
  lda a:$0B22
.a16
  cmp #$FFFF
  beq EL_8539
  inx
EL_8539:
  dec a:$0B25
  dec a:$0B25
  sep #$20
  inc a:$0DFF
  bra EL_856D
EL_8546:
  rep #$30
  inx
  sta z:$4E
  inc z:$4E
  lda z:$50
  sec
  sbc z:$4E
  sta z:$50
  lsr a
  bcc EL_8575
  lda z:$50
  cmp #$01
  beq EL_855F
  inx
EL_855F:
  dec a
  sta a:$0B25
  dec z:$4E
  sep #$20
  inc a:$0DFF
  inc a:$0DFF
EL_856D:
  lda a:$0B21
  sta a:$0E00
  bra EL_857A
EL_8575:
  lda z:$50
  sta a:$0B25
EL_857A:
  sep #$20
  txa
  cmp a:$0DFF
  bne EL_8587
  jsr EL_85B5
  bra EL_859A
EL_8587:
  ldy #$00
EL_858A:
  lda a:$0B20,y
  sta ($38),y
  iny
  cpy #$07
  bne EL_858A
  lda z:$4C
  sta a:$420B
EL_859A:
  dex
  beq EL_85B2
  lda a:$0DFF
  bne EL_857A
  inc a:$0B24
  ldy #$8000
  sty a:$0B22
  ldy z:$4E
  sty a:$0B25
  bra EL_857A
EL_85B2:
  plx
  ply
  rts
EL_85B5:
  rep #$30
  phx
  lda a:$0B25
  lsr a
  clc
  adc z:$30
  sta z:$30
  sep #$20
  lda a:$0B24
  sta z:$34
  inc a
  sta z:$37
  lda a:$0E00
.a8
  cmp #$18
  beq EL_85DD
  cmp #$22
  beq EL_85F7
  cmp #$39
  beq EL_8608
EL_85DA:
  nop
  bra EL_85DA
EL_85DD:
  lda #$80
  sta a:$2115
  ldx z:$30
  stx a:$2116
  lda [$32]
  sta a:$2118
  lda [$35]
  sta a:$2119
  inx
  stx a:$2116
  bra EL_8626
EL_85F7:
  lda z:$30
  sta a:$2121
  lda [$32]
  sta a:$2122
  lda [$35]
  sta a:$2122
  bra EL_8626
EL_8608:
  lda #$80
  sta a:$2115
  ldx z:$30
  stx a:$2116
  lda a:$213A
  lda a:$2139
  sta [$32]
  lda a:$213A
  sta [$35]
  inx
  stx a:$2116
  lda a:$213A
EL_8626:
  inc a:$0B24
  ldx #$8001
  stx a:$0B22
  ldx z:$4E
  stx a:$0B25
  plx
  rts
EL_8636:
  rep #$10
  sep #$20
  lda a:$0B74
  lsr a
  bcs EL_8655
  lda a:$0B74
  cmp #$02
  beq EL_864E
  php
  jsr EL_865E
  plp
  bra EL_865A
EL_864E:
  php
  jsr EL_86AA
  plp
  bra EL_865A
EL_8655:
  php
  jsr EL_8713
  plp
EL_865A:
  stz a:$0B74
  rts
EL_865E:
  rep #$10
  sep #$20
  lda #$00
  sta a:$2115
  ldx a:$0B7B
  stx a:$2116
  ldx #$1808
  stx a:$4310
  ldx #$0B7D
  stx a:$4312
  stz a:$4314
  ldx #$0400
  stx a:$4315
  lda #$02
  sta a:$420B
  lda #$80
  sta a:$2115
  stx a:$4315
  ldx a:$0B7B
  stx a:$2116
  ldx #$1908
  stx a:$4310
  ldx #$0B7E
  stx a:$4312
  stz a:$4314
  lda #$02
  sta a:$420B
  rts
EL_86AA:
  rep #$10
  sep #$20
  ldy a:$0B77
  ldx a:$0B7B
  stx a:$0B79
EL_86B7:
  sep #$20
  lda #$00
  sta a:$2115
  ldx a:$0B79
  stx a:$2116
  ldx #$1808
  stx a:$4310
  ldx #$0B7D
  stx a:$4312
  stz a:$4314
  ldx a:$0B75
  stx a:$4315
  lda #$02
  sta a:$420B
  lda #$80
  sta a:$2115
  stx a:$4315
  ldx a:$0B79
  stx a:$2116
  ldx #$1908
  stx a:$4310
  ldx #$0B7E
  stx a:$4312
  stz a:$4314
  lda #$02
  sta a:$420B
  nop
  dey
  beq EL_8712
  rep #$20
  lda a:$0B79
  clc
.a16
  adc #$20
  sta a:$0B79
  bra EL_86B7
EL_8712:
  rts
EL_8713:
  rep #$10
  sep #$20
  lda a:$0E19
  beq EL_8721
.a8
  lda #$81
  jmp EL_8723
EL_8721:
  lda #$80
EL_8723:
  sta a:$2115
  ldx a:$0B7B
  stx a:$0B79
  stx z:$30
  ldy a:$0B77
  rep #$20
  lda a:$0B75
  asl a
  sta a:$0B75
.a16
  lda #$4300
  sta z:$38
EL_873F:
  sep #$20
  ldx #$1801
  stx a:$0B20
  ldx z:$3A
  stx a:$0B22
  lda z:$3C
  sta a:$0B24
  ldx a:$0B75
  stx a:$0B25
  ldx z:$30
  stx a:$2116
.a8
  lda #$01
  sta z:$4C
  jsr EL_8512
  dey
  beq EL_87A5
  bmi EL_87A5
  rep #$20
  lda z:$3A
  clc
  adc a:$0B75
  sta z:$3A
  bcc EL_877F
.a16
  ora #$8000
  sta z:$3A
  sep #$20
  inc z:$3C
  rep #$20
EL_877F:
  lda a:$0B79
  clc
  adc #$01
  sta a:$0B79
  sep #$20
  lda a:$0E19
  bne EL_879C
  rep #$20
  lda a:$0B79
  clc
  adc #$1F
  sta a:$0B79
EL_879C:
  rep #$20
  lda a:$0B79
  sta z:$30
  bra EL_873F
EL_87A5:
  sep #$20
  lda a:$0DD8
  beq EL_87AF
  stz a:$0B74
EL_87AF:
  rts
EL_87B0:
  rep #$10
  sep #$20
.a8
  lda #$80
  sta a:$2115
  ldx a:$0B7B
  stx a:$0B79
  stx z:$30
  ldy a:$0B77
  rep #$20
  lda a:$0B75
  asl a
  sta a:$0B75
.a16
  lda #$4300
  sta z:$38
EL_87D2:
  sep #$20
  ldx #$3981
  stx a:$0B20
  ldx z:$3A
  stx a:$0B22
  lda z:$3C
  sta a:$0B24
  ldx a:$0B75
  stx a:$0B25
  ldx z:$30
  stx a:$2116
.a8
  lda #$01
  sta z:$4C
  lda a:$213A
  jsr EL_8512
  dey
  beq EL_8823
  bmi EL_8823
  rep #$20
  lda z:$3A
  clc
  adc a:$0B75
  sta z:$3A
  bcc EL_8815
.a16
  ora #$8000
  sta z:$3A
  sep #$20
  inc z:$3C
  rep #$20
EL_8815:
  lda a:$0B79
  clc
  adc #$20
  sta a:$0B79
  sta z:$30
  bra EL_87D2
EL_8823:
  sep #$20
  stz a:$0B74
  rts
EL_8829:
  rep #$10
  sep #$20
  lda a:$0B62
  bne EL_883E
  lda a:$0B63
  beq EL_886F
.a8
  lda #$00
  sta a:$0B63
  bra EL_885F
EL_883E:
  dec a:$0B6C
  bne EL_886F
  lda #$0A
  sta a:$0B6C
  lda a:$0B63
  eor #$FF
  sta a:$0B63
  beq EL_885F
  ldx a:$0B64
  lda a:$0B66
  sta a:$0901,x
  lda #$01
  bra EL_8869
EL_885F:
  ldx a:$0B64
  lda #$F0
  sta a:$0901,x
  lda #$01
EL_8869:
  ora a:$0B56
  sta a:$0B56
EL_886F:
  rts
EL_8870:
  rep #$10
  sep #$20
  lda a:$0B87
  beq EL_88CA
  cmp #$01
  bne EL_8894
  lda a:$0B88
  beq EL_8891
  ldx a:$0BA4
  stx a:$0BA6
  ldx #$00
  stx a:$0BAA
  stz a:$0B88
EL_8891:
  jmp EL_88E6
EL_8894:
  cmp #$02
  bne EL_88AF
  lda a:$0B88
  beq EL_88AC
  ldx a:$0BAF
  stx a:$0BB1
  ldx #$00
  stx a:$0BB5
  stz a:$0B88
EL_88AC:
  jmp EL_899E
EL_88AF:
  cmp #$03
  bne EL_88CA
  lda a:$0B88
  beq EL_88C7
  ldx a:$0BD2
  stx a:$0CB6
  ldx #$00
  stx a:$0CB8
  stz a:$0B88
EL_88C7:
  jmp EL_8A02
EL_88CA:
  cmp #$04
  bne EL_88E5
  lda a:$0B88
  beq EL_88E2
  ldx a:$0CC6
  stx a:$0DC8
  ldx #$00
  stx a:$0DCA
  stz a:$0B88
EL_88E2:
  jmp EL_8A81
EL_88E5:
  rts
EL_88E6:
  rep #$30
  lda a:$0BA6
  cmp a:$0BA4
  bcs EL_88F3
  jmp EL_899A
EL_88F3:
  ldx #$00
  stx a:$0BA6
  lda a:$0BAA
  cmp a:$0BA8
  bcc EL_8908
  bne EL_8908
  stx a:$0BAA
  bra EL_890B
EL_8908:
  inc a:$0BAA
EL_890B:
  dec a
  bmi EL_8916
  inx
  inx
  inx
  bra EL_890B
  .byte $4C, $9A, $89
EL_8916:
  ldy a:$0B92
  sep #$20
  lda #$01
  sta a:$0B20
  lda #$18
  sta a:$0B21
  lda a:$0B96,x
  sta a:$0B22
  sta a:$0BAC
  lda a:$0B97,x
  sta a:$0B23
  sta a:$0BAD
  lda a:$0B98,x
  sta a:$0B24
  sta a:$0BAE
  ldx #$4300
  stx z:$38
  lda #$01
  sta z:$4C
  ldx a:$0BA2
  stx z:$30
  stx a:$2116
  rep #$20
  lda a:$0B90
  asl a
  sta a:$0B25
EL_895A:
  php
  jsr EL_8512
  plp
  dey
  beq EL_899D
.a16
  lda #$1801
  sta a:$0B20
  lda a:$0B90
  asl a
  sta a:$0B25
  clc
  adc a:$0BAC
  ora #$8000
  sta a:$0BAC
  sta a:$0B22
  bcc EL_8983
  sep #$20
  inc a:$0BAE
EL_8983:
  sep #$20
  lda a:$0BAE
  sta a:$0B24
  rep #$20
  txa
  clc
  adc #$20
  tax
  sta z:$30
  sta a:$2116
  bra EL_895A
EL_899A:
  inc a:$0BA6
EL_899D:
  rts
EL_899E:
  rep #$30
  lda a:$0BB1
  cmp a:$0BAF
  bcs EL_89AD
  inc a:$0BB1
  bra EL_8A01
EL_89AD:
  ldy #$00
  ldx a:$0BB9
  stz a:$0BB1
  lda a:$0BB5
  bne EL_89CF
  sep #$20
EL_89BD:
  lda a:$0BBB,y
  sta a:$0902,x
  inx
  inx
  inx
  inx
  iny
  cpy a:$0BB7
  bcc EL_89BD
  bra EL_89E5
EL_89CF:
  sep #$20
EL_89D1:
  lda a:$0BC3,y
  clc
  adc a:$0902,x
  sta a:$0902,x
  inx
  inx
  inx
  inx
  iny
  cpy a:$0BB7
  bcc EL_89D1
EL_89E5:
  rep #$20
  inc a:$0BB5
  lda a:$0BB5
  cmp a:$0BB3
  bcc EL_89F7
  beq EL_89F7
  stz a:$0BB5
EL_89F7:
  sep #$20
.a8
  lda #$01
  ora a:$0B56
  sta a:$0B56
EL_8A01:
  rts
EL_8A02:
  rep #$30
  lda a:$0CB6
  cmp a:$0BD2
  bcc EL_8A7B
  ldx #$00
  txy
  stx a:$0CB6
  lda a:$0CB8
  cmp a:$0BD0
  bcc EL_8A20
  stz a:$0CB8
  bra EL_8A23
EL_8A20:
  inc a:$0CB8
EL_8A23:
  dec a
  bmi EL_8A2B
  inx
  inx
  inx
  bra EL_8A23
EL_8A2B:
.a16
  lda #$10
  sta a:$0CBA
  lda a:$0BCE
  and a:$0CB4
EL_8A37:
  lsr a
  pha
  bcc EL_8A6D
  lda #$1801
  sta a:$0B20
  lda a:$0BD5,x
  sta a:$0B23
  lda a:$0BD4,x
  sta a:$0B22
  lda #$20
  sta a:$0B25
  lda a:$0C94,y
  sta a:$2116
  sta z:$30
  lda #$4300
  sta z:$38
  sep #$20
.a8
  lda #$01
  sta z:$4C
  php
  jsr EL_8512
  plp
  rep #$20
EL_8A6D:
  txa
  clc
.a16
  adc #$0C
  tax
  iny
  iny
  pla
  dec a:$0CBA
  bne EL_8A37
EL_8A7B:
  rep #$20
  inc a:$0CB6
  rts
EL_8A81:
  rep #$30
  lda a:$0DC8
  cmp a:$0CC6
  bcs EL_8A8E
  jmp EL_8B1A
EL_8A8E:
  lda a:$0CB4
  bne EL_8A96
  jmp EL_8B1A
EL_8A96:
  ldx #$00
  txy
  stx a:$0DC8
  lda a:$0DCA
  pha
  cmp a:$0CC4
  bcc EL_8AAB
  stz a:$0DCA
  bra EL_8AAE
EL_8AAB:
  inc a:$0DCA
EL_8AAE:
  tax
EL_8AAF:
  dex
  bmi EL_8ABD
  tya
  clc
  adc a:$0CC0
  adc a:$0CC0
  tay
  bra EL_8AAF
EL_8ABD:
  lda a:$0CB4
  and #$01
  beq EL_8AE1
  ldx a:$0CC0
  sep #$20
  lda a:$0CBC
  sta a:$2121
EL_8AD0:
  lda a:$0CC8,y
  sta a:$2122
  iny
  lda a:$0CC8,y
  sta a:$2122
  iny
  dex
  bne EL_8AD0
EL_8AE1:
  rep #$20
  pla
  tax
  ldy #$80
EL_8AE8:
  dex
  bmi EL_8AF6
  tya
  clc
  adc a:$0CC2
  adc a:$0CC2
  tay
  bra EL_8AE8
EL_8AF6:
  lda a:$0CB4
  and #$02
  beq EL_8B1A
  ldx a:$0CC2
  sep #$20
  lda a:$0CBE
  sta a:$2121
EL_8B09:
  lda a:$0CC8,y
  sta a:$2122
  iny
  lda a:$0CC8,y
  sta a:$2122
  iny
  dex
  bne EL_8B09
EL_8B1A:
  rep #$20
  inc a:$0DC8
  rts
EL_8B20:
  sep #$20
  lda a:$0DCC
  beq EL_8B57
  rep #$10
  ldx a:$0DCE
  cpx a:$0DD0
  bne EL_8B52
  lda a:$0DCD
  bne EL_8B3E
  ldx a:$0DD2
  inc a:$0DCD
  bra EL_8B44
EL_8B3E:
  ldx a:$0DD4
  stz a:$0DCD
EL_8B44:
  stx a:$212C
  stx a:$0DD6
  ldx #$00
  stx a:$0DCE
  bra EL_8B57
EL_8B52:
  rep #$20
  inc a:$0DCE
EL_8B57:
  rts
EL_8B58:
  rep #$10
  sep #$20
  lda a:$0B7F
  sta a:$2106
  lda a:$0B86
  beq EL_8B8E
  stz a:$0B86
  ldx #$00
EL_8B6D:
  dec a:$0B81
  beq EL_8B76
  inx
  inx
  bra EL_8B6D
EL_8B76:
  lda a:$0B82
  sta a:$210D,x
  lda a:$0B83
  sta a:$210D,x
  lda a:$0B84
  sta a:$210E,x
  lda a:$0B85
  sta a:$210E,x
EL_8B8E:
  ldx a:$0E0A
  beq EL_8C04
  rep #$30
  lda a:$0E17
  cmp a:$0E14
  bcs EL_8BA2
  inc a:$0E17
  bra EL_8C04
EL_8BA2:
  stz a:$0E17
  lda a:$0E0C
  clc
  adc a:$0E10
  and #$03FF
  sta a:$0E0C
  lda a:$0E0E
  clc
  adc a:$0E12
  and #$03FF
  sta a:$0E0E
  sep #$20
  ldx #$00
  lda a:$0E16
  bne EL_8BCE
  ldy #$01
  bra EL_8BD8
EL_8BCE:
  ldy #$00
EL_8BD1:
  dec a
  beq EL_8BD8
  inx
  inx
  bra EL_8BD1
EL_8BD8:
  lda a:$0E0C
  sta a:$210D,x
  lda a:$0E0D
  sta a:$210D,x
  lda a:$0E0E
  sta a:$210E,x
  lda a:$0E0F
  sta a:$210E,x
  cpy #$00
  beq EL_8BFD
  ldy #$00
  ldx #$02
  bra EL_8BD8
EL_8BFD:
  rep #$30
  dec a:$0E0A
  sep #$20
EL_8C04:
  rts
EL_8C05:
  sep #$20
  rep #$10
  lda a:$0DDA
  beq EL_8C3E
  lda a:$0DD9
.a8
  and #$80
  beq EL_8C3E
  lda a:$0DDC
  sta a:$2123
  lda a:$0DDD
  sta a:$2124
  lda a:$0DDE
  sta a:$2125
  lda #$01
  sta a:$4370
  lda #$26
  sta a:$4371
  ldx #$0DDF
  stx a:$4372
  stz a:$4374
  lda #$80
  bra EL_8C6D
EL_8C3E:
  lda a:$0DF1
  beq EL_8C6D
  lda a:$0DD9
  and #$20
  beq EL_8C6D
  lda a:$0DF2
  sta a:$4350
  lda a:$0DF3
  sta a:$4351
  ldx a:$0DF4
  stx a:$4352
  lda a:$0DF6
  sta a:$4354
  sta a:$4357
  stz a:$0DF1
  lda #$20
  sta a:$420C
EL_8C6D:
  lda a:$0DD9
  sta a:$420C
  lda #$02
  sta a:$0DDA
  rts
EL_8C79:
  rep #$30
  lda a:$0DF7
  beq EL_8C93
  ldx a:$0DFD
  ldy a:$0DFB
  lda a:$0DF9
EL_8C89:
  sta a:$2116
  sty a:$2118
  inc a
  dex
  bne EL_8C89
EL_8C93:
  stz a:$0DF7
  rts
EL_8C97:
  sep #$30
  lda a:$0E03
  beq EL_8CD1
  ldx a:$0B42
  ldy a:$0B43
  stx a:$211B
  sty a:$211B
  ldx a:$0B44
  ldy a:$0B45
  stx a:$211C
  sty a:$211C
  ldx a:$0B46
  ldy a:$0B47
  stx a:$211D
  sty a:$211D
  ldx a:$0B48
  ldy a:$0B49
  stx a:$211E
  sty a:$211E
  stz a:$0E03
EL_8CD1:
  rts
EL_8CD2:
  rep #$10
  sep #$20
  sta a:$0B3E
  sta a:$2100
  rts
  .byte $C2, $30, $8D, $02, $42, $EA, $EA, $EA, $EA, $AD, $16, $42, $60
EL_8CEA:
  rep #$10
  sep #$20
  stx a:$4204
  sta a:$4206
  lda #$03
EL_8CF6:
  nop
  dec a
  bne EL_8CF6
  ldx a:$4214
  stx a:$0B58
  ldx a:$4216
  stx a:$0B5A
  rts
EL_8D07:
  rep #$10
  sep #$20
EL_8D0B:
  lda a:$4212
  lsr a
  bcs EL_8D0B
  ldx a:$4218
  stx a:$0B51
  ldx a:$421A
  stx a:$0B53
  rts
EL_8D1E:
  rep #$10
  sep #$20
  ldx #$4300
  stx z:$38
  stz a:$2102
  stz a:$0B20
  lda #$04
  sta a:$0B21
  ldx #$0900
  stx a:$0B22
  stz a:$0B24
  ldx #$0220
  stx a:$0B25
  lda #$01
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  rts
EL_8D4C:
  rep #$10
  sep #$20
  ldx #$4310
  stx z:$38
  lda a:$0B4A
  sta z:$30
  stz z:$31
  sta a:$2121
  stz a:$0B20
  lda #$22
  sta a:$0B21
  ldx a:$0B4B
  stx a:$0B22
  lda a:$0B4D
  sta a:$0B24
  ldx a:$0B4E
  stx a:$0B25
  lda #$02
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  rts
EL_8D84:
  sep #$20
  rep #$10
  lda z:$4E
  pha
  lda z:$50
  pha
  lda #$80
  sta a:$2115
  ldx #$4300
  stx z:$38
  ldx a:$0B72
  stx z:$30
  stx a:$2116
  lda a:$0B57
  sta a:$0B20
  bmi EL_8DAC
  lda #$18
  bra EL_8DB1
EL_8DAC:
  lda a:$213A
  lda #$39
EL_8DB1:
  sta a:$0B21
  ldx a:$0B6F
  stx a:$0B22
  lda a:$0B71
  sta a:$0B24
  rep #$20
  lda a:$0B6D
  sta a:$0B25
  sep #$20
  lda #$01
  sta z:$4C
  jsr EL_8512
  stz a:$0B57
  rep #$20
  pla
  sta z:$50
  pla
  sta z:$4E
  rts
EL_8DDD:
  php
  rep #$30
  pha
  phx
  phy
  phb
  sep #$20
  lda #$00
  pha
  plb
  rep #$20
.a16
  lda #$00
  sta z:$68
  lda a:$0052
  and #$FF
  asl a
  tax
  jsr ($99F0,x)
  rep #$30
  plb
  ply
  plx
  pla
  plp
  rts
EL_8E04:
  php
  rep #$30
  pha
  phx
  phy
  phb
  sep #$20
.a8
  lda #$00
  pha
  plb
  rep #$20
.a16
  lda #$00
  sta z:$68
  lda a:$0052
  and #$FF
  asl a
  tax
  jsr ($99F0,x)
  rep #$30
  lda z:$68
  sta z:$0A
  plb
  ply
  plx
  pla
  plp
  rtl
EL_8E2F:
  sep #$30
  lda z:$54
  sta z:$3D
  lda z:$55
  sta z:$3E
.a8
  lda #$7E
  sta z:$3F
  rts
  sep #$20
  lda #$8F
  jsr EL_8CD2
  stz a:$0DD8
  inc a:$0DD8
  stz a:$4200
  lda #$04
  sta a:$2133
  jsr EL_8E2F
  sep #$30
.i8
  ldy #$00
  lda [$3D],y
  sta a:$0B3F
  sta a:$2101
  tax
  and #$03
  asl a
  asl a
  asl a
  asl a
  asl a
  stz a:$0B2A
  sta a:$0B2B
  txa
  and #$18
  lsr a
  lsr a
  lsr a
  tax
  lda #$00
  clc
EL_8E7A:
  adc #$10
  dex
  bpl EL_8E7A
  adc a:$0B2B
  and #$70
  stz a:$0B2C
  sta a:$0B2D
  lda [$3D],y
  lsr a
  lsr a
  lsr a
  lsr a
  lsr a
  tax
  lda a:$9A9A,x
  sta a:$0B40
  iny
  iny
  lda [$3D],y
  sta a:$2105
  sta a:$0B29
  iny
  iny
  lda [$3D],y
  sta a:$2107
  and #$FC
  stz a:$0B2E
  sta a:$0B2F
  iny
  iny
  lda [$3D],y
  sta a:$2108
  and #$FC
  stz a:$0B30
  sta a:$0B31
  iny
  iny
  lda [$3D],y
  sta a:$2109
  and #$FC
  stz a:$0B32
  sta a:$0B33
  iny
  iny
  lda [$3D],y
  sta a:$210A
  and #$FC
  stz a:$0B34
  sta a:$0B35
  iny
  iny
  lda [$3D],y
  sta a:$210B
  and #$F0
  stz a:$0B38
  sta a:$0B39
  lda [$3D],y
  asl a
  asl a
  asl a
  asl a
  stz a:$0B36
  sta a:$0B37
  iny
  iny
  lda [$3D],y
  sta a:$210C
  and #$F0
  stz a:$0B3C
  sta a:$0B3D
  lda [$3D],y
  asl a
  asl a
  asl a
  asl a
  stz a:$0B3A
  sta a:$0B3B
  rts
  sep #$30
  jsr EL_8E2F
  rep #$10
  sep #$20
  stz a:$0B56
  lda #$04
  sta a:$2133
  lda a:$0DD6
  sta a:$212C
  lda a:$0DD7
  sta a:$212D
  sta a:$0B41
  stz a:$420C
  stz a:$420B
.i16
  ldx #$4300
  stx z:$38
  lda #$01
  xba
  ldx a:$0B2E
  stx z:$30
  stx a:$2116
  lda #$18
  ldy #$00
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$02
  xba
  lda #$10
  sta z:$38
  ldx a:$0B30
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$04
  xba
  lda #$20
  sta z:$38
  ldx a:$0B32
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$80
  sta a:$2115
  ldx a:$0B32
  stx a:$2116
  ldx #$0400
EL_8FAA:
  stz a:$2118
  stz a:$2119
  dex
  bne EL_8FAA
  lda #$08
  xba
  lda #$30
  sta z:$38
  ldx a:$0B2A
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$10
  xba
  lda #$40
  sta z:$38
  ldx a:$0B2C
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$20
  xba
  lda #$50
  sta z:$38
  ldx a:$0B36
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$40
  xba
  lda #$60
  sta z:$38
  ldx a:$0B38
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$80
  xba
  lda #$70
  sta z:$38
  stz z:$30
  stz z:$31
  stz a:$2121
  lda #$22
  jsr EL_9058
  lda a:$0B56
  sta z:$4C
  jsr EL_8512
  stz a:$0B56
  lda #$0F
  jsr EL_8CD2
  lda #$81
  sta a:$4200
  rts
EL_9058:
  rep #$10
  sep #$20
  stz a:$0B20
  cmp #$18
  beq EL_9068
  sta a:$0B21
  bra EL_906E
EL_9068:
  sta a:$0B21
  inc a:$0B20
EL_906E:
  lda [$3D],y
  sta a:$0B22
  iny
  lda [$3D],y
  sta a:$0B23
  iny
  lda [$3D],y
  sta a:$0B24
  iny
  iny
  lda [$3D],y
  iny
  lsr a
  bcs EL_9097
  asl a
  sta a:$0B25
  lda [$3D],y
  sta a:$0B26
  xba
  ora a:$0B56
  sta a:$0B56
EL_9097:
  iny
  rts
EL_9099:
  sep #$20
  rep #$10
  lda z:$54
  sta a:$0B4B
  lda z:$55
  sta a:$0B4C
  lda z:$56
  sta a:$0B4D
  lda z:$58
  sta a:$0B4A
  ldx z:$5A
  stx a:$0B4E
  lda #$02
  ora a:$0B56
  sta a:$0B56
  lda a:$0DD8
  beq EL_90C9
  jsr EL_8D4C
  stz a:$0B56
EL_90C9:
  lda a:$0B56
  and #$02
  bne EL_90C9
  rts
  rep #$30
  lda z:$54
.a16
  cmp #$01
  beq EL_90E4
  cmp #$02
  beq EL_90E9
  ldy a:$0B32
  bra EL_90EC
EL_90E4:
  ldy a:$0B2E
  bra EL_90EC
EL_90E9:
  ldy a:$0B30
EL_90EC:
  sty a:$0B7B
  lda #$00
  ldx z:$56
  clc
  beq EL_90FD
EL_90F7:
  adc #$0400
  dex
  bne EL_90F7
EL_90FD:
  adc a:$0B7B
  sta a:$0B7B
  lda z:$58
  sta a:$0B7D
  lda #$20
  sta a:$0B75
  sta a:$0B77
  sep #$20
.a8
  lda #$04
  sta a:$0B74
  lda a:$0DD8
  beq EL_9124
  php
  jsr EL_9193
  plp
  bra EL_912B
EL_9124:
  lda a:$0B74
  and #$04
  bne EL_9124
EL_912B:
  rts
EL_912C:
  sep #$20
  rep #$10
  ldx z:$5C
  stx a:$0B77
  ldx z:$5A
  stx a:$0B75
  lda z:$54
  cmp #$01
  bne EL_9145
  ldy a:$0B2E
  bra EL_9151
EL_9145:
  cmp #$02
  bne EL_914E
  ldy a:$0B30
  bra EL_9151
EL_914E:
  ldy a:$0B32
EL_9151:
  sty a:$0B7B
  rep #$20
  lda z:$58
  asl a
  asl a
  asl a
  asl a
  asl a
  clc
  adc a:$0B7B
  sta a:$0B7B
  lda z:$56
  clc
  adc a:$0B7B
  sta a:$0B7B
  rts
  jsr EL_912C
  rep #$30
  lda z:$5E
  sta a:$0B7D
  sep #$20
  lda #$02
  sta a:$0B74
  lda a:$0DD8
  beq EL_918B
  php
  jsr EL_9193
  plp
  bra EL_9192
EL_918B:
  lda a:$0B74
  and #$02
  bne EL_918B
EL_9192:
  rts
EL_9193:
  rep #$10
  sep #$20
  lda #$80
  sta a:$2115
  rep #$20
EL_919E:
  ldx a:$0B7B
  stx a:$2116
  ldy a:$0B75
EL_91A7:
  ldx a:$0B7D
  stx a:$2118
  dey
  bne EL_91A7
  clc
.a16
  lda #$20
  adc a:$0B7B
  sta a:$0B7B
  dec a:$0B77
  bne EL_919E
  sep #$20
  stz a:$0B74
  rts
EL_91C5:
  jsr EL_912C
  rep #$10
  sep #$20
  ldx z:$5E
  stx z:$3A
  lda z:$60
  sta z:$3C
.a8
  lda #$01
  sta a:$0B74
  lda a:$0DD8
  beq EL_91E8
EL_91DE:
  lda a:$0B74
  beq EL_91EF
  jsr EL_8713
  bra EL_91DE
EL_91E8:
  lda a:$0B74
  and #$01
  bne EL_91E8
EL_91EF:
  rts
  jsr EL_912C
  rep #$30
  lda z:$5E
  sta z:$3A
  sep #$20
  lda z:$60
  sta z:$3C
  lda #$80
  sta a:$0B74
EL_9204:
  lda a:$0B74
  and #$80
  bne EL_9204
  rts
  rep #$10
  sep #$20
  lda #$F0
  ldx #$00
  ldy #$80
EL_9218:
  sta a:$0901,x
  inx
  inx
  inx
  inx
  dey
  bne EL_9218
  lda #$01
  ora a:$0B56
  sta a:$0B56
  rts
EL_922B:
  rep #$30
  pha
  phx
.a16
  lda #$8000
  sta a:$0E01
  sta z:$3D
  ldy #$00
  sep #$20
  inc z:$3F
  rep #$20
  plx
  pla
  rts
EL_9243:
  rep #$10
  sep #$20
.a8
  lda #$04
  ldx z:$54
  php
  jsr EL_8CEA
  plp
  ldx z:$5E
  stx z:$3D
  lda z:$62
  sta z:$3F
  lda z:$5A
  sta a:$0B60
  xba
  lda z:$5C
  sta a:$0B61
  sta a:$4202
  xba
  sta a:$4203
  nop
  nop
  nop
  nop
  ldx a:$4216
  stx a:$0B5C
  rep #$20
  lda z:$54
  asl a
  asl a
  tax
.a16
  lda #$00
  sec
  sbc z:$3D
  sta a:$0E01
  sep #$20
  lda z:$60
.a8
  and #$02
  beq EL_9293
  lda a:$0B40
  and #$0F
  bra EL_929C
EL_9293:
  lda a:$0B40
  and #$F0
  lsr a
  lsr a
  lsr a
  lsr a
EL_929C:
  asl a
  asl a
  asl a
  sta a:$0B5F
  ldy #$00
EL_92A5:
  dec a:$0B61
  bmi EL_92F2
  lda z:$56
EL_92AC:
  pha
  sta a:$0900,x
  lda z:$58
  sta a:$0901,x
  lda [$3D],y
  sta a:$0902,x
  iny
  cpy a:$0E01
  bne EL_92C5
  php
  jsr EL_922B
  plp
EL_92C5:
  lda [$3D],y
  sta a:$0903,x
  iny
  cpy a:$0E01
  bne EL_92D5
  php
  jsr EL_922B
  plp
EL_92D5:
  pla
  clc
  adc a:$0B5F
  inx
  inx
  inx
  inx
  dec a:$0B60
  bne EL_92AC
  lda z:$58
  clc
  adc a:$0B5F
  sta z:$58
  lda z:$5A
  sta a:$0B60
  bra EL_92A5
EL_92F2:
  lda z:$60
  ldy a:$0B5A
  cpy #$04
  beq EL_92FE
  bra EL_9307
EL_92FE:
  ldy #$00
  sty a:$0B5A
  inc a:$0B58
EL_9307:
  dey
  bmi EL_930E
  asl a
  asl a
  bra EL_9307
EL_930E:
  xba
  ldy a:$0B5A
  inc a:$0B5A
  ldx a:$0B58
  lda a:$9A96,y
  and a:$0B00,x
  sta a:$0B00,x
  xba
  ora a:$0B00,x
  sta a:$0B00,x
  dec a:$0B5C
  bne EL_92F2
  lda #$01
  ora a:$0B56
  sta a:$0B56
  lda a:$0DD8
  beq EL_9340
  jsr EL_8D1E
  stz a:$0B56
EL_9340:
  rts
EL_9341:
  rep #$10
  sep #$20
  lda #$04
  ldx z:$54
  php
  jsr EL_8CEA
  plp
  rep #$20
  lda z:$54
  asl a
  asl a
  tay
  sep #$20
  lda #$FE
  and a:$0B56
  sta a:$0B56
  lda z:$56
  sta a:$0900,y
  iny
  lda z:$58
  sta a:$0900,y
  iny
  lda z:$5A
  sta a:$0900,y
  iny
  lda z:$5B
  sta a:$0900,y
  ldx a:$0B58
  ldy a:$0B5A
  lda a:$9A96,y
  and a:$0B00,x
  sta a:$0B00,x
  lda z:$5C
EL_9387:
  dey
  bmi EL_938E
  asl a
  asl a
  bra EL_9387
EL_938E:
  ora a:$0B00,x
  sta a:$0B00,x
  rts
  rep #$10
  sep #$20
  lda z:$5E
  beq EL_93B5
  lda z:$58
  sta a:$0B66
  rep #$20
  lda z:$54
  asl a
  asl a
  sta a:$0B64
  jsr EL_9341
  sep #$20
  lda #$01
  sta a:$0B6C
EL_93B5:
  sta a:$0B62
  rts
EL_93B9:
  rep #$30
  lda z:$54
  asl a
  asl a
  asl a
  asl a
  sta a:$0B72
  lda z:$56
  asl a
  asl a
  asl a
  asl a
  asl a
  sta a:$0B6D
EL_93CE:
  lda z:$58
  sta a:$0B6F
  sep #$20
  lda z:$5A
  sta a:$0B71
  rts
EL_93DB:
  rep #$30
  lda z:$54
  asl a
  asl a
  asl a
  sta a:$0B72
  lda z:$56
  asl a
  asl a
  asl a
  asl a
  sta a:$0B6D
  jmp EL_93CE
EL_93F1:
  lda z:$5C
.a16
  cmp #$03
  bne EL_9402
  jsr EL_93DB
  rep #$20
  lda a:$0B3A
  bra EL_941B
EL_9402:
  jsr EL_93B9
  rep #$10
  sep #$20
  lda z:$5C
.a8
  cmp #$01
  beq EL_9416
  rep #$20
  lda a:$0B38
  bra EL_941B
EL_9416:
  rep #$20
  lda a:$0B36
EL_941B:
  clc
  adc a:$0B72
  sta a:$0B72
  sep #$20
  lda #$01
  ora a:$0B57
  sta a:$0B57
  lda a:$0DD8
  beq EL_9436
  jsr EL_8D84
  bra EL_943D
EL_9436:
  lda a:$0B57
  and #$01
  bne EL_9436
EL_943D:
  rts
  lda z:$5C
.a16
  cmp #$D003
  asl a
  jsr EL_93DB
  rep #$20
  lda a:$0B3A
  bra EL_9467
  .byte $20, $B9, $93, $C2, $10, $E2, $20, $A5, $5C, $C9, $01, $F0, $07, $C2, $20, $AD
  .byte $38, $0B, $80, $05, $C2, $20, $AD, $36, $0B
EL_9467:
  clc
  adc a:$0B72
  sta a:$0B72
  sep #$20
.a8
  lda #$81
  ora a:$0B57
  sta a:$0B57
  lda a:$0DD8
  beq EL_9482
  jsr EL_8D84
  bra EL_9489
EL_9482:
  lda a:$0B57
  and #$81
  bne EL_9482
EL_9489:
  rts
EL_948A:
  jsr EL_93B9
  rep #$30
  lda a:$0B2A
  clc
  adc a:$0B72
  sta a:$0B72
  sep #$20
  lda #$01
  ora a:$0B57
  sta a:$0B57
  lda a:$0DD8
  beq EL_94AD
  jsr EL_8D84
  bra EL_94B4
EL_94AD:
  lda a:$0B57
  and #$01
  bne EL_94AD
EL_94B4:
  rts
  jsr EL_93B9
  rep #$30
  lda a:$0B2A
  clc
  adc a:$0B72
  sta a:$0B72
  sep #$20
  lda #$81
  ora a:$0B57
  sta a:$0B57
  lda a:$0DD8
  beq EL_94D8
  jsr EL_8D84
  bra EL_94DF
EL_94D8:
  lda a:$0B57
  and #$81
  bne EL_94D8
EL_94DF:
  rts
  rep #$30
  lda z:$54
  asl a
  tax
  lda a:$0B51,x
  sta z:$68
  rts
  rep #$10
  sep #$20
  lda #$01
  ldx z:$54
  beq EL_9504
  sta a:$0B55
EL_94F9:
  lda a:$0B55
  bne EL_94F9
  inc a:$0B55
  dex
  bpl EL_94F9
EL_9504:
  rts
  sep #$20
  rep #$10
EL_9509:
  lda a:$0B86
  bne EL_9509
  lda z:$54
  sta a:$0B81
  ldx z:$56
  stx a:$0B82
  ldx z:$58
  stx a:$0B84
  inc a:$0B86
  rts
  jsr EL_9341
  sep #$20
  lda #$01
  ora a:$0B56
  sta a:$0B56
  rts
  sep #$30
  ldx z:$54
  lda z:$56
  stx a:$0DD6
  sta a:$0DD7
  stx a:$212C
  sta a:$212D
  rts
  sep #$20
  lda z:$54
  sta a:$0B7F
  rts
  sep #$20
  lda #$80
  ora a:$0B3E
  jsr EL_8CD2
  lda #$01
  sta a:$0DD8
  lda #$00
  sta a:$4200
  lda #$00
  sta a:$212C
  sta a:$212D
  rts
  sep #$20
  lda #$0F
  and a:$0B3E
  jsr EL_8CD2
  lda #$00
  sta a:$0DD8
  lda #$A1
  sta a:$4200
  lda a:$0DD6
  sta a:$212C
  lda a:$0DD7
  sta a:$212D
  cmp a:$4211
  rts
  rep #$20
  lda a:$0B27
  sta z:$68
  rts
  sei
  rep #$30
  pha
  phx
  phy
  phb
  phd
  sep #$20
  lda #$00
  pha
  plb
  cmp a:$4211
  lda #$A1
  sta a:$4200
  nop
  rep #$30
  pld
  plb
  ply
  plx
  pla
  cli
  rti
  sep #$20
  rep #$10
  lda z:$54
  beq EL_95F9
  cmp #$02
  beq EL_95F1
  ldx a:$0E0A
  bne EL_95F1
  ldx z:$56
  stx a:$0E0C
  ldx z:$58
  stx a:$0E0E
  ldx z:$5A
  stx a:$0E10
  ldx z:$5C
  stx a:$0E12
  ldx z:$5E
  stx a:$0E14
  lda a:$0062
  sta a:$0E16
  ldx z:$60
  stx a:$0E0A
  ldx #$00
  stx a:$0E17
  jmp EL_95FF
EL_95F1:
  ldx a:$0E0A
  stx z:$68
  jmp EL_95FF
EL_95F9:
  ldx #$00
  stx a:$0E0A
EL_95FF:
  rts
  rep #$10
  sep #$20
  ldx z:$5A
  ldy z:$5C
  stx z:$5C
  sty z:$5A
  jsr EL_912C
  rep #$10
  sep #$20
  stz a:$0E19
  inc a:$0E19
  ldx z:$5E
  stx z:$3A
  lda z:$60
  sta z:$3C
  lda #$01
  sta a:$0B74
  lda a:$0DD8
  beq EL_9635
EL_962B:
  lda a:$0B74
  beq EL_963C
  jsr EL_8713
  bra EL_962B
EL_9635:
  lda a:$0B74
  and #$01
  bne EL_9635
EL_963C:
  stz a:$0E19
  rts
  sep #$30
  lda z:$54
  sta a:$0B29
  sta a:$2105
  rts
  sep #$30
  lda z:$54
  dec a
  tax
  lda z:$56
  sta a:$2107,x
  txa
  asl a
  tax
  lda z:$56
  and #$FC
  stz a:$0B2E,x
  sta a:$0B2F,x
  rts
  rep #$20
  sep #$10
  tsc
  sta a:$000A
  lda z:$56
  pha
  lda z:$54
  pha
  lda z:$58
  sep #$20
  jsr EL_97F3
  rep #$20
  rts
  .byte $00, $00, $01, $00, $03, $00, $07, $00, $0F, $00, $1F, $00, $3F, $00, $7F, $00
  .byte $FF, $00, $FF, $01, $FF, $03, $FF, $07, $FF, $0F, $FF, $1F, $FF, $3F, $FF, $7F
  .byte $FF, $FF, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F, $04, $04, $04, $04, $05, $05
  .byte $05, $05, $06, $06, $06, $06, $07, $07, $07, $07, $02, $02, $02, $02, $02, $02
  .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $03, $03, $03, $03, $03
  .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $1A, $18, $14, $14, $10, $10
  .byte $10, $10, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $08, $08, $08, $08, $08, $08
  .byte $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $04, $04, $04, $04, $04, $04
  .byte $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
  .byte $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $08, $08, $0C, $0C, $0C
  .byte $0C, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01
  .byte $01, $02, $02, $02, $02, $02, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
  .byte $03, $04, $04, $04, $04, $05, $05, $05, $05, $06, $06, $06, $06, $07, $07, $07
  .byte $07, $08, $08, $09, $09, $0A, $0A, $0B, $0B, $0C, $0C, $0D, $0D, $0E, $0E, $0F
  .byte $0F, $10, $10, $11, $11, $12, $12, $13, $13, $14, $14, $15, $15, $16, $16, $17
  .byte $17, $18, $18, $19, $19, $1A, $1A, $1B, $1B, $1C, $1C, $1D, $1D, $1E, $1E, $1F
  .byte $1F, $20, $21, $22
  .byte "#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQR"
  .byte "STUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
  .byte $7F, $0E, $0E, $10, $12, $12, $12, $14, $14, $14, $14, $14, $14, $0A, $08, $06
  .byte $04, $02, $16, $18, $1A, $1C, $1E
EL_97F3:
  sep #$30
  sta a:$0010
  lda #$7F
  sta a:$000C
  rep #$21
  pla
  sta a:$0E1A
  pla
  sta a:$000A
  pla
  sta a:$000E
  lda a:$0E1A
  pha
  stz a:$0E1E
  stz a:$0E20
.i8
  ldx #$20
  jsr EL_98E9
  sep #$20
  ldx #$00
EL_981E:
  dex
  bpl EL_9839
  ldx #$07
  lda [$0E]
  sta a:$0E24
  inc a:$000E
  bne EL_9839
  inc a:$000F
  bne EL_9839
  sec
  ror a:$000F
  inc a:$0010
EL_9839:
  asl a:$0E24
  bcc EL_985C
  lda [$0E]
  sta [$0A]
  inc a:$000E
  bne EL_9852
  inc a:$000F
  bne EL_9852
  ror a:$000F
  inc a:$0010
EL_9852:
  inc a:$000A
  bne EL_981E
  inc a:$000B
  bra EL_981E
EL_985C:
  phx
  rep #$20
  lda a:$0E1A
  bmi EL_9895
  lsr a
  xba
  tay
  beq EL_9876
  cpy #$08
  bcs EL_9884
  xba
  ldx a:$9715,y
  jsr ($99A4,x)
  bra EL_988A
EL_9876:
  xba
  lsr a
.a16
  ora #$80
  cmp #$FF
  bne EL_988A
  sep #$20
  plx
  rts
EL_9884:
  rep #$20
  ldx a:$9696,y
  txa
EL_988A:
  pha
  ldx a:$96D6,y
  jsr EL_98E9
  rep #$20
  bra EL_9898
EL_9895:
  pea $0001
EL_9898:
  asl a
  cmp #$6000
  bcs EL_98B0
  asl a
  xba
  tay
  ldx a:$971D,y
  tya
  lsr a
  lsr a
  lsr a
  lsr a
  tay
  txa
  ldx a:$97DD,y
  bra EL_98CA
EL_98B0:
  asl a
  rol a
  rol a
  rol a
  and #$07
  tay
  lda a:$0E1A
  and #$0FFF
  ora #$1000
  ldx a:$97E6,y
  jsr ($99A4,x)
  ldx a:$97EB,y
EL_98CA:
  sta a:$0E22
  jsr EL_98E9
  rep #$11
  ldy a:$000A
  tya
  sbc a:$0E22
  tax
  pla
  phb
  mvn #$7F,#$7F
  plb
  sty a:$000A
  sep #$30
  plx
  jmp EL_981E
EL_98E9:
  stx a:$0E20
  lda a:$0E1A
  jsr ($995C,x)
  sta a:$0E1A
  ldx a:$0E1E
  cpx a:$0E20
  bcs EL_9928
  lda a:$0E20
  sec
  sbc a:$0E1E
  sta a:$0E20
  lda a:$0E1C
  and a:$967C,x
  ldx a:$0E20
  jsr ($995C,x)
  tsb a:$0E1A
  lda [$0E]
  sta a:$0E1C
  lda a:$000E
  inc a
  inc a
  sta a:$000E
  bpl EL_9943
EL_9925:
  ldx #$20
  sec
EL_9928:
  txa
  sbc a:$0E20
  sta a:$0E1E
  tax
  lda a:$0E1C
  jsr ($99A4,x)
  ldx a:$0E20
  and a:$967C,x
  ora a:$0E1A
  sta a:$0E1A
  rts
EL_9943:
  sep #$21
  ror a:$000F
  inc a:$0010
  dec a:$000E
  bne EL_9955
  lda [$0E]
  sta a:$0E1D
EL_9955:
  inc a:$000E
  rep #$20
  bra EL_9925
  .byte $A3, $99, $A2, $99, $A1, $99, $A0, $99, $9F, $99, $9E, $99, $9D, $99, $9C, $99
  .byte $97, $99, $96, $99, $95, $99, $94, $99, $93, $99, $8B, $99, $84, $99, $7E, $99
  .byte $EC, $99
  and #$01
  lsr a
  ror a
  rts
  and #$03
  lsr a
  ror a
  ror a
  rts
  and #$07
  lsr a
  ror a
  ror a
  ror a
  rts
  asl a
  asl a
  asl a
  asl a
  xba
  and #$FF00
  rts
  asl a
  asl a
  asl a
  asl a
  asl a
  asl a
  asl a
  rts
  .byte $EB, $99, $EA, $99, $E9, $99, $E8, $99, $E7, $99, $E6, $99, $E5, $99, $E4, $99
  .byte $DF, $99, $DE, $99, $DD, $99, $DC, $99, $DB, $99, $D3, $99, $CC, $99, $C6, $99
  .byte $EC, $99
  and #$8000
  asl a
  rol a
  rts
  and #$C000
  asl a
  rol a
  rol a
  rts
  and #$E000
  asl a
  rol a
  rol a
  rol a
  rts
  lsr a
  lsr a
  lsr a
  lsr a
  xba
  and #$FF
  rts
  lsr a
  lsr a
  lsr a
  lsr a
  lsr a
  lsr a
  lsr a
  rts
  lda #$00
  rts
  .byte $0F, $80, $3E, $8E, $15, $8F, $99, $90, $D1, $90, $6E, $91, $C5, $91, $F0, $91
  .byte $0C, $92, $43, $92, $95, $93, $F1, $93, $3E, $94, $8A, $94, $B5, $94, $E0, $94
  .byte $EC, $94, $05, $95, $40, $B3, $21, $95, $2F, $95, $1A, $9D, $42, $95, $A4, $9A
  .byte $BE, $9A, $34, $9B, $4E, $9B, $B5, $9B, $CD, $9B, $E4, $9B, $FB, $9B, $0A, $9C
  .byte $1D, $9C, $2E, $9C, $4A, $95, $67, $95, $36, $9D, $50, $9D, $5A, $9D, $38, $9E
  .byte $53, $9E, $EC, $9F, $A4, $9E, $1B, $9F, $79, $A0, $88, $A0, $41, $A0, $58, $A0
  .byte $97, $A0, $A3, $AD, $E8, $AD, $3F, $B2, $50, $B2, $35, $B3, $99, $B4, $A4, $B4
  .byte $C5, $B5, $DB, $B5, $5B, $B6, $7B, $B6, $16, $B9, $28, $B9, $37, $B9, $44, $B9
  .byte $5C, $B9, $67, $B9, $A8, $B6, $DB, $B6, $8B, $95, $B3, $95, $00, $96, $40, $96
  .byte $CC, $B6, $A9, $A0, $CC, $A0, $4B, $96, $64, $96, $7C, $B7, $8D, $B7, $00, $20
  .byte $40, $60, $80, $A0, $C0, $E0, $FC, $F3, $CF, $3F, $12, $14, $18, $24, $28, $48
  .byte $00, $00, $00, $08
  rep #$30
  lda z:$54
  sta z:$42
  lda z:$56
  sta z:$40
  lda z:$58
  sta z:$46
  lda z:$5A
  sta z:$44
  lda z:$5C
  sta z:$4E
  jsr EL_9CFB
  rts
  rep #$30
.i16
  ldy #$00
  lda z:$54
  sta z:$40
  lda #$7E
  sta z:$42
  lda #$F800
  sta z:$4A
EL_9AD1:
  ldx #$09
  sep #$20
EL_9AD6:
  lda [$40],y
.a8
  cmp #$00
  beq EL_9AFC
  dex
  beq EL_9B2E
  cmp ($4A),y
  bne EL_9AE6
  iny
  bra EL_9AD6
EL_9AE6:
  rep #$20
  ldy #$00
.a16
  lda #$10
  clc
  adc z:$4A
  sta z:$4A
  lda ($4A)
  cmp #$00
  beq EL_9B2E
  bra EL_9AD1
EL_9AFC:
  rep #$30
  txa
  cmp #$08
  beq EL_9B2E
  ldy #$00
  jsr EL_9C7C
  bcs EL_9B2E
  lda z:$48
  sta z:$68
  lda #$08
  adc z:$4A
  sta z:$4A
  ldx #$04
EL_9B1A:
  lda ($4A),y
  sta ($48),y
  iny
  iny
  dex
  bne EL_9B1A
  lda #$00
  sta ($48),y
  iny
  iny
  sta ($48),y
  bra EL_9B33
EL_9B2E:
  lda #$FFFF
  sta z:$68
EL_9B33:
  rts
  rep #$30
  ldx z:$54
  lda #$00
  sta z:$42
  lda z:$54
  sta z:$40
  lda #$00
  sta [$40]
  bra EL_9B4B
  .byte $A9, $FF, $FF
EL_9B4B:
  sta z:$68
  rts
  rep #$30
  ldx z:$54
  lda z:$54
  clc
  adc #$04
  sta z:$40
  ldx #$00
  stx z:$42
  lda [$40]
  sta z:$4C
  ldy #$02
  lda [$40],y
  sta z:$4E
  inc z:$40
  inc z:$40
  inc z:$40
  inc z:$40
  lda z:$5A
  bne EL_9B80
  lda z:$56
  sta [$40]
  lda z:$58
  sta [$40],y
  bra EL_9BAA
EL_9B80:
  dec a
  bne EL_9B98
  lda z:$56
  clc
  adc [$40]
  bcc EL_9B8C
  inc z:$58
EL_9B8C:
  sta [$40]
  lda a:$0058
  clc
  adc [$40],y
  sta [$40],y
  bra EL_9BAA
EL_9B98:
  lda z:$4C
  sec
  sbc z:$56
  bpl EL_9BA1
  dec z:$4E
EL_9BA1:
  sta [$40]
  lda z:$4E
  sec
  sbc z:$58
  sta [$40],y
EL_9BAA:
  lda #$00
  bra EL_9BB2
  .byte $A9, $FF, $FF
EL_9BB2:
  sta z:$68
  rts
  rep #$30
  ldx z:$54
  jsr EL_9C3D
  lda #$7E
  sta z:$46
  lda z:$56
  sta z:$44
  lda z:$58
  sta z:$4C
  jsr EL_9CBF
  rts
  rep #$30
  ldx z:$54
  jsr EL_9C3D
  lda z:$56
  sta z:$46
  lda z:$58
  sta z:$44
  lda z:$5A
  sta z:$4C
  jsr EL_9CBF
  rts
  rep #$30
  lda z:$58
  sta z:$5A
  lda z:$56
  sta z:$58
  ldx z:$54
  jsr EL_9C3D
  sty z:$54
  stx z:$56
  jsr EL_9099
  rts
  rep #$30
  ldx z:$5E
  jsr EL_9C3D
  sty z:$5E
  stx z:$60
  jsr EL_91C5
  rts
  rep #$30
  lda z:$5E
  ldx z:$60
  sta z:$60
  jsr EL_9C3D
  stx z:$62
  sty z:$5E
  jsr EL_9243
  rts
  lda z:$5A
  sta z:$5C
  ldx z:$58
  jsr EL_9C3D
  stx z:$5A
  sty z:$58
  jsr EL_93F1
  rts
  rep #$30
  ldx z:$58
  jsr EL_9C3D
  sty z:$58
  stx z:$5A
  jsr EL_948A
  rts
EL_9C3D:
  rep #$30
  lda #$00
  sta z:$42
  sta z:$46
  stx z:$40
  txa
  clc
  adc #$08
  sta z:$44
  ldy #$02
  lda [$44],y
  asl a
  sta z:$4C
  lda [$44]
  and #$8000
  beq EL_9C60
  inc z:$4C
EL_9C60:
  lda [$44]
  and #$7FFF
  clc
  adc [$40],y
  bcc EL_9C6C
  inc z:$4C
EL_9C6C:
  ora #$8000
  tax
  lda [$40]
  clc
  adc z:$4C
  sta z:$42
  stx z:$40
  txy
  tax
  rts
EL_9C7C:
  rep #$30
  phx
  phy
  ldx #$14
  ldy #$1E00
  stz z:$48
EL_9C88:
  lda ($48),y
  beq EL_9C98
  tya
  clc
  adc #$0E
  tay
  dex
  bne EL_9C88
  sec
  bra EL_9C9B
EL_9C98:
  sty z:$48
  clc
EL_9C9B:
  ply
  plx
  rts
  .byte $C2, $30, $A9, $00, $1E, $85, $40, $A9, $00, $00, $85, $42, $8A, $A2, $14, $00
  .byte $A0, $00, $00, $D7, $40, $F0, $08, $C8, $C8, $CA, $D0, $F7, $38, $80, $01, $18
  .byte $60
EL_9CBF:
  rep #$30
  ldx z:$4C
  stz z:$50
EL_9CC5:
  lda #$00
  sec
  sbc z:$40
  cmp z:$4C
  bcs EL_9CDB
  inc z:$50
  sta z:$4E
  txa
  sec
  sbc z:$4E
  sta z:$4C
  bra EL_9CE1
EL_9CDB:
  lda z:$4C
  sta z:$4E
  stz z:$50
EL_9CE1:
  php
  jsr EL_9CFB
  plp
  lda z:$50
  beq EL_9CFA
  inc z:$42
  lda #$8000
  sta z:$40
  lda z:$44
  clc
  adc z:$4E
  sta z:$44
  bra EL_9CC5
EL_9CFA:
  rts
EL_9CFB:
  rep #$10
  sep #$20
  lda z:$42
  sta z:$6E
  lda z:$46
  sta z:$6D
  rep #$20
  phx
  phy
  ldx z:$40
  ldy z:$44
  lda z:$4E
  dec a
  phb
  jsr $006C
  plb
  ply
  plx
  rts
  sep #$20
  rep #$10
  cmp a:$2137
  cmp a:$213F
  lda a:$213C
  cmp a:$213C
  xba
  lda a:$213D
  cmp a:$213D
  rep #$20
  sta z:$68
  rts
  sep #$20
  rep #$10
  ldx z:$54
  stx z:$42
  ldx z:$56
  stx z:$40
  ldx z:$5A
  lda z:$58
  ldy #$00
EL_9D49:
  sta [$40],y
  iny
  dex
  bne EL_9D49
  rts
  sep #$20
  lda z:$54
.a8
  and #$0F
  sta a:$0B3E
  rts
  sep #$20
  rep #$10
  ldx #$0DDF
  stx z:$48
  ldy #$00
  stz a:$0DDA
  lda z:$5C
  sta a:$212E
  lda z:$56
  beq EL_9D97
  cmp #$79
  bcc EL_9D8A
  lda #$78
  sta ($48),y
  iny
  lda #$FF
  sta ($48),y
  iny
  lda #$00
  sta ($48),y
  iny
  lda z:$56
  sec
  sbc #$78
EL_9D8A:
  sta ($48),y
  iny
  lda #$FF
  sta ($48),y
  iny
  lda #$00
  sta ($48),y
  iny
EL_9D97:
  lda z:$54
  sta z:$4E
  lda z:$58
  sta z:$50
  dec z:$50
  lda z:$5A
  sec
  sbc z:$56
  sta z:$4C
  cmp #$79
  bcc EL_9DC0
  lda #$78
  sta ($48),y
  iny
  lda z:$4E
  sta ($48),y
  iny
  lda z:$50
  sta ($48),y
  iny
  lda z:$4C
  sec
  sbc #$78
EL_9DC0:
  sta ($48),y
  iny
  lda z:$4E
  sta ($48),y
  iny
  lda z:$50
  sta ($48),y
  iny
  lda #$01
  sta ($48),y
  iny
  lda #$FF
  sta ($48),y
  iny
  lda #$00
  sta ($48),y
  iny
  sta ($48),y
  ldy #$00
  ldx #$0DDC
  stx z:$48
  ldx #$03
  stz z:$50
  lda z:$5E
  and #$01
  beq EL_9DF5
  lda #$10
  sta z:$50
EL_9DF5:
  lda z:$5C
  and #$01
  beq EL_9E04
  lda #$00
  ora z:$5E
  ora #$02
  xba
  bra EL_9E06
EL_9E04:
  lda #$00
EL_9E06:
  lsr z:$5C
  lda z:$5C
  and #$01
  beq EL_9E15
  xba
  ora z:$50
  ora #$20
  bra EL_9E16
EL_9E15:
  xba
EL_9E16:
  sta ($48),y
  iny
  lsr z:$5C
  dex
  bne EL_9DF5
  lda #$80
  sta a:$0DD9
  inc a:$0DDA
EL_9E26:
  lda a:$0DDA
  dec a
  dec a
  bne EL_9E26
  inc a:$0DDA
EL_9E30:
  lda a:$0DDA
  dec a
  dec a
  bne EL_9E30
  rts
  sep #$30
  stz a:$0DD9
  stz a:$2123
  stz a:$2124
  stz a:$2125
  stz a:$2126
  stz a:$2127
  stz a:$2128
  stz a:$2129
  rts
  rep #$30
  stz a:$0DF7
  lda z:$58
  xba
  asl a
  asl a
  asl a
  asl a
  asl a
  sta z:$4C
  lda z:$5C
  asl a
  asl a
  asl a
  ora z:$4C
  ldx z:$5A
  beq EL_9E70
.a16
  ora #$8000
EL_9E70:
  sta a:$0DFB
  ldx a:$0B32
  lda a:$0B29
  cmp #$04
  beq EL_9E88
  lda z:$5A
  beq EL_9E88
  txa
  clc
  adc #$20
  tax
EL_9E88:
  dec z:$54
  txa
  clc
  adc z:$54
  sta a:$0DF9
  inc z:$54
  lda z:$56
  sec
  sbc z:$54
  sta a:$0DFD
  inc a:$0DF7
EL_9E9E:
  lda a:$0DF7
  bne EL_9E9E
  rts
EL_9EA4:
  rep #$30
  lda z:$54
  asl a
  asl a
  asl a
  asl a
  asl a
  asl a
  sta z:$4E
  lda z:$56
  asl a
  asl a
  asl a
  asl a
  asl a
  asl a
  sta z:$4C
  stz z:$50
  lda #$00
  sec
  sbc z:$58
  cmp z:$4C
  bcs EL_9ED6
  tax
  sta z:$50
  lda z:$4C
  sec
  sbc z:$50
  sta z:$4C
  txa
  sec
  sbc z:$4C
  sta z:$50
EL_9ED6:
  sep #$20
  ldx z:$4E
  stx a:$2116
.a8
  lda #$80
  sta a:$2115
  lda #$00
  sta a:$4320
  lda #$19
  sta a:$4321
  ldx z:$58
  stx a:$4322
  lda z:$5A
  sta a:$4324
  ldx z:$4C
  stx a:$4325
  lda #$04
  sta a:$420B
  lda z:$50
  beq EL_9F1A
  ldx #$8000
  stx a:$4322
  lda z:$5A
  inc a
  sta a:$4324
  ldx z:$50
  stx a:$4325
  lda #$04
  sta a:$420B
EL_9F1A:
  rts
EL_9F1B:
  rep #$30
  stz z:$4C
  lda z:$54
  lsr a
  lsr a
  inc a
  tax
.a16
  lda #$00
EL_9F28:
  dex
  beq EL_9F33
  clc
  adc #$1000
  sta z:$4C
  bra EL_9F28
EL_9F33:
  lda z:$54
  and #$03
  tax
  inx
  lda z:$4C
EL_9F3C:
  dex
  beq EL_9F47
  clc
  adc #$20
  sta z:$4C
  bra EL_9F3C
EL_9F47:
  lda z:$56
  clc
  adc z:$4C
  sta z:$4C
  ldx z:$58
  inx
  lda #$00
EL_9F54:
  dex
  beq EL_9F5D
  clc
  adc #$80
  bra EL_9F54
EL_9F5D:
  clc
  adc z:$4C
  sta z:$4C
  lda z:$5E
  sta z:$4E
EL_9F66:
  lda #$00
  stz z:$50
  ldy z:$5A
  sec
  sbc z:$4E
  beq EL_9F80
  cmp z:$5A
  bcs EL_9F80
  sta z:$50
  tya
  sec
  sbc z:$50
  ldy z:$50
  sta z:$50
EL_9F80:
  sep #$20
  stz a:$2115
  ldx z:$4C
  stx a:$2116
  stz a:$4320
.a8
  lda #$18
  sta a:$4321
  ldx z:$4E
  stx a:$4322
  lda z:$60
  sta a:$4324
  sty a:$4325
  lda #$04
  sta a:$420B
  lda z:$50
  beq EL_9FD3
  rep #$20
  tya
  clc
  adc z:$4C
  sta z:$4C
  tya
  clc
  adc z:$4E
  sta z:$4E
  sep #$20
  ldx z:$4C
  stx a:$2116
  ldx z:$4E
  stx a:$4322
  lda z:$60
  sta a:$4324
  ldy z:$50
  sty a:$4325
  lda #$04
  sta a:$420B
  stz z:$50
EL_9FD3:
  dec z:$5C
  beq EL_9FEB
  rep #$20
  lda z:$4E
  clc
  adc z:$5A
  sta z:$4E
.a16
  lda #$80
  clc
  adc z:$4C
  sta z:$4C
  jmp EL_9F66
EL_9FEB:
  rts
  sep #$20
  rep #$10
.a8
  lda #$07
  sta a:$2105
  lda z:$54
  sta a:$211A
  lda #$00
  sta a:$210D
  sta a:$210D
  sta a:$210E
  sta a:$210E
  sep #$10
  rep #$20
.i8
  ldx #$00
  ldy #$01
  stx a:$211B
  sty a:$211B
  stx a:$211C
  stx a:$211C
  stx a:$211D
  stx a:$211D
  stx a:$211E
  sty a:$211E
  stx a:$2120
  stx a:$2120
  stz a:$0B42
  stz a:$0B44
  stz a:$0B46
  stz a:$0B48
  sty a:$0B43
  sty a:$0B49
  rts
  sep #$30
  lda z:$54
  sta a:$211F
  lda z:$55
  sta a:$211F
  lda z:$56
  sta a:$2120
  lda z:$57
  sta a:$2120
  rts
  rep #$30
  lda z:$54
  sta a:$0B42
  lda z:$56
  sta a:$0B44
  lda z:$58
  sta a:$0B46
  lda z:$5A
  sta a:$0B48
  sep #$20
  inc a:$0E03
EL_A073:
  lda a:$0E03
  bne EL_A073
  rts
  rep #$30
  ldx z:$58
  jsr EL_9C3D
  stx z:$5A
  sty z:$58
  jsr EL_9EA4
  rts
  rep #$30
  ldx z:$5E
  jsr EL_9C3D
  sty z:$5E
  stx z:$60
  jsr EL_9F1B
  rts
  sep #$30
  lda z:$54
  sta a:$2130
  lda z:$56
  sta a:$2131
  lda z:$58
  sta a:$2132
  rts
  sep #$20
  rep #$10
  lda z:$54
  sta a:$0DF2
  lda z:$56
  sta a:$0DF3
  ldx z:$58
  stx a:$0DF4
  lda z:$5A
  sta a:$0DF6
  lda #$20
  sta a:$0DD9
  lda #$01
  sta a:$0DF1
  rts
  sep #$20
  rep #$10
  lda z:$54
  stz a:$0DD9
  stz a:$0DF1
  rts
EL_A0D9:
.i16
  ldy #$00
  tsc
  clc
.a16
  adc #$03
  tcs
  clc
  adc #$08
  sta z:$0A
EL_A0E8:
  tyx
  lda ($0A),y
  sta z:$52,x
  iny
  iny
  tya
  cmp #$16
  bne EL_A0E8
  jsr EL_8DDD
  lda z:$68
  sta z:$0A
  rtl
EL_A0FD:
  sep #$20
  pla
  pla
  pla
  sta z:$0C
  pla
  sta z:$0A
  pla
  sta z:$0B
  pla
  sta z:$00
  pla
  sta z:$01
  pla
  sta z:$02
  rep #$10
  ldx #$00
  ldy #$09
EL_A11B:
  lda z:$00,x
  pha
  inx
  dey
  bpl EL_A11B
  rep #$20
  tsc
  sta z:$04
  clc
  cld
  ldy #$01
  adc [$0A],y
  tcs
  clc
  lda z:$0A
  adc #$03
  sta z:$06
  sep #$20
  lda z:$0C
  sta z:$08
.a8
  lda #$7E
  pha
  plb
EL_A141:
  sep #$20
  ldy #$00
  lda [$06],y
  rep #$20
  inc z:$06
.a16
  and #$FF
  pha
  asl a
  tax
  lda f:$00A797,x
  sta z:$00
  plx
  jmp ($0000)
  lda #$FFE9
  bne EL_A196
  lda #$FFEB
  bne EL_A196
  lda #$FFED
  bne EL_A196
  lda #$FFEF
  bne EL_A196
  lda #$FFF1
  bne EL_A196
  lda #$FFF3
  bne EL_A196
  lda #$FFF5
  bne EL_A196
  lda #$FFF7
  bne EL_A196
  lda #$FFF9
  bne EL_A196
  lda #$FFFB
  bne EL_A196
  lda #$FFFD
  bne EL_A196
  lda #$FFFF
EL_A196:
  clc
  adc z:$04
  sta z:$00
  lda ($00),y
  sta z:$0A
  jmp EL_A141
  ldy #$15
  bne EL_A1B4
  ldy #$13
  bne EL_A1B4
  ldy #$11
  bne EL_A1B4
  ldy #$0F
EL_A1B4:
  lda ($04),y
  sta z:$0A
  jmp EL_A141
  lda #$FFE9
  bne EL_A1F5
  lda #$FFEB
  bne EL_A1F5
  lda #$FFED
  bne EL_A1F5
  lda #$FFEF
  bne EL_A1F5
  lda #$FFF1
  bne EL_A1F5
  lda #$FFF3
  bne EL_A1F5
  lda #$FFF5
  bne EL_A1F5
  lda #$FFF7
  bne EL_A1F5
  lda #$FFF9
  bne EL_A1F5
  lda #$FFFB
  bne EL_A1F5
  lda #$FFFD
  bne EL_A1F5
  lda #$FFFF
EL_A1F5:
  clc
  adc z:$04
  sta z:$00
  lda ($00),y
  sta z:$0E
  jmp EL_A141
  ldy #$15
  bne EL_A213
  ldy #$13
  bne EL_A213
  ldy #$11
  bne EL_A213
  ldy #$0F
EL_A213:
  lda ($04),y
  sta z:$0E
  jmp EL_A141
  lda #$FFE9
  bne EL_A254
  lda #$FFEB
  bne EL_A254
  lda #$FFED
  bne EL_A254
  lda #$FFEF
  bne EL_A254
  lda #$FFF1
  bne EL_A254
  lda #$FFF3
  bne EL_A254
  lda #$FFF5
  bne EL_A254
  lda #$FFF7
  bne EL_A254
  lda #$FFF9
  bne EL_A254
  lda #$FFFB
  bne EL_A254
  lda #$FFFD
  bne EL_A254
  lda #$FFFF
EL_A254:
  clc
  adc z:$04
  sta z:$00
  lda z:$0A
  sta ($00),y
  jmp EL_A141
  ldy #$15
  bne EL_A272
  ldy #$13
  bne EL_A272
  ldy #$11
  bne EL_A272
  ldy #$0F
EL_A272:
  lda z:$0A
  sta ($04),y
  jmp EL_A141
  lda #$FFE9
  bne EL_A2B3
  lda #$FFEB
  bne EL_A2B3
  lda #$FFED
  bne EL_A2B3
  lda #$FFEF
  bne EL_A2B3
  lda #$FFF1
  bne EL_A2B3
  lda #$FFF3
  bne EL_A2B3
  lda #$FFF5
  bne EL_A2B3
  lda #$FFF7
  bne EL_A2B3
  lda #$FFF9
  bne EL_A2B3
  lda #$FFFB
  bne EL_A2B3
  lda #$FFFD
  bne EL_A2B3
  lda #$FFFF
EL_A2B3:
  clc
  adc z:$04
  sta z:$00
  lda ($00),y
  pha
  jmp EL_A141
  ldy #$15
  bne EL_A2D0
  ldy #$13
  bne EL_A2D0
  ldy #$11
  bne EL_A2D0
  ldy #$0F
EL_A2D0:
  lda ($04),y
  pha
  jmp EL_A141
  txa
  and #$0F
  sta z:$0A
  jmp EL_A141
  sty z:$0A
  jmp EL_A141
  txa
  and #$0F
  sta z:$0E
  jmp EL_A141
  sty z:$0E
  jmp EL_A141
  txa
  and #$0F
  pha
  jmp EL_A141
  txa
  and #$0F
  clc
  adc z:$0A
  sta z:$0A
  jmp EL_A141
  jsr EL_A77F
  bcc EL_A30E
  jsr EL_A74C
EL_A30E:
  lda ($00),y
  sta z:$0A
  jmp EL_A141
  jsr EL_A775
  lda ($00),y
  sta z:$0A
  jmp EL_A141
  jsr EL_A74C
EL_A322:
  lda ($00),y
  sta z:$0E
  jmp EL_A141
  jsr EL_A77F
  bcc EL_A322
  jsr EL_A775
  lda ($00),y
  sta z:$0E
  jmp EL_A141
  jsr EL_A74C
EL_A33B:
  lda z:$0A
  sta ($00),y
  jmp EL_A141
  jsr EL_A77F
  bcc EL_A33B
  jsr EL_A775
  lda z:$0A
  sta ($00),y
  jmp EL_A141
  jsr EL_A74C
EL_A354:
  lda ($00),y
  pha
  jmp EL_A141
  jsr EL_A77F
  bcc EL_A354
  jsr EL_A775
  lda ($00),y
  pha
  jmp EL_A141
  jsr EL_A77F
  lda z:$00
  sta z:$0A
  jmp EL_A141
  jsr EL_A77F
  lda z:$00
  sta z:$0E
  jmp EL_A141
  jsr EL_A73A
EL_A37F:
  sta z:$0A
  jmp EL_A141
  jsr EL_A76D
  bcc EL_A37F
  jsr EL_A73A
EL_A38C:
  sta z:$0E
  jmp EL_A141
  jsr EL_A76D
  bcc EL_A38C
  jsr EL_A73A
  pha
  jmp EL_A141
  jsr EL_A76D
  pha
  jmp EL_A141
  jsr EL_A73A
EL_A3A7:
  adc z:$0A
  sta z:$0A
  jmp EL_A141
  jsr EL_A76D
  bcc EL_A3A7
  jsr EL_A77F
  sep #$30
  lda ($00),y
  sta z:$0A
  sty z:$0B
  rep #$30
  jmp EL_A141
  jsr EL_A775
  sep #$30
  lda ($00),y
  sta z:$0A
  sty z:$0B
  rep #$30
  jmp EL_A141
  jsr EL_A77F
  sep #$30
  lda ($00),y
  sta z:$0E
  sty z:$0F
  rep #$30
  jmp EL_A141
  jsr EL_A775
  sep #$30
  lda ($00),y
  sta z:$0E
  sty z:$0F
  rep #$30
  jmp EL_A141
  jsr EL_A77F
  sep #$20
  lda z:$0A
  sta ($00),y
  rep #$20
  jmp EL_A141
  jsr EL_A775
  sep #$20
  lda z:$0A
  sta ($00),y
  rep #$20
  jmp EL_A141
  jsr EL_A77F
  sep #$20
.a8
  lda #$00
  xba
  lda ($00),y
  rep #$20
  pha
  jmp EL_A141
  jsr EL_A775
  sep #$20
  lda #$00
  xba
  lda ($00),y
  rep #$20
  pha
  jmp EL_A141
  lda z:$0A
  sta z:$00
  jmp EL_A439
  jsr EL_A775
EL_A439:
  jsr EL_A452
  ldy #$00
  jmp EL_A47B
  lda z:$0A
  sta z:$00
  jmp EL_A44C
  jsr EL_A775
EL_A44C:
  jsr EL_A452
  jmp EL_A141
EL_A452:
  lda z:$06
  pha
  phk
  jsr EL_A45B
  pla
  rts
EL_A45B:
  sep #$20
  lda #$7E
  sta z:$02
  rep #$20
  jml [$0000]
  jsr EL_A76D
  ldy #$00
  tax
  sep #$20
EL_A46F:
  lda ($0A),y
  sta ($0E),y
  dex
  bne EL_A46F
  rep #$20
  jmp EL_A141
EL_A47B:
  jsr EL_A73A
EL_A47E:
  sta z:$00
  tsc
  adc z:$00
  tcs
  jmp EL_A141
  jsr EL_A76D
  bcc EL_A47E
EL_A48C:
  jsr EL_A76D
  sta z:$06
  jmp EL_A141
  lda z:$0A
  bne EL_A48C
EL_A498:
  jsr EL_A76D
  jmp EL_A141
  lda z:$0A
  beq EL_A48C
  bne EL_A498
EL_A4A4:
  jsr EL_A73A
  adc z:$06
  sta z:$06
  jmp EL_A141
  lda z:$0A
  bne EL_A4A4
EL_A4B2:
  jsr EL_A73A
  jmp EL_A141
  lda z:$0A
  beq EL_A4A4
  bne EL_A4B2
EL_A4BE:
  jsr EL_A73A
  adc z:$06
  sta z:$06
  jmp EL_A141
  lda z:$0A
  bne EL_A4BE
EL_A4CC:
  jsr EL_A73A
  jmp EL_A141
  lda z:$0A
  beq EL_A4BE
  bne EL_A4CC
  lda [$06],y
  tax
  inc z:$06
  inc z:$06
EL_A4DF:
  ldy #$00
  dex
  bmi EL_A4F8
  lda [$06],y
  iny
  iny
  cmp z:$0A
  beq EL_A4F8
  clc
  lda z:$06
.a16
  adc #$04
  sta z:$06
  jmp EL_A4DF
EL_A4F8:
  lda [$06],y
  sta z:$06
  jmp EL_A141
  clc
  lda [$06],y
  adc z:$0A
  sta z:$0A
  iny
  iny
  lda z:$0A
  cmp [$06],y
  bcc EL_A512
  iny
  iny
  bcs EL_A51C
EL_A512:
  lda z:$0A
  asl a
  adc z:$06
  sta z:$06
  ldy #$06
EL_A51C:
  lda [$06],y
  sta z:$06
  jmp EL_A141
  lda ($0A),y
  sta z:$0A
  jmp EL_A141
  sep #$30
  lda ($0A),y
  sta z:$0A
  sty z:$0B
  rep #$30
  jmp EL_A141
  pla
  sta z:$0E
  lda z:$0A
  sta ($0E),y
  jmp EL_A141
  pla
  sta z:$0E
  sep #$20
  lda z:$0A
  sta ($0E),y
  rep #$20
  jmp EL_A141
  lda z:$0A
  pha
  jmp EL_A141
  pla
  sta z:$0E
  jmp EL_A141
  ldy #$00
  sty z:$00
  ldy #$10
EL_A563:
  lda z:$0A
  lsr a
  bcc EL_A56F
  clc
  lda z:$00
  adc z:$0E
  sta z:$00
EL_A56F:
  ror z:$00
  ror z:$0A
  dey
  bne EL_A563
  jmp EL_A141
  jsr EL_A58F
  jmp EL_A141
  jsr EL_A5C8
  jsr EL_A58F
  lda z:$0B
  bpl EL_A58C
  jmp EL_A6CD
EL_A58C:
  jmp EL_A141
EL_A58F:
  ldy #$00
  sty z:$00
  ldy #$10
EL_A597:
  asl z:$0A
  rol z:$00
  sec
  lda z:$00
  sbc z:$0E
  bcc EL_A5A6
  sta z:$00
  inc z:$0A
EL_A5A6:
  dey
  bne EL_A597
  rts
  jsr EL_A5C8
  jsr EL_A58F
  lda z:$00
  sta z:$0A
  lda z:$0C
  bpl EL_A5BB
  jmp EL_A6CD
EL_A5BB:
  jmp EL_A141
  jsr EL_A58F
  lda z:$00
  sta z:$0A
  jmp EL_A141
EL_A5C8:
  sep #$20
  lda z:$0B
  sta z:$0D
  eor z:$0F
  sta z:$0C
  rep #$20
  lda z:$0A
  bpl EL_A5DE
  sec
  tya
  sbc z:$0A
  sta z:$0A
EL_A5DE:
  lda z:$0E
  bpl EL_A5E8
  sec
  tya
  sbc z:$0E
  sta z:$0E
EL_A5E8:
  rts
  clc
  lda z:$0A
  adc z:$0E
  sta z:$0A
  jmp EL_A141
  sec
  lda z:$0A
  sbc z:$0E
  sta z:$0A
  jmp EL_A141
  ldx z:$0E
  bne EL_A604
EL_A601:
  jmp EL_A141
EL_A604:
  asl z:$0A
  dex
  beq EL_A601
  bne EL_A604
  lda z:$0A
  bpl EL_A61E
  ldx z:$0E
  bne EL_A616
EL_A613:
  jmp EL_A141
EL_A616:
  sec
  ror z:$0A
  dex
  beq EL_A613
  bne EL_A616
EL_A61E:
  ldx z:$0E
  bne EL_A625
EL_A622:
  jmp EL_A141
EL_A625:
  lsr z:$0A
  dex
  beq EL_A622
  bne EL_A625
  lda z:$0A
  and z:$0E
  sta z:$0A
  jmp EL_A141
  lda z:$0A
  ora z:$0E
  sta z:$0A
  jmp EL_A141
  lda z:$0A
  eor z:$0E
  sta z:$0A
  jmp EL_A141
  lda z:$0A
  cmp z:$0E
  bne EL_A64E
  iny
EL_A64E:
  sty z:$0A
  jmp EL_A141
  lda z:$0A
  cmp z:$0E
  beq EL_A65A
  iny
EL_A65A:
  sty z:$0A
  jmp EL_A141
  sec
  lda z:$0A
  sbc z:$0E
  bpl EL_A667
  iny
EL_A667:
  sty z:$0A
  jmp EL_A141
  sec
  lda z:$0E
  sbc z:$0A
  bpl EL_A674
  iny
EL_A674:
  sty z:$0A
  jmp EL_A141
  sec
  lda z:$0E
  sbc z:$0A
  bmi EL_A681
  iny
EL_A681:
  sty z:$0A
  jmp EL_A141
  sec
  lda z:$0A
  sbc z:$0E
  bmi EL_A68E
  iny
EL_A68E:
  sty z:$0A
  jmp EL_A141
  lda z:$0A
  cmp z:$0E
  bcs EL_A69A
  iny
EL_A69A:
  sty z:$0A
  jmp EL_A141
  lda z:$0E
  cmp z:$0A
  bcs EL_A6A6
  iny
EL_A6A6:
  sty z:$0A
  jmp EL_A141
  lda z:$0E
  cmp z:$0A
  bcc EL_A6B2
  iny
EL_A6B2:
  sty z:$0A
  jmp EL_A141
  lda z:$0A
  cmp z:$0E
  bcc EL_A6BE
  iny
EL_A6BE:
  sty z:$0A
  jmp EL_A141
  lda z:$0A
  bne EL_A6C8
  iny
EL_A6C8:
  sty z:$0A
  jmp EL_A141
EL_A6CD:
  sec
  tya
  sbc z:$0A
  sta z:$0A
  jmp EL_A141
  lda z:$0A
  eor #$FFFF
  sta z:$0A
  jmp EL_A141
  lda z:$0A
  ldx z:$0E
  stx z:$0A
  sta z:$0E
  jmp EL_A141
  inc z:$0A
  jmp EL_A141
  dec z:$0A
  jmp EL_A141
  asl z:$0A
  jmp EL_A141
  jsr EL_A76D
  ldy #$0A
  jsr EL_AD49
  jmp EL_A141
  jsr EL_A76D
  ldy #$0A
  jsr EL_AD1A
  jmp EL_A141
  jsr EL_A76D
  ldy #$0E
  jsr EL_AD61
  jmp EL_A141
  ldx #$09
  lda z:$04
  tcs
  sep #$20
EL_A726:
  pla
  sta z:$00,x
  dex
  bpl EL_A726
  rep #$20
  inc z:$00
  jml [$0000]
  .byte $00, $00
  .byte $00, $00
  .byte $4C, $41, $A1
EL_A73A:
  sep #$20
.a8
  lda #$00
  xba
  lda [$06],y
  bpl EL_A746
  xba
  dec a
  xba
EL_A746:
  rep #$20
  inc z:$06
  clc
  rts
EL_A74C:
  sep #$20
  lda #$00
  xba
  lda [$06],y
  bpl EL_A75E
  xba
  dec a
  xba
  rep #$20
  inc a
  jmp EL_A764
EL_A75E:
  rep #$20
  inc a
  inc a
  inc a
  inc a
EL_A764:
  clc
  adc z:$04
  sta z:$00
  inc z:$06
  clc
  rts
EL_A76D:
  lda [$06],y
  inc z:$06
  inc z:$06
  clc
  rts
EL_A775:
  lda [$06],y
  sta z:$00
  inc z:$06
  inc z:$06
  clc
  rts
EL_A77F:
  clc
  lda [$06],y
  bpl EL_A788
  inc a
  jmp EL_A78C
EL_A788:
  inc a
  inc a
  inc a
  inc a
EL_A78C:
  clc
  adc z:$04
  sta z:$00
  inc z:$06
  inc z:$06
  clc
  rts
  .byte $5C, $A1, $61, $A1, $66, $A1, $6B, $A1, $70, $A1, $75, $A1, $7A, $A1, $7F, $A1
  .byte $84, $A1, $89, $A1, $8E, $A1, $93, $A1, $B1, $A1, $AC, $A1, $A7, $A1, $A2, $A1
  .byte $BB, $A1, $C0, $A1, $C5, $A1, $CA, $A1, $CF, $A1, $D4, $A1, $D9, $A1, $DE, $A1
  .byte $E3, $A1, $E8, $A1, $ED, $A1, $F2, $A1, $10, $A2, $0B, $A2, $06, $A2, $01, $A2
  .byte $1A, $A2, $1F, $A2, $24, $A2, $29, $A2, $2E, $A2, $33, $A2, $38, $A2, $3D, $A2
  .byte $42, $A2, $47, $A2, $4C, $A2, $51, $A2, $6F, $A2, $6A, $A2, $65, $A2, $60, $A2
  .byte $79, $A2, $7E, $A2, $83, $A2, $88, $A2, $8D, $A2, $92, $A2, $97, $A2, $9C, $A2
  .byte $A1, $A2, $A6, $A2, $AB, $A2, $B0, $A2, $CD, $A2, $C8, $A2, $C3, $A2, $BE, $A2
  .byte $DF, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2
  .byte $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2, $D6, $A2
  .byte $ED, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2
  .byte $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2, $E4, $A2
  .byte $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2
  .byte $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2, $F2, $A2
  .byte $03, $A3, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2
  .byte $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2, $FA, $A2
  .byte $33, $A7, $0B, $A3, $06, $A3, $1F, $A3, $29, $A3, $38, $A3, $42, $A3, $51, $A3
  .byte $5A, $A3, $7C, $A3, $84, $A3, $89, $A3, $91, $A3, $96, $A3, $9D, $A3, $A4, $A3
  .byte $AE, $A3, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7
  .byte $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7
  .byte $B3, $A3, $D3, $A3, $F3, $A3, $0F, $A4, $15, $A3, $C3, $A3, $2E, $A3, $E3, $A3
  .byte $47, $A3, $01, $A4, $5F, $A3, $1F, $A4, $49, $A4, $66, $A4, $7B, $A4, $87, $A4
  .byte $23, $A5, $37, $A5, $33, $A7, $4F, $A5, $55, $A5, $5B, $A5, $7F, $A5, $97, $A9
  .byte $79, $A5, $AA, $A5, $BE, $A5, $E9, $A5, $F3, $A5, $FD, $A5, $1E, $A6, $0B, $A6
  .byte $47, $A6, $53, $A6, $5F, $A6, $79, $A6, $6C, $A6, $86, $A6, $93, $A6, $AB, $A6
  .byte $9F, $A6, $B7, $A6, $C3, $A6, $CD, $A6, $D6, $A6, $E0, $A6, $33, $A7, $1E, $A7
  .byte $EB, $A6, $F0, $A6, $F5, $A6, $2A, $A5, $41, $A5, $FF, $A4, $8C, $A4, $94, $A4
  .byte $9E, $A4, $D8, $A4, $2C, $A6, $35, $A6, $3E, $A6, $42, $A4, $68, $A3, $72, $A3
  .byte $FA, $A6, $06, $A7, $12, $A7, $A4, $A4, $AE, $A4, $B8, $A4, $BE, $A4, $C8, $A4
  .byte $D2, $A4, $36, $A4, $2F, $A4, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7
  .byte $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7
  .byte $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $33, $A7, $35, $A7
EL_A997:
  sep #$20
  lda [$06],y
  rep #$20
  inc z:$06
.a16
  and #$FF
  asl a
  tax
  lda f:$00A9AF,x
  sta z:$00
  lda #$A140
  pha
  jmp ($0000)
  .byte $0F, $AA, $35, $AA, $B3, $AA, $C2, $AA, $65, $AB, $89, $AB, $9A, $AB, $AA, $AB
  .byte $DA, $AB, $C2, $AB, $F2, $AB, $82, $AC, $92, $AC, $A2, $AC, $B2, $AC, $C2, $AC
  .byte $D2, $AC, $E2, $AC, $F2, $AC, $02, $AD, $0A, $AD, $13, $AD, $60, $AC, $2A, $AC
  .byte $38, $AC, $72, $AC, $52, $AC, $4C, $AC, $7C, $AB, $9D, $AA, $D1, $AA, $EC, $AA
  .byte $2C, $AB, $3B, $AB, $49, $AB, $57, $AB, $20, $AC, $27, $AC, $29, $AC, $73, $AB
  .byte $B9, $AB, $E9, $AB, $D1, $AB, $01, $AC, $11, $AB, $40, $AA, $93, $AA
  sty z:$12
  sty z:$14
  ldy #$20
EL_AA16:
  lda z:$0A
  lsr a
  bcc EL_AA29
  clc
  ldx #$FFFC
EL_AA1F:
  lda z:$16,x
  adc z:$12,x
  sta z:$16,x
  inx
  inx
  bne EL_AA1F
EL_AA29:
  lsr z:$14
  ror z:$12
  ror z:$0C
  ror z:$0A
  dey
  bne EL_AA16
  rts
  jsr EL_AA43
  lda z:$1D
  bpl EL_AA3F
  jmp EL_AB65
EL_AA3F:
  rts
  jmp EL_AA68
EL_AA43:
  sep #$20
  lda z:$0D
  sta z:$1F
  eor z:$11
  sta z:$1E
  rep #$20
  lda z:$0C
  bpl EL_AA56
  jsr EL_AB65
EL_AA56:
  lda z:$10
  bpl EL_AA68
  ldx #$FFFC
EL_AA5D:
  lda #$00
  sbc z:$12,x
  sta z:$12,x
  inx
  inx
  bne EL_AA5D
EL_AA68:
  lda #$00
  sta z:$12
  sta z:$14
  ldy #$20
EL_AA72:
  asl z:$0A
  rol z:$0C
  rol z:$12
  rol z:$14
  sec
  lda z:$12
  sbc z:$0E
  sta z:$00
  lda z:$14
  sbc z:$10
  bcc EL_AA8F
  sta z:$14
  lda z:$00
  sta z:$12
  inc z:$0A
EL_AA8F:
  dey
  bne EL_AA72
  rts
  jsr EL_AA68
  sty z:$1E
  ldx #$02
  bne EL_AAA3
  jsr EL_AA43
  ldx #$02
EL_AAA3:
  lda z:$12,x
  sta z:$0A,x
  dex
  dex
  bpl EL_AAA3
  lda z:$1E
  bmi EL_AAB0
  rts
EL_AAB0:
  jmp EL_AB65
  clc
  ldx #$FFFC
EL_AAB7:
  lda z:$0E,x
  adc z:$12,x
  sta z:$0E,x
  inx
  inx
  bne EL_AAB7
  rts
  sec
  ldx #$FFFC
EL_AAC6:
  lda z:$0E,x
  sbc z:$12,x
  sta z:$0E,x
  inx
  inx
  bne EL_AAC6
  rts
EL_AAD1:
  clc
  ldy #$FFFF
  ldx #$FFFC
EL_AAD8:
  tya
  adc z:$12,x
  sta z:$12,x
  inx
  inx
  bne EL_AAD8
  tax
  bpl EL_AAE5
  rts
EL_AAE5:
  asl z:$0A
  rol z:$0C
  jmp EL_AAD1
  clc
  lda z:$0C
  bpl EL_AAF2
  sec
EL_AAF2:
  php
EL_AAF3:
  clc
  ldy #$FFFF
  ldx #$FFFC
EL_AAFA:
  tya
  adc z:$12,x
  sta z:$12,x
  inx
  inx
  bne EL_AAFA
  tax
  bpl EL_AB08
  plp
  rts
EL_AB08:
  plp
  php
  ror z:$0C
  ror z:$0A
  jmp EL_AAF3
EL_AB11:
  clc
  ldy #$FFFF
  ldx #$FFFC
EL_AB18:
  tya
  adc z:$12,x
  sta z:$12,x
  inx
  inx
  bne EL_AB18
  tax
  bpl EL_AB25
  rts
EL_AB25:
  lsr z:$0C
  ror z:$0A
  jmp EL_AB11
  ldx #$02
EL_AB2F:
  lda z:$0A,x
  eor #$FFFF
  sta z:$0A,x
  dex
  dex
  bpl EL_AB2F
  rts
  ldx #$02
EL_AB3E:
  lda z:$0A,x
  and z:$0E,x
  sta z:$0A,x
  dex
  dex
  bpl EL_AB3E
  rts
  ldx #$02
EL_AB4C:
  lda z:$0A,x
  ora z:$0E,x
  sta z:$0A,x
  dex
  dex
  bpl EL_AB4C
  rts
  ldx #$02
EL_AB5A:
  lda z:$0A,x
  eor z:$0E,x
  sta z:$0A,x
  dex
  dex
  bpl EL_AB5A
  rts
EL_AB65:
  sec
  ldx #$FFFC
EL_AB69:
  tya
  sbc z:$0E,x
  sta z:$0E,x
  inx
  inx
  bne EL_AB69
  rts
  jsr EL_AB7C
  lda z:$0A
  eor #$01
  rts
EL_AB7C:
  ldx #$02
EL_AB7F:
  lda z:$0A,x
  bne EL_AB96
  dex
  dex
  bpl EL_AB7F
  bmi EL_ABA7
  ldx #$02
EL_AB8C:
  lda z:$0A,x
  cmp z:$0E,x
  bne EL_ABA7
  dex
  dex
  bpl EL_AB8C
EL_AB96:
  iny
  sty z:$0A
  rts
  ldx #$02
EL_AB9D:
  lda z:$0A,x
  cmp z:$0E,x
  bne EL_AB96
  dex
  dex
  bpl EL_AB9D
EL_ABA7:
  sty z:$0A
  rts
  jsr EL_AC0A
  bpl EL_ABB0
  iny
EL_ABB0:
  tya
  bvc EL_ABB6
  eor #$01
EL_ABB6:
  sta z:$0A
  rts
  jsr EL_AC0A
  bcs EL_ABBF
  iny
EL_ABBF:
  sty z:$0A
  rts
  jsr EL_AC15
  bpl EL_ABC8
  iny
EL_ABC8:
  tya
  bvc EL_ABCE
  eor #$01
EL_ABCE:
  sta z:$0A
  rts
  jsr EL_AC15
  bcs EL_ABD7
  iny
EL_ABD7:
  sty z:$0A
  rts
  jsr EL_AC15
  bmi EL_ABE0
  iny
EL_ABE0:
  tya
  bvc EL_ABE6
  eor #$01
EL_ABE6:
  sta z:$0A
  rts
  jsr EL_AC15
  bcc EL_ABEF
  iny
EL_ABEF:
  sty z:$0A
  rts
  jsr EL_AC0A
  bmi EL_ABF8
  iny
EL_ABF8:
  tya
  bvc EL_ABFE
  eor #$01
EL_ABFE:
  sta z:$0A
  rts
  jsr EL_AC0A
  bcc EL_AC07
  iny
EL_AC07:
  sty z:$0A
  rts
EL_AC0A:
  lda z:$0A
  cmp z:$0E
  sty z:$0A
  lda z:$0C
  sbc z:$10
  rts
EL_AC15:
  lda z:$0E
  cmp z:$0A
  sty z:$0A
  lda z:$10
  sbc z:$0C
  rts
  lda z:$0A
  bpl EL_AC27
  ldy #$FFFF
EL_AC27:
  sty z:$0C
  rts
EL_AC2A:
  tyx
  lda [$06],y
  sta z:$0A,x
  iny
  iny
  cpy #$04
  bne EL_AC2A
  beq EL_AC44
EL_AC38:
  tyx
  lda [$06],y
  sta z:$0E,x
  iny
  iny
  cpy #$04
  bne EL_AC38
EL_AC44:
  lda z:$06
  adc #$03
  sta z:$06
  rts
  ldy #$FFFF
  tya
  bne EL_AC55
  lda #$01
EL_AC55:
  clc
  adc z:$0A
  sta z:$0A
  tya
  adc z:$0C
  sta z:$0C
  rts
  ply
  pla
  sta z:$0E
  phy
  ldy #$02
EL_AC68:
  tyx
  lda z:$0A,x
  sta ($0E),y
  dey
  dey
  bpl EL_AC68
  rts
  ldx #$02
EL_AC75:
  lda z:$0A,x
  ldy z:$0E,x
  sta z:$0E,x
  sty z:$0A,x
  dex
  dex
  bpl EL_AC75
  rts
  jsr EL_A77F
  ldy #$02
EL_AC88:
  tyx
  lda ($00),y
  sta z:$0A,x
  dey
  dey
  bpl EL_AC88
  rts
  jsr EL_A77F
  ldy #$02
EL_AC98:
  tyx
  lda ($00),y
  sta z:$0E,x
  dey
  dey
  bpl EL_AC98
  rts
  jsr EL_A77F
  ldy #$02
EL_ACA8:
  tyx
  lda z:$0A,x
  sta ($00),y
  dey
  dey
  bpl EL_ACA8
  rts
  jsr EL_A77F
EL_ACB5:
  ldy #$02
  plx
EL_ACB9:
  lda ($00),y
  pha
  dey
  dey
  bpl EL_ACB9
  phx
  rts
  jsr EL_A775
EL_ACC5:
  ldy #$02
EL_ACC8:
  tyx
  lda ($00),y
  sta z:$0A,x
  dey
  dey
  bpl EL_ACC8
  rts
  jsr EL_A775
  ldy #$02
EL_ACD8:
  tyx
  lda ($00),y
  sta z:$0E,x
  dey
  dey
  bpl EL_ACD8
  rts
  jsr EL_A775
  ldy #$02
EL_ACE8:
  tyx
  lda z:$0A,x
  sta ($00),y
  dey
  dey
  bpl EL_ACE8
  rts
  jsr EL_A775
  ldy #$02
  plx
EL_ACF9:
  lda ($00),y
  pha
  dey
  dey
  bpl EL_ACF9
  phx
  rts
  lda #$0A
  sta z:$00
  jmp EL_ACB5
  plx
  pla
  sta z:$0E
  pla
  sta z:$10
  phx
  rts
  lda z:$0A
  sta z:$00
  jmp EL_ACC5
EL_AD1A:
  pha
  tya
  lda z:$00,x
  sta z:$00
  ldy #$00
  lda ($00),y
  sta z:$0A
  sep #$20
  xba
  rep #$20
  and #$FF
  txa
  beq EL_AD37
EL_AD32:
  lsr z:$0A
  dex
  bne EL_AD32
EL_AD37:
  pla
  jsr EL_AD93
  lda z:$0A
  and z:$0C
  sta z:$0A
  lda #$00
  tax
  ldy #$01
  rts
EL_AD49:
  jsr EL_AD1A
  lda z:$0C
  eor #$FFFF
  sta a:$000C
  lsr a
  and z:$0A
  beq EL_AD5F
  lda z:$0A
  ora z:$0C
  sta z:$0A
EL_AD5F:
  txa
  rts
EL_AD61:
  pha
  tyx
  lda z:$00,x
  sta z:$00
  jsr EL_AD93
  pla
  sep #$20
  xba
  rep #$20
  and #$FF
  txa
  beq EL_AD7D
EL_AD76:
  asl z:$0A
  asl z:$0C
  dex
  bne EL_AD76
EL_AD7D:
  lda z:$0A
  and z:$0C
  sta z:$0A
  lda z:$0C
  eor #$FFFF
  and ($00),y
  ora z:$0A
  sta ($00),y
  txa
  ldy #$01
  rts
EL_AD93:
  and #$FF
  tay
  lda #$00
  sta z:$0C
EL_AD9C:
  sec
  rol z:$0C
  dey
  bne EL_AD9C
  rts
  rep #$30
  lda #$FFFF
  sta z:$68
  lda z:$54
  beq EL_ADE7
  cmp #$21
  bcs EL_ADE7
  sta z:$9B
  asl a
  asl a
  asl a
  sta z:$9F
  lda z:$56
  beq EL_ADE7
  cmp #$21
  bcs EL_ADE7
  asl a
  asl a
  asl a
  sta z:$9D
  lda z:$9F
  asl a
  asl a
  pha
  sec
  sbc #$10
  sta z:$A1
  pla
  sta z:$94
  lda z:$56
  sta z:$97
  jsr EL_B1FC
  lda z:$94
  sec
  sbc #$18
  sta z:$A3
  stz z:$68
EL_ADE7:
  rts
  rep #$30
  lda #$FFFF
  sta z:$68
  lda z:$54
  cmp z:$9F
  bcc EL_ADF8
  jmp EL_AE67
EL_ADF8:
  lda z:$56
  cmp z:$9D
  bcc EL_AE01
  jmp EL_AE67
EL_AE01:
  phb
  lda z:$56
  lsr a
  lsr a
  lsr a
  sta z:$94
  lda z:$9F
  asl a
  asl a
  sta z:$97
  jsr EL_B1FC
  lda z:$56
  and #$07
  asl a
  clc
  adc z:$94
  sta z:$A5
  lda z:$54
  lsr a
  lsr a
  lsr a
  asl a
  asl a
  asl a
  asl a
  asl a
  clc
  adc z:$A5
  sta z:$A5
  lda #$BFFF
  sta z:$B4
  sta z:$B6
  sta z:$B8
  clc
  adc #$FE3E
  sta z:$B2
  dec a
  dec a
  dec a
  sta z:$AC
  sta z:$AE
  sta z:$B0
  clc
  adc #$FF6A
  sta z:$AA
  lda z:$54
  and #$07
  tay
  iny
  sep #$20
.a8
  lda #$00
EL_AE55:
  sec
  ror a
  dey
  bne EL_AE55
  sta z:$BE
  jsr EL_AF93
  bcs EL_AE66
  ldx #$00
  stx z:$68
EL_AE66:
  plb
EL_AE67:
  rts
EL_AE68:
  ldy z:$AE
  stz z:$97
  stz z:$98
  dey
  lda z:$A5
  sta ($97),y
  dey
  lda z:$A6
  sta ($97),y
  dey
  lda z:$BE
  sta ($97),y
  cpy z:$AA
  bpl EL_AE83
  ldy z:$AC
EL_AE83:
  cpy z:$B0
  beq EL_AE8B
  sty z:$AE
  clc
  rts
EL_AE8B:
  sec
  rts
EL_AE8D:
  ldy z:$B6
  stz z:$97
  stz z:$98
  dey
  lda z:$A5
  sta ($97),y
  dey
  lda z:$A6
  sta ($97),y
  dey
  lda z:$BE
  sta ($97),y
  cpy z:$B2
  bpl EL_AEA8
  ldy z:$B4
EL_AEA8:
  cpy z:$B8
  beq EL_AEB0
  sty z:$B6
  clc
  rts
EL_AEB0:
  sec
  rts
EL_AEB2:
  ldy z:$B0
  stz z:$97
  stz z:$98
  dey
  lda ($97),y
  sta z:$A5
  dey
  lda ($97),y
  sta z:$A6
  dey
  lda ($97),y
  sta z:$BE
  cpy z:$AA
  bpl EL_AECD
  ldy z:$AC
EL_AECD:
  sty z:$B0
  rts
EL_AED0:
  ldy z:$B8
  stz z:$97
  stz z:$98
  dey
  lda ($97),y
  sta z:$A5
  dey
  lda ($97),y
  sta z:$A6
  dey
  lda ($97),y
  sta z:$BE
  cpy z:$B2
  bpl EL_AEEB
  ldy z:$B4
EL_AEEB:
  sty z:$B8
  rts
EL_AEEE:
  rep #$20
  pha
  lda z:$A5
  sec
.a16
  sbc #$20
  sta z:$A5
  pla
  sep #$20
  rts
EL_AEFD:
  rep #$20
  pha
  lda z:$A5
  clc
  adc #$20
  sta z:$A5
  pla
  sep #$20
  rts
EL_AF0C:
  rep #$20
  pha
  lda z:$A5
  bit #$0F
  bne EL_AF19
  sec
  sbc z:$A1
EL_AF19:
  dec a
  dec a
  sta z:$A5
  pla
  sep #$20
  rts
EL_AF21:
  rep #$20
  pha
  lda z:$A5
  inc a
  inc a
  bit #$0F
  bne EL_AF30
  clc
  adc z:$A1
EL_AF30:
  sta z:$A5
  pla
  sep #$20
  rts
EL_AF36:
  rep #$20
  pha
  lda z:$A1
  clc
  adc #$10
  sta z:$97
  lda z:$A5
  sta z:$94
  jsr EL_B21E
  lda #$0E
  cmp z:$99
  pla
  sep #$20
  rts
EL_AF51:
  jsr EL_B1C4
  ora z:$C0
  sta z:$BB
.a8
  cmp #$FF
  beq EL_AF8B
  lda #$80
  sta z:$BE
EL_AF60:
  clc
  rol z:$BB
  bcs EL_AF83
  lda z:$BF
  and #$01
  beq EL_AF76
  jsr EL_AE68
  bcs EL_AF92
  lda z:$BF
  and #$FE
  sta z:$BF
EL_AF76:
  lda z:$BB
  bne EL_AF7C
  bra EL_AF91
EL_AF7C:
  sec
  ror z:$BE
  bcc EL_AF60
  bra EL_AF91
EL_AF83:
  lda z:$BF
  ora #$01
  sta z:$BF
  bra EL_AF7C
EL_AF8B:
  lda z:$BF
  ora #$01
  sta z:$BF
EL_AF91:
  clc
EL_AF92:
  rts
EL_AF93:
  lda #$7F
  sta z:$A7
  pha
  plb
  jsr EL_AE68
  bcs EL_AFB4
  stz z:$BE
  jsr EL_AE68
  bcs EL_AFB4
EL_AFA5:
  jsr EL_AE8D
  bcs EL_AFB4
EL_AFAA:
  jsr EL_AEB2
  lda z:$BE
  bne EL_AFB5
  jmp EL_B0A0
EL_AFB4:
  rts
EL_AFB5:
  jsr EL_B1C4
  sta z:$BF
  and z:$BE
  beq EL_AFCE
  pha
  asl z:$BE
  lda #$FF
  eor z:$BE
  sta z:$BE
  pla
  bit z:$BE
  bne EL_AFAA
  bra EL_AFDF
EL_AFCE:
  jsr EL_AF36
  bcs EL_AFF6
  jsr EL_AEEE
  jsr EL_B1C4
  sta z:$BF
  ora #$00
  beq EL_AFCE
EL_AFDF:
  stz z:$BE
EL_AFE1:
  clc
  ror a
  bcs EL_AFEA
  sec
  rol z:$BE
  bra EL_AFE1
EL_AFEA:
  lda z:$BE
  bne EL_AFFA
  jsr EL_AEFD
  jsr EL_B1C4
  sta z:$BF
EL_AFF6:
  lda #$FF
  sta z:$BE
EL_AFFA:
  jsr EL_AE8D
  bcc EL_B002
  jmp EL_AFB4
EL_B002:
  lda z:$BF
  xba
  lda #$03
  sta z:$BF
  xba
EL_B00A:
  and z:$BE
  beq EL_B03F
  stz z:$BA
EL_B010:
  clc
  rol a
  bcs EL_B019
  sec
  ror z:$BA
  bra EL_B010
EL_B019:
  lda z:$BA
  and z:$BE
  sta z:$BA
  bne EL_B033
  lda z:$C0
  sta z:$BE
EL_B025:
  jsr EL_AEEE
  jsr EL_AE8D
  bcc EL_B030
  jmp EL_AFB4
EL_B030:
  jmp EL_AFAA
EL_B033:
  lda z:$BA
  sta z:$BE
  jsr EL_AE8D
  bcc EL_B03F
  jmp EL_AFB4
EL_B03F:
  lda z:$BE
  jsr EL_B1D7
  ldx z:$A5
  stx z:$A8
  jsr EL_AF0C
  lda z:$BE
  eor #$FF
  sta z:$C0
  ldx z:$A5
  bmi EL_B05D
  jsr EL_AF51
  bcc EL_B05D
  jmp EL_AFB4
EL_B05D:
  ldx z:$A8
  stx z:$A5
  jsr EL_AF21
  ldx z:$A5
  cpx z:$A3
  bcs EL_B079
  ror z:$BF
  php
  jsr EL_AF51
  bcc EL_B076
  plp
  jmp EL_AFB4
EL_B076:
  plp
  rol z:$BF
EL_B079:
  ldx z:$A8
  stx z:$A5
  lda z:$C0
  eor #$FF
  sta z:$BE
  and #$01
  bne EL_B08A
  jmp EL_AFAA
EL_B08A:
  jsr EL_AEFD
  jsr EL_AF36
  bcs EL_B025
  lda z:$BE
  sta z:$C0
  lda #$FF
  sta z:$BE
  jsr EL_B1C4
  jmp EL_B00A
EL_B0A0:
  jsr EL_AE68
  bcc EL_B0A8
  jmp EL_AFB4
EL_B0A8:
  jsr EL_AED0
  lda z:$BE
  bne EL_B0BA
  ldy z:$B6
  cpy z:$B8
  beq EL_B0B8
  jmp EL_AFA5
EL_B0B8:
  clc
  rts
EL_B0BA:
  ldy z:$A5
  phy
  lda z:$BE
  pha
  jsr EL_AED0
  lda z:$BE
  sta z:$BF
  pla
  sta z:$BE
  ldy z:$A5
  sty z:$C0
  ply
  sty z:$A5
  rep #$20
  lda z:$A1
  clc
.a16
  adc #$10
  sta z:$97
  lda z:$A5
  sta z:$94
  jsr EL_B21E
  asl z:$94
  asl z:$94
  asl z:$94
  lda z:$A5
  and #$0F
  lsr a
  clc
  adc z:$94
  sta z:$94
  lda z:$58
  sta z:$97
  jsr EL_B21E
  asl z:$99
  asl z:$99
  lda z:$5C
  clc
  adc z:$99
  sta z:$94
  sep #$20
  lda z:$5A
  sta z:$96
  ldy z:$A5
  cpy z:$C0
  beq EL_B155
  jsr EL_B15F
EL_B114:
  jsr EL_AEFD
  ldy z:$A5
  cpy z:$C0
  beq EL_B155
  ldy #$00
  sty z:$97
  sty z:$99
  ldy z:$97
  lda [$94],y
  ldy z:$99
  sta [$A5],y
  inc z:$97
  inc z:$99
  ldy z:$97
  lda [$94],y
  ldy z:$99
  sta [$A5],y
  inc z:$97
  ldy #$10
  sty z:$99
  ldy z:$97
  lda [$94],y
  ldy z:$99
  sta [$A5],y
  inc z:$97
  inc z:$99
  ldy z:$97
  lda [$94],y
  ldy z:$99
  sta [$A5],y
  bra EL_B114
EL_B155:
  lda z:$BF
  sta z:$BE
  jsr EL_B15F
  jmp EL_B0A8
EL_B15F:
  lda z:$BE
.a8
  eor #$FF
  sta z:$BA
  ldy #$00
  sty z:$97
  sty z:$99
  ldy z:$97
  lda [$94],y
  and z:$BE
  sta z:$BB
  ldy z:$99
  lda [$A5],y
  and z:$BA
  ora z:$BB
  sta [$A5],y
  inc z:$97
  inc z:$99
  ldy z:$97
  lda [$94],y
  and z:$BE
  sta z:$BB
  ldy z:$99
  lda [$A5],y
  and z:$BA
  ora z:$BB
  sta [$A5],y
  inc z:$97
  ldy #$10
  sty z:$99
  ldy z:$97
  lda [$94],y
  and z:$BE
  sta z:$BB
  ldy z:$99
  lda [$A5],y
  and z:$BA
  ora z:$BB
  sta [$A5],y
  inc z:$97
  inc z:$99
  ldy z:$97
  lda [$94],y
  and z:$BE
  sta z:$BB
  ldy z:$99
  lda [$A5],y
  and z:$BA
  ora z:$BB
  sta [$A5],y
  rts
EL_B1C4:
  ldy #$00
  lda [$A5],y
  iny
  ora [$A5],y
  ldy #$10
  ora [$A5],y
  iny
  ora [$A5],y
  eor #$FF
  rts
EL_B1D7:
  eor #$FF
  sta z:$C0
  ldy #$00
  lda [$A5],y
  and z:$C0
  sta [$A5],y
  iny
  lda [$A5],y
  and z:$C0
  sta [$A5],y
  ldy #$10
  lda [$A5],y
  and z:$C0
  sta [$A5],y
  iny
  lda [$A5],y
  and z:$C0
  sta [$A5],y
  rts
EL_B1FC:
  php
  rep #$30
  pha
  ldy #$00
  sty z:$99
  ldy #$10
EL_B208:
  lda z:$94
  lsr a
  bcc EL_B214
  clc
  lda z:$99
  adc z:$97
  sta z:$99
EL_B214:
  ror z:$99
  ror z:$94
  dey
  bne EL_B208
  pla
  plp
  rts
EL_B21E:
  php
  rep #$30
  pha
  ldy #$00
  sty z:$99
  ldy #$10
EL_B22A:
  asl z:$94
  rol z:$99
  sec
  lda z:$99
  sbc z:$97
  bcc EL_B239
  sta z:$99
  inc z:$94
EL_B239:
  dey
  bne EL_B22A
  pla
  plp
  rts
  rep #$10
  sep #$20
  lda z:$5E
  beq EL_B25D
  ldx z:$64
  jsr EL_9C3D
  sty z:$64
  stx z:$66
  sep #$20
  stz a:$0B87
  stz a:$0B88
  inc a:$0B88
  lda z:$5E
EL_B25D:
  bne EL_B262
  jmp EL_B315
EL_B262:
  lda z:$56
  sta a:$0B8C
  stz a:$0B8D
  lda z:$5A
  sta a:$0B90
  stz a:$0B91
  xba
  lda z:$58
  sta a:$0B8E
  stz a:$0B8F
  lda z:$5C
  sta a:$0B92
  stz a:$0B93
  rep #$30
  sta a:$4202
  lda z:$60
  dec a
  sta a:$0BA8
  stz a:$0BAA
  ldx z:$62
  stx a:$0BA4
  stx a:$0BA6
  lda a:$4216
  asl a
  sta a:$0B94
  sep #$20
  lda z:$54
  cmp #$01
  beq EL_B2B1
  cmp #$02
  beq EL_B2B6
  ldx a:$0B32
  bra EL_B2B9
EL_B2B1:
  ldx a:$0B2E
  bra EL_B2B9
EL_B2B6:
  ldx a:$0B30
EL_B2B9:
  rep #$20
  lda a:$0B8E
  asl a
  asl a
  asl a
  asl a
  asl a
  clc
  adc a:$0B8C
  sta a:$0BA2
  txa
  clc
  adc a:$0BA2
  sta a:$0BA2
  ldx z:$65
  stx a:$0B97
  stx a:$0B8A
  ldx z:$64
  stx a:$0B96
  stx a:$0B89
  lda a:$0BA8
  sep #$20
  dec a
  ldy #$03
  ldx a:$0B94
EL_B2EE:
  xba
  php
  jsr EL_B316
  plp
  lda a:$0B89
  sta a:$0B96,y
  lda a:$0B8A
  sta a:$0B97,y
  lda a:$0B8B
  sta a:$0B98,y
  iny
  iny
  iny
  xba
  dec a
  bpl EL_B2EE
  sep #$20
  inc a:$0B87
  inc a:$0B88
EL_B315:
  rts
EL_B316:
  php
  rep #$30
  pha
  phx
  phy
  txa
  clc
  adc a:$0B89
.a16
  ora #$8000
  sta a:$0B89
  bcc EL_B32E
  sep #$20
  inc a:$0B8B
EL_B32E:
  rep #$30
  ply
  plx
  pla
  plp
  rts
  rep #$10
  ldx z:$5E
  jsr EL_9C3D
  sty z:$5E
  stx z:$60
  sep #$20
  stz a:$0B87
  stz a:$0B88
  inc a:$0B88
  rep #$30
  lda z:$54
  asl a
  asl a
  sta a:$0BB9
  lda z:$5A
  dec a
  sta a:$0BB3
  stz a:$0BB5
  sep #$20
  lda z:$56
  sta a:$0BB7
  stz a:$0BB8
  ldx z:$5C
  stx a:$0BAF
  stx a:$0BB1
  lda z:$58
  bne EL_B38E
  ldx a:$0BB9
.a8
  lda #$F0
  xba
  lda a:$0BB7
EL_B37C:
  xba
  lda #$F0
  sta a:$0901,x
  inx
  inx
  inx
  inx
  xba
  dec a
  bne EL_B37C
  lda #$00
  bra EL_B395
EL_B38E:
  php
  jsr EL_B3A4
  plp
  lda #$02
EL_B395:
  sta a:$0B87
  sta a:$0B88
  lda #$01
  ora a:$0B56
  sta a:$0B56
  rts
EL_B3A4:
  rep #$10
  sep #$20
  lda #$04
  ldx z:$54
  php
  jsr EL_8CEA
  plp
  ldx z:$5E
  stx z:$3D
  lda z:$60
  sta z:$3F
  lda #$00
  sta a:$0B56
  rep #$20
.a16
  lda #$00
  sec
  sbc z:$3D
  sta a:$0E01
  lda z:$54
  asl a
  asl a
  tax
  ldy #$00
  sty a:$0BCB
  sep #$20
  lda z:$56
  sta a:$0B5C
EL_B3DB:
  lda [$3D],y
  sta a:$0900,x
  iny
  cpy a:$0E01
  bne EL_B3EB
  php
  jsr EL_922B
  plp
EL_B3EB:
  lda [$3D],y
  sta a:$0901,x
  iny
  cpy a:$0E01
  bne EL_B3FB
  php
  jsr EL_922B
  plp
EL_B3FB:
  lda [$3D],y
  sta a:$0902,x
  phx
  ldx a:$0BCB
  sta a:$0BBB,x
  plx
  iny
  cpy a:$0E01
  bne EL_B413
  php
  jsr EL_922B
  plp
EL_B413:
  lda [$3D],y
  sta a:$0903,x
  iny
  cpy a:$0E01
  bne EL_B423
  php
  jsr EL_922B
  plp
EL_B423:
  lda [$3D],y
  sta a:$0BCD
  inx
  inx
  inx
  inx
  iny
  cpy a:$0E01
  bne EL_B437
  php
  jsr EL_922B
  plp
EL_B437:
  phx
  phy
  ldy a:$0B5A
  cpy #$04
  beq EL_B443
  bra EL_B44C
EL_B443:
  ldy #$00
  sty a:$0B5A
  inc a:$0B58
EL_B44C:
  dey
  bmi EL_B453
  asl a
  asl a
  bra EL_B44C
EL_B453:
  xba
  ldy a:$0B5A
  inc a:$0B5A
  ldx a:$0B58
  lda a:$9A96,y
  and a:$0B00,x
  sta a:$0B00,x
  xba
  ora a:$0B00,x
  sta a:$0B00,x
  ldx a:$0BCB
  lda a:$0BCD
.a8
  and #$02
  beq EL_B47E
  lda a:$0B40
  and #$0F
  bra EL_B487
EL_B47E:
  lda a:$0B40
  and #$F0
  lsr a
  lsr a
  lsr a
  lsr a
EL_B487:
  sta a:$0BC3,x
  inx
  stx a:$0BCB
  ply
  plx
  dec a:$0B5C
  beq EL_B498
  jmp EL_B3DB
EL_B498:
  rts
  rep #$10
  ldx z:$62
  jsr EL_9C3D
  sty z:$62
  stx z:$64
  sep #$20
  stz a:$0B87
  stz a:$0B88
  inc a:$0B88
  lda z:$5A
  beq EL_B4E4
  rep #$30
  ldx a:$0BCE
  bne EL_B4CB
  lda z:$5C
  dec a
  sta a:$0BD0
  stz a:$0CB8
  ldx z:$5E
  stx a:$0BD2
  stx a:$0CB6
EL_B4CB:
  jsr EL_B4ED
  jsr EL_B54F
  rep #$20
  lda z:$60
  sta a:$0CB4
  sep #$20
  lda #$03
  sta a:$0B87
  sta a:$0B88
  bra EL_B4EC
EL_B4E4:
  jsr EL_B59B
  rep #$20
  stz a:$0CB4
EL_B4EC:
  rts
EL_B4ED:
  rep #$30
  ldy z:$54
  tyx
  clc
.a16
  lda #$01
EL_B4F6:
  dey
  bmi EL_B4FC
  asl a
  bra EL_B4F6
EL_B4FC:
  ora a:$0BCE
  sta a:$0BCE
  txa
  ora #$0C00
  sta a:$4202
  nop
  nop
  nop
  nop
  nop
  lda a:$4216
  tax
  lda z:$63
  sta a:$0BD5,x
  sta a:$0B8A
  lda z:$62
  sta a:$0BD4,x
  sta a:$0B89
  inx
  inx
  inx
  txy
  sep #$20
  lda a:$0BD0
  dec a
  ldx #$20
EL_B52F:
  php
  jsr EL_B316
  plp
  xba
  lda a:$0B89
  sta a:$0BD4,y
  lda a:$0B8A
  sta a:$0BD5,y
  lda a:$0B8B
  sta a:$0BD6,y
  iny
  iny
  iny
  xba
  dec a
  bpl EL_B52F
  rts
EL_B54F:
  rep #$30
  lda z:$54
  asl a
  tax
  sep #$20
  lda z:$56
.a8
  cmp #$02
  beq EL_B587
  cmp #$01
  beq EL_B57E
  cmp #$00
  bne EL_B59A
  rep #$30
  lda z:$58
.a16
  and #$01FF
  cmp #$0100
  bcs EL_B576
  ldy a:$0B2A
  bra EL_B58E
EL_B576:
  and #$FF
  ldy a:$0B2C
  bra EL_B58E
EL_B57E:
  rep #$30
  lda z:$58
  ldy a:$0B36
  bra EL_B58E
EL_B587:
  rep #$30
  lda z:$58
  ldy a:$0B38
EL_B58E:
  sty z:$58
  asl a
  asl a
  asl a
  asl a
  clc
  adc z:$58
  sta a:$0C94,x
EL_B59A:
  rts
EL_B59B:
  rep #$30
  lda #$00
  tax
EL_B5A1:
  sta a:$0C94,x
  inx
  inx
  cpx #$20
  bne EL_B5A1
  tax
EL_B5AC:
  sta a:$0BD4,x
  inx
  inx
  cpx #$C0
  bne EL_B5AC
  stz a:$0CB4
  stz a:$0BCE
  sep #$20
  stz a:$0B87
  inc a:$0B88
  rts
  sep #$20
  lda z:$54
.a8
  cmp #$03
  bcc EL_B5D4
  rep #$10
  ldx z:$56
  stx a:$0CB4
EL_B5D4:
  sta a:$0B87
  inc a:$0B88
  rts
  rep #$30
  ldy z:$56
  lda z:$54
  asl a
  asl a
  tax
  phx
  lda z:$58
  bmi EL_B5FD
  sep #$20
EL_B5EB:
  pha
  clc
  adc a:$0900,x
  sta a:$0900,x
  inx
  inx
  inx
  inx
  pla
  dey
  bne EL_B5EB
  bra EL_B618
EL_B5FD:
  rep #$20
.a16
  eor #$FFFF
  inc a
  sep #$20
EL_B605:
  pha
  sec
  sbc a:$0900,x
.a8
  eor #$FF
  inc a
  sta a:$0900,x
  inx
  inx
  inx
  inx
  pla
  dey
  bne EL_B605
EL_B618:
  ldy z:$56
  plx
  rep #$20
  lda z:$5A
  bmi EL_B635
  sep #$20
EL_B623:
  pha
  clc
  adc a:$0901,x
  sta a:$0901,x
  inx
  inx
  inx
  inx
  pla
  dey
  bne EL_B623
  bra EL_B650
EL_B635:
  rep #$20
.a16
  eor #$FFFF
  inc a
  sep #$20
EL_B63D:
  pha
  sec
  sbc a:$0901,x
.a8
  eor #$FF
  inc a
  sta a:$0901,x
  inx
  inx
  inx
  inx
  pla
  dey
  bne EL_B63D
EL_B650:
  sep #$20
  lda #$01
  ora a:$0B56
  sta a:$0B56
  rts
  rep #$30
  ldy z:$56
  lda z:$54
  asl a
  asl a
  tax
  sep #$20
  lda #$F0
EL_B668:
  sta a:$0901,x
  inx
  inx
  inx
  inx
  dey
  bne EL_B668
  lda #$01
  ora a:$0B56
  sta a:$0B56
  rts
  sep #$20
  rep #$10
  lda z:$5C
  beq EL_B6A4
  lda z:$54
  sta a:$0DD2
  lda z:$56
  sta a:$0DD4
  lda z:$58
  sta a:$0DD3
  sta z:$5A
  sta a:$0DD5
  ldx z:$5E
  stx a:$0DD0
  stx a:$0DCE
  stz a:$0DCD
  lda z:$5C
EL_B6A4:
  sta a:$0DCC
  rts
  sep #$30
  lda z:$54
  tax
  asl a
  asl a
  asl a
  asl a
  asl a
  xba
  lda #$1F
  and a:$0B3F
  sta a:$0B3F
  xba
  ora a:$0B3F
  sta a:$0B3F
  sta a:$2101
  lda a:$9A9A,x
  sta a:$0B40
  rts
  rep #$10
  sep #$20
  lda z:$5A
  sta z:$3F
  ldy z:$58
  sty z:$3D
  jmp EL_B6E9
  rep #$10
  ldx z:$58
  jsr EL_9C3D
  sep #$20
  txa
  sta z:$3F
  sty z:$3D
EL_B6E9:
  sep #$20
  stz a:$0B56
  lda #$04
  ldx z:$54
  php
  jsr EL_8CEA
  plp
  lda z:$56
  sta a:$0B5C
  rep #$20
.a16
  lda #$00
  sec
  sbc z:$3D
  sta a:$0E01
  lda z:$54
  asl a
  asl a
  tax
  ldy #$00
  sep #$20
EL_B711:
.a8
  lda #$04
  sta a:$0BCB
EL_B716:
  lda [$3D],y
  sta a:$0900,x
  iny
  cpy a:$0E01
  bne EL_B726
  php
  jsr EL_922B
  plp
EL_B726:
  inx
  dec a:$0BCB
  bne EL_B716
  lda [$3D],y
  iny
  cpy a:$0E01
  bne EL_B739
  php
  jsr EL_922B
  plp
EL_B739:
  phx
  phy
  ldy a:$0B5A
  cpy #$04
  beq EL_B745
  bra EL_B74E
EL_B745:
  ldy #$00
  sty a:$0B5A
  inc a:$0B58
EL_B74E:
  dey
  bmi EL_B755
  asl a
  asl a
  bra EL_B74E
EL_B755:
  xba
  ldy a:$0B5A
  inc a:$0B5A
  ldx a:$0B58
  lda a:$9A96,y
  and a:$0B00,x
  sta a:$0B00,x
  xba
  ora a:$0B00,x
  sta a:$0B00,x
  ply
  plx
  dec a:$0B5C
  beq EL_B778
  bra EL_B711
EL_B778:
  inc a:$0B56
  rts
  rep #$10
  sep #$20
  lda z:$58
  beq EL_B79A
  ldx z:$60
  jsr EL_9C3D
  sty z:$60
  stx z:$62
  sep #$20
  stz a:$0B87
  stz a:$0B88
  inc a:$0B88
  lda z:$58
EL_B79A:
  bne EL_B79F
  jmp EL_B839
EL_B79F:
  lda z:$58
  cmp #$01
  bne EL_B7B9
  lda z:$54
  sta a:$0CBC
  stz a:$0CBD
  lda z:$56
  sta a:$0CC0
  stz a:$0CC1
  xba
  jmp EL_B7CA
EL_B7B9:
  lda z:$54
  sta a:$0CBE
  stz a:$0CBF
  lda z:$56
  sta a:$0CC2
  stz a:$0CC3
  xba
EL_B7CA:
  rep #$30
  lda z:$5E
  sta a:$0CB4
  lda z:$5A
  dec a
  sta a:$0CC4
  stz a:$0DCA
  ldx z:$5C
  stx a:$0CC6
  stx a:$0DC8
  ldx z:$60
  stx z:$3D
  lda z:$62
  sta z:$3F
  sep #$20
  ldx #$00
  lda z:$58
  cmp #$01
  beq EL_B7F8
  ldx #$80
EL_B7F8:
  lda a:$0CC4
  inc a
EL_B7FC:
  pha
  rep #$20
  lda a:$0CC0
  asl a
  tay
  lda z:$58
.a16
  cmp #$01
  beq EL_B810
  lda a:$0CC2
  asl a
  tay
EL_B810:
  sep #$20
EL_B812:
  lda [$3D]
  sta a:$0CC8,x
  rep #$20
  inc z:$3D
  bne EL_B824
  lda #$8000
  sta z:$3D
  inc z:$3F
EL_B824:
  sep #$20
  inx
  dey
  bne EL_B812
  pla
  dec a
  bne EL_B7FC
  sep #$20
.a8
  lda #$04
  sta a:$0B87
  inc a:$0B88
  rts
EL_B839:
  stz a:$0CB4
  rts
EL_B83D:
  rep #$30
  pha
  phx
.a16
  lda #$8000
  sta a:$0E01
  sta z:$CE
  ldy #$00
  sep #$20
  inc z:$D0
  rep #$20
  plx
  pla
  rts
EL_B855:
  php
  rep #$30
  lda #$00
  tay
  sec
  sbc z:$CE
  sta a:$0E01
  lda #$BBAA
EL_B865:
  cmp a:$2140
  bne EL_B865
  sep #$20
.a8
  lda #$CC
  bra EL_B8AA
EL_B870:
  lda [$CE],y
  iny
  cpy a:$0E01
  bne EL_B87D
  php
  jsr EL_B83D
  plp
EL_B87D:
  xba
  lda #$00
  bra EL_B897
EL_B882:
  xba
  lda [$CE],y
  iny
  cpy a:$0E01
  bne EL_B890
  php
  jsr EL_B83D
  plp
EL_B890:
  xba
EL_B891:
  cmp a:$2140
  bne EL_B891
  inc a
EL_B897:
  rep #$20
  sta a:$2140
  sep #$20
  dex
  bne EL_B882
EL_B8A1:
  cmp a:$2140
  bne EL_B8A1
EL_B8A6:
  adc #$03
  beq EL_B8A6
EL_B8AA:
  pha
  sep #$20
  lda [$CE],y
  iny
  cpy a:$0E01
  bne EL_B8BA
  php
  jsr EL_B83D
  plp
EL_B8BA:
  xba
  lda [$CE],y
  xba
  iny
  cpy a:$0E01
  bne EL_B8C9
  php
  jsr EL_B83D
  plp
EL_B8C9:
  tax
  lda [$CE],y
  iny
  cpy a:$0E01
  bne EL_B8D7
  php
  jsr EL_B83D
  plp
EL_B8D7:
  xba
  lda [$CE],y
  xba
  iny
  cpy a:$0E01
  bne EL_B8E6
  php
  jsr EL_B83D
  plp
EL_B8E6:
  rep #$20
  sta a:$2142
  sep #$20
  cpx #$01
  lda #$00
  rol a
  sta a:$2141
  adc #$7F
  pla
  sta a:$2140
EL_B8FC:
  cmp a:$2140
  bne EL_B8FC
  bvc EL_B906
  jmp EL_B870
EL_B906:
  sep #$20
  stz a:$2140
  stz a:$2141
  stz a:$2142
  stz a:$2143
  plp
  rts
  sep #$20
  lda z:$54
  sta a:$0E05
  lda z:$56
  sta a:$0E06
  lda #$01
  sta a:$0E04
  rts
  sep #$20
  lda #$00
  sta a:$0E05
  sta a:$0E06
  inc a
  sta a:$0E04
  rts
  sep #$20
  lda a:$2140
  sta z:$68
  lda a:$2142
  sta z:$69
  rts
  sep #$20
  stz a:$0E07
  inc a:$0B55
EL_B94C:
  lda a:$0B55
  bne EL_B94C
  lda z:$54
  sta a:$0E07
  lda z:$55
  sta a:$0E08
  rts
  rep #$10
  ldx z:$54
  jsr EL_9C3D
  sty z:$54
  stx z:$56
  rep #$10
  sep #$20
  ldy z:$54
  sty z:$CE
  lda z:$56
  sta z:$D0
  lda #$01
  sta a:$0E09
  lda #$FF
  sta a:$2140
  jsr EL_B855
  lda #$00
  sta a:$0E09
  sta a:$0E04
  sta a:$0E05
  sta a:$0E07
  sta a:$0E08
  sta a:$0E06
  rts
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte "root"
  .byte $00, $00, $00, $00, $01, $00, $00, $80, $AE, $75, $00, $00
  .byte "sgdata"
  .byte $00, $00, $01, $00, $AE, $F5, $88, $12, $00, $00
  .byte "fdata"
  .byte $00, $00, $00, $02, $00, $36, $88, $D8, $37, $00, $00
  .byte "cbmap0"
  .byte $00, $00, $02, $00, $0E, $C0, $E6, $E8, $00, $00
  .byte "initop"
  .byte $00, $00, $04, $00, $F4, $A8, $64, $3E, $00, $00
  .byte "ibento"
  .byte $00, $00, $04, $00, $58, $E7, $F4, $08, $00, $00
  .byte "maituki"
  .byte $00, $04, $00, $4C, $F0, $3E, $10, $00, $00
  .byte "cminato"
  .byte $00, $05, $00, $8A, $80, $DC, $0B, $00, $00
  .byte "jouriku"
  .byte $00, $05, $00, $66, $8C, $48, $12, $00, $00
  .byte "scom"
  .byte $00, $00, $00, $00, $05, $00, $AE, $9E, $34, $04, $00, $00
  .byte "sensou"
  .byte $00, $00, $05, $00, $E2, $A2, $02, $0B, $00, $00
  .byte "senmain"
  .byte $00, $05, $00, $E4, $AD, $8A, $27, $00, $00
  .byte "senfe"
  .byte $00, $00, $00, $05, $00, $6E, $D5, $A8, $20, $00, $00
  .byte "kdata"
  .byte $00, $00, $00, $05, $00, $16, $F6, $24, $0A, $00, $00
  .byte "uarugo"
  .byte $00, $00, $06, $00, $3A, $80, $3C, $1F, $00, $00
  .byte "ucom"
  .byte $00, $00, $00, $00, $06, $00, $76, $9F, $FA, $32, $00, $00
  .byte "ending"
  .byte $00, $00, $06, $00, $70, $D2, $BE, $2E, $00, $00
  .byte "uminato"
  .byte $00, $07, $00, $2E, $81, $12, $19, $00, $00
  .byte "hantei"
  .byte $00, $00, $07, $00, $40, $9A, $9E, $0E, $00, $00
  .byte "mdisp1"
  .byte $00, $00, $07, $00, $DE, $A8, $7C, $0D, $00, $00
  .byte "uminato2"
  .byte $07, $00, $5A, $B6, $42, $0D, $00, $00
  .byte "um_sub"
  .byte $00, $00, $07, $00, $9C, $C3, $30, $22, $00, $00
  .byte "oukyu"
  .byte $00, $00, $00, $07, $00, $CC, $E5, $5C, $2E, $00, $00
  .byte "koueki"
  .byte $00, $00, $08, $00, $28, $94, $48, $1C, $00, $00
  .byte "sakaba"
  .byte $00, $00, $08, $00, $70, $B0, $D0, $02, $00, $00
  .byte "s_nwaka"
  .byte $00, $08, $00, $40, $B3, $E6, $02, $00, $00
  .byte "s_nsaso"
  .byte $00, $08, $00, $26, $B6, $8A, $03, $00, $00
  .byte "s_nori"
  .byte $00, $00, $08, $00, $B0, $B9, $70, $02, $00, $00
  .byte "s_sake"
  .byte $00, $00, $08, $00, $20, $BC, $F8, $19, $00, $00
  .byte "s_onna"
  .byte $00, $00, $08, $00, $18, $D6, $AA, $16, $00, $00
  .byte "s_tobaku"
  .byte $08, $00, $C2, $EC, $58, $03, $00, $00
  .byte "s_ibent"
  .byte $00, $08, $00, $1A, $F0, $06, $05, $00, $00
  .byte "s_card"
  .byte $00, $00, $08, $00, $20, $F5, $78, $02, $00, $00
  .byte "s_bj"
  .byte $00, $00, $00, $00, $08, $00, $98, $F7, $D6, $0C, $00, $00
  .byte "s_pk"
  .byte $00, $00, $00, $00, $09, $00, $6E, $84, $2A, $20, $00, $00
  .byte "zousen"
  .byte $00, $00, $09, $00, $98, $A4, $FA, $1E, $00, $00
  .byte "z_tyuuko"
  .byte $09, $00, $92, $C3, $C6, $0A, $00, $00
  .byte "z_sinzou"
  .byte $09, $00, $58, $CE, $24, $0D, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00
  .byte "UNCHARTED WATERS      "
  .byte $02, $0A, $03, $01, $C8, $00, $B0, $57, $4F, $A8, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $61, $83, $00, $00, $93, $95, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $0F, $80, $00, $00
