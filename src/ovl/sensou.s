; overlay sensou, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp SENSOU_F_9603
SENSOU_F_9603:
  k_func 0
  k_call SENSOU_F_9649
  k_return
SENSOU_F_960C:
  k_func 2
  k_ldlarg 11
  k_shl1
  k_ldriw SENSOU_D_A058
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
  k_pushiw $3A00
  k_pushiw $A500
  k_push -2
  k_pushib 27
  k_callx RL_21BE, 8
  k_push -2
  k_pushib 25
  k_callx RL_21BE, 4
  k_ldliw $A500
  k_callptr
  k_return
SENSOU_F_9649:
  k_func 0
  k_ldli 0
  k_stlba $F300
  k_pushi 1
  k_callx SENSOU_F_960C, 2
  k_pushi 0
  k_callx SENSOU_F_960C, 2
  k_pushi 1
  k_callx SENSOU_F_960C, 2
  k_return
SENSOU_F_9662:
  k_func 0
  k_pusha $F280
  k_ldlarg 17
  k_shl1
  k_pushl
  k_ldlarg 15
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_ldriw SENSOU_D_A06A
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
SENSOU_F_9682:
  k_func 0
  k_ldlarg 15
  k_ldri 2
  k_ult
  k_jumpf SENSOU_L_968E
  k_return
SENSOU_L_968E:
  k_ldlarg 15
  k_ldri 3
  k_ult
  k_jumpf SENSOU_L_96A2
  k_pusha $F280
  k_pushiw $0418
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 2
  k_jump SENSOU_L_96B2
SENSOU_L_96A2:
  k_pusha $F280
  k_ldlarg 15
  k_ldri 3
  k_shl
  k_ldriw $0408
  k_add
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
SENSOU_L_96B2:
  k_callx RF_3DF1, 14
  k_return
SENSOU_F_96B7:
  k_func 0
  k_ldlarg 11
  k_ldra $F302
  k_ne
  k_jumpf SENSOU_L_9772
  k_pushib 28
  k_pushiw RD_9220
  k_pushi 0
  k_pushib 40
  k_pushi 4
  k_pusharg 11
  k_pushiw $0108
  k_pushi 2
  k_pushi 0
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 28
  k_pushiw RD_92A0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $010C
  k_pushi 2
  k_pushi 1
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 28
  k_pushiw RD_9320
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0110
  k_pushi 2
  k_pushi 2
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 28
  k_pushiw RD_93A0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0114
  k_pushi 2
  k_pushi 3
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 28
  k_pushiw RD_9420
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0118
  k_pushi 2
  k_pushi 4
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 28
  k_pushiw RD_94A0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $011C
  k_pushi 2
  k_pushi 5
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 28
  k_pushiw RD_9520
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0120
  k_pushi 2
  k_pushi 6
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 28
  k_pushiw RD_95A0
  k_pushiw $00FF
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0124
  k_pushi 2
  k_pushi 7
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldlarg 11
  k_stla $F302
SENSOU_L_9772:
  k_return
SENSOU_F_9773:
  k_func 2
  k_ldlarg 11
  k_jumpt SENSOU_L_9780
  k_ldli 0
  k_jump SENSOU_L_9784
SENSOU_L_9780:
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
SENSOU_L_9784:
  k_stl -2
  k_pushi 0
  k_ldl -2
  k_shl1
  k_ldriw SENSOU_D_A09A
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_return
SENSOU_F_9793:
  k_func 0
  k_pushiw $2000
  k_pushi 2
  k_pushib 19
  k_pushib 26
  k_pushi 12
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 1
  k_pushiw SENSOU_D_A0C0
  k_callx RF_2FB9, 4
  k_pushib 26
  k_pushi 13
  k_callx RF_2F8F, 4
  k_return
SENSOU_F_97B7:
  k_func 2
  k_ldliw $3B22
  k_stl -2
  k_ldla $F304
  k_shl1
  k_inc
  k_ldri 3
  k_shl
  k_stla $F306
  k_ldla $F308
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENSOU_L_97DB
  k_ldli 3
  k_jump SENSOU_L_97DC
SENSOU_L_97DB:
  k_ldli 2
SENSOU_L_97DC:
  k_popr
  k_add
  k_ldri 3
  k_shl
  k_dec
  k_stla $F30A
  k_pushi 1
  k_pushi 2
  k_push -2
  k_pusha $F30A
  k_pusha $F306
  k_pushib 20
  k_pushi 10
  k_callx RL_21BE, 14
  k_return
SENSOU_F_97F5:
  k_func 0
  k_pushi 0
  k_pushi 2
  k_pushiw $3100
  k_pusha $F30A
  k_pusha $F306
  k_pushib 20
  k_pushi 10
  k_callx RL_21BE, 14
  k_pushi 1
  k_pushib 20
  k_pushib 58
  k_callx RL_21BE, 6
  k_return
SENSOU_F_9816:
  k_func 4
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -4
  k_pushib 24
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushiw SENSOU_D_A0CA
  k_callx RF_3608, 2
  k_pushib 24
  k_pushib 25
  k_callx RF_2F8F, 4
  k_pushiw SENSOU_D_A0CF
  k_callx RF_3608, 2
  k_pushib 25
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldl -2
  k_derefb
  k_pushl
  k_pushiw SENSOU_D_A0D4
  k_callx RF_3608, 4
  k_pushib 25
  k_pushib 25
  k_callx RF_2F8F, 4
  k_ldl -4
  k_derefb
  k_pushl
  k_pushiw SENSOU_D_A0D8
  k_callx RF_3608, 4
  k_pushib 26
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushiw SENSOU_D_A0DC
  k_callx RF_3608, 2
  k_pushib 26
  k_pushib 25
  k_callx RF_2F8F, 4
  k_pushiw SENSOU_D_A0E1
  k_callx RF_3608, 2
  k_pushib 27
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldl -2
  k_addli 4
  k_deref
  k_pushl
  k_pushiw SENSOU_D_A0E6
  k_callx RF_3608, 4
  k_pushib 27
  k_pushib 25
  k_callx RF_2F8F, 4
  k_ldl -4
  k_addli 4
  k_deref
  k_pushl
  k_pushiw SENSOU_D_A0EA
  k_callx RF_3608, 4
  k_return
SENSOU_F_98AE:
  k_func 8
  k_call SENSOU_F_9793
  k_pushi 6
  k_pushib 30
  k_pushib 22
  k_pushi 1
  k_callx RF_4D41, 8
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushi 0
  k_pushi 6
  k_pushib 30
  k_pushib 22
  k_pushi 1
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 10
  k_pushi 10
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushi 1
  k_callx SENSOU_F_96B7, 2
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -4
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -6
  k_ldlarg 11
  k_ldri 5
  k_udiv
  k_stl -2
  k_pushib 22
  k_pushi 2
  k_callx RF_2F8F, 4
  k_ldl -2
  k_jumpt SENSOU_L_991C
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_stl -8
  k_push -8
  k_callx RF_40DE, 2
  k_jump SENSOU_L_9921
SENSOU_L_991C:
  k_push -2
  k_callx SENSOU_F_9773, 2
SENSOU_L_9921:
  k_ldlarg 13
  k_ldri 5
  k_udiv
  k_stl -2
  k_pushib 22
  k_pushib 22
  k_callx RF_2F8F, 4
  k_ldl -2
  k_jumpt SENSOU_L_9944
  k_ldl -6
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_stl -8
  k_push -8
  k_callx RF_40DE, 2
  k_jump SENSOU_L_9949
SENSOU_L_9944:
  k_push -2
  k_callx SENSOU_F_9773, 2
SENSOU_L_9949:
  k_pusharg 13
  k_pusharg 11
  k_callx SENSOU_F_9816, 4
  k_ldlarg 15
  k_jumpf SENSOU_L_9972
  k_pusha $F280
  k_pushiw $1510
  k_pushi 6
  k_pushi 4
  k_pushib 22
  k_pushi 10
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $14E0
  k_pushi 6
  k_pushi 4
  k_pushib 22
  k_pushib 18
  k_jump SENSOU_L_998E
SENSOU_L_9972:
  k_pusha $F280
  k_pushiw $16E4
  k_pushi 6
  k_pushi 11
  k_pushib 22
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $1660
  k_pushi 6
  k_pushi 11
  k_pushib 22
  k_pushib 20
SENSOU_L_998E:
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
SENSOU_F_9994:
  k_func 12
  k_ldlarg 15
  k_ldri 1
  k_eq
  k_jumpf SENSOU_L_99BA
  k_ldli 10
  k_swap
  k_ldlarg 17
  k_umod
  k_stlarg 17
  k_pusha $F280
  k_ldlarg 17
  k_shl1
  k_ldriw $05D8
  k_add
  k_pushl
  k_pushi 1
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_jump SENSOU_L_9A46
SENSOU_L_99BA:
  k_ldlarg 15
  k_ldri 1
  k_ugt
  k_jumpf SENSOU_L_9A46
  k_ldlarg 15
  k_ldri 2
  k_ule
  k_jumpf SENSOU_L_9A46
  k_pusharg 15
  k_pushiw $00FF
  k_leal -8
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldlarg 15
  k_jump SENSOU_L_99EC
SENSOU_L_99DA:
  k_leal -8
  k_pushl
  k_ldl -12
  k_popr
  k_add
  k_pushl
  k_ldlarg 17
  k_ldri 10
  k_umod
  k_popstoreb
  k_ldli 10
  k_swap
  k_ldlarg 17
  k_udiv
  k_stlarg 17
  k_ldl -12
SENSOU_L_99EC:
  k_dec
  k_stl -12
  k_ldlarg 17
  k_jumpf SENSOU_L_99F9
  k_ldl -12
  k_ldrib -1
  k_gt
  k_jumpt SENSOU_L_99DA
SENSOU_L_99F9:
  k_leal -4
  k_stl -6
  k_ldli 0
  k_jump SENSOU_L_9A2F
SENSOU_L_9A01:
  k_leal -8
  k_pushl
  k_ldl -12
  k_popr
  k_add
  k_derefb
  k_stl -10
  k_ldl -10
  k_ldriw $00FF
  k_eq
  k_jumpf SENSOU_L_9A18
  k_push -6
  k_ldli 0
  k_popstore
  k_jump SENSOU_L_9A2A
SENSOU_L_9A18:
  k_pushi 2
  k_push -6
  k_pushib 126
  k_ldl -10
  k_shl1
  k_ldriw $05D8
  k_add
  k_pushl
  k_pusha $F280
  k_callx RF_3FC8, 10
SENSOU_L_9A2A:
  k_ldl -6
  k_addli 2
  k_stl -6
  k_ldl -12
  k_inc
SENSOU_L_9A2F:
  k_stl -12
  k_ldl -12
  k_ldrarg 15
  k_ult
  k_jumpt SENSOU_L_9A01
  k_pushib 126
  k_leal -4
  k_pushl
  k_pushi 1
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
SENSOU_L_9A46:
  k_return
SENSOU_F_9A47:
  k_func 2
  k_ldla $F30C
  k_jumpf SENSOU_L_9A92
  k_ldlba $EA8C
  k_ldri 2
  k_ugt
  k_jumpf SENSOU_L_9A6A
  k_ldlba $EA8C
  k_ldri 9
  k_ult
  k_jumpf SENSOU_L_9A6A
  k_ldlba $EF84
  k_ldri 4
  k_shr
  k_jump SENSOU_L_9A6D
SENSOU_L_9A6A:
  k_ldlba $EF84
SENSOU_L_9A6D:
  k_ldri 15
  k_and
  k_stl -2
  k_pusha $F280
  k_ldl -2
  k_ldri 3
  k_shl
  k_ldriw $0E10
  k_add
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pushiw $00BF
  k_pushib 16
  k_pushi 10
  k_callx RF_3E5A, 14
  k_pusha $F30C
  k_pushi 1
  k_pushib 22
  k_pushi 5
  k_callx SENSOU_F_9994, 8
SENSOU_L_9A92:
  k_return
SENSOU_F_9A93:
  k_func 2
  k_pushiw $00AD
  k_ldliw $00CF
  k_ldrarg 11
  k_sub
  k_pushl
  k_callx $894B, 4
  k_stl -2
  k_pusha $F280
  k_pushiw $0E08
  k_pushi 2
  k_pushi 2
  k_push -2
  k_pushib 64
  k_pushi 14
  k_callx RF_3E5A, 14
  k_return
SENSOU_F_9AB7:
  k_func 2
  k_pusharg 13
  k_pusharg 11
  k_callx SENSOU_F_9816, 4
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_ldlarg 15
  k_jumpf SENSOU_L_9AE0
  k_ldl -2
  k_derefb
  k_jumpt SENSOU_L_9AD9
  k_call SENSOU_F_9D39
  k_jump SENSOU_L_9AE8
SENSOU_L_9AD9:
  k_pushi 1
  k_pushiw SENSOU_D_A0EE
  k_jump SENSOU_L_9AE4
SENSOU_L_9AE0:
  k_pushi 1
  k_pushiw SENSOU_D_A0F1
SENSOU_L_9AE4:
  k_callx RF_2FB9, 4
SENSOU_L_9AE8:
  k_call SENSOU_F_97F5
  k_call RF_229B
  k_pushi 6
  k_pushib 30
  k_pushib 22
  k_pushi 1
  k_callx RF_4D8B, 8
  k_call SENSOU_F_9A47
  k_pusha $F30E
  k_callx SENSOU_F_9A93, 2
  k_return
SENSOU_F_9B03:
  k_func 0
  k_ldlarg 11
  k_ldriw $0094
  k_ult
  k_jumpf SENSOU_L_9B1A
  k_ldlarg 13
  k_ldriw $00D8
  k_ult
  k_jumpf SENSOU_L_9B1A
  k_ldli 1
  k_return
SENSOU_L_9B1A:
  k_ldli 0
  k_return
SENSOU_F_9B1C:
  k_func 2
  k_ldli 0
  k_stl -2
SENSOU_L_9B23:
  k_ldl -2
  k_shl1
  k_ldrarg 11
  k_add
  k_deref
  k_ldri 1
  k_eq
  k_jumpf SENSOU_L_9B2F
  k_ldli 0
  k_return
SENSOU_L_9B2F:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt SENSOU_L_9B23
  k_ldli 1
  k_return
SENSOU_F_9B3A:
  k_func 24
  k_ldli 0
  k_stl -2
SENSOU_L_9B41:
  k_ldli 0
  k_stl -4
SENSOU_L_9B43:
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldliw $00CF
  k_popstore
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldlib 104
  k_popstore
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt SENSOU_L_9B43
  k_pushib 25
  k_callx RF_21CA, 2
  k_ldli 0
SENSOU_L_9B6C:
  k_stl -6
  k_ldli 0
  k_stl -4
SENSOU_L_9B6F:
  k_leal -24
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_callx SENSOU_F_9B03, 4
  k_popstore
  k_leal -24
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_jumpf SENSOU_L_9BC2
  k_pushi 0
  k_pusha SENSOU_D_A0F4
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldl -4
  k_addlib 48
  k_pushl
  k_pushib 19
  k_callx RL_21BE, 12
  k_jump SENSOU_L_9BCD
SENSOU_L_9BC2:
  k_pushi 1
  k_ldl -4
  k_addlib 48
  k_pushl
  k_pushib 58
  k_callx RL_21BE, 6
SENSOU_L_9BCD:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt SENSOU_L_9B6F
  k_leal -24
  k_pushl
  k_callx SENSOU_F_9B1C, 2
  k_jumpt SENSOU_L_9CB7
  k_ldl -6
  k_ldrib 16
  k_ult
  k_jumpf SENSOU_L_9C3E
  k_ldli 0
  k_stl -4
SENSOU_L_9BEA:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf SENSOU_L_9C00
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_inc
  k_jump SENSOU_L_9C0D
SENSOU_L_9C00:
  k_pushi 2
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
SENSOU_L_9C0D:
  k_popstore
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf SENSOU_L_9C24
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_dec
  k_jump SENSOU_L_9C31
SENSOU_L_9C24:
  k_pushi 2
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_sub
SENSOU_L_9C31:
  k_popstore
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt SENSOU_L_9BEA
  k_jump SENSOU_L_9CB2
SENSOU_L_9C3E:
  k_ldl -6
  k_ldrib 24
  k_ult
  k_jumpf SENSOU_L_9C5F
  k_ldli 0
  k_stl -4
SENSOU_L_9C47:
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt SENSOU_L_9C47
  k_jump SENSOU_L_9CB2
SENSOU_L_9C5F:
  k_ldli 0
  k_stl -4
SENSOU_L_9C61:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf SENSOU_L_9C77
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_inc
  k_jump SENSOU_L_9C84
SENSOU_L_9C77:
  k_pushi 2
  k_leal -12
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
SENSOU_L_9C84:
  k_popstore
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf SENSOU_L_9C9B
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_deref
  k_inc
  k_jump SENSOU_L_9CA8
SENSOU_L_9C9B:
  k_pushi 2
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
SENSOU_L_9CA8:
  k_popstore
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt SENSOU_L_9C61
SENSOU_L_9CB2:
  k_ldl -6
  k_inc
  k_jump SENSOU_L_9B6C
SENSOU_L_9CB7:
  k_pushi 4
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $1540
  k_pushi 6
  k_pushi 6
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 4
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $1588
  k_pushi 6
  k_pushi 6
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 4
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $15D0
  k_pushi 6
  k_pushi 6
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 4
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $1618
  k_pushi 6
  k_pushi 6
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 4
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $1540
  k_pushi 6
  k_pushi 6
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 2
  k_ult
  k_jumpt SENSOU_L_9B41
  k_return
SENSOU_F_9D39:
  k_func 20
  k_ldliw $0080
  k_stl -2
  k_ldli 0
  k_stl -20
SENSOU_L_9D44:
  k_leal -14
  k_pushl
  k_ldl -20
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldl -20
  k_addlib 22
  k_ldri 3
  k_shl
  k_popstore
  k_ldl -20
  k_inc
  k_stl -20
  k_ldl -20
  k_ldri 6
  k_lt
  k_jumpt SENSOU_L_9D44
  k_ldlib 48
  k_stl -16
  k_ldli 0
  k_stl -20
SENSOU_L_9D61:
  k_pusha $F280
  k_ldl -20
  k_shl1
  k_ldriw SENSOU_D_A0F6
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 6
  k_leal -14
  k_pushl
  k_ldl -20
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_push -2
  k_push -16
  k_callx RF_3E5A, 14
  k_ldli 6
  k_swap
  k_ldl -16
  k_add
  k_stl -16
  k_ldl -20
  k_inc
  k_stl -20
  k_ldl -20
  k_ldri 6
  k_lt
  k_jumpt SENSOU_L_9D61
  k_pushi 0
  k_pushi 6
  k_pushi 6
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_callx SENSOU_F_96B7, 2
  k_pushi 0
  k_pushib 16
  k_pushiw $00EF
  k_pushiw $00B0
  k_pushiw $00DA
  k_pushiw $0080
  k_pushib 38
  k_callx RL_21BE, 14
  k_jump SENSOU_L_9E10
SENSOU_L_9DB6:
  k_ldli 4
  k_stl -18
  k_ldli 0
  k_stl -20
SENSOU_L_9DBA:
  k_push -18
  k_leal -14
  k_pushl
  k_ldl -20
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldl -20
  k_inc
  k_stl -20
  k_ldl -20
  k_ldri 5
  k_lt
  k_jumpt SENSOU_L_9DBA
  k_ldlib 48
  k_stl -16
  k_ldli 0
  k_stl -20
SENSOU_L_9DD6:
  k_ldl -14
  k_ldriw $00E0
  k_ult
  k_jumpf SENSOU_L_9DFB
  k_pusha $F280
  k_ldl -20
  k_shl1
  k_ldriw SENSOU_D_A0F6
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 6
  k_leal -14
  k_pushl
  k_ldl -20
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_push -2
  k_push -16
  k_callx RF_3E5A, 14
SENSOU_L_9DFB:
  k_ldli 6
  k_swap
  k_ldl -16
  k_add
  k_stl -16
  k_ldl -20
  k_inc
  k_stl -20
  k_ldl -20
  k_ldri 5
  k_lt
  k_jumpt SENSOU_L_9DD6
  k_pushi 8
  k_pushib 16
  k_callx RL_21BE, 4
SENSOU_L_9E10:
  k_ldl -14
  k_ldriw $00D8
  k_ult
  k_jumpt SENSOU_L_9DB6
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushi 8
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushi 8
  k_pushib 16
  k_callx RL_21BE, 4
  k_return
SENSOU_F_9E32:
  k_func 2
  k_pusha $F280
  k_pushiw $176C
  k_pushi 1
  k_pushi 2
  k_pushib 26
  k_pushi 10
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldli 0
  k_stl -2
SENSOU_L_9E49:
  k_pusha $F280
  k_pushiw $1770
  k_pushi 1
  k_pushi 1
  k_pushib 26
  k_ldl -2
  k_addli 12
  k_pushl
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt SENSOU_L_9E49
  k_pusha $F280
  k_pushiw $1768
  k_pushi 1
  k_pushi 2
  k_pushib 26
  k_pushib 20
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $1772
  k_pushi 3
  k_pushi 2
  k_pushib 23
  k_pushi 12
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $1796
  k_pushi 3
  k_pushi 2
  k_pushib 23
  k_pushib 18
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $177E
  k_pushi 3
  k_pushi 2
  k_pushib 23
  k_pushi 13
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $17A2
  k_pushi 3
  k_pushi 2
  k_pushib 23
  k_pushib 17
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $178A
  k_pushi 3
  k_pushi 2
  k_pushib 23
  k_pushi 14
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $17AE
  k_pushi 3
  k_pushi 2
  k_pushib 23
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 0
  k_stl -2
SENSOU_L_9F0B:
  k_pushib 23
  k_callx RF_21CA, 2
  k_pusha $F280
  k_pushiw $184C
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $184E
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushi 14
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $17BA
  k_pushi 3
  k_pushi 8
  k_pushib 23
  k_pushi 12
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 0
  k_pushi 1
  k_pushi 6
  k_pushib 22
  k_pushi 13
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $F280
  k_pushiw $184E
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushi 15
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $184C
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushib 17
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $184A
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushi 14
  k_pushi 1
  k_callx RF_3DF1, 14
  k_call RF_229B
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $17EA
  k_pushi 3
  k_pushi 8
  k_pushib 23
  k_pushi 12
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushib 23
  k_callx RF_21CA, 2
  k_pushi 0
  k_pushi 1
  k_pushi 6
  k_pushib 22
  k_pushi 13
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $F280
  k_pushiw $184A
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushi 15
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $184E
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $184C
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushi 14
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $181A
  k_pushi 3
  k_pushi 8
  k_pushib 23
  k_pushi 12
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 0
  k_pushi 1
  k_pushi 6
  k_pushib 22
  k_pushi 13
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $F280
  k_pushiw $184C
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushi 15
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $184A
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $184E
  k_pushi 1
  k_pushi 1
  k_pushib 22
  k_pushib 17
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 0
  k_pushi 1
  k_pushi 6
  k_pushib 22
  k_pushi 13
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_call RF_229B
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt SENSOU_L_9F0B
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_return
SENSOU_D_A058:
  .word SENSOU_D_A05C, SENSOU_D_A064
SENSOU_D_A05C:
  .byte "senmain", $00
SENSOU_D_A064:
  .byte "senfe", $00
SENSOU_D_A06A:
  .byte $C8, $04, $D8, $04, $E0, $04, $D0, $04, $F0, $04, $E8, $04, $98, $04, $A8, $04
  .byte $B0, $04, $A0, $04, $C0, $04, $B8, $04, $28, $05, $38, $05, $40, $05, $30, $05
  .byte $50, $05, $48, $05, $F8, $04, $08, $05, $10, $05, $00, $05, $20, $05, $18, $05
SENSOU_D_A09A:
  .word SENSOU_D_A0A2, SENSOU_D_A0AB, SENSOU_D_A0B1, SENSOU_D_A0B9
SENSOU_D_A0A2:
  .byte "Portugal", $00
SENSOU_D_A0AB:
  .byte "Spain", $00
SENSOU_D_A0B1:
  .byte "Turkish", $00
SENSOU_D_A0B9:
  .byte "Pirate", $00
SENSOU_D_A0C0:
  .byte $1B, $52, $2D, $1B
  .byte "E>", $1B, "C0", $00
SENSOU_D_A0CA:
  .byte "Hull", $00
SENSOU_D_A0CF:
  .byte "Hull", $00
SENSOU_D_A0D4:
  .byte "%3d", $00
SENSOU_D_A0D8:
  .byte "%3d", $00
SENSOU_D_A0DC:
  .byte "Crew", $00
SENSOU_D_A0E1:
  .byte "Crew", $00
SENSOU_D_A0E6:
  .byte "%3d", $00
SENSOU_D_A0EA:
  .byte "%3d", $00
SENSOU_D_A0EE:
  .byte $1B, $57, $00
SENSOU_D_A0F1:
  .byte $1B, $57, $00
SENSOU_D_A0F4:
  .byte $58, $29
SENSOU_D_A0F6:
  .byte $BA, $18, $C6, $18, $D2, $18, $DE, $18, $EA, $18, $F6, $18
