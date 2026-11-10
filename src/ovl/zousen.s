; overlay zousen, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp ZOUSEN_F_B003
; calls 1
ZOUSEN_F_B003:
  k_func 0
  k_call ZOUSEN_F_B310
  k_stla $F9A6
  k_return
ZOUSEN_F_B00F:
  k_func 0
  k_return
; calls 1
ZOUSEN_F_B015:
  k_func 0
  k_pushi 0
  k_pushib 18
  k_pushib 30
  k_pushi 2
  k_pushi 1
  k_pushi 1
  k_callx RF_604A, 12
  k_return
; sys: brightness_set, lz_decompress, vram_load_tiles | vars: g_fh_cbmap0 | calls 4
ZOUSEN_F_B027:
  k_func 8
  k_pushi 0
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
  k_pushi 0
  k_callx $9825, 2
  k_pushib 22
  k_pushiw RD_8F6D
  k_pushi 0
  k_pushib 76
  k_callx syscall, 8  ; sys 76 lz_decompress
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushiw $0126
  k_pushiw $01A0
  k_pushi 11
  k_callx syscall, 12  ; sys 11 vram_load_tiles
  k_pushi 1
  k_callx RF_3D5C, 2
  k_call RF_4DD8
  k_pusha g_fh_cbmap0
  k_pushiw $8478
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha g_fh_cbmap0
  k_pushiw RL_48A6
  k_pushib 22
  k_pushib 28
  k_pushi 5
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_pushi 15
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
  k_return
; sys: brightness_set
ZOUSEN_F_B08B:
  k_func 0
  k_pushi 0
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
  k_call $97F5
  k_call $97BE
  k_pushi 1
  k_callx $9825, 2
  k_pushi 15
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
  k_return
; calls 4
ZOUSEN_F_B0AA:
  k_func 6
  k_ldlbf 11
  k_ldri 3
  k_umod
  k_ldri 9
  k_mul
  k_addli 3
  k_stl -2
  k_ldlbf 11
  k_ldri 3
  k_udiv
  k_ldri 7
  k_mul
  k_inc
  k_stl -4
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_callx RF_40A5, 2
  k_stl -6
  k_ldlbf 11
  k_pushl
  k_ldlbf 13
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_ldl -4
  k_addli 6
  k_pushl
  k_push -2
  k_callx RF_2380, 8
  k_ldl -4
  k_addli 11
  k_pushl
  k_push -2
  k_callx RF_2F8F, 4
  k_ldlbf 13
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_return
; calls 4
ZOUSEN_F_B103:
  k_func 4
  k_ldlib -1
  k_stla $EF66
  k_call $9662
  k_call ZOUSEN_F_B015
  k_pusharg 11
  k_pushi 0
  k_callx RL_8502, 4
  k_stl -2
  k_call ZOUSEN_F_B00F
  k_ldli 0
  k_jump ZOUSEN_L_B12D
ZOUSEN_L_B121:
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_pushl
  k_push -4
  k_callx ZOUSEN_F_B0AA, 4
  k_ldl -4
  k_inc
ZOUSEN_L_B12D:
  k_stl -4
  k_ldl -4
  k_ldr -2
  k_ult
  k_jumpt ZOUSEN_L_B121
  k_ldl -2
  k_return
; vars: g_ships | calls 3
ZOUSEN_F_B136:
  k_func 0
  k_pushi 12
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx RF_43F6, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_pushl
  k_pushiw ZOUSEN_D_C458
  k_callx RF_3608, 6
  k_return
; calls 3
ZOUSEN_F_B158:
  k_func 0
  k_pushi 14
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx RF_4439, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_derefb
  k_pushl
  k_pushiw ZOUSEN_D_C473
  k_callx RF_3608, 6
  k_return
; calls 3
ZOUSEN_F_B17A:
  k_func 0
  k_pushi 13
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx RF_44AA, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_pushl
  k_pushiw ZOUSEN_D_C48E
  k_callx RF_3608, 6
  k_return
; calls 5
ZOUSEN_F_B19C:
  k_func 0
  k_pushi 15
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_pusharg 11
  k_callx RF_45A5, 2
  k_pushl
  k_pushiw ZOUSEN_D_C4A9
  k_callx RF_3608, 6
  k_return
; calls 4
ZOUSEN_F_B1CC:
  k_func 0
  k_pushib 18
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx RF_4523, 2
  k_pushl
  k_pusharg 11
  k_callx RF_45E5, 2
  k_pushl
  k_pushiw ZOUSEN_D_C4C4
  k_callx RF_3608, 6
  k_return
; calls 4
ZOUSEN_F_B1EC:
  k_func 0
  k_pushib 16
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw ZOUSEN_D_C4DD
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_pushl
  k_pushiw ZOUSEN_D_C4F1
  k_callx RF_3608, 4
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addli 15
  k_deref
  k_pushl
  k_pushiw ZOUSEN_D_C4F6
  k_callx RF_3608, 4
  k_return
; vars: g_cargo, g_ships, g_player_name_ptr | calls 17
ZOUSEN_F_B22A:
  k_func 6
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -6
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -4
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_stl -2
  k_call $9662
  k_call ZOUSEN_F_B015
  k_call ZOUSEN_F_B00F
  k_pushi 0
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_pushi 7
  k_pushi 3
  k_callx RF_2380, 8
  k_pushi 7
  k_pushi 15
  k_callx RF_2F8F, 4
  k_push -2
  k_pushiw ZOUSEN_D_C4FA
  k_callx RF_3608, 4
  k_pushi 9
  k_pushi 15
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw ZOUSEN_D_C503
  k_callx RF_2FB9, 4
  k_pushi 10
  k_pushi 15
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9BD
  k_add
  k_derefb
  k_pushl
  k_pushi 8
  k_pushi 11
  k_callx RF_23CF, 6
  k_pusharg 11
  k_callx ZOUSEN_F_B136, 2
  k_pusharg 11
  k_callx ZOUSEN_F_B17A, 2
  k_pusharg 11
  k_callx ZOUSEN_F_B158, 2
  k_pusharg 11
  k_callx ZOUSEN_F_B19C, 2
  k_pusharg 11
  k_callx ZOUSEN_F_B1EC, 2
  k_pushib 17
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw ZOUSEN_D_C50E
  k_callx RF_2FB9, 4
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_shl1
  k_ldriw $1C33
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw ZOUSEN_D_C515
  k_callx RF_2FB9, 4
  k_pushib 17
  k_pushib 22
  k_callx RF_2F8F, 4
  k_ldl -2
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_pushiw ZOUSEN_D_C518
  k_callx RF_3608, 6
  k_pusharg 11
  k_callx ZOUSEN_F_B1CC, 2
  k_return
; calls 4
ZOUSEN_F_B310:
  k_func 4
  k_ldli 0
  k_stl -4
ZOUSEN_L_B317:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw ZOUSEN_D_C550
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 5
  k_pushiw ZOUSEN_D_C520
  k_pushi 2
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf ZOUSEN_L_B34D
  k_ldl -2
  k_shl1
  k_ldriw ZOUSEN_D_C52A
  k_add
  k_deref
  k_callptr
  k_swap
  k_ldl -4
  k_or
  k_stl -4
ZOUSEN_L_B34D:
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf ZOUSEN_L_B317
  k_ldl -4
  k_return
; sys: wait_frames | vars: g_player_gold | calls 13
ZOUSEN_F_B357:
  k_func 14
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C566
  k_callx RF_4B44, 2
  k_ldla g_player_gold
  k_ldri 10
  k_ult
  k_jumpf ZOUSEN_L_B383
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C58F
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_B383:
  k_leal -10
  k_pushl
  k_callx ZOUSEN_F_B103, 2
  k_stlbf -11
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C5A9
  k_callx RF_2FB9, 4
  k_ldlbf -11
  k_pushl
  k_callx $968B, 2
  k_stlbf -12
  k_ldlbf -12
  k_ldriw $00FF
  k_eq
  k_jumpf ZOUSEN_L_B3BD
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C5BC
  k_callx RF_4B44, 2
  k_call $9662
  k_ldli 0
  k_return
ZOUSEN_L_B3BD:
  k_leal -10
  k_pushl
  k_ldlbf -12
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx ZOUSEN_F_B22A, 2
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C5D2
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -14
  k_ldl -14
  k_jumpt ZOUSEN_L_B3E9
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C5E5
  k_callx RF_4B44, 2
ZOUSEN_L_B3E9:
  k_ldl -14
  k_jumpf ZOUSEN_L_B383
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C5FE
  k_callx RF_4B44, 2
  k_pushi 1
  k_callx RF_3D5C, 2
  k_pushi 3
  k_callx RF_3D5C, 2
  k_call RF_4DD8
ZOUSEN_L_B404:
  k_pushib 25
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw ZOUSEN_D_C619
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw ZOUSEN_D_C630
  k_callx RF_2FB9, 4
ZOUSEN_L_B41B:
  k_pushi 1
  k_leal -10
  k_pushl
  k_ldlbf -12
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_pushi 7
  k_callx RF_6557, 6
  k_jumpf ZOUSEN_L_B41B
  k_pushib 25
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw ZOUSEN_D_C634
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_B454
  k_pushib 30
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_jump ZOUSEN_L_B460
ZOUSEN_L_B454:
  k_pushib 30
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_ldli 1
  k_jumpt ZOUSEN_L_B404
ZOUSEN_L_B460:
  k_pushi 3
  k_callx RF_3D5C, 2
  k_call RF_4DD8
  k_ldli 10
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_ldli 1
  k_return
; vars: g_ships, g_port, g_player_gold | calls 21
ZOUSEN_F_B473:
  k_func 24
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
ZOUSEN_L_B47E:
  k_leal -20
  k_pushl
  k_callx ZOUSEN_F_B103, 2
  k_stlbf -10
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C660
  k_callx RF_2FB9, 4
  k_ldlbf -10
  k_pushl
  k_callx $968B, 2
  k_stlbf -21
  k_ldlbf -21
  k_ldriw $00FF
  k_eq
  k_jumpf ZOUSEN_L_B4B8
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C67B
  k_callx RF_4B44, 2
  k_call $9662
  k_ldli 0
  k_return
ZOUSEN_L_B4B8:
  k_leal -20
  k_pushl
  k_ldlbf -21
  k_popr
  k_add
  k_derefb
  k_stlbf -8
  k_ldlbf -8
  k_pushl
  k_callx ZOUSEN_F_B22A, 2
  k_ldli 0
  k_stlbf -7
  k_ldlbf -8
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -24
  k_ldl -24
  k_addli 3
  k_derefb
  k_jumpf ZOUSEN_L_B4EB
  k_ldl -24
  k_addli 6
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_stlbf -7
ZOUSEN_L_B4EB:
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C691
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_B715
  k_jump ZOUSEN_L_B6F9
ZOUSEN_L_B4FF:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C6A2
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw ZOUSEN_D_C644
  k_pushi 2
  k_pushi 10
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -21
  k_ldlbf -21
  k_ldriw $00FF
  k_ne
  k_jumpf ZOUSEN_L_B6F9
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_addlib 50
  k_pushl
  k_ldlbf -21
  k_ldri 1
  k_shr
  k_inc
  k_popr
  k_mul
  k_stl -2
  k_ldl -24
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_stlbf -9
  k_ldlbf -7
  k_pushl
  k_ldlbf -21
  k_inc
  k_popr
  k_eq
  k_jumpf ZOUSEN_L_B56D
  k_ldl -24
  k_addli 3
  k_derefb
  k_swap
  k_ldlbf -9
  k_sub
  k_stlbf -9
ZOUSEN_L_B56D:
  k_ldlbf -9
  k_jumpf ZOUSEN_L_B6EC
  k_call RF_60B2
  k_pushi 0
  k_pushiw ZOUSEN_D_C6B5
  k_callx RF_2FB9, 4
  k_push -2
  k_ldlbf -21
  k_inc
  k_shl1
  k_ldriw $1C33
  k_add
  k_pushl
  k_callx RL_8875, 4
  k_pushl
  k_callx RF_40DE, 2
  k_push -2
  k_pushiw ZOUSEN_D_C6B7
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushib 25
  k_pushi 12
  k_callx RF_2F8F, 4
  k_pusha g_player_gold
  k_pushiw ZOUSEN_D_C6D3
  k_callx RF_3619, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_ldlbf -9
  k_pushl
  k_pushi 1
  k_pushiw ZOUSEN_D_C6E3
  k_callx RF_3C6D, 6
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_ne
  k_jumpf ZOUSEN_L_B6F9
  k_ldl -4
  k_ldr -2
  k_mul
  k_pushl
  k_ldla g_player_gold
  k_popr
  k_ult
  k_jumpf ZOUSEN_L_B5E9
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C6F1
  k_jump ZOUSEN_L_B6F5
ZOUSEN_L_B5E9:
  k_call RF_6080
  k_ldl -2
  k_ldr -4
  k_mul
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_ldlbf -7
  k_pushl
  k_ldlbf -21
  k_inc
  k_popr
  k_eq
  k_jumpf ZOUSEN_L_B62A
  k_call RF_60B2
  k_ldl -4
  k_ldri 1
  k_eq
  k_jumpf ZOUSEN_L_B613
  k_ldliw ZOUSEN_D_C72E
  k_jump ZOUSEN_L_B616
ZOUSEN_L_B613:
  k_ldliw ZOUSEN_D_C72F
ZOUSEN_L_B616:
  k_pushl
  k_push -4
  k_pushiw ZOUSEN_D_C70B
  k_callx RF_3619, 6
  k_ldl -4
  k_pushl
  k_ldl -24
  k_addli 3
  k_popr
  k_pushl
  k_derefb
  k_add
  k_jump ZOUSEN_L_B6E1
ZOUSEN_L_B62A:
  k_ldl -24
  k_addli 3
  k_derefb
  k_jumpf ZOUSEN_L_B69F
  k_call RF_60B2
  k_pushi 0
  k_pushiw ZOUSEN_D_C731
  k_callx RF_2FB9, 4
  k_ldlbf -21
  k_inc
  k_shl1
  k_ldriw $1C33
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw ZOUSEN_D_C733
  k_callx RF_2FB9, 4
  k_ldl -24
  k_addli 3
  k_derefb
  k_pushl
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_addlib 50
  k_pushl
  k_ldlbf -7
  k_ldri 1
  k_shr
  k_inc
  k_popr
  k_mul
  k_ldri 1
  k_shr
  k_popr
  k_mul
  k_stl -6
  k_ldl -6
  k_long $26
  k_long $14
  k_ldla g_player_gold
  k_long $26
  k_long $15
  k_long $03
  k_longd $19, $0000EA60
  k_long $0A
  k_jumpf ZOUSEN_L_B696
  k_ldliw $EA60
ZOUSEN_L_B690:
  k_stla g_player_gold
  k_jump ZOUSEN_L_B6C5
ZOUSEN_L_B696:
  k_ldl -6
  k_swap
  k_ldla g_player_gold
  k_add
  k_jump ZOUSEN_L_B690
ZOUSEN_L_B69F:
  k_call RF_60B2
  k_pushi 0
  k_pushiw ZOUSEN_D_C76A
  k_callx RF_2FB9, 4
  k_ldlbf -21
  k_inc
  k_shl1
  k_ldriw $1C33
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw ZOUSEN_D_C783
  k_callx RF_2FB9, 4
ZOUSEN_L_B6C5:
  k_ldl -24
  k_addli 3
  k_pushl
  k_ldl -4
  k_popstoreb
  k_pushiw $00CF
  k_ldl -24
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldlbf -21
  k_inc
  k_ldri 4
  k_shl
  k_pushl
  k_ldl -24
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
ZOUSEN_L_B6E1:
  k_popstoreb
  k_pushi 1
  k_callx RF_3DDF, 2
  k_call $9662
  k_ldli 1
  k_return
ZOUSEN_L_B6EC:
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C785
ZOUSEN_L_B6F5:
  k_callx RF_4B44, 2
ZOUSEN_L_B6F9:
  k_ldlbf -21
  k_ldriw $00FF
  k_ne
  k_jumpt ZOUSEN_L_B4FF
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw ZOUSEN_D_C7A1
  k_callx RF_4B44, 2
ZOUSEN_L_B715:
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C7B7
  k_callx RF_4B44, 2
  k_jump ZOUSEN_L_B47E
; vars: g_port, g_player_gold, g_cargo, g_ships | calls 15
ZOUSEN_F_B722:
  k_func 32
ZOUSEN_L_B727:
  k_leal -14
  k_pushl
  k_callx ZOUSEN_F_B103, 2
  k_stlbf -15
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C7D0
  k_callx RF_2FB9, 4
  k_ldlbf -15
  k_pushl
  k_callx $968B, 2
  k_stlbf -16
  k_ldlbf -16
  k_ldriw $00FF
  k_eq
  k_jumpf ZOUSEN_L_B767
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C7E9
  k_callx RF_4B44, 2
  k_call $9662
  k_ldli 0
  k_return
ZOUSEN_L_B767:
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx ZOUSEN_F_B22A, 2
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C7FF
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_jumpt ZOUSEN_L_B793
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C812
  k_callx RF_4B44, 2
ZOUSEN_L_B793:
  k_ldl -2
  k_jumpf ZOUSEN_L_B727
  k_call RF_6080
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_addlib 20
  k_pushl
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_inc
  k_popr
  k_mul
  k_ldri 3
  k_mul
  k_stl -18
  k_pushib 25
  k_pushi 12
  k_callx RF_2F8F, 4
  k_pusha g_player_gold
  k_pushiw ZOUSEN_D_C82B
  k_callx RF_3619, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stl -4
  k_push -18
  k_ldl -4
  k_jumpf ZOUSEN_L_B803
  k_ldliw ZOUSEN_D_C85B
  k_jump ZOUSEN_L_B806
ZOUSEN_L_B803:
  k_ldliw ZOUSEN_D_C85D
ZOUSEN_L_B806:
  k_pushl
  k_pushiw ZOUSEN_D_C83B
  k_callx RF_3619, 6
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_jumpf ZOUSEN_L_B822
  k_ldl -2
  k_jumpf ZOUSEN_L_B850
  k_ldla g_player_gold
  k_ldr -18
  k_ult
  k_jumpf ZOUSEN_L_B850
ZOUSEN_L_B822:
  k_ldl -2
  k_jumpf ZOUSEN_L_B83B
  k_ldla g_player_gold
  k_ldr -18
  k_ult
  k_jumpf ZOUSEN_L_B83B
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C85F
  k_callx RF_4B44, 2
ZOUSEN_L_B83B:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C879
  k_callx RF_4B44, 2
  k_call $9662
  k_ldli 0
  k_stl -2
ZOUSEN_L_B850:
  k_ldl -2
  k_jumpf ZOUSEN_L_B727
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C88F
  k_callx RF_4B44, 2
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -22
  k_ldl -22
  k_derefb
  k_jumpt ZOUSEN_L_B879
  k_ldli 1
  k_stla $F9AA
ZOUSEN_L_B879:
  k_ldl -18
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_pushib 16
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_popr
  k_pushl
  k_derefb
  k_xor
  k_popstoreb
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stln -26
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_stln -28
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stln -30
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stln -32
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -20
  k_push -20
  k_ldln -28
  k_ldri 10
  k_mul
  k_pushl
  k_ldln -26
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_pushl
  k_ldl -20
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -20
  k_inc
  k_pushl
  k_ldli 4
  k_ldrn -32
  k_sub
  k_pushl
  k_ldli 10
  k_ldrn -30
  k_sub
  k_pushl
  k_ldlib 20
  k_ldrn -26
  k_sub
  k_ldrib 100
  k_mul
  k_ldrib 20
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_pushl
  k_ldl -20
  k_inc
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -20
  k_addli 2
  k_pushl
  k_ldln -32
  k_addli 3
  k_pushl
  k_ldli 10
  k_ldrn -26
  k_sub
  k_pushl
  k_ldln -30
  k_ldri 10
  k_mul
  k_addlib 100
  k_popr
  k_mul
  k_ldri 10
  k_udiv
  k_popr
  k_mul
  k_ldri 2
  k_shr
  k_pushl
  k_ldl -20
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_call $9662
  k_ldli 1
  k_return
; vars: g_player_gold, g_port, g_ports, g_cargo | calls 14
ZOUSEN_F_B9A7:
  k_func 22
  k_ldli 1
  k_stl -4
ZOUSEN_L_B9AE:
  k_ldli 1
  k_stlbf -17
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldl -4
  k_jumpf ZOUSEN_L_B9CC
  k_pushi 1
  k_pushiw ZOUSEN_D_C8DE
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stl -4
  k_jump ZOUSEN_L_B9D4
ZOUSEN_L_B9CC:
  k_pushi 1
  k_pushiw ZOUSEN_D_C91D
  k_callx RF_2FB9, 4
ZOUSEN_L_B9D4:
  k_leal -14
  k_pushl
  k_callx ZOUSEN_F_B103, 2
  k_stlbf -15
  k_ldlbf -15
  k_pushl
  k_callx $968B, 2
  k_stlbf -16
  k_ldlbf -16
  k_ldriw $00FF
  k_eq
  k_jumpf ZOUSEN_L_BA03
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C931
  k_callx RF_4B44, 2
  k_call $9662
  k_ldli 0
  k_return
ZOUSEN_L_BA03:
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx ZOUSEN_F_B22A, 2
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_C947
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_jumpt ZOUSEN_L_BA2F
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C95A
  k_callx RF_4B44, 2
ZOUSEN_L_BA2F:
  k_ldl -2
  k_jumpf ZOUSEN_L_B9D4
  k_ldli 0
  k_stl -2
  k_ldla g_player_gold
  k_long $26
  k_longd $19, $000088B8
  k_long $2B
  k_jumpf ZOUSEN_L_BAAC
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_deref
  k_ldriw $0352
  k_gt
  k_jumpf ZOUSEN_L_BAAC
  k_pushib 100
  k_callx rand, 2
  k_jumpt ZOUSEN_L_BAAC
  k_pushiw $03E8
  k_callx rand, 2
  k_addliw $7530
  k_stl -20
  k_call RF_60B2
  k_push -20
  k_pushiw ZOUSEN_D_C96E
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_BA9D
  k_ldl -20
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9BD
  k_add
  k_pushl
  k_ldli 7
  k_popstoreb
  k_call $9662
  k_ldli 1
  k_return
ZOUSEN_L_BA9D:
  k_call RF_60B2
  k_pushiw ZOUSEN_D_C9A6
  k_callx RF_4B44, 2
  k_call $9662
  k_ldli 0
  k_return
ZOUSEN_L_BAAC:
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -22
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_deref
  k_ldriw $00AA
  k_sdiv
  k_inc
  k_stlbf -15
ZOUSEN_L_BAD0:
  k_ldlbf -17
  k_ldriw $00FF
  k_ne
  k_jumpf ZOUSEN_L_BBE9
  k_ldl -2
  k_jumpt ZOUSEN_L_BBE9
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldl -22
  k_addlib 23
  k_derefb
  k_stlbf -18
  k_ldlbf -18
  k_jumpf ZOUSEN_L_BB3F
  k_pushi 1
  k_pushiw ZOUSEN_D_C9D8
  k_callx RF_2FB9, 4
  k_ldlbf -18
  k_ldri 2
  k_eq
  k_jumpf ZOUSEN_L_BB0C
  k_pushi 1
  k_pushiw ZOUSEN_D_C9E6
  k_callx RF_2FB9, 4
ZOUSEN_L_BB0C:
  k_ldlbf -18
  k_ldri 7
  k_ne
  k_jumpf ZOUSEN_L_BB2F
  k_ldlbf -18
  k_dec
  k_stlbf -18
  k_ldlbf -18
  k_shl1
  k_ldriw ZOUSEN_D_C8AB
  k_add
  k_deref
  k_pushl
  k_pushiw ZOUSEN_D_C9E8
  k_callx RF_3619, 4
  k_jump ZOUSEN_L_BB37
ZOUSEN_L_BB2F:
  k_pushi 1
  k_pushiw ZOUSEN_D_C9EC
  k_callx RF_2FB9, 4
ZOUSEN_L_BB37:
  k_pushi 1
  k_pushiw ZOUSEN_D_C9F3
  k_callx RF_2FB9, 4
ZOUSEN_L_BB3F:
  k_pushi 1
  k_pushiw ZOUSEN_D_CA01
  k_callx RF_2FB9, 4
  k_pushi 15
  k_pushi 10
  k_pushi 6
  k_pushib 20
  k_callx $97B0, 8
  k_pushi 2
  k_pushiw ZOUSEN_D_C8AB
  k_ldlbf -15
  k_pushl
  k_pushi 6
  k_pushib 20
  k_callx RF_4783, 10
  k_stlbf -17
  k_call RF_6080
  k_call $97BE
  k_ldlbf -17
  k_ldriw $00FF
  k_ne
  k_jumpf ZOUSEN_L_BAD0
  k_ldlbf -17
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_ldriw $03E8
  k_mul
  k_stl -20
  k_pushib 25
  k_pushi 12
  k_callx RF_2F8F, 4
  k_pusha g_player_gold
  k_pushiw ZOUSEN_D_CA17
  k_callx RF_3619, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_push -20
  k_pushiw ZOUSEN_D_CA27
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_BAD0
  k_ldla g_player_gold
  k_ldr -20
  k_ult
  k_jumpf ZOUSEN_L_BBBA
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CA46
  k_callx RF_4B44, 2
  k_jump ZOUSEN_L_BAD0
ZOUSEN_L_BBBA:
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CA60
  k_callx RF_4B44, 2
  k_ldl -20
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9BD
  k_add
  k_pushl
  k_ldlbf -17
  k_inc
  k_popstoreb
  k_call $9662
  k_ldli 1
  k_return
ZOUSEN_L_BBE9:
  k_ldlbf -17
  k_ldriw $00FF
  k_ne
  k_jumpt ZOUSEN_L_B9AE
  k_ldl -2
  k_jumpf ZOUSEN_L_B9AE
  k_call $9662
  k_ldl -2
  k_return
; calls 7
ZOUSEN_F_BBFC:
  k_func 3
  k_ldli 0
  k_stl -2
ZOUSEN_L_BC03:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw ZOUSEN_D_CAB2
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 4
  k_pushiw ZOUSEN_D_CA80
  k_pushi 2
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -3
  k_ldlbf -3
  k_ldriw $00FF
  k_ne
  k_jumpf ZOUSEN_L_BC55
  k_call RF_6080
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_callx $97B0, 8
  k_ldliw $00F0
  k_stlba $EF65
  k_call ZOUSEN_F_B027
  k_ldlbf -3
  k_shl1
  k_ldriw ZOUSEN_D_CA88
  k_add
  k_deref
  k_callptr
  k_stl -2
  k_call ZOUSEN_F_B08B
ZOUSEN_L_BC55:
  k_ldlbf -3
  k_ldriw $00FF
  k_eq
  k_jumpt ZOUSEN_L_BC63
  k_ldl -2
  k_jumpf ZOUSEN_L_BC03
ZOUSEN_L_BC63:
  k_ldl -2
  k_return
; vars: g_fame, g_port, g_ports | calls 2
ZOUSEN_F_BC65:
  k_func 4
  k_ldla g_fame
  k_ldriw $C350
  k_ult
  k_jumpf ZOUSEN_L_BCA1
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -2
  k_ldl -2
  k_deref
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_popr
  k_add
  k_ldri 1
  k_shr
  k_pushl
  k_pushib 100
  k_callx rand, 2
  k_popr
  k_add
  k_ldra g_fame
  k_add
  k_stl -4
  k_pushiw $C350
  k_push -4
  k_callx RL_8962, 4
  k_stla g_fame
ZOUSEN_L_BCA1:
  k_return
; vars: g_port, g_ports | calls 2
ZOUSEN_F_BCA2:
  k_func 4
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -2
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_stl -4
  k_ldl -2
  k_deref
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_popr
  k_add
  k_ldrib 65
  k_udiv
  k_pushl
  k_pushi 3
  k_callx rand, 2
  k_popr
  k_add
  k_ldr -4
  k_add
  k_addli 5
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_pushl
  k_pushib 100
  k_push -4
  k_callx RL_8962, 4
  k_popstoreb
  k_return
; vars: g_player_gold, g_port, g_port_flags | calls 13
ZOUSEN_F_BCE2:
  k_func 14
  k_ldla g_player_gold
  k_jumpt ZOUSEN_L_BCFC
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CAC4
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BCFC:
  k_ldlba g_port
  k_ldri 3
  k_ult
  k_jumpf ZOUSEN_L_BD28
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldlba g_port
  k_ldri 2
  k_eq
  k_jumpf ZOUSEN_L_BD1B
  k_ldliw ZOUSEN_D_CB0C
  k_jump ZOUSEN_L_BD1E
ZOUSEN_L_BD1B:
  k_ldliw ZOUSEN_D_CB13
ZOUSEN_L_BD1E:
  k_pushl
  k_pushiw ZOUSEN_D_CADB
  k_callx RF_3619, 4
  k_ldli 0
  k_return
ZOUSEN_L_BD28:
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BA
  k_add
  k_deref
  k_ldriw $EA60
  k_eq
  k_jumpf ZOUSEN_L_BD4B
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CB18
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BD4B:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CB54
  k_callx RF_4B44, 2
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BA
  k_add
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_stl -2
  k_ldla g_player_gold
  k_ldr -2
  k_ult
  k_jumpf ZOUSEN_L_BD78
  k_ldla g_player_gold
  k_stl -2
ZOUSEN_L_BD78:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_push -2
  k_pusha g_player_gold
  k_pushiw ZOUSEN_D_CB86
  k_callx RF_3619, 6
  k_push -2
  k_pushi 1
  k_pushiw ZOUSEN_D_CBB2
  k_callx RF_3C4E, 6
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf ZOUSEN_L_BDAE
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CBB3
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BDAE:
  k_push -4
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BA
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldl -4
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldl -4
  k_ldriw $03E8
  k_ult
  k_jumpf ZOUSEN_L_BDE4
  k_ldl -4
  k_inc
  k_ldrib 20
  k_udiv
  k_stl -6
  k_pushi 1
  k_pushiw ZOUSEN_D_CBBF
  k_jump ZOUSEN_L_BE08
ZOUSEN_L_BDE4:
  k_ldl -4
  k_ldriw $270F
  k_ugt
  k_jumpf ZOUSEN_L_BDFC
  k_ldl -4
  k_ldriw $03E8
  k_udiv
  k_addliw $0096
  k_stl -6
  k_pushi 1
  k_pushiw ZOUSEN_D_CBD6
  k_jump ZOUSEN_L_BE08
ZOUSEN_L_BDFC:
  k_ldl -4
  k_ldriw $03E8
  k_udiv
  k_addlib 50
  k_stl -6
  k_pushi 1
  k_pushiw ZOUSEN_D_CBF5
ZOUSEN_L_BE08:
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_derefb
  k_stl -14
  k_ldl -14
  k_ldrib 49
  k_ugt
  k_jumpf ZOUSEN_L_BE27
  k_ldl -14
  k_jump ZOUSEN_L_BE2B
ZOUSEN_L_BE27:
  k_ldlib 100
  k_ldr -14
  k_sub
ZOUSEN_L_BE2B:
  k_ldri 7
  k_udiv
  k_pushl
  k_ldl -6
  k_inc
  k_popr
  k_udiv
  k_pushl
  k_pushi 2
  k_callx rand, 2
  k_popr
  k_add
  k_stl -8
  k_ldlba g_port
  k_ldriw g_port_flags
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stl -10
  k_push -8
  k_pushi 0
  k_ldlba g_port
  k_pushl
  k_callx port_owner_update, 6
  k_ldlba g_port
  k_ldriw g_port_flags
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stl -12
  k_ldl -10
  k_ldr -12
  k_ne
  k_jumpf ZOUSEN_L_BE8A
  k_ldl -12
  k_jumpt ZOUSEN_L_BE7B
  k_ldl -10
  k_ldri 2
  k_eq
  k_jumpt ZOUSEN_L_BE71
  k_ldl -10
  k_ldri 3
  k_eq
  k_jumpf ZOUSEN_L_BE7B
ZOUSEN_L_BE71:
  k_ldl -10
  k_dec
  k_pushl
  k_callx ZOUSEN_F_BCA2, 2
  k_jump ZOUSEN_L_BE8A
ZOUSEN_L_BE7B:
  k_ldl -10
  k_ldri 1
  k_ne
  k_jumpf ZOUSEN_L_BE8A
  k_ldl -12
  k_ldri 1
  k_eq
  k_jumpf ZOUSEN_L_BE8A
  k_call ZOUSEN_F_BC65
ZOUSEN_L_BE8A:
  k_ldli 1
  k_return
; vars: g_ships, g_port, g_player_gold | calls 11
ZOUSEN_F_BE8C:
  k_func 16
  k_ldlbf 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stl -10
  k_ldlbf 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_stl -12
  k_ldlbf 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stl -14
  k_ldlbf 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stl -16
  k_ldlbf 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -8
  k_ldl -16
  k_addli 3
  k_pushl
  k_ldli 10
  k_ldr -10
  k_sub
  k_pushl
  k_ldl -14
  k_ldri 10
  k_mul
  k_addlib 100
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_stl -6
  k_pushib 100
  k_push -6
  k_callx RL_8962, 4
  k_stl -6
  k_ldl -8
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -6
  k_popr
  k_sub
  k_pushl
  k_ldl -8
  k_derefb
  k_pushl
  k_ldl -12
  k_ldri 10
  k_mul
  k_pushl
  k_ldl -10
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_popr
  k_sub
  k_pushl
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldli 4
  k_ldr -16
  k_sub
  k_pushl
  k_ldli 10
  k_ldr -14
  k_sub
  k_pushl
  k_ldlib 20
  k_ldr -10
  k_sub
  k_ldrib 100
  k_mul
  k_ldrib 20
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popr
  k_sub
  k_popr
  k_add
  k_popr
  k_add
  k_stl -4
  k_ldl -4
  k_jumpt ZOUSEN_L_BF78
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CC02
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BF78:
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_addli 15
  k_ldr -4
  k_mul
  k_ldri 10
  k_udiv
  k_stl -2
  k_call RF_6080
  k_call RF_60B2
  k_push -2
  k_pushiw ZOUSEN_D_CC27
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_BFB3
  k_ldla g_player_gold
  k_ldr -2
  k_ult
  k_jumpf ZOUSEN_L_BFCA
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw ZOUSEN_D_CC55
  k_callx RF_4B44, 2
ZOUSEN_L_BFB3:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_6080
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw ZOUSEN_D_CC70
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BFCA:
  k_ldl -2
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_push -8
  k_ldl -12
  k_ldri 10
  k_mul
  k_pushl
  k_ldl -10
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_popstoreb
  k_ldl -8
  k_inc
  k_pushl
  k_ldli 4
  k_ldr -16
  k_sub
  k_pushl
  k_ldli 10
  k_ldr -14
  k_sub
  k_pushl
  k_ldlib 20
  k_ldr -10
  k_sub
  k_ldrib 100
  k_mul
  k_ldrib 20
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -8
  k_addli 2
  k_pushl
  k_ldl -16
  k_addli 3
  k_pushl
  k_ldli 10
  k_ldr -10
  k_sub
  k_pushl
  k_ldl -14
  k_ldri 10
  k_mul
  k_addlib 100
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -8
  k_addli 2
  k_derefb
  k_stl -6
  k_ldl -6
  k_ldrib 100
  k_gt
  k_jumpf ZOUSEN_L_C027
  k_ldl -8
  k_addli 2
  k_pushl
  k_ldlib 100
  k_popstoreb
ZOUSEN_L_C027:
  k_ldli 1
  k_return
; calls 9
ZOUSEN_F_C029:
  k_func 10
  k_ldli 0
  k_stl -10
  k_call RF_6080
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_callx $97B0, 8
  k_call ZOUSEN_F_B027
  k_leal -6
  k_pushl
  k_callx ZOUSEN_F_B103, 2
  k_stlbf -8
  k_ldliw $00F0
  k_stlba $EF65
ZOUSEN_L_C051:
  k_call RF_6080
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_CCA2
  k_callx RF_2FB9, 4
  k_ldlbf -8
  k_pushl
  k_callx $968B, 2
  k_stlbf -7
  k_ldlbf -7
  k_ldriw $00FF
  k_ne
  k_jumpf ZOUSEN_L_C090
  k_leal -6
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx ZOUSEN_F_BE8C, 2
  k_swap
  k_ldl -10
  k_or
  k_stl -10
  k_jump ZOUSEN_L_C09A
ZOUSEN_L_C090:
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CCB4
  k_callx RF_4B44, 2
ZOUSEN_L_C09A:
  k_ldlbf -7
  k_ldriw $00FF
  k_ne
  k_jumpt ZOUSEN_L_C051
  k_call RF_6080
  k_call $9662
  k_call ZOUSEN_F_B08B
  k_ldl -10
  k_return
; vars: g_cargo, g_port, g_title, g_player_gold | calls 18
ZOUSEN_F_C0AF:
  k_func 20
  k_leal -7
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stl -20
  k_ldl -20
  k_ldri 1
  k_eq
  k_jumpf ZOUSEN_L_C0D3
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CCCE
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_C0D3:
  k_ldli 0
  k_stl -18
  k_ldliw $00F0
  k_stlba $EF65
  k_call RF_6080
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_callx $97B0, 8
  k_call ZOUSEN_F_B027
  k_leal -7
  k_pushl
  k_callx ZOUSEN_F_B103, 2
  k_stl -20
ZOUSEN_L_C0F4:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_CCE3
  k_callx RF_2FB9, 4
  k_push -20
  k_callx $968B, 2
  k_stlbf -2
  k_ldlbf -2
  k_ldriw $00FF
  k_eq
  k_jumpf ZOUSEN_L_C12B
  k_pushi 2
  k_callx RF_609A, 2
  k_pushiw ZOUSEN_D_CCF6
  k_callx RF_4B44, 2
  k_call $9662
  k_call ZOUSEN_F_B08B
  k_ldli 0
  k_return
ZOUSEN_L_C12B:
  k_leal -7
  k_pushl
  k_ldlbf -2
  k_popr
  k_add
  k_derefb
  k_stlbf -1
  k_call RF_6080
  k_ldlbf -1
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_jumpt ZOUSEN_L_C169
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw ZOUSEN_D_CD0C
  k_jump ZOUSEN_L_C162
ZOUSEN_L_C157:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw ZOUSEN_D_CD29
ZOUSEN_L_C162:
  k_callx RF_4B44, 2
  k_jump ZOUSEN_L_C2E2
ZOUSEN_L_C169:
  k_ldlbf -1
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_jumpt ZOUSEN_L_C157
  k_ldlbf -1
  k_ldrib 24
  k_mul
  k_ldriw $E9AC
  k_add
  k_stl -10
  k_ldl -10
  k_deref
  k_pushl
  k_ldl -10
  k_addli 8
  k_deref
  k_pushl
  k_ldl -10
  k_addli 6
  k_deref
  k_pushl
  k_ldl -10
  k_addli 4
  k_deref
  k_pushl
  k_ldl -10
  k_addli 2
  k_deref
  k_popr
  k_add
  k_popr
  k_add
  k_popr
  k_add
  k_popr
  k_add
  k_jumpf ZOUSEN_L_C1B2
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_CD4F
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_C2E2
ZOUSEN_L_C1B2:
  k_ldlbf -1
  k_pushl
  k_callx ZOUSEN_F_B22A, 2
  k_ldlbf -1
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stlbf -8
  k_ldlbf -1
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_addli 2
  k_pushl
  k_ldlbf -8
  k_ldri 7
  k_mul
  k_ldri 1
  k_shr
  k_inc
  k_popr
  k_mul
  k_ldri 1
  k_shr
  k_ldri 3
  k_mul
  k_stl -14
  k_ldlbf -1
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_inc
  k_pushl
  k_ldlbf -8
  k_ldri 1
  k_shr
  k_ldri 6
  k_mul
  k_inc
  k_popr
  k_mul
  k_stl -16
  k_ldl -14
  k_ldr -16
  k_add
  k_pushl
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_addlib 50
  k_popr
  k_mul
  k_stl -12
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_CD81
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_push -12
  k_pushiw ZOUSEN_D_CDA4
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_C269
  k_ldli 1
  k_jump ZOUSEN_L_C28F
ZOUSEN_L_C269:
  k_ldlba g_title
  k_inc
  k_pushl
  k_callx rand, 2
  k_jumpt ZOUSEN_L_C290
  k_ldl -12
  k_ldri 10
  k_sdiv
  k_swap
  k_ldl -12
  k_add
  k_stl -12
  k_call RF_6080
  k_pushi 1
  k_callx RF_609A, 2
  k_push -12
  k_pushiw ZOUSEN_D_CDC1
  k_callx RF_3619, 4
  k_call RF_3CFF
ZOUSEN_L_C28F:
  k_stl -18
ZOUSEN_L_C290:
  k_ldl -18
  k_jumpf ZOUSEN_L_C2D6
  k_ldl -12
  k_long $25
  k_long $14
  k_ldla g_player_gold
  k_long $26
  k_long $15
  k_long $03
  k_longd $19, $0000EA60
  k_long $0A
  k_jumpf ZOUSEN_L_C2B3
  k_ldliw $EA60
  k_jump ZOUSEN_L_C2B9
ZOUSEN_L_C2B3:
  k_ldl -12
  k_swap
  k_ldla g_player_gold
  k_add
ZOUSEN_L_C2B9:
  k_stla g_player_gold
  k_pushiw $00BF
  k_ldlbf -1
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CDE7
  k_jump ZOUSEN_L_C162
ZOUSEN_L_C2D6:
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CE06
  k_callx RF_4B44, 2
  k_ldli 1
  k_stl -18
ZOUSEN_L_C2E2:
  k_ldl -18
  k_jumpf ZOUSEN_L_C0F4
  k_call ZOUSEN_F_B08B
  k_ldl -18
  k_return
; sys: file_open, file_seek, file_read_7e, file_close
ZOUSEN_F_C2EB:
  k_func 4
  k_ldli 0
  k_stla $F99A
  k_ldliw $0F00
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_ldriw ZOUSEN_D_CE30
  k_add
  k_deref
  k_pushl
  k_pushib 24
  k_callx syscall, 4  ; sys 24 file_open
  k_stl -2
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_push -2
  k_pushib 26
  k_callx syscall, 10  ; sys 26 file_seek
  k_push -4
  k_pushiw $D000
  k_push -2
  k_pushib 27
  k_callx syscall, 8  ; sys 27 file_read_7e
  k_push -2
  k_pushib 25
  k_callx syscall, 4  ; sys 25 file_close
  k_ldlarg 13
  k_jumpf ZOUSEN_L_C331
  k_ldliw $D000
  k_callptr
ZOUSEN_L_C331:
  k_ldla $F99A
  k_return
; vars: g_port, g_ships, g_cargo | calls 16
ZOUSEN_F_C335:
  k_func 25
  k_leal -23
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_ldri 5
  k_eq
  k_jumpf ZOUSEN_L_C357
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CE67
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_C357:
  k_leal -23
  k_pushl
  k_callx RF_4251, 2
  k_jumpt ZOUSEN_L_C371
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CE7D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_C371:
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6B8
  k_add
  k_deref
  k_ldrib 100
  k_lt
  k_jumpf ZOUSEN_L_C393
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw ZOUSEN_D_CE99
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_C393:
  k_ldli 0
  k_stl -2
ZOUSEN_L_C395:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw ZOUSEN_D_CEC1
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 2
  k_pushiw ZOUSEN_D_CE46
  k_pushi 2
  k_pushi 0
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -3
  k_ldlbf -3
  k_ldriw $00FF
  k_ne
  k_jumpf ZOUSEN_L_C3F0
  k_call RF_6080
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_callx $97B0, 8
  k_pushi 1
  k_ldlbf -3
  k_pushl
  k_callx ZOUSEN_F_C2EB, 4
  k_stl -2
  k_ldliw $00F0
  k_stlba $EF65
  k_ldl -2
  k_jumpf ZOUSEN_L_C3ED
  k_ldl -2
  k_ldri 1
  k_ne
  k_jumpf ZOUSEN_L_C3ED
  k_pushi 3
  k_callx RF_3D5C, 2
ZOUSEN_L_C3ED:
  k_call ZOUSEN_F_B08B
ZOUSEN_L_C3F0:
  k_ldlbf -3
  k_ldriw $00FF
  k_eq
  k_jumpt ZOUSEN_L_C3FE
  k_ldl -2
  k_jumpf ZOUSEN_L_C395
ZOUSEN_L_C3FE:
  k_ldl -2
  k_jumpf ZOUSEN_L_C455
  k_ldl -2
  k_ldri 1
  k_ne
  k_jumpf ZOUSEN_L_C455
  k_ldli 5
  k_swap
  k_ldl -2
  k_sub
  k_stl -2
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stln -25
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 0
  k_pushiw ZOUSEN_D_CED5
  k_callx RF_2FB9, 4
  k_ldln -25
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw ZOUSEN_D_CEF1
  k_callx RF_2FB9, 4
  k_ldl -2
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_pushl
  k_call RF_430C
  k_popstoreb
  k_ldli 1
  k_stl -2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
ZOUSEN_L_C455:
  k_ldl -2
  k_return
  .byte $00
ZOUSEN_D_C458:
  .byte "Durability:        %3d/%3d", $00
ZOUSEN_D_C473:
  .byte "Handling:          %3d/%3d", $00
ZOUSEN_D_C48E:
  .byte "Power:             %3d/%3d", $00
ZOUSEN_D_C4A9:
  .byte "Cargo load:        %3d/%3d", $00
ZOUSEN_D_C4C4:
  .byte "Total load:       %4d/%d", $00
ZOUSEN_D_C4DD:
  .byte "Crewmen:           ", $00
ZOUSEN_D_C4F1:
  .byte "%3d/", $00
ZOUSEN_D_C4F6:
  .byte "%3d", $00
ZOUSEN_D_C4FA:
  .byte "Ship: %s", $00
ZOUSEN_D_C503:
  .byte "Navigator:", $00
ZOUSEN_D_C50E:
  .byte "Arms (", $00
ZOUSEN_D_C515:
  .byte "):", $00
ZOUSEN_D_C518:
  .byte "%3d/%3d", $00
ZOUSEN_D_C520:
  .word ZOUSEN_D_C534, ZOUSEN_D_C538, ZOUSEN_D_C53D, ZOUSEN_D_C541, ZOUSEN_D_C549
ZOUSEN_D_C52A:
  .word ZOUSEN_F_C335, ZOUSEN_F_C0AF, ZOUSEN_F_C029, ZOUSEN_F_BBFC, ZOUSEN_F_BCE2
ZOUSEN_D_C534:
  .byte "Buy", $00
ZOUSEN_D_C538:
  .byte "Sell", $00
ZOUSEN_D_C53D:
  .byte "Fix", $00
ZOUSEN_D_C541:
  .byte "Remodel", $00
ZOUSEN_D_C549:
  .byte "Invest", $00
ZOUSEN_D_C550:
  .byte "What brings you here?", $00
ZOUSEN_D_C566:
  .byte "Renaming a ship will", $0A, "cost 10 gold pieces", $00
ZOUSEN_D_C58F:
  .byte "We don't have enough", $0A, "gold", $00
ZOUSEN_D_C5A9:
  .byte "Rename which ship?", $00
ZOUSEN_D_C5BC:
  .byte "Changed yer mind, eh?", $00
ZOUSEN_D_C5D2:
  .byte "Is this the", $0A, "vessel", $00
ZOUSEN_D_C5E5:
  .byte "Then choose another", $0A, "ship", $00
ZOUSEN_D_C5FE:
  .byte "Give 'er a new name,", $0A, "matey", $00
ZOUSEN_D_C619:
  .byte "                      ", $00
ZOUSEN_D_C630:
  .byte $1B
  .byte "C2", $00
ZOUSEN_D_C634:
  .byte "Is this name OK", $00
ZOUSEN_D_C644:
  .word ZOUSEN_D_C64A, ZOUSEN_D_C650, ZOUSEN_D_C659
ZOUSEN_D_C64A:
  .byte "Saker", $00
ZOUSEN_D_C650:
  .byte "Culverin", $00
ZOUSEN_D_C659:
  .byte "Cannon", $00
ZOUSEN_D_C660:
  .byte "Load guns onto which", $0A, "ship?", $00
ZOUSEN_D_C67B:
  .byte "Changed yer mind, eh?", $00
ZOUSEN_D_C691:
  .byte "Is this the", $0A, "ship", $00
ZOUSEN_D_C6A2:
  .byte "What kind of guns?", $00
ZOUSEN_D_C6B5:
  .byte $0A, $00
ZOUSEN_D_C6B7:
  .byte "s cost %d", $0A, $0A, "gold pieces each", $00
ZOUSEN_D_C6D3:
  .byte "Total gold: %5d", $00
ZOUSEN_D_C6E3:
  .byte "Buy how many", $0A, $00
ZOUSEN_D_C6F1:
  .byte "We don't have enough", $0A, "gold", $00
ZOUSEN_D_C70B:
  .byte "All right, I'll load", $0A, "%d more gun%s", $00
ZOUSEN_D_C72E:
  .byte $00
ZOUSEN_D_C72F:
  .byte $3F, $00
ZOUSEN_D_C731:
  .byte $0A, $00
ZOUSEN_D_C733:
  .byte "s are loaded.", $0A, $0A, "I'll buy your old", $0A, $0A, "guns at half price", $1B, "W"
  .byte $00
ZOUSEN_D_C76A:
  .byte $0A, "You're now armed with", $0A, $0A, $00
ZOUSEN_D_C783:
  .byte $73, $00
ZOUSEN_D_C785:
  .byte "We can't load any", $0A, "more guns", $00
ZOUSEN_D_C7A1:
  .byte "Changed yer mind, eh?", $00
ZOUSEN_D_C7B7:
  .byte "Then choose another", $0A, "ship", $00
ZOUSEN_D_C7D0:
  .byte "Rig sails on which", $0A, "ship?", $00
ZOUSEN_D_C7E9:
  .byte "Changed yer mind, eh?", $00
ZOUSEN_D_C7FF:
  .byte "Is this the", $0A, "vessel", $00
ZOUSEN_D_C812:
  .byte "Then choose another", $0A, "ship", $00
ZOUSEN_D_C82B:
  .byte "Total gold: %5d", $00
ZOUSEN_D_C83B:
  .byte "%s-point sails cost", $0A, "%d gold. OK", $00
ZOUSEN_D_C85B:
  .byte $33, $00
ZOUSEN_D_C85D:
  .byte $34, $00
ZOUSEN_D_C85F:
  .byte "We don't have enough", $0A, "gold", $00
ZOUSEN_D_C879:
  .byte "Changed yer mind, eh?", $00
ZOUSEN_D_C88F:
  .byte "All right, sails are", $0A, "rigged", $00
ZOUSEN_D_C8AB:
  .word ZOUSEN_D_C8B7, ZOUSEN_D_C8BC, ZOUSEN_D_C8C2, ZOUSEN_D_C8CA, ZOUSEN_D_C8CF, ZOUSEN_D_C8D6
ZOUSEN_D_C8B7:
  .byte "Swan", $00
ZOUSEN_D_C8BC:
  .byte "Eagle", $00
ZOUSEN_D_C8C2:
  .byte "Unicorn", $00
ZOUSEN_D_C8CA:
  .byte "Lion", $00
ZOUSEN_D_C8CF:
  .byte "Dragon", $00
ZOUSEN_D_C8D6:
  .byte "Neptune", $00
ZOUSEN_D_C8DE:
  .byte "A good sailor always", $0A, "needs a figurehead.", $0A, "Which ship is it for?"
  .byte $00
ZOUSEN_D_C91D:
  .byte "Choose another ship", $00
ZOUSEN_D_C931:
  .byte "Changed yer mind, eh?", $00
ZOUSEN_D_C947:
  .byte "Is this the", $0A, "vessel", $00
ZOUSEN_D_C95A:
  .byte "Then choose another", $00
ZOUSEN_D_C96E:
  .byte "A rare beauty came in", $0A, "today. Will ye buy it", $0A, "for %d gold", $00
ZOUSEN_D_C9A6:
  .byte "Too bad. Ye don't", $0A, "know true value when", $0A, "ye see it!", $00
ZOUSEN_D_C9D8:
  .byte "Now ye have a", $00
ZOUSEN_D_C9E6:
  .byte $6E, $00
ZOUSEN_D_C9E8:
  .byte $0A, "%s", $00
ZOUSEN_D_C9EC:
  .byte $0A, "Venus", $00
ZOUSEN_D_C9F3:
  .byte " figurehead.", $0A, $00
ZOUSEN_D_CA01:
  .byte "Which one do ye want?", $00
ZOUSEN_D_CA17:
  .byte "Total gold: %5d", $00
ZOUSEN_D_CA27:
  .byte "That one costs %d", $0A, "gold. Buy it", $00
ZOUSEN_D_CA46:
  .byte "We don't have enough", $0A, "gold", $00
ZOUSEN_D_CA60:
  .byte "OK, the figurehead", $0A, "is installed", $00
ZOUSEN_D_CA80:
  .word ZOUSEN_D_CA90, ZOUSEN_D_CA95, ZOUSEN_D_CA9B, ZOUSEN_D_CAA6
ZOUSEN_D_CA88:
  .word ZOUSEN_F_B473, ZOUSEN_F_B722, ZOUSEN_F_B9A7, ZOUSEN_F_B357
ZOUSEN_D_CA90:
  .byte "Guns", $00
ZOUSEN_D_CA95:
  .byte "Sails", $00
ZOUSEN_D_CA9B:
  .byte "Figurehead", $00
ZOUSEN_D_CAA6:
  .byte "Rename ship", $00
ZOUSEN_D_CAB2:
  .byte "What do you need?", $00
ZOUSEN_D_CAC4:
  .byte "We don't have any gold", $00
ZOUSEN_D_CADB:
  .byte "You can't invest here", $0A, "without the %s's", $0A, "consent", $1B, "W", $00
ZOUSEN_D_CB0C:
  .byte "Sultan", $00
ZOUSEN_D_CB13:
  .byte "King", $00
ZOUSEN_D_CB18:
  .byte "I appreciate the", $0A, "gesture, but we don't", $0A, "need more investment", $00
ZOUSEN_D_CB54:
  .byte "Something must", $0A, "interest you if", $0A, "you'll invest here", $00
ZOUSEN_D_CB86:
  .byte "We've got %d gold.", $0A, "How much shall we", $0A, "invest", $00
ZOUSEN_D_CBB2:
  .byte $00
ZOUSEN_D_CBB3:
  .byte "Stingy rat!", $00
ZOUSEN_D_CBBF:
  .byte "Hmph! This is", $0A, "nothing!", $00
ZOUSEN_D_CBD6:
  .byte "Thank you, you're verygenerous", $00
ZOUSEN_D_CBF5:
  .byte "Much obliged", $00
ZOUSEN_D_CC02:
  .byte "There's nothing to fixon this vessel", $00
ZOUSEN_D_CC27:
  .byte "It'll cost ye %d", $0A, "gold to put her in", $0A, "shape. OK", $00
ZOUSEN_D_CC55:
  .byte "We don't have enough", $0A, "gold!", $00
ZOUSEN_D_CC70:
  .byte "No deal?  Well then,", $0A, "take a look at anothervessel", $00
ZOUSEN_D_CCA2:
  .byte "Fix which vessel?", $00
ZOUSEN_D_CCB4:
  .byte "What?  Giving up", $0A, "already?", $00
ZOUSEN_D_CCCE:
  .byte "We've only one ship!", $00
ZOUSEN_D_CCE3:
  .byte "Sell which vessel?", $00
ZOUSEN_D_CCF6:
  .byte "Changed yer mind, eh?", $00
ZOUSEN_D_CD0C:
  .byte "That's the captain's", $0A, "vessel!", $00
ZOUSEN_D_CD29:
  .byte "The crew is still", $0A, "bunked on that ship", $00
ZOUSEN_D_CD4F:
  .byte "That ship still has", $0A, "goods in the hold.", $0A, "OK to sell", $00
ZOUSEN_D_CD81:
  .byte "That ship has seen", $0A, "some rough seas", $00
ZOUSEN_D_CDA4:
  .byte "Will ye take %d", $0A, "gold for her", $00
ZOUSEN_D_CDC1:
  .byte "Ye drive a hard", $0A, "bargain. How about", $0A, "%d", $00
ZOUSEN_D_CDE7:
  .byte "It's a deal. Here's", $0A, "your money", $00
ZOUSEN_D_CE06:
  .byte "Then do ye have any", $0A, "other ships to sell?", $00
  .byte $00
ZOUSEN_D_CE30:
  .word ZOUSEN_D_CE34, ZOUSEN_D_CE3D
ZOUSEN_D_CE34:
  .byte "z_tyuuko", $00
ZOUSEN_D_CE3D:
  .byte "z_sinzou", $00
ZOUSEN_D_CE46:
  .word ZOUSEN_D_CE4A, ZOUSEN_D_CE58
ZOUSEN_D_CE4A:
  .byte "Buy used ship", $00
ZOUSEN_D_CE58:
  .byte "Build new ship", $00
ZOUSEN_D_CE67:
  .byte "You can't buy another", $00
ZOUSEN_D_CE7D:
  .byte "There's no man to", $0A, "navigate!", $00
ZOUSEN_D_CE99:
  .byte "Sorry, we don't build", $0A, "ships around here", $00
ZOUSEN_D_CEC1:
  .byte "What interests you?", $00
ZOUSEN_D_CED5:
  .byte $0A, "I'll be navigator of", $0A, $0A, "the ", $00
ZOUSEN_D_CEF1:
  .byte " for now", $00
