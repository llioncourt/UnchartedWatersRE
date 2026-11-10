; overlay s_bj, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_BJ_F_B803
; calls 1
S_BJ_F_B803:
  k_func 0
  k_call S_BJ_F_BB7D
  k_return
; calls 1
S_BJ_F_B80C:
  k_func 11
  k_ldli 0
  k_stln -11
  k_stln -9
  k_jump S_BJ_L_B859
S_BJ_L_B819:
  k_ldln -11
  k_ldri 1
  k_ne
  k_jumpf S_BJ_L_B854
  k_ldln -11
  k_ldri 3
  k_ne
  k_jumpf S_BJ_L_B854
  k_ldln -11
  k_ldri 5
  k_ne
  k_jumpf S_BJ_L_B854
  k_ldln -11
  k_ldriw S_BJ_D_C467
  k_add
  k_derefb
  k_pushl
  k_ldlba $EF68
  k_popr
  k_and
  k_jumpf S_BJ_L_B854
  k_leal -6
  k_pushl
  k_ldln -9
  k_popr
  k_add
  k_pushl
  k_ldln -11
  k_ldriw S_BJ_D_C46D
  k_add
  k_derefb
  k_popstoreb
  k_ldln -9
  k_inc
  k_stln -9
S_BJ_L_B854:
  k_ldln -11
  k_inc
  k_stln -11
S_BJ_L_B859:
  k_ldln -11
  k_ldri 6
  k_ult
  k_jumpt S_BJ_L_B819
  k_leal -6
  k_pushl
  k_pushn -9
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_derefb
  k_stlbf -7
  k_ldlbf -7
  k_return
; calls 1
S_BJ_F_B874:
  k_func 0
  k_call $B1A4
  k_pushi 1
  k_ldlbf 11
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RF_4E29, 8
  k_ldlib 32
  k_stlba $F294
  k_pushi 1
  k_pushi 0
  k_pushib 16
  k_pushi 5
  k_callx RF_4E29, 8
  k_return
S_BJ_F_B896:
  k_func 1
  k_ldlbf 11
  k_ldri 4
  k_shr
  k_ldri 15
  k_and
  k_stlbf -1
  k_ldlbf -1
  k_pushl
  k_ldlbf 11
  k_ldri 15
  k_and
  k_pushl
  k_ldlbf 15
  k_pushl
  k_ldlbf 13
  k_pushl
  k_callx $B1C3, 8
  k_return
S_BJ_F_B8BC:
  k_func 0
  k_ldlbf 11
  k_ldri 15
  k_and
  k_stlbf 11
  k_ldlbf 11
  k_jumpt S_BJ_L_B8D1
  k_ldli 0
  k_return
S_BJ_L_B8D1:
  k_ldli 1
  k_return
S_BJ_F_B8D3:
  k_func 1
  k_ldlbf 11
  k_ldri 15
  k_and
  k_stlbf 11
  k_ldlbf 11
  k_pushl
  k_ldli 9
  k_popr
  k_ult
  k_jumpf S_BJ_L_B8F2
  k_ldlbf 11
  k_ldri 13
  k_ult
  k_jumpt S_BJ_L_B8F8
S_BJ_L_B8F2:
  k_ldlbf 11
  k_jumpt S_BJ_L_B8FC
S_BJ_L_B8F8:
  k_ldli 0
  k_jump S_BJ_L_B8FD
S_BJ_L_B8FC:
  k_ldli 1
S_BJ_L_B8FD:
  k_stlbf -1
  k_ldlbf -1
  k_return
S_BJ_F_B904:
  k_func 1
  k_ldlbf 11
  k_pushl
  k_ldli 0
  k_popr
  k_ult
  k_jumpf S_BJ_L_B922
  k_ldlbf 11
  k_ldri 10
  k_ult
  k_jumpf S_BJ_L_B922
  k_ldlbf 11
  k_inc
  k_jump S_BJ_L_B958
S_BJ_L_B922:
  k_ldlbf 11
  k_pushl
  k_ldli 9
  k_popr
  k_ult
  k_jumpf S_BJ_L_B938
  k_ldlbf 11
  k_ldri 13
  k_ult
  k_jumpf S_BJ_L_B938
  k_ldli 10
  k_jump S_BJ_L_B958
S_BJ_L_B938:
  k_ldlbf 11
  k_jumpt S_BJ_L_B95B
  k_ldli 11
  k_stlbf 11
  k_ldlbf 13
  k_pushl
  k_ldlbf 11
  k_popr
  k_add
  k_ldrib 21
  k_ule
  k_jumpf S_BJ_L_B957
  k_ldlbf 11
  k_jump S_BJ_L_B958
S_BJ_L_B957:
  k_ldli 1
S_BJ_L_B958:
  k_stlbf -1
S_BJ_L_B95B:
  k_ldlbf -1
  k_return
S_BJ_F_B95F:
  k_func 1
  k_ldlbf 11
  k_pushl
  k_ldli 0
  k_popr
  k_ult
  k_jumpf S_BJ_L_B97D
  k_ldlbf 11
  k_ldri 10
  k_ult
  k_jumpf S_BJ_L_B97D
  k_ldlbf 11
  k_inc
  k_jump S_BJ_L_B990
S_BJ_L_B97D:
  k_ldlbf 11
  k_pushl
  k_ldli 9
  k_popr
  k_ult
  k_jumpf S_BJ_L_B993
  k_ldlbf 11
  k_ldri 13
  k_ult
  k_jumpf S_BJ_L_B993
  k_ldli 10
S_BJ_L_B990:
  k_stlbf -1
S_BJ_L_B993:
  k_ldlbf -1
  k_return
S_BJ_F_B997:
  k_func 7
  k_ldlbf 11
  k_inc
  k_stlbf -7
S_BJ_L_B9A3:
  k_ldlbf -7
  k_dec
  k_stlbf -7
  k_ldli 0
  k_jump S_BJ_L_B9BE
S_BJ_L_B9AE:
  k_leal -4
  k_pushl
  k_ldlbf -5
  k_popr
  k_add
  k_pushl
  k_ldli 11
  k_popstoreb
  k_ldlbf -5
  k_inc
S_BJ_L_B9BE:
  k_stlbf -5
  k_ldlbf -7
  k_pushl
  k_ldlbf -5
  k_popr
  k_ult
  k_jumpt S_BJ_L_B9AE
  k_ldlbf -7
  k_jump S_BJ_L_B9E3
S_BJ_L_B9D3:
  k_leal -4
  k_pushl
  k_ldlbf -5
  k_popr
  k_add
  k_pushl
  k_ldli 1
  k_popstoreb
  k_ldlbf -5
  k_inc
S_BJ_L_B9E3:
  k_stlbf -5
  k_ldlbf 11
  k_pushl
  k_ldlbf -5
  k_popr
  k_ult
  k_jumpt S_BJ_L_B9D3
  k_ldlbf 13
  k_stlbf -6
  k_ldli 0
  k_jump S_BJ_L_BA12
S_BJ_L_B9FC:
  k_leal -4
  k_pushl
  k_ldlbf -5
  k_popr
  k_add
  k_derefb
  k_swap
  k_ldlbf -6
  k_add
  k_stlbf -6
  k_ldlbf -5
  k_inc
S_BJ_L_BA12:
  k_stlbf -5
  k_ldlbf 11
  k_pushl
  k_ldlbf -5
  k_popr
  k_ult
  k_jumpt S_BJ_L_B9FC
  k_ldlbf -6
  k_ldrib 22
  k_ult
  k_jumpt S_BJ_L_BA30
  k_ldlbf -7
  k_jumpt S_BJ_L_B9A3
S_BJ_L_BA30:
  k_ldlbf -6
  k_return
; calls 2
S_BJ_F_BA34:
  k_func 2
  k_ldli 0
  k_stlbf -1
  k_ldli 0
  k_jump S_BJ_L_BA58
S_BJ_L_BA41:
  k_ldlbf -2
  k_ldrarg 11
  k_add
  k_derefb
  k_pushl
  k_callx S_BJ_F_B95F, 2
  k_swap
  k_ldlbf -1
  k_add
  k_stlbf -1
  k_ldlbf -2
  k_inc
S_BJ_L_BA58:
  k_stlbf -2
  k_ldlbf 13
  k_pushl
  k_ldlbf -2
  k_popr
  k_ult
  k_jumpt S_BJ_L_BA41
  k_ldlbf 15
  k_jumpf S_BJ_L_BA7C
  k_ldlbf -1
  k_pushl
  k_ldlbf 15
  k_pushl
  k_callx S_BJ_F_B997, 4
  k_stlbf -1
S_BJ_L_BA7C:
  k_ldlbf -1
  k_return
; calls 2
S_BJ_F_BA80:
  k_func 5
  k_pushi 8
  k_pushi 10
  k_pushi 10
  k_pushi 1
  k_callx $97B0, 8
S_BJ_L_BA8D:
  k_pushi 2
  k_pushiw S_BJ_D_C473
  k_pushi 2
  k_pushi 10
  k_pushi 1
  k_callx RF_4783, 10
  k_stlbf -3
  k_ldlbf -3
  k_ldriw $00FF
  k_eq
  k_jumpt S_BJ_L_BA8D
  k_call $97BE
  k_ldlbf -3
  k_switchn 2
    .word $0000, S_BJ_L_BAB8
    .word $0001, S_BJ_L_BAC8
    .word S_BJ_L_BABC
S_BJ_L_BAB8:
  k_ldli 0
S_BJ_L_BAB9:
  k_stlbf -2
S_BJ_L_BABC:
  k_pushi 1
  k_pushiw S_BJ_D_C481
  k_callx RF_2FB9, 4
  k_ldlbf -2
  k_return
S_BJ_L_BAC8:
  k_ldli 13
  k_jump S_BJ_L_BAB9
S_BJ_F_BACC:
  k_func 2
  k_ldli 0
  k_jump S_BJ_L_BB06
S_BJ_L_BAD5:
  k_ldli 0
  k_jump S_BJ_L_BAF7
S_BJ_L_BAD9:
  k_ldlbf -2
  k_pushl
  k_ldlbf -1
  k_ldri 13
  k_mul
  k_popr
  k_add
  k_ldrarg 11
  k_add
  k_pushl
  k_ldlbf -2
  k_pushl
  k_ldlbf -1
  k_ldri 4
  k_shl
  k_popr
  k_or
  k_popstoreb
  k_ldlbf -2
  k_inc
S_BJ_L_BAF7:
  k_stlbf -2
  k_ldlbf -2
  k_ldri 13
  k_ult
  k_jumpt S_BJ_L_BAD9
  k_ldlbf -1
  k_inc
S_BJ_L_BB06:
  k_stlbf -1
  k_ldlbf -1
  k_ldri 4
  k_ult
  k_jumpt S_BJ_L_BAD5
  k_return
; calls 4
S_BJ_F_BB12:
  k_func 0
  k_pushi 0
  k_pushi 2
  k_pushi 6
  k_pushib 18
  k_pushi 3
  k_pushi 10
  k_callx RF_50D1, 12
  k_pushi 4
  k_pushi 11
  k_callx RF_2F8F, 4
  k_ldli 11
  k_stla $F18C
  k_pushi 1
  k_pushiw S_BJ_D_C485
  k_callx RF_2FB9, 4
  k_pusharg 11
  k_pushiw S_BJ_D_C489
  k_callx RF_3619, 4
  k_ldli 0
  k_stla $F18C
  k_return
; sys: tilemap_write
S_BJ_F_BB41:
  k_func 0
  k_pushi 0
  k_pushi 4
  k_pushib 17
  k_pushi 9
  k_pushi 10
  k_pushi 1
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushi 0
  k_pushi 6
  k_pushib 17
  k_pushib 17
  k_pushi 10
  k_pushi 1
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushiw $2000
  k_pushi 4
  k_pushib 17
  k_pushi 9
  k_pushi 10
  k_pushi 3
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushiw $2000
  k_pushi 6
  k_pushib 17
  k_pushib 17
  k_pushi 10
  k_pushi 3
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_return
; vars: g_player_gold, g_port, g_ports | calls 20
S_BJ_F_BB7D:
  k_func 122
  k_call S_BJ_F_B80C
  k_stlbf -118
  k_ldlbf -118
  k_pushl
  k_callx S_BJ_F_B874, 2
  k_leal -52
  k_pushl
  k_callx S_BJ_F_BACC, 2
  k_ldli 0
  k_stlbf -73
  k_ldli 1
  k_stlbf -74
  k_ldla g_player_gold
  k_stln -115
S_BJ_L_BBA5:
  k_pushi 1
  k_pushiw S_BJ_D_C494
  k_callx RF_2FB9, 4
  k_call S_BJ_F_BB41
  k_ldli 0
  k_stlbf -72
  k_ldli 0
  k_stlbf -79
  k_ldli 0
  k_stlbf -80
  k_pushib 23
  k_pushi 12
  k_callx RF_2F8F, 4
  k_pushn -115
  k_pushiw S_BJ_D_C498
  k_callx RF_3619, 4
  k_ldln -115
  k_ldri 5
  k_ult
  k_jumpf S_BJ_L_BBEE
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C38F
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldln -115
  k_stla g_player_gold
  k_return
S_BJ_L_BBEE:
  k_leal -52
  k_pushl
  k_callx $B104, 2
  k_ldli 0
  k_stln -120
S_BJ_L_BBF9:
  k_ldli 0
  k_stln -122
S_BJ_L_BBFC:
  k_leal -56
  k_pushl
  k_ldln -122
  k_shl1
  k_ldrn -120
  k_add
  k_popr
  k_add
  k_pushl
  k_leal -52
  k_pushl
  k_ldlbf -72
  k_inc
  k_stlbf -72
  k_dec
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldlbf -74
  k_ldrn -122
  k_eq
  k_jumpf S_BJ_L_BCE1
  k_leal -56
  k_pushl
  k_ldln -122
  k_shl1
  k_ldrn -120
  k_add
  k_popr
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_stlbf -81
  k_leal -98
  k_pushl
  k_ldln -120
  k_popr
  k_add
  k_pushl
  k_ldlbf -81
  k_popstoreb
  k_ldln -120
  k_jumpt S_BJ_L_BC54
  k_pusha S_BJ_D_C492
  k_pusha S_BJ_D_C490
  k_ldlbf -54
  k_pushl
  k_callx S_BJ_F_B896, 6
S_BJ_L_BC54:
  k_ldln -120
  k_ldri 1
  k_eq
  k_jumpf S_BJ_L_BD3F
  k_pusha S_BJ_D_C2E6
  k_callx S_BJ_F_BB12, 2
  k_ldln -115
  k_jumpf S_BJ_L_BD3F
S_BJ_L_BC67:
  k_pushi 6
  k_pushi 11
  k_callx RF_2F8F, 4
  k_ldln -115
  k_ldrib 50
  k_ult
  k_jumpf S_BJ_L_BC7A
  k_ldln -115
  k_jump S_BJ_L_BC7C
S_BJ_L_BC7A:
  k_ldlib 50
S_BJ_L_BC7C:
  k_pushl
  k_pushi 5
  k_pushiw S_BJ_D_C4A7
  k_callx RF_3C6D, 6
  k_stln -117
  k_ldln -117
  k_ldrib -1
  k_eq
  k_jumpt S_BJ_L_BC67
  k_ldln -117
  k_ldri 10
  k_ule
  k_jumpf S_BJ_L_BC9C
  k_pusha S_BJ_D_C311
  k_jump S_BJ_L_BCAD
S_BJ_L_BC9C:
  k_ldlib 41
  k_ldrn -117
  k_ule
  k_jumpf S_BJ_L_BCAA
  k_pusha S_BJ_D_C315
  k_jump S_BJ_L_BCAD
S_BJ_L_BCAA:
  k_pusha S_BJ_D_C313
S_BJ_L_BCAD:
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldln -117
  k_swap
  k_ldln -115
  k_sub
  k_stln -115
  k_pushib 21
  k_pushi 11
  k_callx RF_2F8F, 4
  k_pushn -117
  k_pushiw S_BJ_D_C4A8
  k_callx RF_3619, 4
  k_pushib 23
  k_pushi 12
  k_callx RF_2F8F, 4
  k_pushn -115
  k_pushiw S_BJ_D_C4B0
  k_callx RF_3619, 4
  k_jump S_BJ_L_BD3F
S_BJ_L_BCE1:
  k_leal -56
  k_pushl
  k_ldln -122
  k_shl1
  k_ldrn -120
  k_add
  k_popr
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_stlbf -82
  k_leal -113
  k_pushl
  k_ldln -120
  k_popr
  k_add
  k_pushl
  k_ldlbf -82
  k_popstoreb
  k_ldlbf -73
  k_ldrn -122
  k_eq
  k_jumpf S_BJ_L_BD30
  k_ldln -120
  k_ldri 1
  k_eq
  k_jumpf S_BJ_L_BD30
  k_pusha S_BJ_D_C48E
  k_ldln -120
  k_shl1
  k_ldra S_BJ_D_C48C
  k_add
  k_pushl
  k_leal -56
  k_pushl
  k_ldln -122
  k_shl1
  k_ldrn -120
  k_add
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_jump S_BJ_L_BD3F
S_BJ_L_BD30:
  k_pusha S_BJ_D_C48E
  k_ldln -120
  k_shl1
  k_ldra S_BJ_D_C48C
  k_add
  k_pushl
  k_callx $B14C, 4
S_BJ_L_BD3F:
  k_ldln -122
  k_inc
  k_stln -122
  k_ldln -122
  k_ldri 2
  k_ult
  k_jumpt S_BJ_L_BBFC
  k_ldlbf -79
  k_pushl
  k_ldlbf -81
  k_pushl
  k_callx S_BJ_F_B904, 4
  k_swap
  k_ldlbf -79
  k_add
  k_stlbf -79
  k_ldlbf -80
  k_pushl
  k_ldlbf -82
  k_pushl
  k_callx S_BJ_F_B904, 4
  k_swap
  k_ldlbf -80
  k_add
  k_stlbf -80
  k_ldln -120
  k_inc
  k_stln -120
  k_ldln -120
  k_ldri 2
  k_ult
  k_jumpt S_BJ_L_BBF9
  k_ldli 0
  k_stlbf -83
  k_ldli 0
  k_stln -120
S_BJ_L_BD86:
  k_leal -56
  k_pushl
  k_ldln -120
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_BJ_F_B8D3, 2
  k_swap
  k_ldlbf -83
  k_add
  k_stlbf -83
  k_ldln -120
  k_inc
  k_stln -120
  k_ldln -120
  k_ldri 2
  k_ult
  k_jumpt S_BJ_L_BD86
  k_ldlbf -83
  k_jumpt S_BJ_L_BE00
  k_ldlbf -80
  k_ldrib 21
  k_eq
  k_jumpf S_BJ_L_BE00
  k_pusha S_BJ_D_C48E
  k_pusha S_BJ_D_C48C
  k_ldlbf -56
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_pusha S_BJ_D_C40D
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C219
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldln -117
  k_shl1
  k_pushl
  k_ldln -115
  k_popr
  k_ult
  k_jumpf S_BJ_L_BDF7
  k_ldli 0
S_BJ_L_BDF2:
  k_stln -115
  k_jump S_BJ_L_C112
S_BJ_L_BDF7:
  k_ldln -117
  k_swap
  k_ldln -115
  k_sub
  k_jump S_BJ_L_BDF2
S_BJ_L_BE00:
  k_pusha S_BJ_D_C492
  k_ldla S_BJ_D_C490
  k_addli 2
  k_pushl
  k_ldlbf -53
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_ldli 0
  k_stlbf -83
  k_ldli 0
  k_stln -120
S_BJ_L_BE17:
  k_leal -54
  k_pushl
  k_ldln -120
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_BJ_F_B8D3, 2
  k_swap
  k_ldlbf -83
  k_add
  k_stlbf -83
  k_ldln -120
  k_inc
  k_stln -120
  k_ldln -120
  k_ldri 2
  k_ult
  k_jumpt S_BJ_L_BE17
  k_ldlbf -83
  k_jumpt S_BJ_L_BE88
  k_ldlbf -79
  k_ldrib 21
  k_eq
  k_jumpf S_BJ_L_BE88
  k_pusha S_BJ_D_C48E
  k_pusha S_BJ_D_C48C
  k_ldlbf -56
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_pusha S_BJ_D_C40B
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C1E8
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_ldln -117
  k_ldri 3
  k_mul
  k_stln -117
  k_pushiw $EA60
  k_ldln -115
  k_ldrn -117
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_jump S_BJ_L_BDF2
S_BJ_L_BE88:
  k_ldli 2
  k_stln -120
  k_ldli 0
  k_stlbf -78
S_BJ_L_BE8F:
  k_pusha S_BJ_D_C2E8
  k_callx S_BJ_F_BB12, 2
  k_call S_BJ_F_BA80
  k_stlbf -83
  k_ldlbf -83
  k_jumpt S_BJ_L_BF52
  k_ldlbf -78
  k_ldri 5
  k_ult
  k_jumpf S_BJ_L_BF3F
  k_leal -52
  k_pushl
  k_ldlbf -72
  k_inc
  k_stlbf -72
  k_dec
  k_popr
  k_add
  k_derefb
  k_stlbf -81
  k_leal -98
  k_pushl
  k_ldln -120
  k_popr
  k_add
  k_pushl
  k_ldlbf -81
  k_ldri 15
  k_and
  k_popstoreb
  k_pusha S_BJ_D_C492
  k_ldln -120
  k_shl1
  k_ldra S_BJ_D_C490
  k_add
  k_pushl
  k_ldlbf -81
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_ldln -120
  k_inc
  k_stln -120
  k_ldli 0
  k_stlbf -75
  k_ldli 0
  k_jump S_BJ_L_BF1A
S_BJ_L_BEEB:
  k_leal -98
  k_pushl
  k_ldln -122
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_BJ_F_B8BC, 2
  k_jumpf S_BJ_L_BF17
  k_leal -71
  k_pushl
  k_ldlbf -75
  k_popr
  k_add
  k_pushl
  k_leal -98
  k_pushl
  k_ldln -122
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldlbf -75
  k_inc
  k_stlbf -75
S_BJ_L_BF17:
  k_ldln -122
  k_inc
S_BJ_L_BF1A:
  k_stln -122
  k_ldln -122
  k_ldrn -120
  k_ult
  k_jumpt S_BJ_L_BEEB
  k_ldlbf -75
  k_pushl
  k_ldln -120
  k_popr
  k_sub
  k_pushl
  k_ldlbf -75
  k_pushl
  k_leal -71
  k_pushl
  k_callx S_BJ_F_BA34, 6
  k_stlbf -79
  k_jump S_BJ_L_BF4B
S_BJ_L_BF3F:
  k_pusha S_BJ_D_C432
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
S_BJ_L_BF4B:
  k_ldlbf -78
  k_inc
  k_stlbf -78
S_BJ_L_BF52:
  k_ldlbf -79
  k_ldrib 21
  k_ugt
  k_jumpt S_BJ_L_BF6D
  k_ldlbf -83
  k_ldri 13
  k_eq
  k_jumpt S_BJ_L_BF6D
  k_ldlbf -78
  k_pushl
  k_ldli 5
  k_popr
  k_ult
  k_jumpf S_BJ_L_BE8F
S_BJ_L_BF6D:
  k_ldlbf -79
  k_ldrib 21
  k_ule
  k_jumpf S_BJ_L_C03B
  k_ldlbf -80
  k_ldrib 16
  k_ult
  k_jumpf S_BJ_L_C03B
  k_ldli 2
  k_stln -120
  k_ldli 0
  k_stlbf -78
S_BJ_L_BF86:
  k_ldlbf -78
  k_ldri 5
  k_ult
  k_jumpf S_BJ_L_C020
  k_leal -52
  k_pushl
  k_ldlbf -72
  k_inc
  k_stlbf -72
  k_dec
  k_popr
  k_add
  k_derefb
  k_stlbf -82
  k_leal -113
  k_pushl
  k_ldln -120
  k_popr
  k_add
  k_pushl
  k_ldlbf -82
  k_ldri 15
  k_and
  k_popstoreb
  k_pusha S_BJ_D_C48E
  k_ldln -120
  k_shl1
  k_ldra S_BJ_D_C48C
  k_add
  k_pushl
  k_ldlbf -82
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_ldln -120
  k_inc
  k_stln -120
  k_ldli 0
  k_stlbf -75
  k_ldli 0
  k_jump S_BJ_L_BFFE
S_BJ_L_BFCF:
  k_leal -113
  k_pushl
  k_ldln -122
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_BJ_F_B8BC, 2
  k_jumpf S_BJ_L_BFFB
  k_leal -71
  k_pushl
  k_ldlbf -75
  k_popr
  k_add
  k_pushl
  k_leal -113
  k_pushl
  k_ldln -122
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldlbf -75
  k_inc
  k_stlbf -75
S_BJ_L_BFFB:
  k_ldln -122
  k_inc
S_BJ_L_BFFE:
  k_stln -122
  k_ldln -122
  k_ldrn -120
  k_ult
  k_jumpt S_BJ_L_BFCF
  k_ldlbf -75
  k_pushl
  k_ldln -120
  k_popr
  k_sub
  k_pushl
  k_ldlbf -75
  k_pushl
  k_leal -71
  k_pushl
  k_callx S_BJ_F_BA34, 6
  k_stlbf -80
S_BJ_L_C020:
  k_ldlbf -78
  k_inc
  k_stlbf -78
  k_ldlbf -80
  k_ldrib 16
  k_ult
  k_jumpf S_BJ_L_C062
  k_ldlbf -78
  k_ldri 5
  k_ult
  k_jumpt S_BJ_L_BF86
  k_jump S_BJ_L_C062
S_BJ_L_C03B:
  k_ldlbf -79
  k_ldrib 21
  k_ule
  k_jumpf S_BJ_L_C062
  k_ldlbf -80
  k_ldrib 16
  k_ugt
  k_jumpf S_BJ_L_C062
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C1B4
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
S_BJ_L_C062:
  k_pusha S_BJ_D_C48E
  k_pusha S_BJ_D_C48C
  k_ldlbf -56
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_pushib 18
  k_pushib 25
  k_callx RF_2F8F, 4
  k_ldlbf -79
  k_pushl
  k_pushiw S_BJ_D_C4BF
  k_callx RF_3619, 4
  k_pushi 10
  k_pushib 25
  k_callx RF_2F8F, 4
  k_ldlbf -80
  k_pushl
  k_pushiw S_BJ_D_C4C3
  k_callx RF_3619, 4
  k_ldlbf -80
  k_ldrib 21
  k_ule
  k_jumpf S_BJ_L_C0AA
  k_ldlbf -80
  k_pushl
  k_ldlbf -79
  k_popr
  k_ult
  k_jumpt S_BJ_L_C0B3
S_BJ_L_C0AA:
  k_ldlbf -79
  k_ldrib 21
  k_ugt
  k_jumpf S_BJ_L_C0E1
S_BJ_L_C0B3:
  k_ldlbf -79
  k_ldrib 21
  k_ugt
  k_jumpf S_BJ_L_C0C8
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C2BE
  k_jump S_BJ_L_C0D1
S_BJ_L_C0C8:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C287
S_BJ_L_C0D1:
  k_add
  k_deref
  k_pushl
  k_jump S_BJ_L_C0DA
S_BJ_L_C0D7:
  k_pusha S_BJ_D_C430
S_BJ_L_C0DA:
  k_callx S_BJ_F_BB12, 2
  k_jump S_BJ_L_C10D
S_BJ_L_C0E1:
  k_ldlbf -80
  k_pushl
  k_ldlbf -79
  k_popr
  k_eq
  k_jumpt S_BJ_L_C0D7
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C248
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushiw $EA60
  k_ldln -117
  k_shl1
  k_ldrn -115
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stln -115
S_BJ_L_C10D:
  k_pushi 1
  k_callx RF_3DDF, 2
S_BJ_L_C112:
  k_pushib 50
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_deref
  k_ldri 2
  k_sdiv
  k_popr
  k_add
  k_ldra g_player_gold
  k_add
  k_ldrn -115
  k_ule
  k_jumpt S_BJ_L_C13A
  k_ldln -115
  k_ldriw $EA60
  k_eq
  k_jumpf S_BJ_L_C15C
S_BJ_L_C13A:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C3D0
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 2
  k_callx RF_3DDF, 2
  k_ldlba $EA88
  k_inc
  k_stlba $EA88
S_BJ_L_C156:
  k_ldln -115
  k_stla g_player_gold
  k_return
S_BJ_L_C15C:
  k_pushi 6
  k_pushi 10
  k_pushi 10
  k_pushi 1
  k_callx $97B0, 8
  k_pushi 0
  k_pushi 0
  k_pushi 6
  k_pushi 10
  k_pushi 10
  k_pushi 1
  k_callx RF_4F65, 12
  k_ldli 2
  k_stla $F18C
  k_pushi 11
  k_pushi 2
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw S_BJ_D_C4C7
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stlbf -83
  k_ldli 0
  k_stla $F18C
  k_pushi 1
  k_pushiw S_BJ_D_C4D1
  k_callx RF_2FB9, 4
  k_call $97BE
  k_ldlbf -83
  k_jumpt S_BJ_L_BBA5
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_BJ_D_C355
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_jump S_BJ_L_C156
  .byte $00
S_BJ_D_C1B4:
  .word S_BJ_D_C1B8, S_BJ_D_C1D0
S_BJ_D_C1B8:
  .byte "All right, let's", $0A, "gamble", $00
S_BJ_D_C1D0:
  .byte "Let's see what", $0A, "I've got", $00
S_BJ_D_C1E8:
  .word S_BJ_D_C1EC, S_BJ_D_C204
S_BJ_D_C1EC:
  .byte "So ye've played", $0A, "before?", $00
S_BJ_D_C204:
  .byte "I'm no match", $0A, "for you", $00
S_BJ_D_C219:
  .word S_BJ_D_C21D, S_BJ_D_C239
S_BJ_D_C21D:
  .byte "I'll take twice", $0A, "the stakes!", $00
S_BJ_D_C239:
  .byte "Too bad, matey", $00
S_BJ_D_C248:
  .word S_BJ_D_C24C, S_BJ_D_C26C
S_BJ_D_C24C:
  .byte "I have to let ye", $0A, "win sometimes!", $00
S_BJ_D_C26C:
  .byte "Don't get", $0A, "carried away now", $00
S_BJ_D_C287:
  .word S_BJ_D_C28B, S_BJ_D_C2A8
S_BJ_D_C28B:
  .byte "Yer not as good", $0A, "as ye think!", $00
S_BJ_D_C2A8:
  .byte "This is no", $0A, "challenge!", $00
S_BJ_D_C2BE:
  .word S_BJ_D_C2C2, S_BJ_D_C2D7
S_BJ_D_C2C2:
  .byte "Yer a greedy", $0A, "rascal!", $00
S_BJ_D_C2D7:
  .byte "Foolish rogue!", $00
S_BJ_D_C2E6:
  .word S_BJ_D_C2EA
S_BJ_D_C2E8:
  .word S_BJ_D_C2F8
S_BJ_D_C2EA:
  .byte "Place yer bet", $00
S_BJ_D_C2F8:
  .byte "Do ye want", $0A, "another card?", $00
S_BJ_D_C311:
  .word S_BJ_D_C317
S_BJ_D_C313:
  .word S_BJ_D_C32F
S_BJ_D_C315:
  .byte $39, $C3
S_BJ_D_C317:
  .byte "Hmm. Scared,", $0A, "aren't ye?", $00
S_BJ_D_C32F:
  .byte "I'll deal", $00
  .byte "Don't take", $0A, "advantage of me!", $00
S_BJ_D_C355:
  .word S_BJ_D_C359, S_BJ_D_C373
S_BJ_D_C359:
  .byte "What? We've just", $0A, "started!", $00
S_BJ_D_C373:
  .byte "Come again any", $0A, "time, matey!", $00
S_BJ_D_C38F:
  .word S_BJ_D_C393, S_BJ_D_C3AE
S_BJ_D_C393:
  .byte "Ye've emptied", $0A, "yer pockets!", $00
S_BJ_D_C3AE:
  .byte "Better earn more", $0A, "gold by trading!", $00
S_BJ_D_C3D0:
  .word S_BJ_D_C3D4, S_BJ_D_C3F1
S_BJ_D_C3D4:
  .byte "Please excuse me", $0A, "for the day", $00
S_BJ_D_C3F1:
  .byte "The game's over", $0A, "for today", $00
S_BJ_D_C40B:
  .word S_BJ_D_C40F
S_BJ_D_C40D:
  .word S_BJ_D_C424
S_BJ_D_C40F:
  .byte "Ye 'ave Black", $0A, "Jack?!", $00
S_BJ_D_C424:
  .byte "Black Jack!", $00
S_BJ_D_C430:
  .word S_BJ_D_C434
S_BJ_D_C432:
  .word S_BJ_D_C448
S_BJ_D_C434:
  .byte "Too bad, it's", $0A, "a tie", $00
S_BJ_D_C448:
  .byte "You can't draw", $0A, "more than those", $00
S_BJ_D_C467:
  .byte $02, $04, $10, $20, $40, $80
S_BJ_D_C46D:
  .byte $04, $00, $06, $00, $05, $00
S_BJ_D_C473:
  .word S_BJ_D_C477, S_BJ_D_C47B
S_BJ_D_C477:
  .byte "Hit", $00
S_BJ_D_C47B:
  .byte "Stand", $00
S_BJ_D_C481:
  .byte $1B
  .byte "C2", $00
S_BJ_D_C485:
  .byte $1B
  .byte "C2", $00
S_BJ_D_C489:
  .byte "%s", $00
S_BJ_D_C48C:
  .byte $0B, $00
S_BJ_D_C48E:
  .byte $0A, $00
S_BJ_D_C490:
  .byte $0B, $00
S_BJ_D_C492:
  .byte $12, $00
S_BJ_D_C494:
  .byte $1B
  .byte "C2", $00
S_BJ_D_C498:
  .byte "Total gold:%5d", $00
S_BJ_D_C4A7:
  .byte $00
S_BJ_D_C4A8:
  .byte "Bet: %d", $00
S_BJ_D_C4B0:
  .byte "Total gold:%5d", $00
S_BJ_D_C4BF:
  .byte "%2d", $00
S_BJ_D_C4C3:
  .byte "%2d", $00
S_BJ_D_C4C7:
  .byte "Continue", $0A, $00
S_BJ_D_C4D1:
  .byte $1B
  .byte "C2", $00
  .byte $00
