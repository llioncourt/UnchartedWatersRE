; overlay senfe, runs at $7E:A500
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp SENFE_F_A503
SENFE_F_A503:
  k_func 0
  k_ldlba $F300
  k_jumpt SENFE_L_A519
  k_ldlba $F16A
  k_pushl
  k_callx SENFE_F_AE34, 2
  k_jump SENFE_L_A521
SENFE_L_A519:
  k_ldlba $F16A
  k_pushl
  k_callx SENFE_F_BB60, 2
SENFE_L_A521:
  k_return
SENFE_F_A522:
  k_func 0
  k_ldlarg 11
  k_ldrib 16
  k_uge
  k_jumpf SENFE_L_A530
  k_ldli 0
  k_return
SENFE_L_A530:
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_umod
  k_ldri 2
  k_ule
  k_jumpf SENFE_L_A53D
  k_ldli 2
  k_jump SENFE_L_A53E
SENFE_L_A53D:
  k_ldli 1
SENFE_L_A53E:
  k_return
SENFE_F_A53F:
  k_func 14
  k_ldlarg 11
  k_jumpf SENFE_L_A54C
  k_ldlarg 13
  k_jump SENFE_L_A54D
SENFE_L_A54C:
  k_ldlarg 11
SENFE_L_A54D:
  k_stl -14
  k_pushiw $F41E
  k_push -14
  k_callx RL_8502, 4
  k_stla $F428
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENFE_L_A5EE
SENFE_L_A565:
  k_ldl -2
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_derefb
  k_stl -12
  k_ldl -12
  k_jumpf SENFE_L_A5EB
  k_ldl -12
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_derefb
  k_pushl
  k_ldl -12
  k_ldri 10
  k_mul
  k_ldriw $EAC4
  k_add
  k_derefb
  k_pushl
  k_ldliw $0082
  k_popr
  k_sub
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_ugt
  k_jumpf SENFE_L_A5EB
  k_pushiw $00BF
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldliw $E99C
  k_stl -6
  k_stl -8
  k_addli 10
  k_stl -10
  k_jump SENFE_L_A5C0
SENFE_L_A5AF:
  k_ldl -6
  k_derefb
  k_ldr -12
  k_ne
  k_jumpf SENFE_L_A5BD
  k_push -8
  k_ldl -6
  k_derefb
  k_popstoreb
  k_ldl -8
  k_inc
  k_stl -8
SENFE_L_A5BD:
  k_ldl -6
  k_inc
  k_stl -6
SENFE_L_A5C0:
  k_ldl -6
  k_ldr -10
  k_ult
  k_jumpf SENFE_L_A5CF
  k_ldl -6
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpt SENFE_L_A5AF
SENFE_L_A5CF:
  k_push -8
  k_ldliw $00FF
  k_popstoreb
  k_ldl -12
  k_dec
  k_shl1
  k_ldriw $E971
  k_add
  k_pushl
  k_pushib 25
  k_callx RF_3F3E, 2
  k_addli 4
  k_popstoreb
  k_ldlarg 15
  k_inc
  k_stlarg 15
  k_dec
  k_pushl
  k_ldl -12
  k_popstoreb
SENFE_L_A5EB:
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_A5EE:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENFE_L_A565
  k_return
SENFE_F_A5F5:
  k_func 6
  k_ldliw $F397
  k_stl -4
  k_addliw $0087
  k_stl -6
  k_jump SENFE_L_A61B
SENFE_L_A605:
  k_push -4
  k_pushi 2
  k_callx RF_3F3E, 2
  k_popstoreb
  k_pushib 30
  k_callx RF_3F3E, 2
  k_jumpt SENFE_L_A618
  k_push -4
  k_ldli 3
  k_popstoreb
SENFE_L_A618:
  k_ldl -4
  k_inc
  k_stl -4
SENFE_L_A61B:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt SENFE_L_A605
  k_return
SENFE_F_A622:
  k_func 10
  k_ldli 0
  k_stl -8
SENFE_L_A629:
  k_ldli 0
  k_stl -6
SENFE_L_A62B:
  k_ldl -8
  k_ldri 1
  k_eq
  k_jumpf SENFE_L_A637
  k_ldl -6
  k_ldri 1
  k_eq
  k_jumpt SENFE_L_A680
SENFE_L_A637:
  k_pushi 10
  k_callx RF_3F3E, 2
  k_jumpt SENFE_L_A680
  k_pushi 8
  k_callx RF_3F3E, 2
  k_stl -10
  k_ldli 0
  k_stl -4
SENFE_L_A647:
  k_ldli 0
  k_stl -2
SENFE_L_A649:
  k_ldl -6
  k_ldri 5
  k_mul
  k_pushl
  k_ldl -8
  k_ldri 3
  k_mul
  k_ldr -4
  k_add
  k_ldri 15
  k_mul
  k_popr
  k_add
  k_ldr -2
  k_add
  k_ldriw $F397
  k_add
  k_pushl
  k_ldl -4
  k_ldri 5
  k_mul
  k_pushl
  k_ldl -10
  k_ldri 15
  k_mul
  k_popr
  k_add
  k_ldr -2
  k_add
  k_ldriw $BBDE
  k_add
  k_derefb
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt SENFE_L_A649
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt SENFE_L_A647
SENFE_L_A680:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 3
  k_ult
  k_jumpt SENFE_L_A62B
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -8
  k_ldri 3
  k_ult
  k_jumpt SENFE_L_A629
  k_return
SENFE_F_A693:
  k_func 6
  k_ldliw $F310
  k_stl -6
  k_ldliw $F397
  k_stl -2
  k_addliw $0087
  k_stl -4
  k_jump SENFE_L_A6C3
SENFE_L_A6A7:
  k_ldl -2
  k_derefb
  k_switch -2, 4, SENFE_L_A6BD
    .word SENFE_L_A6B8, SENFE_L_A6B8, SENFE_L_A6B8, SENFE_L_A6B8
SENFE_L_A6B8:
  k_push -6
  k_ldliw $00FF
  k_popstoreb
SENFE_L_A6BD:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_A6C3:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENFE_L_A6A7
  k_return
SENFE_F_A6CA:
  k_func 8
  k_ldlba $EA8C
  k_ldri 2
  k_ugt
  k_jumpf SENFE_L_A6E7
  k_ldlba $EA8C
  k_ldri 9
  k_ult
  k_jumpf SENFE_L_A6E7
  k_ldlba $EF85
  k_ldri 4
  k_shr
  k_jump SENFE_L_A6EA
SENFE_L_A6E7:
  k_ldlba $EF85
SENFE_L_A6EA:
  k_ldri 15
  k_and
  k_inc
  k_stla $F30C
  k_ldlba $EA8C
  k_ldri 2
  k_ugt
  k_jumpf SENFE_L_A708
  k_ldlba $EA8C
  k_ldri 9
  k_ult
  k_jumpf SENFE_L_A708
  k_ldlba $EF84
  k_ldri 4
  k_shr
  k_jump SENFE_L_A70B
SENFE_L_A708:
  k_ldlba $EF84
SENFE_L_A70B:
  k_ldri 15
  k_and
  k_ldri 5
  k_mul
  k_ldri 7
  k_udiv
  k_stl -8
  k_ldl -8
  k_jump SENFE_L_A73C
SENFE_L_A716:
  k_ldl -6
  k_ldri 6
  k_smod
  k_ldriw $F452
  k_add
  k_pushl
  k_ldl -6
  k_ldr -8
  k_sub
  k_ldri 3
  k_le
  k_jumpf SENFE_L_A72D
  k_ldl -6
  k_ldr -8
  k_sub
  k_inc
  k_jump SENFE_L_A739
SENFE_L_A72D:
  k_ldl -8
  k_addli 4
  k_ldr -6
  k_eq
  k_jumpf SENFE_L_A738
  k_ldli 3
  k_jump SENFE_L_A739
SENFE_L_A738:
  k_ldli 2
SENFE_L_A739:
  k_popstoreb
  k_ldl -6
  k_inc
SENFE_L_A73C:
  k_stl -6
  k_ldl -8
  k_addli 6
  k_pushl
  k_ldl -6
  k_popr
  k_lt
  k_jumpt SENFE_L_A716
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E56C
  k_add
  k_derefb
  k_ldri 5
  k_mul
  k_ldri 7
  k_udiv
  k_ldri 6
  k_umod
  k_stl -8
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENFE_L_A77E
SENFE_L_A761:
  k_ldl -2
  k_derefb
  k_ldri 5
  k_umod
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 5
  k_ult
  k_jumpf SENFE_L_A771
  k_ldli 0
  k_jump SENFE_L_A772
SENFE_L_A771:
  k_ldli 5
SENFE_L_A772:
  k_popr
  k_add
  k_ldriw $F436
  k_add
  k_pushl
  k_ldl -8
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_A77E:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENFE_L_A761
  k_return
SENFE_F_A785:
  k_func 12
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENFE_L_A7F6
SENFE_L_A796:
  k_pushi 5
  k_callx RF_3F3E, 2
  k_ldrarg 11
  k_add
  k_stl -10
  k_pushi 3
  k_callx RF_3F3E, 2
  k_ldrarg 13
  k_add
  k_stl -12
  k_ldl -12
  k_ldri 15
  k_mul
  k_ldr -10
  k_add
  k_ldriw $F310
  k_add
  k_stl -6
  k_ldl -6
  k_derefb
  k_ldri 1
  k_eq
  k_jumpt SENFE_L_A7F6
  k_ldl -6
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpf SENFE_L_A7D0
  k_ldl -12
  k_ldri 15
  k_mul
  k_ldr -10
  k_add
  k_ldriw $F397
  k_add
  k_pushl
  k_pushi 2
  k_callx RF_3F3E, 2
  k_popstoreb
SENFE_L_A7D0:
  k_push -6
  k_ldli 1
  k_popstoreb
  k_ldl -2
  k_derefb
  k_ldri 5
  k_umod
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 5
  k_ult
  k_jumpf SENFE_L_A7E3
  k_ldli 0
  k_jump SENFE_L_A7E4
SENFE_L_A7E3:
  k_ldli 5
SENFE_L_A7E4:
  k_popr
  k_add
  k_stl -8
  k_ldl -8
  k_ldriw $F42C
  k_add
  k_pushl
  k_ldl -12
  k_ldri 15
  k_mul
  k_ldr -10
  k_add
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_A7F6:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENFE_L_A796
  k_return
SENFE_F_A7FD:
  k_func 8
  k_pushiw $0087
  k_pushi 0
  k_pushiw $F310
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pusharg 13
  k_callx SENFE_F_A5F5, 2
  k_call SENFE_F_A622
  k_call SENFE_F_A693
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -2
  k_ldlarg 13
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -4
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_inc
  k_popr
  k_sub
  k_stl -6
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 3
  k_derefb
  k_inc
  k_popr
  k_sub
  k_stl -8
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_pusharg 11
  k_callx SENFE_F_A6CA, 2
  k_ldl -8
  k_ldri 3
  k_mul
  k_pushl
  k_ldl -6
  k_ldri 5
  k_mul
  k_pushl
  k_callx SENFE_F_A785, 4
  k_pushiw $F41E
  k_pusharg 13
  k_callx RL_8502, 4
  k_stla $F428
  k_pusharg 13
  k_callx SENFE_F_A6CA, 2
  k_pushi 3
  k_pushi 5
  k_callx SENFE_F_A785, 4
  k_return
SENFE_F_A875:
  k_func 18
  k_ldliw $F423
  k_stl -2
  k_ldliw $F41E
  k_stl -4
  k_ldla $F42A
  k_stl -8
  k_ldla $F428
  k_stl -10
  k_ldlba $F41E
  k_ldri 5
  k_ult
  k_jumpf SENFE_L_A8A2
  k_ldliw $F41E
  k_stl -2
  k_ldliw $F423
  k_stl -4
  k_ldla $F428
  k_stl -8
  k_ldla $F42A
  k_stl -10
SENFE_L_A8A2:
  k_ldl -2
  k_ldr -8
  k_add
  k_stl -6
  k_jump SENFE_L_A8C1
SENFE_L_A8A9:
  k_ldl -2
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_derefb
  k_jumpt SENFE_L_A8BE
  k_ldl -2
  k_derefb
  k_stla $F44E
  k_jump SENFE_L_A8C7
SENFE_L_A8BE:
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_A8C1:
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt SENFE_L_A8A9
SENFE_L_A8C7:
  k_ldli 0
  k_stl -16
  k_stl -12
  k_ldl -4
  k_ldr -10
  k_add
  k_stl -6
  k_jump SENFE_L_A8F1
SENFE_L_A8D1:
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_inc
  k_stl -14
  k_ldl -14
  k_ldr -16
  k_ugt
  k_jumpf SENFE_L_A8EB
  k_ldl -14
  k_stl -16
  k_ldl -4
  k_derefb
  k_stl -18
  k_ldl -12
  k_stl -8
SENFE_L_A8EB:
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -4
  k_inc
  k_stl -4
SENFE_L_A8F1:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt SENFE_L_A8D1
  k_ldl -18
  k_stla $F450
  k_return
SENFE_F_A8FC:
  k_func 8
  k_ldli 7
  k_stl -4
  k_ldli 3
  k_stl -6
  k_ldli 5
  k_stl -8
  k_ldliw $BC56
  k_stl -2
  k_ldlarg 11
  k_jumpf SENFE_L_A91A
  k_ldli 2
  k_stl -4
  k_ldlib 18
  k_stl -6
  k_ldli 6
  k_stl -8
  k_ldliw $BC60
  k_stl -2
SENFE_L_A91A:
  k_pushi 0
  k_push -8
  k_pushi 8
  k_pushib 23
  k_push -6
  k_push -4
  k_callx RF_50D1, 12
  k_pushi 1
  k_push -2
  k_callx RF_2FB9, 4
  k_return
SENFE_F_A92C:
  k_func 6
  k_ldli 8
  k_stl -2
  k_ldli 4
  k_stl -4
  k_ldlarg 11
  k_jumpf SENFE_L_A93E
  k_ldli 3
  k_stl -2
  k_ldlib 19
  k_stl -4
SENFE_L_A93E:
  k_pusharg 11
  k_callx SENFE_F_A8FC, 2
  k_push -4
  k_push -2
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pusharg 13
  k_callx RF_2FB9, 4
  k_return
SENFE_F_A950:
  k_func 2
  k_ldlarg 11
  k_jumpf SENFE_L_A95D
  k_ldlarg 11
  k_jump SENFE_L_A95E
SENFE_L_A95D:
  k_ldlarg 13
SENFE_L_A95E:
  k_stl -2
  k_ldlba $EF56
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_A96D
  k_ldlba $EF5C
  k_ldr -2
  k_eq
  k_return
SENFE_L_A96D:
  k_ldlba $EF57
  k_ldr -2
  k_eq
  k_return
SENFE_F_A973:
  k_func 2
  k_ldlbf 13
  k_jumpt SENFE_L_A985
  k_pushi 1
  k_pushiw $BF42
  k_jump SENFE_L_A989
SENFE_L_A985:
  k_pushi 1
  k_pushiw $BF46
SENFE_L_A989:
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -2
  k_ldl -2
  k_ldri 2
  k_uge
  k_jumpf SENFE_L_A99F
  k_pushi 0
  k_pushiw $BF4A
  k_jump SENFE_L_A9A3
SENFE_L_A99F:
  k_pushi 0
  k_pushiw $BF4F
SENFE_L_A9A3:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_ldl -2
  k_shl1
  k_ldriw $BF1F
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_return
SENFE_F_A9B5:
  k_func 2
  k_pushib 16
  k_ldlarg 11
  k_jumpf SENFE_L_A9C4
  k_ldlarg 11
  k_jump SENFE_L_A9C5
SENFE_L_A9C4:
  k_ldlarg 13
SENFE_L_A9C5:
  k_addlib 20
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_ldlib 32
  k_stlba $F294
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpt SENFE_L_A9FC
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf SENFE_L_A9FC
  k_ldlba $EF56
  k_ldri 1
  k_ugt
  k_jumpf SENFE_L_A9FC
  k_pusharg 13
  k_pusharg 11
  k_callx SENFE_F_A950, 4
  k_jumpf SENFE_L_A9FC
  k_ldli 0
  k_stlba $EF61
  k_ldli 0
  k_stlba $EF56
SENFE_L_A9FC:
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpf SENFE_L_AA1F
  k_ldlba $EF61
  k_ldri 2
  k_and
  k_ldri 2
  k_eq
  k_jumpt SENFE_L_AA1F
  k_ldlba $EF56
  k_ldri 1
  k_ule
  k_jumpt SENFE_L_AA1F
  k_pusharg 13
  k_pusharg 11
  k_callx SENFE_F_A950, 4
  k_jumpt SENFE_L_AADB
SENFE_L_AA1F:
  k_ldlarg 11
  k_jumpf SENFE_L_AA86
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pushiw $BF55
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pushiw $BF77
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw $BF78
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pusha $BC6A
  k_pushiw $BF7E
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha $BC6C
  k_pushi 1
SENFE_L_AA7E:
  k_callx SENFE_F_A92C, 4
SENFE_L_AA82:
  k_call RF_472D
  k_return
SENFE_L_AA86:
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusharg 13
  k_callx SENFE_F_A522, 2
  k_switchn 3
    .word $0000, SENFE_L_AAA7
    .word $0001, SENFE_L_AAB9
    .word $0002, SENFE_L_AACA
    .word SENFE_L_AA82
SENFE_L_AAA7:
  k_pusha $BC6E
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha $BC70
SENFE_L_AAB5:
  k_pushi 0
  k_jump SENFE_L_AA7E
SENFE_L_AAB9:
  k_pusha $BC72
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha $BC74
  k_jump SENFE_L_AAB5
SENFE_L_AACA:
  k_pusha $BC76
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha $BC78
  k_jump SENFE_L_AAB5
SENFE_L_AADB:
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_ldlba $EF56
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_AB37
  k_pushiw $BF83
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw $BF84
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_jumpf SENFE_L_AB06
  k_ldlarg 11
  k_jump SENFE_L_AB07
SENFE_L_AB06:
  k_ldlarg 13
SENFE_L_AB07:
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $BF97
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pusha $BC7A
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pusha $BC7C
  k_pushi 0
  k_callx SENFE_F_A92C, 4
SENFE_L_AB37:
  k_ldlba $EF56
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_AB6D
  k_pushiw $BF9A
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pusha $BC80
  k_pusha $BC7E
  k_pushiw $BF9B
  k_callx RF_3608, 8
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pusha $BC82
  k_pushi 0
  k_callx SENFE_F_A92C, 4
SENFE_L_AB6D:
  k_ldlba $EF56
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_ABC3
  k_pusha $BC84
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha $BC86
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_ldliw $00FF
  k_stlba $F294
  k_pushib 17
  k_pushi 12
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pushiw $BFB6
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw $BFB7
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pusha $BC88
  k_pushiw $BFBD
  k_callx RF_3608, 4
  k_pusha $BC8A
  k_pushi 1
  k_callx SENFE_F_A92C, 4
SENFE_L_ABC3:
  k_call RF_472D
  k_return
SENFE_F_ABC7:
  k_func 0
  k_ldlba $F294
  k_ldriw $00FF
  k_eq
  k_jumpf SENFE_L_AC02
  k_ldlib 32
  k_stlba $F294
  k_jump SENFE_L_AC02
SENFE_L_ABDE:
  k_pushib 16
  k_ldlarg 11
  k_derefb
  k_pushl
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pushi 3
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $BFC3
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_ldlarg 11
  k_inc
  k_stlarg 11
SENFE_L_AC02:
  k_ldlarg 11
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpt SENFE_L_ABDE
  k_return
SENFE_F_AC0C:
  k_func 0
  k_call RF_3D7C
  k_pusha $F280
  k_pushiw $05EC
  k_pushib 28
  k_pushib 32
  k_pushi 1
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $1378
  k_pushi 6
  k_pushib 30
  k_pushib 22
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $0CEC
  k_pushi 6
  k_pushi 11
  k_pushib 22
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
SENFE_F_AC47:
  k_func 2
  k_ldlarg 17
  k_ldri 5
  k_ult
  k_jumpf SENFE_L_AC60
  k_ldli 0
  k_stl -2
  k_ldlarg 17
  k_ldra $F44E
  k_eq
  k_jumpf SENFE_L_AC6C
  k_ldli 1
  k_jump SENFE_L_AC6B
SENFE_L_AC60:
  k_ldli 2
  k_stl -2
  k_ldlarg 17
  k_ldra $F450
  k_eq
  k_jumpf SENFE_L_AC6C
  k_ldli 3
SENFE_L_AC6B:
  k_stl -2
SENFE_L_AC6C:
  k_pusharg 15
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_callx $9662, 8
  k_return
SENFE_F_AC75:
  k_func 10
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_stl -2
  k_jump SENFE_L_ACCA
SENFE_L_AC81:
  k_ldlarg 13
  k_derefb
  k_ldri 5
  k_umod
  k_pushl
  k_ldlarg 13
  k_derefb
  k_ldri 5
  k_ult
  k_jumpf SENFE_L_AC91
  k_ldli 0
  k_jump SENFE_L_AC92
SENFE_L_AC91:
  k_ldli 5
SENFE_L_AC92:
  k_popr
  k_add
  k_stl -6
  k_ldl -6
  k_ldriw $F42C
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_ldri 15
  k_umod
  k_stl -8
  k_ldl -4
  k_ldri 15
  k_udiv
  k_stl -10
  k_ldlarg 13
  k_derefb
  k_pushl
  k_ldl -6
  k_ldriw $F436
  k_add
  k_derefb
  k_pushl
  k_ldl -10
  k_shl1
  k_pushl
  k_ldl -8
  k_ldri 2
  k_smod
  k_jumpf SENFE_L_ACBB
  k_ldli 3
  k_jump SENFE_L_ACBC
SENFE_L_ACBB:
  k_ldli 2
SENFE_L_ACBC:
  k_popr
  k_add
  k_pushl
  k_ldl -8
  k_shl1
  k_inc
  k_pushl
  k_callx SENFE_F_AC47, 8
  k_ldlarg 13
  k_inc
  k_stlarg 13
SENFE_L_ACCA:
  k_ldlarg 13
  k_ldr -2
  k_ult
  k_jumpt SENFE_L_AC81
  k_return
SENFE_F_ACD1:
  k_func 8
  k_call SENFE_F_AC0C
  k_ldli 1
  k_stl -6
SENFE_L_ACDB:
  k_pusha $F280
  k_pushiw $0004
  k_pushi 1
  k_pushi 2
  k_pushi 2
  k_push -6
  k_pushi 2
  k_callx RF_3DF1, 14
  k_ldli 4
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -6
  k_ldrib 30
  k_lt
  k_jumpt SENFE_L_ACDB
  k_pusha $F280
  k_pushiw $0008
  k_pushib 17
  k_pushib 30
  k_pushi 3
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_ldli 3
  k_stl -6
SENFE_L_AD09:
  k_pusha $F280
  k_pushiw $0404
  k_pushi 1
  k_pushi 2
  k_pushib 20
  k_push -6
  k_pushi 2
  k_callx RF_3DF1, 14
  k_ldli 4
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -6
  k_ldrib 28
  k_lt
  k_jumpt SENFE_L_AD09
  k_ldli 0
  k_stl -8
  k_stl -6
  k_ldliw $F397
  k_stl -2
  k_addliw $0087
  k_stl -4
  k_jump SENFE_L_AD60
SENFE_L_AD33:
  k_ldl -2
  k_derefb
  k_pushl
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -6
  k_ldri 2
  k_smod
  k_jumpf SENFE_L_AD43
  k_ldli 3
  k_jump SENFE_L_AD44
SENFE_L_AD43:
  k_ldli 2
SENFE_L_AD44:
  k_popr
  k_add
  k_pushl
  k_ldl -6
  k_shl1
  k_inc
  k_pushl
  k_callx $9682, 6
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 14
  k_gt
  k_jumpf SENFE_L_AD5D
  k_ldli 0
  k_stl -6
  k_ldl -8
  k_inc
  k_stl -8
SENFE_L_AD5D:
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_AD60:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENFE_L_AD33
  k_pushi 1
  k_callx $96B7, 2
  k_pushiw $F41E
  k_pusha $F428
  k_callx SENFE_F_AC75, 4
  k_pushiw $F423
  k_pusha $F42A
  k_callx SENFE_F_AC75, 4
  k_return
SENFE_F_AD80:
  k_func 2
  k_ldlarg 11
  k_jumpf SENFE_L_AD8B
  k_ldlarg 11
  k_stl -2
SENFE_L_AD8B:
  k_ldlarg 13
  k_jumpf SENFE_L_AD91
  k_ldlarg 13
  k_stl -2
SENFE_L_AD91:
  k_pushi 12
  k_pushi 2
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C02D
  k_callx RF_2FB9, 4
  k_ldl -2
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C038
  k_callx RF_2FB9, 4
  k_pushi 0
  k_push -2
  k_callx SENFE_F_A973, 4
  k_pushi 0
  k_pushiw $C03A
  k_callx RF_2FB9, 4
  k_pushib 23
  k_pushiw $8000
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 127
  k_pushiw $0100
  k_pushi 4
  k_pushiw $00A0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $8C54
  k_pushi 2
  k_pushi 2
  k_pushi 14
  k_pushi 15
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushib 17
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C03C
  k_callx RF_2FB9, 4
  k_ldlba $EE76
  k_shl1
  k_ldriw $1C56
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlba $EE76
  k_jumpf SENFE_L_AE1C
  k_pushi 1
  k_pushiw $C03E
  k_jump SENFE_L_AE20
SENFE_L_AE1C:
  k_pushi 0
  k_pushiw $C040
SENFE_L_AE20:
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C049
  k_callx RF_2FB9, 4
  k_return
SENFE_F_AE34:
  k_func 5
  k_pushi 5
  k_pushiw $00FF
  k_leal -5
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stla $F572
  k_ldli 0
  k_stla $F302
  k_call RF_3D7C
  k_pushi 1
  k_pushib 16
  k_callx RF_21EA, 4
  k_leal -5
  k_pushl
  k_ldlba $F197
  k_pushl
  k_pusharg 11
  k_callx SENFE_F_A53F, 6
  k_ldlba $F197
  k_pushl
  k_pusharg 11
  k_callx SENFE_F_A7FD, 4
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_pushiw $F423
  k_ldlba $F197
  k_pushl
  k_callx RL_8502, 4
  k_stla $F42A
  k_call SENFE_F_A875
  k_pushi 0
  k_pushi 7
  k_pushib 16
  k_callx RF_3EC3, 6
  k_ldlba $F197
  k_pushl
  k_pusharg 11
  k_callx SENFE_F_AD80, 4
  k_pushi 1
  k_callx RF_4F2A, 2
  k_ldlba $F197
  k_pushl
  k_pusharg 11
  k_callx SENFE_F_A9B5, 4
  k_leal -5
  k_pushl
  k_callx SENFE_F_ABC7, 2
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_pushiw $F423
  k_ldlba $F197
  k_pushl
  k_callx RL_8502, 4
  k_stla $F42A
  k_pushi 1
  k_callx RF_4F48, 2
  k_call RF_3D7C
  k_call RF_4DD8
  k_pushi 0
  k_pushi 2
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 2
  k_callx RF_3E7E, 4
  k_pushi 2
  k_pushib 28
  k_pushiw $8000
  k_pushiw $0335
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 28
  k_pushiw $E6A0
  k_pushib 114
  k_pushiw $0100
  k_pushi 13
  k_callx RL_21BE, 10
  k_call SENFE_F_ACD1
  k_call $9A47
  k_ldlba $F436
  k_stla $F574
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_return
SENFE_F_AF17:
  k_func 0
  k_ldlba $F294
  k_ldrib 32
  k_eq
  k_jumpf SENFE_L_AF2B
  k_ldliw $00FF
  k_stlba $F294
SENFE_L_AF2B:
  k_pushi 1
  k_callx RF_4F48, 2
  k_call RF_4DD8
  k_call RF_3D7C
  k_pushi 0
  k_pushi 2
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_pushib 22
  k_callx RF_3EC3, 6
  k_return
SENFE_F_AF45:
  k_func 0
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusha $C092
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_pushib 16
  k_ldlarg 13
  k_addlib 20
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusha $C094
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_return
SENFE_F_AF7E:
  k_func 2
  k_pushib 16
  k_ldlarg 13
  k_addlib 20
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusharg 13
  k_callx SENFE_F_A522, 2
  k_stl -2
  k_ldl -2
  k_shl1
  k_ldriw $C04C
  k_add
  k_deref
  k_pushl
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_ldl -2
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_AFC2
  k_ldlarg 13
  k_dec
  k_ldri 5
  k_udiv
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_AFB7
  k_ldliw $C3D4
  k_jump SENFE_L_AFBA
SENFE_L_AFB7:
  k_ldliw $C3DB
SENFE_L_AFBA:
  k_pushl
  k_pushiw $C3B7
  k_callx RF_3619, 4
SENFE_L_AFC2:
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_pushi 6
  k_callx RF_28CC, 2
  k_pushi 0
  k_pusha $C29C
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha $C29E
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_return
SENFE_F_AFEF:
  k_func 12
  k_ldli 1
  k_stl -12
  k_ldliw $E444
  k_stl -4
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha $C096
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_ldlib 32
  k_stlba $F294
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusha $C098
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_ldliw $F41E
  k_stl -8
  k_ldra $F428
  k_add
  k_stl -10
  k_jump SENFE_L_B0EE
SENFE_L_B048:
  k_ldl -8
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -2
  k_ldl -2
  k_derefb
  k_jumpf SENFE_L_B0EB
  k_pushi 5
  k_callx RF_3F3E, 2
  k_addli 5
  k_pushl
  k_ldl -2
  k_addlib 22
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_addlib 22
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stl -4
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 2
  k_derefb
  k_popr
  k_add
  k_addlib 20
  k_pushl
  k_pushib 40
  k_callx RF_3F3E, 2
  k_popr
  k_ugt
  k_jumpf SENFE_L_B0A7
  k_pushiw $00FE
  k_ldl -4
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldl -8
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_ldli 0
  k_stl -12
SENFE_L_B0A7:
  k_ldl -2
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_stl -6
  k_ldl -6
  k_derefb
  k_pushl
  k_pushib 70
  k_callx RF_3F3E, 2
  k_popr
  k_ugt
  k_jumpf SENFE_L_B0D6
  k_ldl -6
  k_inc
  k_pushl
  k_pushib 20
  k_callx RF_3F3E, 2
  k_addli 14
  k_popstoreb
  k_ldl -8
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_ldli 0
  k_stl -12
SENFE_L_B0D6:
  k_pushi 5
  k_callx RF_3F3E, 2
  k_addli 5
  k_pushl
  k_ldl -6
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -6
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
SENFE_L_B0EB:
  k_ldl -8
  k_inc
  k_stl -8
SENFE_L_B0EE:
  k_ldl -8
  k_ldr -10
  k_ult
  k_jumpt SENFE_L_B048
  k_ldl -12
  k_jumpf SENFE_L_B0FE
  k_pushiw $C3E0
  k_jump SENFE_L_B101
SENFE_L_B0FE:
  k_pushiw $C3F9
SENFE_L_B101:
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_call SENFE_F_AF17
  k_pushi 4
  k_callx RF_28CC, 2
  k_pushi 0
  k_pushiw $C439
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha $C2A4
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_return
SENFE_F_B131:
  k_func 0
  k_ldlba $EF56
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_B144
  k_ldlba $EF5C
  k_ldrarg 11
  k_eq
  k_return
SENFE_L_B144:
  k_ldlba $EF57
  k_ldrarg 11
  k_eq
  k_return
SENFE_F_B14A:
  k_func 6
  k_pushib 16
  k_ldlarg 13
  k_addlib 20
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusharg 13
  k_callx SENFE_F_A522, 2
  k_stl -4
  k_ldl -4
  k_shl1
  k_ldriw $C08C
  k_add
  k_deref
  k_pushl
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_ldl -4
  k_ldri 1
  k_eq
  k_jumpf SENFE_L_B1AB
  k_pushi 0
  k_pushiw $C45E
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_dec
  k_ldri 5
  k_udiv
  k_stl -6
  k_ldl -6
  k_ldri 3
  k_ult
  k_jumpf SENFE_L_B1A4
  k_pushi 0
  k_pushiw $C478
  k_callx RF_2FB9, 4
  k_pushi 0
  k_ldl -6
  k_shl1
  k_ldriw $C43B
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw $C484
  k_callx RF_2FB9, 4
SENFE_L_B1A4:
  k_ldla $F18A
  k_dec
  k_stla $F18A
SENFE_L_B1AB:
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_pushi 3
  k_callx RF_28CC, 2
  k_pushi 0
  k_pusha $C2A0
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha $C2A2
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_ldlba $EF61
  k_ldri 10
  k_and
  k_ldri 8
  k_eq
  k_jumpf SENFE_L_B32A
  k_pusharg 13
  k_callx SENFE_F_B131, 2
  k_jumpf SENFE_L_B32A
  k_ldliw $E444
  k_stl -2
  k_ldlba $EF56
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_B219
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha $C09A
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_ldli 2
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
SENFE_L_B219:
  k_ldlba $EF56
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_B245
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pushiw $C486
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_ldli 2
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
SENFE_L_B245:
  k_ldlba $EF56
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_B338
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha $C09C
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_ldlib 32
  k_stlba $F294
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusha $C09E
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_call SENFE_F_AF17
  k_pushi 1
  k_callx RF_28CC, 2
  k_pushi 0
  k_pusha $C2A8
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha $C2AA
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_pushib 17
  k_pushi 12
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pushiw $C4A6
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw $C4A7
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_pushi 1
  k_pusha $C0A0
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_ldliw $E444
  k_stl -2
  k_ldlib 32
  k_stlba $F294
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha $C0A2
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_ldliw $00FF
  k_stlba $F294
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusha $C0A4
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_ldli 2
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_jump SENFE_L_B338
SENFE_L_B32A:
  k_pushib 127
  k_ldlarg 13
  k_ldri 4
  k_shl
  k_ldriw $E571
  k_add
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
SENFE_L_B338:
  k_pushiw $00FE
  k_ldlarg 13
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_pushi 8
  k_ldlarg 13
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_return
SENFE_F_B35E:
  k_func 2
  k_ldlba $EF6A
  k_stl -2
  k_ldli 0
  k_stlba $EF6A
  k_pushi 0
  k_pushiw $C4A9
  k_callx RF_2FB9, 4
  k_call RF_4AC6
  k_pushi 0
  k_pushiw $C4AE
  k_callx RF_2FB9, 4
  k_call RF_4AF7
  k_pushi 0
  k_pushiw $C4B0
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_pushi 0
  k_pushiw $C4B3
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C4BF
  k_callx RF_2FB9, 4
  k_ldl -2
  k_stlba $EF6A
  k_return
SENFE_F_B3A8:
  k_func 0
  k_pushi 5
  k_callx RF_28CC, 2
  k_call SENFE_F_B35E
  k_pushi 0
  k_pushiw $C4C2
  k_callx RF_2FB9, 4
  k_return
SENFE_F_B3BE:
  k_func 26
  k_pushib 58
  k_pushi 0
  k_pushiw $F576
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_ldliw $F41E
  k_stl -12
  k_ldra $F428
  k_add
  k_stl -14
  k_jump SENFE_L_B4F0
SENFE_L_B3E8:
  k_ldl -12
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_ldl -12
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_derefb
  k_stln -26
  k_ldln -26
  k_jumpf SENFE_L_B435
  k_pushib 60
  k_callx RF_3F3E, 2
  k_pushl
  k_ldln -26
  k_ldri 10
  k_mul
  k_ldriw $EAC4
  k_add
  k_derefb
  k_popr
  k_ult
  k_jumpf SENFE_L_B435
  k_ldln -26
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_stl -8
  k_pushi 5
  k_callx RF_3F3E, 2
  k_addli 8
  k_pushl
  k_ldl -8
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -8
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
SENFE_L_B435:
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENFE_L_B440
  k_ldl -2
  k_derefb
  k_jumpt SENFE_L_B4ED
SENFE_L_B440:
  k_ldl -12
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -4
  k_ldl -4
  k_addlib 16
  k_deref
  k_ldri 10
  k_sdiv
  k_swap
  k_ldla $F5AA
  k_add
  k_stla $F5AA
  k_ldl -4
  k_addlib 18
  k_deref
  k_ldri 10
  k_sdiv
  k_swap
  k_ldla $F5AC
  k_add
  k_stla $F5AC
  k_ldl -4
  k_addlib 20
  k_deref
  k_swap
  k_ldla $F5AE
  k_add
  k_stla $F5AE
  k_ldl -4
  k_addli 6
  k_stl -10
  k_ldl -4
  k_inc
  k_stl -16
  k_ldli 0
  k_stl -22
SENFE_L_B47A:
  k_ldl -22
  k_shl1
  k_ldr -10
  k_add
  k_deref
  k_jumpf SENFE_L_B496
  k_ldl -22
  k_shl1
  k_ldr -10
  k_add
  k_deref
  k_pushl
  k_ldl -16
  k_ldr -22
  k_add
  k_derefb
  k_shl1
  k_ldriw $F576
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
SENFE_L_B496:
  k_ldl -22
  k_inc
  k_stl -22
  k_ldl -22
  k_ldri 5
  k_ult
  k_jumpt SENFE_L_B47A
  k_ldliw $E99C
  k_stl -18
  k_stl -20
  k_ldli 0
  k_jump SENFE_L_B4BE
SENFE_L_B4A8:
  k_ldl -4
  k_derefb
  k_pushl
  k_ldl -18
  k_derefb
  k_popr
  k_ne
  k_jumpf SENFE_L_B4B9
  k_push -20
  k_ldl -18
  k_derefb
  k_popstoreb
  k_ldl -20
  k_inc
  k_stl -20
SENFE_L_B4B9:
  k_ldl -18
  k_inc
  k_stl -18
  k_ldl -22
  k_inc
SENFE_L_B4BE:
  k_stl -22
  k_ldl -22
  k_ldri 10
  k_ult
  k_jumpf SENFE_L_B4CE
  k_ldl -18
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpt SENFE_L_B4A8
SENFE_L_B4CE:
  k_push -20
  k_ldliw $00FF
  k_popstoreb
  k_pushiw $00FE
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_pushiw $00BF
  k_ldl -2
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
SENFE_L_B4ED:
  k_ldl -12
  k_inc
  k_stl -12
SENFE_L_B4F0:
  k_ldl -12
  k_ldr -14
  k_ult
  k_jumpt SENFE_L_B3E8
  k_pushiw $F423
  k_pusharg 13
  k_callx RL_8502, 4
  k_stla $F42A
  k_ldli 0
  k_stl -24
  k_ldliw $F423
  k_stl -12
  k_ldra $F42A
  k_add
  k_stl -14
  k_jump SENFE_L_B588
SENFE_L_B50F:
  k_ldl -12
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_ldl -2
  k_derefb
  k_jumpf SENFE_L_B544
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENFE_L_B544
  k_ldlba $F300
  k_ldri 4
  k_eq
  k_jumpt SENFE_L_B544
  k_ldlba $F300
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_B585
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt SENFE_L_B585
  k_ldl -12
  k_derefb
  k_ldra $F450
  k_ne
  k_jumpf SENFE_L_B585
SENFE_L_B544:
  k_ldl -2
  k_derefb
  k_jumpf SENFE_L_B557
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENFE_L_B557
  k_ldlba $F300
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_B57B
SENFE_L_B557:
  k_ldl -12
  k_derefb
  k_addlib -5
  k_ldri 3
  k_mul
  k_ldriw $E302
  k_add
  k_stl -6
  k_ldl -6
  k_inc
  k_deref
  k_jumpf SENFE_L_B578
  k_ldl -6
  k_inc
  k_deref
  k_pushl
  k_ldl -6
  k_derefb
  k_shl1
  k_ldriw $F576
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
SENFE_L_B578:
  k_ldl -24
  k_inc
  k_stl -24
SENFE_L_B57B:
  k_pushiw $00BF
  k_ldl -2
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
SENFE_L_B585:
  k_ldl -12
  k_inc
  k_stl -12
SENFE_L_B588:
  k_ldl -12
  k_ldr -14
  k_ult
  k_jumpt SENFE_L_B50F
  k_pushib 50
  k_callx RF_3F3E, 2
  k_addlib 30
  k_ldr -24
  k_mul
  k_swap
  k_ldla $F5AA
  k_add
  k_stla $F5AA
  k_pushib 50
  k_callx RF_3F3E, 2
  k_addlib 30
  k_ldr -24
  k_mul
  k_swap
  k_ldla $F5AC
  k_add
  k_stla $F5AC
  k_pushi 3
  k_callx RF_3F3E, 2
  k_inc
  k_ldr -24
  k_mul
  k_swap
  k_ldla $F5AE
  k_add
  k_stla $F5AE
  k_return
SENFE_F_B5C3:
  k_func 6
  k_ldli 0
  k_stl -2
SENFE_L_B5CA:
  k_ldl -2
  k_stl -4
  k_ldlarg 11
  k_ldr -2
  k_add
  k_ldri 15
  k_uge
  k_jumpf SENFE_L_B5EC
  k_ldlarg 13
  k_deref
  k_ldriw $2EE0
  k_uge
  k_jumpf SENFE_L_B60A
  k_ldl -2
  k_inc
  k_stl -2
  k_pushiw $2EE0
  k_ldlarg 13
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_jump SENFE_L_B60A
SENFE_L_B5EC:
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_ldlarg 11
  k_ldr -2
  k_add
  k_popr
  k_mul
  k_ldrib 50
  k_mul
  k_stl -6
  k_ldlarg 13
  k_deref
  k_ldr -6
  k_ugt
  k_jumpf SENFE_L_B60A
  k_push -6
  k_ldlarg 13
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_B60A:
  k_ldl -4
  k_ldr -2
  k_ne
  k_jumpt SENFE_L_B5CA
  k_ldlarg 11
  k_ldr -2
  k_add
  k_ldrib 50
  k_ugt
  k_jumpf SENFE_L_B61E
  k_ldlib 50
  k_ldrarg 11
  k_sub
  k_stl -2
SENFE_L_B61E:
  k_ldl -2
  k_return
SENFE_F_B620:
  k_func 10
  k_ldliw $E56F
  k_stl -10
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E56F
  k_add
  k_stl -6
  k_ldli 0
  k_stl -2
  k_stl -4
  k_jump SENFE_L_B66B
SENFE_L_B637:
  k_ldl -2
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_ldl -2
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -6
  k_add
  k_deref
  k_popr
  k_and
  k_jumpf SENFE_L_B668
  k_ldl -2
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_ldl -2
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -10
  k_add
  k_deref
  k_popr
  k_and
  k_jumpt SENFE_L_B668
  k_pusharg 13
  k_ldl -2
  k_popstoreb
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_ldl -4
  k_inc
  k_stl -4
SENFE_L_B668:
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_B66B:
  k_ldl -2
  k_ldrib 32
  k_ult
  k_jumpt SENFE_L_B637
  k_ldl -4
  k_return
SENFE_F_B674:
  k_func 2
SENFE_L_B679:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -2
  k_ldl -2
  k_ldriw $0080
  k_eq
  k_jumpf SENFE_L_B6AD
  k_pushiw $2000
  k_ldlarg 11
  k_shl1
  k_pushl
  k_ldli 14
  k_popr
  k_sub
  k_pushl
  k_pushi 10
  k_ldlarg 11
  k_shl1
  k_addli 13
  k_pushl
  k_pushi 8
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 14
  k_pushi 10
  k_pushi 13
  k_pushib 19
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldli 1
  k_return
SENFE_L_B6AD:
  k_ldl -2
  k_ldriw $8000
  k_eq
  k_jumpf SENFE_L_B679
  k_call SENFE_F_AF17
  k_ldli 0
  k_return
SENFE_F_B6BA:
  k_func 18
  k_pushi 0
  k_pushi 2
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_pushib 22
  k_callx RF_3EC3, 6
  k_pushi 0
  k_pushi 3
  k_pushi 15
  k_callx RF_3EC3, 6
  k_pusha $F280
  k_pushiw $8D74
  k_pushib 30
  k_pushib 32
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pushiw $C4EB
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 0
  k_pushi 1
  k_pushib 16
  k_pushib 28
  k_pushi 12
  k_pushi 2
  k_callx RF_4F65, 12
  k_pushi 1
  k_pushiw $C502
  k_callx RF_2FB9, 4
  k_ldli 3
  k_stl -6
  k_ldli 13
  k_stl -8
  k_ldli 0
  k_stl -14
  k_stl -16
  k_push -8
  k_ldl -6
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_jumpf SENFE_L_B731
  k_pusharg 11
  k_pushiw $C509
  k_callx RF_3619, 4
  k_ldli 1
  k_stl -16
SENFE_L_B731:
  k_ldlarg 13
  k_jumpf SENFE_L_B805
  k_ldl -16
  k_shl1
  k_ldr -8
  k_add
  k_pushl
  k_ldl -6
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C512
  k_callx RF_2FB9, 4
  k_ldli 11
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldlarg 13
  k_ldri 7
  k_ugt
  k_jumpt SENFE_L_B762
  k_ldlarg 11
  k_jumpf SENFE_L_B75E
  k_ldlarg 13
  k_ldri 6
  k_ugt
  k_jumpt SENFE_L_B762
SENFE_L_B75E:
  k_ldli 0
  k_jump SENFE_L_B763
SENFE_L_B762:
  k_ldli 1
SENFE_L_B763:
  k_stl -18
  k_ldl -18
  k_jumpf SENFE_L_B776
  k_pushi 6
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C51C
  k_callx RF_2FB9, 4
SENFE_L_B776:
  k_ldlarg 15
  k_stl -2
  k_ldrarg 13
  k_add
  k_stl -4
  k_jump SENFE_L_B7CD
SENFE_L_B77E:
  k_ldl -14
  k_ldri 11
  k_mul
  k_ldr -6
  k_add
  k_stl -10
  k_ldl -16
  k_shl1
  k_ldr -8
  k_add
  k_stl -12
  k_ldl -12
  k_inc
  k_pushl
  k_push -10
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C532
  k_callx RF_2FB9, 4
  k_ldl -2
  k_derefb
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -16
  k_inc
  k_stl -16
  k_ldl -16
  k_ldri 6
  k_ugt
  k_jumpf SENFE_L_B7CA
  k_ldli 0
  k_stl -16
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -14
  k_ldri 1
  k_ugt
  k_jumpf SENFE_L_B7CA
  k_ldlarg 11
  k_jumpf SENFE_L_B7BF
  k_ldli 1
  k_stl -16
SENFE_L_B7BF:
  k_push -16
  k_callx SENFE_F_B674, 2
  k_jumpt SENFE_L_B7C8
  k_return
SENFE_L_B7C8:
  k_ldli 0
  k_stl -14
SENFE_L_B7CA:
  k_ldl -2
  k_inc
  k_stl -2
SENFE_L_B7CD:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENFE_L_B77E
  k_ldl -18
  k_jumpt SENFE_L_B7EC
  k_pushi 4
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C4EB
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call SENFE_F_AF17
  k_return
SENFE_L_B7EC:
  k_ldli 0
  k_stl -16
  k_stl -14
  k_ldlarg 11
  k_jumpf SENFE_L_B7F5
  k_ldli 1
  k_stl -16
SENFE_L_B7F5:
  k_push -16
  k_callx SENFE_F_B674, 2
  k_jumpt SENFE_L_B7FE
  k_return
SENFE_L_B7FE:
  k_ldli 1
  k_jumpt SENFE_L_B776
  k_jump SENFE_L_B819
SENFE_L_B805:
  k_pushi 4
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C4EB
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call SENFE_F_AF17
SENFE_L_B819:
  k_return
SENFE_F_B81A:
  k_func 58
  k_ldli 1
  k_stln -58
  k_call SENFE_F_AF17
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_pusharg 13
  k_pusharg 11
  k_callx SENFE_F_B3BE, 4
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_ldliw $F41E
  k_stl -6
  k_ldra $F428
  k_add
  k_stl -8
  k_jump SENFE_L_B93C
SENFE_L_B849:
  k_ldl -6
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_derefb
  k_stl -18
  k_ldl -18
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stl -10
  k_ldl -10
  k_addli 2
  k_derefb
  k_ldrib 50
  k_ult
  k_jumpf SENFE_L_B92F
  k_ldl -18
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stl -12
  k_ldl -12
  k_addli 6
  k_pushl
  k_ldl -10
  k_addli 2
  k_derefb
  k_pushl
  k_callx SENFE_F_B5C3, 4
  k_stl -14
  k_ldl -14
  k_jumpf SENFE_L_B939
  k_ldl -12
  k_addli 4
  k_pushl
  k_pushib 100
  k_ldl -12
  k_addli 4
  k_derefb
  k_pushl
  k_ldl -14
  k_shl1
  k_shl1
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -12
  k_addli 5
  k_pushl
  k_pushib 100
  k_ldl -12
  k_addli 5
  k_derefb
  k_pushl
  k_ldl -14
  k_shl1
  k_shl1
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldln -58
  k_jumpf SENFE_L_B8D6
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pushiw $C53A
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw $C53B
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stln -58
  k_jump SENFE_L_B901
SENFE_L_B8D6:
  k_pushiw $2000
  k_pushi 6
  k_pushib 21
  k_pushi 4
  k_pushi 8
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 1
  k_pushiw $C53D
  k_callx RF_2FB9, 4
  k_pushi 4
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushiw $C547
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw $C548
  k_callx RF_2FB9, 4
SENFE_L_B901:
  k_ldl -18
  k_jumpf SENFE_L_B913
  k_ldl -10
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C54A
  k_jump SENFE_L_B917
SENFE_L_B913:
  k_pushi 0
  k_pushiw $C54F
SENFE_L_B917:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw $C55F
  k_callx RF_2FB9, 4
  k_ldl -14
  k_pushl
  k_ldl -10
  k_addli 2
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
  k_jump SENFE_L_B939
SENFE_L_B92F:
  k_ldl -18
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_pushl
  k_ldli 0
  k_popstore
SENFE_L_B939:
  k_ldl -6
  k_inc
  k_stl -6
SENFE_L_B93C:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt SENFE_L_B849
  k_call SENFE_F_AF17
  k_ldlba $F300
  k_ldri 2
  k_eq
  k_jumpt SENFE_L_B955
  k_ldlba $F300
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_BAC8
SENFE_L_B955:
  k_pushi 3
  k_callx RF_28CC, 2
  k_call SENFE_F_B35E
  k_pushi 0
  k_pushiw $C57D
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_ldlarg 13
  k_dec
  k_ldri 5
  k_udiv
  k_stl -16
  k_ldl -16
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_pushl
  k_pushib 100
  k_ldl -16
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_addli 10
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -16
  k_jumpf SENFE_L_B9B8
  k_ldl -16
  k_ldriw $C536
  k_add
  k_derefb
  k_stl -14
  k_pushi 10
  k_callx RF_3F3E, 2
  k_addli 10
  k_pushl
  k_ldl -14
  k_ldriw $EA8F
  k_add
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -14
  k_ldriw $EA8F
  k_add
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
SENFE_L_B9B8:
  k_ldlba $F300
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_BA4B
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -2
  k_ldlarg 13
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -4
  k_ldl -2
  k_addli 9
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_pushl
  k_ldl -4
  k_addli 9
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_stln -56
  k_leal -50
  k_pushl
  k_pusharg 13
  k_callx SENFE_F_B620, 4
  k_stl -14
  k_pushn -56
  k_ldl -2
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldl -4
  k_addli 13
  k_deref
  k_pushl
  k_ldl -2
  k_addli 13
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
  k_ldl -4
  k_addli 11
  k_deref
  k_pushl
  k_ldl -2
  k_addli 11
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
  k_ldln -56
  k_jumpt SENFE_L_BA16
  k_ldl -14
  k_jumpf SENFE_L_BA3C
SENFE_L_BA16:
  k_call SENFE_F_AF17
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_leal -50
  k_pushl
  k_push -14
  k_pushn -56
  k_callx SENFE_F_B6BA, 6
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
SENFE_L_BA3C:
  k_ldl -4
  k_addli 9
  k_pushl
  k_ldli 0
  k_popstore
  k_ldl -4
  k_addli 13
  k_pushl
  k_ldli 0
  k_popstore
  k_ldl -4
  k_addli 11
  k_pushl
  k_ldli 0
  k_popstore
SENFE_L_BA4B:
  k_ldliw $F576
  k_stln -52
  k_addlib 58
  k_stln -54
  k_jump SENFE_L_BAC0
SENFE_L_BA57:
  k_ldln -52
  k_deref
  k_jumpf SENFE_L_BABB
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_call SENFE_F_AF17
  k_pushi 1
  k_pushiw $C599
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushi 2
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_pushib 22
  k_callx RF_3EC3, 6
  k_pushi 0
  k_pushi 3
  k_pushi 15
  k_callx RF_3EC3, 6
  k_pusha $F280
  k_pushiw $8D74
  k_pushib 30
  k_pushib 32
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushiw $F576
  k_callx RF_7B51, 2
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_jump SENFE_L_BAC8
SENFE_L_BABB:
  k_ldln -52
  k_addli 2
  k_stln -52
SENFE_L_BAC0:
  k_ldln -52
  k_ldrn -54
  k_ult
  k_jumpt SENFE_L_BA57
SENFE_L_BAC8:
  k_return
SENFE_F_BAC9:
  k_func 4
  k_ldlarg 11
  k_stl -2
  k_ldlarg 13
  k_stl -4
  k_ldlarg 11
  k_jumpf SENFE_L_BADA
  k_ldlarg 13
  k_stl -2
  k_ldlarg 11
  k_stl -4
SENFE_L_BADA:
  k_ldlba $F300
  k_switch -1, 5, SENFE_L_BAF4
    .word SENFE_L_BAEE, SENFE_L_BB1B, SENFE_L_BB24, SENFE_L_BB2D, SENFE_L_BB36
SENFE_L_BAEE:
  k_push -4
  k_push -2
  k_callx SENFE_F_AF45, 4
SENFE_L_BAF4:
  k_ldlba $F300
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_BB58
  k_ldl -4
  k_dec
  k_ldri 5
  k_udiv
  k_jumpf SENFE_L_BB58
  k_pushi 10
  k_callx RF_3F3E, 2
  k_ldri 10
  k_mul
  k_pushl
  k_push -4
  k_callx SENFE_F_A522, 2
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_BB3E
  k_ldliw $00C8
  k_jump SENFE_L_BB41
SENFE_L_BB1B:
  k_push -4
  k_push -2
  k_callx SENFE_F_AF7E, 4
  k_jump SENFE_L_BAF4
SENFE_L_BB24:
  k_push -4
  k_push -2
  k_callx SENFE_F_AFEF, 4
  k_jump SENFE_L_BAF4
SENFE_L_BB2D:
  k_push -4
  k_push -2
  k_callx SENFE_F_B14A, 4
  k_jump SENFE_L_BAF4
SENFE_L_BB36:
  k_push -4
  k_push -2
  k_callx SENFE_F_B3A8, 4
  k_ldli 0
  k_return
SENFE_L_BB3E:
  k_ldliw $0258
SENFE_L_BB41:
  k_popr
  k_add
  k_pushl
  k_ldliw $C350
  k_ldra $EE74
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla $EE74
  k_add
  k_stla $EE74
SENFE_L_BB58:
  k_push -4
  k_push -2
  k_callx SENFE_F_B81A, 4
  k_ldli 1
  k_return
SENFE_F_BB60:
  k_func 0
  k_pushi 0
  k_callx $96B7, 2
  k_call SENFE_F_AF17
  k_ldlba $F300
  k_ldri 5
  k_eq
  k_jumpf SENFE_L_BB7A
  k_pushi 1
  k_pushi 14
  k_jump SENFE_L_BB92
SENFE_L_BB7A:
  k_ldlba $F300
  k_ldri 1
  k_ugt
  k_jumpf SENFE_L_BB96
  k_ldlba $F300
  k_ldri 1
  k_and
  k_jumpf SENFE_L_BB8F
  k_pushi 0
  k_pushi 5
  k_jump SENFE_L_BB92
SENFE_L_BB8F:
  k_pushi 1
  k_pushib 21
SENFE_L_BB92:
  k_callx RF_21EA, 4
SENFE_L_BB96:
  k_ldlba $F197
  k_pushl
  k_pusharg 11
  k_callx SENFE_F_BAC9, 4
  k_jumpf SENFE_L_BBD8
  k_ldliw $00FF
  k_stlba $EF6A
  k_ldliw $00FF
  k_stlba $F167
  k_ldliw $00FF
  k_stlba $F168
  k_ldliw $00FF
  k_stlba $F164
  k_ldlarg 11
  k_jumpf SENFE_L_BBC2
  k_ldlarg 11
  k_jump SENFE_L_BBC5
SENFE_L_BBC2:
  k_ldlba $F197
SENFE_L_BBC5:
  k_pushl
  k_callx RF_46C6, 2
  k_call SENFE_F_AF17
  k_pushi 1
  k_pushiw $C5A0
  k_callx RF_2FB9, 4
  k_jump SENFE_L_BBDC
SENFE_L_BBD8:
  k_ldli 4
  k_stlba $F169
SENFE_L_BBDC:
  k_ldli 1
  k_return
  .byte $00, $04, $02, $02, $00, $00, $04, $04, $04, $00, $00, $00, $00, $00, $00, $00
  .byte $03, $02, $02, $00, $00, $03, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $03, $04, $02, $00, $00, $00, $04, $02, $00, $00, $00, $00
  .byte $00, $00, $00, $03, $03, $03, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $03, $04, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $04, $03, $04, $00, $00, $02, $02, $02, $00, $03, $03, $00, $00, $00, $02
  .byte $02, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $04
  .byte $04, $04, $02, $00, $00, $00, $00, $00, $1B, $43, $32, $1B, $52, $28, $1B, $45
  .byte $3E, $00, $1B, $43, $32, $1B, $52, $23, $1B, $45, $38, $00, $8C, $BC, $B1, $BC
  .byte $CE, $BC, $F4, $BC, $21, $BD, $48, $BD, $64, $BD, $93, $BD, $C8, $BD, $E9, $BD
  .byte $1D, $BE, $36, $BE, $48, $BE, $7D, $BE, $B7, $BE, $F5, $BE, $05, $BF, $4E, $6F
  .byte $77, $0A, $0A
  .byte "that we've met,"
  .byte $0A, $0A
  .byte "you're doomed!"
  .byte $00
  .byte "You won't throw me"
  .byte $0A
  .byte "so easily"
  .byte $00
  .byte "How about a taste of"
  .byte $0A
  .byte "justice, pirate!"
  .byte $00
  .byte "Let's show the boy"
  .byte $0A
  .byte "what pirates are made"
  .byte $0A, $6F, $66, $21, $00
  .byte "This is where I see"
  .byte $0A
  .byte "you to your death!"
  .byte $00
  .byte "Soon you will beg"
  .byte $0A
  .byte "for mercy"
  .byte $00
  .byte "Hand over your goods"
  .byte $0A
  .byte "and I'll spare your"
  .byte $0A
  .byte "life!"
  .byte $00
  .byte "You pirate! You think"
  .byte $0A
  .byte "we'll give in without"
  .byte $0A
  .byte "a fight?"
  .byte $00
  .byte "Your"
  .byte $0A
  .byte "devilry ends here,"
  .byte $0A
  .byte "you rat!"
  .byte $00
  .byte "Ha! I'll slash ye"
  .byte $0A
  .byte "down before ye make"
  .byte $0A
  .byte "another move!"
  .byte $00, $0A
  .byte "I didn't come to"
  .byte $0A
  .byte "fight."
  .byte $00
  .byte " Just give me"
  .byte $0A, $74, $68, $65, $00
  .byte "Never! You'll have to"
  .byte $0A
  .byte "fight for it, ye"
  .byte $0A
  .byte "yellow-belly!"
  .byte $00
  .byte "Ye made it this far,"
  .byte $0A
  .byte "youngster, but this"
  .byte $0A
  .byte "is where ye die!"
  .byte $00
  .byte "So you're the rat who"
  .byte $0A
  .byte "kidnapped Christiana!"
  .byte $0A
  .byte "Prepare to fight!"
  .byte $00
  .byte "Please save me!"
  .byte $00
  .byte "Hold on, I'll"
  .byte $0A
  .byte "rescue you!"
  .byte $00, $27, $BF, $30, $BF, $36, $BF, $3B, $BF
  .byte "Portugal"
  .byte $00
  .byte "Spain"
  .byte $00
  .byte "Turk"
  .byte $00
  .byte "pirate"
  .byte $00, $1B, $43, $30, $00, $1B, $43, $32, $00
  .byte "the "
  .byte $00
  .byte "from "
  .byte $00
  .byte "They're challenging"
  .byte $0A
  .byte "us to battle!"
  .byte $00, $00, $0A
  .byte "I'm "
  .byte $00
  .byte "! %s"
  .byte $00, $00, $0A
  .byte "We've found you,"
  .byte $0A, $00, $21, $20, $00, $00
  .byte "%s%s %s"
  .byte $0A
  .byte "and I'll spare you"
  .byte $00, $00, $0A
  .byte "Oh, "
  .byte $00, $21, $0A, $0A, $25, $73, $00, $C9, $BF, $E3, $BF, $F9, $BF
  .byte "I'm not staying for"
  .byte $0A
  .byte "this!"
  .byte $00
  .byte "Time for me to"
  .byte $0A
  .byte "leave!"
  .byte $00
  .byte "So long! You'll have"
  .byte $0A
  .byte "to fight this out"
  .byte $0A
  .byte "on your own!"
  .byte $00, $1B, $52, $22, $1B, $45, $3E, $1B, $43, $30, $5B, $00, $20, $00, $5D, $00
  .byte $5B, $00, $20, $00
  .byte "Captain "
  .byte $00, $5D, $00, $00, $52, $C0, $73, $C0, $8B, $C0
  .byte "Blasted curs!"
  .byte $0A
  .byte "Pull away, maties!"
  .byte $00
  .byte "I'll never forget"
  .byte $0A
  .byte "this!"
  .byte $00, $00, $A6, $C0, $C4, $C0, $C5, $C0, $EA, $C0, $1C, $C1, $3C, $C1, $71, $C1
  .byte $9F, $C1, $DA, $C1, $F0, $C1, $0C, $C2, $28, $C2, $61, $C2
  .byte "Blast! We're through,"
  .byte $0A
  .byte "maties!"
  .byte $00, $00
  .byte "Im-impossible! I'm"
  .byte $0A
  .byte "not ready to die!"
  .byte $00
  .byte "Cap'n, the sun's"
  .byte $0A
  .byte "setting. We can't go"
  .byte $0A
  .byte "on fighting"
  .byte $00
  .byte "Are ye running away,"
  .byte $0A
  .byte "youngster?"
  .byte $00
  .byte "At this rate we're"
  .byte $0A
  .byte "finished for sure."
  .byte $0A
  .byte "Let's pull out"
  .byte $00
  .byte "Now there's a bit o'"
  .byte $0A
  .byte "wisdom! Let's sail"
  .byte $0A
  .byte "away!"
  .byte $00
  .byte "Now things should be"
  .byte $0A
  .byte "a bit quieter in this"
  .byte $0A
  .byte "part of the sea"
  .byte $00
  .byte "Where's the"
  .byte $0A
  .byte "princess?"
  .byte $00
  .byte "Don't worry, she's"
  .byte $0A
  .byte "safe now"
  .byte $00
  .byte ", how"
  .byte $0A
  .byte "can I ever thank"
  .byte $0A
  .byte "you!"
  .byte $00
  .byte "We're thankful for"
  .byte $0A
  .byte "your safe return,"
  .byte $0A
  .byte "Princess Christiana"
  .byte $00
  .byte "Captain, restrain"
  .byte $0A
  .byte "yourself until we've"
  .byte $0A
  .byte "seized the treasure"
  .byte $00, $AC, $C2, $D7, $C2, $ED, $C2, $07, $C3, $35, $C3, $76, $C3, $77, $C3, $89
  .byte $C3, $0A
  .byte "Unable to withstand"
  .byte $0A, $0A
  .byte "the bold attack by"
  .byte $0A, $0A, $00
  .byte ", the"
  .byte $0A, $0A
  .byte "enemy withdrew"
  .byte $00, $0A
  .byte "Victory smiled down"
  .byte $0A, $0A, $6F, $6E, $20, $00, $20, $61, $73, $0A, $0A
  .byte "the enemy's flagship"
  .byte $0A, $0A
  .byte "roared into flames"
  .byte $00
  .byte " withdrew"
  .byte $0A, $0A
  .byte "as the enemy's"
  .byte $0A, $0A
  .byte "scornful laughter"
  .byte $0A, $0A
  .byte "echoed from behind"
  .byte $00, $00, $0A
  .byte "Heroic Captain"
  .byte $0A, $0A, $00
  .byte " rescued"
  .byte $0A, $0A
  .byte "Princess Christiana"
  .byte $0A, $0A
  .byte "from the enemy"
  .byte $00
  .byte "The %s will hear"
  .byte $0A
  .byte "about this!"
  .byte $00
  .byte "Sultan"
  .byte $00
  .byte "King"
  .byte $00
  .byte "We were lucky to"
  .byte $0A
  .byte "escape!"
  .byte $00
  .byte "Cap'n, the head count"
  .byte $0A
  .byte "doesn't tally. I fear"
  .byte $0A
  .byte "we lost a few mates"
  .byte $00, $0A, $00, $43, $C4, $4C, $C4, $52, $C4, $5D, $C4
  .byte "Portugal"
  .byte $00
  .byte "Spain"
  .byte $00
  .byte "the Empire"
  .byte $00, $00, $0A
  .byte "This is the end"
  .byte $0A, $0A
  .byte "for us!"
  .byte $00
  .byte " Glory to"
  .byte $0A, $0A, $00, $21, $00
  .byte "All hands aided in"
  .byte $0A
  .byte "our success!"
  .byte $00, $00, $0A, $00, $0A, $4F, $6E, $20, $00, $20, $00, $2C, $20, $00, $2C, $0A
  .byte $0A
  .byte "Captain "
  .byte $00, $0A, $0A, $00
  .byte "lost his life in a"
  .byte $0A, $0A
  .byte "stormy battle at sea"
  .byte $00, $1B
  .byte "C2Here are our spoils"
  .byte $00, $1B, $52, $22, $1B, $45, $3E, $00
  .byte "Gold: %d"
  .byte $00
  .byte "Treasure:"
  .byte $00, $1B
  .byte "C2(A-more  B-cancel)"
  .byte $00, $1B, $43, $30, $00, $FF, $00, $02, $03, $00, $0A, $00, $1B, $43, $32, $1B
  .byte $52, $28, $1B, $45, $3E, $00, $00, $0A, $00, $27, $73, $0A, $0A, $00
  .byte "Captain, your"
  .byte $0A, $0A, $00
  .byte "battle skill has"
  .byte $0A, $0A
  .byte "improved!"
  .byte $1B, $57, $00
  .byte "won a great victory"
  .byte $0A, $0A
  .byte "at sea"
  .byte $00, $1B, $52, $20, $1B, $45, $3F, $00, $1B, $52, $20, $1B, $45, $3F, $00, $00
