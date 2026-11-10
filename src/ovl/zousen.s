; overlay zousen, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp ZOUSEN_F_B003
ZOUSEN_F_B003:
  k_func 0
  k_call ZOUSEN_F_B310
  k_stla $F9A6
  k_return
ZOUSEN_F_B00F:
  k_func 0
  k_return
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
ZOUSEN_F_B027:
  k_func 8
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 0
  k_callx $9825, 2
  k_pushib 22
  k_pushiw $8F6D
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushiw $0126
  k_pushiw $01A0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 1
  k_callx RF_3D5C, 2
  k_call RF_4DD8
  k_pusha $F280
  k_pushiw $8478
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $48A6
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
  k_callx RL_21BE, 4
  k_return
ZOUSEN_F_B08B:
  k_func 0
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_call $97F5
  k_call $97BE
  k_pushi 1
  k_callx $9825, 2
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_return
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
  k_ldriw $EB92
  k_add
  k_derefb
  k_pushl
  k_pushiw $C458
  k_callx RF_3608, 6
  k_return
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
  k_pushiw $C473
  k_callx RF_3608, 6
  k_return
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
  k_pushiw $C48E
  k_callx RF_3608, 6
  k_return
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
  k_pushiw $C4A9
  k_callx RF_3608, 6
  k_return
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
  k_pushiw $C4C4
  k_callx RF_3608, 6
  k_return
ZOUSEN_F_B1EC:
  k_func 0
  k_pushib 16
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C4DD
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_pushl
  k_pushiw $C4F1
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
  k_pushiw $C4F6
  k_callx RF_3608, 4
  k_return
ZOUSEN_F_B22A:
  k_func 6
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -6
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
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
  k_pushiw $C4FA
  k_callx RF_3608, 4
  k_pushi 9
  k_pushi 15
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C503
  k_callx RF_2FB9, 4
  k_pushi 10
  k_pushi 15
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
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
  k_pushiw $C50E
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
  k_pushiw $C515
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
  k_pushiw $C518
  k_callx RF_3608, 6
  k_pusharg 11
  k_callx ZOUSEN_F_B1CC, 2
  k_return
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
  k_pushiw $C550
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 5
  k_pushiw $C520
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
  k_ldriw $C52A
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
ZOUSEN_F_B357:
  k_func 14
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $C566
  k_callx RF_4B44, 2
  k_ldla $E56D
  k_ldri 10
  k_ult
  k_jumpf ZOUSEN_L_B383
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C58F
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
  k_pushiw $C5A9
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
  k_pushiw $C5BC
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
  k_pushiw $C5D2
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -14
  k_ldl -14
  k_jumpt ZOUSEN_L_B3E9
  k_call RF_60B2
  k_pushiw $C5E5
  k_callx RF_4B44, 2
ZOUSEN_L_B3E9:
  k_ldl -14
  k_jumpf ZOUSEN_L_B383
  k_call RF_60B2
  k_pushiw $C5FE
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
  k_pushiw $C619
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw $C630
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
  k_pushiw $C634
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_B454
  k_pushib 30
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump ZOUSEN_L_B460
ZOUSEN_L_B454:
  k_pushib 30
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 1
  k_jumpt ZOUSEN_L_B404
ZOUSEN_L_B460:
  k_pushi 3
  k_callx RF_3D5C, 2
  k_call RF_4DD8
  k_ldli 10
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_ldli 1
  k_return
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
  k_pushiw $C660
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
  k_pushiw $C67B
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
  k_ldriw $EB92
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
  k_pushiw $C691
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
  k_pushiw $C6A2
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw $C644
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
  k_ldlba $EF69
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
  k_pushiw $C6B5
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
  k_pushiw $C6B7
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushib 25
  k_pushi 12
  k_callx RF_2F8F, 4
  k_pusha $E56D
  k_pushiw $C6D3
  k_callx RF_3619, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_ldlbf -9
  k_pushl
  k_pushi 1
  k_pushiw $C6E3
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
  k_ldla $E56D
  k_popr
  k_ult
  k_jumpf ZOUSEN_L_B5E9
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C6F1
  k_jump ZOUSEN_L_B6F5
ZOUSEN_L_B5E9:
  k_call RF_6080
  k_ldl -2
  k_ldr -4
  k_mul
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
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
  k_ldliw $C72E
  k_jump ZOUSEN_L_B616
ZOUSEN_L_B613:
  k_ldliw $C72F
ZOUSEN_L_B616:
  k_pushl
  k_push -4
  k_pushiw $C70B
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
  k_pushiw $C731
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
  k_pushiw $C733
  k_callx RF_2FB9, 4
  k_ldl -24
  k_addli 3
  k_derefb
  k_pushl
  k_ldlba $EF69
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
  k_ldla $E56D
  k_long $26
  k_long $15
  k_long $03
  k_longd $19, $0000EA60
  k_long $0A
  k_jumpf ZOUSEN_L_B696
  k_ldliw $EA60
ZOUSEN_L_B690:
  k_stla $E56D
  k_jump ZOUSEN_L_B6C5
ZOUSEN_L_B696:
  k_ldl -6
  k_swap
  k_ldla $E56D
  k_add
  k_jump ZOUSEN_L_B690
ZOUSEN_L_B69F:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C76A
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
  k_pushiw $C783
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
  k_pushiw $C785
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
  k_pushiw $C7A1
  k_callx RF_4B44, 2
ZOUSEN_L_B715:
  k_call RF_60B2
  k_pushiw $C7B7
  k_callx RF_4B44, 2
  k_jump ZOUSEN_L_B47E
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
  k_pushiw $C7D0
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
  k_pushiw $C7E9
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
  k_pushiw $C7FF
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_jumpt ZOUSEN_L_B793
  k_call RF_60B2
  k_pushiw $C812
  k_callx RF_4B44, 2
ZOUSEN_L_B793:
  k_ldl -2
  k_jumpf ZOUSEN_L_B727
  k_call RF_6080
  k_ldlba $EF69
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
  k_pusha $E56D
  k_pushiw $C82B
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
  k_ldliw $C85B
  k_jump ZOUSEN_L_B806
ZOUSEN_L_B803:
  k_ldliw $C85D
ZOUSEN_L_B806:
  k_pushl
  k_pushiw $C83B
  k_callx RF_3619, 6
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_jumpf ZOUSEN_L_B822
  k_ldl -2
  k_jumpf ZOUSEN_L_B850
  k_ldla $E56D
  k_ldr -18
  k_ult
  k_jumpf ZOUSEN_L_B850
ZOUSEN_L_B822:
  k_ldl -2
  k_jumpf ZOUSEN_L_B83B
  k_ldla $E56D
  k_ldr -18
  k_ult
  k_jumpf ZOUSEN_L_B83B
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C85F
  k_callx RF_4B44, 2
ZOUSEN_L_B83B:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $C879
  k_callx RF_4B44, 2
  k_call $9662
  k_ldli 0
  k_stl -2
ZOUSEN_L_B850:
  k_ldl -2
  k_jumpf ZOUSEN_L_B727
  k_call RF_60B2
  k_pushiw $C88F
  k_callx RF_4B44, 2
  k_leal -14
  k_pushl
  k_ldlbf -16
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
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
  k_ldla $E56D
  k_sub
  k_stla $E56D
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
  k_ldriw $EB92
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
  k_pushiw $C8DE
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stl -4
  k_jump ZOUSEN_L_B9D4
ZOUSEN_L_B9CC:
  k_pushi 1
  k_pushiw $C91D
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
  k_pushiw $C931
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
  k_pushiw $C947
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_jumpt ZOUSEN_L_BA2F
  k_call RF_60B2
  k_pushiw $C95A
  k_callx RF_4B44, 2
ZOUSEN_L_BA2F:
  k_ldl -2
  k_jumpf ZOUSEN_L_B9D4
  k_ldli 0
  k_stl -2
  k_ldla $E56D
  k_long $26
  k_longd $19, $000088B8
  k_long $2B
  k_jumpf ZOUSEN_L_BAAC
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_ldriw $0352
  k_gt
  k_jumpf ZOUSEN_L_BAAC
  k_pushib 100
  k_callx RF_3F3E, 2
  k_jumpt ZOUSEN_L_BAAC
  k_pushiw $03E8
  k_callx RF_3F3E, 2
  k_addliw $7530
  k_stl -20
  k_call RF_60B2
  k_push -20
  k_pushiw $C96E
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_BA9D
  k_ldl -20
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
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
  k_pushiw $C9A6
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
  k_ldriw $E9A6
  k_add
  k_stl -22
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
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
  k_pushiw $C9D8
  k_callx RF_2FB9, 4
  k_ldlbf -18
  k_ldri 2
  k_eq
  k_jumpf ZOUSEN_L_BB0C
  k_pushi 1
  k_pushiw $C9E6
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
  k_ldriw $C8AB
  k_add
  k_deref
  k_pushl
  k_pushiw $C9E8
  k_callx RF_3619, 4
  k_jump ZOUSEN_L_BB37
ZOUSEN_L_BB2F:
  k_pushi 1
  k_pushiw $C9EC
  k_callx RF_2FB9, 4
ZOUSEN_L_BB37:
  k_pushi 1
  k_pushiw $C9F3
  k_callx RF_2FB9, 4
ZOUSEN_L_BB3F:
  k_pushi 1
  k_pushiw $CA01
  k_callx RF_2FB9, 4
  k_pushi 15
  k_pushi 10
  k_pushi 6
  k_pushib 20
  k_callx $97B0, 8
  k_pushi 2
  k_pushiw $C8AB
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
  k_pusha $E56D
  k_pushiw $CA17
  k_callx RF_3619, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_push -20
  k_pushiw $CA27
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_BAD0
  k_ldla $E56D
  k_ldr -20
  k_ult
  k_jumpf ZOUSEN_L_BBBA
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $CA46
  k_callx RF_4B44, 2
  k_jump ZOUSEN_L_BAD0
ZOUSEN_L_BBBA:
  k_call RF_60B2
  k_pushiw $CA60
  k_callx RF_4B44, 2
  k_ldl -20
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
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
  k_pushiw $CAB2
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 4
  k_pushiw $CA80
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
  k_ldriw $CA88
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
ZOUSEN_F_BC65:
  k_func 4
  k_ldla $EE74
  k_ldriw $C350
  k_ult
  k_jumpf ZOUSEN_L_BCA1
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
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
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_ldra $EE74
  k_add
  k_stl -4
  k_pushiw $C350
  k_push -4
  k_callx RL_8962, 4
  k_stla $EE74
ZOUSEN_L_BCA1:
  k_return
ZOUSEN_F_BCA2:
  k_func 4
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
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
  k_callx RF_3F3E, 2
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
ZOUSEN_F_BCE2:
  k_func 14
  k_ldla $E56D
  k_jumpt ZOUSEN_L_BCFC
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $CAC4
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BCFC:
  k_ldlba $EF69
  k_ldri 3
  k_ult
  k_jumpf ZOUSEN_L_BD28
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldlba $EF69
  k_ldri 2
  k_eq
  k_jumpf ZOUSEN_L_BD1B
  k_ldliw $CB0C
  k_jump ZOUSEN_L_BD1E
ZOUSEN_L_BD1B:
  k_ldliw $CB13
ZOUSEN_L_BD1E:
  k_pushl
  k_pushiw $CADB
  k_callx RF_3619, 4
  k_ldli 0
  k_return
ZOUSEN_L_BD28:
  k_ldlba $EF69
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
  k_pushiw $CB18
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BD4B:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $CB54
  k_callx RF_4B44, 2
  k_ldlba $EF69
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
  k_ldla $E56D
  k_ldr -2
  k_ult
  k_jumpf ZOUSEN_L_BD78
  k_ldla $E56D
  k_stl -2
ZOUSEN_L_BD78:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_push -2
  k_pusha $E56D
  k_pushiw $CB86
  k_callx RF_3619, 6
  k_push -2
  k_pushi 1
  k_pushiw $CBB2
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
  k_pushiw $CBB3
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BDAE:
  k_push -4
  k_ldlba $EF69
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
  k_ldla $E56D
  k_sub
  k_stla $E56D
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
  k_pushiw $CBBF
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
  k_pushiw $CBD6
  k_jump ZOUSEN_L_BE08
ZOUSEN_L_BDFC:
  k_ldl -4
  k_ldriw $03E8
  k_udiv
  k_addlib 50
  k_stl -6
  k_pushi 1
  k_pushiw $CBF5
ZOUSEN_L_BE08:
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldlba $EF69
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
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_stl -8
  k_ldlba $EF69
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stl -10
  k_push -8
  k_pushi 0
  k_ldlba $EF69
  k_pushl
  k_callx RF_4353, 6
  k_ldlba $EF69
  k_ldriw $EE78
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
  k_ldriw $EB92
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
  k_pushiw $CC02
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BF78:
  k_ldlba $EF69
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
  k_pushiw $CC27
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_BFB3
  k_ldla $E56D
  k_ldr -2
  k_ult
  k_jumpf ZOUSEN_L_BFCA
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $CC55
  k_callx RF_4B44, 2
ZOUSEN_L_BFB3:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_6080
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $CC70
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_BFCA:
  k_ldl -2
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
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
  k_pushiw $CCA2
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
  k_pushiw $CCB4
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
  k_pushiw $CCCE
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
  k_pushiw $CCE3
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
  k_pushiw $CCF6
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
  k_ldriw $E9A6
  k_add
  k_derefb
  k_jumpt ZOUSEN_L_C169
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $CD0C
  k_jump ZOUSEN_L_C162
ZOUSEN_L_C157:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $CD29
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
  k_pushiw $CD4F
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
  k_ldlba $EF69
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
  k_pushiw $CD81
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_push -12
  k_pushiw $CDA4
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf ZOUSEN_L_C269
  k_ldli 1
  k_jump ZOUSEN_L_C28F
ZOUSEN_L_C269:
  k_ldlba $EE76
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
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
  k_pushiw $CDC1
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
  k_ldla $E56D
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
  k_ldla $E56D
  k_add
ZOUSEN_L_C2B9:
  k_stla $E56D
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
  k_pushiw $CDE7
  k_jump ZOUSEN_L_C162
ZOUSEN_L_C2D6:
  k_call RF_60B2
  k_pushiw $CE06
  k_callx RF_4B44, 2
  k_ldli 1
  k_stl -18
ZOUSEN_L_C2E2:
  k_ldl -18
  k_jumpf ZOUSEN_L_C0F4
  k_call ZOUSEN_F_B08B
  k_ldl -18
  k_return
ZOUSEN_F_C2EB:
  k_func 4
  k_ldli 0
  k_stla $F99A
  k_ldliw $0F00
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_ldriw $CE30
  k_add
  k_deref
  k_pushl
  k_pushib 24
  k_callx RL_21BE, 4
  k_stl -2
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_push -2
  k_pushib 26
  k_callx RL_21BE, 10
  k_push -4
  k_pushiw $D000
  k_push -2
  k_pushib 27
  k_callx RL_21BE, 8
  k_push -2
  k_pushib 25
  k_callx RL_21BE, 4
  k_ldlarg 13
  k_jumpf ZOUSEN_L_C331
  k_ldliw $D000
  k_callptr
ZOUSEN_L_C331:
  k_ldla $F99A
  k_return
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
  k_pushiw $CE67
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
  k_pushiw $CE7D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
ZOUSEN_L_C371:
  k_ldlba $EF69
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
  k_pushiw $CE99
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
  k_pushiw $CEC1
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 2
  k_pushiw $CE46
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
  k_ldriw $EB92
  k_add
  k_stln -25
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CED5
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
  k_pushiw $CEF1
  k_callx RF_2FB9, 4
  k_ldl -2
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
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
  .byte "Durability:        %3d/%3d"
  .byte $00
  .byte "Handling:          %3d/%3d"
  .byte $00
  .byte "Power:             %3d/%3d"
  .byte $00
  .byte "Cargo load:        %3d/%3d"
  .byte $00
  .byte "Total load:       %4d/%d"
  .byte $00
  .byte "Crewmen:           "
  .byte $00
  .byte "%3d/"
  .byte $00, $25, $33, $64, $00
  .byte "Ship: %s"
  .byte $00
  .byte "Navigator:"
  .byte $00
  .byte "Arms ("
  .byte $00, $29, $3A, $00
  .byte "%3d/%3d"
  .byte $00, $34, $C5, $38, $C5, $3D, $C5, $41, $C5, $49, $C5, $35, $C3, $AF, $C0, $29
  .byte $C0, $FC, $BB, $E2, $BC, $42, $75, $79, $00
  .byte "Sell"
  .byte $00, $46, $69, $78, $00
  .byte "Remodel"
  .byte $00
  .byte "Invest"
  .byte $00
  .byte "What brings you here?"
  .byte $00
  .byte "Renaming a ship will"
  .byte $0A
  .byte "cost 10 gold pieces"
  .byte $00
  .byte "We don't have enough"
  .byte $0A
  .byte "gold"
  .byte $00
  .byte "Rename which ship?"
  .byte $00
  .byte "Changed yer mind, eh?"
  .byte $00
  .byte "Is this the"
  .byte $0A
  .byte "vessel"
  .byte $00
  .byte "Then choose another"
  .byte $0A
  .byte "ship"
  .byte $00
  .byte "Give 'er a new name,"
  .byte $0A
  .byte "matey"
  .byte $00
  .byte "                      "
  .byte $00, $1B, $43, $32, $00
  .byte "Is this name OK"
  .byte $00, $4A, $C6, $50, $C6, $59, $C6
  .byte "Saker"
  .byte $00
  .byte "Culverin"
  .byte $00
  .byte "Cannon"
  .byte $00
  .byte "Load guns onto which"
  .byte $0A
  .byte "ship?"
  .byte $00
  .byte "Changed yer mind, eh?"
  .byte $00
  .byte "Is this the"
  .byte $0A
  .byte "ship"
  .byte $00
  .byte "What kind of guns?"
  .byte $00, $0A, $00
  .byte "s cost %d"
  .byte $0A, $0A
  .byte "gold pieces each"
  .byte $00
  .byte "Total gold: %5d"
  .byte $00
  .byte "Buy how many"
  .byte $0A, $00
  .byte "We don't have enough"
  .byte $0A
  .byte "gold"
  .byte $00
  .byte "All right, I'll load"
  .byte $0A
  .byte "%d more gun%s"
  .byte $00, $00, $3F, $00, $0A, $00
  .byte "s are loaded."
  .byte $0A, $0A
  .byte "I'll buy your old"
  .byte $0A, $0A
  .byte "guns at half price"
  .byte $1B, $57, $00, $0A
  .byte "You're now armed with"
  .byte $0A, $0A, $00, $73, $00
  .byte "We can't load any"
  .byte $0A
  .byte "more guns"
  .byte $00
  .byte "Changed yer mind, eh?"
  .byte $00
  .byte "Then choose another"
  .byte $0A
  .byte "ship"
  .byte $00
  .byte "Rig sails on which"
  .byte $0A
  .byte "ship?"
  .byte $00
  .byte "Changed yer mind, eh?"
  .byte $00
  .byte "Is this the"
  .byte $0A
  .byte "vessel"
  .byte $00
  .byte "Then choose another"
  .byte $0A
  .byte "ship"
  .byte $00
  .byte "Total gold: %5d"
  .byte $00
  .byte "%s-point sails cost"
  .byte $0A
  .byte "%d gold. OK"
  .byte $00, $33, $00, $34, $00
  .byte "We don't have enough"
  .byte $0A
  .byte "gold"
  .byte $00
  .byte "Changed yer mind, eh?"
  .byte $00
  .byte "All right, sails are"
  .byte $0A
  .byte "rigged"
  .byte $00, $B7, $C8, $BC, $C8, $C2, $C8, $CA, $C8, $CF, $C8, $D6, $C8
  .byte "Swan"
  .byte $00
  .byte "Eagle"
  .byte $00
  .byte "Unicorn"
  .byte $00
  .byte "Lion"
  .byte $00
  .byte "Dragon"
  .byte $00
  .byte "Neptune"
  .byte $00
  .byte "A good sailor always"
  .byte $0A
  .byte "needs a figurehead."
  .byte $0A
  .byte "Which ship is it for?"
  .byte $00
  .byte "Choose another ship"
  .byte $00
  .byte "Changed yer mind, eh?"
  .byte $00
  .byte "Is this the"
  .byte $0A
  .byte "vessel"
  .byte $00
  .byte "Then choose another"
  .byte $00
  .byte "A rare beauty came in"
  .byte $0A
  .byte "today. Will ye buy it"
  .byte $0A
  .byte "for %d gold"
  .byte $00
  .byte "Too bad. Ye don't"
  .byte $0A
  .byte "know true value when"
  .byte $0A
  .byte "ye see it!"
  .byte $00
  .byte "Now ye have a"
  .byte $00, $6E, $00, $0A, $25, $73, $00, $0A
  .byte "Venus"
  .byte $00
  .byte " figurehead."
  .byte $0A, $00
  .byte "Which one do ye want?"
  .byte $00
  .byte "Total gold: %5d"
  .byte $00
  .byte "That one costs %d"
  .byte $0A
  .byte "gold. Buy it"
  .byte $00
  .byte "We don't have enough"
  .byte $0A
  .byte "gold"
  .byte $00
  .byte "OK, the figurehead"
  .byte $0A
  .byte "is installed"
  .byte $00, $90, $CA, $95, $CA, $9B, $CA, $A6, $CA, $73, $B4, $22, $B7, $A7, $B9, $57
  .byte $B3
  .byte "Guns"
  .byte $00
  .byte "Sails"
  .byte $00
  .byte "Figurehead"
  .byte $00
  .byte "Rename ship"
  .byte $00
  .byte "What do you need?"
  .byte $00
  .byte "We don't have any gold"
  .byte $00
  .byte "You can't invest here"
  .byte $0A
  .byte "without the %s's"
  .byte $0A
  .byte "consent"
  .byte $1B, $57, $00
  .byte "Sultan"
  .byte $00
  .byte "King"
  .byte $00
  .byte "I appreciate the"
  .byte $0A
  .byte "gesture, but we don't"
  .byte $0A
  .byte "need more investment"
  .byte $00
  .byte "Something must"
  .byte $0A
  .byte "interest you if"
  .byte $0A
  .byte "you'll invest here"
  .byte $00
  .byte "We've got %d gold."
  .byte $0A
  .byte "How much shall we"
  .byte $0A
  .byte "invest"
  .byte $00, $00
  .byte "Stingy rat!"
  .byte $00
  .byte "Hmph! This is"
  .byte $0A
  .byte "nothing!"
  .byte $00
  .byte "Thank you, you're verygenerous"
  .byte $00
  .byte "Much obliged"
  .byte $00
  .byte "There's nothing to fixon this vessel"
  .byte $00
  .byte "It'll cost ye %d"
  .byte $0A
  .byte "gold to put her in"
  .byte $0A
  .byte "shape. OK"
  .byte $00
  .byte "We don't have enough"
  .byte $0A
  .byte "gold!"
  .byte $00
  .byte "No deal?  Well then,"
  .byte $0A
  .byte "take a look at anothervessel"
  .byte $00
  .byte "Fix which vessel?"
  .byte $00
  .byte "What?  Giving up"
  .byte $0A
  .byte "already?"
  .byte $00
  .byte "We've only one ship!"
  .byte $00
  .byte "Sell which vessel?"
  .byte $00
  .byte "Changed yer mind, eh?"
  .byte $00
  .byte "That's the captain's"
  .byte $0A
  .byte "vessel!"
  .byte $00
  .byte "The crew is still"
  .byte $0A
  .byte "bunked on that ship"
  .byte $00
  .byte "That ship still has"
  .byte $0A
  .byte "goods in the hold."
  .byte $0A
  .byte "OK to sell"
  .byte $00
  .byte "That ship has seen"
  .byte $0A
  .byte "some rough seas"
  .byte $00
  .byte "Will ye take %d"
  .byte $0A
  .byte "gold for her"
  .byte $00
  .byte "Ye drive a hard"
  .byte $0A
  .byte "bargain. How about"
  .byte $0A, $25, $64, $00
  .byte "It's a deal. Here's"
  .byte $0A
  .byte "your money"
  .byte $00
  .byte "Then do ye have any"
  .byte $0A
  .byte "other ships to sell?"
  .byte $00, $00, $34, $CE, $3D, $CE
  .byte "z_tyuuko"
  .byte $00
  .byte "z_sinzou"
  .byte $00, $4A, $CE, $58, $CE
  .byte "Buy used ship"
  .byte $00
  .byte "Build new ship"
  .byte $00
  .byte "You can't buy another"
  .byte $00
  .byte "There's no man to"
  .byte $0A
  .byte "navigate!"
  .byte $00
  .byte "Sorry, we don't build"
  .byte $0A
  .byte "ships around here"
  .byte $00
  .byte "What interests you?"
  .byte $00, $0A
  .byte "I'll be navigator of"
  .byte $0A, $0A
  .byte "the "
  .byte $00
  .byte " for now"
  .byte $00
