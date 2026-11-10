; overlay jouriku, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp JOURIKU_F_9603
JOURIKU_F_9603:
  k_func 0
  k_call JOURIKU_F_97BC
  k_return
JOURIKU_F_960C:
  k_func 0
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf JOURIKU_L_961D
  k_ldli 11
  k_jump JOURIKU_L_961E
JOURIKU_L_961D:
  k_ldli 5
JOURIKU_L_961E:
  k_return
JOURIKU_F_961F:
  k_func 13
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -13
  k_ldln -13
  k_ldri 2
  k_ult
  k_jumpf JOURIKU_L_9642
  k_call RF_5C91
  k_pushiw $A42A
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
JOURIKU_L_9642:
  k_call JOURIKU_F_960C
  k_stln -11
  k_pushi 14
  k_pushib 18
  k_pushn -11
  k_pushi 7
  k_callx RF_4D41, 8
  k_pushi 14
  k_pushib 18
  k_pushn -11
  k_pushi 7
  k_callx RF_5FFB, 8
  k_stln -9
  k_ldln -11
  k_inc
  k_pushl
  k_pushi 9
  k_pushi 0
  k_callx RF_6C1E, 6
  k_stln -7
  k_pushiw $00E0
  k_pushi 0
  k_pushib 48
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx RL_21BE, 6
  k_call RF_4D8B
  k_ldln -9
  k_jumpf JOURIKU_L_969D
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
JOURIKU_L_969D:
  k_ldln -7
  k_return
JOURIKU_F_96A0:
  k_func 60
  k_pushib 58
  k_pushi 0
  k_leal -58
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_call RF_5F56
  k_pushi 4
  k_pushib 18
  k_pushib 58
  k_callx RL_21BE, 6
  k_leal -58
  k_pushl
  k_callx RF_7B51, 2
  k_call RF_5F56
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_5BBB, 2
  k_ldli 1
  k_return
JOURIKU_F_96D7:
  k_func 4
  k_ldli 0
  k_stl -4
JOURIKU_L_96DE:
  k_pushi 2
  k_pushi 2
  k_pushiw $A441
  k_pushi 2
  k_pushi 0
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf JOURIKU_L_96FB
  k_ldl -2
  k_shl1
  k_ldriw $A445
  k_add
  k_deref
  k_callptr
  k_stl -4
JOURIKU_L_96FB:
  k_ldl -4
  k_ldri 1
  k_eq
  k_jumpt JOURIKU_L_9709
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf JOURIKU_L_96DE
JOURIKU_L_9709:
  k_ldl -4
  k_return
JOURIKU_F_970B:
  k_func 13
  k_ldli 0
  k_stln -11
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -7
  k_ldli 0
  k_jump JOURIKU_L_973D
JOURIKU_L_9722:
  k_leal -5
  k_pushl
  k_ldln -9
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_ldri 5
  k_lt
  k_jumpf JOURIKU_L_973A
  k_ldli 1
  k_stln -11
JOURIKU_L_973A:
  k_ldln -9
  k_inc
JOURIKU_L_973D:
  k_stln -9
  k_ldln -9
  k_ldrn -7
  k_ult
  k_jumpt JOURIKU_L_9722
  k_ldln -11
  k_return
JOURIKU_F_974A:
  k_func 2
  k_call RF_5C91
  k_ldliw $E564
  k_stl -2
  k_call JOURIKU_F_970B
  k_jumpf JOURIKU_L_9764
  k_pushi 1
  k_pushiw $A454
  k_callx RF_2FB9, 4
JOURIKU_L_9764:
  k_pushi 1
  k_pushiw $A46F
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf JOURIKU_L_9793
  k_pushi 0
  k_pushi 0
  k_callx RF_5C5A, 4
  k_pushiw $A474
  k_callx RF_4B44, 2
  k_pushiw $00CF
  k_ldl -2
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_pushi 1
  k_ldl -2
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldli 1
  k_return
JOURIKU_L_9793:
  k_ldli 0
  k_return
JOURIKU_F_9795:
  k_func 2
  k_call RF_5C91
  k_ldliw $E564
  k_stl -2
  k_pushi 1
  k_pushiw $A487
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf JOURIKU_L_97BA
  k_pushib 64
  k_ldl -2
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldli 1
  k_return
JOURIKU_L_97BA:
  k_ldli 0
  k_return
JOURIKU_F_97BC:
  k_func 4
  k_call RF_5F1C
  k_call RF_5F0F
JOURIKU_L_97C7:
  k_pushi 3
  k_pushi 5
  k_pushiw $A4AB
  k_pushi 2
  k_pushi 5
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpt JOURIKU_L_97E6
  k_ldl -2
  k_shl1
  k_ldriw $A4B5
  k_add
  k_deref
  k_callptr
  k_jumpf JOURIKU_L_97C7
JOURIKU_L_97E6:
  k_call RF_5FDB
  k_ldlba $E573
  k_ldrib 32
  k_and
  k_jumpt JOURIKU_L_982C
  k_ldlba $E567
  k_ldri 7
  k_ult
  k_jumpf JOURIKU_L_97FE
  k_ldli 2
  k_jump JOURIKU_L_97FF
JOURIKU_L_97FE:
  k_ldli 1
JOURIKU_L_97FF:
  k_stlba $F28C
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf JOURIKU_L_980E
  k_ldli 7
  k_jump JOURIKU_L_9811
JOURIKU_L_980E:
  k_ldliw $01F7
JOURIKU_L_9811:
  k_pushl
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 4
  k_pushib 18
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushi 0
  k_callx RF_57CD, 2
JOURIKU_L_982C:
  k_return
JOURIKU_F_982D:
  k_func 2
  k_ldli 0
  k_stl -2
  k_pusharg 11
  k_callx RF_43F6, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_derefb
  k_popr
  k_lt
  k_jumpf JOURIKU_L_9849
  k_ldli 1
  k_stl -2
JOURIKU_L_9849:
  k_pusharg 11
  k_callx RF_4439, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_derefb
  k_popr
  k_lt
  k_jumpf JOURIKU_L_985E
  k_ldli 1
  k_stl -2
JOURIKU_L_985E:
  k_pusharg 11
  k_callx RF_44AA, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_popr
  k_lt
  k_jumpf JOURIKU_L_9873
  k_ldli 1
  k_stl -2
JOURIKU_L_9873:
  k_ldl -2
  k_return
JOURIKU_F_9875:
  k_func 0
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
  k_pusharg 11
  k_callx RF_43F6, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_derefb
  k_popr
  k_ugt
  k_jumpf JOURIKU_L_98AB
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_pushl
  k_pusharg 11
  k_callx RF_43F6, 2
  k_popstoreb
JOURIKU_L_98AB:
  k_return
JOURIKU_F_98AC:
  k_func 0
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
  k_pusharg 11
  k_callx RF_4439, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_derefb
  k_popr
  k_ugt
  k_jumpf JOURIKU_L_98E2
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_pushl
  k_pusharg 11
  k_callx RF_4439, 2
  k_popstoreb
JOURIKU_L_98E2:
  k_return
JOURIKU_F_98E3:
  k_func 0
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
  k_pusharg 11
  k_callx RF_44AA, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_popr
  k_ugt
  k_jumpf JOURIKU_L_9919
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_pushl
  k_pusharg 11
  k_callx RF_44AA, 2
  k_popstoreb
JOURIKU_L_9919:
  k_return
JOURIKU_F_991A:
  k_func 4
  k_ldli 0
  k_jump JOURIKU_L_9956
JOURIKU_L_9923:
  k_ldlarg 13
  k_ldr -2
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -4
  k_ldl -4
  k_addlib 20
  k_deref
  k_ldrarg 15
  k_lt
  k_jumpf JOURIKU_L_9949
  k_ldl -4
  k_addlib 20
  k_deref
  k_swap
  k_ldlarg 15
  k_sub
  k_stlarg 15
  k_ldl -4
  k_addlib 20
  k_pushl
  k_ldli 0
  k_popstore
  k_jump JOURIKU_L_9954
JOURIKU_L_9949:
  k_pusharg 15
  k_ldl -4
  k_addlib 20
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldli 0
  k_stlarg 15
JOURIKU_L_9954:
  k_ldl -2
  k_inc
JOURIKU_L_9956:
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_ult
  k_jumpf JOURIKU_L_9961
  k_ldlarg 15
  k_jumpt JOURIKU_L_9923
JOURIKU_L_9961:
  k_return
JOURIKU_F_9962:
  k_func 0
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_derefb
  k_return
JOURIKU_F_9970:
  k_func 0
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_derefb
  k_return
JOURIKU_F_997E:
  k_func 0
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_return
JOURIKU_F_998C:
  k_func 0
  k_pusharg 11
  k_callx RF_43F6, 2
  k_return
JOURIKU_F_9997:
  k_func 0
  k_pusharg 11
  k_callx RF_4439, 2
  k_return
JOURIKU_F_99A2:
  k_func 0
  k_pusharg 11
  k_callx RF_44AA, 2
  k_return
JOURIKU_F_99AD:
  k_func 16
  k_ldliw $00E1
  k_stlbf -15
  k_ldli 3
  k_stlbf -14
  k_ldlarg 17
  k_jumpf JOURIKU_L_99C4
  k_ldlarg 17
  k_jump JOURIKU_L_99C5
JOURIKU_L_99C4:
  k_ldli 1
JOURIKU_L_99C5:
  k_pushl
  k_ldla $F300
  k_ldrarg 13
  k_sub
  k_popr
  k_sdiv
  k_inc
  k_stl -8
  k_ldli 0
  k_stl -10
  k_ldlarg 11
  k_ldrn 21
  k_sdiv
  k_stl -12
  k_pushi 8
  k_callx RL_21BE, 2
JOURIKU_L_99DB:
  k_ldla $F302
  k_dec
  k_ldri 3
  k_shl
  k_pushl
  k_ldlba $F28C
  k_shl1
  k_ldriw $8EC0
  k_add
  k_deref
  k_popr
  k_add
  k_stlbf -16
  k_ldla $F300
  k_inc
  k_ldri 3
  k_shl
  k_stlbf -13
  k_pushi 0
  k_pushiw $30E4
  k_ldlbf -16
  k_pushl
  k_ldlbf -13
  k_pushl
  k_pushi 0
  k_pushib 19
  k_callx RL_21BE, 12
  k_ldln 19
  k_jumpf JOURIKU_L_9A16
  k_ldln 19
  k_jump JOURIKU_L_9A17
JOURIKU_L_9A16:
  k_ldli 1
JOURIKU_L_9A17:
  k_pushl
  k_ldla $F302
  k_ldrarg 15
  k_sub
  k_popr
  k_sdiv
  k_pushl
  k_ldlarg 17
  k_jumpf JOURIKU_L_9A28
  k_ldlarg 17
  k_jump JOURIKU_L_9A29
JOURIKU_L_9A28:
  k_ldli 1
JOURIKU_L_9A29:
  k_pushl
  k_ldla $F300
  k_ldrarg 13
  k_sub
  k_popr
  k_sdiv
  k_ldrn 21
  k_mul
  k_popr
  k_add
  k_stl -2
  k_pushi 12
  k_push -10
  k_callx RF_3D91, 4
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -10
  k_switchn 6
    .word $8000, JOURIKU_L_9A7D
    .word $0080, JOURIKU_L_9A60
    .word $0100, JOURIKU_L_9B06
    .word $0200, JOURIKU_L_9ADB
    .word $0400, JOURIKU_L_9AAD
    .word $0800, JOURIKU_L_9A8D
    .word JOURIKU_L_99DB
JOURIKU_L_9A60:
  k_pushi 0
  k_pushiw $30E4
  k_ldlbf -16
  k_pushl
  k_ldlbf -13
  k_pushl
  k_pushi 0
  k_pushib 19
  k_callx RL_21BE, 12
JOURIKU_L_9A73:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt JOURIKU_L_9A73
  k_ldl -2
  k_return
JOURIKU_L_9A7D:
  k_pushi 8
  k_callx RL_21BE, 2
JOURIKU_L_9A82:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt JOURIKU_L_9A82
  k_ldlib -1
  k_return
JOURIKU_L_9A8D:
  k_ldla $F302
  k_ldrarg 15
  k_gt
  k_jumpf JOURIKU_L_9AA2
  k_ldln 19
  k_swap
  k_ldla $F302
  k_sub
JOURIKU_L_9A9C:
  k_stla $F302
  k_jump JOURIKU_L_99DB
JOURIKU_L_9AA2:
  k_ldln 21
  k_dec
  k_ldrn 19
  k_mul
  k_ldrarg 15
JOURIKU_L_9AA9:
  k_add
  k_jump JOURIKU_L_9A9C
JOURIKU_L_9AAD:
  k_ldln 19
  k_jumpf JOURIKU_L_9AB7
  k_ldln 19
  k_jump JOURIKU_L_9AB8
JOURIKU_L_9AB7:
  k_ldli 1
JOURIKU_L_9AB8:
  k_pushl
  k_ldla $F302
  k_ldrarg 15
  k_sub
  k_popr
  k_sdiv
  k_inc
  k_ldrn 21
  k_lt
  k_jumpf JOURIKU_L_9AD7
  k_ldl -2
  k_inc
  k_ldrarg 11
  k_ule
  k_jumpf JOURIKU_L_9AD7
  k_ldln 19
  k_swap
  k_ldla $F302
  k_jump JOURIKU_L_9AA9
JOURIKU_L_9AD7:
  k_ldlarg 15
  k_jump JOURIKU_L_9A9C
JOURIKU_L_9ADB:
  k_ldl -8
  k_ldri 1
  k_gt
  k_jumpf JOURIKU_L_9AF0
  k_ldl -8
  k_dec
  k_stl -8
  k_ldlarg 17
  k_swap
  k_ldla $F300
  k_sub
JOURIKU_L_9AEA:
  k_stla $F300
  k_jump JOURIKU_L_99DB
JOURIKU_L_9AF0:
  k_ldl -12
  k_stl -8
  k_ldl -8
  k_dec
  k_ldrarg 17
  k_mul
  k_ldrarg 13
  k_jump JOURIKU_L_9B02
JOURIKU_L_9AFA:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldlarg 17
  k_swap
  k_ldla $F300
JOURIKU_L_9B02:
  k_add
  k_jump JOURIKU_L_9AEA
JOURIKU_L_9B06:
  k_ldl -8
  k_ldr -12
  k_lt
  k_jumpt JOURIKU_L_9AFA
  k_ldlarg 13
  k_stla $F300
  k_ldli 1
  k_stl -8
  k_jump JOURIKU_L_99DB
  .byte $CF
JOURIKU_F_9B16:
  k_func 0
  k_pushiw $2000
  k_pushi 6
  k_pushib 16
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf JOURIKU_L_9B2D
  k_ldli 3
  k_jump JOURIKU_L_9B2F
JOURIKU_L_9B2D:
  k_ldlib 19
JOURIKU_L_9B2F:
  k_inc
  k_pushl
  k_pushi 8
  k_pushi 3
  k_callx RF_604A, 12
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf JOURIKU_L_9B43
  k_ldli 3
  k_jump JOURIKU_L_9B45
JOURIKU_L_9B43:
  k_ldlib 19
JOURIKU_L_9B45:
  k_inc
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $A4DE
  k_callx RF_2FB9, 4
  k_return
JOURIKU_F_9B55:
  k_func 0
  k_pushi 8
  k_callx RL_21BE, 2
  k_call JOURIKU_F_9B16
  k_pushi 1
  k_pushiw $A4E5
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_return
JOURIKU_F_9B6E:
  k_func 4
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_derefb
  k_stl -2
  k_pusharg 13
  k_callx RF_43F6, 2
  k_stl -4
  k_pusharg 11
  k_pushi 9
  k_callx RF_2F8F, 4
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpf JOURIKU_L_9B9A
  k_push -4
  k_push -2
  k_pushiw $A4F0
  k_callx RF_3619, 6
  k_jump JOURIKU_L_9BA2
JOURIKU_L_9B9A:
  k_pushi 1
  k_pushiw $A4F8
  k_callx RF_2FB9, 4
JOURIKU_L_9BA2:
  k_return
JOURIKU_F_9BA3:
  k_func 4
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_derefb
  k_stl -2
  k_pusharg 13
  k_callx RF_4439, 2
  k_stl -4
  k_pusharg 11
  k_pushib 16
  k_callx RF_2F8F, 4
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpf JOURIKU_L_9BD0
  k_push -4
  k_push -2
  k_pushiw $A500
  k_callx RF_3619, 6
  k_jump JOURIKU_L_9BD8
JOURIKU_L_9BD0:
  k_pushi 1
  k_pushiw $A508
  k_callx RF_2FB9, 4
JOURIKU_L_9BD8:
  k_return
JOURIKU_F_9BD9:
  k_func 4
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_stl -2
  k_pusharg 13
  k_callx RF_44AA, 2
  k_stl -4
  k_pusharg 11
  k_pushib 23
  k_callx RF_2F8F, 4
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpf JOURIKU_L_9C06
  k_push -4
  k_push -2
  k_pushiw $A510
  k_callx RF_3619, 6
  k_jump JOURIKU_L_9C0E
JOURIKU_L_9C06:
  k_pushi 1
  k_pushiw $A518
  k_callx RF_2FB9, 4
JOURIKU_L_9C0E:
  k_return
JOURIKU_F_9C0F:
  k_func 0
  k_pushi 1
  k_pushiw $A520
  k_callx RF_2FB9, 4
  k_pusharg 13
  k_pusharg 11
  k_callx JOURIKU_F_9B6E, 4
  k_pusharg 13
  k_pusharg 11
  k_callx JOURIKU_F_9BA3, 4
  k_pusharg 13
  k_pusharg 11
  k_callx JOURIKU_F_9BD9, 4
  k_return
JOURIKU_F_9C2F:
  k_func 0
  k_ldlarg 11
  k_addli 13
  k_pushl
  k_pushib 20
  k_callx RF_2F8F, 4
  k_pusharg 13
  k_pushiw $A52A
  k_callx RF_3619, 4
  k_return
JOURIKU_F_9C46:
  k_func 0
  k_pushi 0
  k_pushiw $A531
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushi 0
  k_pushib 17
  k_pushib 30
  k_pusharg 11
  k_pushi 1
  k_callx RF_4F65, 12
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $A538
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $A53D
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushib 17
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $A542
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushib 23
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $A547
  k_callx RF_2FB9, 4
  k_pushi 2
  k_ldlarg 11
  k_addli 14
  k_pushl
  k_pushib 18
  k_callx RF_4B2A, 6
  k_pusharg 13
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx JOURIKU_F_9C2F, 4
  k_ldlarg 11
  k_addli 14
  k_pushl
  k_pushib 24
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $A54E
  k_callx RF_2FB9, 4
  k_return
JOURIKU_F_9CC5:
  k_func 18
  k_ldli 1
  k_stl -18
  k_ldli 9
  k_stla $F300
  k_ldlarg 11
  k_addli 2
  k_stla $F302
  k_ldlarg 15
  k_ldri 3
  k_mul
  k_stl -14
JOURIKU_L_9CD9:
  k_ldl -10
  k_ldrib -1
  k_ne
  k_jumpt JOURIKU_L_9CE4
  k_call JOURIKU_F_9B55
  k_return
JOURIKU_L_9CE4:
  k_ldli 1
  k_stl -16
  k_ldli 0
  k_jump JOURIKU_L_9CFD
JOURIKU_L_9CEA:
  k_ldlarg 13
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_callx JOURIKU_F_982D, 2
  k_jumpf JOURIKU_L_9CFB
  k_ldli 0
  k_stl -16
  k_jump JOURIKU_L_9D04
JOURIKU_L_9CFB:
  k_ldl -2
  k_inc
JOURIKU_L_9CFD:
  k_stl -2
  k_ldl -2
  k_ldrarg 15
  k_ult
  k_jumpt JOURIKU_L_9CEA
JOURIKU_L_9D04:
  k_ldl -16
  k_jumpf JOURIKU_L_9D0C
  k_call JOURIKU_F_9B55
  k_return
JOURIKU_L_9D0C:
  k_ldl -18
  k_jumpf JOURIKU_L_9D18
  k_call RF_5C91
  k_ldli 0
  k_stl -18
  k_jump JOURIKU_L_9D1B
JOURIKU_L_9D18:
  k_call JOURIKU_F_9B16
JOURIKU_L_9D1B:
  k_pushi 1
  k_pushiw $A567
  k_callx RF_2FB9, 4
  k_pusharg 15
  k_pushi 2
  k_pushi 7
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_pushi 9
  k_push -14
  k_callx JOURIKU_F_99AD, 12
  k_stl -10
  k_ldl -10
  k_ldr -14
  k_ult
  k_jumpf JOURIKU_L_9CD9
  k_ldl -10
  k_ldrarg 15
  k_umod
  k_ldrarg 13
  k_add
  k_derefb
  k_stl -4
  k_ldl -10
  k_ldrarg 15
  k_udiv
  k_stl -6
  k_push -4
  k_callx JOURIKU_F_982D, 2
  k_jumpt JOURIKU_L_9D56
  k_call JOURIKU_F_9B16
  k_pushiw $A57E
  k_callx RF_4B44, 2
  k_jump JOURIKU_L_9CD9
JOURIKU_L_9D56:
  k_push -4
  k_ldl -6
  k_shl1
  k_ldriw $A55B
  k_add
  k_deref
  k_callptrn 2
  k_pushl
  k_push -4
  k_ldl -6
  k_shl1
  k_ldriw $A561
  k_add
  k_deref
  k_callptrn 2
  k_popr
  k_gt
  k_jumpf JOURIKU_L_9CD9
  k_push -4
  k_ldl -6
  k_shl1
  k_ldriw $A55B
  k_add
  k_deref
  k_callptrn 2
  k_pushl
  k_push -4
  k_ldl -6
  k_shl1
  k_ldriw $A561
  k_add
  k_deref
  k_callptrn 2
  k_popr
  k_sub
  k_ldri 5
  k_sdiv
  k_stl -12
  k_push -4
  k_ldl -6
  k_shl1
  k_ldriw $A55B
  k_add
  k_deref
  k_callptrn 2
  k_pushl
  k_push -4
  k_ldl -6
  k_shl1
  k_ldriw $A561
  k_add
  k_deref
  k_callptrn 2
  k_popr
  k_sub
  k_ldri 5
  k_smod
  k_jumpf JOURIKU_L_9DAA
  k_ldli 1
  k_jump JOURIKU_L_9DAB
JOURIKU_L_9DAA:
  k_ldli 0
JOURIKU_L_9DAB:
  k_swap
  k_ldl -12
  k_add
  k_stl -12
  k_ldlarg 17
  k_deref
  k_pushl
  k_ldl -12
  k_popr
  k_gt
  k_jumpf JOURIKU_L_9DBB
  k_ldlarg 17
  k_deref
  k_stl -12
JOURIKU_L_9DBB:
  k_call JOURIKU_F_9B16
  k_push -12
  k_pushi 0
  k_pushiw $A59D
  k_callx RF_3C4E, 6
  k_stl -8
  k_ldl -8
  k_ldrib -1
  k_ne
  k_jumpf JOURIKU_L_9CD9
  k_push -8
  k_push -4
  k_ldl -6
  k_shl1
  k_ldriw $A555
  k_add
  k_deref
  k_callptrn 4
  k_push -8
  k_pusharg 13
  k_pusharg 15
  k_callx JOURIKU_F_991A, 6
  k_push -8
  k_ldlarg 17
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldlarg 17
  k_deref
  k_pushl
  k_pusharg 11
  k_callx JOURIKU_F_9C2F, 4
  k_push -4
  k_ldla $F302
  k_dec
  k_pushl
  k_callx JOURIKU_F_9C0F, 4
  k_ldlarg 17
  k_deref
  k_jumpt JOURIKU_L_9CD9
  k_call JOURIKU_F_9B16
  k_pushiw $A5B2
  k_callx RF_4B44, 2
  k_call JOURIKU_F_9B55
  k_return
JOURIKU_F_9E0D:
  k_func 8
  k_ldli 0
  k_jump JOURIKU_L_9E73
JOURIKU_L_9E16:
  k_ldlarg 11
  k_ldr -2
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -6
  k_ldl -2
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_derefb
  k_pushl
  k_ldl -6
  k_derefb
  k_popr
  k_ne
  k_jumpf JOURIKU_L_9E33
  k_ldli 1
  k_return
JOURIKU_L_9E33:
  k_ldl -2
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_inc
  k_derefb
  k_pushl
  k_ldl -6
  k_inc
  k_derefb
  k_popr
  k_ne
  k_jumpf JOURIKU_L_9E45
  k_ldli 1
  k_return
JOURIKU_L_9E45:
  k_ldl -2
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -6
  k_addli 2
  k_derefb
  k_popr
  k_ne
  k_jumpf JOURIKU_L_9E57
  k_ldli 1
  k_return
JOURIKU_L_9E57:
  k_ldl -4
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -8
  k_ldl -8
  k_addlib 20
  k_deref
  k_pushl
  k_ldl -2
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_popr
  k_ne
  k_jumpf JOURIKU_L_9E71
  k_ldli 1
  k_return
JOURIKU_L_9E71:
  k_ldl -2
  k_inc
JOURIKU_L_9E73:
  k_stl -2
  k_ldl -2
  k_ldrarg 17
  k_ult
  k_jumpt JOURIKU_L_9E16
  k_ldli 0
  k_return
JOURIKU_F_9E7C:
  k_func 0
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf JOURIKU_L_9E8D
  k_ldli 11
  k_jump JOURIKU_L_9E8E
JOURIKU_L_9E8D:
  k_ldli 2
JOURIKU_L_9E8E:
  k_return
JOURIKU_F_9E8F:
  k_func 56
  k_call JOURIKU_F_9E7C
  k_stl -6
  k_pushib 16
  k_pushib 30
  k_push -6
  k_pushi 1
  k_callx RF_5FFB, 8
  k_pusharg 11
  k_push -6
  k_callx JOURIKU_F_9C46, 4
  k_ldl -6
  k_inc
  k_stl -6
  k_ldli 0
  k_stl -2
  k_stl -4
  k_jump JOURIKU_L_9F56
JOURIKU_L_9EB1:
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -52
  k_ldln -52
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf JOURIKU_L_9F53
  k_leal -23
  k_pushl
  k_ldl -4
  k_popr
  k_add
  k_pushl
  k_ldl -2
  k_popstoreb
  k_leal -38
  k_pushl
  k_ldl -4
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldln -52
  k_derefb
  k_popstoreb
  k_leal -37
  k_pushl
  k_ldl -4
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldln -52
  k_inc
  k_derefb
  k_popstoreb
  k_leal -36
  k_pushl
  k_ldl -4
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldln -52
  k_addli 2
  k_derefb
  k_popstoreb
  k_ldl -2
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -54
  k_leal -48
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldln -54
  k_addlib 20
  k_deref
  k_popstore
  k_ldln -52
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_stln -56
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldln -56
  k_popstore
  k_ldl -4
  k_shl1
  k_ldr -6
  k_add
  k_addli 2
  k_pushl
  k_pushi 2
  k_callx RF_2F8F, 4
  k_leal -18
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_push -2
  k_ldl -4
  k_shl1
  k_ldr -6
  k_add
  k_inc
  k_pushl
  k_callx JOURIKU_F_9C0F, 4
  k_ldl -4
  k_inc
  k_stl -4
JOURIKU_L_9F53:
  k_ldl -2
  k_inc
  k_stl -2
JOURIKU_L_9F56:
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt JOURIKU_L_9EB1
  k_leal 11
  k_pushl
  k_push -4
  k_leal -23
  k_pushl
  k_push -6
  k_callx JOURIKU_F_9CC5, 8
  k_stln -50
  k_ldln -50
  k_jumpf JOURIKU_L_9F84
  k_push -4
  k_leal -48
  k_pushl
  k_leal -38
  k_pushl
  k_leal -23
  k_pushl
  k_callx JOURIKU_F_9E0D, 8
  k_stln -50
JOURIKU_L_9F84:
  k_ldln -50
  k_jumpt JOURIKU_L_A000
  k_ldli 0
  k_jump JOURIKU_L_9FF0
JOURIKU_L_9F8D:
  k_leal -23
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_stl -8
  k_ldl -8
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -52
  k_pushn -52
  k_leal -38
  k_pushl
  k_ldl -2
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldln -52
  k_inc
  k_pushl
  k_leal -37
  k_pushl
  k_ldl -2
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldln -52
  k_addli 2
  k_pushl
  k_leal -36
  k_pushl
  k_ldl -2
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldl -8
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -54
  k_ldln -54
  k_addlib 20
  k_pushl
  k_leal -48
  k_pushl
  k_ldl -2
  k_shl1
  k_popr
  k_add
  k_deref
  k_popstore
  k_push -8
  k_ldl -2
  k_shl1
  k_ldr -6
  k_add
  k_inc
  k_pushl
  k_callx JOURIKU_F_9C0F, 4
  k_ldl -2
  k_inc
JOURIKU_L_9FF0:
  k_stl -2
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt JOURIKU_L_9F8D
  k_call JOURIKU_F_9B16
  k_pushiw $A5C6
  k_jump JOURIKU_L_A006
JOURIKU_L_A000:
  k_call JOURIKU_F_9B16
  k_pushiw $A5DC
JOURIKU_L_A006:
  k_callx RF_4B44, 2
  k_call RF_5F56
  k_ldln -50
  k_return
JOURIKU_F_A010:
  k_func 6
  k_ldli 1
  k_stl -2
  k_ldli 0
  k_stl -6
  k_ldli 0
  k_jump JOURIKU_L_A044
JOURIKU_L_A01D:
  k_ldl -4
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf JOURIKU_L_A042
  k_ldl -4
  k_ldrib 24
  k_mul
  k_ldriw $E9BA
  k_add
  k_deref
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_push -4
  k_callx JOURIKU_F_982D, 2
  k_jumpf JOURIKU_L_A042
  k_ldli 0
  k_stl -2
JOURIKU_L_A042:
  k_ldl -4
  k_inc
JOURIKU_L_A044:
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt JOURIKU_L_A01D
  k_ldl -2
  k_jumpf JOURIKU_L_A05B
  k_call RF_5C91
  k_pushiw $A5F1
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
JOURIKU_L_A05B:
  k_ldl -6
  k_jumpt JOURIKU_L_A06B
  k_call RF_5C91
  k_pushiw $A609
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
JOURIKU_L_A06B:
  k_push -6
  k_callx JOURIKU_F_9E8F, 2
  k_stl -2
  k_ldl -2
  k_return
JOURIKU_F_A073:
  k_func 8
  k_ldlba $EF86
  k_ldri 7
  k_and
  k_stl -4
  k_call RF_5C91
  k_ldlba $E447
  k_ldri 5
  k_udiv
  k_ldr -4
  k_ult
  k_jumpt JOURIKU_L_A091
  k_ldl -4
  k_ldri 5
  k_uge
  k_jumpf JOURIKU_L_A099
JOURIKU_L_A091:
  k_pushiw $A628
  k_callx RF_4B44, 2
  k_return
JOURIKU_L_A099:
  k_pushiw $A644
  k_callx RF_4B44, 2
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump JOURIKU_L_A0BA
JOURIKU_L_A0A6:
  k_ldlarg 13
  k_ldr -6
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9B8
  k_add
  k_deref
  k_ldri 10
  k_sdiv
  k_swap
  k_ldl -2
  k_add
  k_stl -2
  k_ldl -6
  k_inc
JOURIKU_L_A0BA:
  k_stl -6
  k_ldl -6
  k_ldrarg 11
  k_ult
  k_jumpt JOURIKU_L_A0A6
  k_call JOURIKU_F_960C
  k_stl -8
  k_pushi 14
  k_pushib 30
  k_push -8
  k_pushi 1
  k_callx RF_5FFB, 8
  k_pushi 14
  k_pushib 30
  k_push -8
  k_pushi 1
  k_callx RF_4D41, 8
  k_push -8
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_callx RF_6995, 8
  k_call RF_4D8B
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_return
JOURIKU_F_A0F3:
  k_func 17
  k_ldli 0
  k_stln -15
  k_stln -13
  k_ldli 0
  k_stl -2
  k_stl -6
  k_jump JOURIKU_L_A143
JOURIKU_L_A103:
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -17
  k_ldln -17
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf JOURIKU_L_A140
  k_leal -11
  k_pushl
  k_ldl -6
  k_popr
  k_add
  k_pushl
  k_ldl -2
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_swap
  k_ldln -13
  k_add
  k_stln -13
  k_push -2
  k_callx RF_4565, 2
  k_swap
  k_ldln -15
  k_add
  k_stln -15
JOURIKU_L_A140:
  k_ldl -2
  k_inc
  k_stl -2
JOURIKU_L_A143:
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt JOURIKU_L_A103
  k_call RF_5C91
  k_ldln -15
  k_ldrn -13
  k_eq
  k_jumpf JOURIKU_L_A15D
  k_pushiw $A65D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
JOURIKU_L_A15D:
  k_call RF_430C
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpt JOURIKU_L_A17D
  k_ldl -2
  k_ldri 10
  k_mul
  k_ldriw $EAC3
  k_add
  k_derefb
  k_pushl
  k_pushib 100
  k_callx RF_3F3E, 2
  k_popr
  k_uge
  k_jumpf JOURIKU_L_A184
JOURIKU_L_A17D:
  k_pushi 1
  k_pushiw $A689
  k_jump JOURIKU_L_A1A8
JOURIKU_L_A184:
  k_ldlba $EF86
  k_ldri 7
  k_and
  k_stl -4
  k_ldl -4
  k_ldri 2
  k_ult
  k_jumpf JOURIKU_L_A197
  k_pushi 1
  k_pushiw $A699
  k_jump JOURIKU_L_A1A8
JOURIKU_L_A197:
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpf JOURIKU_L_A1A4
  k_pushi 1
  k_pushiw $A6B8
  k_jump JOURIKU_L_A1A8
JOURIKU_L_A1A4:
  k_pushi 1
  k_pushiw $A6CF
JOURIKU_L_A1A8:
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw $A6ED
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf JOURIKU_L_A1C5
  k_leal -11
  k_pushl
  k_push -6
  k_callx JOURIKU_F_A073, 4
  k_ldli 1
  k_return
JOURIKU_L_A1C5:
  k_ldli 0
  k_return
JOURIKU_F_A1C7:
  k_func 10
  k_ldlarg 13
  k_ldrib 18
  k_udiv
  k_stl -2
  k_ldl -2
  k_jumpf JOURIKU_L_A1DD
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_addlib -90
  k_jump JOURIKU_L_A1E5
JOURIKU_L_A1DD:
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_pushl
  k_ldlib 90
  k_popr
  k_sub
JOURIKU_L_A1E5:
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
  k_jumpf JOURIKU_L_A1FD
  k_ldlib 72
  k_ldr -10
  k_sub
  k_jump JOURIKU_L_A1FE
JOURIKU_L_A1FD:
  k_ldl -10
JOURIKU_L_A1FE:
  k_ldri 5
  k_mul
  k_stl -8
  k_call RF_5C3E
  k_push -8
  k_ldl -4
  k_shl1
  k_ldriw $A6F9
  k_add
  k_deref
  k_pushl
  k_push -6
  k_ldl -2
  k_shl1
  k_ldriw $A6F5
  k_add
  k_deref
  k_pushl
  k_pushiw $A705
  k_callx RF_3619, 10
  k_ldli 1
  k_return
JOURIKU_F_A21F:
  k_func 42
  k_ldliw $E564
  k_stln -38
  k_ldlba $EF61
  k_ldri 4
  k_and
  k_jumpf JOURIKU_L_A3EA
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_stl -6
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_stl -8
  k_ldlba $EF5D
  k_stl -2
  k_ldlba $EF5E
  k_stl -4
  k_ldl -2
  k_ldr -6
  k_eq
  k_jumpf JOURIKU_L_A33B
  k_ldl -4
  k_ldr -8
  k_eq
  k_jumpf JOURIKU_L_A33B
  k_ldlba $EF5F
  k_pushl
  k_ldln -38
  k_addli 2
  k_derefb
  k_popr
  k_eq
  k_jumpf JOURIKU_L_A315
  k_ldlba $EF60
  k_pushl
  k_ldln -38
  k_addli 3
  k_derefb
  k_popr
  k_eq
  k_jumpf JOURIKU_L_A315
  k_pushi 2
  k_callx RF_28CC, 2
  k_pushib 26
  k_callx RF_21CA, 2
  k_pushi 0
  k_pushiw $A75D
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $A767
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $A775
  k_callx RF_2FB9, 4
  k_call RF_2F18
  k_pushi 1
  k_callx RF_4F48, 2
  k_call RF_3D7C
  k_call RF_7C5A
  k_pushi 2
  k_pushib 16
  k_ldlba $F164
  k_shl1
  k_shl1
  k_ldriw $0240
  k_mul
  k_addliw $8000
  k_pushl
  k_pushib 72
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_call RF_5F56
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_5BBB, 2
  k_pushi 1
  k_callx RF_4F2A, 2
  k_ldlba $EF57
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_ldlba $EF57
  k_ldri 4
  k_shr
  k_shl1
  k_ldriw $E56F
  k_add
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
  k_ldli 2
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_ldli 4
  k_swap
  k_ldlba $EF61
  k_xor
  k_stlba $EF61
  k_jump JOURIKU_L_A3F4
JOURIKU_L_A315:
  k_call RF_5C91
  k_pushi 1
  k_pushiw $A777
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_5C91
  k_pushi 0
  k_pushiw $A79F
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
JOURIKU_L_A335:
  k_call RF_472D
  k_jump JOURIKU_L_A3F4
JOURIKU_L_A33B:
  k_leal -30
  k_pushl
  k_callx RF_4221, 2
  k_stl -10
  k_ldl -10
  k_jumpf JOURIKU_L_A357
  k_leal -30
  k_pushl
  k_push -10
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_derefb
  k_jump JOURIKU_L_A35A
JOURIKU_L_A357:
  k_ldliw $00FF
JOURIKU_L_A35A:
  k_stln -32
  k_pushi 0
  k_pushn -32
  k_callx RF_5C5A, 4
  k_pushi 1
  k_pushiw $A7D4
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldln -32
  k_ldriw $00FF
  k_ne
  k_jumpf JOURIKU_L_A397
  k_ldln -32
  k_ldri 10
  k_mul
  k_ldriw $EAC3
  k_add
  k_derefb
  k_pushl
  k_pushib 30
  k_callx RF_3F3E, 2
  k_addlib 70
  k_popr
  k_ule
  k_jumpf JOURIKU_L_A397
  k_push -4
  k_push -2
  k_callx JOURIKU_F_A1C7, 4
  k_call RF_472D
JOURIKU_L_A397:
  k_ldlib 31
  k_ldr -6
  k_sub
  k_stln -42
  k_ldln -42
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -2
  k_ldrn -42
  k_add
  k_stln -40
  k_ldln -40
  k_ldri 0
  k_lt
  k_jumpf JOURIKU_L_A3B8
  k_ldl -2
  k_ldrn -42
  k_add
  k_addlib 71
  k_stln -40
JOURIKU_L_A3B8:
  k_ldln -40
  k_stl -2
  k_call RF_5C3E
  k_ldl -4
  k_ldr -8
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_pushl
  k_ldl -2
  k_ldr -6
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_inc
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_ldriw $A741
  k_add
  k_derefb
  k_shl1
  k_ldriw $A730
  k_add
  k_deref
  k_pushl
  k_pushiw $A7FB
  k_callx RF_3619, 4
  k_jump JOURIKU_L_A335
JOURIKU_L_A3EA:
  k_call RF_5C91
  k_pushiw $A814
  k_callx RF_4B44, 2
JOURIKU_L_A3F4:
  k_ldli 0
  k_return
JOURIKU_F_A3F6:
  k_func 4
  k_ldli 0
  k_stl -4
JOURIKU_L_A3FD:
  k_pushi 2
  k_pushi 2
  k_pushiw $A830
  k_pushi 2
  k_pushi 0
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf JOURIKU_L_A41A
  k_ldl -2
  k_shl1
  k_ldriw $A834
  k_add
  k_deref
  k_callptr
  k_stl -4
JOURIKU_L_A41A:
  k_ldl -4
  k_ldri 1
  k_eq
  k_jumpt JOURIKU_L_A428
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf JOURIKU_L_A3FD
JOURIKU_L_A428:
  k_ldl -4
  k_return
  .byte "We only have"
  .byte $0A
  .byte "one ship!"
  .byte $00, $49, $A4, $4E, $A4, $1F, $96, $A0, $96
  .byte "Crew"
  .byte $00
  .byte "Cargo"
  .byte $00
  .byte "I've got scant"
  .byte $0A
  .byte "crew here."
  .byte $0A, $00
  .byte "Sail"
  .byte $00
  .byte "All hands on"
  .byte $0A
  .byte "deck!"
  .byte $00
  .byte "OK to stand by"
  .byte $0A
  .byte "until further"
  .byte $0A
  .byte "orders"
  .byte $00, $BF, $A4, $C4, $A4, $C8, $A4, $D1, $A4, $D8, $A4, $4A, $97, $10, $A0, $D7
  .byte $96, $F6, $A3, $95, $97
  .byte "Sail"
  .byte $00, $46, $69, $78, $00
  .byte "Transfer"
  .byte $00
  .byte "Search"
  .byte $00
  .byte "Wait"
  .byte $00, $00, $1B, $43, $32, $1B, $52, $28, $00
  .byte "Is this"
  .byte $0A, $4F, $4B, $00
  .byte "%3d/%3d"
  .byte $00
  .byte " -OK-  "
  .byte $00
  .byte "%3d/%3d"
  .byte $00
  .byte " -OK-  "
  .byte $00
  .byte "%3d/%3d"
  .byte $00
  .byte " -OK-  "
  .byte $00, $1B, $52, $22, $1B, $45, $3F, $1B, $43, $30, $00, $1B
  .byte "C0%4d"
  .byte $00, $1B, $52, $22, $1B, $45, $3F, $00
  .byte "Ship"
  .byte $00
  .byte "Hull"
  .byte $00
  .byte "Mast"
  .byte $00
  .byte "Rudder"
  .byte $00
  .byte " bales"
  .byte $00, $75, $98, $AC, $98, $E3, $98, $62, $99, $70, $99, $7E, $99, $8C, $99, $97
  .byte $99, $A2, $99
  .byte "Choose repairs"
  .byte $0A
  .byte "(B-end)"
  .byte $00
  .byte "That ship"
  .byte $0A
  .byte "doesn't need"
  .byte $0A
  .byte "repairs"
  .byte $00
  .byte "Use how much"
  .byte $0A
  .byte "lumber"
  .byte $0A, $00
  .byte "We're out of"
  .byte $0A
  .byte "lumber"
  .byte $00
  .byte "Repairs are"
  .byte $0A
  .byte "cancelled"
  .byte $00
  .byte "Repairs are"
  .byte $0A
  .byte "finished"
  .byte $00
  .byte "There's nothing"
  .byte $0A
  .byte "to mend"
  .byte $00
  .byte "There's no"
  .byte $0A
  .byte "lumber for"
  .byte $0A
  .byte "repairs"
  .byte $00, $00
  .byte "Our search was"
  .byte $0A
  .byte "unsuccessful"
  .byte $00
  .byte "We found a clear"
  .byte $0A
  .byte "spring!"
  .byte $00
  .byte "There's not"
  .byte $0A
  .byte "enough space to"
  .byte $0A
  .byte "store the water"
  .byte $00
  .byte "It's up to you."
  .byte $00
  .byte "We're bound to"
  .byte $0A
  .byte "find something!"
  .byte $00
  .byte "I have nothing"
  .byte $0A
  .byte "to say."
  .byte $00
  .byte "There couldn't"
  .byte $0A
  .byte "be water here."
  .byte $00, $0A
  .byte "Search"
  .byte $00, $FD, $A6, $FF, $A6, $01, $A7, $03, $A7, $4E, $00, $53, $00, $45, $00, $57
  .byte $00
  .byte "Looks like the"
  .byte $0A
  .byte "treasure's at"
  .byte $0A
  .byte "%s %d"
  .byte $DF
  .byte " %s %d"
  .byte $DF, $00, $49, $A7, $4B, $A7, $4E, $A7, $50, $A7, $53, $A7, $55, $A7, $58, $A7
  .byte $5A, $A7, $07, $06, $05, $00, $FF, $04, $01, $02, $03, $4E, $00, $4E, $45, $00
  .byte $45, $00, $53, $45, $00, $53, $00, $53, $57, $00, $57, $00, $4E, $57, $00, $0A
  .byte "Captain "
  .byte $00, $0A, $0A
  .byte "found the"
  .byte $0A, $0A, $00, $21, $00
  .byte "This doesn't"
  .byte $0A
  .byte "seem to be the"
  .byte $0A
  .byte "spot, Cap'n"
  .byte $00, $0A
  .byte "We'd better"
  .byte $0A
  .byte "confirm the"
  .byte $0A
  .byte "shape of the"
  .byte $0A
  .byte "coast from sea"
  .byte $00
  .byte "Let me have a"
  .byte $0A
  .byte "look at the"
  .byte $0A
  .byte "treasure map"
  .byte $00
  .byte "I reckon it's"
  .byte $0A
  .byte "further %s"
  .byte $00
  .byte "There's nothing"
  .byte $0A
  .byte "to be found"
  .byte $00, $38, $A8, $3E, $A8, $F3, $A0, $1F, $A2
  .byte "Water"
  .byte $00
  .byte "Treasure"
  .byte $00, $00
