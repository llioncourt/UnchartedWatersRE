; overlay s_tobaku, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_TOBAKU_F_B803
S_TOBAKU_F_B803:
  k_func 0
  k_call S_TOBAKU_F_B99F
  k_stla $F9A8
  k_return
S_TOBAKU_F_B80F:
  k_func 2
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $B9F6
  k_callx RF_4B44, 2
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_ldrib 20
  k_ult
  k_jumpf S_TOBAKU_L_B83E
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt S_TOBAKU_L_B883
S_TOBAKU_L_B83E:
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_ldri 2
  k_sdiv
  k_ldrib 100
  k_lt
  k_jumpt S_TOBAKU_L_B883
  k_ldla $E56D
  k_long $26
  k_longd $19, $0000E678
  k_long $2C
  k_jumpt S_TOBAKU_L_B883
  k_pushib 20
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_pushl
  k_ldla $E56D
  k_popr
  k_ult
  k_jumpt S_TOBAKU_L_B883
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 4
  k_pushl
  k_ldlba $EA88
  k_popr
  k_ugt
  k_jumpf S_TOBAKU_L_B8A7
S_TOBAKU_L_B883:
  k_ldlba $EA88
  k_ldri 4
  k_ugt
  k_jumpf S_TOBAKU_L_B895
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BA17
  k_jump S_TOBAKU_L_B89C
S_TOBAKU_L_B895:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BA43
S_TOBAKU_L_B89C:
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldli 1
  k_return
S_TOBAKU_L_B8A7:
  k_ldli 0
  k_stlbf -1
  k_ldli 0
  k_jump S_TOBAKU_L_B8CB
S_TOBAKU_L_B8AF:
  k_ldlbf -2
  k_ldriw $B9F0
  k_add
  k_derefb
  k_pushl
  k_ldlba $EF68
  k_popr
  k_and
  k_jumpf S_TOBAKU_L_B8C7
  k_ldlbf -1
  k_inc
  k_stlbf -1
S_TOBAKU_L_B8C7:
  k_ldlbf -2
  k_inc
S_TOBAKU_L_B8CB:
  k_stlbf -2
  k_ldlbf -2
  k_ldri 6
  k_ult
  k_jumpt S_TOBAKU_L_B8AF
  k_ldlbf -1
  k_ldri 3
  k_ult
  k_jumpt S_TOBAKU_L_B8E7
  k_pushib 30
  k_callx RF_3F3E, 2
  k_jumpt S_TOBAKU_L_B913
S_TOBAKU_L_B8E7:
  k_ldlbf -1
  k_ldri 3
  k_ult
  k_jumpf S_TOBAKU_L_B8F5
  k_ldlbf -1
  k_jump S_TOBAKU_L_B8FB
S_TOBAKU_L_B8F5:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_inc
S_TOBAKU_L_B8FB:
  k_stlbf -1
  k_call RF_60B2
  k_ldlbf -1
  k_pushl
  k_pushiw $BA7D
  k_callx RF_3619, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldli 1
  k_return
S_TOBAKU_L_B913:
  k_ldlib 33
  k_stla $F99E
  k_ldli 0
  k_return
S_TOBAKU_F_B91A:
  k_func 0
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $BAA5
  k_callx RF_4B44, 2
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_ldrib 20
  k_ult
  k_jumpf S_TOBAKU_L_B949
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpt S_TOBAKU_L_B974
S_TOBAKU_L_B949:
  k_pushi 10
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlib 60
  k_popr
  k_sub
  k_pushl
  k_ldla $E56D
  k_popr
  k_ult
  k_jumpt S_TOBAKU_L_B974
  k_ldla $E56D
  k_long $26
  k_longd $19, $0000E678
  k_long $2C
  k_jumpt S_TOBAKU_L_B974
  k_ldlba $EA88
  k_ldri 7
  k_ugt
  k_jumpf S_TOBAKU_L_B998
S_TOBAKU_L_B974:
  k_ldlba $EA88
  k_ldri 5
  k_ugt
  k_jumpf S_TOBAKU_L_B986
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BAD7
  k_jump S_TOBAKU_L_B98D
S_TOBAKU_L_B986:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB02
S_TOBAKU_L_B98D:
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldli 1
  k_return
S_TOBAKU_L_B998:
  k_ldlib 34
  k_stla $F99E
  k_ldli 0
  k_return
S_TOBAKU_F_B99F:
  k_func 2
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BB4B
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw $BB32
  k_pushi 1
  k_pushi 8
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -2
  k_ldlbf -2
  k_ldriw $00FF
  k_ne
  k_jumpf S_TOBAKU_L_B9EB
  k_ldlbf -2
  k_shl1
  k_ldriw $BB36
  k_add
  k_deref
  k_callptr
  k_jumpf S_TOBAKU_L_B9E5
  k_ldliw $00FF
  k_stlbf -2
  k_jump S_TOBAKU_L_B9EB
S_TOBAKU_L_B9E5:
  k_ldliw $00F0
  k_stlba $EF65
S_TOBAKU_L_B9EB:
  k_ldlbf -2
  k_return
  .byte $00, $02, $04, $10, $20, $40, $80
  .byte "Anyone care for a"
  .byte $0A
  .byte "game of Poker?"
  .byte $00
  .byte "I must have pocketed"
  .byte $0A
  .byte "too much in this port!"
  .byte $00
  .byte "This blasted port! Nota man here will play"
  .byte $0A
  .byte "cards with us!"
  .byte $00
  .byte "What's this?  Only %d"
  .byte $0A
  .byte "of you will play?"
  .byte $00
  .byte "Anyone around here"
  .byte $0A
  .byte "care for a game of"
  .byte $0A
  .byte "Black Jack?"
  .byte $00
  .byte "I must have cleaned"
  .byte $0A
  .byte "them out in this port!"
  .byte $00
  .byte "Confounded port!"
  .byte $0A
  .byte "There's no one willingto play!"
  .byte $00, $3A, $BB, $40, $BB, $0F, $B8, $1A, $B9
  .byte "Poker"
  .byte $00
  .byte "Black Jack"
  .byte $00
  .byte "Which game?"
  .byte $00, $00
