; overlay s_pk, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_PK_F_B803
S_PK_F_B803:
  k_func 0
  k_call S_PK_F_CBAD
  k_return
S_PK_F_B80C:
  k_func 0
  k_pushi 0
  k_pushi 3
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_return
S_PK_F_B81D:
  k_func 4
  k_ldli 0
  k_stl -2
S_PK_L_B824:
  k_ldli 0
  k_stl -4
S_PK_L_B826:
  k_ldl -2
  k_ldri 13
  k_mul
  k_ldrarg 11
  k_add
  k_ldr -4
  k_add
  k_pushl
  k_ldl -2
  k_pushl
  k_ldl -4
  k_ldri 4
  k_shl
  k_popr
  k_or
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 13
  k_ult
  k_jumpt S_PK_L_B826
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_B824
  k_return
S_PK_F_B849:
  k_func 0
  k_pushi 3
  k_callx RF_3DD1, 2
  k_return
S_PK_F_B854:
  k_func 0
  k_call $B1A4
  k_return
S_PK_F_B85D:
  k_func 14
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_jump S_PK_L_B899
S_PK_L_B868:
  k_ldl -6
  k_jumpf S_PK_L_B897
  k_ldl -6
  k_ldri 3
  k_ne
  k_jumpf S_PK_L_B897
  k_ldl -6
  k_ldri 2
  k_ne
  k_jumpf S_PK_L_B897
  k_ldli 1
  k_ldr -6
  k_shl
  k_pushl
  k_ldlba $EF68
  k_popr
  k_and
  k_jumpf S_PK_L_B897
  k_leal -14
  k_pushl
  k_ldl -4
  k_popr
  k_add
  k_pushl
  k_ldl -6
  k_shl1
  k_ldriw S_PK_D_D284
  k_add
  k_deref
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
S_PK_L_B897:
  k_ldl -6
  k_inc
S_PK_L_B899:
  k_stl -6
  k_ldl -6
  k_ldri 8
  k_ult
  k_jumpt S_PK_L_B868
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump S_PK_L_B8CA
S_PK_L_B8A6:
  k_push -4
  k_callx RF_3F3E, 2
  k_stl -8
  k_ldli 1
  k_ldr -8
  k_shl
  k_ldr -2
  k_and
  k_jumpt S_PK_L_B8A6
  k_ldlarg 11
  k_ldr -6
  k_add
  k_pushl
  k_leal -14
  k_pushl
  k_ldl -8
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldli 1
  k_ldr -8
  k_shl
  k_swap
  k_ldl -2
  k_or
  k_stl -2
  k_ldl -6
  k_inc
S_PK_L_B8CA:
  k_stl -6
  k_ldl -6
  k_ldri 3
  k_ult
  k_jumpt S_PK_L_B8A6
  k_ldlarg 11
  k_addli 3
  k_pushl
  k_ldli 0
  k_popstoreb
  k_return
S_PK_F_B8D7:
  k_func 0
  k_pushi 1
  k_callx RF_3DD1, 2
  k_return
S_PK_F_B8E2:
  k_func 1
  k_ldlbf 11
  k_ldri 4
  k_shr
  k_ldri 15
  k_and
  k_stlbf -1
  k_ldlbf -1
  k_ldri 12
  k_eq
  k_jumpf S_PK_L_B8FD
  k_ldli 0
  k_jump S_PK_L_B901
S_PK_L_B8FD:
  k_ldlbf -1
  k_inc
S_PK_L_B901:
  k_stlbf -1
  k_ldlbf 11
  k_ldri 15
  k_and
  k_pushl
  k_ldlbf -1
  k_pushl
  k_ldlbf 15
  k_pushl
  k_ldlbf 13
  k_pushl
  k_callx $B1C3, 8
  k_return
S_PK_F_B91B:
  k_func 0
  k_ldlarg 15
  k_ldri 1
  k_eq
  k_jumpf S_PK_L_B92F
  k_pusharg 13
  k_pusharg 11
  k_callx $B14C, 4
  k_jump S_PK_L_B948
S_PK_L_B92F:
  k_ldli 2
  k_swap
  k_ldlarg 15
  k_sub
  k_stlarg 15
  k_pusha $F280
  k_ldlarg 15
  k_shl1
  k_ldriw S_PK_D_D294
  k_add
  k_deref
  k_pushl
  k_pushi 3
  k_pushi 3
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
S_PK_L_B948:
  k_return
S_PK_F_B949:
  k_func 16
  k_pushi 4
  k_pushi 0
  k_leal -12
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 1
  k_stl -14
S_PK_L_B95E:
  k_leal -12
  k_pushl
  k_ldlarg 11
  k_ldr -14
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -14
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_B95E
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump S_PK_L_B99C
S_PK_L_B97E:
  k_leal -12
  k_pushl
  k_ldl -14
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_popr
  k_ult
  k_jumpf S_PK_L_B99A
  k_leal -12
  k_pushl
  k_ldl -14
  k_shl1
  k_popr
  k_add
  k_deref
  k_stl -2
  k_ldl -14
  k_stl -4
S_PK_L_B99A:
  k_ldl -14
  k_inc
S_PK_L_B99C:
  k_stl -14
  k_ldl -14
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_B97E
  k_ldli 0
  k_stl -14
  k_stl -16
  k_jump S_PK_L_B9CB
S_PK_L_B9A9:
  k_ldlarg 11
  k_ldr -14
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_ldr -4
  k_ne
  k_jumpf S_PK_L_B9C8
  k_ldlarg 13
  k_ldr -16
  k_add
  k_pushl
  k_ldlarg 11
  k_ldr -14
  k_add
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_ldr -14
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -16
  k_inc
  k_stl -16
S_PK_L_B9C8:
  k_ldl -14
  k_inc
  k_stl -14
S_PK_L_B9CB:
  k_ldl -14
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_B9A9
  k_ldl -16
  k_return
S_PK_F_B9D3:
  k_func 6
  k_ldli 0
  k_stl -6
  k_ldlarg 11
  k_derefb
  k_ldri 4
  k_shr
  k_stl -2
  k_ldli 1
  k_jump S_PK_L_BA1E
S_PK_L_B9E3:
  k_ldl -2
  k_inc
  k_pushl
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_popr
  k_ne
  k_jumpf S_PK_L_B9FF
  k_ldl -2
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_popr
  k_ne
  k_jumpt S_PK_L_BA15
S_PK_L_B9FF:
  k_ldlarg 13
  k_ldr -6
  k_add
  k_pushl
  k_ldlarg 11
  k_ldr -4
  k_add
  k_dec
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_ldr -4
  k_add
  k_dec
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
S_PK_L_BA15:
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_stl -2
  k_ldl -4
  k_inc
S_PK_L_BA1E:
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_B9E3
  k_ldl -6
  k_return
S_PK_F_BA27:
  k_func 30
  k_pushib 26
  k_pushi 0
  k_leal -26
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stln -28
S_PK_L_BA3E:
  k_leal -26
  k_pushl
  k_ldlarg 11
  k_ldrn -28
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 15
  k_and
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_ldln -28
  k_inc
  k_stln -28
  k_ldln -28
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_BA3E
  k_ldli 0
  k_stln -28
  k_stln -30
  k_jump S_PK_L_BA9A
S_PK_L_BA66:
  k_leal -26
  k_pushl
  k_ldlarg 11
  k_ldrn -28
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 15
  k_and
  k_shl1
  k_popr
  k_add
  k_deref
  k_ldri 1
  k_eq
  k_jumpf S_PK_L_BA95
  k_ldlarg 13
  k_ldrn -30
  k_add
  k_pushl
  k_ldlarg 11
  k_ldrn -28
  k_add
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_ldrn -28
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldln -30
  k_inc
  k_stln -30
S_PK_L_BA95:
  k_ldln -28
  k_inc
  k_stln -28
S_PK_L_BA9A:
  k_ldln -28
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_BA66
  k_ldln -30
  k_return
S_PK_F_BAA4:
  k_func 1
  k_pushi 5
  k_callx RF_3F3E, 2
  k_jumpf S_PK_L_BAB5
  k_ldli 4
  k_jump S_PK_L_BAB6
S_PK_L_BAB5:
  k_ldli 5
S_PK_L_BAB6:
  k_stlbf -1
  k_ldlbf -1
  k_pushl
  k_pushiw $00FF
  k_pusharg 11
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldlbf -1
  k_return
S_PK_F_BACD:
  k_func 15
  k_leal -9
  k_pushl
  k_pusharg 11
  k_callx S_PK_F_CF0C, 4
  k_stln -15
  k_ldlbf -9
  k_stln -11
  k_ldln -15
  k_jumpf S_PK_L_BAE9
  k_ldli 0
  k_return
S_PK_L_BAE9:
  k_ldln -11
  k_ldrib 80
  k_eq
  k_jumpf S_PK_L_BB00
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_BB00
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_B949, 4
  k_return
S_PK_L_BB00:
  k_ldln -11
  k_ldrib 60
  k_eq
  k_jumpf S_PK_L_BB17
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_BB17
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_B949, 4
  k_return
S_PK_L_BB17:
  k_leal -9
  k_pushl
  k_pusharg 11
  k_callx S_PK_F_CF8D, 4
  k_stln -15
  k_ldlbf -9
  k_stln -13
  k_ldln -15
  k_jumpf S_PK_L_BB2E
  k_ldli 0
  k_return
S_PK_L_BB2E:
  k_ldlbf -9
  k_ldrib 80
  k_eq
  k_jumpf S_PK_L_BB46
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_BB46
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_B9D3, 4
  k_return
S_PK_L_BB46:
  k_ldlbf -9
  k_ldrib 60
  k_uge
  k_jumpf S_PK_L_BB5E
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_BB5E
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_B9D3, 4
  k_return
S_PK_L_BB5E:
  k_leal -9
  k_pushl
  k_pusharg 11
  k_callx S_PK_F_D020, 4
  k_ldlbf -5
  k_jumpt S_PK_L_BB81
  k_ldlbf -6
  k_jumpf S_PK_L_BB79
  k_ldlbf -7
  k_jumpt S_PK_L_BB81
S_PK_L_BB79:
  k_ldlbf -7
  k_ldri 2
  k_eq
  k_jumpf S_PK_L_BB88
S_PK_L_BB81:
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_BA27, 4
  k_return
S_PK_L_BB88:
  k_ldlbf -6
  k_jumpt S_PK_L_BB94
  k_ldlbf -7
  k_jumpf S_PK_L_BB9B
S_PK_L_BB94:
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_BA27, 4
  k_return
S_PK_L_BB9B:
  k_ldln -11
  k_ldrib 80
  k_uge
  k_jumpt S_PK_L_BBAB
  k_ldln -13
  k_ldrib 60
  k_uge
  k_jumpf S_PK_L_BBCD
S_PK_L_BBAB:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_PK_L_BBCD
  k_ldln -13
  k_addlib 20
  k_pushl
  k_ldln -11
  k_popr
  k_ugt
  k_jumpf S_PK_L_BBC6
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_B949, 4
  k_return
S_PK_L_BBC6:
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_B9D3, 4
  k_return
S_PK_L_BBCD:
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_BAA4, 4
  k_return
S_PK_F_BBD4:
  k_func 3
  k_ldlib 16
  k_stla $F18C
  k_pushi 0
  k_pushi 0
  k_pushi 7
  k_pushi 15
  k_pushib 17
  k_pushi 15
  k_callx RF_4F65, 12
  k_pushib 18
  k_pushib 16
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_pushiw S_PK_D_D29C
  k_callx RF_3C4E, 8
  k_stln -3
  k_ldli 0
  k_stla $F18C
  k_pushi 1
  k_pushiw S_PK_D_D2A6
  k_callx RF_2FB9, 4
  k_ldln -3
  k_return
S_PK_F_BC0C:
  k_func 2
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_BACD, 4
  k_stl -2
  k_ldl -2
  k_return
S_PK_F_BC1A:
  k_func 0
  k_pusha $F280
  k_pushiw $73D0
  k_pushi 2
  k_pushi 2
  k_ldlib 23
  k_ldrarg 13
  k_sub
  k_pushl
  k_ldlarg 11
  k_shl1
  k_addli 9
  k_pushl
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
S_PK_F_BC36:
  k_func 0
  k_pushi 0
  k_pushi 2
  k_pushi 2
  k_ldlib 23
  k_ldrarg 13
  k_sub
  k_pushl
  k_ldlarg 11
  k_shl1
  k_addli 9
  k_pushl
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_return
S_PK_F_BC4E:
  k_func 18
  k_ldli 0
  k_stlba $F196
  k_ldli 0
  k_stl -16
  k_pushi 10
  k_pushi 0
  k_leal -12
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushiw $2000
  k_pushi 1
  k_pushi 8
  k_pushib 24
  k_pushi 10
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -2
  k_pushi 8
  k_push -2
  k_callx RF_3D91, 4
S_PK_L_BC81:
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC36, 4
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC1A, 4
  k_call S_PK_F_B8D7
  k_pushi 0
  k_callx RF_362A, 2
  k_ldriw $0080
  k_eq
  k_jumpt S_PK_L_BC81
  k_ldli 8
  k_stl -14
S_PK_L_BC9E:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -2
  k_push -14
  k_push -2
  k_callx RF_3D91, 4
  k_ldl -2
  k_switchn 4
    .word $0100, S_PK_L_BD6D
    .word $0200, S_PK_L_BD7F
    .word $0400, S_PK_L_BCC0
    .word $0800, S_PK_L_BCC0
    .word S_PK_L_BD59
S_PK_L_BCC0:
  k_ldli 1
  k_ldr -16
  k_shl
  k_pushl
  k_ldlba $F196
  k_popr
  k_and
  k_jumpf S_PK_L_BD09
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC36, 4
  k_pushi 1
  k_push -16
  k_callx S_PK_F_BC1A, 4
  k_pushi 2
  k_callx RF_3DD1, 2
  k_pushib 20
  k_ldl -16
  k_shl1
  k_addli 9
  k_pushl
  k_ldlarg 11
  k_ldr -16
  k_add
  k_derefb
  k_pushl
  k_callx S_PK_F_B8E2, 6
  k_ldli 1
  k_ldr -16
  k_shl
  k_ldriw $00FF
  k_xor
  k_swap
  k_ldlba $F196
  k_and
  k_stlba $F196
  k_leal -12
  k_pushl
  k_ldl -16
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_jump S_PK_L_BD57
S_PK_L_BD09:
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC36, 4
  k_pushib 19
  k_ldl -16
  k_shl1
  k_addli 9
  k_pushl
  k_ldlarg 11
  k_ldr -16
  k_add
  k_derefb
  k_pushl
  k_callx S_PK_F_B8E2, 6
  k_ldli 1
  k_ldr -16
  k_shl
  k_swap
  k_ldlba $F196
  k_or
  k_stlba $F196
  k_leal -12
  k_pushl
  k_ldl -16
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 1
  k_popstore
  k_leal -12
  k_pushl
  k_ldl -16
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_push -16
  k_callx S_PK_F_BC1A, 4
  k_pushi 2
  k_callx RF_3DD1, 2
  k_leal -12
  k_pushl
  k_ldl -16
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_push -16
  k_callx S_PK_F_BC36, 4
S_PK_L_BD57:
  k_ldli 8
  k_stl -14
S_PK_L_BD59:
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC1A, 4
  k_ldl -2
  k_ldriw $0080
  k_ne
  k_jumpt S_PK_L_BC9E
  k_ldli 0
  k_stl -18
  k_ldli 0
  k_jump S_PK_L_BDB4
S_PK_L_BD6D:
  k_ldl -16
  k_ldri 4
  k_ult
  k_jumpf S_PK_L_BD57
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC36, 4
  k_ldl -16
  k_inc
S_PK_L_BD7B:
  k_stl -16
  k_jump S_PK_L_BD57
S_PK_L_BD7F:
  k_ldl -16
  k_ldri 0
  k_ugt
  k_jumpf S_PK_L_BD57
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC36, 4
  k_ldl -16
  k_dec
  k_jump S_PK_L_BD7B
S_PK_L_BD90:
  k_ldlba $F196
  k_pushl
  k_ldl -14
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_popr
  k_and
  k_jumpf S_PK_L_BDB2
  k_ldlarg 13
  k_ldr -18
  k_add
  k_pushl
  k_ldlarg 11
  k_ldr -14
  k_add
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_ldr -14
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -18
  k_inc
  k_stl -18
S_PK_L_BDB2:
  k_ldl -14
  k_inc
S_PK_L_BDB4:
  k_stl -14
  k_ldl -14
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_BD90
  k_pusharg 11
  k_callx S_PK_F_CEB1, 2
  k_pushi 0
  k_push -16
  k_callx S_PK_F_BC36, 4
  k_ldl -18
  k_return
S_PK_F_BDC8:
  k_func 4
  k_ldln 21
  k_jumpf S_PK_L_BDE1
  k_pushi 0
  k_pushi 0
  k_ldlarg 15
  k_ldrn 19
  k_mul
  k_addli 2
  k_pushl
  k_pushi 10
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4F65, 12
S_PK_L_BDE1:
  k_ldli 0
  k_jump S_PK_L_BE00
S_PK_L_BDE5:
  k_ldl -2
  k_ldrn 19
  k_mul
  k_ldrarg 13
  k_add
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -2
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_inc
S_PK_L_BE00:
  k_stl -2
  k_ldl -2
  k_ldrarg 15
  k_ult
  k_jumpt S_PK_L_BDE5
  k_pushi 1
  k_pusharg 15
  k_pushn 19
  k_pushi 0
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_pusharg 15
  k_pushiw S_PK_D_D2AA
  k_callx RF_3787, 16
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf S_PK_L_BE28
  k_ldliw $00FF
  k_jump S_PK_L_BE2A
S_PK_L_BE28:
  k_ldl -4
  k_dec
S_PK_L_BE2A:
  k_return
S_PK_F_BE2B:
  k_func 14
  k_ldliw S_PK_D_D2AB
  k_stl -2
  k_ldli 3
  k_stlbf -3
  k_ldlarg 15
  k_deref
  k_pushl
  k_ldlarg 13
  k_deref
  k_popr
  k_add
  k_pushl
  k_ldlarg 11
  k_popr
  k_ugt
  k_jumpf S_PK_L_BE48
  k_ldli 0
  k_return
S_PK_L_BE48:
  k_ldln 19
  k_jumpf S_PK_L_BE55
  k_ldliw S_PK_D_D2AD
  k_stl -2
  k_ldli 2
  k_stlbf -3
S_PK_L_BE55:
  k_ldli 0
  k_stl -6
  k_stl -8
  k_jump S_PK_L_BE70
S_PK_L_BE5B:
  k_ldl -6
  k_ldri 3
  k_ne
  k_jumpf S_PK_L_BE6D
  k_ldl -6
  k_shl1
  k_ldrn 23
  k_add
  k_deref
  k_jumpt S_PK_L_BE6D
  k_ldl -8
  k_inc
  k_stl -8
S_PK_L_BE6D:
  k_ldl -6
  k_inc
  k_stl -6
S_PK_L_BE70:
  k_ldl -6
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_BE5B
S_PK_L_BE76:
  k_ldli 0
  k_stl -12
  k_ldli 1
  k_stl -14
  k_ldl -8
  k_ldri 3
  k_ne
  k_jumpf S_PK_L_BEAA
S_PK_L_BE80:
  k_push -14
  k_pushi 2
  k_push -2
  k_ldlbf -3
  k_pushl
  k_pushib 17
  k_pushib 21
  k_callx S_PK_F_BDC8, 12
  k_stlbf -4
  k_ldli 0
  k_stl -14
  k_ldlbf -4
  k_ldriw $00FF
  k_eq
  k_jumpt S_PK_L_BE80
  k_ldln 19
  k_jumpf S_PK_L_BEAE
  k_ldlbf -4
  k_inc
  k_jump S_PK_L_BEAB
S_PK_L_BEAA:
  k_ldli 1
S_PK_L_BEAB:
  k_stlbf -4
S_PK_L_BEAE:
  k_ldlbf -4
  k_switchn 3
    .word $0000, S_PK_L_BEC2
    .word $0001, S_PK_L_BF1E
    .word $0002, S_PK_L_BF28
    .word S_PK_L_BF02
S_PK_L_BEC2:
  k_call $978F
  k_pushiw $2000
  k_pushi 8
  k_pushi 10
  k_pushib 17
  k_pushib 21
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 7
  k_pushi 15
  k_pushib 17
  k_pushi 15
  k_callx $97B0, 8
  k_pushn 21
  k_ldlarg 15
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_pusharg 11
  k_callx S_PK_F_BBD4, 4
  k_stl -10
  k_ldl -10
  k_ldrib -1
  k_ne
  k_jumpf S_PK_L_BEFD
  k_ldlarg 13
  k_deref
  k_swap
  k_ldl -10
  k_sub
  k_stl -10
  k_jump S_PK_L_BEFF
S_PK_L_BEFD:
  k_ldli 1
  k_stl -12
S_PK_L_BEFF:
  k_call $97BE
S_PK_L_BF02:
  k_ldl -12
  k_jumpt S_PK_L_BE76
  k_push -10
  k_ldlarg 13
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_push -10
  k_ldlarg 15
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_pushi 1
  k_pushiw S_PK_D_D2C5
  k_callx RF_2FB9, 4
  k_ldli 1
  k_return
S_PK_L_BF1E:
  k_ldlarg 13
  k_deref
  k_pushl
  k_ldlarg 11
  k_popr
  k_sub
  k_stl -10
  k_jump S_PK_L_BF02
S_PK_L_BF28:
  k_pushi 1
  k_pushiw S_PK_D_D2C1
  k_callx RF_2FB9, 4
  k_ldli 0
  k_return
S_PK_F_BF32:
  k_func 31
  k_ldli 0
  k_stln -15
  k_stln -17
  k_jump S_PK_L_BF5B
S_PK_L_BF3F:
  k_ldln -15
  k_ldrn 21
  k_ne
  k_jumpf S_PK_L_BF56
  k_ldln -15
  k_shl1
  k_ldrn 27
  k_add
  k_deref
  k_jumpt S_PK_L_BF56
  k_ldln -17
  k_inc
  k_stln -17
S_PK_L_BF56:
  k_ldln -15
  k_inc
  k_stln -15
S_PK_L_BF5B:
  k_ldln -15
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_BF3F
  k_ldln -17
  k_ldri 3
  k_ne
  k_jumpf S_PK_L_C0C5
  k_ldlarg 15
  k_deref
  k_pushl
  k_ldlarg 13
  k_deref
  k_popr
  k_add
  k_ldrarg 11
  k_ult
  k_jumpf S_PK_L_BF77
  k_ldli 0
  k_return
S_PK_L_BF77:
  k_ldli 0
  k_stln -15
S_PK_L_BF7A:
  k_leal -27
  k_pushl
  k_ldln -15
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushi 0
  k_leal -9
  k_pushl
  k_ldln -15
  k_ldri 5
  k_mul
  k_ldrarg 17
  k_add
  k_pushl
  k_callx S_PK_F_D0ED, 6
  k_popstore
  k_ldln -15
  k_inc
  k_stln -15
  k_ldln -15
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_BF7A
  k_ldli 0
  k_stln -13
  k_ldln -27
  k_stln -29
  k_ldli 1
  k_jump S_PK_L_BFD1
S_PK_L_BFAC:
  k_leal -27
  k_pushl
  k_ldln -15
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldln -29
  k_popr
  k_ult
  k_jumpf S_PK_L_BFCE
  k_leal -27
  k_pushl
  k_ldln -15
  k_shl1
  k_popr
  k_add
  k_deref
  k_stln -29
  k_ldln -15
  k_stln -13
S_PK_L_BFCE:
  k_ldln -15
  k_inc
S_PK_L_BFD1:
  k_stln -15
  k_ldln -15
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_BFAC
  k_pushi 0
  k_leal -9
  k_pushl
  k_ldln 21
  k_ldri 5
  k_mul
  k_ldrarg 17
  k_add
  k_pushl
  k_callx S_PK_F_D0ED, 6
  k_stln -19
  k_ldlbf -9
  k_stln -11
  k_ldln -11
  k_ldriw $00FF
  k_eq
  k_jumpt S_PK_L_C001
  k_ldln -13
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C050
S_PK_L_C001:
  k_ldln -13
  k_ldri 3
  k_ne
  k_jumpf S_PK_L_C010
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_C01F
S_PK_L_C010:
  k_ldln -13
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C065
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_PK_L_C065
S_PK_L_C01F:
  k_ldlarg 13
  k_deref
  k_shl1
  k_pushl
  k_ldlarg 13
  k_deref
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_ldrarg 11
  k_ult
  k_jumpf S_PK_L_C03B
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf S_PK_L_C03B
  k_ldli 0
  k_return
S_PK_L_C03B:
  k_ldlarg 13
  k_deref
  k_ldrarg 11
  k_eq
  k_jumpf S_PK_L_C04B
  k_pushn 23
  k_pushi 1
  k_pushn 21
  k_callx S_PK_F_CD4C, 6
S_PK_L_C04B:
  k_ldlarg 13
  k_deref
  k_ldrarg 11
  k_eq
  k_return
S_PK_L_C050:
  k_ldln -11
  k_shl1
  k_ldriw S_PK_D_D2C9
  k_add
  k_deref
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_C065
  k_ldlarg 13
  k_deref
  k_ldrarg 11
  k_eq
  k_return
S_PK_L_C065:
  k_ldln 19
  k_jumpt S_PK_L_C0B3
  k_ldln -11
  k_ldriw $00FF
  k_eq
  k_jumpf S_PK_L_C07B
  k_pushi 15
  k_callx RF_3F3E, 2
  k_jump S_PK_L_C087
S_PK_L_C07B:
  k_ldln -19
  k_ldri 3
  k_shr
  k_pushl
  k_pushi 15
  k_callx RF_3F3E, 2
  k_popr
  k_add
S_PK_L_C087:
  k_stln -31
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_pushl
  k_ldln -31
  k_popr
  k_ugt
  k_jumpf S_PK_L_C09A
  k_ldln -31
  k_ldri 1
  k_shr
  k_stln -31
S_PK_L_C09A:
  k_ldln -13
  k_ldrn 21
  k_eq
  k_jumpf S_PK_L_C0BB
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf S_PK_L_C0BB
  k_pushn 25
  k_callx RF_3F3E, 2
  k_jump S_PK_L_C0B9
S_PK_L_C0B3:
  k_ldlarg 13
  k_deref
  k_pushl
  k_ldlarg 11
  k_popr
  k_sub
S_PK_L_C0B9:
  k_stln -31
S_PK_L_C0BB:
  k_ldlarg 13
  k_deref
  k_ldrn -31
  k_add
  k_ldrarg 11
  k_ult
  k_jumpf S_PK_L_C0CD
S_PK_L_C0C5:
  k_ldlarg 13
  k_deref
  k_pushl
  k_ldlarg 11
  k_popr
  k_sub
  k_stln -31
S_PK_L_C0CD:
  k_ldlarg 13
  k_deref
  k_ldrn -31
  k_add
  k_ldrn 25
  k_ugt
  k_jumpf S_PK_L_C0E1
  k_ldlarg 13
  k_deref
  k_pushl
  k_ldln 25
  k_popr
  k_sub
  k_stln -31
S_PK_L_C0E1:
  k_ldlarg 13
  k_deref
  k_ldrn -31
  k_add
  k_ldrarg 11
  k_ugt
  k_jumpf S_PK_L_C0F1
  k_pushn 23
  k_pushi 0
  k_jump S_PK_L_C0F4
S_PK_L_C0F1:
  k_pushn 23
  k_pushi 1
S_PK_L_C0F4:
  k_pushn 21
  k_callx S_PK_F_CD4C, 6
  k_pushn -31
  k_ldlarg 13
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldlarg 15
  k_deref
  k_ldrn -31
  k_ult
  k_jumpf S_PK_L_C10F
  k_pusharg 15
  k_ldli 0
  k_jump S_PK_L_C116
S_PK_L_C10F:
  k_pushn -31
  k_ldlarg 15
  k_popr
  k_pushl
  k_deref
  k_sub
S_PK_L_C116:
  k_popstore
  k_ldli 1
  k_return
S_PK_F_C119:
  k_func 4
  k_pushi 5
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2DF
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2DD
  k_add
  k_deref
  k_pushl
  k_callx S_PK_F_B91B, 6
  k_ldlarg 11
  k_jumpt S_PK_L_C13D
  k_ldli 4
  k_jump S_PK_L_C13F
S_PK_L_C13D:
  k_ldlib -11
S_PK_L_C13F:
  k_stl -4
  k_ldli 0
  k_stl -2
S_PK_L_C142:
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2DF
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_shl1
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2DD
  k_add
  k_deref
  k_popr
  k_add
  k_ldr -4
  k_add
  k_pushl
  k_callx S_PK_F_B80C, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C142
  k_return
S_PK_F_C169:
  k_func 162
  k_leal -162
  k_pushl
  k_callx S_PK_F_B85D, 2
  k_ldli 0
  k_stlf -144
S_PK_L_C17A:
  k_leal -122
  k_pushl
  k_ldlf -144
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_leal -140
  k_pushl
  k_ldlf -144
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushiw $03E8
  k_callx RF_3F3E, 2
  k_addliw $03E8
  k_popstore
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldlf -144
  k_ldri 3
  k_ult
  k_jumpt S_PK_L_C17A
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_ldrib 100
  k_sdiv
  k_ldrib 100
  k_mul
  k_ldri 4
  k_sdiv
  k_stlf -142
  k_ldli 0
  k_stln -116
  k_ldla $E56D
  k_stlf -134
  k_leal -52
  k_pushl
  k_callx S_PK_F_B81D, 2
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stln -92
S_PK_L_C1D9:
  k_ldli 0
  k_stln -90
  k_ldln -92
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldli 0
  k_jump S_PK_L_C297
S_PK_L_C1E7:
  k_leal -156
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 1
  k_popstore
  k_pushi 15
  k_callx RF_3F3E, 2
  k_addlib 60
  k_pushl
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_popr
  k_ult
  k_jumpf S_PK_L_C247
  k_ldln -96
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C227
  k_pushiw $2000
  k_pushib 28
  k_pushib 28
  k_pushi 1
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 1
  k_callx S_PK_F_CE83, 2
  k_jump S_PK_L_C240
S_PK_L_C227:
  k_pushiw $2000
  k_pushib 28
  k_pushib 28
  k_pushi 1
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_leal -162
  k_pushl
  k_pushi 7
  k_pushn -96
  k_callx S_PK_F_CD4C, 6
S_PK_L_C240:
  k_ldlf -134
  k_stla $E56D
  k_return
S_PK_L_C247:
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 5
  k_popstore
  k_pushi 5
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D301
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2FF
  k_add
  k_deref
  k_pushl
  k_callx RF_2F8F, 4
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_pushiw S_PK_D_D381
  k_callx RF_3619, 4
  k_ldln -96
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldlf -144
  k_inc
S_PK_L_C297:
  k_stlf -144
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C1E7
  k_pushib 26
  k_pushi 11
  k_callx RF_2F8F, 4
  k_pushf -134
  k_pushiw S_PK_D_D389
  k_callx RF_3608, 4
  k_leal -52
  k_pushl
  k_callx $B104, 2
  k_ldli 0
  k_stlf -144
S_PK_L_C2BF:
  k_ldln -92
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldli 0
  k_jump S_PK_L_C356
S_PK_L_C2CA:
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_ldrf -144
  k_add
  k_popr
  k_add
  k_pushl
  k_leal -52
  k_pushl
  k_ldln -90
  k_inc
  k_stln -90
  k_dec
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldln -96
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C30C
  k_pusha S_PK_D_D31D
  k_ldlf -144
  k_shl1
  k_ldra S_PK_D_D31B
  k_add
  k_pushl
  k_leal -57
  k_pushl
  k_ldlf -144
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_PK_F_B8E2, 6
  k_jump S_PK_L_C34B
S_PK_L_C30C:
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D311
  k_add
  k_deref
  k_pushl
  k_ldlf -144
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D30F
  k_add
  k_deref
  k_popr
  k_add
  k_pushl
  k_callx $B14C, 4
  k_ldlf -144
  k_ldri 1
  k_ugt
  k_jumpf S_PK_L_C34B
  k_ldli 10
  k_ldrf -144
  k_sub
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_C34B
  k_leal -162
  k_pushl
  k_pushi 4
  k_pushn -96
  k_callx S_PK_F_CD4C, 6
S_PK_L_C34B:
  k_ldln -96
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldlf -146
  k_inc
S_PK_L_C356:
  k_stlf -146
  k_ldlf -146
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C2CA
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldlf -144
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C2BF
  k_ldln -92
  k_stln -96
  k_pusha $F280
  k_pushiw $73C8
  k_pushi 2
  k_pushi 2
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D301
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2FF
  k_add
  k_deref
  k_addli 10
  k_pushl
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldli 0
  k_stlf -144
S_PK_L_C39A:
  k_leal -72
  k_pushl
  k_ldlf -144
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_CEB1, 2
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C39A
  k_ldli 0
  k_stlf -146
S_PK_L_C3BD:
  k_pusha S_PK_D_D31D
  k_ldlf -146
  k_shl1
  k_ldra S_PK_D_D31B
  k_add
  k_pushl
  k_leal -57
  k_pushl
  k_ldlf -146
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_PK_F_B8E2, 6
  k_ldlf -146
  k_inc
  k_stlf -146
  k_ldlf -146
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C3BD
  k_ldln -92
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldli 0
  k_jump S_PK_L_C5D9
S_PK_L_C3F2:
  k_ldln -96
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C49D
  k_leal -77
  k_pushl
  k_leal -57
  k_pushl
  k_callx S_PK_F_BC4E, 4
  k_stln -98
  k_ldli 5
  k_ldrn -98
  k_sub
  k_jump S_PK_L_C42A
S_PK_L_C40E:
  k_leal -57
  k_pushl
  k_ldlf -146
  k_popr
  k_add
  k_pushl
  k_leal -52
  k_pushl
  k_ldln -90
  k_inc
  k_stln -90
  k_dec
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldlf -146
  k_inc
S_PK_L_C42A:
  k_stlf -146
  k_ldlf -146
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C40E
  k_ldli 0
  k_jump S_PK_L_C449
S_PK_L_C439:
  k_pushib 19
  k_ldlf -146
  k_shl1
  k_addli 9
  k_pushl
  k_callx S_PK_F_B80C, 4
  k_ldlf -146
  k_inc
S_PK_L_C449:
  k_stlf -146
  k_ldlf -146
  k_ldrn -98
  k_ult
  k_jumpt S_PK_L_C439
  k_ldln -98
  k_jumpf S_PK_L_C464
  k_pushn -98
  k_pushib 20
  k_pushib 20
  k_callx S_PK_F_B91B, 6
S_PK_L_C464:
  k_leal -57
  k_pushl
  k_callx S_PK_F_CEB1, 2
  k_ldli 0
  k_stlf -146
S_PK_L_C470:
  k_pusha S_PK_D_D31D
  k_ldlf -146
  k_shl1
  k_ldra S_PK_D_D31B
  k_add
  k_pushl
  k_leal -57
  k_pushl
  k_ldlf -146
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_PK_F_B8E2, 6
  k_ldlf -146
  k_inc
  k_stlf -146
  k_ldlf -146
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C470
  k_jump S_PK_L_C5CE
S_PK_L_C49D:
  k_leal -77
  k_pushl
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_BC0C, 4
  k_stln -98
  k_ldli 0
  k_stlf -146
  k_stln -100
  k_jump S_PK_L_C52D
S_PK_L_C4BB:
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_ldrf -146
  k_add
  k_popr
  k_add
  k_derefb
  k_stln -88
  k_ldln -88
  k_ldriw $00F0
  k_and
  k_ldriw $00C0
  k_ugt
  k_jumpt S_PK_L_C4E2
  k_ldln -88
  k_ldri 15
  k_and
  k_ldri 3
  k_ugt
  k_jumpf S_PK_L_C526
S_PK_L_C4E2:
  k_call S_PK_F_B8D7
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D311
  k_add
  k_deref
  k_pushl
  k_ldlf -146
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D30F
  k_add
  k_deref
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_B80C, 4
  k_ldln -100
  k_inc
  k_stln -100
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_ldrf -146
  k_add
  k_popr
  k_add
  k_pushl
  k_leal -52
  k_pushl
  k_ldln -90
  k_inc
  k_stln -90
  k_dec
  k_popr
  k_add
  k_derefb
  k_popstoreb
S_PK_L_C526:
  k_ldlf -146
  k_inc
  k_stlf -146
S_PK_L_C52D:
  k_ldlf -146
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C4BB
  k_ldln -98
  k_jumpf S_PK_L_C574
  k_ldln -96
  k_jumpt S_PK_L_C559
  k_pushn -98
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D311
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D30F
  k_add
  k_deref
  k_addlib -4
  k_jump S_PK_L_C56F
S_PK_L_C559:
  k_pushn -98
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D311
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D30F
  k_add
  k_deref
  k_addli 11
S_PK_L_C56F:
  k_pushl
  k_callx S_PK_F_B91B, 6
S_PK_L_C574:
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_CEB1, 2
  k_ldli 0
  k_stlf -146
S_PK_L_C587:
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D311
  k_add
  k_deref
  k_pushl
  k_ldlf -146
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D30F
  k_add
  k_deref
  k_popr
  k_add
  k_pushl
  k_callx $B14C, 4
  k_pushi 5
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_C5BC
  k_leal -162
  k_pushl
  k_pushi 4
  k_pushn -96
  k_callx S_PK_F_CD4C, 6
  k_jump S_PK_L_C5BF
S_PK_L_C5BC:
  k_call S_PK_F_B849
S_PK_L_C5BF:
  k_ldlf -146
  k_inc
  k_stlf -146
  k_ldlf -146
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C587
S_PK_L_C5CE:
  k_ldln -96
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldlf -144
  k_inc
S_PK_L_C5D9:
  k_stlf -144
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C3F2
  k_ldli 0
  k_stln -102
  k_ldlf -132
  k_stln -106
S_PK_L_C5EC:
  k_ldli 0
  k_stlf -158
  k_ldln -92
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldli 0
  k_stlf -144
  k_jump S_PK_L_C77E
S_PK_L_C5FE:
  k_leal -156
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_jumpf S_PK_L_C770
  k_ldln -96
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C68B
  k_pushi 8
  k_pushib 16
  k_pushib 17
  k_pushi 15
  k_callx $97B0, 8
  k_ldln -102
  k_jumpf S_PK_L_C63B
  k_ldlf -132
  k_ldrn -126
  k_ugt
  k_jumpt S_PK_L_C63B
  k_ldlf -130
  k_ldrn -126
  k_ugt
  k_jumpt S_PK_L_C63B
  k_ldln -128
  k_ldrn -126
  k_ugt
  k_jumpf S_PK_L_C674
S_PK_L_C63B:
  k_leal -156
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_leal -156
  k_pushl
  k_pushf -142
  k_pushn -102
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushn -106
  k_callx S_PK_F_BE2B, 14
  k_popstore
S_PK_L_C674:
  k_call $97BE
  k_pushib 26
  k_pushi 11
  k_callx RF_2F8F, 4
  k_pushf -134
  k_pushiw S_PK_D_D392
  k_callx RF_3608, 4
  k_jump S_PK_L_C6C6
S_PK_L_C68B:
  k_leal -156
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushf -134
  k_leal -156
  k_pushl
  k_pushf -142
  k_leal -162
  k_pushl
  k_pushn -96
  k_pushn -102
  k_leal -72
  k_pushl
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushn -106
  k_callx S_PK_F_BF32, 20
  k_popstore
S_PK_L_C6C6:
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldln -106
  k_popr
  k_lt
  k_jumpf S_PK_L_C6E4
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_stln -106
S_PK_L_C6E4:
  k_leal -156
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_jumpt S_PK_L_C746
  k_ldln -96
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C735
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_popr
  k_add
  k_pushl
  k_ldln -106
  k_popr
  k_ule
  k_jumpf S_PK_L_C740
  k_ldln -96
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_C740
  k_pushib 20
  k_callx RF_3F3E, 2
  k_jumpt S_PK_L_C740
  k_leal -162
  k_pushl
  k_pushi 5
  k_pushi 3
  k_callx RF_3F3E, 2
  k_pushl
  k_jump S_PK_L_C73C
S_PK_L_C735:
  k_leal -162
  k_pushl
  k_pushi 2
  k_pushn -96
S_PK_L_C73C:
  k_callx S_PK_F_CD4C, 6
S_PK_L_C740:
  k_pushn -96
  k_callx S_PK_F_C119, 2
S_PK_L_C746:
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D301
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2FF
  k_add
  k_deref
  k_pushl
  k_callx RF_2F8F, 4
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_pushiw S_PK_D_D39B
  k_callx RF_3619, 4
S_PK_L_C770:
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldln -96
  k_inc
  k_ldri 3
  k_and
  k_stln -96
S_PK_L_C77E:
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C5FE
  k_ldli 1
  k_stln -102
  k_ldln -92
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldli 0
  k_stlf -144
  k_stln -100
  k_jump S_PK_L_C7D0
S_PK_L_C799:
  k_leal -156
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_jumpf S_PK_L_C7C2
  k_leal -132
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_ldrn -106
  k_ne
  k_jumpf S_PK_L_C7BD
  k_ldli 1
  k_stlf -158
  k_jump S_PK_L_C7D8
S_PK_L_C7BD:
  k_ldln -100
  k_inc
  k_stln -100
S_PK_L_C7C2:
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldln -96
  k_inc
  k_ldri 3
  k_and
  k_stln -96
S_PK_L_C7D0:
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C799
S_PK_L_C7D8:
  k_ldln -100
  k_ldri 1
  k_eq
  k_jumpf S_PK_L_C7E3
  k_ldli 0
  k_stlf -158
S_PK_L_C7E3:
  k_ldlf -158
  k_jumpt S_PK_L_C5EC
  k_ldln -92
  k_inc
  k_ldri 3
  k_and
  k_stln -96
  k_ldli 0
  k_stlf -144
  k_jump S_PK_L_C890
S_PK_L_C7F7:
  k_leal -156
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_jumpf S_PK_L_C876
  k_ldli 0
  k_stlf -146
S_PK_L_C808:
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D311
  k_add
  k_deref
  k_pushl
  k_ldlf -146
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D30F
  k_add
  k_deref
  k_popr
  k_add
  k_pushl
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_ldrf -146
  k_add
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx S_PK_F_B8E2, 6
  k_ldlf -146
  k_inc
  k_stlf -146
  k_ldlf -146
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_C808
  k_leal -114
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushi 1
  k_leal -86
  k_pushl
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_D0ED, 6
  k_popstore
  k_ldlbf -86
  k_ldriw $00FF
  k_eq
  k_jumpf S_PK_L_C882
  k_ldli 8
  k_stlbf -86
  k_jump S_PK_L_C882
S_PK_L_C876:
  k_leal -114
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstore
S_PK_L_C882:
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldln -96
  k_inc
  k_ldri 3
  k_and
  k_stln -96
S_PK_L_C890:
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C7F7
  k_ldln -92
  k_stln -104
  k_ldli 0
  k_stln -96
  k_ldln -114
  k_stln -106
  k_ldli 0
  k_stlf -146
S_PK_L_C8A7:
  k_leal -156
  k_pushl
  k_ldlf -146
  k_shl1
  k_popr
  k_add
  k_deref
  k_jumpf S_PK_L_C91A
  k_leal -114
  k_pushl
  k_ldlf -146
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldln -106
  k_popr
  k_ule
  k_jumpf S_PK_L_C91A
  k_leal -114
  k_pushl
  k_ldlf -146
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldln -106
  k_popr
  k_ult
  k_jumpt S_PK_L_C908
  k_leal -86
  k_pushl
  k_leal -72
  k_pushl
  k_ldln -96
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_D020, 4
  k_pushl
  k_leal -86
  k_pushl
  k_leal -72
  k_pushl
  k_ldlf -146
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_D020, 4
  k_popr
  k_gt
  k_jumpf S_PK_L_C91A
S_PK_L_C908:
  k_ldlf -146
  k_stln -96
  k_leal -114
  k_pushl
  k_ldlf -146
  k_shl1
  k_popr
  k_add
  k_deref
  k_stln -106
S_PK_L_C91A:
  k_ldlf -146
  k_inc
  k_stlf -146
  k_ldlf -146
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C8A7
  k_ldln -96
  k_stln -92
  k_ldli 0
  k_stlf -144
S_PK_L_C931:
  k_leal -156
  k_pushl
  k_ldlf -144
  k_shl1
  k_popr
  k_add
  k_deref
  k_jumpf S_PK_L_C9D1
  k_leal -114
  k_pushl
  k_ldlf -144
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushi 1
  k_leal -86
  k_pushl
  k_leal -72
  k_pushl
  k_ldlf -144
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx S_PK_F_D0ED, 6
  k_popstore
  k_ldlbf -86
  k_ldriw $00FF
  k_eq
  k_jumpf S_PK_L_C96E
  k_ldli 8
  k_stlbf -86
S_PK_L_C96E:
  k_ldlf -144
  k_jumpt S_PK_L_C978
  k_ldli 4
  k_jump S_PK_L_C979
S_PK_L_C978:
  k_ldli 0
S_PK_L_C979:
  k_stlf -148
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D311
  k_add
  k_deref
  k_addlib -2
  k_pushl
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D30F
  k_add
  k_deref
  k_ldrf -148
  k_sub
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlbf -86
  k_jumpt S_PK_L_C9B2
  k_ldlbf -85
  k_ldri 2
  k_eq
  k_jumpf S_PK_L_C9B2
  k_pushi 1
  k_pushiw S_PK_D_D3A3
  k_callx RF_2FB9, 4
S_PK_L_C9B2:
  k_ldla $F18E
  k_inc
  k_stla $F18E
  k_ldlbf -86
  k_shl1
  k_ldriw S_PK_D_D2ED
  k_add
  k_deref
  k_pushl
  k_pushiw S_PK_D_D3A5
  k_callx RF_3619, 4
  k_ldla $F18E
  k_dec
  k_stla $F18E
S_PK_L_C9D1:
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_C931
  k_ldln -96
  k_ldri 3
  k_ne
  k_jumpf S_PK_L_C9F2
  k_leal -162
  k_pushl
  k_pushi 3
  k_pushn -96
  k_callx S_PK_F_CD4C, 6
S_PK_L_C9F2:
  k_ldln -126
  k_long $26
  k_long $14
  k_ldln -128
  k_long $26
  k_long $14
  k_ldlf -130
  k_long $26
  k_long $14
  k_ldlf -132
  k_long $26
  k_long $14
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_long $26
  k_long $15
  k_long $03
  k_long $15
  k_long $03
  k_long $15
  k_long $03
  k_long $15
  k_long $03
  k_longd $19, $0000EA60
  k_long $0A
  k_jumpf S_PK_L_CA43
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldliw $EA60
  k_jump S_PK_L_CA5E
S_PK_L_CA43:
  k_ldlf -132
  k_ldrf -130
  k_add
  k_ldrn -128
  k_add
  k_ldrn -126
  k_add
  k_pushl
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
S_PK_L_CA5E:
  k_popstore
  k_ldln -96
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_CAB2
  k_pushib 50
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_popr
  k_add
  k_ldra $E56D
  k_add
  k_pushl
  k_ldlf -134
  k_popr
  k_uge
  k_jumpf S_PK_L_CAB2
  k_leal -162
  k_pushl
  k_pushi 11
S_PK_L_CA8B:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_pushl
  k_jump S_PK_L_CB3E
S_PK_L_CA94:
  k_ldln -96
  k_ldri 3
  k_ne
  k_jumpf S_PK_L_CAA5
  k_leal -162
  k_pushl
  k_pushi 7
  k_pushn -96
  k_jump S_PK_L_CB3E
S_PK_L_CAA5:
  k_pushi 0
  k_callx S_PK_F_CE83, 2
  k_leal -162
  k_pushl
  k_pushi 8
  k_jump S_PK_L_CA8B
S_PK_L_CAB2:
  k_leal -140
  k_pushl
  k_ldln -96
  k_shl1
  k_popr
  k_add
  k_deref
  k_ldriw $EA60
  k_eq
  k_jumpt S_PK_L_CA94
  k_leal -122
  k_pushl
  k_ldln -92
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_pushib 26
  k_pushi 11
  k_callx RF_2F8F, 4
  k_pushf -134
  k_pushiw S_PK_D_D3A8
  k_callx RF_3608, 4
  k_pushi 6
  k_pushi 10
  k_pushib 18
  k_pushib 21
  k_callx $97B0, 8
  k_pushi 0
  k_pushi 0
  k_pushi 6
  k_pushi 10
  k_pushib 18
  k_pushib 21
  k_callx RF_4F65, 12
  k_ldlib 22
  k_stla $F18C
  k_pushib 19
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw S_PK_D_D3B1
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stln -88
  k_pushi 1
  k_pushiw S_PK_D_D3BA
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stla $F18C
  k_call $97BE
  k_ldln -88
  k_jumpt S_PK_L_CB51
  k_pushib 100
  k_callx RF_3F3E, 2
  k_ldra $E56D
  k_add
  k_addlib 100
  k_ldrf -134
  k_ult
  k_jumpf S_PK_L_CB49
  k_leal -162
  k_pushl
  k_pushi 10
S_PK_L_CB3D:
  k_pushi 3
S_PK_L_CB3E:
  k_callx S_PK_F_CD4C, 6
  k_ldlf -134
  k_stla $E56D
  k_return
S_PK_L_CB49:
  k_leal -162
  k_pushl
  k_pushi 6
  k_jump S_PK_L_CB3D
S_PK_L_CB51:
  k_ldli 0
  k_stlf -144
S_PK_L_CB55:
  k_pushi 0
  k_pushi 7
  k_pushi 14
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D301
  k_add
  k_deref
  k_addlib -5
  k_pushl
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2FF
  k_add
  k_deref
  k_dec
  k_pushl
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 7
  k_pushi 14
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D301
  k_add
  k_deref
  k_addlib -5
  k_pushl
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw S_PK_D_D2FF
  k_add
  k_deref
  k_dec
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldlf -144
  k_inc
  k_stlf -144
  k_ldlf -144
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_CB55
  k_jump S_PK_L_C1D9
S_PK_F_CBAD:
  k_func 6
  k_call $B1A4
  k_ldla $E56D
  k_stl -2
  k_call S_PK_F_C169
  k_ldla $E56D
  k_stl -4
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpf S_PK_L_CBEB
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_ldri 3
  k_sdiv
  k_stl -6
  k_ldl -6
  k_ldri 4
  k_sdiv
  k_pushl
  k_callx RF_3F3E, 2
  k_ldr -6
  k_add
  k_pushl
  k_ldl -4
  k_ldr -2
  k_sub
  k_popr
  k_udiv
  k_swap
  k_ldlba $EA88
  k_add
  k_stlba $EA88
S_PK_L_CBEB:
  k_ldli 1
  k_return
S_PK_F_CBED:
  k_func 4
  k_ldlarg 11
  k_shl1
  k_ldriw S_PK_D_D749
  k_add
  k_derefb
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_ldriw S_PK_D_D74A
  k_add
  k_derefb
  k_stl -2
  k_pushi 8
  k_pushi 15
  k_ldl -2
  k_dec
  k_pushl
  k_push -4
  k_callx RF_4D41, 8
  k_ldlarg 11
  k_ldri 2
  k_eq
  k_jumpf S_PK_L_CC5E
  k_pushiw $2000
  k_pushi 1
  k_pushi 13
  k_ldl -2
  k_dec
  k_pushl
  k_ldl -4
  k_inc
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 1
  k_ldlarg 15
  k_ldrarg 11
  k_add
  k_derefb
  k_pushl
  k_push -2
  k_ldl -4
  k_addli 10
  k_pushl
  k_callx RF_4E29, 8
  k_pushiw $2000
  k_pushi 6
  k_pushi 10
  k_push -2
  k_push -4
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 3
  k_pushi 6
  k_pushi 10
  k_push -2
  k_push -4
  k_callx RF_50D1, 12
  k_ldl -2
  k_inc
  k_pushl
  k_ldl -4
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_inc
  k_stla $F18C
  k_pushi 0
  k_pushiw S_PK_D_D74F
  k_jump S_PK_L_CCA7
S_PK_L_CC5E:
  k_pushiw $2000
  k_pushi 1
  k_pushi 14
  k_ldl -2
  k_dec
  k_pushl
  k_push -4
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 1
  k_ldlarg 15
  k_ldrarg 11
  k_add
  k_derefb
  k_pushl
  k_push -2
  k_push -4
  k_callx RF_4E29, 8
  k_pushiw $2000
  k_pushi 6
  k_pushi 10
  k_push -2
  k_ldl -4
  k_addli 5
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 4
  k_pushi 6
  k_pushi 10
  k_push -2
  k_ldl -4
  k_addli 5
  k_pushl
  k_callx RF_50D1, 12
  k_ldl -2
  k_inc
  k_pushl
  k_ldl -4
  k_addli 6
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_addli 6
  k_stla $F18C
  k_pushi 0
  k_pushiw S_PK_D_D753
S_PK_L_CCA7:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pusharg 13
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stla $F18C
  k_return
S_PK_F_CCB6:
  k_func 10
S_PK_L_CCBB:
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_dec
  k_derefb
  k_pushl
  k_callx RF_36C5, 2
  k_stl -4
  k_ldl -4
  k_switchn 8
    .word $0043, S_PK_L_CD33
    .word $0045, S_PK_L_CD45
    .word $004B, S_PK_L_CCF1
    .word $004D, S_PK_L_CD16
    .word $004F, S_PK_L_CD3C
    .word $0053, S_PK_L_CCF1
    .word $0054, S_PK_L_CCEC
    .word $0057, S_PK_L_CD2B
    .word S_PK_L_CCBB
S_PK_L_CCEC:
  k_ldlarg 11
  k_stl -8
  k_jump S_PK_L_CCBB
S_PK_L_CCF1:
  k_ldlarg 13
  k_derefb
  k_addlib -32
  k_stl -6
  k_ldlarg 13
  k_inc
  k_stlarg 13
S_PK_L_CCF9:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_stl -10
  k_ldl -10
  k_ldr -8
  k_eq
  k_jumpt S_PK_L_CCF9
  k_pusharg 15
  k_ldl -6
  k_shl1
  k_ldriw S_PK_D_D3BE
  k_add
  k_deref
  k_pushl
  k_push -10
S_PK_L_CD0F:
  k_callx S_PK_F_CBED, 6
  k_jump S_PK_L_CCBB
S_PK_L_CD16:
  k_ldlarg 13
  k_derefb
  k_addlib -32
  k_stl -6
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_pusharg 15
  k_ldl -6
  k_shl1
  k_ldriw S_PK_D_D3BE
  k_add
  k_deref
  k_pushl
  k_pusharg 11
  k_jump S_PK_L_CD0F
S_PK_L_CD2B:
  k_pushi 1
  k_callx RF_3DDF, 2
  k_jump S_PK_L_CCBB
S_PK_L_CD33:
  k_call RF_4DD8
  k_call RF_4D8B
  k_jump S_PK_L_CCBB
S_PK_L_CD3C:
  k_call RF_4D8B
  k_jumpt S_PK_L_CD3C
  k_jump S_PK_L_CCBB
S_PK_L_CD45:
  k_call RF_4D8B
  k_jumpt S_PK_L_CD45
  k_return
S_PK_F_CD4C:
  k_func 20
  k_ldlbf 13
  k_switch 0, 13, S_PK_L_CD8A
    .word S_PK_L_CD75, S_PK_L_CD9B, S_PK_L_CDB0, S_PK_L_CDC5, S_PK_L_CDDA, S_PK_L_CDEF, S_PK_L_CE07, S_PK_L_CE23
    .word S_PK_L_CE32, S_PK_L_CE4D, S_PK_L_CE53, S_PK_L_CE59, S_PK_L_CE6E
S_PK_L_CD75:
  k_pushiw S_PK_D_D790
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 4
  k_callx RF_3F3E, 2
  k_addlib 32
S_PK_L_CD87:
  k_stlbf -18
S_PK_L_CD8A:
  k_pusharg 15
  k_leal -20
  k_pushl
  k_ldlbf 11
  k_pushl
  k_callx S_PK_F_CCB6, 6
  k_call RF_4DD8
  k_return
S_PK_L_CD9B:
  k_pushiw S_PK_D_D797
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 4
  k_callx RF_3F3E, 2
  k_addlib 36
  k_jump S_PK_L_CD87
S_PK_L_CDB0:
  k_pushiw S_PK_D_D79E
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 6
  k_callx RF_3F3E, 2
  k_addlib 40
  k_jump S_PK_L_CD87
S_PK_L_CDC5:
  k_pushiw S_PK_D_D7A5
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 4
  k_callx RF_3F3E, 2
  k_addlib 46
  k_jump S_PK_L_CD87
S_PK_L_CDDA:
  k_pushiw S_PK_D_D7AC
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 7
  k_callx RF_3F3E, 2
  k_addlib 50
  k_jump S_PK_L_CD87
S_PK_L_CDEF:
  k_pushiw S_PK_D_D7B3
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 5
  k_callx RF_3F3E, 2
  k_ldriw S_PK_D_D757
  k_add
  k_derefb
  k_jump S_PK_L_CD87
S_PK_L_CE07:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_PK_L_CE1D
  k_pushiw S_PK_D_D7C2
S_PK_L_CE12:
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_jump S_PK_L_CD8A
S_PK_L_CE1D:
  k_pushiw S_PK_D_D7C8
  k_jump S_PK_L_CE12
S_PK_L_CE23:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw S_PK_D_D75D
  k_add
  k_deref
  k_pushl
  k_jump S_PK_L_CE12
S_PK_L_CE32:
  k_pushiw S_PK_D_D7D2
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 3
  k_callx RF_3F3E, 2
  k_ldra S_PK_D_D763
  k_add
  k_derefb
  k_stlbf -14
  k_jump S_PK_L_CD8A
S_PK_L_CE4D:
  k_pushiw S_PK_D_D7DD
  k_jump S_PK_L_CE12
S_PK_L_CE53:
  k_pushiw S_PK_D_D7E4
  k_jump S_PK_L_CE12
S_PK_L_CE59:
  k_pushiw S_PK_D_D7E9
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 2
  k_callx RF_3F3E, 2
  k_addlib 74
  k_jump S_PK_L_CD87
S_PK_L_CE6E:
  k_pushiw S_PK_D_D7EF
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 2
  k_callx RF_3F3E, 2
  k_addlib 76
  k_jump S_PK_L_CD87
S_PK_F_CE83:
  k_func 0
  k_pushi 0
  k_call RF_430C
  k_pushl
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_ldlbf 11
  k_jumpf S_PK_L_CEA3
  k_ldliw S_PK_D_D7F5
  k_jump S_PK_L_CEA6
S_PK_L_CEA3:
  k_ldliw S_PK_D_D810
S_PK_L_CEA6:
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_return
S_PK_F_CEB1:
  k_func 8
  k_ldli 0
  k_stl -4
S_PK_L_CEB8:
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_stlbf -2
  k_ldl -4
  k_stl -6
  k_stl -8
  k_jump S_PK_L_CEDE
S_PK_L_CEC5:
  k_ldlarg 11
  k_ldr -6
  k_add
  k_derefb
  k_pushl
  k_ldlbf -2
  k_popr
  k_ugt
  k_jumpf S_PK_L_CEDB
  k_ldl -6
  k_stl -8
  k_ldlarg 11
  k_ldr -6
  k_add
  k_derefb
  k_stlbf -2
S_PK_L_CEDB:
  k_ldl -6
  k_inc
  k_stl -6
S_PK_L_CEDE:
  k_ldl -6
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_CEC5
  k_ldl -4
  k_ldr -8
  k_ne
  k_jumpf S_PK_L_CF02
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_stlbf -1
  k_ldlarg 11
  k_ldr -4
  k_add
  k_pushl
  k_ldlarg 11
  k_ldr -8
  k_add
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_ldr -8
  k_add
  k_pushl
  k_ldlbf -1
  k_popstoreb
S_PK_L_CF02:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_CEB8
  k_return
S_PK_F_CF0C:
  k_func 9
  k_pushi 4
  k_pushi 0
  k_leal -7
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stln -9
S_PK_L_CF22:
  k_leal -7
  k_pushl
  k_ldlarg 11
  k_ldrn -9
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_popr
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
  k_ldln -9
  k_inc
  k_stln -9
  k_ldln -9
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_CF22
  k_ldli 0
  k_stlbf -3
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump S_PK_L_CF7A
S_PK_L_CF49:
  k_leal -7
  k_pushl
  k_ldln -9
  k_popr
  k_add
  k_derefb
  k_pushl
  k_ldlbf -3
  k_popr
  k_ult
  k_jumpf S_PK_L_CF67
  k_leal -7
  k_pushl
  k_ldln -9
  k_popr
  k_add
  k_derefb
  k_stlbf -3
S_PK_L_CF67:
  k_leal -7
  k_pushl
  k_ldln -9
  k_popr
  k_add
  k_derefb
  k_ldri 5
  k_eq
  k_jumpf S_PK_L_CF77
  k_ldli 1
  k_stl -2
S_PK_L_CF77:
  k_ldln -9
  k_inc
S_PK_L_CF7A:
  k_stln -9
  k_ldln -9
  k_ldri 4
  k_ult
  k_jumpt S_PK_L_CF49
  k_pusharg 13
  k_ldlbf -3
  k_ldrib 20
  k_mul
  k_popstoreb
  k_ldl -2
  k_return
S_PK_F_CF8D:
  k_func 10
  k_ldli 0
  k_stl -10
S_PK_L_CF94:
  k_leal -8
  k_pushl
  k_ldl -10
  k_popr
  k_add
  k_pushl
  k_ldlarg 11
  k_ldr -10
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 15
  k_and
  k_popstoreb
  k_ldl -10
  k_inc
  k_stl -10
  k_ldl -10
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_CF94
  k_leal -8
  k_pushl
  k_callx S_PK_F_CEB1, 2
  k_pusharg 13
  k_ldlib 20
  k_popstoreb
  k_ldlbf -8
  k_stlbf -3
  k_ldli 1
  k_jump S_PK_L_D013
S_PK_L_CFC4:
  k_leal -8
  k_pushl
  k_ldl -10
  k_popr
  k_add
  k_derefb
  k_pushl
  k_ldlbf -3
  k_inc
  k_popr
  k_eq
  k_jumpt S_PK_L_CFE8
  k_leal -8
  k_pushl
  k_ldl -10
  k_popr
  k_add
  k_derefb
  k_pushl
  k_ldlbf -3
  k_addli 2
  k_popr
  k_eq
  k_jumpf S_PK_L_D006
S_PK_L_CFE8:
  k_leal -8
  k_pushl
  k_ldl -10
  k_popr
  k_add
  k_derefb
  k_pushl
  k_ldlbf -3
  k_inc
  k_popr
  k_eq
  k_jumpf S_PK_L_CFFF
  k_pushib 20
  k_jump S_PK_L_D000
S_PK_L_CFFF:
  k_pushi 5
S_PK_L_D000:
  k_ldlarg 13
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
S_PK_L_D006:
  k_leal -8
  k_pushl
  k_ldl -10
  k_popr
  k_add
  k_derefb
  k_stlbf -3
  k_ldl -10
  k_inc
S_PK_L_D013:
  k_stl -10
  k_ldl -10
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_CFC4
  k_ldlarg 13
  k_derefb
  k_ldrib 100
  k_eq
  k_return
S_PK_F_D020:
  k_func 21
  k_pushi 13
  k_pushi 0
  k_leal -17
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stl -2
S_PK_L_D035:
  k_leal -17
  k_pushl
  k_ldlarg 11
  k_ldr -2
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 15
  k_and
  k_popr
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_D035
  k_ldli 0
  k_stl -2
S_PK_L_D052:
  k_ldlarg 13
  k_ldr -2
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt S_PK_L_D052
  k_ldli 0
  k_stln -21
  k_ldli 0
  k_stl -4
  k_ldli 1
  k_stln -19
  k_ldli 0
  k_jump S_PK_L_D0E3
S_PK_L_D06D:
  k_leal -17
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldrarg 13
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
  k_leal -17
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldri 1
  k_eq
  k_jumpf S_PK_L_D0A6
  k_ldl -2
  k_ldrn -19
  k_mul
  k_swap
  k_ldln -21
  k_add
  k_stln -21
  k_ldln -19
  k_ldriw $0533
  k_eq
  k_jumpf S_PK_L_D09F
  k_ldli 0
  k_jump S_PK_L_D0A0
S_PK_L_D09F:
  k_ldli 11
S_PK_L_D0A0:
  k_swap
  k_ldln -19
  k_mul
  k_stln -19
S_PK_L_D0A6:
  k_leal -17
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldri 2
  k_eq
  k_jumpf S_PK_L_D0BD
  k_ldlarg 13
  k_ldr -4
  k_add
  k_addli 5
  k_pushl
  k_ldl -2
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
S_PK_L_D0BD:
  k_leal -17
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldri 3
  k_eq
  k_jumpf S_PK_L_D0CF
  k_ldlarg 13
  k_addli 7
  k_pushl
  k_ldl -2
  k_popstoreb
S_PK_L_D0CF:
  k_leal -17
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldri 4
  k_eq
  k_jumpf S_PK_L_D0E1
  k_ldlarg 13
  k_addli 8
  k_pushl
  k_ldl -2
  k_popstoreb
S_PK_L_D0E1:
  k_ldl -2
  k_inc
S_PK_L_D0E3:
  k_stl -2
  k_ldl -2
  k_ldri 13
  k_ult
  k_jumpt S_PK_L_D06D
  k_ldln -21
  k_return
S_PK_F_D0ED:
  k_func 15
  k_ldli 0
  k_stln -11
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_CF0C, 4
  k_stln -7
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_CF8D, 4
  k_stln -9
  k_ldliw $00FF
  k_stl -2
  k_ldln -7
  k_jumpf S_PK_L_D123
  k_ldln -9
  k_jumpf S_PK_L_D123
  k_ldlarg 11
  k_addli 4
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 12
  k_eq
  k_jumpf S_PK_L_D121
  k_ldli 7
  k_jump S_PK_L_D122
S_PK_L_D121:
  k_ldli 6
S_PK_L_D122:
  k_stl -2
S_PK_L_D123:
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf S_PK_L_D140
  k_ldln -7
  k_jumpt S_PK_L_D135
  k_ldln -9
  k_jumpf S_PK_L_D140
S_PK_L_D135:
  k_ldln -7
  k_jumpf S_PK_L_D13E
  k_ldli 3
  k_jump S_PK_L_D13F
S_PK_L_D13E:
  k_ldli 2
S_PK_L_D13F:
  k_stl -2
S_PK_L_D140:
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf S_PK_L_D17C
  k_pusharg 13
  k_pusharg 11
  k_callx S_PK_F_D020, 4
  k_stln -11
  k_ldlarg 13
  k_addli 4
  k_derefb
  k_jumpf S_PK_L_D15A
  k_ldli 5
  k_jump S_PK_L_D17B
S_PK_L_D15A:
  k_ldlarg 13
  k_addli 3
  k_derefb
  k_jumpf S_PK_L_D16A
  k_ldlarg 13
  k_addli 2
  k_derefb
  k_jumpf S_PK_L_D16A
  k_ldli 4
  k_jump S_PK_L_D17B
S_PK_L_D16A:
  k_ldlarg 13
  k_addli 3
  k_derefb
  k_jumpf S_PK_L_D174
  k_ldli 1
  k_jump S_PK_L_D17B
S_PK_L_D174:
  k_ldlarg 13
  k_addli 2
  k_derefb
  k_jumpf S_PK_L_D17C
  k_ldli 0
S_PK_L_D17B:
  k_stl -2
S_PK_L_D17C:
  k_ldli 0
  k_stln -13
  k_ldli 0
  k_stln -15
  k_ldl -2
  k_switch 0, 8, S_PK_L_D27B
    .word S_PK_L_D19A, S_PK_L_D210, S_PK_L_D21F, S_PK_L_D22A, S_PK_L_D243, S_PK_L_D25A, S_PK_L_D26A, S_PK_L_D275
S_PK_L_D19A:
  k_ldli 13
  k_stln -15
  k_ldli 6
  k_stln -13
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 13
  k_addli 2
  k_derefb
  k_popstoreb
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 13
  k_addli 5
  k_derefb
  k_popstoreb
  k_swap
  k_ldln -15
  k_add
  k_stln -15
  k_ldlarg 13
  k_inc
  k_derefb
  k_ldri 2
  k_eq
  k_jumpf S_PK_L_D1E6
  k_ldli 1
  k_stln -13
  k_ldlarg 13
  k_addli 3
  k_pushl
  k_ldlarg 13
  k_addli 6
  k_derefb
  k_popstoreb
  k_ldlarg 13
  k_addli 3
  k_derefb
  k_ldri 11
  k_mul
  k_addli 2
  k_swap
  k_ldln -15
  k_add
  k_stln -15
  k_ldlarg 13
  k_addli 2
  k_derefb
  k_stlbf -5
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 13
  k_addli 3
  k_derefb
  k_popstoreb
  k_ldlarg 13
  k_addli 3
  k_pushl
  k_ldlbf -5
  k_popstoreb
S_PK_L_D1E6:
  k_ldli 2
  k_swap
  k_ldln -15
  k_mul
  k_stln -15
  k_pusharg 13
  k_ldl -2
  k_popstoreb
  k_ldlarg 15
  k_jumpf S_PK_L_D20D
  k_ldliw $0091
  k_swap
  k_ldln -15
  k_mul
  k_stln -15
  k_ldln -13
  k_jumpf S_PK_L_D20D
  k_ldln -11
  k_ldrn -13
  k_udiv
  k_swap
  k_ldln -15
  k_add
  k_stln -15
S_PK_L_D20D:
  k_ldln -15
  k_return
S_PK_L_D210:
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 13
  k_addli 7
  k_derefb
  k_popstoreb
  k_addliw $009F
S_PK_L_D21A:
  k_stln -15
  k_jump S_PK_L_D1E6
S_PK_L_D21F:
  k_ldlarg 11
  k_addli 4
  k_derefb
  k_ldri 4
  k_shr
  k_addliw $00A9
  k_jump S_PK_L_D21A
S_PK_L_D22A:
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 11
  k_derefb
  k_ldri 15
  k_and
  k_popstoreb
  k_ldlarg 11
  k_addli 4
  k_derefb
  k_ldri 4
  k_shr
  k_addliw $00B1
S_PK_L_D23A:
  k_stln -15
  k_ldlib 56
  k_stln -13
  k_jump S_PK_L_D1E6
S_PK_L_D243:
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 13
  k_addli 7
  k_derefb
  k_popstoreb
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 13
  k_addli 5
  k_derefb
  k_popstoreb
  k_ldlarg 13
  k_addli 7
  k_derefb
  k_addliw $00BE
  k_jump S_PK_L_D21A
S_PK_L_D25A:
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 13
  k_addli 8
  k_derefb
  k_popstoreb
  k_ldlarg 13
  k_addli 7
  k_derefb
  k_addliw $00CB
  k_jump S_PK_L_D21A
S_PK_L_D26A:
  k_ldlarg 11
  k_addli 4
  k_derefb
  k_ldri 4
  k_shr
  k_addliw $00D5
  k_jump S_PK_L_D21A
S_PK_L_D275:
  k_ldliw $00E1
  k_jump S_PK_L_D21A
S_PK_L_D27B:
  k_ldlarg 11
  k_addli 4
  k_derefb
  k_ldri 4
  k_shr
  k_jump S_PK_L_D23A
  .byte $00
S_PK_D_D284:
  .byte $00, $00, $04, $00, $00, $00, $00, $00, $06, $00, $07, $00, $05, $00, $09, $00
S_PK_D_D294:
  .byte $80, $73, $92, $73, $A4, $73, $B6
  .byte "s"
S_PK_D_D29C:
  .byte "How much", $0A, $00
S_PK_D_D2A6:
  .byte $1B
  .byte "C2", $00
S_PK_D_D2AA:
  .byte $00
S_PK_D_D2AB:
  .word S_PK_D_D2B1
S_PK_D_D2AD:
  .word S_PK_D_D2B7, S_PK_D_D2BC
S_PK_D_D2B1:
  .byte "Raise", $00
S_PK_D_D2B7:
  .byte "Call", $00
S_PK_D_D2BC:
  .byte "Fold", $00
S_PK_D_D2C1:
  .byte $1B
  .byte "C2", $00
S_PK_D_D2C5:
  .byte $1B
  .byte "C2", $00
S_PK_D_D2C9:
  .byte $14, $00, $28, $00, $A0, $00, $C8, $00, $DC, $00, $F0, $00, $18, $01, $90, $01
  .byte $F4, $01, $02, $00
S_PK_D_D2DD:
  .byte $01, $00
S_PK_D_D2DF:
  .byte $0C, $00, $14, $00, $04, $00, $1C, $00, $0C, $00, $14, $00, $14, $00
S_PK_D_D2ED:
  .word S_PK_D_D31F, S_PK_D_D325, S_PK_D_D332, S_PK_D_D33C, S_PK_D_D343, S_PK_D_D34F, S_PK_D_D35C, S_PK_D_D36B
  .word S_PK_D_D378
S_PK_D_D2FF:
  .byte $02, $00
S_PK_D_D301:
  .byte $0F, $00, $0A, $00, $07, $00, $12, $00, $0F, $00, $0A, $00, $17, $00
S_PK_D_D30F:
  .byte $05, $00
S_PK_D_D311:
  .byte $0C, $00, $09, $00, $04, $00, $11, $00, $0C, $00
S_PK_D_D31B:
  .byte $09, $00
S_PK_D_D31D:
  .byte $14, $00
S_PK_D_D31F:
  .byte " Pair", $00
S_PK_D_D325:
  .byte " 3 of a kind", $00
S_PK_D_D332:
  .byte " Straight", $00
S_PK_D_D33C:
  .byte " Flush", $00
S_PK_D_D343:
  .byte " Full house", $00
S_PK_D_D34F:
  .byte " 4 of a kind", $00
S_PK_D_D35C:
  .byte "Straight flush", $00
S_PK_D_D36B:
  .byte " Royal flush", $00
S_PK_D_D378:
  .byte " No pair", $00
S_PK_D_D381:
  .byte "Bet:%4d", $00
S_PK_D_D389:
  .byte "Gold:%5d", $00
S_PK_D_D392:
  .byte "Gold:%5d", $00
S_PK_D_D39B:
  .byte "Bet:%4d", $00
S_PK_D_D3A3:
  .byte $32, $00
S_PK_D_D3A5:
  .byte "%s", $00
S_PK_D_D3A8:
  .byte "Gold:%5d", $00
S_PK_D_D3B1:
  .byte "Continue", $00
S_PK_D_D3BA:
  .byte $1B
  .byte "C2", $00
S_PK_D_D3BE:
  .word S_PK_D_D41A, S_PK_D_D430, S_PK_D_D445, S_PK_D_D459, S_PK_D_D461, S_PK_D_D470, S_PK_D_D478, S_PK_D_D481
  .word S_PK_D_D488, S_PK_D_D495, S_PK_D_D4A7, S_PK_D_D4BF, S_PK_D_D4D3, S_PK_D_D4DC, S_PK_D_D4F1, S_PK_D_D502
  .word S_PK_D_D50A, S_PK_D_D51B, S_PK_D_D52B, S_PK_D_D534, S_PK_D_D53C, S_PK_D_D54B, S_PK_D_D559, S_PK_D_D560
  .word S_PK_D_D568, S_PK_D_D57E, S_PK_D_D597, S_PK_D_D5A7, S_PK_D_D5BB, S_PK_D_D5D9, S_PK_D_D5E9, S_PK_D_D5FE
  .word S_PK_D_D61B, S_PK_D_D631, S_PK_D_D64B, S_PK_D_D662, S_PK_D_D674, S_PK_D_D68B, S_PK_D_D69F, S_PK_D_D6B6
  .word S_PK_D_D6C6, S_PK_D_D6E0, S_PK_D_D6F3, S_PK_D_D709, S_PK_D_D721, S_PK_D_D734
S_PK_D_D41A:
  .byte "You'd", $0A, "better", $0A, "drop out", $00
S_PK_D_D430:
  .byte "Get out", $0A, "while ye", $0A, "can", $00
S_PK_D_D445:
  .byte "This", $0A, "hand'll", $0A, "win it", $00
S_PK_D_D459:
  .byte $0A, "Raise!", $00
S_PK_D_D461:
  .byte "Let's", $0A, $0A, "see 'em", $00
S_PK_D_D470:
  .byte $0A, "I call", $00
S_PK_D_D478:
  .byte $0A, "I'm in!", $00
S_PK_D_D481:
  .byte $0A, "Call!", $00
S_PK_D_D488:
  .byte "I'm no", $0A, $0A, "fool", $00
S_PK_D_D495:
  .byte "Too much", $0A, $0A, "for me!", $00
S_PK_D_D4A7:
  .byte "This is", $0A, "scary.", $0A, "I'm out!", $00
S_PK_D_D4BF:
  .byte "I can't", $0A, "handle", $0A, "this", $00
S_PK_D_D4D3:
  .byte $0A, "I'm out", $00
S_PK_D_D4DC:
  .byte "I'll", $0A, "pull out", $0A, "now...", $00
S_PK_D_D4F1:
  .byte "This", $0A, "one's", $0A, "mine!", $00
S_PK_D_D502:
  .byte $0A, "I win!", $00
S_PK_D_D50A:
  .byte "Looks", $0A, "like I", $0A, "win", $00
S_PK_D_D51B:
  .byte "I'm the", $0A, $0A, "winner", $00
S_PK_D_D52B:
  .byte $0A, "Well...", $00
S_PK_D_D534:
  .byte $0A, "Hmm...", $00
S_PK_D_D53C:
  .byte "I can't", $0A, $0A, "lose!", $00
S_PK_D_D54B:
  .byte "Heh heh", $0A, $0A, "heh!", $00
S_PK_D_D559:
  .byte $0A, ".....", $00
S_PK_D_D560:
  .byte $0A, "Blast!", $00
S_PK_D_D568:
  .byte "What is", $0A, "this, a", $0A, "joke?", $00
S_PK_D_D57E:
  .byte "Lost yer", $0A, "sea legs", $0A, "matey?", $00
S_PK_D_D597:
  .byte "You're", $0A, $0A, "scared!", $00
S_PK_D_D5A7:
  .byte "Play", $0A, "again", $0A, "sometime", $00
S_PK_D_D5BB:
  .byte "Running", $0A, "off with", $0A, "yer loot", $0A, "eh?", $00
S_PK_D_D5D9:
  .byte "Come", $0A, "back", $0A, "again", $00
S_PK_D_D5E9:
  .byte "That was", $0A, "a good", $0A, "game", $00
S_PK_D_D5FE:
  .byte "I can't", $0A, "stop ye", $0A, "if yer", $0A, "going", $00
S_PK_D_D61B:
  .byte "Now I'm", $0A, "almost", $0A, "broke!", $00
S_PK_D_D631:
  .byte "Ye can", $0A, "never be", $0A, "too", $0A, "rich!", $00
S_PK_D_D64B:
  .byte "I'll", $0A, "take my", $0A, "leave", $0A, "now", $00
S_PK_D_D662:
  .byte "Quitting", $0A, "already?", $00
S_PK_D_D674:
  .byte "Sorry,", $0A, "but I'm", $0A, "leaving", $00
S_PK_D_D68B:
  .byte "Going", $0A, "home so", $0A, "soon?", $00
S_PK_D_D69F:
  .byte "Blast!", $0A, "I'm out", $0A, "of gold", $00
S_PK_D_D6B6:
  .byte "Scared,", $0A, $0A, "matey?", $00
S_PK_D_D6C6:
  .byte "Well,", $0A, "ye took", $0A, "yer", $0A, "chances", $00
S_PK_D_D6E0:
  .byte "You're a", $0A, $0A, "weakling", $00
S_PK_D_D6F3:
  .byte "That's", $0A, "all I", $0A, "can take", $00
S_PK_D_D709:
  .byte "Ye play", $0A, "too mean", $0A, "for me", $00
S_PK_D_D721:
  .byte "That's", $0A, "it, I'm", $0A, "out", $00
S_PK_D_D734:
  .byte "That was", $0A, "a fine", $0A, "game", $00
S_PK_D_D749:
  .byte $01
S_PK_D_D74A:
  .byte $0B, $09, $03, $10, $0B
S_PK_D_D74F:
  .byte $1B
  .byte "C2", $00
S_PK_D_D753:
  .byte $1B
  .byte "C2", $00
S_PK_D_D757:
  .byte "C:GHI", $00
S_PK_D_D75D:
  .word S_PK_D_D765, S_PK_D_D772, S_PK_D_D77F
S_PK_D_D763:
  .byte $8C, $D7
S_PK_D_D765:
  .byte "OTM@WCTMBWCE", $00
S_PK_D_D772:
  .byte "OTMAWCTMBWCE", $00
S_PK_D_D77F:
  .byte "OTMDCK<WEWCE", $00
  .byte ";=>", $00
S_PK_D_D790:
  .byte "TM WCE", $00
S_PK_D_D797:
  .byte "TM WCE", $00
S_PK_D_D79E:
  .byte "TM WCE", $00
S_PK_D_D7A5:
  .byte "TM WCE", $00
S_PK_D_D7AC:
  .byte "TM WCE", $00
S_PK_D_D7B3:
  .byte "TM WCk9WCS5WCE", $00
S_PK_D_D7C2:
  .byte "K=WCE", $00
S_PK_D_D7C8:
  .byte "K>WCK=WCE", $00
S_PK_D_D7D2:
  .byte "TM?WCK;WCE", $00
S_PK_D_D7DD:
  .byte "TMFWCE", $00
S_PK_D_D7E4:
  .byte "K<WE", $00
S_PK_D_D7E9:
  .byte "TMJWE", $00
S_PK_D_D7EF:
  .byte "TMLWE", $00
S_PK_D_D7F5:
  .byte "We'd be fools to stay", $0A, "here", $00
S_PK_D_D810:
  .byte "Let's return to the", $0A, "ship", $00
  .byte $00
