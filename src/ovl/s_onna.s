; overlay s_onna, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_ONNA_F_B803
; calls 1
S_ONNA_F_B803:
  k_func 0
  k_call S_ONNA_F_C297
  k_stla $F9A8
  k_return
; calls 1
S_ONNA_F_B80F:
  k_func 6
  k_ldliw $150A
  k_stl -2
  k_ldli 0
  k_stl -4
S_ONNA_L_B81A:
  k_ldl -2
  k_addli 3
  k_pushl
  k_callx RL_884E, 2
  k_stl -6
  k_ldl -6
  k_ldrarg 11
  k_eq
  k_jumpf S_ONNA_L_B82A
  k_ldl -4
  k_return
S_ONNA_L_B82A:
  k_ldl -2
  k_addli 5
  k_stl -2
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldrib 50
  k_ult
  k_jumpt S_ONNA_L_B81A
  k_ldli 0
  k_return
; vars: g_princess
S_ONNA_F_B839:
  k_func 0
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_return
; vars: g_princess
S_ONNA_F_B844:
  k_func 0
  k_ldlba g_princess
  k_ldri 2
  k_and
  k_return
; vars: g_princess
S_ONNA_F_B84F:
  k_func 0
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_return
; vars: g_port, g_king_mission
S_ONNA_F_B85A:
  k_func 0
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_return
; vars: g_ports, g_port, g_king_mission | calls 1
S_ONNA_F_B869:
  k_func 18
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -18
  k_ldl -18
  k_addli 2
  k_pushl
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_stl -14
  k_ldl -18
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stl -8
  k_ldlarg 11
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_deref
  k_stl -12
  k_ldl -8
  k_ldriw $00FF
  k_ne
  k_jumpf S_ONNA_L_B8B4
  k_ldl -8
  k_ldrarg 13
  k_eq
  k_jumpf S_ONNA_L_B8B4
  k_ldl -14
  k_ldr -12
  k_le
  k_jumpf S_ONNA_L_B8B4
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_ne
  k_jumpf S_ONNA_L_B8B4
  k_ldli 1
  k_return
S_ONNA_L_B8B4:
  k_push -18
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_ldriw $1864
  k_add
  k_stl -16
  k_ldl -16
  k_stl -2
  k_ldl -16
  k_addli 9
  k_stl -4
  k_ldli 0
  k_stl -6
S_ONNA_L_B8C8:
  k_push -2
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_stl -14
  k_ldl -14
  k_ldriw $00FF
  k_eq
  k_jumpt S_ONNA_L_B8FC
  k_push -4
  k_callx RL_884E, 2
  k_stl -10
  k_ldl -10
  k_ldrarg 13
  k_eq
  k_jumpf S_ONNA_L_B8ED
  k_ldl -14
  k_ldr -12
  k_le
  k_jumpf S_ONNA_L_B8ED
  k_ldli 1
  k_return
S_ONNA_L_B8ED:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 9
  k_ult
  k_jumpt S_ONNA_L_B8C8
S_ONNA_L_B8FC:
  k_ldli 0
  k_return
; calls 1
S_ONNA_F_B8FE:
  k_func 10
  k_ldlarg 13
  k_ldrib 18
  k_udiv
  k_stl -2
  k_ldl -2
  k_jumpf S_ONNA_L_B914
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_addlib -90
  k_jump S_ONNA_L_B91C
S_ONNA_L_B914:
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_pushl
  k_ldlib 90
  k_popr
  k_sub
S_ONNA_L_B91C:
  k_stl -6
  k_ldlarg 11
  k_addlib 38
  k_ldrib 72
  k_umod
  k_stl -10
  k_ldl -10
  k_ldrib 36
  k_udiv
  k_stl -4
  k_ldl -4
  k_jumpf S_ONNA_L_B934
  k_ldlib 72
  k_ldr -10
  k_sub
  k_jump S_ONNA_L_B935
S_ONNA_L_B934:
  k_ldl -10
S_ONNA_L_B935:
  k_ldri 5
  k_mul
  k_stl -8
  k_push -8
  k_ldl -4
  k_shl1
  k_ldriw S_ONNA_D_C46C
  k_add
  k_deref
  k_pushl
  k_push -6
  k_ldl -2
  k_shl1
  k_ldriw S_ONNA_D_C468
  k_add
  k_deref
  k_pushl
  k_pushiw S_ONNA_D_C478
  k_callx RF_3608, 10
  k_return
; calls 4
S_ONNA_F_B952:
  k_func 2
  k_ldlarg 11
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -2
  k_push -2
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C486
  k_callx RF_2FB9, 4
  k_ldl -2
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -2
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx S_ONNA_F_B8FE, 4
  k_return
; vars: g_player_name_ptr | calls 3
S_ONNA_F_B983:
  k_func 2
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -2
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_ldri 3
  k_eq
  k_jumpf S_ONNA_L_B9A9
  k_pushi 0
  k_pushiw S_ONNA_D_C48C
  k_jump S_ONNA_L_B9AD
S_ONNA_L_B9A9:
  k_pushi 0
  k_pushiw S_ONNA_D_C493
S_ONNA_L_B9AD:
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_return
; calls 1
S_ONNA_F_B9C2:
  k_func 0
  k_pushi 1
  k_pushiw S_ONNA_D_C49B
  k_callx RF_2FB9, 4
  k_return
; vars: g_captains, g_port, g_fleets | calls 7
S_ONNA_F_B9D0:
  k_func 8
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C4C8
  k_callx RF_2FB9, 4
  k_pusharg 11
  k_callx S_ONNA_F_B983, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C4E2
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C4E4
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -4
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BA5C
  k_ldl -4
  k_addli 5
  k_derefb
  k_stl -2
  k_ldl -4
  k_addli 4
  k_derefb
  k_jumpf S_ONNA_L_BA48
  k_ldlba g_port
  k_ldr -2
  k_eq
  k_jumpf S_ONNA_L_BA38
  k_pushi 0
  k_pushiw S_ONNA_D_C4E6
  k_jump S_ONNA_L_BA31
S_ONNA_L_BA2D:
  k_pushi 0
  k_pushiw S_ONNA_D_C51E
S_ONNA_L_BA31:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BA77
S_ONNA_L_BA38:
  k_pushi 0
  k_pushiw S_ONNA_D_C506
  k_callx RF_2FB9, 4
  k_push -2
  k_callx S_ONNA_F_B952, 2
  k_jump S_ONNA_L_BA77
S_ONNA_L_BA48:
  k_ldl -2
  k_jumpf S_ONNA_L_BA2D
  k_pushi 0
  k_pushiw S_ONNA_D_C541
  k_callx RF_2FB9, 4
  k_push -2
  k_callx S_ONNA_F_B983, 2
  k_jump S_ONNA_L_BA77
S_ONNA_L_BA5C:
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -8
  k_pushi 0
  k_pushiw S_ONNA_D_C555
  k_callx RF_2FB9, 4
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldl -8
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B8FE, 4
S_ONNA_L_BA77:
  k_return
; vars: g_port, g_king_mission | calls 6
S_ONNA_F_BA78:
  k_func 4
  k_pusharg 11
  k_ldlba g_port
  k_pushl
  k_callx S_ONNA_F_B869, 4
  k_jumpf S_ONNA_L_BAA4
  k_ldlba g_king_mission
  k_pushl
  k_ldlba g_port
  k_popr
  k_ne
  k_jumpf S_ONNA_L_BAA4
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_C5CC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
S_ONNA_L_BAA4:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpt S_ONNA_L_BAE2
  k_ldli 0
  k_stl -4
  k_jump S_ONNA_L_BAC0
S_ONNA_L_BAB1:
  k_ldl -2
  k_ldriw S_ONNA_D_C583
  k_add
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf S_ONNA_L_BABE
  k_ldl -2
  k_stl -4
S_ONNA_L_BABE:
  k_ldl -2
  k_inc
S_ONNA_L_BAC0:
  k_stl -2
  k_ldl -2
  k_ldri 12
  k_ult
  k_jumpt S_ONNA_L_BAB1
  k_call RF_60B2
  k_ldl -4
  k_ldriw S_ONNA_D_C577
  k_add
  k_derefb
  k_shl1
  k_ldriw S_ONNA_D_C56B
  k_add
  k_deref
  k_pushl
  k_pushiw S_ONNA_D_C5EB
  k_callx RF_3619, 4
  k_call RF_472D
  k_return
S_ONNA_L_BAE2:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_C604
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
; vars: g_king_mission | calls 11
S_ONNA_F_BAF1:
  k_func 2
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_BB3C
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_BB3C
  k_call RF_60B2
  k_ldlba g_king_mission+1
  k_jumpt S_ONNA_L_BB11
  k_call S_ONNA_F_B9C2
  k_jump S_ONNA_L_BB39
S_ONNA_L_BB11:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_BB22
  k_pushi 1
  k_pushiw S_ONNA_D_C629
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BB39
S_ONNA_L_BB22:
  k_pushi 0
  k_pushiw S_ONNA_D_C65F
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission
  k_pushl
  k_callx S_ONNA_F_B952, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BB39:
  k_call RF_472D
S_ONNA_L_BB3C:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_BB8A
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_BB8A
  k_ldlba g_king_mission+3
  k_pushl
  k_callx $B00F, 2
  k_jumpt S_ONNA_L_BB8A
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C67F
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C6A6
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldlba g_king_mission+3
  k_pushl
  k_callx S_ONNA_F_BA78, 2
S_ONNA_L_BB8A:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_BBEB
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_BBEB
  k_ldlba g_king_mission+3
  k_pushl
  k_callx $B00F, 2
  k_jumpf S_ONNA_L_BBEB
  k_call RF_60B2
  k_ldlba g_king_mission+1
  k_jumpt S_ONNA_L_BBBC
  k_pushi 1
  k_pushiw S_ONNA_D_C6A8
  k_jump S_ONNA_L_BBB5
S_ONNA_L_BBB1:
  k_pushi 1
  k_pushiw S_ONNA_D_C6D8
S_ONNA_L_BBB5:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BBE8
S_ONNA_L_BBBC:
  k_call S_ONNA_F_B85A
  k_jumpt S_ONNA_L_BBB1
  k_pushi 0
  k_pushiw S_ONNA_D_C70E
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C72E
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BBE8:
  k_call RF_472D
S_ONNA_L_BBEB:
  k_return
; vars: g_king_mission | calls 6
S_ONNA_F_BBEC:
  k_func 0
  k_call RF_60B2
  k_ldlba g_king_mission+1
  k_jumpt S_ONNA_L_BC00
  k_call S_ONNA_F_B9C2
  k_jump S_ONNA_L_BC28
S_ONNA_L_BC00:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_BC11
  k_pushi 1
  k_pushiw S_ONNA_D_C73B
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BC28
S_ONNA_L_BC11:
  k_pushi 0
  k_pushiw S_ONNA_D_C75F
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission
  k_pushl
  k_callx S_ONNA_F_B952, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BC28:
  k_call RF_472D
  k_return
; vars: g_king_mission, g_player_name_ptr, g_port, g_princess, g_player_gold | calls 17
S_ONNA_F_BC2C:
  k_func 12
  k_ldla $EF52
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_ONNA_L_BC59
  k_call RF_60B2
  k_ldlba g_king_mission+8
  k_jumpf S_ONNA_L_BC4E
  k_ldlba g_king_mission+8
  k_pushl
  k_callx S_ONNA_F_B9D0, 2
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BC4E:
  k_pushi 0
  k_pushiw S_ONNA_D_C77F
S_ONNA_L_BC52:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BC59:
  k_ldla $EF52
  k_derefb
  k_ldri 3
  k_eq
  k_jumpf S_ONNA_L_BCDD
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BC8D
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_stl -6
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_jump S_ONNA_L_BC9C
S_ONNA_L_BC8D:
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_stl -6
  k_ldlib 99
S_ONNA_L_BC9C:
  k_stl -2
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BCAC
  k_ldlba g_port
  k_ldr -2
  k_ne
  k_jumpf S_ONNA_L_BCD7
S_ONNA_L_BCAC:
  k_call RF_60B2
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pushiw S_ONNA_D_C7C9
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C7E6
  k_callx RF_2FB9, 4
  k_push -6
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C7E8
  k_jump S_ONNA_L_BC52
S_ONNA_L_BCD7:
  k_call S_ONNA_F_BC2C
  k_jump S_ONNA_L_BFCE
S_ONNA_L_BCDD:
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BD01
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_stl -2
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_ONNA_L_BD1A
S_ONNA_L_BD01:
  k_ldla $EF52
  k_inc
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E971
  k_add
  k_derefb
  k_stl -2
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
S_ONNA_L_BD1A:
  k_stl -6
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BF2E
  k_ldlba g_port
  k_ldr -2
  k_eq
  k_jumpf S_ONNA_L_BECB
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldriw $E42E
  k_add
  k_derefb
  k_ldrib 90
  k_ugt
  k_jumpf S_ONNA_L_BDD2
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_ONNA_L_BD85
  k_ldlba g_king_mission+8
  k_jumpf S_ONNA_L_BD6E
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C808
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+8
  k_pushl
  k_callx S_ONNA_F_B983, 2
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pushiw S_ONNA_D_C80A
  k_callx RF_3608, 4
  k_jump S_ONNA_L_BDBC
S_ONNA_L_BD6E:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C817
  k_callx RF_2FB9, 4
  k_ldli 4
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_jump S_ONNA_L_BDBC
S_ONNA_L_BD85:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C860
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_jumpf S_ONNA_L_BDAA
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_ONNA_L_BDB6
S_ONNA_L_BDAA:
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
S_ONNA_L_BDB6:
  k_stl -8
  k_push -8
  k_callx RF_40DE, 2
S_ONNA_L_BDBC:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldli 2
  k_swap
  k_ldla $EF52
  k_add
  k_stla $EF52
  k_jump S_ONNA_L_BFCE
S_ONNA_L_BDD2:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_C88D
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_ONNA_L_BE80
  k_ldlba g_king_mission+8
  k_jumpf S_ONNA_L_BE14
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C8B3
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+8
  k_pushl
  k_callx S_ONNA_F_B983, 2
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pushiw S_ONNA_D_C8B5
  k_callx RF_3608, 4
  k_jump S_ONNA_L_BEBF
S_ONNA_L_BE14:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BE76
  k_pushi 5
  k_callx RF_3F3E, 2
  k_inc
  k_ldrib 100
  k_mul
  k_pushl
  k_pusha g_player_gold
  k_callx RL_8962, 4
  k_stl -10
  k_call RF_60B2
  k_push -10
  k_pushiw S_ONNA_D_C8C2
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf S_ONNA_L_BE68
  k_call RF_60B2
  k_ldl -10
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_pushi 1
  k_pushiw S_ONNA_D_C8FB
  k_callx RF_2FB9, 4
  k_ldli 4
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_ldli 2
  k_swap
  k_ldla $EF52
  k_add
  k_stla $EF52
  k_jump S_ONNA_L_BFCB
S_ONNA_L_BE68:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_C915
S_ONNA_L_BE6F:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BFCB
S_ONNA_L_BE76:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_C922
  k_jump S_ONNA_L_BE6F
S_ONNA_L_BE80:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C94D
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_jumpf S_ONNA_L_BEA5
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_ONNA_L_BEB1
S_ONNA_L_BEA5:
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
S_ONNA_L_BEB1:
  k_stl -8
  k_push -8
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C96A
  k_callx RF_2FB9, 4
S_ONNA_L_BEBF:
  k_ldli 2
  k_swap
  k_ldla $EF52
  k_add
  k_stla $EF52
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BECB:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C977
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C979
  k_callx RF_2FB9, 4
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BF13
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
S_ONNA_L_BF0C:
  k_callx RF_40DE, 2
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BF13:
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_stl -4
  k_ldl -4
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -12
  k_pushi 0
  k_pushiw S_ONNA_D_C986
  k_jump S_ONNA_L_BFAB
S_ONNA_L_BF2E:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_C999
  k_callx RF_2FB9, 4
  k_ldlba g_port
  k_ldr -2
  k_eq
  k_jumpf S_ONNA_L_BF64
  k_pushi 0
  k_pushiw S_ONNA_D_C9AB
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushiw S_ONNA_D_C9AD
  k_callx RF_3608, 2
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BF64:
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_C9C2
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_inc
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E971
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -12
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BFA7
  k_pushi 0
  k_pushiw S_ONNA_D_C9D2
  k_callx RF_2FB9, 4
  k_push -12
  k_jump S_ONNA_L_BF0C
S_ONNA_L_BFA7:
  k_pushi 0
  k_pushiw S_ONNA_D_C9E2
S_ONNA_L_BFAB:
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -12
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx S_ONNA_F_B8FE, 4
S_ONNA_L_BFC4:
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BFCB:
  k_call RF_472D
S_ONNA_L_BFCE:
  k_return
; vars: g_king_mission | calls 5
S_ONNA_F_BFCF:
  k_func 0
  k_call RF_60B2
  k_ldlba g_king_mission+1
  k_jumpt S_ONNA_L_BFE8
  k_pushi 1
  k_pushiw S_ONNA_D_C9F4
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C017
S_ONNA_L_BFE8:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_BFF9
  k_pushi 0
  k_pushiw S_ONNA_D_CA0E
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C010
S_ONNA_L_BFF9:
  k_pushi 0
  k_pushiw S_ONNA_D_CA3D
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
S_ONNA_L_C010:
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_C017:
  k_call RF_472D
  k_return
; vars: g_player_items | calls 5
S_ONNA_F_C01B:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C02F
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C02F
  k_call S_ONNA_F_BBEC
S_ONNA_L_C02F:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C048
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C048
  k_ldla g_player_items+2
  k_ldriw $8000
  k_and
  k_jumpt S_ONNA_L_C048
  k_call S_ONNA_F_BC2C
S_ONNA_L_C048:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C061
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C061
  k_ldla g_player_items+2
  k_ldriw $8000
  k_and
  k_jumpf S_ONNA_L_C061
  k_call S_ONNA_F_BFCF
S_ONNA_L_C061:
  k_return
; vars: g_king_mission | calls 10
S_ONNA_F_C062:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C0AE
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C0AE
  k_call RF_60B2
  k_ldlba g_king_mission+1
  k_jumpt S_ONNA_L_C08E
  k_pushi 1
  k_pushiw S_ONNA_D_CA63
  k_jump S_ONNA_L_C087
S_ONNA_L_C083:
  k_pushi 1
  k_pushiw S_ONNA_D_CA84
S_ONNA_L_C087:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C0AB
S_ONNA_L_C08E:
  k_call S_ONNA_F_B85A
  k_jumpt S_ONNA_L_C083
  k_pushi 0
  k_pushiw S_ONNA_D_CAAA
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission
  k_pushl
  k_callx S_ONNA_F_B952, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_C0AB:
  k_call RF_472D
S_ONNA_L_C0AE:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C0D2
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C0D2
  k_call S_ONNA_F_B844
  k_jumpt S_ONNA_L_C0D2
  k_ldlba g_king_mission+3
  k_pushl
  k_callx S_ONNA_F_B9D0, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_ONNA_L_C0D2:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C12E
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C12E
  k_call S_ONNA_F_B844
  k_jumpf S_ONNA_L_C12E
  k_call RF_60B2
  k_ldlba g_king_mission+1
  k_jumpt S_ONNA_L_C0F8
  k_pushi 1
  k_pushiw S_ONNA_D_CACA
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C12B
S_ONNA_L_C0F8:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_C105
  k_pushi 0
  k_pushiw S_ONNA_D_CAF1
  k_jump S_ONNA_L_C120
S_ONNA_L_C105:
  k_pushi 0
  k_pushiw S_ONNA_D_CB16
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_CB26
S_ONNA_L_C120:
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_C12B:
  k_call RF_472D
S_ONNA_L_C12E:
  k_return
; vars: g_king_mission | calls 8
S_ONNA_F_C12F:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C14E
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C14E
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_CB44
  k_callx RF_2FB9, 4
  k_call RF_472D
S_ONNA_L_C14E:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C1AE
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C1AE
  k_call S_ONNA_F_B844
  k_jumpt S_ONNA_L_C1AE
  k_ldla $EF52
  k_derefb
  k_ldri 3
  k_eq
  k_jumpf S_ONNA_L_C19C
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_CB7C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_CBA3
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx S_ONNA_F_B983, 2
  k_pushi 0
  k_pushiw S_ONNA_D_CBA5
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C1A4
S_ONNA_L_C19C:
  k_ldlba g_king_mission+3
  k_pushl
  k_callx S_ONNA_F_B9D0, 2
S_ONNA_L_C1A4:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_ONNA_L_C1AE:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C1CE
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C1CE
  k_call S_ONNA_F_B844
  k_jumpf S_ONNA_L_C1CE
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_CBAE
  k_callx RF_2FB9, 4
  k_call RF_472D
S_ONNA_L_C1CE:
  k_return
; vars: g_port, g_king_mission | calls 9
S_ONNA_F_C1CF:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C1E9
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C1E9
  k_call RF_60B2
  k_call S_ONNA_F_B9C2
  k_call RF_472D
S_ONNA_L_C1E9:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C241
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C241
  k_call S_ONNA_F_B844
  k_jumpt S_ONNA_L_C241
  k_call RF_60B2
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission+3
  k_popr
  k_ne
  k_jumpf S_ONNA_L_C236
  k_pushi 0
  k_pushiw S_ONNA_D_CBE5
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_CC14
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_jump S_ONNA_L_C23E
S_ONNA_L_C236:
  k_pushi 1
  k_pushiw S_ONNA_D_CC16
  k_callx RF_2FB9, 4
S_ONNA_L_C23E:
  k_call RF_472D
S_ONNA_L_C241:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C261
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C261
  k_call S_ONNA_F_B844
  k_jumpf S_ONNA_L_C261
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_ONNA_D_CC4C
  k_callx RF_2FB9, 4
  k_call RF_472D
S_ONNA_L_C261:
  k_return
; vars: g_king_mission | calls 5
S_ONNA_F_C262:
  k_func 0
  k_ldlba g_king_mission+2
  k_switch 0, 5, S_ONNA_L_C27E
    .word S_ONNA_L_C27B, S_ONNA_L_C27F, S_ONNA_L_C285, S_ONNA_L_C28B, S_ONNA_L_C291
S_ONNA_L_C27B:
  k_call S_ONNA_F_BAF1
S_ONNA_L_C27E:
  k_return
S_ONNA_L_C27F:
  k_call S_ONNA_F_C1CF
  k_jump S_ONNA_L_C27E
S_ONNA_L_C285:
  k_call S_ONNA_F_C062
  k_jump S_ONNA_L_C27E
S_ONNA_L_C28B:
  k_call S_ONNA_F_C01B
  k_jump S_ONNA_L_C27E
S_ONNA_L_C291:
  k_call S_ONNA_F_C12F
  k_jump S_ONNA_L_C27E
; vars: g_port, g_player_gold, g_princess, g_player_name_ptr, g_captains | calls 15
S_ONNA_F_C297:
  k_func 12
  k_ldlba g_port
  k_ldri 5
  k_mul
  k_ldriw $150D
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf S_ONNA_L_C2C4
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw S_ONNA_D_CDB1
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_ONNA_L_C2C4:
  k_ldl -2
  k_ldriw $E42E
  k_add
  k_derefb
  k_stl -4
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw S_ONNA_D_CDDB
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_ONNA_D_CDE6
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldla g_player_gold
  k_ldri 10
  k_ult
  k_jumpf S_ONNA_L_C346
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw S_ONNA_D_CE09
  k_callx RF_4B44, 2
  k_ldl -4
  k_ldrib 100
  k_ult
  k_jumpf S_ONNA_L_C319
  k_ldli 0
  k_return
S_ONNA_L_C319:
  k_pushi 2
  k_push -2
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw S_ONNA_D_CE1E
  k_jump S_ONNA_L_C33F
S_ONNA_L_C328:
  k_push -4
  k_callx RF_3F3E, 2
  k_ldrib 80
  k_ugt
  k_jumpf S_ONNA_L_C34D
  k_pushi 2
  k_push -2
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw S_ONNA_D_CE47
S_ONNA_L_C33F:
  k_callx RF_4B44, 2
  k_jump S_ONNA_L_C356
S_ONNA_L_C346:
  k_ldl -4
  k_ldrib 100
  k_uge
  k_jumpt S_ONNA_L_C328
S_ONNA_L_C34D:
  k_ldli 10
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
S_ONNA_L_C356:
  k_ldl -4
  k_ldrib 45
  k_udiv
  k_stl -6
  k_ldli 1
  k_stl -8
  k_ldl -6
  k_jumpf S_ONNA_L_C36E
  k_ldli 5
  k_ldr -6
  k_sub
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_callx RF_3F3E, 2
  k_stl -8
S_ONNA_L_C36E:
  k_pushi 2
  k_push -2
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_ldl -6
  k_shl1
  k_ldriw S_ONNA_D_CC7E
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldl -4
  k_ldriw $00C8
  k_ult
  k_jumpf S_ONNA_L_C3A8
  k_ldl -2
  k_ldriw $E42E
  k_add
  k_pushl
  k_pushiw $00C8
  k_pushi 5
  k_callx RF_3F3E, 2
  k_ldr -4
  k_add
  k_addli 10
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
S_ONNA_L_C3A8:
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf S_ONNA_L_C3BE
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_C3BE
  k_call S_ONNA_F_C262
  k_jump S_ONNA_L_C466
S_ONNA_L_C3BE:
  k_ldl -8
  k_jumpt S_ONNA_L_C466
S_ONNA_L_C3C2:
  k_pushib 20
  k_callx RF_3F3E, 2
  k_stl -10
  k_ldl -10
  k_inc
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpt S_ONNA_L_C3C2
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_ONNA_D_CE70
  k_callx RF_2FB9, 4
  k_ldl -10
  k_addlib 21
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -10
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_pushl
  k_ldl -10
  k_ldri 5
  k_udiv
  k_shl1
  k_popr
  k_add
  k_inc
  k_shl1
  k_ldriw S_ONNA_D_CC6C
  k_add
  k_deref
  k_pushl
  k_pushiw S_ONNA_D_CE79
  k_callx RF_3608, 4
  k_ldl -10
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -12
  k_ldl -12
  k_addli 5
  k_derefb
  k_stl -10
  k_ldl -12
  k_addli 4
  k_derefb
  k_jumpt S_ONNA_L_C447
  k_ldl -10
  k_jumpf S_ONNA_L_C435
  k_ldl -10
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_pushl
  k_ldl -10
  k_dec
  k_ldri 5
  k_udiv
  k_shl1
  k_popr
  k_add
  k_inc
  k_jump S_ONNA_L_C436
S_ONNA_L_C435:
  k_ldli 0
S_ONNA_L_C436:
  k_shl1
  k_ldriw S_ONNA_D_CC6C
  k_add
  k_deref
  k_pushl
  k_pushiw S_ONNA_D_CE80
  k_callx RF_3608, 4
  k_jump S_ONNA_L_C45C
S_ONNA_L_C447:
  k_pushi 0
  k_pushiw S_ONNA_D_CE95
  k_callx RF_2FB9, 4
  k_ldl -10
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
S_ONNA_L_C45C:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_ONNA_L_C466:
  k_ldli 1
  k_return
S_ONNA_D_C468:
  .byte $70, $C4, $72, $C4
S_ONNA_D_C46C:
  .byte $74, $C4, $76, $C4, $4E, $00, $53, $00, $45, $00, $57, $00
S_ONNA_D_C478:
  .byte "%s %d"
  .byte $DF
  .byte " %s %d"
  .byte $DF, $00
S_ONNA_D_C486:
  .byte $0A, $0A, "at ", $00
S_ONNA_D_C48C:
  .byte " the", $0A, $0A, $00
S_ONNA_D_C493:
  .byte " from", $0A, $0A, $00
S_ONNA_D_C49B:
  .byte "I hear the King of", $0A, "Portugal wants to see", $0A, "you", $00
S_ONNA_D_C4C8:
  .byte $0A, "So, you're looking", $0A, $0A, "for ", $00
S_ONNA_D_C4E2:
  .byte $3F, $00
S_ONNA_D_C4E4:
  .byte $0A, $00
S_ONNA_D_C4E6:
  .byte "He's on his way here", $0A, $0A, "right now", $00
S_ONNA_D_C506:
  .byte "I hear he's bound", $0A, $0A, "for ", $00
S_ONNA_D_C51E:
  .byte "He's on the lookout", $0A, $0A, "for your ship", $00
S_ONNA_D_C541:
  .byte "He's hunting down", $0A, $0A, $00
S_ONNA_D_C555:
  .byte "He was last seen at", $0A, $0A, $00
S_ONNA_D_C56B:
  .word S_ONNA_D_C58F, S_ONNA_D_C59F, S_ONNA_D_C5AD, S_ONNA_D_C5B4, S_ONNA_D_C5BB, S_ONNA_D_C5C1
S_ONNA_D_C577:
  .byte $00, $00, $00, $01, $02, $03, $03, $04, $04, $04, $04, $05
S_ONNA_D_C583:
  .byte $17, $12, $09, $0D, $0E, $0C, $03, $00, $01
  .byte $02, $04, $11
S_ONNA_D_C58F:
  .byte "Northern Europe", $00
S_ONNA_D_C59F:
  .byte "the New World", $00
S_ONNA_D_C5AD:
  .byte "Africa", $00
S_ONNA_D_C5B4:
  .byte "Arabia", $00
S_ONNA_D_C5BB:
  .byte "India", $00
S_ONNA_D_C5C1:
  .byte "the Orient", $00
S_ONNA_D_C5CC:
  .byte "That's sold at the", $0A, "market here", $00
S_ONNA_D_C5EB:
  .byte "I hear they sell it in%s", $00
S_ONNA_D_C604:
  .byte "I might know where", $0A, "you could find it", $00
S_ONNA_D_C629:
  .byte "The trader at the", $0A, "marketplace here is", $0A, "looking for you", $00
S_ONNA_D_C65F:
  .byte $0A, "Someone's looking for", $0A, $0A, "you in ", $00
S_ONNA_D_C67F:
  .byte $0A, "Are you looking for", $0A, $0A, "a place to buy", $0A, $0A, $00
S_ONNA_D_C6A6:
  .byte $3F, $00
S_ONNA_D_C6A8:
  .byte "Do your best to meet", $0A, "the King's demands", $0A, "quickly", $00
S_ONNA_D_C6D8:
  .byte "The trader at the", $0A, "marketplace here is", $0A, "looking for you", $00
S_ONNA_D_C70E:
  .byte $0A, "You should take the", $0A, $0A, "goods to ", $00
S_ONNA_D_C72E:
  .byte $0A, $0A, "right away", $00
S_ONNA_D_C73B:
  .byte "The guild master is", $0A, "looking for you", $00
S_ONNA_D_C75F:
  .byte $0A, "Someone's looking for", $0A, $0A, "you in ", $00
S_ONNA_D_C77F:
  .byte $0A, "Looking for points on", $0A, "this map? If so, you", $0A, "should ask one of the"
  .byte $0A, "sailors", $00
S_ONNA_D_C7C9:
  .byte "Are you in search of", $0A, "the %s?", $00
S_ONNA_D_C7E6:
  .byte $0A, $00
S_ONNA_D_C7E8:
  .byte " may know", $0A, $0A, "something about that", $00
S_ONNA_D_C808:
  .byte $0A, $00
S_ONNA_D_C80A:
  .byte " has the", $0A, $0A, "%s", $00
S_ONNA_D_C817:
  .byte $0A, "I'll give you my map,", $0A, "sweety. In return, youcan visit me again"
  .byte $0A, "sometime", $00
S_ONNA_D_C860:
  .byte $0A, "Sorry, but the person", $0A, $0A, "you need to see is", $0A, $0A, $00
S_ONNA_D_C88D:
  .byte "Are you the one who's", $0A, "looking for me?", $00
S_ONNA_D_C8B3:
  .byte $0A, $00
S_ONNA_D_C8B5:
  .byte " has the", $0A, $0A, "%s", $00
S_ONNA_D_C8C2:
  .byte "I'll sell you this mapfor %d gold. What do", $0A, "you say, love", $00
S_ONNA_D_C8FB:
  .byte "I hope it serves you", $0A, "well", $00
S_ONNA_D_C915:
  .byte "Too bad, pet", $00
S_ONNA_D_C922:
  .byte "You want my map? Hmm,", $0A, "let me think it over", $00
S_ONNA_D_C94D:
  .byte $0A, "Sorry, you'll have to", $0A, $0A, "ask ", $00
S_ONNA_D_C96A:
  .byte " about", $0A, $0A, "that", $00
S_ONNA_D_C977:
  .byte $0A, $00
S_ONNA_D_C979:
  .byte "? She's in", $0A, $0A, $00
S_ONNA_D_C986:
  .byte "some port around", $0A, $0A, $00
S_ONNA_D_C999:
  .byte $0A, "As for your man", $0A, $00
S_ONNA_D_C9AB:
  .byte $0A, $00
S_ONNA_D_C9AD:
  .byte ", he was", $0A, $0A, "just here!", $00
S_ONNA_D_C9C2:
  .byte ", I think", $0A, "he's ", $00
S_ONNA_D_C9D2:
  .byte "at the port of", $0A, $00
S_ONNA_D_C9E2:
  .byte "somewhere around", $0A, $00
S_ONNA_D_C9F4:
  .byte "The King is expecting", $0A, "you", $00
S_ONNA_D_CA0E:
  .byte $0A, "The guild master's", $0A, $0A, "fuming that you're", $0A, $0A, "late!", $00
S_ONNA_D_CA3D:
  .byte $0A, "Hurry up and sail", $0A, $0A, "the treasure to", $0A, $0A, $00
S_ONNA_D_CA63:
  .byte "The King's looking", $0A, "for you, pet!", $00
S_ONNA_D_CA84:
  .byte "The inn master's been", $0A, "looking for you", $00
S_ONNA_D_CAAA:
  .byte $0A, "Someone's looking for", $0A, $0A, "you in ", $00
S_ONNA_D_CACA:
  .byte "The King is expecting", $0A, "a visit from you", $00
S_ONNA_D_CAF1:
  .byte "The inn master was", $0A, "worried about you", $00
S_ONNA_D_CB16:
  .byte $0A, "Hurry over to", $0A, $00
S_ONNA_D_CB26:
  .byte " and", $0A, "reassure the inn", $0A, "master!", $00
S_ONNA_D_CB44:
  .byte "Something serious has", $0A, "happened at the palacein Portugal", $00
S_ONNA_D_CB7C:
  .byte "Are you planning to", $0A, "save the princess?", $00
S_ONNA_D_CBA3:
  .byte $0A, $00
S_ONNA_D_CBA5:
  .byte " has her", $00
S_ONNA_D_CBAE:
  .byte "We thought you were", $0A, "dead! Go tell the Kingyou're safe!", $00
S_ONNA_D_CBE5:
  .byte $0A, "Won't you bring me", $0A, $0A, "back a little gift", $0A, $0A, "from ", $00
S_ONNA_D_CC14:
  .byte $3F, $00
S_ONNA_D_CC16:
  .byte "Please come visit me", $0A, "on your way back from", $0A, "the palace", $00
S_ONNA_D_CC4C:
  .byte "The King can't wait", $0A, "any longer!", $00
S_ONNA_D_CC6C:
  .word S_ONNA_D_CC88, S_ONNA_D_CC93, S_ONNA_D_CCA4, S_ONNA_D_CCB8, S_ONNA_D_CCCC, S_ONNA_D_CCDD, S_ONNA_D_CCF1, S_ONNA_D_CD02
  .word S_ONNA_D_CD0F
S_ONNA_D_CC7E:
  .word S_ONNA_D_CD1C, S_ONNA_D_CD27, S_ONNA_D_CD37, S_ONNA_D_CD56, S_ONNA_D_CD7B
S_ONNA_D_CC88:
  .byte "your fleet", $00
S_ONNA_D_CC93:
  .byte "Portuguese ships", $00
S_ONNA_D_CCA4:
  .byte "Portuguese warships", $00
S_ONNA_D_CCB8:
  .byte "Spanish trade ships", $00
S_ONNA_D_CCCC:
  .byte "Spanish warships", $00
S_ONNA_D_CCDD:
  .byte "Turkish trade ships", $00
S_ONNA_D_CCF1:
  .byte "Turkish warships", $00
S_ONNA_D_CD02:
  .byte "pirate ships", $00
S_ONNA_D_CD0F:
  .byte "pirate ships", $00
S_ONNA_D_CD1C:
  .byte "Thank you!", $00
S_ONNA_D_CD27:
  .byte "You're so kind!", $00
S_ONNA_D_CD37:
  .byte "You won't forget me,", $0A, "will you?", $00
S_ONNA_D_CD56:
  .byte "Your adventures must", $0A, "be so exciting!", $00
S_ONNA_D_CD7B:
  .byte "You'll stay with me", $0A, "and never leave me,", $0A, "right m'love?", $00
S_ONNA_D_CDB1:
  .byte "There's no sign of a", $0A, "waitress at this inn", $00
S_ONNA_D_CDDB:
  .byte $0A, "I'm sure ", $00
S_ONNA_D_CDE6:
  .byte $0A, $0A, "would appreciate 10", $0A, $0A, "gold pieces", $00
S_ONNA_D_CE09:
  .byte "You can't afford it!", $00
S_ONNA_D_CE1E:
  .byte "Oh, that's not", $0A, "necessary. Thanks", $0A, "anyway!", $00
S_ONNA_D_CE47:
  .byte "Oh, that's not", $0A, "necessary. Thanks", $0A, "anyway!", $00
S_ONNA_D_CE70:
  .byte $0A, "I hear ", $00
S_ONNA_D_CE79:
  .byte "'s", $0A, "%s", $0A, $00
S_ONNA_D_CE80:
  .byte "are in pursuit of", $0A, "%s", $00
S_ONNA_D_CE95:
  .byte "are heading toward", $0A, $00
  .byte $00
