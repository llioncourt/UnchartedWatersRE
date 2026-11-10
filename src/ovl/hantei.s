; overlay hantei, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp HANTEI_F_B003
HANTEI_F_B003:
  k_func 0
  k_call HANTEI_F_B6E9
  k_stla $F9A6
  k_return
HANTEI_F_B00F:
  k_func 0
  k_ldlbf 11
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_return
HANTEI_F_B01F:
  k_func 1
  k_ldlbf 13
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9B
  k_popr
  k_shr
  k_stlbf -1
  k_ldlbf -1
  k_pushl
  k_ldlbf 11
  k_pushl
  k_ldli 8
  k_popr
  k_shr
  k_popr
  k_and
  k_jumpf HANTEI_L_B046
  k_ldli 0
  k_jump HANTEI_L_B047
HANTEI_L_B046:
  k_ldli 1
HANTEI_L_B047:
  k_return
HANTEI_F_B048:
  k_func 0
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpf HANTEI_L_B075
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf HANTEI_L_B075
  k_ldlba $EF56
  k_ldri 1
  k_eq
  k_jumpf HANTEI_L_B075
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF57
  k_popr
  k_eq
  k_jumpf HANTEI_L_B075
  k_ldli 0
  k_jump HANTEI_L_B076
HANTEI_L_B075:
  k_ldli 1
HANTEI_L_B076:
  k_return
HANTEI_F_B077:
  k_func 1
  k_ldlbf 13
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9D
  k_popr
  k_shr
  k_stlbf -1
  k_ldlbf -1
  k_pushl
  k_ldlbf 11
  k_pushl
  k_ldli 8
  k_popr
  k_shr
  k_popr
  k_and
  k_return
HANTEI_F_B098:
  k_func 8
  k_ldli 1
  k_stla $F9AE
  k_ldli 15
  k_stla $F302
  k_ldli 13
  k_stla $F304
  k_pushi 1
  k_pushi 0
  k_pushi 2
  k_callx $9C39, 6
  k_ldliw $F9B2
  k_stl -8
  k_ldliw $00A0
  k_stl -4
  k_ldlib 127
  k_stl -6
  k_pushib 126
  k_pushi 0
  k_ldl -8
  k_addlib 36
  k_pushl
  k_pushi 3
  k_pushi 2
  k_push -6
  k_push -4
  k_ldl -8
  k_addliw $0090
  k_deref
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
  k_return
HANTEI_F_B0D2:
  k_func 7
  k_ldlbf 15
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stln -5
  k_ldliw $EA8F
  k_stl -2
  k_ldlbf 13
  k_pushl
  k_ldlbf 11
  k_shl1
  k_shl1
  k_popr
  k_add
  k_ldriw $B856
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_stlbf -3
  k_ldlbf -3
  k_pushl
  k_ldlbf 13
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_popr
  k_ugt
  k_jumpf HANTEI_L_B138
  k_ldlba $EE76
  k_inc
  k_pushl
  k_ldlbf 13
  k_ldrn -5
  k_add
  k_derefb
  k_pushl
  k_ldlbf -3
  k_pushl
  k_ldlbf 13
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_popr
  k_sub
  k_popr
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_jump HANTEI_L_B139
HANTEI_L_B138:
  k_ldli 0
HANTEI_L_B139:
  k_stln -7
  k_ldln -7
  k_return
HANTEI_F_B13E:
  k_func 7
  k_ldlbf 15
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stl -4
  k_ldliw $EA8F
  k_stl -2
  k_ldlbf 13
  k_pushl
  k_ldlbf 11
  k_shl1
  k_shl1
  k_popr
  k_add
  k_ldriw $B866
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_stlbf -5
  k_ldlbf -5
  k_ldrib 50
  k_ult
  k_jumpf HANTEI_L_B190
  k_ldlbf 13
  k_ldr -4
  k_add
  k_derefb
  k_pushl
  k_ldlbf 13
  k_ldr -4
  k_add
  k_derefb
  k_pushl
  k_ldlbf -5
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_popr
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_sdiv
  k_jump HANTEI_L_B191
HANTEI_L_B190:
  k_ldli 0
HANTEI_L_B191:
  k_stln -7
  k_ldln -7
  k_return
HANTEI_F_B196:
  k_func 6
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 3
  k_ldriw $01F4
  k_mul
  k_stl -4
  k_ldla $E56D
  k_jumpt HANTEI_L_B1BF
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pusha $B7BE
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_return
HANTEI_L_B1BF:
  k_call RF_60EE
  k_call RF_60B2
  k_pusha $E56D
  k_pushi 1
  k_pusha $B7C0
  k_callx RF_3C4E, 6
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf HANTEI_L_B1DA
  k_ldli 0
  k_return
HANTEI_L_B1DA:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_ldl -2
  k_ldr -4
  k_ugt
  k_jumpf HANTEI_L_B20C
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpf HANTEI_L_B20C
  k_call RF_60B2
  k_pushi 1
  k_pushiw $B876
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldl -2
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_ldli 1
  k_return
HANTEI_L_B20C:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $B8A8
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 10
  k_return
HANTEI_F_B21C:
  k_func 3
  k_ldli 0
  k_stln -3
HANTEI_L_B224:
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pusha $B7C4
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw $B8E4
  k_pushi 1
  k_pushi 8
  k_pushib 25
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf HANTEI_L_B224
  k_ldlbf -1
  k_jumpt HANTEI_L_B26F
  k_ldlbf 11
  k_pushl
  k_callx HANTEI_F_B196, 2
  k_stln -3
  k_ldln -3
  k_jumpf HANTEI_L_B224
  k_ldln -3
  k_ldri 10
  k_eq
  k_jumpf HANTEI_L_B26C
  k_ldli 0
  k_stln -3
HANTEI_L_B26C:
  k_ldln -3
  k_return
HANTEI_L_B26F:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_ldlarg 13
  k_jumpf HANTEI_L_B288
  k_pushi 1
  k_pushiw $B8F3
  k_jump HANTEI_L_B28C
HANTEI_L_B288:
  k_pushi 1
  k_pushiw $B929
HANTEI_L_B28C:
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_return
HANTEI_F_B295:
  k_func 0
  k_call HANTEI_F_B098
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pusha $B7C2
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw $B946
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pusharg 13
  k_ldlbf 11
  k_pushl
  k_callx HANTEI_F_B21C, 4
  k_jumpf HANTEI_L_B31E
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $B982
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pushiw $B9AF
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 6
  k_pushib 16
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldliw $00FF
  k_stlba $FB84
  k_pushiw $01CE
  k_pushi 0
  k_pushiw $F9B2
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 2
  k_stla $F308
  k_ldli 0
  k_return
HANTEI_L_B31E:
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $B9D2
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
HANTEI_F_B332:
  k_func 7
  k_leal -7
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stlbf -1
  k_ldli 0
  k_jump HANTEI_L_B367
HANTEI_L_B347:
  k_pushi 10
  k_pushi 0
  k_leal -7
  k_pushl
  k_ldlbf -2
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9AC
  k_add
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldlbf -2
  k_inc
HANTEI_L_B367:
  k_stlbf -2
  k_ldlbf -1
  k_pushl
  k_ldlbf -2
  k_popr
  k_ult
  k_jumpt HANTEI_L_B347
  k_return
HANTEI_F_B377:
  k_func 0
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $B9F0
  k_callx RF_2FB9, 4
  k_ldli 10
  k_swap
  k_ldla $E56D
  k_udiv
  k_stla $E56D
  k_call HANTEI_F_B332
  k_call RF_472D
  k_return
HANTEI_F_B39F:
  k_func 2
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BA12
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushib 120
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EAC5
  k_pushl
  k_ldlba $E446
  k_shl1
  k_popr
  k_add
  k_popr
  k_ugt
  k_jumpf HANTEI_L_B3E6
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BA3A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump HANTEI_L_B41C
HANTEI_L_B3E6:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BA47
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 0
  k_pushiw $BA61
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call HANTEI_F_B377
HANTEI_L_B41C:
  k_ldli 1
  k_return
HANTEI_F_B41E:
  k_func 6
  k_ldlba $FB81
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stl -6
  k_ldlba $FB80
  k_ldr -6
  k_add
  k_derefb
  k_pushl
  k_ldlba $FB80
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_popr
  k_mul
  k_ldri 5
  k_udiv
  k_stl -4
  k_push -4
  k_callx RF_3F3E, 2
  k_ldr -4
  k_add
  k_addlib 100
  k_stl -4
  k_ldla $E56D
  k_jumpt HANTEI_L_B47B
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BA98
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BAB3
  k_jump HANTEI_L_B4C9
HANTEI_L_B47B:
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pusha $E56D
  k_pushi 1
  k_pushiw $BAE8
  k_callx RF_3C4E, 8
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf HANTEI_L_B497
  k_ldli 0
  k_return
HANTEI_L_B497:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_ldl -2
  k_ldr -4
  k_ugt
  k_jumpf HANTEI_L_B4C2
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB01
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldl -2
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_jump HANTEI_L_B4D3
HANTEI_L_B4C2:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB19
HANTEI_L_B4C9:
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call HANTEI_F_B377
HANTEI_L_B4D3:
  k_ldli 1
  k_return
HANTEI_F_B4D5:
  k_func 0
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt HANTEI_L_B4FE
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB42
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump HANTEI_L_B51A
HANTEI_L_B4FE:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB7C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call HANTEI_F_B377
HANTEI_L_B51A:
  k_ldli 1
  k_return
HANTEI_F_B51C:
  k_func 3
  k_pushi 1
  k_pushib 18
  k_callx RF_21EA, 4
  k_call HANTEI_F_B098
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BBEE
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_ldla $F18A
  k_inc
  k_stla $F18A
  k_pusha $E444
  k_callx RF_40DE, 2
  k_ldlbf 11
  k_shl1
  k_ldriw $BBB1
  k_add
  k_deref
  k_pushl
  k_pushiw $BC26
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldli 0
  k_stln -3
HANTEI_L_B578:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BC52
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw $BBB7
  k_pushi 2
  k_pushi 6
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf HANTEI_L_B5B4
  k_ldlbf 11
  k_pushl
  k_ldlbf -1
  k_shl1
  k_ldriw $BBBD
  k_add
  k_deref
  k_callptrn 2
  k_stln -3
HANTEI_L_B5B4:
  k_ldln -3
  k_jumpf HANTEI_L_B578
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $BC64
  k_callx RF_4B44, 2
  k_call RF_2281
  k_return
HANTEI_F_B5CF:
  k_func 8
  k_call RF_60EE
  k_ldla $E56F
  k_ldri 7
  k_and
  k_stl -2
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf HANTEI_L_B5FF
  k_ldla $EF52
  k_derefb
  k_ldri 9
  k_ne
  k_jumpf HANTEI_L_B5FF
  k_ldla $EF52
  k_derefb
  k_ldri 8
  k_ne
  k_jumpf HANTEI_L_B5FF
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf HANTEI_L_B608
HANTEI_L_B5FF:
  k_pushib 20
  k_callx RF_3F3E, 2
  k_jumpt HANTEI_L_B62C
HANTEI_L_B608:
  k_ldlba $EF69
  k_ldrib 50
  k_ult
  k_jumpf HANTEI_L_B62C
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf HANTEI_L_B625
  k_ldliw $BC9F
  k_jump HANTEI_L_B628
HANTEI_L_B625:
  k_ldliw $BCDC
HANTEI_L_B628:
  k_pushl
  k_jump HANTEI_L_B6E4
HANTEI_L_B62C:
  k_ldlba $EF69
  k_jumpt HANTEI_L_B64C
  k_ldlba $E442
  k_jumpt HANTEI_L_B64C
  k_pushi 10
  k_callx RF_3F3E, 2
  k_jumpt HANTEI_L_B64C
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw $BD0C
  k_jump HANTEI_L_B6E4
HANTEI_L_B64C:
  k_ldlba $EF69
  k_pushl
  k_callx HANTEI_F_B00F, 2
  k_stlbf -3
  k_ldlbf -3
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B01F, 4
  k_pushl
  k_ldlbf -3
  k_ldri 1
  k_ugt
  k_popr
  k_and
  k_jumpf HANTEI_L_B68D
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf HANTEI_L_B68D
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf HANTEI_L_B687
  k_ldliw $BD5F
  k_jump HANTEI_L_B628
HANTEI_L_B687:
  k_ldliw $BD8A
  k_jump HANTEI_L_B628
HANTEI_L_B68D:
  k_ldlba $E447
  k_ldri 5
  k_ult
  k_jumpf HANTEI_L_B6DB
  k_pushi 12
  k_callx RF_3F3E, 2
  k_jumpt HANTEI_L_B6DB
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BDAC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 3
  k_callx RF_3F3E, 2
  k_switchn 3
    .word $0000, HANTEI_L_B6C6
    .word $0001, HANTEI_L_B6CD
    .word $0002, HANTEI_L_B6D4
    .word HANTEI_L_B6E8
HANTEI_L_B6C6:
  k_pushi 1
  k_pushiw $BDDC
  k_jump HANTEI_L_B6E4
HANTEI_L_B6CD:
  k_pushi 1
  k_pushiw $BE15
  k_jump HANTEI_L_B6E4
HANTEI_L_B6D4:
  k_pushi 1
  k_pushiw $BE4E
  k_jump HANTEI_L_B6E4
HANTEI_L_B6DB:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $BE8A
HANTEI_L_B6E4:
  k_callx RF_2FB9, 4
HANTEI_L_B6E8:
  k_return
HANTEI_F_B6E9:
  k_func 10
  k_ldliw $E564
  k_stl -10
  k_ldl -10
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -10
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -10
  k_inc
  k_derefb
  k_pushl
  k_ldl -10
  k_derefb
  k_pushl
  k_callx $8747, 8
  k_stlbf -6
  k_stlba $FB81
  k_ldli 0
  k_stl -8
  k_ldlbf -6
  k_pushl
  k_callx HANTEI_F_B00F, 2
  k_stlbf -5
  k_ldlbf -5
  k_ldri 2
  k_eq
  k_jumpf HANTEI_L_B726
  k_ldliw $141C
  k_jump HANTEI_L_B731
HANTEI_L_B726:
  k_ldlbf -5
  k_ldri 3
  k_eq
  k_jumpf HANTEI_L_B734
  k_ldliw $1870
HANTEI_L_B731:
  k_stla $F9A0
HANTEI_L_B734:
  k_ldlbf -5
  k_dec
  k_stlba $FB80
  k_ldlbf -5
  k_ldri 1
  k_ugt
  k_jumpf HANTEI_L_B7B4
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B01F, 4
  k_jumpf HANTEI_L_B7B4
  k_ldlbf -6
  k_pushl
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B0D2, 6
  k_stl -2
  k_pushiw $012C
  k_callx RF_3F3E, 2
  k_ldr -2
  k_uge
  k_jumpf HANTEI_L_B7A9
  k_call HANTEI_F_B048
  k_jumpf HANTEI_L_B7B4
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B077, 4
  k_jumpf HANTEI_L_B7A5
  k_ldlbf -6
  k_pushl
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B13E, 6
  k_stl -4
  k_pushib 100
  k_callx RF_3F3E, 2
  k_ldr -4
  k_ult
  k_jumpf HANTEI_L_B7B4
  k_pushi 0
HANTEI_L_B799:
  k_ldlbf -5
  k_dec
  k_pushl
  k_callx HANTEI_F_B295, 4
  k_jump HANTEI_L_B7B3
HANTEI_L_B7A5:
  k_pushi 1
  k_jump HANTEI_L_B799
HANTEI_L_B7A9:
  k_ldlbf -5
  k_dec
  k_pushl
  k_callx HANTEI_F_B51C, 2
  k_ldli 1
HANTEI_L_B7B3:
  k_stl -8
HANTEI_L_B7B4:
  k_ldl -8
  k_jumpt HANTEI_L_B7BB
  k_call HANTEI_F_B5CF
HANTEI_L_B7BB:
  k_ldl -8
  k_return
  .byte $00, $C6, $B7, $E9, $B7, $02, $B8, $3A, $B8
  .byte "We don't have any goldfor a bribe!"
  .byte $00
  .byte "How much'll we give"
  .byte $0A
  .byte "them"
  .byte $00
  .byte "Cap'n, some gruff"
  .byte $0A
  .byte "looking officers are"
  .byte $0A
  .byte "heading our way!"
  .byte $00
  .byte "What should we do,"
  .byte $0A
  .byte "Captain?"
  .byte $00, $FF, $00, $02, $03, $00, $FF, $01, $04, $02, $01, $FF, $05, $03, $04, $05
  .byte $FF, $FF, $00, $02, $03, $00, $FF, $01, $04, $02, $01, $FF, $05, $03, $04, $05
  .byte $FF
  .byte "Hmm. I'll let you get"
  .byte $0A
  .byte "away with it just"
  .byte $0A
  .byte "this once"
  .byte $00
  .byte "What's this money?"
  .byte $0A
  .byte "Did ye think ye could"
  .byte $0A
  .byte "bribe us? Get out!"
  .byte $00, $E8, $B8, $EE, $B8
  .byte "Bribe"
  .byte $00
  .byte "Sail"
  .byte $00
  .byte "Don't worry, you'll"
  .byte $0A
  .byte "be able to return"
  .byte $0A
  .byte "sooner or later"
  .byte $00
  .byte "Sorry, I'm just"
  .byte $0A
  .byte "doing my job"
  .byte $00
  .byte "All Portuguese are"
  .byte $0A
  .byte "prohibited here. You"
  .byte $0A
  .byte "must leave at once!"
  .byte $00
  .byte "It doesn't look like"
  .byte $0A
  .byte "we're very welcome"
  .byte $0A
  .byte "here"
  .byte $00
  .byte "Well, let's get to"
  .byte $0A
  .byte "work right away"
  .byte $00
  .byte "It's no use. We have"
  .byte $0A
  .byte "to leave"
  .byte $00
  .byte "Confound it! You'll"
  .byte $0A
  .byte "pay for this!"
  .byte $00
  .byte "These officers look"
  .byte $0A
  .byte "like trouble to me!"
  .byte $00
  .byte "We got away!"
  .byte $00
  .byte "Blast!  We're"
  .byte $0A
  .byte "surrounded!"
  .byte $00, $0A
  .byte "It's no use"
  .byte $0A
  .byte "struggling!"
  .byte $0A
  .byte "We're confiscating"
  .byte $0A
  .byte "your goods"
  .byte $00
  .byte "We've no gold for a"
  .byte $0A
  .byte "bribe!"
  .byte $00
  .byte "We'll show that"
  .byte $0A
  .byte "Portuguese fool by"
  .byte $0A
  .byte "seizing his goods"
  .byte $00
  .byte "How much'll we give"
  .byte $0A
  .byte "them"
  .byte $00
  .byte "Ha ha ha!"
  .byte $0A
  .byte "Much obliged!"
  .byte $00
  .byte "Trying to bribe us,"
  .byte $0A
  .byte "eh? Seize his"
  .byte $0A
  .byte "goods!"
  .byte $00
  .byte "Well, he's an honest"
  .byte $0A
  .byte "scoundrel. I'll let"
  .byte $0A
  .byte "you go this time"
  .byte $00
  .byte "We'll show that"
  .byte $0A
  .byte "Portuguese fool and"
  .byte $0A
  .byte "seize his goods!"
  .byte $00, $C3, $BB, $CC, $BB, $D2, $BB, $D9, $BB, $DE, $BB, $E4, $BB, $9F, $B3, $1E
  .byte $B4, $D5, $B4
  .byte "Portugal"
  .byte $00
  .byte "Spain"
  .byte $00
  .byte "Turkey"
  .byte $00
  .byte "Flee"
  .byte $00
  .byte "Bribe"
  .byte $00
  .byte "Surrender"
  .byte $00
  .byte "Cap'n, some gruff"
  .byte $0A
  .byte "looking officers are"
  .byte $0A
  .byte "heading our way!"
  .byte $00
  .byte ", you are"
  .byte $0A, $0A
  .byte "under arrest in the"
  .byte $0A, $0A
  .byte "name of %s!"
  .byte $00
  .byte "What shall we do?"
  .byte $00
  .byte "There's trouble in"
  .byte $0A
  .byte "store for us here."
  .byte $0A
  .byte "We'd better set sail"
  .byte $00
  .byte "How about a stop at"
  .byte $0A
  .byte "the inn? We might hearsome useful gossip"
  .byte $00
  .byte "It'd be nice to stop"
  .byte $0A
  .byte "at the inn once in a"
  .byte $0A
  .byte "while"
  .byte $00, $0A
  .byte "Cap'n, I hear the"
  .byte $0A
  .byte "Princess is a beauty."
  .byte $0A
  .byte "I'd love to set my"
  .byte $0A
  .byte "eyes on her just once!"
  .byte $00
  .byte "Captain, this is a"
  .byte $0A
  .byte "suspicious looking"
  .byte $0A
  .byte "port"
  .byte $00
  .byte "Cap'n, this port looksa bit tough"
  .byte $00
  .byte "Cap'n, have ye heard"
  .byte $0A
  .byte "of the troubles out atsea?"
  .byte $00
  .byte "We're likely to get"
  .byte $0A
  .byte "tossed about if we"
  .byte $0A
  .byte "sail into a storm"
  .byte $00
  .byte "I've heard of ships"
  .byte $0A
  .byte "being swallowed up in"
  .byte $0A
  .byte "certain waters"
  .byte $00
  .byte "If the rudder gets"
  .byte $0A
  .byte "tangled in seaweed"
  .byte $0A
  .byte "we'll have to fix 'er"
  .byte $00
  .byte "Where to, Captain?"
  .byte $00, $00
