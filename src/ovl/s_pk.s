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
  k_ldriw $D284
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
  k_ldriw $D294
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
  k_pushiw $D29C
  k_callx RF_3C4E, 8
  k_stln -3
  k_ldli 0
  k_stla $F18C
  k_pushi 1
  k_pushiw $D2A6
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
  k_pushiw $D2AA
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
  k_ldliw $D2AB
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
  k_ldliw $D2AD
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
  k_pushiw $D2C5
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
  k_pushiw $D2C1
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
  k_ldriw $D2C9
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
  k_ldriw $D2DF
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $D2DD
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
  k_ldriw $D2DF
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_shl1
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $D2DD
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
  k_ldriw $D301
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D2FF
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
  k_pushiw $D381
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
  k_pushiw $D389
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
  k_pusha $D31D
  k_ldlf -144
  k_shl1
  k_ldra $D31B
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
  k_ldriw $D311
  k_add
  k_deref
  k_pushl
  k_ldlf -144
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D30F
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
  k_ldriw $D301
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D2FF
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
  k_pusha $D31D
  k_ldlf -146
  k_shl1
  k_ldra $D31B
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
  k_pusha $D31D
  k_ldlf -146
  k_shl1
  k_ldra $D31B
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
  k_ldriw $D311
  k_add
  k_deref
  k_pushl
  k_ldlf -146
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D30F
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
  k_ldriw $D311
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D30F
  k_add
  k_deref
  k_addlib -4
  k_jump S_PK_L_C56F
S_PK_L_C559:
  k_pushn -98
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D311
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D30F
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
  k_ldriw $D311
  k_add
  k_deref
  k_pushl
  k_ldlf -146
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D30F
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
  k_pushiw $D392
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
  k_ldriw $D301
  k_add
  k_deref
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D2FF
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
  k_pushiw $D39B
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
  k_ldriw $D311
  k_add
  k_deref
  k_pushl
  k_ldlf -146
  k_shl1
  k_pushl
  k_ldln -96
  k_shl1
  k_shl1
  k_ldriw $D30F
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
  k_ldriw $D311
  k_add
  k_deref
  k_addlib -2
  k_pushl
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw $D30F
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
  k_pushiw $D3A3
  k_callx RF_2FB9, 4
S_PK_L_C9B2:
  k_ldla $F18E
  k_inc
  k_stla $F18E
  k_ldlbf -86
  k_shl1
  k_ldriw $D2ED
  k_add
  k_deref
  k_pushl
  k_pushiw $D3A5
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
  k_pushiw $D3A8
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
  k_pushiw $D3B1
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stln -88
  k_pushi 1
  k_pushiw $D3BA
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
  k_ldriw $D301
  k_add
  k_deref
  k_addlib -5
  k_pushl
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw $D2FF
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
  k_ldriw $D301
  k_add
  k_deref
  k_addlib -5
  k_pushl
  k_ldlf -144
  k_shl1
  k_shl1
  k_ldriw $D2FF
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
  k_ldriw $D749
  k_add
  k_derefb
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_ldriw $D74A
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
  k_pushiw $D74F
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
  k_pushiw $D753
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
  k_ldriw $D3BE
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
  k_ldriw $D3BE
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
  k_pushiw $D790
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
  k_pushiw $D797
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 4
  k_callx RF_3F3E, 2
  k_addlib 36
  k_jump S_PK_L_CD87
S_PK_L_CDB0:
  k_pushiw $D79E
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 6
  k_callx RF_3F3E, 2
  k_addlib 40
  k_jump S_PK_L_CD87
S_PK_L_CDC5:
  k_pushiw $D7A5
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 4
  k_callx RF_3F3E, 2
  k_addlib 46
  k_jump S_PK_L_CD87
S_PK_L_CDDA:
  k_pushiw $D7AC
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 7
  k_callx RF_3F3E, 2
  k_addlib 50
  k_jump S_PK_L_CD87
S_PK_L_CDEF:
  k_pushiw $D7B3
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 5
  k_callx RF_3F3E, 2
  k_ldriw $D757
  k_add
  k_derefb
  k_jump S_PK_L_CD87
S_PK_L_CE07:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_PK_L_CE1D
  k_pushiw $D7C2
S_PK_L_CE12:
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_jump S_PK_L_CD8A
S_PK_L_CE1D:
  k_pushiw $D7C8
  k_jump S_PK_L_CE12
S_PK_L_CE23:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $D75D
  k_add
  k_deref
  k_pushl
  k_jump S_PK_L_CE12
S_PK_L_CE32:
  k_pushiw $D7D2
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 3
  k_callx RF_3F3E, 2
  k_ldra $D763
  k_add
  k_derefb
  k_stlbf -14
  k_jump S_PK_L_CD8A
S_PK_L_CE4D:
  k_pushiw $D7DD
  k_jump S_PK_L_CE12
S_PK_L_CE53:
  k_pushiw $D7E4
  k_jump S_PK_L_CE12
S_PK_L_CE59:
  k_pushiw $D7E9
  k_leal -20
  k_pushl
  k_callx $8979, 4
  k_pushi 2
  k_callx RF_3F3E, 2
  k_addlib 74
  k_jump S_PK_L_CD87
S_PK_L_CE6E:
  k_pushiw $D7EF
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
  k_ldliw $D7F5
  k_jump S_PK_L_CEA6
S_PK_L_CEA3:
  k_ldliw $D810
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
  .byte $00, $00, $00, $04, $00, $00, $00, $00, $00, $06, $00, $07, $00, $05, $00, $09
  .byte $00, $80, $73, $92, $73, $A4, $73, $B6
  .byte "sHow much"
  .byte $0A, $00, $1B, $43, $32, $00, $00, $B1, $D2, $B7, $D2, $BC, $D2
  .byte "Raise"
  .byte $00
  .byte "Call"
  .byte $00
  .byte "Fold"
  .byte $00, $1B, $43, $32, $00, $1B, $43, $32, $00, $14, $00, $28, $00, $A0, $00, $C8
  .byte $00, $DC, $00, $F0, $00, $18, $01, $90, $01, $F4, $01, $02, $00, $01, $00, $0C
  .byte $00, $14, $00, $04, $00, $1C, $00, $0C, $00, $14, $00, $14, $00, $1F, $D3, $25
  .byte $D3, $32, $D3, $3C, $D3, $43, $D3, $4F, $D3, $5C, $D3, $6B, $D3, $78, $D3, $02
  .byte $00, $0F, $00, $0A, $00, $07, $00, $12, $00, $0F, $00, $0A, $00, $17, $00, $05
  .byte $00, $0C, $00, $09, $00, $04, $00, $11, $00, $0C, $00, $09, $00, $14, $00
  .byte " Pair"
  .byte $00
  .byte " 3 of a kind"
  .byte $00
  .byte " Straight"
  .byte $00
  .byte " Flush"
  .byte $00
  .byte " Full house"
  .byte $00
  .byte " 4 of a kind"
  .byte $00
  .byte "Straight flush"
  .byte $00
  .byte " Royal flush"
  .byte $00
  .byte " No pair"
  .byte $00
  .byte "Bet:%4d"
  .byte $00
  .byte "Gold:%5d"
  .byte $00
  .byte "Gold:%5d"
  .byte $00
  .byte "Bet:%4d"
  .byte $00, $32, $00, $25, $73, $00
  .byte "Gold:%5d"
  .byte $00
  .byte "Continue"
  .byte $00, $1B, $43, $32, $00, $1A, $D4, $30, $D4, $45, $D4, $59, $D4, $61, $D4, $70
  .byte $D4, $78, $D4, $81, $D4, $88, $D4, $95, $D4, $A7, $D4, $BF, $D4, $D3, $D4, $DC
  .byte $D4, $F1, $D4, $02, $D5, $0A, $D5, $1B, $D5, $2B, $D5, $34, $D5, $3C, $D5, $4B
  .byte $D5, $59, $D5, $60, $D5, $68, $D5, $7E, $D5, $97, $D5, $A7, $D5, $BB, $D5, $D9
  .byte $D5, $E9, $D5, $FE, $D5, $1B, $D6, $31, $D6, $4B, $D6, $62, $D6, $74, $D6, $8B
  .byte $D6, $9F, $D6, $B6, $D6, $C6, $D6, $E0, $D6, $F3, $D6, $09, $D7, $21, $D7, $34
  .byte $D7
  .byte "You'd"
  .byte $0A
  .byte "better"
  .byte $0A
  .byte "drop out"
  .byte $00
  .byte "Get out"
  .byte $0A
  .byte "while ye"
  .byte $0A, $63, $61, $6E, $00
  .byte "This"
  .byte $0A
  .byte "hand'll"
  .byte $0A
  .byte "win it"
  .byte $00, $0A
  .byte "Raise!"
  .byte $00
  .byte "Let's"
  .byte $0A, $0A
  .byte "see 'em"
  .byte $00, $0A
  .byte "I call"
  .byte $00, $0A
  .byte "I'm in!"
  .byte $00, $0A
  .byte "Call!"
  .byte $00
  .byte "I'm no"
  .byte $0A, $0A
  .byte "fool"
  .byte $00
  .byte "Too much"
  .byte $0A, $0A
  .byte "for me!"
  .byte $00
  .byte "This is"
  .byte $0A
  .byte "scary."
  .byte $0A
  .byte "I'm out!"
  .byte $00
  .byte "I can't"
  .byte $0A
  .byte "handle"
  .byte $0A
  .byte "this"
  .byte $00, $0A
  .byte "I'm out"
  .byte $00
  .byte "I'll"
  .byte $0A
  .byte "pull out"
  .byte $0A
  .byte "now..."
  .byte $00
  .byte "This"
  .byte $0A
  .byte "one's"
  .byte $0A
  .byte "mine!"
  .byte $00, $0A
  .byte "I win!"
  .byte $00
  .byte "Looks"
  .byte $0A
  .byte "like I"
  .byte $0A, $77, $69, $6E, $00
  .byte "I'm the"
  .byte $0A, $0A
  .byte "winner"
  .byte $00, $0A
  .byte "Well..."
  .byte $00, $0A
  .byte "Hmm..."
  .byte $00
  .byte "I can't"
  .byte $0A, $0A
  .byte "lose!"
  .byte $00
  .byte "Heh heh"
  .byte $0A, $0A
  .byte "heh!"
  .byte $00, $0A
  .byte "....."
  .byte $00, $0A
  .byte "Blast!"
  .byte $00
  .byte "What is"
  .byte $0A
  .byte "this, a"
  .byte $0A
  .byte "joke?"
  .byte $00
  .byte "Lost yer"
  .byte $0A
  .byte "sea legs"
  .byte $0A
  .byte "matey?"
  .byte $00
  .byte "You're"
  .byte $0A, $0A
  .byte "scared!"
  .byte $00
  .byte "Play"
  .byte $0A
  .byte "again"
  .byte $0A
  .byte "sometime"
  .byte $00
  .byte "Running"
  .byte $0A
  .byte "off with"
  .byte $0A
  .byte "yer loot"
  .byte $0A, $65, $68, $3F, $00
  .byte "Come"
  .byte $0A
  .byte "back"
  .byte $0A
  .byte "again"
  .byte $00
  .byte "That was"
  .byte $0A
  .byte "a good"
  .byte $0A
  .byte "game"
  .byte $00
  .byte "I can't"
  .byte $0A
  .byte "stop ye"
  .byte $0A
  .byte "if yer"
  .byte $0A
  .byte "going"
  .byte $00
  .byte "Now I'm"
  .byte $0A
  .byte "almost"
  .byte $0A
  .byte "broke!"
  .byte $00
  .byte "Ye can"
  .byte $0A
  .byte "never be"
  .byte $0A, $74, $6F, $6F, $0A
  .byte "rich!"
  .byte $00
  .byte "I'll"
  .byte $0A
  .byte "take my"
  .byte $0A
  .byte "leave"
  .byte $0A, $6E, $6F, $77, $00
  .byte "Quitting"
  .byte $0A
  .byte "already?"
  .byte $00
  .byte "Sorry,"
  .byte $0A
  .byte "but I'm"
  .byte $0A
  .byte "leaving"
  .byte $00
  .byte "Going"
  .byte $0A
  .byte "home so"
  .byte $0A
  .byte "soon?"
  .byte $00
  .byte "Blast!"
  .byte $0A
  .byte "I'm out"
  .byte $0A
  .byte "of gold"
  .byte $00
  .byte "Scared,"
  .byte $0A, $0A
  .byte "matey?"
  .byte $00
  .byte "Well,"
  .byte $0A
  .byte "ye took"
  .byte $0A, $79, $65, $72, $0A
  .byte "chances"
  .byte $00
  .byte "You're a"
  .byte $0A, $0A
  .byte "weakling"
  .byte $00
  .byte "That's"
  .byte $0A
  .byte "all I"
  .byte $0A
  .byte "can take"
  .byte $00
  .byte "Ye play"
  .byte $0A
  .byte "too mean"
  .byte $0A
  .byte "for me"
  .byte $00
  .byte "That's"
  .byte $0A
  .byte "it, I'm"
  .byte $0A, $6F, $75, $74, $00
  .byte "That was"
  .byte $0A
  .byte "a fine"
  .byte $0A
  .byte "game"
  .byte $00, $01, $0B, $09, $03, $10, $0B, $1B, $43, $32, $00, $1B, $43, $32, $00
  .byte "C:GHI"
  .byte $00, $65, $D7, $72, $D7, $7F, $D7, $8C, $D7
  .byte "OTM@WCTMBWCE"
  .byte $00
  .byte "OTMAWCTMBWCE"
  .byte $00
  .byte "OTMDCK<WEWCE"
  .byte $00, $3B, $3D, $3E, $00
  .byte "TM WCE"
  .byte $00
  .byte "TM WCE"
  .byte $00
  .byte "TM WCE"
  .byte $00
  .byte "TM WCE"
  .byte $00
  .byte "TM WCE"
  .byte $00
  .byte "TM WCk9WCS5WCE"
  .byte $00
  .byte "K=WCE"
  .byte $00
  .byte "K>WCK=WCE"
  .byte $00
  .byte "TM?WCK;WCE"
  .byte $00
  .byte "TMFWCE"
  .byte $00
  .byte "K<WE"
  .byte $00
  .byte "TMJWE"
  .byte $00
  .byte "TMLWE"
  .byte $00
  .byte "We'd be fools to stay"
  .byte $0A
  .byte "here"
  .byte $00
  .byte "Let's return to the"
  .byte $0A
  .byte "ship"
  .byte $00, $00
