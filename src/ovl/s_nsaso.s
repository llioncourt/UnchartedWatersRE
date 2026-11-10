; overlay s_nsaso, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_NSASO_F_B803
S_NSASO_F_B803:
  k_func 0
  k_call S_NSASO_F_B80F
  k_stla $F9A8
  k_return
S_NSASO_F_B80F:
  k_func 70
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_leal -11
  k_pushl
  k_callx RF_4221, 2
  k_ldri 10
  k_eq
  k_jumpf S_NSASO_L_B832
  k_pushiw $BADC
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_NSASO_L_B832:
  k_ldli 0
  k_stlbf -34
  k_leal -31
  k_stln -33
  k_ldli 0
  k_jump S_NSASO_L_B886
S_NSASO_L_B83F:
  k_ldlbf -1
  k_inc
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_derefb
  k_stlbf -53
  k_ldlba $EF69
  k_pushl
  k_ldlbf -1
  k_shl1
  k_ldriw $E971
  k_add
  k_derefb
  k_popr
  k_eq
  k_jumpf S_NSASO_L_B882
  k_ldlbf -53
  k_ldri 2
  k_and
  k_jumpt S_NSASO_L_B882
  k_ldlbf -53
  k_ldri 1
  k_and
  k_jumpf S_NSASO_L_B882
  k_pushn -33
  k_ldlbf -1
  k_inc
  k_popstoreb
  k_ldln -33
  k_inc
  k_stln -33
  k_ldlbf -34
  k_inc
  k_stlbf -34
S_NSASO_L_B882:
  k_ldlbf -1
  k_inc
S_NSASO_L_B886:
  k_stlbf -1
  k_ldlbf -1
  k_ldrib 20
  k_ult
  k_jumpt S_NSASO_L_B83F
  k_ldlbf -34
  k_jumpt S_NSASO_L_B8A1
  k_pushiw $BAF6
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_NSASO_L_B8A1:
  k_ldlbf -34
  k_ldri 6
  k_ult
  k_jumpf S_NSASO_L_B8AF
  k_ldlbf -34
  k_jump S_NSASO_L_B8B0
S_NSASO_L_B8AF:
  k_ldli 6
S_NSASO_L_B8B0:
  k_stlbf -34
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_call $9662
  k_pushi 0
  k_pushi 0
  k_pushi 14
  k_pushi 14
  k_pushi 6
  k_pushi 11
  k_callx RF_4F65, 12
  k_ldli 0
  k_jump S_NSASO_L_B907
S_NSASO_L_B8CE:
  k_pushi 1
  k_pushiw $BB13
  k_callx RF_2FB9, 4
  k_ldlbf -1
  k_shl1
  k_addli 8
  k_pushl
  k_pushi 13
  k_callx RF_2F8F, 4
  k_leal -46
  k_pushl
  k_ldlbf -1
  k_shl1
  k_popr
  k_add
  k_pushl
  k_leal -31
  k_pushl
  k_ldlbf -1
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_popstore
  k_pushl
  k_callx RF_40DE, 2
  k_ldlbf -1
  k_inc
S_NSASO_L_B907:
  k_stlbf -1
  k_ldlbf -34
  k_pushl
  k_ldlbf -1
  k_popr
  k_ult
  k_jumpt S_NSASO_L_B8CE
  k_ldliw $00F0
  k_stlba $EF65
  k_ldliw $E444
  k_stln -66
  k_ldliw $EAC1
  k_stln -48
  k_ldlib -1
  k_stla $EF66
  k_pushi 1
  k_callx RF_609A, 2
  k_call RF_60EE
  k_pushi 1
  k_pushiw $BB17
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stln -64
  k_ldlbf -34
  k_pushl
  k_pushi 2
  k_pushi 8
  k_pushi 12
  k_callx RF_490C, 8
  k_stlbf -53
  k_ldlbf -53
  k_ldriw $00FF
  k_ne
  k_jumpf S_NSASO_L_BA6F
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $BB26
  k_callx RF_4B44, 2
  k_pushi 0
  k_leal -31
  k_pushl
  k_ldlbf -53
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_60CE, 4
  k_leal -31
  k_pushl
  k_ldlbf -53
  k_popr
  k_add
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_stln -70
  k_ldln -70
  k_derefb
  k_ldrib 40
  k_ult
  k_jumpf S_NSASO_L_BA62
  k_leal -31
  k_pushl
  k_ldlbf -53
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stln -68
  k_leal -31
  k_pushl
  k_ldlbf -53
  k_popr
  k_add
  k_derefb
  k_ldri 10
  k_mul
  k_ldriw $EAC1
  k_add
  k_stln -50
  k_ldln -68
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -68
  k_addli 2
  k_derefb
  k_popr
  k_add
  k_stln -56
  k_ldln -66
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -66
  k_addli 2
  k_derefb
  k_popr
  k_add
  k_stln -58
  k_ldli 0
  k_stlbf -1
  k_stlbf -54
  k_stlbf -51
  k_jump S_NSASO_L_BA03
S_NSASO_L_B9DC:
  k_ldlbf -51
  k_pushl
  k_ldlbf -1
  k_ldrn -50
  k_add
  k_derefb
  k_popr
  k_ugt
  k_jumpf S_NSASO_L_B9FC
  k_ldlbf -1
  k_ldrn -50
  k_add
  k_derefb
  k_stlbf -51
  k_ldlbf -1
  k_stlbf -54
S_NSASO_L_B9FC:
  k_ldlbf -1
  k_inc
  k_stlbf -1
S_NSASO_L_BA03:
  k_ldlbf -1
  k_ldri 5
  k_ult
  k_jumpt S_NSASO_L_B9DC
  k_ldlbf -54
  k_ldrn -48
  k_add
  k_derefb
  k_stlbf -52
  k_ldlbf -51
  k_ldrn -56
  k_mul
  k_stln -60
  k_ldlbf -52
  k_ldrn -58
  k_mul
  k_pushl
  k_ldlba $EE76
  k_pushl
  k_ldlbf -52
  k_popr
  k_mul
  k_ldrn -58
  k_mul
  k_ldri 10
  k_udiv
  k_popr
  k_add
  k_stln -62
  k_pushib 20
  k_callx RF_3F3E, 2
  k_ldrn -62
  k_add
  k_pushl
  k_ldln -60
  k_popr
  k_ugt
  k_jumpf S_NSASO_L_BA57
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $BB46
  k_callx RF_4B44, 2
  k_ldli 0
  k_jump S_NSASO_L_BA6D
S_NSASO_L_BA57:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $BB6E
  k_jump S_NSASO_L_BA68
S_NSASO_L_BA62:
  k_call RF_60B2
  k_pushiw $BB78
S_NSASO_L_BA68:
  k_callx RF_4B44, 2
  k_ldli 1
S_NSASO_L_BA6D:
  k_stln -64
S_NSASO_L_BA6F:
  k_ldln -64
  k_jumpf S_NSASO_L_BACB
  k_ldln -70
  k_derefb
  k_ldrib 20
  k_ult
  k_jumpf S_NSASO_L_BA8C
  k_pushi 10
  k_callx RF_3F3E, 2
  k_addlib 20
  k_pushl
  k_ldln -70
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
S_NSASO_L_BA8C:
  k_ldliw $E99C
  k_stln -33
  k_ldli 0
  k_jump S_NSASO_L_BAB8
S_NSASO_L_BA95:
  k_ldln -33
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpf S_NSASO_L_BAAF
  k_pushn -33
  k_leal -31
  k_pushl
  k_ldlbf -53
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_jump S_NSASO_L_BAC3
S_NSASO_L_BAAF:
  k_ldln -33
  k_inc
  k_stln -33
  k_ldlbf -1
  k_inc
S_NSASO_L_BAB8:
  k_stlbf -1
  k_ldlbf -1
  k_ldri 10
  k_ult
  k_jumpt S_NSASO_L_BA95
S_NSASO_L_BAC3:
  k_ldln -70
  k_inc
  k_pushl
  k_ldliw $00FF
  k_popstoreb
S_NSASO_L_BACB:
  k_call $97BE
  k_ldlbf -53
  k_ldriw $00FF
  k_eq
  k_jumpf S_NSASO_L_BADA
  k_ldli 0
  k_return
S_NSASO_L_BADA:
  k_ldli 1
  k_return
  .byte "We can't use any more"
  .byte $0A, $6D, $65, $6E, $00
  .byte "I don't see any"
  .byte $0A
  .byte "sailors here"
  .byte $00, $1B, $43, $30, $00
  .byte "Approach whom?"
  .byte $00
  .byte "How'd you like to"
  .byte $0A
  .byte "join my crew?"
  .byte $00
  .byte "You don't know who"
  .byte $0A
  .byte "you're dealing with!"
  .byte $00
  .byte "All right"
  .byte $00
  .byte "So we meet again"
  .byte $00, $00
