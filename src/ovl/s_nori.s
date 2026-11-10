; overlay s_nori, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_NORI_F_B803
; calls 1
S_NORI_F_B803:
  k_func 0
  k_call S_NORI_F_B962
  k_stla $F9A8
  k_return
; vars: g_port, g_ports, g_player_gold, g_player_name_ptr, g_title | calls 15
S_NORI_F_B80F:
  k_func 18
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -18
  k_call RF_60EE
  k_pushi 0
  k_callx RF_4604, 2
  k_pushl
  k_pushi 0
  k_callx RF_4119, 2
  k_popr
  k_eq
  k_jumpf S_NORI_L_B83D
  k_call RF_60B2
  k_pushiw S_NORI_D_B9B0
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_NORI_L_B83D:
  k_ldla g_player_gold
  k_ldrib 50
  k_ult
  k_jumpf S_NORI_L_B852
  k_call RF_60B2
  k_pushiw S_NORI_D_B9CE
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_NORI_L_B852:
  k_ldla g_player_gold
  k_stl -14
  k_pushiw $03E8
  k_push -14
  k_callx RL_8962, 4
  k_stl -10
  k_pushi 1
  k_callx RF_609A, 2
  k_push -10
  k_pushib 50
  k_pushiw S_NORI_D_B9E8
  k_callx RF_3C6D, 6
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf S_NORI_L_B878
  k_ldli 0
  k_return
S_NORI_L_B878:
  k_ldl -2
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_NORI_D_B9F8
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_NORI_D_BA20
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldl -18
  k_deref
  k_pushl
  k_ldliw $03E8
  k_popr
  k_sub
  k_ldrib 100
  k_sdiv
  k_pushl
  k_ldlba g_title
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_pushl
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_derefb
  k_ldri 10
  k_sdiv
  k_pushl
  k_ldlib 20
  k_popr
  k_sub
  k_popr
  k_add
  k_popr
  k_add
  k_stl -4
  k_ldl -2
  k_ldr -4
  k_udiv
  k_pushl
  k_pushi 2
  k_callx rand, 2
  k_popr
  k_add
  k_inc
  k_stl -6
  k_pushi 0
  k_callx RF_4119, 2
  k_pushl
  k_pushi 0
  k_callx RF_4604, 2
  k_popr
  k_sub
  k_stl -12
  k_push -6
  k_push -12
  k_callx RL_8962, 4
  k_stl -8
  k_call RF_6080
  k_pushi 1
  k_callx RF_609A, 2
  k_push -6
  k_pushiw S_NORI_D_BA22
  k_callx RF_3608, 4
  k_ldl -6
  k_ldr -12
  k_gt
  k_jumpf S_NORI_L_B90A
  k_push -8
  k_pushiw S_NORI_D_BA33
  k_callx RF_3608, 4
S_NORI_L_B90A:
  k_pushi 2
  k_callx RF_3DDF, 2
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_call $9662
  k_pushi 7
  k_pushi 9
  k_push -8
  k_callx RF_6C1E, 6
  k_stl -16
  k_ldliw $00F0
  k_stlba $EF65
  k_call $97BE
  k_ldl -16
  k_ldri 1
  k_eq
  k_jumpf S_NORI_L_B935
  k_ldli 1
  k_return
S_NORI_L_B935:
  k_ldl -14
  k_stla g_player_gold
  k_ldl -16
  k_return
; calls 1
S_NORI_F_B93B:
  k_func 2
  k_ldliw $00F0
  k_stlba $EF65
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_call $9662
  k_pushi 7
  k_pushi 9
  k_pushiw $00FF
  k_callx RF_6C1E, 6
  k_stl -2
  k_call $97BE
  k_ldl -2
  k_return
; calls 4
S_NORI_F_B962:
  k_func 4
  k_ldli 0
  k_stl -4
S_NORI_L_B969:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw S_NORI_D_BA65
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw S_NORI_D_BA4E
  k_pushi 1
  k_pushi 9
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf S_NORI_L_B99F
  k_ldlbf -1
  k_shl1
  k_ldriw S_NORI_D_BA52
  k_add
  k_deref
  k_callptr
  k_stl -4
S_NORI_L_B99F:
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpt S_NORI_L_B9AD
  k_ldl -4
  k_jumpf S_NORI_L_B969
S_NORI_L_B9AD:
  k_ldl -4
  k_return
  .byte $00
S_NORI_D_B9B0:
  .byte "There's no room for", $0A, "more crew", $00
S_NORI_D_B9CE:
  .byte "We don't have enough", $0A, "gold", $00
S_NORI_D_B9E8:
  .byte "Spend how much", $0A, $00
S_NORI_D_B9F8:
  .byte $0A, "Hey! Anyone want to", $0A, $0A, "sail with Cap'n", $0A, $0A, $00
S_NORI_D_BA20:
  .byte $3F, $00
S_NORI_D_BA22:
  .byte $0A, "We found %d men", $00
S_NORI_D_BA33:
  .byte ", but", $0A, $0A, "only %d can join us", $00
S_NORI_D_BA4E:
  .word S_NORI_D_BA56, S_NORI_D_BA5E
S_NORI_D_BA52:
  .word S_NORI_F_B80F, S_NORI_F_B93B
S_NORI_D_BA56:
  .byte "Recruit", $00
S_NORI_D_BA5E:
  .byte "Assign", $00
S_NORI_D_BA65:
  .byte "Which one?", $00
