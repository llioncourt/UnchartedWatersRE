; Uncharted Waters (SNES US) - engine bank $00
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"

.segment "CODE"

  jmp vm_enter
  jmp syscall_gate
  jmp vm_b7_prefix
  jmp vm_b7_prefix
  jmp EL_8E04
reset:
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
  lda #ED_F800
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
  jsr file_copy
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
  .byte $00
  .byte " ~", $00
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
  sta a:e_brightness
  lda #$00
  ldx #$00
  sta a:$0E19
  sta a:$0B4A
  stx a:$0B4B
  sta a:$0B4D
  stx a:$0B4E
  sta a:$0B50
  stx a:e_pads
  stx a:e_pads+2
  sta a:e_frame_wait
  sta a:$0E03
  sta a:e_screen_off
  inc a:e_screen_off
  sta a:e_nmi_jobs
  sta a:e_vram_job
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
  stx a:e_dma_bytes
  stx a:e_dma_src
  sta a:e_dma_src+2
  stx a:e_dma_vram
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
  sta a:e_apu_busy
  sta a:e_sound_req
  sta a:e_sound_req+1
  sta a:e_sound_req+3
  sta a:e_sound_req+4
  sta a:e_sound_req+2
  stx a:$0E0A
  stx a:$0E0C
  stx a:$0E0E
  stx a:$0E10
  stx a:$0E12
  stx a:$0E14
  sta a:$0E16
  lda #$13
  sta a:e_tm
  sta a:e_ts
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
  sta a:e_oam,x
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
  sta a:e_oam+512,x
  inx
  inx
  dey
  bne EL_8330
  rts
  .byte $E2, $20, $C2, $10, $A2, $A0, $9A, $86, $CE, $A9, $00, $85, $D0, $20, $55, $B8
  .byte $60, $E2, $20, $78, $A9, $A1, $8D, $00, $42, $A9, $24, $8D, $09, $41, $9C, $0A
  .byte $41, $9C, $07, $41, $9C, $08, $41, $60
nmi:
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
  lda a:e_apu_busy
  bne EL_83A0
  lda a:e_sound_req
  beq EL_8394
  lda a:e_sound_req+1
  sta a:$2140
  lda a:e_sound_req+2
  sta a:$2141
  stz a:e_sound_req
EL_8394:
  lda a:e_sound_req+3
  sta a:$2142
  lda a:e_sound_req+4
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
  lda a:e_nmi_jobs
  beq EL_83EF
  lsr a
  bcc EL_83DA
  lda #$01
  sta z:$4C
  jsr EL_8430
  lda #$FE
  and a:e_nmi_jobs
  sta a:e_nmi_jobs
EL_83DA:
  lda a:e_nmi_jobs
  and #$02
  sta a:e_nmi_jobs
  beq EL_83EF
  lda a:e_nmi_jobs
  sta z:$4C
  jsr EL_8457
  stz a:e_nmi_jobs
EL_83EF:
  lda a:e_vram_job
  beq EL_83F7
  jsr nmi_vram_dma
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
  stz a:e_frame_wait
  sep #$20
  stz a:e_frame_wait
  lda a:e_brightness
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
  jsr dma_run
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
  jsr dma_run
  rts
nmi_vram_dma:
  sep #$20
  rep #$10
  ldx #$4300
  stx z:$38
  ldx a:e_dma_vram
  stx z:$30
  stx a:$2116
  lda #$80
  sta a:$2115
  lda a:e_vram_job
  sta a:$0B20
  bmi EL_84AA
  lda #$18
  bra EL_84AF
EL_84AA:
  lda a:$213A
  lda #$39
EL_84AF:
  sta a:$0B21
  ldx a:e_dma_src
  stx a:$0B22
  lda a:e_dma_src+2
  sta a:$0B24
  rep #$20
  lda a:e_dma_bytes
.a16
  cmp #$0800
  bcc EL_84D4
  sec
  sbc #$0800
  sta a:e_dma_bytes
  lda #$0800
  bra EL_84DA
EL_84D4:
  ldx #$00
  stx a:e_dma_bytes
EL_84DA:
  sta a:$0B25
  clc
  lda a:e_dma_vram
  adc #$0400
  sta a:e_dma_vram
  clc
  lda a:e_dma_src
  adc #$0800
  bcc EL_84FD
  clc
  adc #$8000
  pha
  php
  sep #$20
  inc a:e_dma_src+2
  plp
  pla
EL_84FD:
  sta a:e_dma_src
  sep #$20
.a8
  lda #$01
  sta z:$4C
  jsr dma_run
  ldx a:e_dma_bytes
  bne EL_8511
  stz a:e_vram_job
EL_8511:
  rts
dma_run:
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
  jsr dma_run
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
  lda a:e_screen_off
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
  jsr dma_run
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
  sta a:e_oam+1,x
  lda #$01
  bra EL_8869
EL_885F:
  ldx a:$0B64
  lda #$F0
  sta a:e_oam+1,x
  lda #$01
EL_8869:
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
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
  jsr dma_run
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
  sta a:e_oam+2,x
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
  adc a:e_oam+2,x
  sta a:e_oam+2,x
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
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
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
  jsr dma_run
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
  stx a:e_tm
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
inidisp_set:
  rep #$10
  sep #$20
  sta a:e_brightness
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
  stx a:e_pads
  ldx a:$421A
  stx a:e_pads+2
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
  jsr dma_run
  stz a:e_nmi_jobs
  rts
cgram_dma_now:
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
  jsr dma_run
  stz a:e_nmi_jobs
  rts
vram_dma_now:
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
  ldx a:e_dma_vram
  stx z:$30
  stx a:$2116
  lda a:e_vram_job
  sta a:$0B20
  bmi EL_8DAC
  lda #$18
  bra EL_8DB1
EL_8DAC:
  lda a:$213A
  lda #$39
EL_8DB1:
  sta a:$0B21
  ldx a:e_dma_src
  stx a:$0B22
  lda a:e_dma_src+2
  sta a:$0B24
  rep #$20
  lda a:e_dma_bytes
  sta a:$0B25
  sep #$20
  lda #$01
  sta z:$4C
  jsr dma_run
  stz a:e_vram_job
  rep #$20
  pla
  sta z:$50
  pla
  sta z:$4E
  rts
syscall_dispatch:
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
wait_nmi:
  sep #$30
  lda z:$54
  sta z:$3D
  lda z:$55
  sta z:$3E
.a8
  lda #$7E
  sta z:$3F
  rts
sys_01_display_init:
  sep #$20
  lda #$8F
  jsr inidisp_set
  stz a:e_screen_off
  inc a:e_screen_off
  stz a:$4200
  lda #$04
  sta a:$2133
  jsr wait_nmi
  sep #$30
.i8
  ldy #$00
  lda [$3D],y
  sta a:e_obsel
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
  lda a:ED_9A9A,x
  sta a:$0B40
  iny
  iny
  lda [$3D],y
  sta a:$2105
  sta a:e_bgmode
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
sys_02_display_reset:
  sep #$30
  jsr wait_nmi
  rep #$10
  sep #$20
  stz a:e_nmi_jobs
  lda #$04
  sta a:$2133
  lda a:e_tm
  sta a:$212C
  lda a:e_ts
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
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
  lda #$02
  xba
  lda #$10
  sta z:$38
  ldx a:$0B30
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
  lda #$04
  xba
  lda #$20
  sta z:$38
  ldx a:$0B32
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
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
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
  lda #$10
  xba
  lda #$40
  sta z:$38
  ldx a:$0B2C
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
  lda #$20
  xba
  lda #$50
  sta z:$38
  ldx a:$0B36
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
  lda #$40
  xba
  lda #$60
  sta z:$38
  ldx a:$0B38
  stx z:$30
  stx a:$2116
  lda #$18
  jsr EL_9058
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
  lda #$80
  xba
  lda #$70
  sta z:$38
  stz z:$30
  stz z:$31
  stz a:$2121
  lda #$22
  jsr EL_9058
  lda a:e_nmi_jobs
  sta z:$4C
  jsr dma_run
  stz a:e_nmi_jobs
  lda #$0F
  jsr inidisp_set
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
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
EL_9097:
  iny
  rts
sys_03_palette_dma:
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
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
  lda a:e_screen_off
  beq EL_90C9
  jsr cgram_dma_now
  stz a:e_nmi_jobs
EL_90C9:
  lda a:e_nmi_jobs
  and #$02
  bne EL_90C9
  rts
sys_04_tilemap_clear:
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
  lda a:e_screen_off
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
tilemap_args:
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
sys_05_tilemap_write:
  jsr tilemap_args
  rep #$30
  lda z:$5E
  sta a:$0B7D
  sep #$20
  lda #$02
  sta a:$0B74
  lda a:e_screen_off
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
sys_06_tilemap_copy:
  jsr tilemap_args
  rep #$10
  sep #$20
  ldx z:$5E
  stx z:$3A
  lda z:$60
  sta z:$3C
.a8
  lda #$01
  sta a:$0B74
  lda a:e_screen_off
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
sys_07_tilemap_read:
  jsr tilemap_args
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
sys_08_oam_hide_all:
  rep #$10
  sep #$20
  lda #$F0
  ldx #$00
  ldy #$80
EL_9218:
  sta a:e_oam+1,x
  inx
  inx
  inx
  inx
  dey
  bne EL_9218
  lda #$01
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
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
sys_09_metasprite_set:
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
  sta a:e_oam,x
  lda z:$58
  sta a:e_oam+1,x
  lda [$3D],y
  sta a:e_oam+2,x
  iny
  cpy a:$0E01
  bne EL_92C5
  php
  jsr EL_922B
  plp
EL_92C5:
  lda [$3D],y
  sta a:e_oam+3,x
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
  lda a:ED_9A96,y
  and a:e_oam+512,x
  sta a:e_oam+512,x
  xba
  ora a:e_oam+512,x
  sta a:e_oam+512,x
  dec a:$0B5C
  bne EL_92F2
  lda #$01
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
  lda a:e_screen_off
  beq EL_9340
  jsr EL_8D1E
  stz a:e_nmi_jobs
EL_9340:
  rts
oam_entry_set:
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
  and a:e_nmi_jobs
  sta a:e_nmi_jobs
  lda z:$56
  sta a:e_oam,y
  iny
  lda z:$58
  sta a:e_oam,y
  iny
  lda z:$5A
  sta a:e_oam,y
  iny
  lda z:$5B
  sta a:e_oam,y
  ldx a:$0B58
  ldy a:$0B5A
  lda a:ED_9A96,y
  and a:e_oam+512,x
  sta a:e_oam+512,x
  lda z:$5C
EL_9387:
  dey
  bmi EL_938E
  asl a
  asl a
  bra EL_9387
EL_938E:
  ora a:e_oam+512,x
  sta a:e_oam+512,x
  rts
sys_10_sprite_move:
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
  jsr oam_entry_set
  sep #$20
  lda #$01
  sta a:$0B6C
EL_93B5:
  sta a:$0B62
  rts
tile_dma_args_4bpp:
  rep #$30
  lda z:$54
  asl a
  asl a
  asl a
  asl a
  sta a:e_dma_vram
  lda z:$56
  asl a
  asl a
  asl a
  asl a
  asl a
  sta a:e_dma_bytes
EL_93CE:
  lda z:$58
  sta a:e_dma_src
  sep #$20
  lda z:$5A
  sta a:e_dma_src+2
  rts
tile_dma_args_2bpp:
  rep #$30
  lda z:$54
  asl a
  asl a
  asl a
  sta a:e_dma_vram
  lda z:$56
  asl a
  asl a
  asl a
  asl a
  sta a:e_dma_bytes
  jmp EL_93CE
sys_11_vram_load_tiles:
  lda z:$5C
.a16
  cmp #$03
  bne EL_9402
  jsr tile_dma_args_2bpp
  rep #$20
  lda a:$0B3A
  bra EL_941B
EL_9402:
  jsr tile_dma_args_4bpp
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
  adc a:e_dma_vram
  sta a:e_dma_vram
  sep #$20
  lda #$01
  ora a:e_vram_job
  sta a:e_vram_job
  lda a:e_screen_off
  beq EL_9436
  jsr vram_dma_now
  bra EL_943D
EL_9436:
  lda a:e_vram_job
  and #$01
  bne EL_9436
EL_943D:
  rts
sys_12_vram_load_tiles_2bpp:
  lda z:$5C
.a16
  cmp #$D003
  asl a
  jsr tile_dma_args_2bpp
  rep #$20
  lda a:$0B3A
  bra EL_9467
  .byte $20, $B9, $93, $C2, $10, $E2, $20, $A5, $5C, $C9, $01, $F0, $07, $C2, $20, $AD
  .byte $38, $0B, $80, $05, $C2, $20, $AD, $36, $0B
EL_9467:
  clc
  adc a:e_dma_vram
  sta a:e_dma_vram
  sep #$20
.a8
  lda #$81
  ora a:e_vram_job
  sta a:e_vram_job
  lda a:e_screen_off
  beq EL_9482
  jsr vram_dma_now
  bra EL_9489
EL_9482:
  lda a:e_vram_job
  and #$81
  bne EL_9482
EL_9489:
  rts
sys_13_vram_load_obj_tiles:
  jsr tile_dma_args_4bpp
  rep #$30
  lda a:$0B2A
  clc
  adc a:e_dma_vram
  sta a:e_dma_vram
  sep #$20
  lda #$01
  ora a:e_vram_job
  sta a:e_vram_job
  lda a:e_screen_off
  beq EL_94AD
  jsr vram_dma_now
  bra EL_94B4
EL_94AD:
  lda a:e_vram_job
  and #$01
  bne EL_94AD
EL_94B4:
  rts
sys_14_vram_read_tiles:
  jsr tile_dma_args_4bpp
  rep #$30
  lda a:$0B2A
  clc
  adc a:e_dma_vram
  sta a:e_dma_vram
  sep #$20
  lda #$81
  ora a:e_vram_job
  sta a:e_vram_job
  lda a:e_screen_off
  beq EL_94D8
  jsr vram_dma_now
  bra EL_94DF
EL_94D8:
  lda a:e_vram_job
  and #$81
  bne EL_94D8
EL_94DF:
  rts
sys_15_pad_read:
  rep #$30
  lda z:$54
  asl a
  tax
  lda a:e_pads,x
  sta z:$68
  rts
sys_16_wait_frames:
  rep #$10
  sep #$20
  lda #$01
  ldx z:$54
  beq EL_9504
  sta a:e_frame_wait
EL_94F9:
  lda a:e_frame_wait
  bne EL_94F9
  inc a:e_frame_wait
  dex
  bpl EL_94F9
EL_9504:
  rts
sys_17_bg_scroll:
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
sys_19_sprite_commit:
  jsr oam_entry_set
  sep #$20
  lda #$01
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
  rts
sys_20_layers_enable:
  sep #$30
  ldx z:$54
  lda z:$56
  stx a:e_tm
  sta a:e_ts
  stx a:$212C
  sta a:$212D
  rts
sys_22_set_0B7F:
  sep #$20
  lda z:$54
  sta a:$0B7F
  rts
sys_34_screen_off:
  sep #$20
  lda #$80
  ora a:e_brightness
  jsr inidisp_set
  lda #$01
  sta a:e_screen_off
  lda #$00
  sta a:$4200
  lda #$00
  sta a:$212C
  sta a:$212D
  rts
sys_35_screen_on:
  sep #$20
  lda #$0F
  and a:e_brightness
  jsr inidisp_set
  lda #$00
  sta a:e_screen_off
  lda #$A1
  sta a:$4200
  lda a:e_tm
  sta a:$212C
  lda a:e_ts
  sta a:$212D
  cmp a:$4211
  rts
sys_68_counter_0B27_read:
  rep #$20
  lda a:$0B27
  sta z:$68
  rts
irq:
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
sys_69_auto_move:
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
sys_70_tilemap_copy_wait:
  rep #$10
  sep #$20
  ldx z:$5A
  ldy z:$5C
  stx z:$5C
  sty z:$5A
  jsr tilemap_args
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
  lda a:e_screen_off
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
sys_71_bg_mode_set:
  sep #$30
  lda z:$54
  sta a:e_bgmode
  sta a:$2105
  rts
sys_75_bg_map_base_set:
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
sys_76_lz_decompress:
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
  jsr lz_decompress
  rep #$20
  rts
ED_967C:
  .byte $00, $00, $01, $00, $03, $00, $07, $00, $0F, $00, $1F, $00, $3F, $00, $7F, $00
  .byte $FF, $00, $FF, $01, $FF, $03, $FF, $07, $FF, $0F
ED_9696:
  .byte $FF, $1F, $FF, $3F, $FF, $7F, $FF, $FF, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
  .byte $04, $04, $04, $04, $05, $05, $05, $05, $06, $06, $06, $06, $07, $07, $07, $07
  .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
  .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
ED_96D6:
  .byte $1A, $18, $14, $14, $10, $10, $10, $10, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
  .byte $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
  .byte $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
  .byte $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
ED_9715:
  .byte $04, $04, $08, $08, $0C, $0C, $0C, $0C
ED_971D:
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
  .byte $02, $02, $02, $02, $02, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03, $03
  .byte $04, $04, $04, $04, $05, $05, $05, $05, $06, $06, $06, $06, $07, $07, $07, $07
  .byte $08, $08, $09, $09, $0A, $0A, $0B, $0B, $0C, $0C, $0D, $0D, $0E, $0E, $0F, $0F
  .byte $10, $10, $11, $11, $12, $12, $13, $13, $14, $14, $15, $15, $16, $16, $17, $17
  .byte $18, $18, $19, $19, $1A, $1A, $1B, $1B, $1C, $1C, $1D, $1D, $1E, $1E, $1F, $1F
  .byte $20, $21, $22
  .byte "#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQR"
  .byte "STUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
  .byte $7F
ED_97DD:
  .byte $0E, $0E, $10, $12, $12, $12, $14, $14, $14
ED_97E6:
  .byte $14, $14, $14, $0A, $08
ED_97EB:
  .byte $06, $04, $02, $16, $18, $1A, $1C, $1E
lz_decompress:
  sep #$30
  sta a:$0010
  lda #$7F
  sta a:$000C
  rep #$21
  pla
  sta a:e_lz_bits
  pla
  sta a:$000A
  pla
  sta a:$000E
  lda a:e_lz_bits
  pha
  stz a:e_lz_avail
  stz a:e_lz_need
.i8
  ldx #$20
  jsr lz_getbits
  sep #$20
  ldx #$00
EL_981E:
  dex
  bpl EL_9839
  ldx #$07
  lda [$0E]
  sta a:e_lz_flags
  inc a:$000E
  bne EL_9839
  inc a:$000F
  bne EL_9839
  sec
  ror a:$000F
  inc a:$0010
EL_9839:
  asl a:e_lz_flags
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
  lda a:e_lz_bits
  bmi EL_9895
  lsr a
  xba
  tay
  beq EL_9876
  cpy #$08
  bcs EL_9884
  xba
  ldx a:ED_9715,y
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
  ldx a:ED_9696,y
  txa
EL_988A:
  pha
  ldx a:ED_96D6,y
  jsr lz_getbits
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
  ldx a:ED_971D,y
  tya
  lsr a
  lsr a
  lsr a
  lsr a
  tay
  txa
  ldx a:ED_97DD,y
  bra EL_98CA
EL_98B0:
  asl a
  rol a
  rol a
  rol a
  and #$07
  tay
  lda a:e_lz_bits
  and #$0FFF
  ora #$1000
  ldx a:ED_97E6,y
  jsr ($99A4,x)
  ldx a:ED_97EB,y
EL_98CA:
  sta a:e_lz_dist
  jsr lz_getbits
  rep #$11
  ldy a:$000A
  tya
  sbc a:e_lz_dist
  tax
  pla
  phb
  mvn #$7F,#$7F
  plb
  sty a:$000A
  sep #$30
  plx
  jmp EL_981E
lz_getbits:
  stx a:e_lz_need
  lda a:e_lz_bits
  jsr ($995C,x)
  sta a:e_lz_bits
  ldx a:e_lz_avail
  cpx a:e_lz_need
  bcs EL_9928
  lda a:e_lz_need
  sec
  sbc a:e_lz_avail
  sta a:e_lz_need
  lda a:e_lz_next
  and a:ED_967C,x
  ldx a:e_lz_need
  jsr ($995C,x)
  tsb a:e_lz_bits
  lda [$0E]
  sta a:e_lz_next
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
  sbc a:e_lz_need
  sta a:e_lz_avail
  tax
  lda a:e_lz_next
  jsr ($99A4,x)
  ldx a:e_lz_need
  and a:ED_967C,x
  ora a:e_lz_bits
  sta a:e_lz_bits
  rts
EL_9943:
  sep #$21
  ror a:$000F
  inc a:$0010
  dec a:$000E
  bne EL_9955
  lda [$0E]
  sta a:e_lz_next+1
EL_9955:
  inc a:$000E
  rep #$20
  bra EL_9925
  .word $99A3, $99A2, $99A1, $99A0, $999F, $999E, $999D, $999C
  .word $9997, $9996, $9995, $9994, $9993, $998B, $9984, $997E
  .word $99EC
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
  .word $99EB, $99EA, $99E9, $99E8, $99E7, $99E6, $99E5, $99E4
  .word $99DF, $99DE, $99DD, $99DC, $99DB, $99D3, $99CC, $99C6
  .word $99EC
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
  .word reset, sys_01_display_init, sys_02_display_reset, sys_03_palette_dma, sys_04_tilemap_clear, sys_05_tilemap_write, sys_06_tilemap_copy, sys_07_tilemap_read
  .word sys_08_oam_hide_all, sys_09_metasprite_set, sys_10_sprite_move, sys_11_vram_load_tiles, sys_12_vram_load_tiles_2bpp, sys_13_vram_load_obj_tiles, sys_14_vram_read_tiles, sys_15_pad_read
  .word sys_16_wait_frames, sys_17_bg_scroll, sys_18_anim_path, sys_19_sprite_commit, sys_20_layers_enable, sys_21_hv_counter_read, sys_22_set_0B7F, sys_23_memcpy_long
  .word sys_24_file_open, sys_25_file_close, sys_26_file_seek, sys_27_file_read_7e, sys_28_file_read, sys_29_file_palette_dma, sys_30_file_tilemap_copy, sys_31_file_metasprite_set
  .word sys_32_file_vram_load_tiles, sys_33_file_vram_load_obj_tiles, sys_34_screen_off, sys_35_screen_on, sys_36_memset_long, sys_37_brightness_set, sys_38_window_shape, sys_39_window_off
  .word sys_40_tile_put, sys_41_mode7_init, sys_42_bg_block_put, sys_43_bg_block_put2, sys_44_file_bg_block_put, sys_45_file_bg_block_put2, sys_46_mode7_center, sys_47_mode7_matrix
  .word sys_48_color_math, sys_49_grid_open, sys_50_grid_cell, sys_51_file_anim_frames, sys_52_anim_frames, sys_53_file_anim_53, sys_54_file_anim_54, sys_55_sprite_anim_stream
  .word sys_56_anim_control, sys_57_sprites_offset, sys_58_sprites_hide, sys_59_palette_cycle, sys_60_sound_play, sys_61_sound_stop, sys_62_apu_ports_read, sys_63_sound_effect
  .word sys_64_file_rom_address, sys_65_apu_upload, sys_66_obj_size_set, sys_67_file_metasprite_67, sys_68_counter_0B27_read, sys_69_auto_move, sys_70_tilemap_copy_wait, sys_71_bg_mode_set
  .word sys_72_metasprite_72, sys_73_hdma_effect_on, sys_74_hdma_effect_off, sys_75_bg_map_base_set, sys_76_lz_decompress, sys_77_file_anim_77, sys_78_anim_78
  .byte $00, $20, $40, $60, $80, $A0, $C0, $E0
ED_9A96:
  .byte $FC, $F3, $CF, $3F
ED_9A9A:
  .byte $12, $14, $18
  .byte "$(H", $00
  .byte $00, $00, $08
sys_23_memcpy_long:
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
  jsr mvn_copy
  rts
sys_24_file_open:
  rep #$30
.i16
  ldy #$00
  lda z:$54
  sta z:$40
  lda #$7E
  sta z:$42
  lda #ED_F800
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
sys_25_file_close:
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
sys_26_file_seek:
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
sys_27_file_read_7e:
  rep #$30
  ldx z:$54
  jsr file_to_rom
  lda #$7E
  sta z:$46
  lda z:$56
  sta z:$44
  lda z:$58
  sta z:$4C
  jsr file_copy
  rts
sys_28_file_read:
  rep #$30
  ldx z:$54
  jsr file_to_rom
  lda z:$56
  sta z:$46
  lda z:$58
  sta z:$44
  lda z:$5A
  sta z:$4C
  jsr file_copy
  rts
sys_29_file_palette_dma:
  rep #$30
  lda z:$58
  sta z:$5A
  lda z:$56
  sta z:$58
  ldx z:$54
  jsr file_to_rom
  sty z:$54
  stx z:$56
  jsr sys_03_palette_dma
  rts
sys_30_file_tilemap_copy:
  rep #$30
  ldx z:$5E
  jsr file_to_rom
  sty z:$5E
  stx z:$60
  jsr sys_06_tilemap_copy
  rts
sys_31_file_metasprite_set:
  rep #$30
  lda z:$5E
  ldx z:$60
  sta z:$60
  jsr file_to_rom
  stx z:$62
  sty z:$5E
  jsr sys_09_metasprite_set
  rts
sys_32_file_vram_load_tiles:
  lda z:$5A
  sta z:$5C
  ldx z:$58
  jsr file_to_rom
  stx z:$5A
  sty z:$58
  jsr sys_11_vram_load_tiles
  rts
sys_33_file_vram_load_obj_tiles:
  rep #$30
  ldx z:$58
  jsr file_to_rom
  sty z:$58
  stx z:$5A
  jsr sys_13_vram_load_obj_tiles
  rts
file_to_rom:
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
file_copy:
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
  jsr mvn_copy
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
mvn_copy:
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
sys_21_hv_counter_read:
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
sys_36_memset_long:
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
sys_37_brightness_set:
  sep #$20
  lda z:$54
.a8
  and #$0F
  sta a:e_brightness
  rts
sys_38_window_shape:
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
sys_39_window_off:
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
sys_40_tile_put:
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
  lda a:e_bgmode
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
sys_42_bg_block_put:
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
sys_43_bg_block_put2:
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
sys_41_mode7_init:
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
sys_46_mode7_center:
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
sys_47_mode7_matrix:
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
sys_44_file_bg_block_put:
  rep #$30
  ldx z:$58
  jsr file_to_rom
  stx z:$5A
  sty z:$58
  jsr sys_42_bg_block_put
  rts
sys_45_file_bg_block_put2:
  rep #$30
  ldx z:$5E
  jsr file_to_rom
  sty z:$5E
  stx z:$60
  jsr sys_43_bg_block_put2
  rts
sys_48_color_math:
  sep #$30
  lda z:$54
  sta a:$2130
  lda z:$56
  sta a:$2131
  lda z:$58
  sta a:$2132
  rts
sys_73_hdma_effect_on:
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
sys_74_hdma_effect_off:
  sep #$20
  rep #$10
  lda z:$54
  stz a:$0DD9
  stz a:$0DF1
  rts
syscall_gate:
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
  jsr syscall_dispatch
  lda z:$68
  sta z:$0A
  rtl
vm_enter:
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
vm_fetch:
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
vm_00_op00:
  lda #$FFE9
  bne EL_A196
vm_01_op01:
  lda #$FFEB
  bne EL_A196
vm_02_op02:
  lda #$FFED
  bne EL_A196
vm_03_op03:
  lda #$FFEF
  bne EL_A196
vm_04_op04:
  lda #$FFF1
  bne EL_A196
vm_05_op05:
  lda #$FFF3
  bne EL_A196
vm_06_op06:
  lda #$FFF5
  bne EL_A196
vm_07_op07:
  lda #$FFF7
  bne EL_A196
vm_08_op08:
  lda #$FFF9
  bne EL_A196
vm_09_op09:
  lda #$FFFB
  bne EL_A196
vm_0A_op0a:
  lda #$FFFD
  bne EL_A196
vm_0B_op0b:
  lda #$FFFF
EL_A196:
  clc
  adc z:$04
  sta z:$00
  lda ($00),y
  sta z:$0A
  jmp vm_fetch
vm_0F_op0f:
  ldy #$15
  bne EL_A1B4
vm_0E_op0e:
  ldy #$13
  bne EL_A1B4
vm_0D_op0d:
  ldy #$11
  bne EL_A1B4
vm_0C_op0c:
  ldy #$0F
EL_A1B4:
  lda ($04),y
  sta z:$0A
  jmp vm_fetch
vm_10_op10:
  lda #$FFE9
  bne EL_A1F5
vm_11_op11:
  lda #$FFEB
  bne EL_A1F5
vm_12_op12:
  lda #$FFED
  bne EL_A1F5
vm_13_op13:
  lda #$FFEF
  bne EL_A1F5
vm_14_op14:
  lda #$FFF1
  bne EL_A1F5
vm_15_op15:
  lda #$FFF3
  bne EL_A1F5
vm_16_op16:
  lda #$FFF5
  bne EL_A1F5
vm_17_op17:
  lda #$FFF7
  bne EL_A1F5
vm_18_op18:
  lda #$FFF9
  bne EL_A1F5
vm_19_op19:
  lda #$FFFB
  bne EL_A1F5
vm_1A_op1a:
  lda #$FFFD
  bne EL_A1F5
vm_1B_op1b:
  lda #$FFFF
EL_A1F5:
  clc
  adc z:$04
  sta z:$00
  lda ($00),y
  sta z:$0E
  jmp vm_fetch
vm_1F_op1f:
  ldy #$15
  bne EL_A213
vm_1E_op1e:
  ldy #$13
  bne EL_A213
vm_1D_op1d:
  ldy #$11
  bne EL_A213
vm_1C_op1c:
  ldy #$0F
EL_A213:
  lda ($04),y
  sta z:$0E
  jmp vm_fetch
vm_20_op20:
  lda #$FFE9
  bne EL_A254
vm_21_op21:
  lda #$FFEB
  bne EL_A254
vm_22_op22:
  lda #$FFED
  bne EL_A254
vm_23_op23:
  lda #$FFEF
  bne EL_A254
vm_24_op24:
  lda #$FFF1
  bne EL_A254
vm_25_op25:
  lda #$FFF3
  bne EL_A254
vm_26_op26:
  lda #$FFF5
  bne EL_A254
vm_27_op27:
  lda #$FFF7
  bne EL_A254
vm_28_op28:
  lda #$FFF9
  bne EL_A254
vm_29_op29:
  lda #$FFFB
  bne EL_A254
vm_2A_op2a:
  lda #$FFFD
  bne EL_A254
vm_2B_op2b:
  lda #$FFFF
EL_A254:
  clc
  adc z:$04
  sta z:$00
  lda z:$0A
  sta ($00),y
  jmp vm_fetch
vm_2F_op2f:
  ldy #$15
  bne EL_A272
vm_2E_op2e:
  ldy #$13
  bne EL_A272
vm_2D_op2d:
  ldy #$11
  bne EL_A272
vm_2C_op2c:
  ldy #$0F
EL_A272:
  lda z:$0A
  sta ($04),y
  jmp vm_fetch
vm_30_op30:
  lda #$FFE9
  bne EL_A2B3
vm_31_op31:
  lda #$FFEB
  bne EL_A2B3
vm_32_op32:
  lda #$FFED
  bne EL_A2B3
vm_33_op33:
  lda #$FFEF
  bne EL_A2B3
vm_34_op34:
  lda #$FFF1
  bne EL_A2B3
vm_35_op35:
  lda #$FFF3
  bne EL_A2B3
vm_36_op36:
  lda #$FFF5
  bne EL_A2B3
vm_37_op37:
  lda #$FFF7
  bne EL_A2B3
vm_38_op38:
  lda #$FFF9
  bne EL_A2B3
vm_39_op39:
  lda #$FFFB
  bne EL_A2B3
vm_3A_op3a:
  lda #$FFFD
  bne EL_A2B3
vm_3B_op3b:
  lda #$FFFF
EL_A2B3:
  clc
  adc z:$04
  sta z:$00
  lda ($00),y
  pha
  jmp vm_fetch
vm_3F_op3f:
  ldy #$15
  bne EL_A2D0
vm_3E_op3e:
  ldy #$13
  bne EL_A2D0
vm_3D_op3d:
  ldy #$11
  bne EL_A2D0
vm_3C_op3c:
  ldy #$0F
EL_A2D0:
  lda ($04),y
  pha
  jmp vm_fetch
vm_41_op41:
  txa
  and #$0F
  sta z:$0A
  jmp vm_fetch
vm_40_op40:
  sty z:$0A
  jmp vm_fetch
vm_51_op51:
  txa
  and #$0F
  sta z:$0E
  jmp vm_fetch
vm_50_op50:
  sty z:$0E
  jmp vm_fetch
vm_60_op60:
  txa
  and #$0F
  pha
  jmp vm_fetch
vm_71_op71:
  txa
  and #$0F
  clc
  adc z:$0A
  sta z:$0A
vm_70_op70:
  jmp vm_fetch
vm_82_ldl:
  jsr EL_A77F
  bcc EL_A30E
vm_81_ldl:
  jsr EL_A74C
EL_A30E:
  lda ($00),y
  sta z:$0A
  jmp vm_fetch
vm_A4_ldl:
  jsr EL_A775
  lda ($00),y
  sta z:$0A
  jmp vm_fetch
vm_83_ldr:
  jsr EL_A74C
EL_A322:
  lda ($00),y
  sta z:$0E
  jmp vm_fetch
vm_84_ldr:
  jsr EL_A77F
  bcc EL_A322
vm_A6_ldr:
  jsr EL_A775
  lda ($00),y
  sta z:$0E
  jmp vm_fetch
vm_85_stl:
  jsr EL_A74C
EL_A33B:
  lda z:$0A
  sta ($00),y
  jmp vm_fetch
vm_86_stl:
  jsr EL_A77F
  bcc EL_A33B
vm_A8_stl:
  jsr EL_A775
  lda z:$0A
  sta ($00),y
  jmp vm_fetch
vm_87_push:
  jsr EL_A74C
EL_A354:
  lda ($00),y
  pha
  jmp vm_fetch
vm_88_push:
  jsr EL_A77F
  bcc EL_A354
vm_AA_push:
  jsr EL_A775
  lda ($00),y
  pha
  jmp vm_fetch
vm_DE_leal:
  jsr EL_A77F
  lda z:$00
  sta z:$0A
  jmp vm_fetch
vm_DF_lear:
  jsr EL_A77F
  lda z:$00
  sta z:$0E
  jmp vm_fetch
vm_89_ldl:
  jsr EL_A73A
EL_A37F:
  sta z:$0A
  jmp vm_fetch
vm_8A_ldl:
  jsr EL_A76D
  bcc EL_A37F
vm_8B_ldr:
  jsr EL_A73A
EL_A38C:
  sta z:$0E
  jmp vm_fetch
vm_8C_ldr:
  jsr EL_A76D
  bcc EL_A38C
vm_8D_push:
  jsr EL_A73A
  pha
  jmp vm_fetch
vm_8E_push:
  jsr EL_A76D
  pha
  jmp vm_fetch
vm_8F_addl:
  jsr EL_A73A
EL_A3A7:
  adc z:$0A
  sta z:$0A
  jmp vm_fetch
vm_90_addl:
  jsr EL_A76D
  bcc EL_A3A7
vm_A0_ldlb:
  jsr EL_A77F
  sep #$30
  lda ($00),y
  sta z:$0A
  sty z:$0B
  rep #$30
  jmp vm_fetch
vm_A5_ldlb:
  jsr EL_A775
  sep #$30
  lda ($00),y
  sta z:$0A
  sty z:$0B
  rep #$30
  jmp vm_fetch
vm_A1_ldrb:
  jsr EL_A77F
  sep #$30
  lda ($00),y
  sta z:$0E
  sty z:$0F
  rep #$30
  jmp vm_fetch
vm_A7_ldrb:
  jsr EL_A775
  sep #$30
  lda ($00),y
  sta z:$0E
  sty z:$0F
  rep #$30
  jmp vm_fetch
vm_A2_stlb:
  jsr EL_A77F
  sep #$20
  lda z:$0A
  sta ($00),y
  rep #$20
  jmp vm_fetch
vm_A9_stlb:
  jsr EL_A775
  sep #$20
  lda z:$0A
  sta ($00),y
  rep #$20
  jmp vm_fetch
vm_A3_pushb:
  jsr EL_A77F
  sep #$20
.a8
  lda #$00
  xba
  lda ($00),y
  rep #$20
  pha
  jmp vm_fetch
vm_AB_pushb:
  jsr EL_A775
  sep #$20
  lda #$00
  xba
  lda ($00),y
  rep #$20
  pha
  jmp vm_fetch
vm_EA_callptrx:
  lda z:$0A
  sta z:$00
  jmp EL_A439
vm_E9_callx:
  jsr EL_A775
EL_A439:
  jsr EL_A452
  ldy #$00
  jmp vm_AE_unstack
vm_DD_callptr:
  lda z:$0A
  sta z:$00
  jmp EL_A44C
vm_AC_call:
  jsr EL_A775
EL_A44C:
  jsr EL_A452
  jmp vm_fetch
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
vm_AD_copy:
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
  jmp vm_fetch
vm_AE_unstack:
  jsr EL_A73A
EL_A47E:
  sta z:$00
  tsc
  adc z:$00
  tcs
  jmp vm_fetch
vm_AF_unstack:
  jsr EL_A76D
  bcc EL_A47E
vm_D6_jump:
  jsr EL_A76D
  sta z:$06
  jmp vm_fetch
vm_D7_jumpt:
  lda z:$0A
  bne vm_D6_jump
EL_A498:
  jsr EL_A76D
  jmp vm_fetch
vm_D8_jumpf:
  lda z:$0A
  beq vm_D6_jump
  bne EL_A498
vm_E3_jmpb:
  jsr EL_A73A
  adc z:$06
  sta z:$06
  jmp vm_fetch
vm_E4_jtb:
  lda z:$0A
  bne vm_E3_jmpb
EL_A4B2:
  jsr EL_A73A
  jmp vm_fetch
vm_E5_jfb:
  lda z:$0A
  beq vm_E3_jmpb
  bne EL_A4B2
vm_E6_jmpf:
  jsr EL_A73A
  adc z:$06
  sta z:$06
  jmp vm_fetch
vm_E7_jtf:
  lda z:$0A
  bne vm_E6_jmpf
EL_A4CC:
  jsr EL_A73A
  jmp vm_fetch
vm_E8_jff:
  lda z:$0A
  beq vm_E6_jmpf
  bne EL_A4CC
vm_D9_switchn:
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
  jmp vm_fetch
vm_D5_switch:
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
  jmp vm_fetch
vm_B0_deref:
  lda ($0A),y
  sta z:$0A
  jmp vm_fetch
vm_D3_derefb:
  sep #$30
  lda ($0A),y
  sta z:$0A
  sty z:$0B
  rep #$30
  jmp vm_fetch
vm_B1_popstore:
  pla
  sta z:$0E
  lda z:$0A
  sta ($0E),y
  jmp vm_fetch
vm_D4_popstoreb:
  pla
  sta z:$0E
  sep #$20
  lda z:$0A
  sta ($0E),y
  rep #$20
  jmp vm_fetch
vm_B3_pushl:
  lda z:$0A
  pha
  jmp vm_fetch
vm_B4_popr:
  pla
  sta z:$0E
  jmp vm_fetch
vm_B5_mul:
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
  jmp vm_fetch
vm_B8_udiv:
  jsr EL_A58F
  jmp vm_fetch
vm_B6_sdiv:
  jsr EL_A5C8
  jsr EL_A58F
  lda z:$0B
  bpl EL_A58C
  jmp vm_CB_neg
EL_A58C:
  jmp vm_fetch
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
vm_B9_smod:
  jsr EL_A5C8
  jsr EL_A58F
  lda z:$00
  sta z:$0A
  lda z:$0C
  bpl EL_A5BB
  jmp vm_CB_neg
EL_A5BB:
  jmp vm_fetch
vm_BA_umod:
  jsr EL_A58F
  lda z:$00
  sta z:$0A
  jmp vm_fetch
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
vm_BB_add:
  clc
  lda z:$0A
  adc z:$0E
  sta z:$0A
  jmp vm_fetch
vm_BC_sub:
  sec
  lda z:$0A
  sbc z:$0E
  sta z:$0A
  jmp vm_fetch
vm_BD_shl:
  ldx z:$0E
  bne EL_A604
EL_A601:
  jmp vm_fetch
EL_A604:
  asl z:$0A
  dex
  beq EL_A601
  bne EL_A604
vm_BF_asr:
  lda z:$0A
  bpl vm_BE_shr
  ldx z:$0E
  bne EL_A616
EL_A613:
  jmp vm_fetch
EL_A616:
  sec
  ror z:$0A
  dex
  beq EL_A613
  bne EL_A616
vm_BE_shr:
  ldx z:$0E
  bne EL_A625
EL_A622:
  jmp vm_fetch
EL_A625:
  lsr z:$0A
  dex
  beq EL_A622
  bne EL_A625
vm_DA_and:
  lda z:$0A
  and z:$0E
  sta z:$0A
  jmp vm_fetch
vm_DB_or:
  lda z:$0A
  ora z:$0E
  sta z:$0A
  jmp vm_fetch
vm_DC_xor:
  lda z:$0A
  eor z:$0E
  sta z:$0A
  jmp vm_fetch
vm_C0_eq:
  lda z:$0A
  cmp z:$0E
  bne EL_A64E
  iny
EL_A64E:
  sty z:$0A
  jmp vm_fetch
vm_C1_ne:
  lda z:$0A
  cmp z:$0E
  beq EL_A65A
  iny
EL_A65A:
  sty z:$0A
  jmp vm_fetch
vm_C2_lt:
  sec
  lda z:$0A
  sbc z:$0E
  bpl EL_A667
  iny
EL_A667:
  sty z:$0A
  jmp vm_fetch
vm_C4_gt:
  sec
  lda z:$0E
  sbc z:$0A
  bpl EL_A674
  iny
EL_A674:
  sty z:$0A
  jmp vm_fetch
vm_C3_le:
  sec
  lda z:$0E
  sbc z:$0A
  bmi EL_A681
  iny
EL_A681:
  sty z:$0A
  jmp vm_fetch
vm_C5_ge:
  sec
  lda z:$0A
  sbc z:$0E
  bmi EL_A68E
  iny
EL_A68E:
  sty z:$0A
  jmp vm_fetch
vm_C6_ult:
  lda z:$0A
  cmp z:$0E
  bcs EL_A69A
  iny
EL_A69A:
  sty z:$0A
  jmp vm_fetch
vm_C8_ugt:
  lda z:$0E
  cmp z:$0A
  bcs EL_A6A6
  iny
EL_A6A6:
  sty z:$0A
  jmp vm_fetch
vm_C7_ule:
  lda z:$0E
  cmp z:$0A
  bcc EL_A6B2
  iny
EL_A6B2:
  sty z:$0A
  jmp vm_fetch
vm_C9_uge:
  lda z:$0A
  cmp z:$0E
  bcc EL_A6BE
  iny
EL_A6BE:
  sty z:$0A
  jmp vm_fetch
vm_CA_not:
  lda z:$0A
  bne EL_A6C8
  iny
EL_A6C8:
  sty z:$0A
  jmp vm_fetch
vm_CB_neg:
  sec
  tya
  sbc z:$0A
  sta z:$0A
  jmp vm_fetch
vm_CC_compl:
  lda z:$0A
  eor #$FFFF
  sta z:$0A
  jmp vm_fetch
vm_CD_swap:
  lda z:$0A
  ldx z:$0E
  stx z:$0A
  sta z:$0E
  jmp vm_fetch
vm_D0_inc:
  inc z:$0A
  jmp vm_fetch
vm_D1_dec:
  dec z:$0A
  jmp vm_fetch
vm_D2_shl1:
  asl z:$0A
  jmp vm_fetch
vm_E0_bfext:
  jsr EL_A76D
  ldy #$0A
  jsr EL_AD49
  jmp vm_fetch
vm_E1_bfextu:
  jsr EL_A76D
  ldy #$0A
  jsr EL_AD1A
  jmp vm_fetch
vm_E2_bfins:
  jsr EL_A76D
  ldy #$0E
  jsr EL_AD61
  jmp vm_fetch
vm_CF_return:
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
vm_80_op80:
  .byte $00, $00
vm_FF_opff:
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
  .word vm_00_op00, vm_01_op01, vm_02_op02, vm_03_op03, vm_04_op04, vm_05_op05, vm_06_op06, vm_07_op07
  .word vm_08_op08, vm_09_op09, vm_0A_op0a, vm_0B_op0b, vm_0C_op0c, vm_0D_op0d, vm_0E_op0e, vm_0F_op0f
  .word vm_10_op10, vm_11_op11, vm_12_op12, vm_13_op13, vm_14_op14, vm_15_op15, vm_16_op16, vm_17_op17
  .word vm_18_op18, vm_19_op19, vm_1A_op1a, vm_1B_op1b, vm_1C_op1c, vm_1D_op1d, vm_1E_op1e, vm_1F_op1f
  .word vm_20_op20, vm_21_op21, vm_22_op22, vm_23_op23, vm_24_op24, vm_25_op25, vm_26_op26, vm_27_op27
  .word vm_28_op28, vm_29_op29, vm_2A_op2a, vm_2B_op2b, vm_2C_op2c, vm_2D_op2d, vm_2E_op2e, vm_2F_op2f
  .word vm_30_op30, vm_31_op31, vm_32_op32, vm_33_op33, vm_34_op34, vm_35_op35, vm_36_op36, vm_37_op37
  .word vm_38_op38, vm_39_op39, vm_3A_op3a, vm_3B_op3b, vm_3C_op3c, vm_3D_op3d, vm_3E_op3e, vm_3F_op3f
  .word vm_40_op40, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41
  .word vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41, vm_41_op41
  .word vm_50_op50, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51
  .word vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51, vm_51_op51
  .word vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60
  .word vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60, vm_60_op60
  .word vm_70_op70, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71
  .word vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71, vm_71_op71
  .word vm_80_op80, vm_81_ldl, vm_82_ldl, vm_83_ldr, vm_84_ldr, vm_85_stl, vm_86_stl, vm_87_push
  .word vm_88_push, vm_89_ldl, vm_8A_ldl, vm_8B_ldr, vm_8C_ldr, vm_8D_push, vm_8E_push, vm_8F_addl
  .word vm_90_addl, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80
  .word vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80
  .word vm_A0_ldlb, vm_A1_ldrb, vm_A2_stlb, vm_A3_pushb, vm_A4_ldl, vm_A5_ldlb, vm_A6_ldr, vm_A7_ldrb
  .word vm_A8_stl, vm_A9_stlb, vm_AA_push, vm_AB_pushb, vm_AC_call, vm_AD_copy, vm_AE_unstack, vm_AF_unstack
  .word vm_B0_deref, vm_B1_popstore, vm_80_op80, vm_B3_pushl, vm_B4_popr, vm_B5_mul, vm_B6_sdiv, vm_b7_prefix
  .word vm_B8_udiv, vm_B9_smod, vm_BA_umod, vm_BB_add, vm_BC_sub, vm_BD_shl, vm_BE_shr, vm_BF_asr
  .word vm_C0_eq, vm_C1_ne, vm_C2_lt, vm_C3_le, vm_C4_gt, vm_C5_ge, vm_C6_ult, vm_C7_ule
  .word vm_C8_ugt, vm_C9_uge, vm_CA_not, vm_CB_neg, vm_CC_compl, vm_CD_swap, vm_80_op80, vm_CF_return
  .word vm_D0_inc, vm_D1_dec, vm_D2_shl1, vm_D3_derefb, vm_D4_popstoreb, vm_D5_switch, vm_D6_jump, vm_D7_jumpt
  .word vm_D8_jumpf, vm_D9_switchn, vm_DA_and, vm_DB_or, vm_DC_xor, vm_DD_callptr, vm_DE_leal, vm_DF_lear
  .word vm_E0_bfext, vm_E1_bfextu, vm_E2_bfins, vm_E3_jmpb, vm_E4_jtb, vm_E5_jfb, vm_E6_jmpf, vm_E7_jtf
  .word vm_E8_jff, vm_E9_callx, vm_EA_callptrx, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80
  .word vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80
  .word vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_80_op80, vm_FF_opff
vm_b7_prefix:
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
  .word vm_b7_01, vm_b7_02, vm_b7_03, vm_b7_04, vm_b7_05, vm_b7_06, vm_b7_07, vm_b7_08
  .word vm_b7_09, vm_b7_0A, vm_b7_0B, vm_b7_0C, vm_b7_0D, vm_b7_0E, vm_b7_0F, vm_b7_10
  .word vm_b7_11, vm_b7_12, vm_b7_13, vm_b7_14, vm_b7_15, vm_b7_16, vm_b7_17, vm_b7_18
  .word vm_b7_19, vm_b7_1A, vm_b7_1B, vm_b7_1C, vm_b7_1D, vm_b7_1E, vm_b7_1F, vm_b7_20
  .word vm_b7_21, vm_b7_22, vm_b7_23, vm_b7_24, vm_b7_25, vm_b7_26, vm_b7_27, vm_b7_28
  .word vm_b7_29, vm_b7_2A, vm_b7_2B, vm_b7_2C, vm_b7_2D, vm_b7_2E, vm_b7_2F
vm_b7_01:
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
vm_b7_02:
  jsr EL_AA43
  lda z:$1D
  bpl EL_AA3F
  jmp vm_b7_05
EL_AA3F:
  rts
vm_b7_2E:
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
  jsr vm_b7_05
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
vm_b7_2F:
  jsr EL_AA68
  sty z:$1E
  ldx #$02
  bne EL_AAA3
vm_b7_1E:
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
  jmp vm_b7_05
vm_b7_03:
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
vm_b7_04:
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
vm_b7_1F:
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
  jmp vm_b7_1F
vm_b7_20:
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
vm_b7_2D:
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
  jmp vm_b7_2D
vm_b7_21:
  ldx #$02
EL_AB2F:
  lda z:$0A,x
  eor #$FFFF
  sta z:$0A,x
  dex
  dex
  bpl EL_AB2F
  rts
vm_b7_22:
  ldx #$02
EL_AB3E:
  lda z:$0A,x
  and z:$0E,x
  sta z:$0A,x
  dex
  dex
  bpl EL_AB3E
  rts
vm_b7_23:
  ldx #$02
EL_AB4C:
  lda z:$0A,x
  ora z:$0E,x
  sta z:$0A,x
  dex
  dex
  bpl EL_AB4C
  rts
vm_b7_24:
  ldx #$02
EL_AB5A:
  lda z:$0A,x
  eor z:$0E,x
  sta z:$0A,x
  dex
  dex
  bpl EL_AB5A
  rts
vm_b7_05:
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
vm_b7_28:
  jsr vm_b7_1D
  lda z:$0A
  eor #$01
  rts
vm_b7_1D:
  ldx #$02
EL_AB7F:
  lda z:$0A,x
  bne EL_AB96
  dex
  dex
  bpl EL_AB7F
  bmi EL_ABA7
vm_b7_06:
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
vm_b7_07:
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
vm_b7_08:
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
vm_b7_29:
  jsr EL_AC0A
  bcs EL_ABBF
  iny
EL_ABBF:
  sty z:$0A
  rts
vm_b7_0A:
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
vm_b7_2B:
  jsr EL_AC15
  bcs EL_ABD7
  iny
EL_ABD7:
  sty z:$0A
  rts
vm_b7_09:
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
vm_b7_2A:
  jsr EL_AC15
  bcc EL_ABEF
  iny
EL_ABEF:
  sty z:$0A
  rts
vm_b7_0B:
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
vm_b7_2C:
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
vm_b7_25:
  lda z:$0A
  bpl vm_b7_26
  ldy #$FFFF
vm_b7_26:
  sty z:$0C
vm_b7_27:
  rts
vm_b7_18:
  tyx
  lda [$06],y
  sta z:$0A,x
  iny
  iny
  cpy #$04
  bne vm_b7_18
  beq EL_AC44
vm_b7_19:
  tyx
  lda [$06],y
  sta z:$0E,x
  iny
  iny
  cpy #$04
  bne vm_b7_19
EL_AC44:
  lda z:$06
  adc #$03
  sta z:$06
  rts
vm_b7_1C:
  ldy #$FFFF
  tya
  bne EL_AC55
vm_b7_1B:
  lda #$01
EL_AC55:
  clc
  adc z:$0A
  sta z:$0A
  tya
  adc z:$0C
  sta z:$0C
  rts
vm_b7_17:
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
vm_b7_1A:
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
vm_b7_0C:
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
vm_b7_0D:
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
vm_b7_0E:
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
vm_b7_0F:
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
vm_b7_10:
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
vm_b7_11:
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
vm_b7_12:
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
vm_b7_13:
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
vm_b7_14:
  lda #$0A
  sta z:$00
  jmp EL_ACB5
vm_b7_15:
  plx
  pla
  sta z:$0E
  pla
  sta z:$10
  phx
  rts
vm_b7_16:
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
sys_49_grid_open:
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
sys_50_grid_cell:
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
sys_51_file_anim_frames:
  rep #$10
  sep #$20
  lda z:$5E
  beq EL_B25D
  ldx z:$64
  jsr file_to_rom
  sty z:$64
  stx z:$66
sys_52_anim_frames:
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
sys_53_file_anim_53:
  rep #$10
  ldx z:$5E
  jsr file_to_rom
  sty z:$5E
  stx z:$60
sys_18_anim_path:
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
  sta a:e_oam+1,x
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
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
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
  sta a:e_nmi_jobs
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
  sta a:e_oam,x
  iny
  cpy a:$0E01
  bne EL_B3EB
  php
  jsr EL_922B
  plp
EL_B3EB:
  lda [$3D],y
  sta a:e_oam+1,x
  iny
  cpy a:$0E01
  bne EL_B3FB
  php
  jsr EL_922B
  plp
EL_B3FB:
  lda [$3D],y
  sta a:e_oam+2,x
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
  sta a:e_oam+3,x
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
  lda a:ED_9A96,y
  and a:e_oam+512,x
  sta a:e_oam+512,x
  xba
  ora a:e_oam+512,x
  sta a:e_oam+512,x
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
sys_54_file_anim_54:
  rep #$10
  ldx z:$62
  jsr file_to_rom
  sty z:$62
  stx z:$64
sys_55_sprite_anim_stream:
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
sys_56_anim_control:
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
sys_57_sprites_offset:
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
  adc a:e_oam,x
  sta a:e_oam,x
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
  sbc a:e_oam,x
.a8
  eor #$FF
  inc a
  sta a:e_oam,x
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
  adc a:e_oam+1,x
  sta a:e_oam+1,x
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
  sbc a:e_oam+1,x
.a8
  eor #$FF
  inc a
  sta a:e_oam+1,x
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
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
  rts
sys_58_sprites_hide:
  rep #$30
  ldy z:$56
  lda z:$54
  asl a
  asl a
  tax
  sep #$20
  lda #$F0
EL_B668:
  sta a:e_oam+1,x
  inx
  inx
  inx
  inx
  dey
  bne EL_B668
  lda #$01
  ora a:e_nmi_jobs
  sta a:e_nmi_jobs
  rts
sys_59_palette_cycle:
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
sys_66_obj_size_set:
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
  and a:e_obsel
  sta a:e_obsel
  xba
  ora a:e_obsel
  sta a:e_obsel
  sta a:$2101
  lda a:ED_9A9A,x
  sta a:$0B40
  rts
sys_72_metasprite_72:
  rep #$10
  sep #$20
  lda z:$5A
  sta z:$3F
  ldy z:$58
  sty z:$3D
  jmp EL_B6E9
sys_67_file_metasprite_67:
  rep #$10
  ldx z:$58
  jsr file_to_rom
  sep #$20
  txa
  sta z:$3F
  sty z:$3D
EL_B6E9:
  sep #$20
  stz a:e_nmi_jobs
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
  sta a:e_oam,x
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
  lda a:ED_9A96,y
  and a:e_oam+512,x
  sta a:e_oam+512,x
  xba
  ora a:e_oam+512,x
  sta a:e_oam+512,x
  ply
  plx
  dec a:$0B5C
  beq EL_B778
  bra EL_B711
EL_B778:
  inc a:e_nmi_jobs
  rts
sys_77_file_anim_77:
  rep #$10
  sep #$20
  lda z:$58
  beq EL_B79A
  ldx z:$60
  jsr file_to_rom
  sty z:$60
  stx z:$62
sys_78_anim_78:
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
apu_src_bank_next:
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
apu_upload_ipl:
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
  jsr apu_src_bank_next
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
  jsr apu_src_bank_next
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
  jsr apu_src_bank_next
  plp
EL_B8BA:
  xba
  lda [$CE],y
  xba
  iny
  cpy a:$0E01
  bne EL_B8C9
  php
  jsr apu_src_bank_next
  plp
EL_B8C9:
  tax
  lda [$CE],y
  iny
  cpy a:$0E01
  bne EL_B8D7
  php
  jsr apu_src_bank_next
  plp
EL_B8D7:
  xba
  lda [$CE],y
  xba
  iny
  cpy a:$0E01
  bne EL_B8E6
  php
  jsr apu_src_bank_next
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
sys_60_sound_play:
  sep #$20
  lda z:$54
  sta a:e_sound_req+1
  lda z:$56
  sta a:e_sound_req+2
  lda #$01
  sta a:e_sound_req
  rts
sys_61_sound_stop:
  sep #$20
  lda #$00
  sta a:e_sound_req+1
  sta a:e_sound_req+2
  inc a
  sta a:e_sound_req
  rts
sys_62_apu_ports_read:
  sep #$20
  lda a:$2140
  sta z:$68
  lda a:$2142
  sta z:$69
  rts
sys_63_sound_effect:
  sep #$20
  stz a:e_sound_req+3
  inc a:e_frame_wait
EL_B94C:
  lda a:e_frame_wait
  bne EL_B94C
  lda z:$54
  sta a:e_sound_req+3
  lda z:$55
  sta a:e_sound_req+4
  rts
sys_64_file_rom_address:
  rep #$10
  ldx z:$54
  jsr file_to_rom
  sty z:$54
  stx z:$56
sys_65_apu_upload:
  rep #$10
  sep #$20
  ldy z:$54
  sty z:$CE
  lda z:$56
  sta z:$D0
  lda #$01
  sta a:e_apu_busy
  lda #$FF
  sta a:$2140
  jsr apu_upload_ipl
  lda #$00
  sta a:e_apu_busy
  sta a:e_sound_req
  sta a:e_sound_req+1
  sta a:e_sound_req+3
  sta a:e_sound_req+4
  sta a:e_sound_req+2
  rts
  .res 15979, $00
ED_F800:
  ; file directory: name[8], bank, 0, address, size, 0
  .byte "root", $00, $00, $00, $00, $01, $00
  .word $8000, $75AE, $0000
  .byte "sgdata", $00, $00, $01, $00
  .word $F5AE, $1288, $0000
  .byte "fdata", $00, $00, $00, $02, $00
  .word $8836, $37D8, $0000
  .byte "cbmap0", $00, $00, $02, $00
  .word $C00E, $E8E6, $0000
  .byte "initop", $00, $00, $04, $00
  .word $A8F4, $3E64, $0000
  .byte "ibento", $00, $00, $04, $00
  .word $E758, $08F4, $0000
  .byte "maituki", $00, $04, $00
  .word $F04C, $103E, $0000
  .byte "cminato", $00, $05, $00
  .word $808A, $0BDC, $0000
  .byte "jouriku", $00, $05, $00
  .word $8C66, $1248, $0000
  .byte "scom", $00, $00, $00, $00, $05, $00
  .word $9EAE, $0434, $0000
  .byte "sensou", $00, $00, $05, $00
  .word $A2E2, $0B02, $0000
  .byte "senmain", $00, $05, $00
  .word $ADE4, $278A, $0000
  .byte "senfe", $00, $00, $00, $05, $00
  .word $D56E, $20A8, $0000
  .byte "kdata", $00, $00, $00, $05, $00
  .word $F616, $0A24, $0000
  .byte "uarugo", $00, $00, $06, $00
  .word $803A, $1F3C, $0000
  .byte "ucom", $00, $00, $00, $00, $06, $00
  .word $9F76, $32FA, $0000
  .byte "ending", $00, $00, $06, $00
  .word $D270, $2EBE, $0000
  .byte "uminato", $00, $07, $00
  .word $812E, $1912, $0000
  .byte "hantei", $00, $00, $07, $00
  .word $9A40, $0E9E, $0000
  .byte "mdisp1", $00, $00, $07, $00
  .word $A8DE, $0D7C, $0000
  .byte "uminato2", $07, $00
  .word $B65A, $0D42, $0000
  .byte "um_sub", $00, $00, $07, $00
  .word $C39C, $2230, $0000
  .byte "oukyu", $00, $00, $00, $07, $00
  .word $E5CC, $2E5C, $0000
  .byte "koueki", $00, $00, $08, $00
  .word $9428, $1C48, $0000
  .byte "sakaba", $00, $00, $08, $00
  .word $B070, $02D0, $0000
  .byte "s_nwaka", $00, $08, $00
  .word $B340, $02E6, $0000
  .byte "s_nsaso", $00, $08, $00
  .word $B626, $038A, $0000
  .byte "s_nori", $00, $00, $08, $00
  .word $B9B0, $0270, $0000
  .byte "s_sake", $00, $00, $08, $00
  .word $BC20, $19F8, $0000
  .byte "s_onna", $00, $00, $08, $00
  .word $D618, $16AA, $0000
  .byte "s_tobaku", $08, $00
  .word $ECC2, $0358, $0000
  .byte "s_ibent", $00, $08, $00
  .word $F01A, $0506, $0000
  .byte "s_card", $00, $00, $08, $00
  .word $F520, $0278, $0000
  .byte "s_bj", $00, $00, $00, $00, $08, $00
  .word $F798, $0CD6, $0000
  .byte "s_pk", $00, $00, $00, $00, $09, $00
  .word $846E, $202A, $0000
  .byte "zousen", $00, $00, $09, $00
  .word $A498, $1EFA, $0000
  .byte "z_tyuuko", $09, $00
  .word $C392, $0AC6, $0000
  .byte "z_sinzou", $09, $00
  .word $CE58, $0D24, $0000
  .res 1376, $00
  .byte "UNCHARTED WATERS      "
  .byte $02, $0A, $03, $01, $C8, $00, $B0, $57, $4F, $A8, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $61, $83, $00, $00, $93, $95, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $0F, $80, $00, $00
