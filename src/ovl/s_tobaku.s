; overlay s_tobaku, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_TOBAKU_F_B803
; calls 1
S_TOBAKU_F_B803:
  k_func 0
  k_call S_TOBAKU_F_B99F
  k_stla $F9A8
  k_return
; vars: g_port, g_ports, g_player_gold | calls 8
S_TOBAKU_F_B80F:
  k_func 2
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw S_TOBAKU_D_B9F6
  k_callx RF_4B44, 2
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_ldrib 20
  k_ult
  k_jumpf S_TOBAKU_L_B83E
  k_pushi 3
  k_callx rand, 2
  k_jumpt S_TOBAKU_L_B883
S_TOBAKU_L_B83E:
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_deref
  k_ldri 2
  k_sdiv
  k_ldrib 100
  k_lt
  k_jumpt S_TOBAKU_L_B883
  k_ldla g_player_gold
  k_long $26
  k_longd $19, $0000E678
  k_long $2C
  k_jumpt S_TOBAKU_L_B883
  k_pushib 20
  k_callx rand, 2
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_pushl
  k_ldla g_player_gold
  k_popr
  k_ult
  k_jumpt S_TOBAKU_L_B883
  k_pushi 3
  k_callx rand, 2
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
  k_pushiw S_TOBAKU_D_BA17
  k_jump S_TOBAKU_L_B89C
S_TOBAKU_L_B895:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_TOBAKU_D_BA43
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
  k_ldriw S_TOBAKU_D_B9F0
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
  k_callx rand, 2
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
  k_callx rand, 2
  k_inc
S_TOBAKU_L_B8FB:
  k_stlbf -1
  k_call RF_60B2
  k_ldlbf -1
  k_pushl
  k_pushiw S_TOBAKU_D_BA7D
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
; vars: g_port, g_player_gold | calls 7
S_TOBAKU_F_B91A:
  k_func 0
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw S_TOBAKU_D_BAA5
  k_callx RF_4B44, 2
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_ldrib 20
  k_ult
  k_jumpf S_TOBAKU_L_B949
  k_pushi 2
  k_callx rand, 2
  k_jumpt S_TOBAKU_L_B974
S_TOBAKU_L_B949:
  k_pushi 10
  k_callx rand, 2
  k_pushl
  k_ldlib 60
  k_popr
  k_sub
  k_pushl
  k_ldla g_player_gold
  k_popr
  k_ult
  k_jumpt S_TOBAKU_L_B974
  k_ldla g_player_gold
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
  k_pushiw S_TOBAKU_D_BAD7
  k_jump S_TOBAKU_L_B98D
S_TOBAKU_L_B986:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_TOBAKU_D_BB02
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
; calls 4
S_TOBAKU_F_B99F:
  k_func 2
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw S_TOBAKU_D_BB4B
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw S_TOBAKU_D_BB32
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
  k_ldriw S_TOBAKU_D_BB36
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
  .byte $00
S_TOBAKU_D_B9F0:
  .byte $02, $04, $10, $20, $40, $80
S_TOBAKU_D_B9F6:
  .byte "Anyone care for a", $0A, "game of Poker?", $00
S_TOBAKU_D_BA17:
  .byte "I must have pocketed", $0A, "too much in this port!", $00
S_TOBAKU_D_BA43:
  .byte "This blasted port! Nota man here will play", $0A, "cards with us!", $00
S_TOBAKU_D_BA7D:
  .byte "What's this?  Only %d", $0A, "of you will play?", $00
S_TOBAKU_D_BAA5:
  .byte "Anyone around here", $0A, "care for a game of", $0A, "Black Jack?", $00
S_TOBAKU_D_BAD7:
  .byte "I must have cleaned", $0A, "them out in this port!", $00
S_TOBAKU_D_BB02:
  .byte "Confounded port!", $0A, "There's no one willingto play!", $00
S_TOBAKU_D_BB32:
  .word S_TOBAKU_D_BB3A, S_TOBAKU_D_BB40
S_TOBAKU_D_BB36:
  .word S_TOBAKU_F_B80F, S_TOBAKU_F_B91A
S_TOBAKU_D_BB3A:
  .byte "Poker", $00
S_TOBAKU_D_BB40:
  .byte "Black Jack", $00
S_TOBAKU_D_BB4B:
  .byte "Which game?", $00
  .byte $00
