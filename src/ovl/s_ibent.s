; overlay s_ibent, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_IBENT_F_B803
; calls 1
S_IBENT_F_B803:
  k_func 0
  k_call S_IBENT_F_B85B
  k_stla $F9A8
  k_return
; vars: g_player_name_ptr | calls 4
S_IBENT_F_B80F:
  k_func 2
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -2
  k_ldl -2
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_ldri 3
  k_ne
  k_jumpf S_IBENT_L_B843
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_shl1
  k_ldriw S_IBENT_D_BAB4
  k_add
  k_deref
  k_pushl
  k_pushiw S_IBENT_D_BAC3
  k_callx RF_3619, 4
S_IBENT_L_B843:
  k_pushi 1
  k_pushiw S_IBENT_D_BAC8
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_return
; vars: g_princess, g_port, g_king_mission, g_palace_savings, g_fame, g_player_name_ptr | calls 12
S_IBENT_F_B85B:
  k_func 0
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf S_IBENT_L_B8EF
  k_ldlba g_princess
  k_ldri 2
  k_and
  k_jumpf S_IBENT_L_B8EF
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf S_IBENT_L_B8EF
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf S_IBENT_L_B8EF
  k_ldlba g_king_mission+1
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_B8EF
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BACA
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushiw $2710
  k_ldla g_king_mission+6
  k_ldri 1
  k_shr
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldla g_fame
  k_ldriw $C350
  k_ult
  k_jumpf S_IBENT_L_B8DB
  k_pushiw $03E8
  k_ldliw $C350
  k_ldra g_fame
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_fame
  k_add
  k_stla g_fame
S_IBENT_L_B8DB:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BAFE
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba g_princess
  k_ldli 1
  k_return
S_IBENT_L_B8EF:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf S_IBENT_L_B9B7
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf S_IBENT_L_B9B7
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf S_IBENT_L_B9B7
  k_ldlba g_king_mission+1
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_B9B7
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BB25
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BB44
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf S_IBENT_L_B94F
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BB6F
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump S_IBENT_L_B9B5
S_IBENT_L_B94F:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BB93
  k_callx RF_2FB9, 4
  k_ldla g_king_mission+6
  k_ldri 1
  k_shr
  k_pushl
  k_ldla g_palace_savings
  k_popr
  k_ult
  k_jumpf S_IBENT_L_B97D
  k_ldli 0
  k_stla g_palace_savings
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BBB7
  k_callx RF_2FB9, 4
  k_jump S_IBENT_L_B98A
S_IBENT_L_B97D:
  k_ldla g_king_mission+6
  k_ldri 1
  k_shr
  k_swap
  k_ldla g_palace_savings
  k_sub
  k_stla g_palace_savings
S_IBENT_L_B98A:
  k_call RF_472D
  k_call RF_60B2
  k_pushiw S_IBENT_D_BBEB
  k_callx RF_4B44, 2
  k_pushi 10
  k_callx rand, 2
  k_ldri 5
  k_mul
  k_addliw $012C
  k_pushl
  k_pusha g_fame
  k_callx RL_8962, 4
  k_swap
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_stlba g_princess
S_IBENT_L_B9B5:
  k_ldli 1
  k_return
S_IBENT_L_B9B7:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpt S_IBENT_L_BAB2
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf S_IBENT_L_BAB2
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf S_IBENT_L_BAB2
  k_ldlba g_king_mission+1
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_BAB2
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 5
  k_callx rand, 2
  k_ldri 5
  k_mul
  k_addlib 100
  k_stla g_king_mission+6
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BC0D
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_IBENT_D_BC46
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlba g_king_mission+3
  k_dec
  k_ldri 5
  k_udiv
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_BA2F
  k_pushi 0
  k_pushiw S_IBENT_D_BC51
  k_jump S_IBENT_L_BA33
S_IBENT_L_BA2F:
  k_pushi 0
  k_pushiw S_IBENT_D_BC58
S_IBENT_L_BA33:
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_dec
  k_ldri 5
  k_udiv
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_IBENT_D_BC60
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pusha g_king_mission+6
  k_pushiw S_IBENT_D_BC76
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf S_IBENT_L_BA9E
  k_call RF_60B2
  k_ldla g_king_mission+6
  k_ldri 1
  k_shr
  k_pushl
  k_pushiw S_IBENT_D_BCA6
  k_callx RF_3619, 4
  k_pushiw $2710
  k_ldla g_king_mission+6
  k_ldri 1
  k_shr
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_jump S_IBENT_L_BAAA
S_IBENT_L_BA9E:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_IBENT_D_BCE2
  k_callx RF_2FB9, 4
  k_ldli 0
S_IBENT_L_BAAA:
  k_stlba g_princess
  k_call RF_472D
  k_ldli 1
  k_return
S_IBENT_L_BAB2:
  k_ldli 0
  k_return
S_IBENT_D_BAB4:
  .byte $B8, $BA, $BE, $BA, $BC, $AE, $B3, $BE, $DD, $00, $BE, $DD, $B6, $DD, $00
S_IBENT_D_BAC3:
  .byte $25, $73, $C0, $B2, $00
S_IBENT_D_BAC8:
  .byte $C9, $00
S_IBENT_D_BACA:
  .byte "I'm glad you came", $0A, "through for us! We'll", $0A, "be safe now", $00
S_IBENT_D_BAFE:
  .byte "I'll deposit your", $0A, "reward at the palace", $00
S_IBENT_D_BB25:
  .byte "What's become of the", $0A, "villains?", $00
S_IBENT_D_BB44:
  .byte "You didn't catch", $0A, "them?! Will you try", $0A, "again", $00
S_IBENT_D_BB6F:
  .byte "Then please hurry.", $0A, "I'm losing money", $00
S_IBENT_D_BB93:
  .byte "You coward! Give me", $0A, "back the money!", $00
S_IBENT_D_BBB7:
  .byte "Enough of your jokes.", $0A, "There's not enough", $0A, "money here", $00
S_IBENT_D_BBEB:
  .byte "I thought you were", $0A, "trustworthy...", $00
S_IBENT_D_BC0D:
  .byte "I've searched high andlow for you. I have a", $0A, "favor to ask", $00
S_IBENT_D_BC46:
  .byte $0A, "You see, ", $00
S_IBENT_D_BC51:
  .byte $0A, $0A, "the ", $00
S_IBENT_D_BC58:
  .byte $0A, $0A, "from ", $00
S_IBENT_D_BC60:
  .byte " is", $0A, $0A, "robbing me blind", $00
S_IBENT_D_BC76:
  .byte "Will you take care of", $0A, "him for %d000 gold", $0A, "pieces", $00
S_IBENT_D_BCA6:
  .byte "Good! As down payment", $0A, "I'll deposit %d000", $0A, "gold at the palace", $00
S_IBENT_D_BCE2:
  .byte "You dare to call", $0A, "yourself a sailor?", $00
