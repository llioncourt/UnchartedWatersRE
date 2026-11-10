; overlay s_nwaka, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_NWAKA_F_B803
; calls 1
S_NWAKA_F_B803:
  k_func 0
  k_call S_NWAKA_F_B95F
  k_stla $F9A8
  k_return
; calls 1
S_NWAKA_F_B80F:
  k_func 0
  k_pushi 1
  k_pushi 8
  k_callx RF_60CE, 4
  k_return
; vars: g_player_name_ptr | calls 4
S_NWAKA_F_B81B:
  k_func 1
  k_pushi 0
  k_pushi 0
  k_pushi 14
  k_pushib 28
  k_pushi 6
  k_pushi 2
  k_callx RF_4F65, 12
  k_ldlib -1
  k_stla $EF66
  k_pushi 8
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw S_NWAKA_D_BA62
  k_callx RF_2FB9, 4
  k_pushiw $20FA
  k_pushi 9
  k_pushi 1
  k_pushi 10
  k_pushi 15
  k_pushi 3
  k_callx $960C, 12
  k_ldli 0
  k_jump S_NWAKA_L_B888
S_NWAKA_L_B84E:
  k_ldlbf -1
  k_ldri 5
  k_umod
  k_shl1
  k_addli 10
  k_pushl
  k_ldlbf -1
  k_ldri 5
  k_udiv
  k_ldri 13
  k_mul
  k_addli 4
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlbf -1
  k_shl1
  k_ldrarg 15
  k_add
  k_pushl
  k_ldlbf -1
  k_ldrarg 13
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_popstore
  k_ldlbf -1
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlbf -1
  k_inc
S_NWAKA_L_B888:
  k_stlbf -1
  k_ldlbf 11
  k_pushl
  k_ldlbf -1
  k_popr
  k_ult
  k_jumpt S_NWAKA_L_B84E
  k_return
; vars: g_port | calls 6
S_NWAKA_F_B898:
  k_func 8
  k_call S_NWAKA_F_B80F
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw S_NWAKA_D_BA79
  k_callx RF_2FB9, 4
  k_pusharg 13
  k_callx RF_40DE, 2
  k_pushib 25
  k_pushi 8
  k_callx RF_2F8F, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_jumpf S_NWAKA_L_B95D
  k_ldliw $E99C
  k_stl -4
  k_ldli 0
  k_jump S_NWAKA_L_B8E3
S_NWAKA_L_B8C9:
  k_ldlbf 11
  k_pushl
  k_ldl -4
  k_derefb
  k_popr
  k_eq
  k_jumpf S_NWAKA_L_B8DC
  k_push -4
  k_ldliw $00FF
  k_popstoreb
  k_jump S_NWAKA_L_B8F7
S_NWAKA_L_B8DC:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldlbf -7
  k_inc
S_NWAKA_L_B8E3:
  k_stlbf -7
  k_ldlbf -7
  k_ldri 10
  k_ult
  k_jumpf S_NWAKA_L_B8F7
  k_ldl -4
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpt S_NWAKA_L_B8C9
S_NWAKA_L_B8F7:
  k_ldliw $E99C
  k_stl -4
  k_stl -6
  k_ldli 0
  k_stlbf -7
  k_stlbf -8
  k_jump S_NWAKA_L_B927
S_NWAKA_L_B906:
  k_ldl -4
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf S_NWAKA_L_B91D
  k_push -6
  k_ldl -4
  k_derefb
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
  k_ldlbf -8
  k_inc
  k_stlbf -8
S_NWAKA_L_B91D:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldlbf -7
  k_inc
  k_stlbf -7
S_NWAKA_L_B927:
  k_ldlbf -7
  k_ldri 10
  k_ult
  k_jumpt S_NWAKA_L_B906
  k_ldlbf -8
  k_stlbf -7
  k_jump S_NWAKA_L_B947
S_NWAKA_L_B938:
  k_push -6
  k_ldliw $00FF
  k_popstoreb
  k_ldlbf -7
  k_inc
  k_stlbf -7
  k_ldl -6
  k_inc
  k_stl -6
S_NWAKA_L_B947:
  k_ldlbf -7
  k_ldri 10
  k_ult
  k_jumpt S_NWAKA_L_B938
  k_ldlbf 11
  k_dec
  k_shl1
  k_ldriw $E971
  k_add
  k_pushl
  k_ldlba g_port
  k_popstoreb
S_NWAKA_L_B95D:
  k_ldl -2
  k_return
; calls 13
S_NWAKA_F_B95F:
  k_func 66
  k_leal -12
  k_pushl
  k_callx RF_4221, 2
  k_stlbf -63
  k_leal -22
  k_pushl
  k_callx RF_4293, 2
  k_stlbf -64
  k_ldlbf -63
  k_jumpf S_NWAKA_L_B98C
  k_ldlbf -64
  k_pushl
  k_ldlbf -63
  k_popr
  k_eq
  k_jumpf S_NWAKA_L_B99D
S_NWAKA_L_B98C:
  k_call S_NWAKA_F_B80F
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw S_NWAKA_D_BA8C
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_NWAKA_L_B99D:
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_call $9662
  k_leal -62
  k_pushl
  k_leal -12
  k_pushl
  k_ldlbf -63
  k_pushl
  k_callx S_NWAKA_F_B81B, 6
  k_ldliw $00F0
  k_stlba $EF65
S_NWAKA_L_B9C0:
  k_ldli 0
  k_stln -66
  k_call S_NWAKA_F_B80F
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_NWAKA_D_BAA8
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 5
  k_pushi 2
  k_pushi 13
  k_pushi 10
  k_pushi 3
  k_ldlbf -63
  k_pushl
  k_pushiw S_NWAKA_D_BAC1
  k_callx RF_3787, 16
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_ne
  k_jumpf S_NWAKA_L_BA4F
  k_ldl -2
  k_dec
  k_stl -2
  k_pushi 0
  k_callx RF_4190, 2
  k_pushl
  k_leal -12
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_4190, 2
  k_popr
  k_eq
  k_jumpf S_NWAKA_L_BA21
  k_leal -62
  k_pushl
  k_ldl -2
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_leal -12
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_NWAKA_F_B898, 4
  k_stln -66
  k_jump S_NWAKA_L_BA4F
S_NWAKA_L_BA21:
  k_call S_NWAKA_F_B80F
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_NWAKA_D_BAC2
  k_callx RF_2FB9, 4
  k_leal -62
  k_pushl
  k_ldl -2
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_NWAKA_D_BAD6
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_NWAKA_L_BA4F:
  k_ldln -66
  k_jumpt S_NWAKA_L_BA5B
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf S_NWAKA_L_B9C0
S_NWAKA_L_BA5B:
  k_call $97BE
  k_ldln -66
  k_return
  .byte $00
S_NWAKA_D_BA62:
  .byte $1B, "C0<Mates at a glance>", $00
S_NWAKA_D_BA79:
  .byte $0A, "OK to part from", $0A, $0A, $00
S_NWAKA_D_BA8C:
  .byte "We can't spare a", $0A, "navigator!", $00
S_NWAKA_D_BAA8:
  .byte "Who are ye parting", $0A, "from?", $00
S_NWAKA_D_BAC1:
  .byte $00
S_NWAKA_D_BAC2:
  .byte $0A, "You've entrusted", $0A, $0A, $00
S_NWAKA_D_BAD6:
  .byte " with", $0A, $0A, "a vessel", $00
