; overlay s_bj, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_BJ_F_B803
S_BJ_F_B803:
  k_func 0
  k_call S_BJ_F_BB7D
  k_return
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
  k_ldriw $C467
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
  k_ldriw $C46D
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
S_BJ_F_BA80:
  k_func 5
  k_pushi 8
  k_pushi 10
  k_pushi 10
  k_pushi 1
  k_callx $97B0, 8
S_BJ_L_BA8D:
  k_pushi 2
  k_pushiw $C473
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
  k_pushiw $C481
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
  k_pushiw $C485
  k_callx RF_2FB9, 4
  k_pusharg 11
  k_pushiw $C489
  k_callx RF_3619, 4
  k_ldli 0
  k_stla $F18C
  k_return
S_BJ_F_BB41:
  k_func 0
  k_pushi 0
  k_pushi 4
  k_pushib 17
  k_pushi 9
  k_pushi 10
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 6
  k_pushib 17
  k_pushib 17
  k_pushi 10
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 4
  k_pushib 17
  k_pushi 9
  k_pushi 10
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 6
  k_pushib 17
  k_pushib 17
  k_pushi 10
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_return
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
  k_ldla $E56D
  k_stln -115
S_BJ_L_BBA5:
  k_pushi 1
  k_pushiw $C494
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
  k_pushiw $C498
  k_callx RF_3619, 4
  k_ldln -115
  k_ldri 5
  k_ult
  k_jumpf S_BJ_L_BBEE
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $C38F
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldln -115
  k_stla $E56D
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
  k_pusha $C492
  k_pusha $C490
  k_ldlbf -54
  k_pushl
  k_callx S_BJ_F_B896, 6
S_BJ_L_BC54:
  k_ldln -120
  k_ldri 1
  k_eq
  k_jumpf S_BJ_L_BD3F
  k_pusha $C2E6
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
  k_pushiw $C4A7
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
  k_pusha $C311
  k_jump S_BJ_L_BCAD
S_BJ_L_BC9C:
  k_ldlib 41
  k_ldrn -117
  k_ule
  k_jumpf S_BJ_L_BCAA
  k_pusha $C315
  k_jump S_BJ_L_BCAD
S_BJ_L_BCAA:
  k_pusha $C313
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
  k_pushiw $C4A8
  k_callx RF_3619, 4
  k_pushib 23
  k_pushi 12
  k_callx RF_2F8F, 4
  k_pushn -115
  k_pushiw $C4B0
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
  k_pusha $C48E
  k_ldln -120
  k_shl1
  k_ldra $C48C
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
  k_pusha $C48E
  k_ldln -120
  k_shl1
  k_ldra $C48C
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
  k_pusha $C48E
  k_pusha $C48C
  k_ldlbf -56
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_pusha $C40D
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $C219
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
  k_pusha $C492
  k_ldla $C490
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
  k_pusha $C48E
  k_pusha $C48C
  k_ldlbf -56
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_pusha $C40B
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $C1E8
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
  k_pusha $C2E8
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
  k_pusha $C492
  k_ldln -120
  k_shl1
  k_ldra $C490
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
  k_pusha $C432
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
  k_pusha $C48E
  k_ldln -120
  k_shl1
  k_ldra $C48C
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
  k_ldriw $C1B4
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
S_BJ_L_C062:
  k_pusha $C48E
  k_pusha $C48C
  k_ldlbf -56
  k_pushl
  k_callx S_BJ_F_B896, 6
  k_pushib 18
  k_pushib 25
  k_callx RF_2F8F, 4
  k_ldlbf -79
  k_pushl
  k_pushiw $C4BF
  k_callx RF_3619, 4
  k_pushi 10
  k_pushib 25
  k_callx RF_2F8F, 4
  k_ldlbf -80
  k_pushl
  k_pushiw $C4C3
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
  k_ldriw $C2BE
  k_jump S_BJ_L_C0D1
S_BJ_L_C0C8:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $C287
S_BJ_L_C0D1:
  k_add
  k_deref
  k_pushl
  k_jump S_BJ_L_C0DA
S_BJ_L_C0D7:
  k_pusha $C430
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
  k_ldriw $C248
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
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_ldri 2
  k_sdiv
  k_popr
  k_add
  k_ldra $E56D
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
  k_ldriw $C3D0
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
  k_stla $E56D
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
  k_pushiw $C4C7
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stlbf -83
  k_ldli 0
  k_stla $F18C
  k_pushi 1
  k_pushiw $C4D1
  k_callx RF_2FB9, 4
  k_call $97BE
  k_ldlbf -83
  k_jumpt S_BJ_L_BBA5
  k_pushi 2
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $C355
  k_add
  k_deref
  k_pushl
  k_callx S_BJ_F_BB12, 2
  k_pushi 1
  k_callx RF_3DDF, 2
  k_jump S_BJ_L_C156
  .byte $00, $B8, $C1, $D0, $C1
  .byte "All right, let's"
  .byte $0A
  .byte "gamble"
  .byte $00
  .byte "Let's see what"
  .byte $0A
  .byte "I've got"
  .byte $00, $EC, $C1, $04, $C2
  .byte "So ye've played"
  .byte $0A
  .byte "before?"
  .byte $00
  .byte "I'm no match"
  .byte $0A
  .byte "for you"
  .byte $00, $1D, $C2, $39, $C2
  .byte "I'll take twice"
  .byte $0A
  .byte "the stakes!"
  .byte $00
  .byte "Too bad, matey"
  .byte $00, $4C, $C2, $6C, $C2
  .byte "I have to let ye"
  .byte $0A
  .byte "win sometimes!"
  .byte $00
  .byte "Don't get"
  .byte $0A
  .byte "carried away now"
  .byte $00, $8B, $C2, $A8, $C2
  .byte "Yer not as good"
  .byte $0A
  .byte "as ye think!"
  .byte $00
  .byte "This is no"
  .byte $0A
  .byte "challenge!"
  .byte $00, $C2, $C2, $D7, $C2
  .byte "Yer a greedy"
  .byte $0A
  .byte "rascal!"
  .byte $00
  .byte "Foolish rogue!"
  .byte $00, $EA, $C2, $F8, $C2
  .byte "Place yer bet"
  .byte $00
  .byte "Do ye want"
  .byte $0A
  .byte "another card?"
  .byte $00, $17, $C3, $2F, $C3, $39, $C3
  .byte "Hmm. Scared,"
  .byte $0A
  .byte "aren't ye?"
  .byte $00
  .byte "I'll deal"
  .byte $00
  .byte "Don't take"
  .byte $0A
  .byte "advantage of me!"
  .byte $00, $59, $C3, $73, $C3
  .byte "What? We've just"
  .byte $0A
  .byte "started!"
  .byte $00
  .byte "Come again any"
  .byte $0A
  .byte "time, matey!"
  .byte $00, $93, $C3, $AE, $C3
  .byte "Ye've emptied"
  .byte $0A
  .byte "yer pockets!"
  .byte $00
  .byte "Better earn more"
  .byte $0A
  .byte "gold by trading!"
  .byte $00, $D4, $C3, $F1, $C3
  .byte "Please excuse me"
  .byte $0A
  .byte "for the day"
  .byte $00
  .byte "The game's over"
  .byte $0A
  .byte "for today"
  .byte $00, $0F, $C4, $24, $C4
  .byte "Ye 'ave Black"
  .byte $0A
  .byte "Jack?!"
  .byte $00
  .byte "Black Jack!"
  .byte $00, $34, $C4, $48, $C4
  .byte "Too bad, it's"
  .byte $0A
  .byte "a tie"
  .byte $00
  .byte "You can't draw"
  .byte $0A
  .byte "more than those"
  .byte $00, $02, $04, $10, $20, $40, $80, $04, $00, $06, $00, $05, $00, $77, $C4, $7B
  .byte $C4, $48, $69, $74, $00
  .byte "Stand"
  .byte $00, $1B, $43, $32, $00, $1B, $43, $32, $00, $25, $73, $00, $0B, $00, $0A, $00
  .byte $0B, $00, $12, $00, $1B, $43, $32, $00
  .byte "Total gold:%5d"
  .byte $00, $00
  .byte "Bet: %d"
  .byte $00
  .byte "Total gold:%5d"
  .byte $00, $25, $32, $64, $00, $25, $32, $64, $00
  .byte "Continue"
  .byte $0A, $00, $1B, $43, $32, $00, $00
