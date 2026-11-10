; resident image, runs at $7E:2000
.p816
.smart -
.include "kvm.inc"

.segment "CODE"

  jmp RF_2003
RF_2003:
  k_func 0
  k_call RF_219E
  k_return
RF_200C:
  k_func 0
  k_ldlarg 11
  k_shl1
  k_ldriw $8ACE
  k_add
  k_deref
  k_pushl
  k_pushib 24
  k_callx RL_21BE, 4
  k_stla $F27C
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_pusha $F27C
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldlarg 11
  k_shl1
  k_ldriw $8B31
  k_add
  k_deref
  k_pushl
  k_pushiw $9600
  k_pusha $F27C
  k_pushib 27
  k_callx RL_21BE, 8
  k_pusha $F27C
  k_pushib 25
  k_callx RL_21BE, 4
  k_ldlarg 13
  k_jumpf RL_2059
  k_ldliw $9600
  k_callptr
RL_2059:
  k_return
RF_205A:
  k_func 258
  k_leal -256
  k_stlf -258
  k_pushf -258
  k_ldli 2
  k_popstore
  k_ldlf -258
  k_addli 2
  k_stlf -258
  k_pushf -258
  k_ldli 9
  k_popstore
  k_ldlf -258
  k_addli 2
  k_stlf -258
  k_pushf -258
  k_ldlib 105
  k_popstore
  k_ldlf -258
  k_addli 2
  k_stlf -258
  k_pushf -258
  k_ldlib 113
  k_popstore
  k_ldlf -258
  k_addli 2
  k_stlf -258
  k_pushf -258
  k_ldlib 121
  k_popstore
  k_ldlf -258
  k_addli 2
  k_stlf -258
  k_pushf -258
  k_ldli 8
  k_popstore
  k_ldlf -258
  k_addli 2
  k_stlf -258
  k_pushf -258
  k_ldlib 17
  k_popstore
  k_ldlf -258
  k_addli 2
  k_stlf -258
  k_pushf -258
  k_ldli 0
  k_popstore
  k_leal -256
  k_pushl
  k_pushi 1
  k_callx RL_21BE, 4
  k_return
RF_20CC:
  k_func 0
  k_pushib 21
  k_callx RL_21BE, 2
  k_pushib 34
  k_callx RL_21BE, 2
  k_pushi 12
  k_pushiw $9D00
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 3
  k_pushib 127
  k_pushi 0
  k_pushiw $0161
  k_pushi 0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 12
  k_pushiw $A60D
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 127
  k_pushi 0
  k_pushib 34
  k_pushi 1
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 12
  k_pushiw $A727
  k_pushi 9
  k_pushiw $00E0
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushi 3
  k_pushi 12
  k_pushiw $A867
  k_pushib 54
  k_pushiw $0160
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 35
  k_callx RL_21BE, 2
  k_call RF_3D7C
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 23
  k_pushib 23
  k_pushib 20
  k_callx RL_21BE, 6
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 0
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_callx RF_3E7E, 4
  k_return
RF_2159:
  k_func 0
  k_pushiw $8B47
  k_pushib 24
  k_callx RL_21BE, 4
  k_stla $F27E
  k_pushiw $8B4E
  k_pushib 24
  k_callx RL_21BE, 4
  k_stla $F280
  k_pushiw $8B55
  k_pushib 24
  k_callx RL_21BE, 4
  k_stla $F282
  k_pushiw $8B5B
  k_pushib 24
  k_callx RL_21BE, 4
  k_stla $F284
  k_return
RF_218F:
  k_func 0
  k_call RF_205A
  k_call RF_2159
  k_call RF_20CC
  k_return
RF_219E:
  k_func 0
  k_call RF_218F
  k_ldli 0
  k_stlba $F169
  k_pushi 1
  k_pushi 0
  k_callx RF_200C, 4
  k_call RF_82A5
  k_pushi 1
  k_pushi 10
  k_callx RF_200C, 4
  k_return
  .byte $22, $00, $80, $00
RL_21BE:
  jsl f:$008003
  jsl f:$008000
  .byte $22, $00, $80, $00
RF_21CA:
  k_func 0
  k_ldlarg 11
  k_ldrib 23
  k_ult
  k_jumpf RL_21D7
  k_return
RL_21D7:
  k_ldlba $EA89
  k_ldri 4
  k_and
  k_jumpf RL_21E9
  k_ldlarg 11
  k_addlib -22
  k_pushl
  k_pushib 63
  k_callx RL_21BE, 4
RL_21E9:
  k_return
RF_21EA:
  k_func 0
  k_ldlbf 11
  k_ldrib 22
  k_ugt
  k_jumpf RL_21F9
  k_return
RL_21F9:
  k_ldlba $EA89
  k_ldri 4
  k_and
  k_jumpf RL_2239
  k_ldlba $F277
  k_pushl
  k_ldlbf 11
  k_popr
  k_ne
  k_jumpt RL_2213
  k_call RF_223A
  k_jumpt RL_2239
RL_2213:
  k_pushib 61
  k_callx RL_21BE, 2
  k_ldlbf 11
  k_pushl
  k_ldlba $F277
  k_popr
  k_ne
  k_jumpf RL_222B
  k_ldlbf 11
  k_stlba $F277
RL_222B:
  k_ldlbf 13
  k_pushl
  k_ldlbf 11
  k_pushl
  k_pushib 60
  k_callx RL_21BE, 6
RL_2239:
  k_return
RF_223A:
  k_func 2
  k_ldlba $EA89
  k_ldri 4
  k_and
  k_jumpf RL_2263
  k_pushib 62
  k_callx RL_21BE, 2
  k_ldriw $00FF
  k_and
  k_stl -2
  k_ldl -2
  k_jumpf RL_2261
  k_ldl -2
  k_ldrib 22
  k_ugt
  k_jumpt RL_2261
  k_ldli 0
  k_jump RL_2262
RL_2261:
  k_ldli 1
RL_2262:
  k_return
RL_2263:
  k_ldli 0
  k_return
RF_2265:
  k_func 0
  k_ldlba $EA89
  k_ldri 4
  k_and
  k_jumpf RL_2280
  k_ldlbf 11
  k_pushl
  k_ldlba $F277
  k_pushl
  k_pushib 60
  k_callx RL_21BE, 6
RL_2280:
  k_return
RF_2281:
  k_func 0
  k_ldlba $EA89
  k_ldri 4
  k_and
  k_jumpf RL_2294
  k_pushib 61
  k_callx RL_21BE, 2
RL_2294:
  k_ldliw $00FF
  k_stlba $F277
  k_return
RF_229B:
  k_func 0
  k_pushi 0
  k_pushib 63
  k_callx RL_21BE, 4
  k_return
RF_22A8:
  k_func 4
  k_ldlarg 15
  k_ldriw $0380
  k_mul
  k_addliw $8820
  k_stl -4
  k_ldln 21
  k_jumpt RL_22C6
  k_pushi 1
  k_pushib 24
  k_push -4
  k_pushib 28
  k_pushib 44
  k_jump RL_22D6
RL_22C6:
  k_pushi 1
  k_pushib 24
  k_push -4
  k_pushib 28
  k_ldln 21
  k_dec
  k_ldrib 28
  k_mul
  k_addliw $02C6
  k_pushl
RL_22D6:
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 0
  k_ldln 21
  k_shl1
  k_ldriw $8B62
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushi 4
  k_pushi 7
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushib 30
  k_callx RL_21BE, 14
  k_ldlarg 15
  k_ldri 1
  k_shr
  k_stl -2
  k_ldlarg 17
  k_ldriw $00FF
  k_eq
  k_jumpf RL_230D
  k_ldli 2
  k_stlarg 17
RL_230D:
  k_ldln 21
  k_jumpt RL_2331
  k_pushi 1
  k_pushib 24
  k_ldln 19
  k_shl1
  k_pushl
  k_ldlarg 17
  k_ldri 6
  k_mul
  k_pushl
  k_ldl -2
  k_ldrib 18
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_ldriw $8B7A
  k_add
  k_deref
  k_pushl
  k_pushi 15
  k_pushib 72
  k_jump RL_2354
RL_2331:
  k_pushi 1
  k_pushib 24
  k_ldln 19
  k_shl1
  k_pushl
  k_ldlarg 17
  k_ldri 6
  k_mul
  k_pushl
  k_ldl -2
  k_ldrib 18
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_ldriw $8B7A
  k_add
  k_deref
  k_pushl
  k_pushi 15
  k_ldln 21
  k_dec
  k_ldri 15
  k_mul
  k_addliw $0352
  k_pushl
RL_2354:
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 0
  k_ldln 21
  k_shl1
  k_ldriw $8B6E
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushi 3
  k_pushi 5
  k_pusharg 13
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_pushi 1
  k_pushib 30
  k_callx RL_21BE, 14
  k_return
RF_2380:
  k_func 0
  k_pusharg 17
  k_pusharg 15
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_pushl
  k_pusharg 15
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_pushl
  k_pusharg 15
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_pusharg 13
  k_pusharg 11
  k_callx RF_22A8, 12
  k_return
RF_23C0:
  k_func 0
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9BC
  k_add
  k_derefb
  k_return
RF_23CF:
  k_func 2
  k_ldlarg 15
  k_jumpt RL_23D9
  k_return
RL_23D9:
  k_ldlarg 15
  k_dec
  k_stlarg 15
  k_ldlarg 15
  k_ldriw $0120
  k_mul
  k_addliw $8040
  k_stl -2
  k_pushi 1
  k_pushib 24
  k_push -2
  k_pushi 9
  k_pushib 35
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $466E
  k_pushi 3
  k_pushi 3
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
RF_2401:
  k_func 6
  k_ldlarg 15
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -6
  k_ldlarg 15
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
  k_call RF_4DD8
  k_pushi 1
  k_pushiw $8BB0
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pusharg 13
  k_pusharg 11
  k_callx RF_50AB, 6
  k_pushi 0
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2380, 8
  k_ldlarg 15
  k_ldrib 24
  k_mul
  k_ldriw $E9BD
  k_add
  k_derefb
  k_pushl
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_addli 10
  k_pushl
  k_callx RF_23CF, 6
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_addli 14
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $8BB4
  k_callx RF_2FB9, 4
  k_push -2
  k_callx RF_40DE, 2
  k_ldlarg 13
  k_addli 4
  k_pushl
  k_ldlarg 11
  k_addli 14
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 15
  k_callx RF_23C0, 2
  k_pushl
  k_pushiw $8BBB
  k_callx RF_3608, 4
  k_ldlarg 13
  k_addli 6
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $8BCA
  k_callx RF_2FB9, 4
  k_ldlarg 15
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
  k_ldlarg 13
  k_addli 8
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 15
  k_callx RF_43F6, 2
  k_pushl
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_derefb
  k_pushl
  k_pushiw $8BD6
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addli 9
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 15
  k_callx RF_44AA, 2
  k_pushl
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_pushl
  k_pushiw $8BF1
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addli 10
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 15
  k_callx RF_4439, 2
  k_pushl
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $EB93
  k_add
  k_derefb
  k_pushl
  k_pushiw $8C0C
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addli 11
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 15
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
  k_pusharg 15
  k_callx RF_45A5, 2
  k_pushl
  k_pushiw $8C27
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addli 12
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 15
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
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_pushl
  k_pushiw $8C42
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addli 13
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $8C5D
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
  k_pushiw $8C64
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addli 13
  k_pushl
  k_ldlarg 11
  k_addlib 21
  k_pushl
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
  k_pushiw $8C67
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addlib 18
  k_pushl
  k_ldlarg 11
  k_addli 13
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -6
  k_addlib 20
  k_deref
  k_pushl
  k_ldl -6
  k_addlib 18
  k_deref
  k_ldri 10
  k_sdiv
  k_pushl
  k_ldl -6
  k_addlib 16
  k_deref
  k_ldri 10
  k_sdiv
  k_pushl
  k_pushiw $8C6F
  k_callx RF_3608, 8
  k_pushi 0
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_addli 11
  k_pushl
  k_callx RF_4B2A, 6
  k_pushi 1
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_addlib 17
  k_pushl
  k_callx RF_4B2A, 6
  k_pushi 2
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_addlib 23
  k_pushl
  k_callx RF_4B2A, 6
  k_call RF_2F18
  k_pushi 1
  k_pushiw $8C7F
  k_callx RF_2FB9, 4
  k_return
RF_260E:
  k_func 2
  k_ldlarg 15
  k_jumpt RL_2618
  k_return
RL_2618:
  k_ldli 0
  k_jump RL_263E
RL_261C:
  k_pushi 1
  k_pushib 24
  k_pushiw $8000
  k_pushi 2
  k_pushib 87
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $46D6
  k_pushi 2
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -2
  k_inc
RL_263E:
  k_stl -2
  k_ldl -2
  k_ldrarg 15
  k_ult
  k_jumpt RL_261C
  k_return
RF_2646:
  k_func 10
  k_ldlarg 11
  k_jumpt RL_2651
  k_ldli 0
  k_return
RL_2651:
  k_ldliw $EB92
  k_stl -2
  k_addlib 35
  k_stl -4
  k_ldliw $E9A6
  k_stl -6
  k_ldli 0
  k_stl -8
  k_jump RL_267A
RL_2661:
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_2673
  k_ldl -6
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf RL_2673
  k_ldli 1
  k_return
RL_2673:
  k_ldl -6
  k_addlib 24
  k_stl -6
  k_ldl -2
  k_addli 7
  k_stl -2
RL_267A:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt RL_2661
  k_ldli 2
  k_return
RF_2682:
  k_func 6
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stl -2
  k_ldlarg 15
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stl -4
  k_call RF_4DD8
  k_pushi 1
  k_pushiw $8CA2
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pusharg 13
  k_pusharg 11
  k_callx RF_50AB, 6
  k_pushiw $20F9
  k_pushi 1
  k_pushib 28
  k_ldlarg 13
  k_addli 9
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushi 3
  k_callx RF_604A, 12
  k_pushiw $20F9
  k_pushi 1
  k_pushib 28
  k_ldlarg 13
  k_addli 14
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushi 3
  k_callx RF_604A, 12
  k_ldlarg 15
  k_jumpt RL_26D6
  k_pushi 0
  k_pusharg 15
  k_ldlarg 13
  k_inc
  k_jump RL_26DA
RL_26D6:
  k_pushi 0
  k_pusharg 15
  k_ldlarg 13
  k_addli 2
RL_26DA:
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_4E29, 8
  k_ldlarg 13
  k_addli 4
  k_pushl
  k_ldlarg 11
  k_addli 8
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 15
  k_jumpt RL_271B
  k_ldlba $EE76
  k_stl -6
  k_ldl -6
  k_jumpf RL_271B
  k_push -6
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 11
  k_addli 8
  k_pushl
  k_callx RF_260E, 6
  k_ldl -6
  k_shl1
  k_ldriw $1C56
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $8CA6
  k_callx RF_2FB9, 4
RL_271B:
  k_ldl -2
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 13
  k_addli 6
  k_pushl
  k_ldlarg 11
  k_addli 8
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $8CA8
  k_callx RF_2FB9, 4
  k_pusharg 15
  k_callx RF_4190, 2
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 13
  k_addli 6
  k_pushl
  k_ldlarg 11
  k_addlib 22
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_derefb
  k_pushl
  k_pushiw $8CAF
  k_callx RF_3608, 4
  k_ldlarg 15
  k_jumpt RL_2776
  k_ldlarg 13
  k_addli 8
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pusha $E56D
  k_pusha $EE74
  k_pushiw $8CB8
  k_callx RF_3608, 6
  k_jump RL_2790
RL_2776:
  k_ldlarg 13
  k_addli 8
  k_pushl
  k_ldlarg 11
  k_addli 8
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 15
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_derefb
  k_pushl
  k_pushiw $8CD0
  k_callx RF_3608, 4
RL_2790:
  k_ldlarg 13
  k_addli 11
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 6
  k_deref
  k_pushl
  k_pushiw $8CDD
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addli 13
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 8
  k_deref
  k_pushl
  k_pushiw $8CF8
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addlib 16
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -4
  k_inc
  k_derefb
  k_pushl
  k_pushiw $8D13
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_addli 4
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 5
  k_derefb
  k_pushl
  k_pushiw $8D30
  k_callx RF_3608, 6
  k_ldlarg 13
  k_addlib 18
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_pushiw $8D4D
  k_callx RF_3608, 4
  k_call RF_2F18
  k_call RF_4DD8
  k_pushi 1
  k_pushiw $8D5E
  k_callx RF_2FB9, 4
  k_return
RF_281B:
  k_func 0
  k_pushib 23
  k_pushiw $8000
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushiw $0180
  k_pushi 15
  k_pushiw $00A8
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushib 127
  k_pushi 0
  k_pushi 8
  k_pushiw $00A0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $8D74
  k_pushib 30
  k_pushib 32
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $8D6E
  k_pushi 1
  k_pushi 1
  k_pushi 4
  k_pushi 3
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $8D6A
  k_pushi 1
  k_pushi 1
  k_pushi 4
  k_pushib 28
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $8D70
  k_pushi 1
  k_pushi 1
  k_pushib 25
  k_pushi 3
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $8D6C
  k_pushi 1
  k_pushi 1
  k_pushib 25
  k_pushib 28
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $8D64
  k_pushib 20
  k_pushi 1
  k_pushi 5
  k_pushi 3
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $8D62
  k_pushib 20
  k_pushi 1
  k_pushi 5
  k_pushib 28
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $8D66
  k_pushi 1
  k_pushib 24
  k_pushi 4
  k_pushi 4
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $8D68
  k_pushi 1
  k_pushib 24
  k_pushib 25
  k_pushi 4
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_return
RF_28CC:
  k_func 8
  k_ldlarg 11
  k_ldri 8
  k_uge
  k_jumpf RL_28D8
  k_return
RL_28D8:
  k_call RF_4F05
  k_pushi 0
  k_pushi 0
  k_pushib 56
  k_callx RL_21BE, 6
  k_call RF_3D7C
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_ldli 0
  k_stlba $F28C
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_call RF_281B
  k_ldlarg 11
  k_ldri 1
  k_eq
  k_jumpf RL_290A
  k_ldli 9
  k_stl -2
  k_ldli 6
  k_stl -4
  k_ldli 14
  k_stl -6
  k_ldli 10
  k_jump RL_2911
RL_290A:
  k_ldli 10
  k_stl -2
  k_ldli 7
  k_stl -4
  k_ldli 12
  k_stl -6
  k_ldli 9
RL_2911:
  k_stl -8
  k_pushib 23
  k_ldlarg 11
  k_shl1
  k_ldriw $8D72
  k_add
  k_deref
  k_pushl
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_ldlarg 11
  k_ldri 1
  k_eq
  k_jumpf RL_2933
  k_ldliw $008C
  k_jump RL_2935
RL_2933:
  k_ldlib 108
RL_2935:
  k_pushl
  k_pushiw $00B8
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $8C5C
  k_push -8
  k_push -6
  k_push -4
  k_push -2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pushiw $8D82
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 0
  k_pushi 3
  k_pushi 15
  k_callx RF_3EC3, 6
  k_pushi 0
  k_pushi 7
  k_pushi 3
  k_callx RF_3EC3, 6
  k_pushi 0
  k_pushi 2
  k_ldlarg 11
  k_addli 4
  k_pushl
  k_callx RF_3EC3, 6
  k_pushi 1
  k_callx RF_4F2A, 2
  k_pushi 1
  k_pushiw $8D8D
  k_callx RF_2FB9, 4
  k_return
RF_2980:
  k_func 0
  k_return
RF_2986:
  k_func 8
  k_ldlarg 11
  k_ldri 5
  k_udiv
  k_stl -8
  k_jumpf RL_299C
  k_ldliw $00F0
  k_stl -4
  k_ldl -8
  k_addlib 20
  k_jump RL_29C0
RL_299C:
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_derefb
  k_stl -8
  k_ldl -8
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stl -2
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_inc
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_shl1
  k_popr
  k_add
  k_popr
  k_add
  k_stl -4
  k_ldl -8
RL_29C0:
  k_ldri 7
  k_mul
  k_ldriw $E447
  k_add
  k_derefb
  k_stl -6
  k_ldl -4
  k_ldr -6
  k_mul
  k_ldri 8
  k_sdiv
  k_ldr -4
  k_add
  k_ldri 8
  k_sdiv
  k_return
RF_29D2:
  k_func 10
  k_ldli 5
  k_swap
  k_ldlarg 11
  k_mul
  k_stlarg 11
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -8
  k_addlib 35
  k_stl -10
  k_ldliw $00C8
  k_stl -2
  k_ldli 0
  k_stl -4
  k_jump RL_2A2A
RL_29F0:
  k_ldl -8
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_2A24
  k_ldl -4
  k_inc
  k_stl -4
  k_pushib 100
  k_ldl -8
  k_inc
  k_derefb
  k_ldri 2
  k_sdiv
  k_pushl
  k_pusharg 11
  k_callx RF_2986, 2
  k_pushl
  k_ldl -8
  k_inc
  k_derefb
  k_ldri 2
  k_sdiv
  k_popr
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stl -6
  k_ldl -2
  k_ldr -6
  k_ugt
  k_jumpf RL_2A24
  k_ldl -6
  k_stl -2
RL_2A24:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -8
  k_addli 7
  k_stl -8
RL_2A2A:
  k_ldl -8
  k_ldr -10
  k_ult
  k_jumpt RL_29F0
  k_ldl -4
  k_jumpt RL_2A36
  k_ldli 0
  k_return
RL_2A36:
  k_ldl -2
  k_return
RF_2A38:
  k_func 12
  k_ldli 5
  k_swap
  k_ldlarg 11
  k_mul
  k_stlarg 11
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -10
  k_addlib 35
  k_stl -12
  k_ldliw $00C8
  k_stl -2
  k_ldli 0
  k_stl -4
  k_jump RL_2A90
RL_2A56:
  k_ldl -10
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_2A8A
  k_ldl -4
  k_inc
  k_stl -4
  k_pushib 100
  k_ldl -10
  k_addli 2
  k_derefb
  k_ldri 2
  k_sdiv
  k_pushl
  k_pusharg 11
  k_callx RF_2986, 2
  k_pushl
  k_ldl -10
  k_addli 2
  k_derefb
  k_ldri 2
  k_sdiv
  k_popr
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stl -8
  k_ldl -2
  k_ldr -8
  k_ugt
  k_jumpf RL_2A8A
  k_ldl -8
  k_stl -2
RL_2A8A:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -10
  k_addli 7
  k_stl -10
RL_2A90:
  k_ldl -10
  k_ldr -12
  k_ult
  k_jumpt RL_2A56
  k_ldl -4
  k_jumpt RL_2A9C
  k_ldli 0
  k_return
RL_2A9C:
  k_ldl -2
  k_return
RF_2A9E:
  k_func 2
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -2
  k_ldl -2
  k_addli 15
  k_derefb
  k_ldri 1
  k_and
  k_pushl
  k_ldlba $EF83
  k_pushl
  k_pusharg 11
  k_callx RF_29D2, 2
  k_pushl
  k_ldl -2
  k_addli 8
  k_derefb
  k_pushl
  k_ldlba $EF82
  k_pushl
  k_callx RL_84D0, 4
  k_inc
  k_ldri 1
  k_shr
  k_shl1
  k_popr
  k_mul
  k_popr
  k_mul
  k_pushl
  k_ldlba $EF83
  k_ldriw $0190
  k_mul
  k_popr
  k_sub
  k_ldriw $01C2
  k_sdiv
  k_popr
  k_mul
  k_return
RF_2AE0:
  k_func 8
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -2
  k_ldl -2
  k_addli 8
  k_derefb
  k_pushl
  k_ldlba $EF82
  k_pushl
  k_callx RL_84D0, 4
  k_stl -6
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_derefb
  k_ldri 1
  k_and
  k_pushl
  k_ldlba $EF83
  k_pushl
  k_pusharg 11
  k_callx RF_2A38, 2
  k_popr
  k_mul
  k_ldrib 26
  k_sdiv
  k_popr
  k_mul
  k_stl -4
  k_ldl -6
  k_ldri 2
  k_gt
  k_jumpf RL_2B24
  k_ldli 3
  k_ldr -6
  k_sub
  k_ldri 1
  k_xor
  k_jump RL_2B25
RL_2B24:
  k_ldl -6
RL_2B25:
  k_inc
  k_stl -8
  k_ldl -6
  k_addlib -2
  k_neg
  k_pushl
  k_callx RL_892B, 2
  k_pushl
  k_pusharg 11
  k_callx RF_2A9E, 2
  k_ldr -8
  k_sdiv
  k_popr
  k_mul
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -2
  k_addli 8
  k_derefb
  k_pushl
  k_ldlba $EF86
  k_ldri 6
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_callx RL_84D0, 4
  k_stl -6
  k_ldl -6
  k_ldri 2
  k_gt
  k_jumpf RL_2B5D
  k_ldli 3
  k_ldr -6
  k_sub
  k_ldri 1
  k_xor
  k_jump RL_2B5E
RL_2B5D:
  k_ldl -6
RL_2B5E:
  k_inc
  k_stl -8
  k_ldl -6
  k_addlib -2
  k_neg
  k_pushl
  k_callx RL_892B, 2
  k_pushl
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_derefb
  k_ldri 1
  k_and
  k_pushl
  k_ldlba $EF86
  k_ldri 3
  k_shr
  k_ldri 3
  k_and
  k_popr
  k_mul
  k_ldr -8
  k_sdiv
  k_popr
  k_mul
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -4
  k_ldri 0
  k_lt
  k_jumpf RL_2B90
  k_ldli 0
  k_jump RL_2B91
RL_2B90:
  k_ldl -4
RL_2B91:
  k_stl -4
  k_ldl -4
  k_return
RF_2B94:
  k_func 0
  k_ldlarg 11
  k_addliw $05DC
  k_pushl
  k_ldlarg 15
  k_inc
  k_pushl
  k_ldlarg 13
  k_shl1
  k_ldriw $8DB2
  k_add
  k_deref
  k_pushl
  k_pushiw $8DFA
  k_callx RF_3619, 8
  k_return
RF_2BB1:
  k_func 0
RL_2BB6:
  k_call RF_223A
  k_jumpt RL_2BB6
  k_pushi 2
  k_callx RF_4F48, 2
  k_pushib 30
  k_callx RF_3654, 2
  k_call RF_3D7C
  k_pushi 0
  k_pushi 0
  k_pushib 56
  k_callx RL_21BE, 6
  k_pushi 0
  k_pushi 1
  k_pushib 21
  k_callx RF_3EC3, 6
  k_pushib 30
  k_pushiw $E820
  k_pushib 74
  k_pushi 1
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushi 2
  k_pushib 30
  k_pushiw $D300
  k_pushiw $00AA
  k_pushiw $0090
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 32
  k_pushiw $0080
  k_pushib 126
  k_pushiw $8D92
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw $61DC
  k_pushi 7
  k_pushi 12
  k_pushib 55
  k_pushib 88
  k_pushi 0
  k_callx RF_3E5A, 14
  k_pushi 2
  k_callx RF_4F2A, 2
  k_pushib 30
  k_callx RF_3654, 2
  k_pusha $F280
  k_pushiw $6036
  k_pushi 3
  k_pushib 22
  k_pushi 14
  k_pushi 5
  k_pushi 2
  k_callx RF_3DF1, 14
RL_2C33:
  k_jump RL_2C33
RF_2C36:
  k_func 8
  k_pushi 1
  k_leal -1
  k_pushl
  k_pushib 126
  k_pushiw $1062
  k_pushib 112
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldlbf -1
  k_ldrib 75
  k_eq
  k_jumpf RL_2CA4
  k_pushi 1
  k_leal -2
  k_pushl
  k_pushib 126
  k_pushiw $0B8D
  k_pushib 112
  k_pushib 23
  k_callx RL_21BE, 12
  k_pushi 1
  k_leal -3
  k_pushl
  k_pushib 126
  k_pushiw $0B8C
  k_pushib 112
  k_pushib 23
  k_callx RL_21BE, 12
  k_pushi 1
  k_leal -4
  k_pushl
  k_pushib 126
  k_pushiw $0B8B
  k_pushib 112
  k_pushib 23
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushiw $8E06
  k_callx RF_2FB9, 4
  k_ldlbf -4
  k_pushl
  k_ldlbf -3
  k_pushl
  k_ldlbf -2
  k_pushl
  k_callx RF_2B94, 6
RL_2CA4:
  k_pushi 1
  k_pushiw $8E18
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf RL_2CEC
  k_ldlib 75
  k_stlba $EF62
  k_ldliw $EF62
  k_ldriw $DF05
  k_sub
  k_inc
  k_stl -8
  k_push -8
  k_pushiw $0005
  k_pushib 112
  k_pushiw $DF05
  k_pushib 126
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldli 0
  k_stlba $EF62
  k_ldlba $EF6A
  k_jumpt RL_2CE1
  k_call RF_5C3E
  k_jump RL_2CE4
RL_2CE1:
  k_call RF_60B2
RL_2CE4:
  k_pushi 1
  k_pushiw $8E22
  k_callx RF_2FB9, 4
RL_2CEC:
  k_ldlba $EF6A
  k_jumpt RL_2CF8
  k_call RF_5C3E
  k_jump RL_2CFB
RL_2CF8:
  k_call RF_60B2
RL_2CFB:
  k_pushi 1
  k_pushiw $8E32
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf RL_2D37
  k_pushi 1
  k_pushiw $8E3C
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf RL_2D37
  k_ldlba $EF6A
  k_jumpf RL_2D31
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_call RF_4D8B
RL_2D31:
  k_call RF_2281
  k_call RF_2BB1
RL_2D37:
  k_ldli 0
  k_return
RF_2D39:
  k_func 2
  k_ldlba $EA8A
  k_pushl
  k_pushiw $8E4A
  k_callx RF_3619, 4
  k_pushi 1
  k_pushi 10
  k_pushi 1
  k_pushiw $8E6A
  k_callx RF_3C4E, 8
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_ne
  k_jumpf RL_2D5F
  k_ldl -2
  k_stlba $EA8A
RL_2D5F:
  k_ldli 0
  k_return
RF_2D61:
  k_func 2
  k_ldlba $EF6A
  k_jumpt RL_2D79
  k_pushi 1
  k_ldlba $F274
  k_pushl
  k_callx RF_59A3, 2
  k_pushl
  k_jump RL_2D9C
RL_2D79:
  k_ldlba $E565
  k_stl -2
  k_ldlba $EF69
  k_jumpt RL_2D88
  k_pushi 1
  k_pushi 15
  k_jump RL_2D9C
RL_2D88:
  k_ldl -2
  k_ldri 11
  k_ugt
  k_jumpf RL_2D9A
  k_ldl -2
  k_ldrib 31
  k_ult
  k_jumpf RL_2D9A
  k_pushi 1
  k_pushi 9
  k_jump RL_2D9C
RL_2D9A:
  k_pushi 1
  k_pushi 8
RL_2D9C:
  k_callx RF_21EA, 4
  k_return
RF_2DA1:
  k_func 4
  k_ldlba $EA89
  k_ldri 4
  k_and
  k_stl -2
  k_ldl -2
  k_jumpf RL_2DB6
  k_ldliw $8E7E
  k_jump RL_2DB9
RL_2DB6:
  k_ldliw $8E81
RL_2DB9:
  k_pushl
  k_pushiw $8E6B
  k_callx RF_3619, 4
  k_pushi 1
  k_ldl -2
  k_jumpf RL_2DCC
  k_ldliw $8E85
  k_jump RL_2DCF
RL_2DCC:
  k_ldliw $8E89
RL_2DCF:
  k_pushl
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -4
  k_ldl -4
  k_jumpf RL_2E11
  k_ldl -2
  k_jumpt RL_2DF8
  k_ldli 4
  k_swap
  k_ldlba $EA89
  k_or
  k_stlba $EA89
  k_ldli 8
  k_swap
  k_ldlba $EA89
  k_or
  k_stlba $EA89
  k_call RF_2D61
  k_jump RL_2E11
RL_2DF8:
  k_call RF_2281
  k_ldliw $00FB
  k_swap
  k_ldlba $EA89
  k_and
  k_stlba $EA89
  k_ldliw $00F7
  k_swap
  k_ldlba $EA89
  k_and
  k_stlba $EA89
RL_2E11:
  k_ldli 0
  k_return
RF_2E13:
  k_func 12
  k_ldlba $EF6A
  k_jumpt RL_2E31
  k_ldli 0
  k_stl -8
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_2E2C
  k_ldli 3
  k_jump RL_2E35
RL_2E2C:
  k_ldlib 19
  k_jump RL_2E35
RL_2E31:
  k_ldlib 23
  k_stl -8
  k_ldli 12
RL_2E35:
  k_stl -10
  k_pushi 8
  k_pushi 8
  k_push -10
  k_push -8
  k_callx RF_4D41, 8
  k_pushi 0
  k_pushi 8
  k_pushi 8
  k_push -10
  k_push -8
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldlba $EF6A
  k_jumpt RL_2E61
  k_pusha $F280
  k_pushiw $5F46
  k_pushi 8
  k_pushi 8
  k_push -10
  k_push -8
  k_pushi 1
  k_callx RF_3DF1, 14
  k_jump RL_2E6B
RL_2E61:
  k_pushi 0
  k_pushi 0
  k_pushi 8
  k_pushi 8
  k_push -10
  k_push -8
  k_callx RF_4F65, 12
RL_2E6B:
  k_ldl -8
  k_addli 2
  k_stl -4
  k_ldl -10
  k_inc
  k_stl -6
  k_ldli 0
  k_stl -2
RL_2E73:
  k_push -6
  k_push -4
  k_callx RF_2F8F, 4
  k_pushi 1
  k_ldl -2
  k_shl1
  k_ldriw $8E8C
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_ldli 2
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt RL_2E73
  k_ldli 0
  k_stl -12
  k_ldlba $EF6A
  k_jumpt RL_2EA2
  k_call RF_5C91
  k_jump RL_2EA5
RL_2EA2:
  k_call RF_60EE
RL_2EA5:
  k_pushi 1
  k_pushiw $8EA9
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 3
  k_pushi 2
  k_pushi 0
  k_ldl -10
  k_addli 2
  k_pushl
  k_ldl -8
  k_inc
  k_pushl
  k_pushi 3
  k_pushiw $8EBF
  k_callx RF_3787, 16
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf RL_2ECC
  k_ldli 1
  k_stl -12
  k_jump RL_2EF4
RL_2ECC:
  k_ldlba $EF6A
  k_jumpt RL_2ED8
  k_call RF_5C3E
  k_jump RL_2EDB
RL_2ED8:
  k_call RF_60B2
RL_2EDB:
  k_ldl -2
  k_dec
  k_shl1
  k_ldriw $8E92
  k_add
  k_deref
  k_callptr
  k_stl -12
  k_ldlba $EF6A
  k_jumpt RL_2EF1
  k_call RF_5C3E
  k_jump RL_2EF4
RL_2EF1:
  k_call RF_60B2
RL_2EF4:
  k_ldl -12
  k_jumpf RL_2EA5
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_call RF_4D8B
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx RL_21BE, 6
  k_ldli 0
  k_return
RF_2F18:
  k_func 0
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
RL_2F24:
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpt RL_2F24
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpt RL_2F24
RL_2F36:
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpt RL_2F48
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpf RL_2F36
RL_2F48:
  k_return
RF_2F49:
  k_func 0
  k_ldla $F188
  k_ldri 0
  k_lt
  k_jumpf RL_2F5A
  k_ldli 0
  k_jump RL_2F6B
RL_2F5A:
  k_ldla $F188
  k_ldrib 31
  k_gt
  k_jumpf RL_2F68
  k_ldlib 31
  k_jump RL_2F6B
RL_2F68:
  k_ldla $F188
RL_2F6B:
  k_stla $F188
  k_ldla $F18A
  k_ldri 0
  k_lt
  k_jumpf RL_2F7A
  k_ldli 0
  k_jump RL_2F8B
RL_2F7A:
  k_ldla $F18A
  k_ldrib 29
  k_gt
  k_jumpf RL_2F88
  k_ldlib 29
  k_jump RL_2F8B
RL_2F88:
  k_ldla $F18A
RL_2F8B:
  k_stla $F18A
  k_return
RF_2F8F:
  k_func 0
  k_ldlarg 11
  k_ldri 0
  k_ge
  k_jumpf RL_2F9E
  k_ldlarg 11
  k_stla $F188
RL_2F9E:
  k_ldlarg 13
  k_ldri 0
  k_ge
  k_jumpf RL_2FA8
  k_ldlarg 13
  k_stla $F18A
RL_2FA8:
  k_call RF_2F49
  k_return
RF_2FAC:
  k_func 0
  k_ldlarg 11
  k_stla $F18A
  k_call RF_2F49
  k_return
RF_2FB9:
  k_func 152
  k_ldla $F188
  k_ldrib 31
  k_ge
  k_jumpt RL_2FCF
  k_ldla $F188
  k_ldri 0
  k_lt
  k_jumpf RL_2FD5
RL_2FCF:
  k_ldla $F18E
  k_stla $F188
RL_2FD5:
  k_ldla $F18A
  k_ldrib 29
  k_ge
  k_jumpt RL_2FE6
  k_ldla $F18A
  k_ldri 0
  k_lt
  k_jumpf RL_2FEA
RL_2FE6:
  k_ldli 0
  k_stla $F18A
RL_2FEA:
  k_ldli 0
  k_stlf -136
  k_ldli 0
  k_stlf -140
  k_ldla $F188
  k_stlf -138
  k_ldli 0
  k_stlf -148
  k_leal -128
  k_stlf -130
  k_leal -64
  k_stlf -132
  k_ldlba $F190
  k_ldri 7
  k_and
  k_stlf -146
  k_jump RL_3336
RL_3013:
  k_ldlf -146
  k_ldri 10
  k_shl
  k_addliw $2000
  k_stlf -152
  k_ldlarg 11
  k_inc
  k_derefb
  k_stlbf -134
  k_ldlbf -133
  k_ldrib 32
  k_uge
  k_jumpf RL_30B5
  k_ldlbf -133
  k_ldrib 127
  k_ule
  k_jumpf RL_30B5
  k_ldlf -132
  k_addli 2
  k_stlf -132
  k_addlib -2
  k_pushl
  k_ldlbf -133
  k_ldrf -152
  k_add
  k_addlib -32
RL_3049:
  k_popstore
  k_ldlf -130
  k_addli 2
  k_stlf -130
  k_addlib -2
  k_pushl
  k_ldli 0
RL_3055:
  k_popstore
RL_3056:
  k_ldla $F188
  k_inc
  k_stla $F188
  k_ldlf -140
  k_inc
  k_stlf -140
RL_3064:
  k_ldlf -148
  k_jumpt RL_307D
  k_ldla $F188
  k_ldra $F18E
  k_ugt
  k_jumpt RL_307D
  k_ldlf -140
  k_ldrib 32
  k_ugt
  k_jumpf RL_3333
RL_307D:
  k_ldlf -140
  k_jumpf RL_3314
  k_ldla $F288
  k_jumpt RL_32A9
  k_ldlarg 13
  k_jumpf RL_32A0
  k_ldlf -140
  k_shl1
  k_pushl
  k_pushf -130
  k_leal -64
  k_pushl
  k_callx RL_88F4, 6
  k_pushi 0
  k_leal -128
  k_pushl
  k_pushi 2
RL_30A3:
  k_pushf -140
  k_pusha $F18A
  k_pushf -138
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_jump RL_3304
RL_30B5:
  k_ldlbf -133
  k_ldriw $00A0
  k_uge
  k_jumpf RL_3108
  k_ldlbf -133
  k_ldriw $00DD
  k_ule
  k_jumpf RL_3108
  k_ldlf -136
  k_jumpf RL_30D7
  k_ldlbf -133
  k_addlib -64
  k_jump RL_30DA
RL_30D7:
  k_ldlbf -133
RL_30DA:
  k_stlbf -133
  k_ldlbf -134
  k_ldriw $00DE
  k_eq
  k_jumpt RL_3056
  k_ldlbf -134
  k_ldriw $00DF
  k_eq
  k_jumpt RL_3056
  k_ldlf -132
  k_addli 2
  k_stlf -132
  k_addlib -2
  k_pushl
  k_ldlbf -133
  k_ldrf -152
  k_add
  k_jump RL_3049
  .byte $D6, $56, $30
RL_3108:
  k_ldlbf -133
  k_ldriw $00DE
  k_eq
  k_jumpt RL_311C
  k_ldlbf -133
  k_ldriw $00DF
  k_eq
  k_jumpf RL_313C
RL_311C:
  k_ldlf -130
  k_addli 2
  k_stlf -130
  k_addlib -2
  k_pushl
  k_ldli 0
  k_popstore
  k_ldlf -132
  k_addli 2
  k_stlf -132
  k_addlib -2
  k_pushl
  k_ldlbf -133
  k_ldrf -152
  k_add
  k_jump RL_3055
RL_313C:
  k_ldlbf -133
  k_ldri 10
  k_eq
  k_jumpf RL_314B
  k_ldli 1
  k_stlf -148
  k_jump RL_3064
RL_314B:
  k_ldlbf -133
  k_ldrib 27
  k_eq
  k_jumpf RL_3064
  k_ldlf -140
  k_jumpf RL_31A2
  k_ldlarg 13
  k_jumpf RL_3177
  k_ldlf -140
  k_shl1
  k_pushl
  k_pushf -130
  k_leal -64
  k_pushl
  k_callx RL_88F4, 6
  k_pushi 0
  k_leal -128
  k_pushl
  k_pushi 2
  k_jump RL_317D
RL_3177:
  k_pushi 0
  k_leal -64
  k_pushl
  k_pushi 1
RL_317D:
  k_pushf -140
  k_pusha $F18A
  k_pushf -138
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldla $F188
  k_stlf -138
  k_leal -128
  k_stlf -130
  k_leal -64
  k_stlf -132
  k_ldli 0
  k_stlf -140
RL_31A2:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlbf -134
  k_switchn 9
    .word $002A, RL_324A
    .word $003D, RL_31DC
    .word $0043, RL_31F4
    .word $0045, RL_320F
    .word $0048, RL_31D8
    .word $004B, RL_31D1
    .word $0052, RL_3203
    .word $0054, RL_321B
    .word $0057, RL_3255
    .word RL_325D
RL_31D1:
  k_ldli 1
RL_31D2:
  k_stlf -136
  k_jump RL_3333
RL_31D8:
  k_ldli 0
  k_jump RL_31D2
RL_31DC:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_derefb
  k_addlib -32
  k_stla $F18A
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_derefb
  k_addlib -32
  k_stla $F188
  k_stlf -138
  k_jump RL_3333
RL_31F4:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_derefb
  k_addlib -48
  k_stlba $F190
  k_stlf -146
  k_jump RL_3333
RL_3203:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_derefb
  k_addlib -32
  k_stla $F18C
  k_jump RL_3333
RL_320F:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_derefb
  k_addlib -32
  k_stla $F18E
  k_jump RL_3333
RL_321B:
  k_pushi 0
  k_pushi 1
  k_ldlib 30
  k_ldra $F188
  k_sub
  k_pushl
  k_pusha $F18A
  k_pusha $F188
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 1
  k_ldlib 30
  k_ldra $F188
  k_sub
  k_pushl
  k_ldla $F18A
  k_inc
  k_pushl
  k_pusha $F188
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_jump RL_3333
RL_324A:
  k_pushi 0
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_jump RL_3333
RL_3255:
  k_pushi 1
  k_callx RF_3DDF, 2
  k_jump RL_3333
RL_325D:
  k_ldlbf -134
  k_ldriw $00E0
  k_uge
  k_jumpf RL_3333
  k_ldlbf -134
  k_ldriw $00FF
  k_ule
  k_jumpf RL_3333
  k_ldlf -132
  k_addli 2
  k_stlf -132
  k_addlib -2
  k_pushl
  k_ldlbf -134
  k_ldrf -152
  k_add
  k_popstore
  k_ldlf -130
  k_addli 2
  k_stlf -130
  k_addlib -2
  k_pushl
  k_ldli 0
  k_popstore
  k_ldla $F188
  k_inc
  k_stla $F188
  k_ldlf -140
  k_inc
  k_stlf -140
  k_jump RL_3333
RL_32A0:
  k_pushi 0
  k_leal -64
  k_pushl
  k_pushi 1
  k_jump RL_30A3
RL_32A9:
  k_ldlarg 13
  k_jumpf RL_32E1
  k_ldlf -140
  k_shl1
  k_pushl
  k_ldlf -138
  k_shl1
  k_pushl
  k_ldla $F18A
  k_ldrib 40
  k_mul
  k_popr
  k_add
  k_addliw $DE00
  k_pushl
  k_pushib 127
  k_leal -128
  k_pushl
  k_pushi 0
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldlf -140
  k_shl1
  k_pushl
  k_ldlf -138
  k_shl1
  k_pushl
  k_ldla $F18A
  k_inc
  k_jump RL_32EE
RL_32E1:
  k_ldlf -140
  k_shl1
  k_pushl
  k_ldlf -138
  k_shl1
  k_pushl
  k_ldla $F18A
RL_32EE:
  k_ldrib 40
  k_mul
  k_popr
  k_add
  k_addliw $DE00
  k_pushl
  k_pushib 127
  k_leal -64
  k_pushl
  k_pushi 0
  k_pushib 23
  k_callx RL_21BE, 12
RL_3304:
  k_leal -128
  k_stlf -130
  k_leal -64
  k_stlf -132
  k_ldli 0
  k_stlf -140
RL_3314:
  k_ldla $F18C
  k_stla $F188
  k_stlf -138
  k_ldlarg 13
  k_jumpf RL_3325
  k_ldli 2
  k_jump RL_3326
RL_3325:
  k_ldli 1
RL_3326:
  k_ldra $F18A
  k_add
  k_pushl
  k_callx RF_2FAC, 2
  k_ldli 0
  k_stlf -148
RL_3333:
  k_ldlarg 11
  k_inc
  k_stlarg 11
RL_3336:
  k_ldlarg 11
  k_derefb
  k_stlbf -133
  k_jumpt RL_3013
  k_ldlf -140
  k_jumpf RL_33DA
  k_ldla $F288
  k_jumpt RL_337F
  k_ldlarg 13
  k_jumpf RL_3376
  k_ldlf -140
  k_shl1
  k_pushl
  k_pushf -130
  k_leal -64
  k_pushl
  k_callx RL_88F4, 6
  k_pushi 0
  k_leal -128
  k_pushl
  k_pushi 2
RL_3364:
  k_pushf -140
  k_pusha $F18A
  k_pushf -138
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_jump RL_33DA
RL_3376:
  k_pushi 0
  k_leal -64
  k_pushl
  k_pushi 1
  k_jump RL_3364
RL_337F:
  k_ldlarg 13
  k_jumpf RL_33B7
  k_ldlf -140
  k_shl1
  k_pushl
  k_ldlf -138
  k_shl1
  k_pushl
  k_ldla $F18A
  k_ldrib 40
  k_mul
  k_popr
  k_add
  k_addliw $DE00
  k_pushl
  k_pushib 127
  k_leal -128
  k_pushl
  k_pushi 0
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldlf -140
  k_shl1
  k_pushl
  k_ldlf -138
  k_shl1
  k_pushl
  k_ldla $F18A
  k_inc
  k_jump RL_33C4
RL_33B7:
  k_ldlf -140
  k_shl1
  k_pushl
  k_ldlf -138
  k_shl1
  k_pushl
  k_ldla $F18A
RL_33C4:
  k_ldrib 40
  k_mul
  k_popr
  k_add
  k_addliw $DE00
  k_pushl
  k_pushib 127
  k_leal -64
  k_pushl
  k_pushi 0
  k_pushib 23
  k_callx RL_21BE, 12
RL_33DA:
  k_return
RF_33DB:
  k_func 4
  k_ldli 0
  k_stl -2
  k_jump RL_33F0
RL_33E5:
  k_ldl -2
  k_ldri 10
  k_mul
  k_ldr -4
  k_add
  k_stl -2
  k_ldlarg 11
  k_pushl
  k_deref
  k_inc
  k_popstore
RL_33F0:
  k_ldlarg 11
  k_deref
  k_derefb
  k_addlib -48
  k_stl -4
  k_ldri 10
  k_ult
  k_jumpt RL_33E5
  k_ldl -2
  k_return
RF_33FD:
  k_func 2
  k_longw $0C, $000D
  k_longd $19, $0000000A
  k_long $08
  k_jumpf RL_3429
  k_ldlarg 11
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_dec
  k_pushl
  k_longw $0C, $000D
  k_longd $19, $00000030
  k_long $03
  k_long $27
  k_popstoreb
  k_ldli 1
  k_return
RL_3429:
  k_longw $0C, $000D
  k_longd $19, $0000000A
  k_long $02
  k_long $14
  k_pusharg 11
  k_callx RF_33FD, 6
  k_stl -2
  k_longw $0C, $000D
  k_longd $19, $0000000A
  k_long $1E
  k_long $14
  k_pusharg 11
  k_callx RF_33FD, 6
  k_ldl -2
  k_inc
  k_return
RF_3453:
  k_func 179
  k_leal -179
  k_stln -29
  k_ldlarg 11
  k_stln -3
  k_jump RL_346E
RL_3463:
  k_ldln -29
  k_inc
  k_stln -29
  k_dec
  k_pushl
  k_ldlbf -1
  k_popstoreb
RL_346E:
  k_ldln -3
  k_inc
  k_stln -3
  k_dec
  k_derefb
  k_stlbf -1
  k_jumpf RL_35FA
  k_ldlbf -1
  k_ldrib 37
  k_eq
  k_jumpf RL_3463
  k_leal -13
  k_stln -15
  k_ldli 6
  k_stln -25
  k_ldli 0
  k_stln -21
  k_stln -17
  k_stln -19
  k_ldln -3
  k_derefb
  k_stlbf -1
  k_ldlbf -1
  k_ldrib 45
  k_eq
  k_jumpf RL_34AE
  k_ldli 1
  k_stln -21
  k_ldln -3
  k_inc
  k_stln -3
  k_derefb
  k_stlbf -1
RL_34AE:
  k_ldlbf -1
  k_ldrib 48
  k_ge
  k_jumpf RL_34CB
  k_ldlbf -1
  k_ldrib 57
  k_le
  k_jumpf RL_34CB
  k_leal -3
  k_pushl
  k_callx RF_33DB, 2
  k_jump RL_34CC
RL_34CB:
  k_ldli 0
RL_34CC:
  k_stln -23
  k_ldln -3
  k_inc
  k_stln -3
  k_dec
  k_derefb
  k_stlbf -1
  k_ldrib 46
  k_eq
  k_jumpf RL_34F5
  k_leal -3
  k_pushl
  k_callx RF_33DB, 2
  k_stln -25
  k_ldli 1
  k_stln -17
  k_ldln -3
  k_inc
  k_stln -3
  k_dec
  k_derefb
  k_stlbf -1
RL_34F5:
  k_ldlbf -1
  k_pushl
  k_callx RF_36C5, 2
  k_ldrib 76
  k_eq
  k_jumpf RL_3510
  k_ldli 1
  k_stln -19
  k_ldln -3
  k_inc
  k_stln -3
  k_dec
  k_derefb
  k_stlbf -1
RL_3510:
  k_ldlbf -1
  k_pushl
  k_callx RF_36C5, 2
  k_switchn 5
    .word $0000, RL_35F9
    .word $0043, RL_3572
    .word $0044, RL_3531
    .word $0053, RL_355B
    .word $0055, RL_3531
    .word RL_3463
RL_3531:
  k_ldln -19
  k_jumpf RL_3550
  k_ldlarg 13
  k_addli 2
  k_stlarg 13
  k_addlib -2
  k_long $16
RL_353D:
  k_long $14
  k_leal -15
  k_pushl
  k_callx RF_33FD, 6
  k_swap
  k_ldln -23
  k_sub
  k_stln -23
  k_jump RL_3585
RL_3550:
  k_ldlarg 13
  k_addli 2
  k_stlarg 13
  k_addlib -2
  k_deref
  k_long $26
  k_jump RL_353D
RL_355B:
  k_ldlarg 13
  k_addli 2
  k_stlarg 13
  k_addlib -2
  k_deref
  k_stln -15
  k_pushn -15
  k_callx RL_89DD, 2
  k_swap
  k_ldln -23
  k_sub
  k_stln -23
  k_jump RL_3591
RL_3572:
  k_ldln -23
  k_dec
  k_stln -23
  k_ldln -15
  k_inc
  k_stln -15
  k_dec
  k_pushl
  k_ldlarg 13
  k_addli 2
  k_stlarg 13
  k_addlib -2
  k_deref
  k_popstoreb
RL_3585:
  k_pushn -15
  k_ldli 0
  k_popstoreb
  k_leal -13
  k_stln -15
  k_ldli 0
  k_stln -17
RL_3591:
  k_ldln -23
  k_stln -27
RL_3595:
  k_ldln -23
  k_dec
  k_stln -23
  k_inc
  k_ldri 0
  k_gt
  k_jumpf RL_35B2
  k_ldln -21
  k_jumpt RL_35B2
  k_ldln -29
  k_inc
  k_stln -29
  k_dec
  k_pushl
  k_ldlib 32
  k_popstoreb
  k_jump RL_3595
RL_35B2:
  k_ldln -15
  k_derefb
  k_jumpf RL_35DC
  k_ldln -17
  k_jumpf RL_35C4
  k_ldln -25
  k_ldri 0
  k_gt
  k_jumpf RL_35D4
RL_35C4:
  k_ldln -29
  k_inc
  k_stln -29
  k_dec
  k_pushl
  k_ldln -15
  k_derefb
  k_popstoreb
  k_ldln -25
  k_dec
  k_stln -25
RL_35D4:
  k_ldln -15
  k_inc
  k_stln -15
  k_jump RL_35B2
RL_35DC:
  k_ldln -27
  k_dec
  k_stln -27
  k_inc
  k_ldri 0
  k_gt
  k_jumpf RL_346E
  k_ldln -21
  k_jumpf RL_346E
  k_ldln -29
  k_inc
  k_stln -29
  k_dec
  k_pushl
  k_ldlib 32
  k_popstoreb
  k_jump RL_35DC
RL_35F9:
  k_return
RL_35FA:
  k_pushn -29
  k_ldli 0
  k_popstoreb
  k_pusharg 15
  k_leal -179
  k_pushl
  k_callx RF_2FB9, 4
  k_return
RF_3608:
  k_func 2
  k_leal 13
  k_stl -2
  k_pushi 0
  k_push -2
  k_pusharg 11
  k_callx RF_3453, 6
  k_return
RF_3619:
  k_func 2
  k_leal 13
  k_stl -2
  k_pushi 1
  k_push -2
  k_pusharg 11
  k_callx RF_3453, 6
  k_return
RF_362A:
  k_func 2
  k_ldlarg 11
  k_jumpf RL_363E
  k_ldlarg 11
  k_dec
  k_ldri 2
  k_smod
  k_pushl
  k_pushi 15
  k_callx RL_21BE, 4
  k_return
RL_363E:
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_stl -2
  k_ldl -2
  k_jumpf RL_364D
  k_ldl -2
  k_jump RL_3653
RL_364D:
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
RL_3653:
  k_return
RF_3654:
  k_func 0
  k_jump RL_3663
RL_365C:
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
RL_3663:
  k_ldlarg 11
  k_dec
  k_stlarg 11
  k_inc
  k_jumpt RL_365C
  k_return
RF_366B:
  k_func 6
  k_ldlarg 11
RL_3671:
  k_stl -2
  k_ldl -2
  k_derefb
  k_ldrib 32
  k_eq
  k_jumpt RL_369A
  k_ldl -2
  k_derefb
  k_ldri 9
  k_eq
  k_jumpt RL_369A
  k_longd $18, $00000000
RL_3687:
  k_longw $0E, $FFFA
  k_ldl -2
  k_derefb
  k_pushl
  k_ldlib 48
  k_popr
  k_le
  k_jumpt RL_369F
RL_3695:
  k_longw $0C, $FFFA
  k_return
RL_369A:
  k_ldl -2
  k_inc
  k_jump RL_3671
RL_369F:
  k_ldl -2
  k_derefb
  k_ldrib 57
  k_le
  k_jumpf RL_3695
  k_longw $0C, $FFFA
  k_longd $19, $0000000A
  k_long $01
  k_long $14
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_addlib -48
  k_long $25
  k_long $15
  k_long $03
  k_jump RL_3687
RF_36C5:
  k_func 0
  k_ldlbf 11
  k_pushl
  k_ldlib 97
  k_popr
  k_le
  k_jumpf RL_36E6
  k_ldlbf 11
  k_ldrib 122
  k_le
  k_jumpf RL_36E6
  k_ldlbf 11
  k_addlib -32
  k_jump RL_36E9
RL_36E6:
  k_ldlbf 11
RL_36E9:
  k_return
RF_36EA:
  k_func 0
  k_ldlbf 11
  k_pushl
  k_ldlib 65
  k_popr
  k_le
  k_jumpf RL_370B
  k_ldlbf 11
  k_ldrib 90
  k_le
  k_jumpf RL_370B
  k_ldlbf 11
  k_addlib 32
  k_jump RL_370E
RL_370B:
  k_ldlbf 11
RL_370E:
  k_return
RF_370F:
  k_func 0
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpf RL_3721
RL_371D:
  k_ldli 1
  k_jump RL_372B
RL_3721:
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpt RL_371D
  k_ldli 0
RL_372B:
  k_return
RF_372C:
  k_func 0
  k_pushi 0
  k_callx RF_362A, 2
  k_return
RF_3737:
  k_func 0
  k_jump RL_3751
RL_373F:
  k_call RF_370F
  k_jumpf RL_3747
  k_ldli 1
  k_return
RL_3747:
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldlarg 11
  k_dec
  k_stlarg 11
RL_3751:
  k_ldlarg 11
  k_ldri 0
  k_ugt
  k_jumpt RL_373F
  k_ldli 0
  k_return
RF_3759:
  k_func 0
RL_375E:
  k_ldla $F275
  k_jumpf RL_3768
  k_ldla $F275
  k_callptr
RL_3768:
  k_pushib 20
  k_callx RF_3737, 2
  k_ldla $F275
  k_jumpf RL_3778
  k_ldla $F275
  k_callptr
RL_3778:
  k_pushib 20
  k_callx RF_3737, 2
  k_jumpf RL_375E
  k_pushi 0
  k_callx RF_362A, 2
  k_return
RF_3787:
  k_func 14
  k_ldlarg 15
  k_stl -4
  k_ldlarg 17
  k_stl -6
  k_ldli 1
  k_stl -8
  k_ldli 0
  k_stl -10
  k_ldlarg 13
  k_ldrn 23
  k_sdiv
  k_stl -12
  k_ldl -12
  k_ldrn 23
  k_mul
  k_pushl
  k_ldlarg 13
  k_popr
  k_sub
  k_stl -14
  k_pushi 1
  k_pusharg 11
  k_callx RF_2FB9, 4
RL_37A8:
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -6
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
  k_addlib -4
  k_pushl
  k_ldl -4
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_pushi 0
  k_callx RF_3E5A, 14
  k_ldln 21
  k_jumpf RL_37D6
  k_ldln 21
  k_jump RL_37D7
RL_37D6:
  k_ldli 1
RL_37D7:
  k_pushl
  k_ldl -6
  k_ldrarg 17
  k_sub
  k_popr
  k_sdiv
  k_pushl
  k_ldln 19
  k_jumpf RL_37E8
  k_ldln 19
  k_jump RL_37E9
RL_37E8:
  k_ldli 1
RL_37E9:
  k_pushl
  k_ldl -4
  k_ldrarg 15
  k_sub
  k_popr
  k_sdiv
  k_ldrn 23
  k_mul
  k_popr
  k_add
  k_inc
  k_stl -2
  k_pushi 12
  k_push -10
  k_callx RF_3D91, 4
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -10
  k_switchn 7
    .word $8000, RL_3835
    .word $0080, RL_3823
    .word $0100, RL_38EE
    .word $0200, RL_38B5
    .word $0400, RL_388B
    .word $0800, RL_3867
    .word $2000, RL_384D
    .word RL_37A8
RL_3823:
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
RL_382B:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_382B
  k_ldl -2
  k_return
RL_3835:
  k_ldln 25
  k_jumpf RL_37A8
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
RL_3842:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_3842
  k_ldlib -1
  k_return
RL_384D:
  k_ldln 25
  k_ldri 2
  k_eq
  k_jumpf RL_37A8
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
RL_385C:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_385C
  k_ldlib -2
  k_return
RL_3867:
  k_ldl -6
  k_ldrarg 17
  k_gt
  k_jumpf RL_3876
  k_ldln 21
  k_swap
  k_ldl -6
  k_sub
RL_3872:
  k_stl -6
  k_jump RL_37A8
RL_3876:
  k_ldl -8
  k_ldr -12
  k_le
  k_jumpf RL_3881
  k_ldln 23
  k_jump RL_3882
RL_3881:
  k_ldl -14
RL_3882:
  k_dec
  k_ldrn 21
  k_mul
  k_ldrarg 17
RL_3887:
  k_add
  k_jump RL_3872
RL_388B:
  k_ldln 21
  k_jumpf RL_3895
  k_ldln 21
  k_jump RL_3896
RL_3895:
  k_ldli 1
RL_3896:
  k_pushl
  k_ldl -6
  k_ldrarg 17
  k_sub
  k_popr
  k_sdiv
  k_inc
  k_ldrn 23
  k_lt
  k_jumpf RL_38B1
  k_ldl -2
  k_inc
  k_ldrarg 13
  k_ule
  k_jumpf RL_38B1
  k_ldln 21
  k_swap
  k_ldl -6
  k_jump RL_3887
RL_38B1:
  k_ldlarg 17
  k_jump RL_3872
RL_38B5:
  k_ldl -8
  k_ldri 1
  k_gt
  k_jumpf RL_38D3
  k_ldl -8
  k_dec
  k_stl -8
  k_ldln 19
  k_swap
  k_ldl -4
  k_sub
  k_jump RL_38CF
RL_38C6:
  k_ldl -12
RL_38C7:
  k_stl -8
  k_ldl -8
  k_dec
  k_ldrn 19
  k_mul
  k_ldrarg 15
  k_add
RL_38CF:
  k_stl -4
  k_jump RL_37A8
RL_38D3:
  k_ldl -14
  k_jumpf RL_38C6
  k_ldl -14
  k_dec
  k_pushl
  k_ldl -6
  k_ldrarg 17
  k_sub
  k_ldrn 21
  k_sdiv
  k_popr
  k_le
  k_jumpf RL_38C6
  k_ldl -14
  k_jumpf RL_38C6
  k_ldl -12
  k_inc
  k_jump RL_38C7
RL_38EE:
  k_ldl -8
  k_ldr -12
  k_lt
  k_jumpt RL_3915
  k_ldl -8
  k_ldr -12
  k_eq
  k_jumpf RL_392E
  k_ldln 21
  k_jumpf RL_3904
  k_ldln 21
  k_jump RL_3905
RL_3904:
  k_ldli 1
RL_3905:
  k_pushl
  k_ldl -6
  k_ldrarg 17
  k_sub
  k_popr
  k_sdiv
  k_inc
  k_ldr -14
  k_le
  k_jumpf RL_392E
  k_ldl -14
  k_jumpf RL_392E
RL_3915:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldln 19
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -2
  k_ldrn 23
  k_add
  k_ldrarg 13
  k_ule
  k_jumpt RL_37A8
  k_ldlarg 13
  k_ldrn 23
  k_smod
  k_jump RL_3882
RL_392E:
  k_ldlarg 15
  k_stl -4
  k_ldli 1
  k_stl -8
  k_jump RL_37A8
RF_3935:
  k_func 50
  k_ldlarg 13
  k_long $26
  k_longw $0E, $FFEA
  k_ldli 1
  k_jump RL_3948
RL_3945:
  k_ldln -32
  k_inc
RL_3948:
  k_stln -32
  k_longd $18, $0000000A
  k_long $1A
  k_longw $0C, $FFEA
  k_long $02
  k_longw $0E, $FFEA
  k_long $1D
  k_jumpt RL_3945
  k_ldli 0
  k_stln -30
  k_ldlarg 13
  k_long $26
  k_longw $0E, $FFEA
  k_jump RL_39A8
RL_396E:
  k_leal -13
  k_pushl
  k_ldln -32
  k_ldrn -30
  k_sub
  k_popr
  k_add
  k_pushl
  k_longw $0C, $FFEA
  k_longd $19, $0000000A
  k_long $1E
  k_longd $19, $00000030
  k_long $03
  k_long $27
  k_popstoreb
  k_longd $18, $0000000A
  k_long $1A
  k_longw $0C, $FFEA
  k_long $02
  k_longw $0E, $FFEA
  k_ldln -30
  k_inc
  k_stln -30
RL_39A8:
  k_ldln -30
  k_ldrn -32
  k_lt
  k_jumpt RL_396E
  k_ldlarg 11
  k_long $26
  k_longw $0E, $FFEA
  k_ldli 1
  k_jump RL_39BE
RL_39BB:
  k_ldln -34
  k_inc
RL_39BE:
  k_stln -34
  k_longd $18, $0000000A
  k_long $1A
  k_longw $0C, $FFEA
  k_long $02
  k_longw $0E, $FFEA
  k_long $1D
  k_jumpt RL_39BB
  k_ldli 0
  k_stln -30
  k_ldlarg 11
  k_long $26
  k_longw $0E, $FFEA
  k_jump RL_3A38
RL_39E4:
  k_ldln -30
  k_ldrn -34
  k_lt
  k_jumpf RL_3A24
  k_leal -19
  k_pushl
  k_ldln -32
  k_ldrn -30
  k_sub
  k_popr
  k_add
  k_pushl
  k_longw $0C, $FFEA
  k_longd $19, $0000000A
  k_long $1E
  k_longd $19, $00000030
  k_long $03
  k_long $27
  k_popstoreb
  k_longd $18, $0000000A
  k_long $1A
  k_longw $0C, $FFEA
  k_long $02
  k_longw $0E, $FFEA
  k_jump RL_3A33
RL_3A24:
  k_leal -19
  k_pushl
  k_ldln -32
  k_ldrn -30
  k_sub
  k_popr
  k_add
  k_pushl
  k_ldlib 48
  k_popstoreb
RL_3A33:
  k_ldln -30
  k_inc
  k_stln -30
RL_3A38:
  k_ldln -30
  k_ldrn -32
  k_lt
  k_jumpt RL_39E4
  k_pushn -32
  k_leal -6
  k_pushl
  k_leal -18
  k_pushl
  k_callx RL_88F4, 6
  k_leal -6
  k_pushl
  k_ldln -32
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldla $F188
  k_ldri 3
  k_shl
  k_stln -36
  k_ldla $F18A
  k_ldri 3
  k_shl
  k_dec
  k_stln -38
  k_longd $18, $00000000
  k_longw $0E, $FFE6
  k_ldli 0
  k_stln -46
  k_stln -44
  k_stln -48
  k_stln -42
  k_stln -28
  k_ldla $F188
  k_stln -40
RL_3A82:
  k_ldli 1
  k_stln -50
  k_jump RL_3C32
RL_3A88:
  k_ldln -40
  k_stla $F188
  k_pushi 1
  k_leal -6
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw $30E4
  k_ldlba $F28C
  k_shl1
  k_ldriw $8EC0
  k_add
  k_deref
  k_ldrn -38
  k_add
  k_pushl
  k_ldln -28
  k_ldri 3
  k_shl
  k_ldrn -36
  k_add
  k_pushl
  k_pushi 4
  k_pushib 19
  k_callx RL_21BE, 12
  k_pushi 3
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldln -44
  k_ldri 1
  k_eq
  k_jumpf RL_3AEA
  k_ldln -46
  k_jumpt RL_3AEA
  k_ldli 10
  k_stln -30
RL_3ACC:
  k_pushi 0
  k_callx RF_362A, 2
  k_ldrn -42
  k_ne
  k_jumpt RL_3AEA
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldln -30
  k_dec
  k_stln -30
  k_ldln -30
  k_ldri 0
  k_gt
  k_jumpt RL_3ACC
RL_3AEA:
  k_ldln -44
  k_ldri 1
  k_eq
  k_jumpf RL_3AF4
  k_ldli 1
  k_stln -46
RL_3AF4:
  k_pushi 0
  k_callx RF_362A, 2
  k_stln -42
  k_switchn 6
    .word $8000, RL_3B77
    .word $0080, RL_3B18
    .word $0100, RL_3C19
    .word $0200, RL_3BE3
    .word $0400, RL_3BB6
    .word $0800, RL_3B8D
    .word RL_3C2D
RL_3B18:
  k_leal -6
  k_pushl
  k_callx RF_366B, 2
  k_longw $0E, $FFE6
  k_ldli 1
  k_stln -48
  k_ldlarg 13
  k_long $26
  k_long $14
  k_longw $0C, $FFE6
  k_long $15
  k_long $0A
  k_jumpt RL_3B47
  k_ldlarg 11
  k_long $26
  k_long $14
  k_longw $0C, $FFE6
  k_long $15
  k_long $08
  k_jumpf RL_3C32
RL_3B47:
  k_longd $18, $00000000
  k_longw $0E, $FFE6
  k_ldli 0
  k_stln -48
  k_pushn -32
  k_leal -6
  k_pushl
  k_leal -18
  k_pushl
  k_callx RL_88F4, 6
  k_leal -6
  k_pushl
  k_ldln -32
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_pushi 10
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump RL_3C32
RL_3B77:
  k_ldlbf 15
  k_jumpf RL_3A82
  k_ldli 1
  k_stln -48
  k_longd $18, $0000FFFF
  k_longw $0E, $FFE6
  k_jump RL_3A82
RL_3B8D:
  k_leal -6
  k_pushl
  k_ldln -28
  k_popr
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
  k_leal -6
  k_pushl
  k_ldln -28
  k_popr
  k_add
  k_derefb
  k_ldrib 57
  k_gt
  k_jumpf RL_3BDD
  k_leal -6
  k_pushl
  k_ldln -28
  k_popr
  k_add
  k_pushl
  k_ldlib 48
  k_jump RL_3BDC
RL_3BB6:
  k_leal -6
  k_pushl
  k_ldln -28
  k_popr
  k_add
  k_pushl
  k_derefb
  k_dec
  k_popstoreb
  k_leal -6
  k_pushl
  k_ldln -28
  k_popr
  k_add
  k_derefb
  k_ldrib 48
  k_lt
  k_jumpf RL_3BDD
  k_leal -6
  k_pushl
  k_ldln -28
  k_popr
  k_add
  k_pushl
  k_ldlib 57
RL_3BDC:
  k_popstoreb
RL_3BDD:
  k_ldli 1
  k_stln -44
  k_jump RL_3A82
RL_3BE3:
  k_ldln -28
  k_ldri 0
  k_gt
  k_jumpf RL_3BF0
  k_ldln -28
  k_dec
  k_jump RL_3C27
RL_3BF0:
  k_ldln -50
  k_jumpf RL_3C0D
  k_pushn -32
  k_leal -6
  k_pushl
  k_leal -12
RL_3BFE:
  k_pushl
  k_callx RL_88F4, 6
  k_ldli 1
  k_swap
  k_ldln -50
  k_xor
  k_stln -50
  k_jump RL_3C29
RL_3C0D:
  k_pushn -32
  k_leal -6
  k_pushl
  k_leal -18
  k_jump RL_3BFE
RL_3C19:
  k_ldln -32
  k_dec
  k_pushl
  k_ldln -28
  k_popr
  k_lt
  k_jumpf RL_3C29
  k_ldln -28
  k_inc
RL_3C27:
  k_stln -28
RL_3C29:
  k_ldli 1
  k_jump RL_3C30
RL_3C2D:
  k_ldli 0
  k_stln -46
RL_3C30:
  k_stln -44
RL_3C32:
  k_ldln -48
  k_jumpf RL_3A88
RL_3C37:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_3C37
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
  k_longw $0C, $FFE6
  k_long $27
  k_return
RF_3C4E:
  k_func 0
  k_pushi 1
  k_pusharg 11
  k_callx RF_2FB9, 4
  k_pusharg 15
  k_pusharg 13
  k_pushiw $8EC6
  k_callx RF_3619, 6
  k_ldlbf 17
  k_pushl
  k_pusharg 15
  k_pusharg 13
  k_callx RF_3935, 6
  k_return
RF_3C6D:
  k_func 0
  k_pushi 1
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_callx RF_3C4E, 8
  k_return
RF_3C7B:
  k_func 0
  k_pushi 1
  k_pusharg 13
  k_pushi 1
  k_pusharg 11
  k_callx RF_3C4E, 8
  k_return
RF_3C89:
  k_func 0
  k_pushiw $2000
  k_pushi 1
  k_pushi 1
  k_ldlarg 11
  k_ldri 8
  k_sdiv
  k_pushl
  k_pusha $F188
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushiw $30E6
  k_ldlba $F28C
  k_shl1
  k_ldriw $8EC0
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_pushl
  k_ldla $F188
  k_ldri 3
  k_shl
  k_pushl
  k_pushi 6
  k_pushib 19
  k_callx RL_21BE, 12
  k_return
RF_3CBE:
  k_func 0
RL_3CC3:
  k_ldla $F18A
  k_ldri 3
  k_shl
  k_addli 8
  k_pushl
  k_callx RF_3C89, 2
  k_ldla $F275
  k_jumpf RL_3CD8
  k_ldla $F275
  k_callptr
RL_3CD8:
  k_pushib 20
  k_callx RF_3737, 2
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldla $F275
  k_jumpf RL_3CF0
  k_ldla $F275
  k_callptr
RL_3CF0:
  k_pushib 20
  k_callx RF_3737, 2
  k_jumpf RL_3CC3
  k_pushi 0
  k_callx RF_362A, 2
  k_return
RF_3CFF:
  k_func 2
  k_pushi 1
  k_pushiw $8ECF
  k_callx RF_2FB9, 4
RL_3D0C:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_3D0C
RL_3D14:
  k_call RF_3CBE
  k_stl -2
  k_ldl -2
  k_ldriw $0080
  k_eq
  k_jumpt RL_3D28
  k_ldl -2
  k_ldriw $0200
  k_eq
  k_jumpf RL_3D3A
RL_3D28:
  k_pushi 1
  k_pushiw $8ED6
  k_callx RF_2FB9, 4
RL_3D30:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_3D30
  k_ldli 1
  k_return
RL_3D3A:
  k_ldl -2
  k_ldriw $8000
  k_eq
  k_jumpt RL_3D4A
  k_ldl -2
  k_ldriw $0100
  k_eq
  k_jumpf RL_3D14
RL_3D4A:
  k_pushi 1
  k_pushiw $8ED8
  k_callx RF_2FB9, 4
RL_3D52:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_3D52
  k_ldli 0
  k_return
RF_3D5C:
  k_func 0
  k_pushi 8
  k_callx RL_21BE, 2
  k_ldlarg 11
  k_ldri 3
  k_eq
  k_jumpf RL_3D72
  k_ldliw $2000
  k_jump RL_3D73
RL_3D72:
  k_ldli 0
RL_3D73:
  k_pushl
  k_pushi 0
  k_pusharg 11
  k_pushi 4
  k_callx RL_21BE, 8
  k_return
RF_3D7C:
  k_func 0
  k_pushi 1
  k_callx RF_3D5C, 2
  k_pushi 2
  k_callx RF_3D5C, 2
  k_pushi 3
  k_callx RF_3D5C, 2
  k_return
RF_3D91:
  k_func 0
  k_jump RL_3DAA
RL_3D99:
  k_pushi 0
  k_callx RF_362A, 2
  k_ldrarg 11
  k_ne
  k_jumpt RL_3DB1
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
RL_3DAA:
  k_ldlarg 13
  k_dec
  k_stlarg 13
  k_inc
  k_jumpt RL_3D99
RL_3DB1:
  k_return
RF_3DB2:
  k_func 0
  k_jump RL_3DC9
RL_3DBA:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt RL_3DD0
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
RL_3DC9:
  k_ldlarg 11
  k_dec
  k_stlarg 11
  k_inc
  k_jumpt RL_3DBA
RL_3DD0:
  k_return
RF_3DD1:
  k_func 0
  k_ldlarg 11
  k_ldri 6
  k_mul
  k_pushl
  k_callx RF_3DB2, 2
  k_return
RF_3DDF:
  k_func 0
  k_ldlba $EA8A
  k_ldrarg 11
  k_mul
  k_ldri 3
  k_mul
  k_pushl
  k_callx RF_3DD1, 2
  k_return
RF_3DF1:
  k_func 6
  k_ldln 19
  k_ldri 5
  k_shl
  k_ldrarg 17
  k_add
  k_stl -2
  k_pushib 127
  k_pushi 0
  k_pushi 1
  k_push -2
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 7
  k_callx RL_21BE, 16
  k_pushi 0
  k_ldln 21
  k_long $26
  k_long $14
  k_pushn 23
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_jump RL_3E44
RL_3E1F:
  k_ldlarg 17
  k_shl1
  k_pushl
  k_push -4
  k_pushib 127
  k_pushn 23
  k_pushib 28
  k_callx RL_21BE, 10
  k_ldlib 64
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_pushi 1
  k_ldlarg 17
  k_shl1
  k_long $26
  k_long $14
  k_pushn 23
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldl -6
  k_inc
RL_3E44:
  k_stl -6
  k_ldl -6
  k_ldrn 19
  k_ult
  k_jumpt RL_3E1F
  k_pushib 127
  k_pushi 0
  k_pushi 1
  k_push -2
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 6
  k_callx RL_21BE, 16
  k_return
RF_3E5A:
  k_func 0
  k_pushi 0
  k_ldln 21
  k_long $26
  k_long $14
  k_pushn 23
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushn 23
  k_pushi 0
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushib 31
  k_callx RL_21BE, 16
  k_return
RF_3E7E:
  k_func 0
  k_pushi 0
  k_ldlbf 11
  k_ldri 8
  k_shl
  k_ldriw $1CF0
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushiw $0100
  k_ldlbf 13
  k_jumpf RL_3EA9
  k_ldliw $0080
  k_jump RL_3EAA
RL_3EA9:
  k_ldli 0
RL_3EAA:
  k_pushl
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_ldlbf 13
  k_jumpf RL_3EC2
  k_pushi 1
  k_pushi 0
  k_pushib 22
  k_callx RF_3EC3, 6
RL_3EC2:
  k_return
RF_3EC3:
  k_func 0
  k_pushi 0
  k_ldlbf 11
  k_ldri 5
  k_shl
  k_ldriw $1FF0
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 32
  k_ldlbf 15
  k_jumpf RL_3EED
  k_ldliw $0080
  k_jump RL_3EEE
RL_3EED:
  k_ldli 0
RL_3EEE:
  k_pushl
  k_ldlbf 13
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_pushl
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_return
RF_3F01:
  k_func 0
  k_longw $10, $F278
  k_longd $19, $41C64E6D
  k_long $01
  k_longd $19, $00003039
  k_long $03
  k_longw $12, $F278
  k_longw $10, $F278
  k_longd $19, $00000010
  k_long $20
  k_long $27
  k_ldriw $7FFF
  k_and
  k_return
RF_3F31:
  k_func 0
  k_ldlarg 11
  k_long $26
  k_longw $12, $F278
  k_return
RF_3F3E:
  k_func 0
  k_ldlarg 11
  k_jumpt RL_3F49
  k_ldli 0
  k_return
RL_3F49:
  k_call RF_3F01
  k_ldrarg 11
  k_umod
  k_return
RF_3F4F:
  k_func 4
  k_ldlarg 11
  k_long $16
  k_longd $19, $00008000
  k_long $29
  k_jumpf RL_3F66
  k_ldli 0
  k_jump RL_3F7D
RL_3F66:
  k_ldlarg 11
  k_long $16
  k_longd $19, $00010000
  k_long $08
  k_jumpf RL_3F7C
  k_ldli 1
  k_stl -2
  k_ldlarg 11
  k_long $16
  k_jump RL_3F84
RL_3F7C:
  k_ldli 2
RL_3F7D:
  k_stl -2
  k_ldlarg 11
  k_long $16
  k_addliw $8000
RL_3F84:
  k_stl -4
  k_ldli 10
  k_swap
  k_ldl -2
  k_add
  k_stl -2
  k_ldlarg 15
  k_long $26
  k_long $14
  k_ldlarg 11
  k_long $15
  k_pushl
  k_long $16
  k_long $03
  k_long $17
  k_jump RL_3FC3
RL_3F9C:
  k_pushi 1
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_dec
  k_pushl
  k_pushib 126
  k_push -4
  k_push -2
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf RL_3FBD
  k_ldliw $8000
  k_stl -4
  k_ldl -2
  k_inc
  k_stl -2
  k_jump RL_3FC0
RL_3FBD:
  k_ldl -4
  k_inc
  k_stl -4
RL_3FC0:
  k_ldlarg 15
  k_dec
  k_stlarg 15
RL_3FC3:
  k_ldlarg 15
  k_jumpt RL_3F9C
  k_return
RF_3FC8:
  k_func 0
  k_pushi 0
  k_ldlarg 13
  k_long $26
  k_long $14
  k_pusharg 11
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 11
  k_pushib 28
  k_callx RL_21BE, 10
  k_return
RF_3FE6:
  k_func 0
  k_pushi 4
  k_pushib 25
  k_callx RF_2F8F, 4
  k_pusharg 13
  k_ldlarg 13
  k_shl1
  k_ldriw $8EDA
  k_add
  k_deref
  k_pushl
  k_pusharg 11
  k_pushiw $8F3D
  k_callx RF_3608, 8
  k_return
RF_4004:
  k_func 2
  k_pushi 2
  k_pushib 25
  k_callx RF_2F8F, 4
  k_pushi 10
  k_pushi 0
  k_pushiw $8F46
  k_callx RF_3C6D, 6
  k_stl -2
  k_push -2
  k_pushiw $8F52
  k_callx RF_3FE6, 4
  k_ldl -2
  k_switch 0, 11, RL_4046
    .word RL_4040, RL_4047, RL_404C, RL_4051, RL_4056, RL_405B, RL_4060, RL_4065
    .word RL_406A, RL_406F, RL_4074
RL_4040:
  k_pushi 1
  k_pushi 0
RL_4042:
  k_callx RF_200C, 4
RL_4046:
  k_return
RL_4047:
  k_pushi 1
  k_pushi 1
  k_jump RL_4042
RL_404C:
  k_pushi 1
  k_pushi 2
  k_jump RL_4042
RL_4051:
  k_pushi 1
  k_pushi 3
  k_jump RL_4042
RL_4056:
  k_pushi 1
  k_pushi 4
  k_jump RL_4042
RL_405B:
  k_pushi 1
  k_pushi 5
  k_jump RL_4042
RL_4060:
  k_pushi 1
  k_pushi 6
  k_jump RL_4042
RL_4065:
  k_pushi 1
  k_pushi 7
  k_jump RL_4042
RL_406A:
  k_pushi 1
  k_pushi 8
  k_jump RL_4042
RL_406F:
  k_pushi 1
  k_pushi 9
  k_jump RL_4042
RL_4074:
  k_pushi 1
  k_pushi 10
  k_jump RL_4042
RF_4079:
  k_func 0
  k_ldlarg 13
  k_stlba $F16A
  k_ldlarg 11
  k_switchn 3
    .word $0002, RL_4094
    .word $0003, RL_409B
    .word $0024, RL_40A0
    .word RL_409A
RL_4094:
  k_pushi 1
  k_pushi 3
RL_4096:
  k_callx RF_200C, 4
RL_409A:
  k_return
RL_409B:
  k_pushi 1
  k_pushi 5
  k_jump RL_4096
RL_40A0:
  k_pushi 1
  k_pushi 8
  k_jump RL_4096
RF_40A5:
  k_func 0
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf RL_40BA
  k_ldlarg 11
  k_ldrib 21
  k_mul
  k_ldriw $EA1E
  k_jump RL_40C1
RL_40BA:
  k_ldlarg 11
  k_ldrib 21
  k_mul
  k_ldriw $0418
RL_40C1:
  k_add
  k_return
RF_40C3:
  k_func 0
  k_ldlarg 11
  k_ldrib 31
  k_ne
  k_jumpf RL_40DA
  k_ldlarg 11
  k_ldrib 17
  k_mul
  k_ldriw $1604
  k_add
  k_jump RL_40DD
RL_40DA:
  k_ldliw $EA9F
RL_40DD:
  k_return
RF_40DE:
  k_func 15
  k_ldlarg 11
  k_ldriw $2CD9
  k_ugt
  k_jumpf RL_40F0
  k_pushi 0
  k_pusharg 11
  k_jump RL_4114
RL_40F0:
  k_pushi 0
  k_ldlarg 11
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 15
  k_leal -15
  k_pushl
  k_pushib 126
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
  k_pushi 0
  k_leal -15
  k_pushl
RL_4114:
  k_callx RF_2FB9, 4
  k_return
RF_4119:
  k_func 6
  k_ldli 5
  k_swap
  k_ldlarg 11
  k_mul
  k_stlarg 11
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -4
  k_addlib 35
  k_stl -6
  k_ldli 0
  k_stl -2
  k_jump RL_4146
RL_4133:
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_4143
  k_ldl -4
  k_addli 4
  k_deref
  k_swap
  k_ldl -2
  k_add
  k_stl -2
RL_4143:
  k_ldl -4
  k_addli 7
  k_stl -4
RL_4146:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt RL_4133
  k_ldl -2
  k_return
RF_414E:
  k_func 10
  k_ldlarg 11
  k_jumpf RL_415A
  k_ldlib 50
  k_return
RL_415A:
  k_ldliw $EB92
  k_stl -6
  k_addlib 35
  k_stl -8
  k_ldliw $E9A6
  k_stl -10
  k_ldli 0
  k_stl -2
  k_stl -4
  k_jump RL_4186
RL_416B:
  k_ldl -6
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_417F
  k_ldl -10
  k_addlib 22
  k_derefb
  k_swap
  k_ldl -2
  k_add
  k_stl -2
  k_ldl -4
  k_inc
  k_stl -4
RL_417F:
  k_ldl -10
  k_addlib 24
  k_stl -10
  k_ldl -6
  k_addli 7
  k_stl -6
RL_4186:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt RL_416B
  k_ldl -2
  k_ldr -4
  k_sdiv
  k_return
RF_4190:
  k_func 8
  k_ldliw $EB92
  k_stl -2
  k_addlib 35
  k_stl -4
  k_ldliw $E9A6
  k_stl -6
  k_ldli 0
  k_stl -8
  k_jump RL_41C1
RL_41A5:
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_41B7
  k_ldl -6
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf RL_41B7
  k_ldl -8
  k_return
RL_41B7:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -6
  k_addlib 24
  k_stl -6
  k_ldl -2
  k_addli 7
  k_stl -2
RL_41C1:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt RL_41A5
  k_pushi 0
  k_callx RF_4190, 2
  k_return
RF_41CD:
  k_func 14
  k_ldliw $1824
  k_stl -12
  k_addlib 64
  k_stl -14
  k_ldliw $E56F
  k_stl -2
  k_ldli 0
  k_stl -6
  k_ldli 0
  k_stl -4
  k_jump RL_4219
RL_41E4:
  k_ldl -4
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_ldl -4
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -2
  k_add
  k_deref
  k_popr
  k_and
  k_jumpf RL_4213
  k_ldl -12
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stl -10
  k_pushl
  k_ldl -6
  k_popr
  k_ult
  k_jumpf RL_4213
  k_push -12
  k_callx RL_884E, 2
  k_ldrarg 11
  k_eq
  k_jumpf RL_4213
  k_ldl -10
  k_stl -6
RL_4213:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -12
  k_addli 2
  k_stl -12
RL_4219:
  k_ldl -12
  k_ldr -14
  k_ult
  k_jumpt RL_41E4
  k_ldl -6
  k_return
RF_4221:
  k_func 6
  k_ldliw $E99C
  k_stl -2
  k_ldli 0
  k_stl -6
  k_stl -4
  k_jump RL_4240
RL_4230:
  k_pusharg 11
  k_ldl -2
  k_derefb
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -6
  k_inc
  k_stl -6
  k_ldlarg 11
  k_inc
  k_stlarg 11
RL_4240:
  k_ldl -6
  k_ldri 10
  k_ult
  k_jumpf RL_424F
  k_ldl -2
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpt RL_4230
RL_424F:
  k_ldl -4
  k_return
RF_4251:
  k_func 10
  k_pusharg 11
  k_callx RF_4221, 2
  k_stl -8
  k_ldl -8
  k_jumpt RL_4262
  k_ldli 0
  k_return
RL_4262:
  k_pushi 0
  k_callx RF_4190, 2
  k_stl -10
  k_ldli 0
  k_stl -6
  k_ldlarg 11
  k_stl -2
  k_ldr -8
  k_add
  k_stl -4
  k_jump RL_428B
RL_4272:
  k_ldlarg 11
  k_derefb
  k_pushl
  k_callx RF_4190, 2
  k_ldr -10
  k_eq
  k_jumpf RL_4288
  k_push -2
  k_ldlarg 11
  k_derefb
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -6
  k_inc
  k_stl -6
RL_4288:
  k_ldlarg 11
  k_inc
  k_stlarg 11
RL_428B:
  k_ldlarg 11
  k_ldr -4
  k_ult
  k_jumpt RL_4272
  k_ldl -6
  k_return
RF_4293:
  k_func 10
  k_pusharg 11
  k_callx RF_4221, 2
  k_stl -10
  k_ldl -10
  k_jumpt RL_42A4
  k_ldli 0
  k_return
RL_42A4:
  k_pushi 0
  k_callx RF_4190, 2
  k_stl -8
  k_ldli 0
  k_stl -6
  k_ldlarg 11
  k_stl -2
  k_ldr -10
  k_add
  k_stl -4
  k_jump RL_42CD
RL_42B4:
  k_ldlarg 11
  k_derefb
  k_pushl
  k_callx RF_4190, 2
  k_ldr -8
  k_ne
  k_jumpf RL_42CA
  k_push -2
  k_ldlarg 11
  k_derefb
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -6
  k_inc
  k_stl -6
RL_42CA:
  k_ldlarg 11
  k_inc
  k_stlarg 11
RL_42CD:
  k_ldlarg 11
  k_ldr -4
  k_ult
  k_jumpt RL_42B4
  k_ldl -6
  k_return
RF_42D5:
  k_func 8
  k_ldliw $EB92
  k_stl -2
  k_addlib 35
  k_stl -4
  k_ldliw $E9A6
  k_stl -6
  k_ldli 0
  k_stl -8
  k_jump RL_4304
RL_42EA:
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_42FD
  k_pusharg 11
  k_ldl -6
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -8
  k_inc
  k_stl -8
RL_42FD:
  k_ldl -6
  k_addlib 24
  k_stl -6
  k_ldl -2
  k_addli 7
  k_stl -2
RL_4304:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt RL_42EA
  k_ldl -8
  k_return
RF_430C:
  k_func 22
  k_leal -10
  k_pushl
  k_callx RF_4251, 2
  k_stl -20
  k_ldl -20
  k_jumpt RL_4322
  k_ldliw $00FF
  k_return
RL_4322:
  k_ldli 0
  k_stl -16
  k_leal -10
  k_stl -12
  k_ldr -20
  k_add
  k_stl -14
  k_jump RL_434B
RL_432E:
  k_ldl -12
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stl -22
  k_ldl -22
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -16
  k_popr
  k_ult
  k_jumpf RL_4348
  k_ldl -22
  k_addli 3
  k_derefb
  k_stl -16
  k_ldl -12
  k_derefb
  k_stl -18
RL_4348:
  k_ldl -12
  k_inc
  k_stl -12
RL_434B:
  k_ldl -12
  k_ldr -14
  k_ult
  k_jumpt RL_432E
  k_ldl -18
  k_return
RF_4353:
  k_func 6
  k_ldlarg 11
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stl -2
  k_ldl -2
  k_ldrarg 13
  k_add
  k_derefb
  k_ldrarg 15
  k_add
  k_ldrib 100
  k_gt
  k_jumpf RL_4376
  k_ldl -2
  k_ldrarg 13
  k_add
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_stlarg 15
RL_4376:
  k_ldlarg 15
  k_pushl
  k_ldl -2
  k_ldrarg 13
  k_add
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -2
  k_inc
  k_derefb
  k_pushl
  k_ldl -2
  k_derefb
  k_popr
  k_add
  k_popr
  k_add
  k_stl -6
  k_ldl -6
  k_ldrib 100
  k_gt
  k_jumpf RL_43C4
  k_ldl -6
  k_addlib -100
  k_stlarg 15
RL_439A:
  k_ldli 0
  k_stl -4
RL_439C:
  k_ldl -4
  k_ldrarg 13
  k_ne
  k_jumpf RL_43B7
  k_ldl -2
  k_ldr -4
  k_add
  k_derefb
  k_jumpf RL_43B7
  k_ldlarg 15
  k_jumpf RL_43B7
  k_ldl -2
  k_ldr -4
  k_add
  k_pushl
  k_derefb
  k_dec
  k_popstoreb
  k_ldlarg 15
  k_dec
  k_stlarg 15
RL_43B7:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt RL_439C
  k_ldlarg 15
  k_jumpt RL_439A
RL_43C4:
  k_pushiw $00FC
  k_ldlarg 11
  k_ldriw $EE78
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldli 0
  k_stl -4
RL_43D3:
  k_ldl -2
  k_ldr -4
  k_add
  k_derefb
  k_pushl
  k_ldlib 79
  k_popr
  k_ult
  k_jumpf RL_43EC
  k_ldl -4
  k_inc
  k_pushl
  k_ldlarg 11
  k_ldriw $EE78
  k_add
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
RL_43EC:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt RL_43D3
  k_return
RF_43F6:
  k_func 4
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_ldri 10
  k_mul
  k_stl -2
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_ldri 10
  k_mul
  k_stl -4
  k_ldl -2
  k_ldr -4
  k_add
  k_addlib 20
  k_return
RF_4439:
  k_func 6
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stl -2
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stl -4
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stl -6
  k_ldli 4
  k_ldr -6
  k_sub
  k_pushl
  k_ldli 10
  k_ldr -4
  k_sub
  k_pushl
  k_ldlib 20
  k_ldr -2
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
  k_return
RF_44AA:
  k_func 8
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stl -4
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stl -6
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stl -8
  k_ldl -8
  k_addli 3
  k_pushl
  k_ldli 10
  k_ldr -4
  k_sub
  k_pushl
  k_ldl -6
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
  k_stl -2
  k_ldl -2
  k_ldrib 100
  k_gt
  k_jumpf RL_4521
  k_ldlib 100
  k_jump RL_4522
RL_4521:
  k_ldl -2
RL_4522:
  k_return
RF_4523:
  k_func 4
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
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_sdiv
  k_ldrib 50
  k_mul
  k_pushl
  k_ldl -4
  k_addli 2
  k_ldri 2
  k_sdiv
  k_ldriw $012C
  k_mul
  k_pushl
  k_ldl -4
  k_ldri 2
  k_smod
  k_ldr -4
  k_mul
  k_ldrib 50
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_addliw $FF38
  k_stl -2
  k_ldl -2
  k_return
RF_4565:
  k_func 8
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -8
  k_ldl -8
  k_addli 6
  k_stl -4
  k_addli 10
  k_stl -6
  k_ldli 0
  k_stl -2
  k_jump RL_4586
RL_457D:
  k_ldl -4
  k_deref
  k_swap
  k_ldl -2
  k_add
  k_stl -2
  k_ldl -4
  k_addli 2
  k_stl -4
RL_4586:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt RL_457D
  k_ldl -8
  k_addlib 20
  k_deref
  k_pushl
  k_ldl -8
  k_addlib 18
  k_deref
  k_ldri 10
  k_sdiv
  k_pushl
  k_ldl -8
  k_addlib 16
  k_deref
  k_ldri 10
  k_sdiv
  k_popr
  k_add
  k_popr
  k_add
  k_ldr -2
  k_add
  k_return
RF_45A5:
  k_func 8
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -8
  k_ldl -8
  k_addli 6
  k_stl -2
  k_addli 10
  k_stl -4
  k_ldli 0
  k_stl -6
  k_jump RL_45C6
RL_45BD:
  k_ldl -2
  k_deref
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -2
  k_addli 2
  k_stl -2
RL_45C6:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt RL_45BD
  k_ldl -8
  k_addlib 20
  k_deref
  k_pushl
  k_ldl -8
  k_addlib 18
  k_deref
  k_ldri 10
  k_sdiv
  k_pushl
  k_ldl -8
  k_addlib 16
  k_deref
  k_ldri 10
  k_sdiv
  k_popr
  k_add
  k_popr
  k_add
  k_ldr -6
  k_add
  k_return
RF_45E5:
  k_func 2
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_deref
  k_pushl
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_pusharg 11
  k_callx RF_45A5, 2
  k_popr
  k_add
  k_popr
  k_add
  k_return
RF_4604:
  k_func 6
  k_ldli 5
  k_swap
  k_ldlbf 11
  k_mul
  k_stlbf 11
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump RL_4643
RL_4618:
  k_ldlbf 11
  k_ldr -4
  k_add
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -6
  k_ldl -6
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_4641
  k_ldl -6
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_swap
  k_ldl -2
  k_add
  k_stl -2
RL_4641:
  k_ldl -4
  k_inc
RL_4643:
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt RL_4618
  k_ldl -2
  k_return
RF_464C:
  k_func 12
RL_4651:
  k_ldli 0
  k_stl -2
  k_ldliw $1000
  k_stl -8
  k_ldlarg 11
  k_ldri 10
  k_shl
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stl -12
  k_ldl -12
  k_ldri 8
  k_shl
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stl -12
  k_ldl -12
  k_ldri 6
  k_shl
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stl -12
  k_ldl -12
  k_ldri 4
  k_shl
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stl -12
  k_ldl -12
  k_shl1
  k_shl1
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stl -12
  k_ldl -12
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_ldliw $E44B
  k_stl -4
  k_addliw $011F
  k_stl -6
  k_jump RL_46BA
RL_46A8:
  k_ldl -4
  k_addli 4
  k_deref
  k_stl -10
  k_ldl -10
  k_ldr -8
  k_eq
  k_jumpf RL_46B7
  k_ldli 1
  k_stl -2
  k_jump RL_46C0
RL_46B7:
  k_ldl -4
  k_addli 7
  k_stl -4
RL_46BA:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt RL_46A8
RL_46C0:
  k_ldl -2
  k_jumpt RL_4651
  k_ldl -8
  k_return
RF_46C6:
  k_func 4
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -2
  k_ldl -2
  k_addli 5
  k_pushl
  k_ldlarg 11
  k_ldriw $00D4
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -2
  k_addli 4
  k_pushl
  k_ldli 4
  k_popstoreb
  k_ldl -2
  k_addli 7
  k_pushl
  k_ldl -2
  k_addli 9
  k_popstore
  k_ldl -2
  k_addli 7
  k_deref
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -2
  k_addli 5
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -4
  k_push -2
  k_ldl -4
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -2
  k_inc
  k_pushl
  k_ldl -4
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -2
  k_addli 2
  k_pushl
  k_ldl -4
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -2
  k_addli 3
  k_pushl
  k_ldl -4
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_return
RF_472D:
  k_func 0
  k_jump RL_475F
RL_4735:
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpt RL_4768
  k_ldla $F18A
  k_inc
  k_ldri 3
  k_shl
  k_pushl
  k_callx RF_3C89, 2
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 1
  k_pushi 6
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
RL_475F:
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpf RL_4735
RL_4768:
  k_pushi 1
  k_pushi 6
  k_pushib 58
  k_callx RL_21BE, 6
RL_4770:
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpt RL_4770
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
  k_jumpt RL_4770
  k_return
RF_4783:
  k_func 4
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
  k_ldli 0
  k_jump RL_47B6
RL_479B:
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
RL_47B6:
  k_stl -2
  k_ldl -2
  k_ldrarg 15
  k_ult
  k_jumpt RL_479B
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
  k_pushiw $8F56
  k_callx RF_3787, 16
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf RL_47DE
  k_ldliw $00FF
  k_jump RL_47E0
RL_47DE:
  k_ldl -4
  k_dec
RL_47E0:
  k_return
RF_47E1:
  k_func 8
  k_call RF_5E4F
  k_ldli 8
  k_stl -2
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_47F7
  k_ldli 4
  k_jump RL_47F9
RL_47F7:
  k_ldlib 20
RL_47F9:
  k_stl -4
  k_ldli 0
  k_jump RL_4823
RL_47FE:
  k_ldl -6
  k_ldrn 19
  k_umod
  k_ldrarg 13
  k_mul
  k_ldr -4
  k_add
  k_inc
  k_pushl
  k_ldl -6
  k_ldrn 19
  k_udiv
  k_ldrarg 11
  k_mul
  k_ldr -2
  k_add
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_ldl -6
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_ldl -6
  k_inc
RL_4823:
  k_stl -6
  k_ldl -6
  k_ldrarg 17
  k_ult
  k_jumpt RL_47FE
  k_pushi 1
  k_pushn 19
  k_pusharg 13
  k_pusharg 11
  k_ldl -4
  k_inc
  k_pushl
  k_push -2
  k_pusharg 17
  k_pushiw $8F57
  k_callx RF_3787, 16
  k_stl -8
  k_ldl -8
  k_ldrib -1
  k_eq
  k_jumpf RL_4849
  k_ldliw $00FF
  k_jump RL_484B
RL_4849:
  k_ldl -8
  k_dec
RL_484B:
  k_return
RF_484C:
  k_func 6
  k_ldlarg 11
  k_inc
  k_stl -4
  k_ldli 0
  k_jump RL_487C
RL_4858:
  k_ldl -2
  k_ldrn 23
  k_umod
  k_ldrarg 17
  k_mul
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 23
  k_udiv
  k_ldrarg 15
  k_mul
  k_ldr -4
  k_add
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_ldl -2
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_ldl -2
  k_inc
RL_487C:
  k_stl -2
  k_ldl -2
  k_ldrn 21
  k_ult
  k_jumpt RL_4858
  k_pushi 1
  k_pushn 23
  k_pusharg 17
  k_pusharg 15
  k_ldlarg 13
  k_inc
  k_pushl
  k_pusharg 11
  k_pushn 21
  k_pushiw $8F58
  k_callx RF_3787, 16
  k_stl -6
  k_ldl -6
  k_ldrib -1
  k_eq
  k_jumpf RL_48A4
  k_ldliw $00FF
  k_jump RL_48A6
RL_48A4:
  k_ldl -6
  k_dec
RL_48A6:
  k_return
RF_48A7:
  k_func 8
  k_call RF_5E4F
  k_ldli 8
  k_stl -4
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_48BD
  k_ldli 4
  k_jump RL_48BF
RL_48BD:
  k_ldlib 20
RL_48BF:
  k_stl -6
  k_ldli 0
  k_jump RL_48E8
RL_48C4:
  k_ldl -2
  k_ldrn 19
  k_umod
  k_ldrarg 13
  k_mul
  k_ldr -6
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 19
  k_udiv
  k_ldrarg 11
  k_mul
  k_ldr -4
  k_add
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_ldl -2
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_ldl -2
  k_inc
RL_48E8:
  k_stl -2
  k_ldl -2
  k_ldrarg 17
  k_ult
  k_jumpt RL_48C4
  k_pushi 2
  k_pushn 19
  k_pusharg 13
  k_pusharg 11
  k_ldl -6
  k_inc
  k_pushl
  k_push -4
  k_pusharg 17
  k_pushiw $8F59
  k_callx RF_3787, 16
  k_stl -8
  k_ldl -8
  k_ldrarg 17
  k_ule
  k_jumpf RL_490A
  k_ldl -8
  k_dec
  k_stl -8
RL_490A:
  k_ldl -8
  k_return
RF_490C:
  k_func 1
  k_pushi 1
  k_pusharg 17
  k_pusharg 15
  k_pushi 0
  k_pusharg 13
  k_pusharg 11
  k_pusharg 17
  k_pushiw $8F5A
  k_callx RF_3787, 16
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpf RL_4930
  k_ldliw $00FF
  k_return
RL_4930:
  k_ldlbf -1
  k_dec
  k_stlbf -1
  k_return
RF_4938:
  k_func 2
  k_pushi 2
  k_push -2
  k_pushib 126
  k_ldlba $E56C
  k_shl1
  k_ldriw $21AA
  k_add
  k_pushl
  k_pusha $F280
  k_callx RF_3FC8, 10
  k_pushi 0
  k_pushi 2
  k_push -2
  k_ldlba $E567
  k_inc
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_ldlba $E566
  k_addli 2
  k_ldri 3
  k_shl
  k_pushl
  k_pushib 22
  k_pushi 10
  k_callx RL_21BE, 14
  k_return
RF_496B:
  k_func 8
  k_ldliw $E564
  k_stl -6
  k_ldl -6
  k_addli 2
  k_derefb
  k_shl1
  k_ldri 3
  k_shl
  k_addlib 16
  k_stl -2
  k_ldlba $F28C
  k_shl1
  k_ldriw $8EC0
  k_add
  k_deref
  k_pushl
  k_ldl -6
  k_addli 3
  k_derefb
  k_shl1
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_addli 8
  k_stl -4
  k_pushi 2
  k_leal -8
  k_pushl
  k_pushib 126
  k_ldl -6
  k_addli 8
  k_derefb
  k_shl1
  k_ldriw $21AA
  k_add
  k_pushl
  k_pusha $F280
  k_callx RF_3FC8, 10
  k_pushi 1
  k_pushi 2
  k_push -8
  k_push -4
  k_push -2
  k_pushib 22
  k_pushi 10
  k_callx RL_21BE, 14
  k_return
RF_49B5:
  k_func 6
  k_ldliw $E564
  k_stl -6
  k_ldl -6
  k_addli 8
  k_derefb
  k_stlbf -3
  k_stlbf -4
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_call RF_496B
  k_ldli 0
  k_stl -2
RL_49D3:
  k_ldl -6
  k_addli 8
  k_derefb
  k_pushl
  k_ldlbf -4
  k_popr
  k_ne
  k_jumpf RL_49E8
  k_call RF_496B
  k_ldl -6
  k_addli 8
  k_derefb
  k_stlbf -4
RL_49E8:
  k_pushi 12
  k_push -2
  k_callx RF_3D91, 4
  k_call RF_3759
  k_stl -2
  k_ldl -2
  k_switchn 12
    .word $8000, RL_4A7F
    .word $0010, RL_4A67
    .word $0020, RL_4A59
    .word $0080, RL_4A86
    .word $0100, RL_4A2F
    .word $0200, RL_4A4B
    .word $0400, RL_4A3D
    .word $0500, RL_4A36
    .word $0600, RL_4A44
    .word $0800, RL_4A6F
    .word $0900, RL_4A28
    .word $0A00, RL_4A52
    .word RL_49D3
RL_4A28:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 1
  k_jump RL_4A73
RL_4A2F:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 2
  k_jump RL_4A73
RL_4A36:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 3
  k_jump RL_4A73
RL_4A3D:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 4
  k_jump RL_4A73
RL_4A44:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 5
  k_jump RL_4A73
RL_4A4B:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 6
  k_jump RL_4A73
RL_4A52:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 7
  k_jump RL_4A73
RL_4A59:
  k_ldl -6
  k_addli 8
  k_derefb
  k_jumpf RL_4A52
  k_ldl -6
  k_addli 8
  k_pushl
  k_derefb
  k_dec
  k_jump RL_4A73
RL_4A67:
  k_ldl -6
  k_addli 8
  k_derefb
  k_ldri 7
  k_eq
  k_jumpf RL_4A77
RL_4A6F:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldli 0
RL_4A73:
  k_popstoreb
  k_jump RL_49D3
RL_4A77:
  k_ldl -6
  k_addli 8
  k_pushl
  k_derefb
  k_inc
  k_jump RL_4A73
RL_4A7F:
  k_ldl -6
  k_addli 8
  k_pushl
  k_ldlbf -3
  k_popstoreb
RL_4A86:
  k_call RF_4938
RL_4A89:
  k_call RF_370F
  k_jumpt RL_4A89
  k_ldl -6
  k_addli 8
  k_derefb
  k_pushl
  k_ldlbf -3
  k_popr
  k_ne
  k_return
RF_4A99:
  k_func 0
  k_ldlba $EF6A
  k_ldriw $00FF
  k_eq
  k_jumpf RL_4AA9
  k_return
RL_4AA9:
  k_ldlba $EF6A
  k_ldri 1
  k_eq
  k_jumpf RL_4AB7
  k_pushi 3
  k_pushi 11
  k_callx RF_2F8F, 4
RL_4AB7:
  k_ldlba $EA8D
  k_addliw $05DC
  k_pushl
  k_pushiw $8F5C
  k_callx RF_3608, 4
  k_return
RF_4AC6:
  k_func 0
  k_ldlba $EF6A
  k_ldriw $00FF
  k_eq
  k_jumpf RL_4AD6
  k_return
RL_4AD6:
  k_ldlba $EF6A
  k_ldri 1
  k_eq
  k_jumpf RL_4AE4
  k_pushi 3
  k_pushi 3
  k_callx RF_2F8F, 4
RL_4AE4:
  k_ldlba $EA8C
  k_shl1
  k_ldriw $1CA8
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_return
RF_4AF7:
  k_func 2
  k_ldlba $EF6A
  k_ldriw $00FF
  k_eq
  k_jumpf RL_4B07
  k_return
RL_4B07:
  k_ldlba $EF6A
  k_ldri 1
  k_eq
  k_jumpf RL_4B1B
  k_pushi 3
  k_pushi 7
  k_callx RF_2F8F, 4
  k_ldliw $8F60
  k_jump RL_4B1E
RL_4B1B:
  k_ldliw $8F65
RL_4B1E:
  k_stl -2
  k_ldlba $EA8B
  k_inc
  k_pushl
  k_push -2
  k_callx RF_3608, 4
  k_return
RF_4B2A:
  k_func 0
  k_pusha $F280
  k_ldlarg 15
  k_shl1
  k_ldriw $8F69
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 3
  k_callx RF_3DF1, 14
  k_return
RF_4B44:
  k_func 0
  k_pushi 1
  k_pusharg 11
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_return
RF_4B55:
  k_func 4
  k_ldla $F16B
  k_stl -4
  k_ldlarg 13
  k_jump RL_4B7E
RL_4B62:
  k_pushib 127
  k_push -4
  k_pushn 19
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 2
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrn 19
  k_mul
  k_shl1
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln 19
  k_swap
  k_ldl -2
  k_add
RL_4B7E:
  k_stl -2
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 19
  k_add
  k_popr
  k_lt
  k_jumpt RL_4B62
  k_pushib 127
  k_push -4
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 2
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrarg 17
  k_mul
  k_shl1
  k_swap
  k_ldla $F16B
  k_add
  k_stla $F16B
  k_ldla $F16B
  k_stl -4
  k_ldlarg 13
  k_jump RL_4BCE
RL_4BB2:
  k_pushib 127
  k_push -4
  k_pushn 19
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 1
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrn 19
  k_mul
  k_shl1
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln 19
  k_swap
  k_ldl -2
  k_add
RL_4BCE:
  k_stl -2
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 19
  k_add
  k_popr
  k_lt
  k_jumpt RL_4BB2
  k_pushib 127
  k_push -4
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 1
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrarg 17
  k_mul
  k_shl1
  k_swap
  k_ldla $F16B
  k_add
  k_stla $F16B
  k_ldla $F16B
  k_stl -4
  k_ldlarg 13
  k_jump RL_4C1E
RL_4C02:
  k_pushib 127
  k_push -4
  k_pushn 19
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 3
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrn 19
  k_mul
  k_shl1
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln 19
  k_swap
  k_ldl -2
  k_add
RL_4C1E:
  k_stl -2
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 19
  k_add
  k_popr
  k_lt
  k_jumpt RL_4C02
  k_pushib 127
  k_push -4
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 3
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrarg 17
  k_mul
  k_shl1
  k_swap
  k_ldla $F16B
  k_add
  k_stla $F16B
  k_return
RF_4C4B:
  k_func 4
  k_ldlarg 15
  k_ldrarg 17
  k_mul
  k_shl1
  k_swap
  k_ldla $F16B
  k_sub
  k_stla $F16B
  k_ldla $F16B
  k_stl -4
  k_ldlarg 13
  k_jump RL_4C80
RL_4C64:
  k_pushib 127
  k_push -4
  k_pushn 19
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrn 19
  k_mul
  k_shl1
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln 19
  k_swap
  k_ldl -2
  k_add
RL_4C80:
  k_stl -2
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 19
  k_add
  k_popr
  k_lt
  k_jumpt RL_4C64
  k_pushib 127
  k_push -4
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrarg 17
  k_mul
  k_shl1
  k_swap
  k_ldla $F16B
  k_sub
  k_stla $F16B
  k_ldla $F16B
  k_stl -4
  k_ldlarg 13
  k_jump RL_4CD0
RL_4CB4:
  k_pushib 127
  k_push -4
  k_pushn 19
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrn 19
  k_mul
  k_shl1
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln 19
  k_swap
  k_ldl -2
  k_add
RL_4CD0:
  k_stl -2
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 19
  k_add
  k_popr
  k_lt
  k_jumpt RL_4CB4
  k_pushib 127
  k_push -4
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrarg 17
  k_mul
  k_shl1
  k_swap
  k_ldla $F16B
  k_sub
  k_stla $F16B
  k_ldla $F16B
  k_stl -4
  k_ldlarg 13
  k_jump RL_4D20
RL_4D04:
  k_pushib 127
  k_push -4
  k_pushn 19
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 2
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldlarg 15
  k_ldrn 19
  k_mul
  k_shl1
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln 19
  k_swap
  k_ldl -2
  k_add
RL_4D20:
  k_stl -2
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_pushl
  k_ldl -2
  k_ldrn 19
  k_add
  k_popr
  k_lt
  k_jumpt RL_4D04
  k_pushib 127
  k_push -4
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 15
  k_push -2
  k_pusharg 11
  k_pushi 2
  k_pushi 6
  k_callx RL_21BE, 16
  k_return
RF_4D41:
  k_func 0
  k_ldla $F16D
  k_ldri 3
  k_lt
  k_jumpf RL_4D8A
  k_pushi 5
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4B55, 10
  k_ldla $F16D
  k_inc
  k_stla $F16D
  k_ldla $F16D
  k_shl1
  k_ldriw $F16F
  k_add
  k_pushl
  k_ldlarg 11
  k_popstore
  k_ldla $F16D
  k_shl1
  k_ldriw $F175
  k_add
  k_pushl
  k_ldlarg 13
  k_popstore
  k_ldla $F16D
  k_shl1
  k_ldriw $F17B
  k_add
  k_pushl
  k_ldlarg 15
  k_popstore
  k_ldla $F16D
  k_shl1
  k_ldriw $F181
  k_add
  k_pushl
  k_ldlarg 17
  k_popstore
RL_4D8A:
  k_return
RF_4D8B:
  k_func 0
  k_ldla $F16D
  k_ldri 0
  k_ge
  k_jumpf RL_4DD6
  k_ldla $F16D
  k_ldri 3
  k_lt
  k_jumpf RL_4DD6
  k_pushi 5
  k_ldla $F16D
  k_shl1
  k_ldriw $F181
  k_add
  k_deref
  k_pushl
  k_ldla $F16D
  k_shl1
  k_ldriw $F17B
  k_add
  k_deref
  k_pushl
  k_ldla $F16D
  k_shl1
  k_ldriw $F175
  k_add
  k_deref
  k_pushl
  k_ldla $F16D
  k_shl1
  k_ldriw $F16F
  k_add
  k_deref
  k_pushl
  k_callx RF_4C4B, 10
  k_ldla $F16D
  k_dec
  k_stla $F16D
  k_ldli 1
  k_return
RL_4DD6:
  k_ldli 0
  k_return
RF_4DD8:
  k_func 0
  k_ldlba $F290
  k_ldriw $00FF
  k_ne
  k_jumpf RL_4E17
  k_ldlba $F291
  k_ldriw $00FF
  k_ne
  k_jumpf RL_4E17
  k_pushi 0
  k_pushi 6
  k_pushi 5
  k_ldlba $F291
  k_pushl
  k_ldlba $F290
  k_pushl
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 8
  k_pushi 7
  k_ldlba $F291
  k_dec
  k_pushl
  k_ldlba $F290
  k_dec
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
RL_4E17:
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F291
  k_stlba $F290
  k_ldlib -1
  k_stla $F295
  k_return
RF_4E29:
  k_func 8
  k_ldli 0
  k_stl -2
  k_ldlarg 17
  k_ldri 3
  k_eq
  k_jumpf RL_4E64
  k_ldlarg 15
  k_jumpf RL_4E4C
  k_ldlarg 15
  k_ldri 4
  k_eq
  k_jumpt RL_4E4C
  k_ldlarg 15
  k_ldri 5
  k_eq
  k_jumpt RL_4E4C
  k_ldlarg 15
  k_ldri 6
  k_eq
  k_jumpf RL_4E63
RL_4E4C:
  k_ldlarg 15
  k_stl -4
  k_ldlib 64
  k_stlba $F294
RL_4E53:
  k_ldlba $F294
  k_switchn 2
    .word $0020, RL_4E9D
    .word $0040, RL_4E9F
    .word RL_4E9F
RL_4E63:
  k_return
RL_4E64:
  k_ldlarg 17
  k_ldri 15
  k_and
  k_switchn 3
    .word $0000, RL_4E78
    .word $0001, RL_4E93
    .word $0002, RL_4E97
    .word RL_4E9C
RL_4E78:
  k_ldlarg 15
  k_ldriw $00FF
  k_ne
  k_jumpf RL_4E8F
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stl -8
  k_ldl -8
  k_addli 4
  k_deref
RL_4E8B:
  k_stl -4
  k_jump RL_4E53
RL_4E8F:
  k_ldli 8
  k_jump RL_4E8B
RL_4E93:
  k_ldlarg 15
  k_jump RL_4E8B
RL_4E97:
  k_ldlarg 15
  k_addli 13
  k_jump RL_4E8B
RL_4E9C:
  k_return
RL_4E9D:
  k_ldli 1
  k_stl -2
RL_4E9F:
  k_ldla $F295
  k_ldr -4
  k_ne
  k_jumpt RL_4EB7
  k_ldlba $F290
  k_ldrarg 11
  k_ne
  k_jumpt RL_4EB7
  k_ldlba $F291
  k_ldrarg 13
  k_ne
  k_jumpf RL_4EED
RL_4EB7:
  k_ldlarg 11
  k_stlba $F290
  k_ldlarg 13
  k_stlba $F291
  k_ldl -4
  k_stla $F295
  k_pushiw $2000
  k_pushi 6
  k_pushi 5
  k_ldlba $F291
  k_pushl
  k_ldlba $F290
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldla $F295
  k_ldriw $0FFF
  k_ugt
  k_jumpf RL_4EE8
  k_push -2
  k_callx RF_8495, 2
  k_jump RL_4EED
RL_4EE8:
  k_push -2
  k_callx RF_8308, 2
RL_4EED:
  k_pusha $F280
  k_pushiw $5FC6
  k_pushi 8
  k_pushi 7
  k_ldlba $F291
  k_dec
  k_pushl
  k_ldlba $F290
  k_dec
  k_pushl
  k_pushi 3
  k_callx RF_3DF1, 14
  k_return
RF_4F05:
  k_func 1024
  k_pushiw $0200
  k_pushi 0
  k_leal -1024
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushiw $0200
  k_pushi 0
  k_pushib 126
  k_leal -1024
  k_pushl
  k_pushi 3
  k_callx RL_21BE, 10
  k_return
RF_4F2A:
  k_func 2
  k_ldli 0
  k_stl -2
RL_4F31:
  k_push -2
  k_pushib 37
  k_callx RL_21BE, 4
  k_pusharg 11
  k_callx RF_3654, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 16
  k_lt
  k_jumpt RL_4F31
  k_return
RF_4F48:
  k_func 2
  k_ldli 15
  k_stl -2
RL_4F4F:
  k_push -2
  k_pushib 37
  k_callx RL_21BE, 4
  k_pusharg 11
  k_callx RF_3654, 2
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 0
  k_ge
  k_jumpt RL_4F4F
  k_return
RF_4F65:
  k_func 12
  k_ldlarg 11
  k_ldrarg 15
  k_add
  k_dec
  k_stl -10
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_dec
  k_stl -12
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushi 0
  k_ldliw $64DC
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldlarg 15
  k_ldrarg 17
  k_mul
  k_shl1
  k_pushl
  k_pushi 0
  k_pushib 127
  k_pusha $F280
  k_pushib 28
  k_callx RL_21BE, 10
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump RL_5039
RL_4FAD:
  k_ldli 0
  k_jump RL_5030
RL_4FB1:
  k_ldl -8
  k_jumpt RL_4FCE
  k_ldl -6
  k_jumpt RL_4FBD
  k_ldli 4
  k_jump RL_5002
RL_4FBD:
  k_ldlarg 15
  k_dec
  k_pushl
  k_ldl -6
  k_popr
  k_ult
  k_jumpf RL_4FCA
  k_ldli 0
  k_jump RL_5002
RL_4FCA:
  k_ldli 6
  k_jump RL_5002
RL_4FCE:
  k_ldlarg 17
  k_dec
  k_pushl
  k_ldl -8
  k_popr
  k_ult
  k_jumpf RL_4FEC
  k_ldl -6
  k_jumpt RL_4FDF
  k_ldli 2
  k_jump RL_5002
RL_4FDF:
  k_ldlarg 15
  k_dec
  k_pushl
  k_ldl -6
  k_popr
  k_ult
  k_jumpt RL_502B
  k_ldli 3
  k_jump RL_5002
RL_4FEC:
  k_ldl -6
  k_jumpt RL_4FF4
  k_ldli 5
  k_jump RL_5002
RL_4FF4:
  k_ldlarg 15
  k_dec
  k_pushl
  k_ldl -6
  k_popr
  k_ult
  k_jumpf RL_5001
  k_ldli 1
  k_jump RL_5002
RL_5001:
  k_ldli 7
RL_5002:
  k_stl -4
  k_pushi 0
  k_ldl -4
  k_shl1
  k_pushl
  k_ldln 19
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_ldriw $26D0
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 2
  k_push -2
  k_pushib 127
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
RL_502B:
  k_ldl -2
  k_addli 2
  k_stl -2
  k_ldl -6
  k_inc
RL_5030:
  k_stl -6
  k_ldl -6
  k_ldrarg 15
  k_ult
  k_jumpt RL_4FB1
  k_ldl -8
  k_inc
RL_5039:
  k_stl -8
  k_ldl -8
  k_ldrarg 17
  k_ult
  k_jumpt RL_4FAD
  k_pushib 127
  k_pushi 0
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 3
  k_callx RF_532F, 14
  k_pushi 0
  k_pushi 0
  k_pushib 56
  k_callx RL_21BE, 6
  k_ldlba $EF6A
  k_jumpt RL_5074
  k_ldlba $F28C
  k_shl1
  k_ldriw $8F70
  k_add
  k_deref
  k_swap
  k_ldlarg 13
  k_add
  k_stlarg 13
  k_ldlba $F28C
  k_shl1
  k_ldriw $8F70
  k_add
  k_deref
  k_swap
  k_ldl -12
  k_add
  k_stl -12
RL_5074:
  k_pushi 1
  k_pushib 32
  k_ldl -12
  k_inc
  k_ldri 3
  k_shl
  k_addlib -2
  k_pushl
  k_ldl -10
  k_inc
  k_ldri 3
  k_shl
  k_addlib -2
  k_pushl
  k_ldlarg 13
  k_ldri 3
  k_shl
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_ldri 3
  k_shl
  k_addli 2
  k_pushl
  k_pushib 38
  k_callx RL_21BE, 14
  k_pushiw $00E0
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushiw $8F76
  k_callx RF_2FB9, 4
  k_return
RF_50AB:
  k_func 2
  k_ldlarg 15
  k_jumpf RL_50B8
  k_ldli 14
  k_jump RL_50BA
RL_50B8:
  k_ldlib 20
RL_50BA:
  k_stl -2
  k_pusha $F280
  k_ldlarg 15
  k_shl1
  k_ldriw $8F7A
  k_add
  k_deref
  k_pushl
  k_push -2
  k_pushib 30
  k_pusharg 13
  k_pusharg 11
  k_pushi 2
  k_callx RF_3DF1, 14
  k_return
RF_50D1:
  k_func 0
  k_pushiw $2000
  k_ldlarg 17
  k_addlib -2
  k_pushl
  k_ldlarg 15
  k_addlib -2
  k_pushl
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushi 3
  k_callx RF_604A, 12
  k_ldln 19
  k_jumpf RL_50F8
  k_ldln 19
  k_ldri 8
  k_eq
  k_jumpf RL_5110
RL_50F8:
  k_pusha $F280
  k_ldln 19
  k_shl1
  k_ldriw $8F7E
  k_add
  k_deref
  k_pushl
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_jump RL_513B
RL_5110:
  k_pusha $F280
  k_ldln 19
  k_shl1
  k_ldriw $8F7E
  k_add
  k_deref
  k_pushl
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 3
  k_callx RF_3DF1, 14
  k_pushiw $0409
  k_ldlarg 17
  k_addlib -2
  k_pushl
  k_ldlarg 15
  k_addlib -2
  k_pushl
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_pushi 1
  k_callx RF_604A, 12
RL_513B:
  k_return
RF_513C:
  k_func 16
  k_ldlarg 13
  k_ldri 3
  k_mul
  k_ldrarg 11
  k_add
  k_ldrib 49
  k_mul
  k_ldriw $EFAB
  k_add
  k_stl -2
  k_addlib 49
  k_stl -4
  k_pushiw $2000
  k_pushi 0
  k_pushiw $E000
  k_pushib 127
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushi 0
  k_ldliw $BE4A
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushiw $0690
  k_pushiw $E800
  k_pushib 127
  k_pusha $F280
  k_pushib 28
  k_callx RL_21BE, 10
  k_ldli 0
  k_stlarg 13
  k_stlarg 11
  k_jump RL_52EE
RL_5188:
  k_ldlarg 11
  k_shl1
  k_shl1
  k_shl1
  k_pushl
  k_ldlarg 13
  k_shl1
  k_shl1
  k_ldrib 60
  k_mul
  k_popr
  k_add
  k_addliw $E002
  k_stl -6
  k_ldlarg 11
  k_shl1
  k_shl1
  k_shl1
  k_pushl
  k_ldlarg 13
  k_shl1
  k_shl1
  k_ldrib 60
  k_mul
  k_popr
  k_add
  k_addliw $E802
  k_stl -8
  k_ldli 0
  k_jump RL_52D3
RL_51AE:
  k_ldli 0
  k_stl -16
  k_ldlib 18
  k_stlbf -14
  k_pushi 1
  k_leal -14
  k_pushl
  k_pushib 126
  k_ldlbf -13
  k_pushl
  k_ldl -2
  k_derefb
  k_shl1
  k_shl1
  k_popr
  k_add
  k_ldriw $25F8
  k_add
  k_pushl
  k_pusha $F282
  k_callx RF_3FC8, 10
  k_ldlbf -14
  k_jumpf RL_52CF
  k_ldlbf -14
  k_ldrib 17
  k_eq
  k_jumpf RL_51E5
  k_ldli 2
  k_jump RL_51E6
RL_51E5:
  k_ldli 1
RL_51E6:
  k_stl -16
  k_ldlbf -13
  k_ldri 1
  k_shr
  k_jumpf RL_51F4
  k_ldlib 60
  k_jump RL_51F5
RL_51F4:
  k_ldli 0
RL_51F5:
  k_shl1
  k_pushl
  k_ldlbf -13
  k_ldri 1
  k_and
  k_jumpf RL_5203
  k_ldli 2
  k_jump RL_5204
RL_5203:
  k_ldli 0
RL_5204:
  k_shl1
  k_popr
  k_add
  k_ldr -6
  k_add
  k_stl -10
  k_ldlbf -13
  k_ldri 1
  k_shr
  k_jumpf RL_5217
  k_ldlib 60
  k_jump RL_5218
RL_5217:
  k_ldli 0
RL_5218:
  k_shl1
  k_pushl
  k_ldlbf -13
  k_ldri 1
  k_and
  k_jumpf RL_5226
  k_ldli 2
  k_jump RL_5227
RL_5226:
  k_ldli 0
RL_5227:
  k_shl1
  k_popr
  k_add
  k_ldr -8
  k_add
  k_stl -12
  k_ldl -16
  k_ldri 1
  k_eq
  k_jumpf RL_527E
  k_pushi 0
  k_ldlbf -14
  k_ldri 3
  k_shl
  k_ldriw $24D0
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 4
  k_push -10
  k_pushib 127
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
  k_pushi 0
  k_ldlbf -14
  k_ldri 3
  k_shl
  k_ldriw $24D4
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 4
  k_ldl -10
  k_addlib 60
  k_pushl
  k_pushib 127
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
RL_527E:
  k_ldl -16
  k_ldri 2
  k_eq
  k_jumpf RL_52CF
  k_pushi 0
  k_ldlbf -14
  k_ldri 3
  k_shl
  k_ldriw $24D0
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 4
  k_push -12
  k_pushib 127
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
  k_pushi 0
  k_ldlbf -14
  k_ldri 3
  k_shl
  k_ldriw $24D4
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 4
  k_ldl -12
  k_addlib 60
  k_pushl
  k_pushib 127
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
RL_52CF:
  k_ldlbf -13
  k_inc
RL_52D3:
  k_stlbf -13
  k_ldlbf -13
  k_ldri 4
  k_ult
  k_jumpt RL_51AE
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldri 7
  k_ult
  k_jumpt RL_52EB
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_ldli 0
  k_stlarg 11
RL_52EB:
  k_ldl -2
  k_inc
  k_stl -2
RL_52EE:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt RL_5188
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
  k_return
RF_530E:
  k_func 0
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushib 17
  k_callx RL_21BE, 8
  k_pusharg 13
  k_pusharg 11
  k_pushi 2
  k_pushib 17
  k_callx RL_21BE, 8
  k_pusharg 13
  k_pusharg 11
  k_pushi 3
  k_pushib 17
  k_callx RL_21BE, 8
  k_return
RF_532F:
  k_func 2
  k_ldlarg 15
  k_jump RL_5353
RL_5338:
  k_pushn 23
  k_pushn 21
  k_pushi 7
  k_pusharg 17
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldlarg 17
  k_ldri 14
  k_mul
  k_swap
  k_ldln 21
  k_add
  k_stln 21
  k_ldli 7
  k_swap
  k_ldl -2
  k_add
RL_5353:
  k_stl -2
  k_ldlarg 15
  k_ldrn 19
  k_add
  k_pushl
  k_ldl -2
  k_addli 7
  k_popr
  k_ult
  k_jumpt RL_5338
  k_pushn 23
  k_pushn 21
  k_ldlarg 15
  k_ldrn 19
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 17
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_pushi 6
  k_callx RL_21BE, 16
  k_return
RF_5375:
  k_func 2
  k_ldlarg 15
  k_jump RL_5399
RL_537E:
  k_pushn 23
  k_pushn 21
  k_pushi 7
  k_pusharg 17
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldlarg 17
  k_ldri 14
  k_mul
  k_swap
  k_ldln 21
  k_add
  k_stln 21
  k_ldli 7
  k_swap
  k_ldl -2
  k_add
RL_5399:
  k_stl -2
  k_ldlarg 15
  k_ldrn 19
  k_add
  k_pushl
  k_ldl -2
  k_addli 7
  k_popr
  k_ult
  k_jumpt RL_537E
  k_pushn 23
  k_pushn 21
  k_ldlarg 15
  k_ldrn 19
  k_add
  k_ldr -2
  k_sub
  k_pushl
  k_pusharg 17
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_pushi 7
  k_callx RL_21BE, 16
  k_return
RF_53BB:
  k_func 0
  k_ldlba $F193
  k_jumpf RL_53D4
  k_pushib 127
  k_pushiw $D800
  k_pushib 28
  k_pushib 28
  k_pushi 1
  k_pushi 2
  k_jump RL_53DF
RL_53D4:
  k_pushib 127
  k_pushiw $E800
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
RL_53DF:
  k_pushi 2
  k_callx RF_532F, 14
  k_pushib 127
  k_pushiw $E000
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 1
  k_callx RF_532F, 14
  k_return
RF_53F5:
  k_func 2
  k_ldlarg 13
  k_shl1
  k_ldrib 60
  k_mul
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_popr
  k_add
  k_addliw $E002
  k_stl -2
  k_pushi 0
  k_ldliw $21A2
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 4
  k_push -2
  k_pushib 127
  k_pusha $F280
  k_pushib 28
  k_callx RL_21BE, 10
  k_pushi 0
  k_ldliw $21A6
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 4
  k_ldl -2
  k_addlib 60
  k_pushl
  k_pushib 127
  k_pusha $F280
  k_pushib 28
  k_callx RL_21BE, 10
  k_return
RF_5449:
  k_func 28
  k_ldlarg 13
  k_ldrib 24
  k_mul
  k_ldrarg 11
  k_add
  k_ldri 5
  k_mul
  k_addli 4
  k_long $25
  k_longw $0E, $FFFC
  k_pushi 2
  k_leal -6
  k_pushl
  k_leal -4
  k_pushl
  k_callx RF_3F4F, 6
  k_pushi 3
  k_pushiw $EF84
  k_leal -4
  k_pushl
  k_callx RF_3F4F, 6
  k_ldl -6
  k_ldrib 18
  k_mul
  k_ldra $EFA7
  k_add
  k_long $26
  k_longw $0E, $FFFC
  k_pushib 18
  k_leal -24
  k_pushl
  k_leal -4
  k_pushl
  k_callx RF_3F4F, 6
  k_leal -24
  k_stln -26
  k_addlib 18
  k_stln -28
  k_jump RL_54D0
RL_549E:
  k_ldla $EFA9
  k_long $25
  k_long $14
  k_ldln -26
  k_deref
  k_long $26
  k_longd $19, $00000031
  k_long $01
  k_long $15
  k_long $03
  k_longw $0E, $FFFC
  k_pushib 49
  k_pusharg 15
  k_leal -4
  k_pushl
  k_callx RF_3F4F, 6
  k_ldlib 49
  k_swap
  k_ldlarg 15
  k_add
  k_stlarg 15
  k_ldln -26
  k_addli 2
  k_stln -26
RL_54D0:
  k_ldln -26
  k_ldrn -28
  k_ult
  k_jumpt RL_549E
  k_return
RF_54D9:
  k_func 4
  k_longd $18, $00000000
  k_longw $0E, $FFFC
  k_pushi 2
  k_pushiw $EFA7
  k_leal -4
  k_pushl
  k_callx RF_3F4F, 6
  k_pushi 2
  k_pushiw $EFA9
  k_leal -4
  k_pushl
  k_callx RF_3F4F, 6
  k_pushiw $EFAB
  k_pusharg 13
  k_pusharg 11
  k_callx RF_5449, 6
  k_ldlba $EA8C
  k_ldri 2
  k_ugt
  k_jumpf RL_5521
  k_ldlba $EA8C
  k_ldri 9
  k_ult
  k_jumpf RL_5521
  k_ldlba $EF84
  k_ldri 4
  k_shr
  k_jump RL_5524
RL_5521:
  k_ldlba $EF84
RL_5524:
  k_ldri 15
  k_and
  k_stlba $EF82
  k_ldlba $EA8C
  k_ldri 2
  k_ugt
  k_jumpf RL_5541
  k_ldlba $EA8C
  k_ldri 9
  k_ult
  k_jumpf RL_5541
  k_ldlba $EF85
  k_ldri 4
  k_shr
  k_jump RL_5544
RL_5541:
  k_ldlba $EF85
RL_5544:
  k_ldri 15
  k_and
  k_stlba $EF83
  k_return
RF_554A:
  k_func 0
  k_pusharg 13
  k_pusharg 11
  k_callx RF_53F5, 4
  k_ldlarg 11
  k_shl1
  k_addli 2
  k_stlarg 11
  k_ldlarg 13
  k_shl1
  k_inc
  k_stlarg 13
  k_pusha $F280
  k_pushiw $21A2
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
RF_556D:
  k_func 9
  k_ldlarg 13
  k_ldri 1
  k_shr
  k_pushl
  k_ldlarg 11
  k_ldri 1
  k_shr
  k_pushl
  k_pusharg 15
  k_callx RL_85D4, 6
  k_stl -2
  k_ldlarg 11
  k_ldri 1
  k_and
  k_pushl
  k_ldlarg 13
  k_ldri 1
  k_and
  k_shl1
  k_popr
  k_add
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_addli 2
  k_stlarg 11
  k_ldlarg 13
  k_shl1
  k_inc
  k_stlarg 13
  k_ldl -2
  k_shl1
  k_shl1
  k_ldr -4
  k_add
  k_ldriw $25F8
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stlbf -7
  k_ldlba $F193
  k_ldri 1
  k_eq
  k_jumpf RL_55C4
  k_ldlbf -7
  k_jumpf RL_55BB
  k_ldlbf -7
  k_ldrib 17
  k_eq
  k_jumpf RL_55C4
RL_55BB:
  k_pusha $F280
  k_pushiw $219A
  k_jump RL_55D1
RL_55C4:
  k_pusha $F282
  k_ldlbf -7
  k_ldri 3
  k_shl
  k_ldriw $2568
  k_add
  k_pushl
RL_55D1:
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 2
  k_callx RF_3DF1, 14
  k_return
RF_55DB:
  k_func 0
  k_ldlarg 11
  k_shl1
  k_addli 2
  k_stlarg 11
  k_ldlarg 13
  k_shl1
  k_inc
  k_stlarg 13
  k_pushi 0
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_return
RF_55F4:
  k_func 4
  k_ldlba $E573
  k_ldri 2
  k_and
  k_jumpf RL_5602
  k_return
RL_5602:
  k_ldlarg 11
  k_shl1
  k_ldri 3
  k_shl
  k_addlib 16
  k_stlarg 11
  k_ldlarg 13
  k_shl1
  k_ldri 3
  k_shl
  k_pushl
  k_ldlba $F28C
  k_ldriw $8F90
  k_add
  k_derefb
  k_popr
  k_add
  k_stlarg 13
  k_ldlba $E573
  k_ldrib 32
  k_and
  k_jumpf RL_563D
  k_pushi 4
  k_pushib 22
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushib 126
  k_pushi 0
  k_pushiw $8F93
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushib 18
  k_pushi 9
  k_callx RL_21BE, 18
  k_return
RL_563D:
  k_ldlba $E573
  k_ldri 1
  k_and
  k_jumpt RL_5667
  k_pushi 0
  k_ldliw $21BA
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushi 0
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushib 22
  k_pushib 31
  k_callx RL_21BE, 16
  k_return
RL_5667:
  k_ldlba $F193
  k_ldri 1
  k_eq
  k_jumpf RL_5675
  k_pushi 8
  k_callx RF_3F3E, 2
  k_stlarg 15
RL_5675:
  k_pushi 0
  k_ldlarg 15
  k_shl1
  k_ldriw $21AA
  k_add
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushi 2
  k_pushi 1
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_pushib 22
  k_pushib 31
  k_callx RL_21BE, 16
  k_return
RF_569A:
  k_func 4
  k_ldlarg 15
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -2
  k_pushi 8
  k_ldl -2
  k_addli 8
  k_popr
  k_pushl
  k_derefb
  k_umod
  k_popstoreb
  k_stl -4
  k_ldlarg 15
  k_jumpt RL_56BC
  k_push -4
  k_pusharg 13
  k_pusharg 11
  k_callx RF_55F4, 6
  k_return
RL_56BC:
  k_ldlarg 11
  k_shl1
  k_addli 2
  k_stlarg 11
  k_ldlarg 13
  k_shl1
  k_inc
  k_stlarg 13
  k_pushib 126
  k_ldl -4
  k_ldri 3
  k_shl
  k_ldriw $8F9B
  k_add
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_return
RF_56D9:
  k_func 8
  k_ldli 0
  k_stl -2
  k_stl -4
  k_jump RL_572F
RL_56E4:
  k_ldl -2
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_stl -6
  k_ldl -2
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_ldrarg 13
  k_add
  k_stl -8
  k_ldl -6
  k_ldri 0
  k_ge
  k_jumpf RL_572C
  k_ldl -6
  k_ldri 13
  k_le
  k_jumpf RL_572C
  k_ldl -8
  k_ldri 0
  k_ge
  k_jumpf RL_572C
  k_ldl -8
  k_ldri 13
  k_le
  k_jumpf RL_572C
  k_push -8
  k_push -6
  k_ldlba $F273
  k_pushl
  k_ldlba $F272
  k_pushl
  k_callx RL_8616, 8
  k_jumpf RL_572C
  k_ldlarg 15
  k_ldr -4
  k_add
  k_pushl
  k_ldl -2
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
RL_572C:
  k_ldl -2
  k_inc
  k_stl -2
RL_572F:
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt RL_56E4
  k_ldl -4
  k_return
RF_5737:
  k_func 16
  k_leal -8
  k_pushl
  k_ldlarg 13
  k_derefb
  k_pushl
  k_ldlarg 11
  k_derefb
  k_pushl
  k_callx RF_56D9, 6
  k_stl -10
  k_ldl -10
  k_jumpt RL_5751
  k_ldli 1
  k_return
RL_5751:
  k_leal -8
  k_pushl
  k_push -10
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_derefb
  k_stl -12
  k_pusharg 11
  k_ldl -12
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_derefb
  k_popr
  k_add
  k_popstoreb
  k_pusharg 13
  k_ldl -12
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_pushl
  k_ldlarg 13
  k_derefb
  k_popr
  k_add
  k_popstoreb
  k_ldlarg 15
  k_ldri 4
  k_shl
  k_ldriw $E56C
  k_add
  k_pushl
  k_ldl -12
  k_popstoreb
  k_ldli 0
  k_return
RF_5788:
  k_func 0
RL_578D:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf RL_57A7
  k_pusharg 11
  k_pushi 2
  k_callx RF_3F3E, 2
  k_ldri 13
  k_mul
  k_popstoreb
  k_pusharg 13
  k_pushi 14
  k_callx RF_3F3E, 2
  k_jump RL_57B6
RL_57A7:
  k_pusharg 11
  k_pushi 14
  k_callx RF_3F3E, 2
  k_popstoreb
  k_pusharg 13
  k_pushi 2
  k_callx RF_3F3E, 2
  k_ldri 13
  k_mul
RL_57B6:
  k_popstoreb
  k_ldlarg 13
  k_derefb
  k_pushl
  k_ldlarg 11
  k_derefb
  k_pushl
  k_ldlba $F273
  k_pushl
  k_ldlba $F272
  k_pushl
  k_callx RL_8616, 8
  k_jumpf RL_578D
  k_return
RF_57CD:
  k_func 4
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -2
  k_ldl -2
  k_derefb
  k_stlba $F272
  k_ldl -2
  k_inc
  k_derefb
  k_stlba $F273
  k_ldl -2
  k_addli 2
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpt RL_5814
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_ldlba $F273
  k_pushl
  k_ldlba $F272
  k_pushl
  k_callx RL_8616, 8
  k_jumpt RL_581E
  k_pusharg 11
  k_ldl -2
  k_addli 3
  k_pushl
  k_ldl -2
  k_addli 2
  k_pushl
  k_callx RF_5737, 6
  k_jumpf RL_581E
RL_5814:
  k_ldl -2
  k_addli 3
  k_pushl
  k_ldl -2
  k_addli 2
  k_pushl
  k_callx RF_5788, 4
RL_581E:
  k_ldl -2
  k_addli 4
  k_pushl
  k_ldli 12
  k_popstore
  k_ldl -2
  k_addli 6
  k_pushl
  k_ldli 12
  k_popstore
  k_pusharg 11
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_callx RF_569A, 6
  k_pusharg 11
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_89FC, 6
  k_return
RF_5843:
  k_func 0
  k_pushib 21
  k_pushiw $00FF
  k_pushiw $F199
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushiw $00C4
  k_pushiw $00FF
  k_pushiw $F1AE
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_return
RF_586A:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldlba $F28C
  k_jumpf RL_5891
  k_ldl -2
  k_addli 3
  k_derefb
  k_ldri 6
  k_ult
  k_jumpt RL_5899
  k_ldl -2
  k_addli 3
  k_derefb
  k_ldri 7
  k_ugt
  k_jumpf RL_589D
RL_5889:
  k_ldli 1
  k_jump RL_589A
RL_588D:
  k_ldli 7
  k_jump RL_58A8
RL_5891:
  k_ldl -2
  k_addli 3
  k_derefb
  k_ldri 7
  k_ult
  k_jumpf RL_5889
RL_5899:
  k_ldli 2
RL_589A:
  k_stlba $F28C
RL_589D:
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpt RL_588D
  k_ldliw $01F7
RL_58A8:
  k_pushl
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_return
RF_58B6:
  k_func 0
  k_ldlarg 13
  k_switch 0, 4, RL_599F
    .word RL_58CB, RL_5993, RL_5997, RL_599B
RL_58CB:
  k_ldli 10
RL_58CC:
  k_stlarg 13
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $BCDE
  k_pushl
  k_pushi 0
  k_ldlarg 13
  k_ldri 10
  k_mul
  k_pushl
  k_pushi 4
  k_pusharg 11
  k_pushiw $00BF
  k_pushi 2
  k_pushi 0
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $BD5E
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $00C3
  k_pushi 2
  k_pushi 1
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $BDDE
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $00C7
  k_pushi 2
  k_pushi 2
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $BE5E
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $00CB
  k_pushi 2
  k_pushi 3
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $CCDE
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $00CF
  k_pushi 2
  k_pushi 4
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $CD5E
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $00D3
  k_pushi 2
  k_pushi 5
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $CDDE
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $00D7
  k_pushi 2
  k_pushi 6
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_ldlarg 15
  k_ldri 9
  k_shl
  k_addliw $CE5E
  k_pushl
  k_pushiw $00FF
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $00DB
  k_pushi 2
  k_pushi 7
  k_pushib 55
  k_callx RL_21BE, 20
  k_return
RL_5993:
  k_ldli 6
  k_jump RL_58CC
RL_5997:
  k_ldli 4
  k_jump RL_58CC
RL_599B:
  k_ldli 2
  k_jump RL_58CC
RL_599F:
  k_ldli 1
  k_jump RL_58CC
RF_59A3:
  k_func 0
  k_ldlarg 11
  k_ldriw $8FDB
  k_add
  k_derefb
  k_return
RF_59AF:
  k_func 47
  k_call RF_5843
  k_ldlarg 11
  k_ldri 3
  k_umod
  k_stln -29
  k_ldlarg 13
  k_ldri 3
  k_umod
  k_stln -33
  k_ldlarg 11
  k_ldri 3
  k_udiv
  k_stln -31
  k_ldlarg 13
  k_ldri 3
  k_udiv
  k_stln -35
  k_ldlarg 13
  k_ldri 6
  k_udiv
  k_ldriw $8FDE
  k_add
  k_derefb
  k_stln -39
  k_ldlba $F274
  k_ldrn -39
  k_ne
  k_jumpf RL_59F5
  k_ldlba $F193
  k_jumpt RL_59F0
  k_pushi 1
  k_pushn -39
  k_callx RF_59A3, 2
  k_pushl
  k_callx RF_21EA, 4
RL_59F0:
  k_ldln -39
  k_stlba $F274
RL_59F5:
  k_ldln -35
  k_stln -43
  k_ldln -43
  k_ldri 6
  k_lt
  k_jumpf RL_5A07
  k_ldli 5
  k_ldrn -43
  k_sub
  k_jump RL_5A0B
RL_5A07:
  k_ldln -43
  k_addlib -6
RL_5A0B:
  k_stln -43
  k_ldln -43
  k_ldri 4
  k_lt
  k_jumpf RL_5A1B
  k_ldln -43
  k_ldri 2
  k_sdiv
  k_jump RL_5A1F
RL_5A1B:
  k_ldln -43
  k_addlib -2
RL_5A1F:
  k_stln -43
  k_ldlba $F164
  k_ldrn -43
  k_ne
  k_jumpf RL_5A2F
  k_ldln -43
  k_stlba $F164
RL_5A2F:
  k_ldlba $F165
  k_ldrn -31
  k_ne
  k_jumpt RL_5A41
  k_ldlba $F166
  k_ldrn -35
  k_ne
  k_jumpf RL_5A53
RL_5A41:
  k_pushn -35
  k_pushn -31
  k_callx RF_54D9, 4
  k_ldln -31
  k_stlba $F165
  k_ldln -35
  k_stlba $F166
RL_5A53:
  k_ldlba $F167
  k_ldrn -29
  k_ne
  k_jumpt RL_5A69
  k_ldlba $F168
  k_ldrn -33
  k_ne
  k_jumpt RL_5A69
  k_ldli 0
  k_jump RL_5A6A
RL_5A69:
  k_ldli 1
RL_5A6A:
  k_stln -47
  k_ldln -47
  k_jumpf RL_5ABF
  k_pushi 4
  k_pushib 22
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushn -33
  k_pushn -29
  k_callx RF_513C, 4
  k_ldln -29
  k_stlba $F167
  k_ldln -33
  k_stlba $F168
  k_ldlba $EF86
  k_ldri 6
  k_shr
  k_ldri 7
  k_and
  k_stln -41
  k_pushi 2
  k_pushib 16
  k_ldln -41
  k_ldri 9
  k_shl
  k_addliw $BEDE
  k_pushl
  k_pushib 16
  k_pushiw $00BF
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 2
  k_pushib 16
  k_ldln -41
  k_ldri 9
  k_shl
  k_addliw $CEDE
  k_pushl
  k_pushib 16
  k_pushiw $00CF
  k_pushi 11
  k_callx RL_21BE, 12
RL_5ABF:
  k_leal -21
  k_pushl
  k_pusharg 13
  k_pusharg 11
  k_callx RL_87E0, 6
  k_stlba $EF81
  k_jumpf RL_5B58
  k_ldli 0
  k_stln -37
  k_leal -21
  k_stln -23
  k_pushl
  k_ldlba $EF81
  k_popr
  k_add
  k_stln -25
  k_jump RL_5B4B
RL_5AE2:
  k_ldln -23
  k_derefb
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpf RL_5B36
  k_ldln -23
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -45
  k_ldln -47
  k_jumpf RL_5B1B
  k_ldln -45
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldln -45
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx RF_53F5, 4
  k_jump RL_5B46
RL_5B1B:
  k_ldln -45
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldln -45
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx RF_554A, 4
  k_jump RL_5B46
RL_5B36:
  k_ldln -37
  k_ldriw $EF6D
  k_add
  k_pushl
  k_ldln -23
  k_derefb
  k_popstoreb
  k_ldln -37
  k_inc
  k_stln -37
RL_5B46:
  k_ldln -23
  k_inc
  k_stln -23
RL_5B4B:
  k_ldln -23
  k_ldrn -25
  k_ult
  k_jumpt RL_5AE2
  k_ldln -37
  k_stlba $EF81
RL_5B58:
  k_ldln -47
  k_jumpf RL_5B89
  k_call RF_586A
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_5BBB, 2
  k_call RF_53BB
  k_ldlba $F193
  k_jumpt RL_5B89
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_callx RF_58B6, 6
  k_pushn -41
  k_ldlba $EF86
  k_ldri 3
  k_shr
  k_ldri 3
  k_and
  k_pushl
  k_pushi 1
  k_callx RF_58B6, 6
RL_5B89:
  k_leal -21
  k_pushl
  k_pusharg 13
  k_pusharg 11
  k_callx RL_8560, 6
  k_stln -27
  k_jumpf RL_5BBA
  k_leal -21
  k_stln -23
  k_ldrn -27
  k_add
  k_stln -25
  k_jump RL_5BB2
RL_5BA5:
  k_ldln -23
  k_derefb
  k_pushl
  k_callx RF_57CD, 2
  k_ldln -23
  k_inc
  k_stln -23
RL_5BB2:
  k_ldln -23
  k_ldrn -25
  k_ult
  k_jumpt RL_5BA5
RL_5BBA:
  k_return
RF_5BBB:
  k_func 2
  k_ldlarg 11
  k_ldri 6
  k_umod
  k_ldriw $9154
  k_add
  k_derefb
  k_stl -2
  k_pushi 0
  k_ldl -2
  k_ldri 5
  k_shl
  k_pushl
  k_ldlba $F164
  k_ldri 7
  k_shl
  k_popr
  k_add
  k_ldriw $22D0
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 32
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_return
RF_5BF4:
  k_func 0
  k_pushi 0
  k_pushi 1
  k_pushi 8
  k_pushib 18
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_5C0A
  k_ldli 3
  k_jump RL_5C0C
RL_5C0A:
  k_ldlib 19
RL_5C0C:
  k_pushl
  k_pushi 7
  k_callx RF_50D1, 12
  k_return
RF_5C13:
  k_func 2
  k_ldlarg 11
  k_dec
  k_stlarg 11
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_5C27
  k_ldli 3
  k_jump RL_5C29
RL_5C27:
  k_ldlib 19
RL_5C29:
  k_stl -2
  k_ldlarg 11
  k_shl1
  k_ldr -2
  k_add
  k_inc
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $915A
  k_callx RF_2FB9, 4
  k_return
RF_5C3E:
  k_func 0
  k_call RF_5BF4
  k_pushi 1
  k_callx RF_5C13, 2
  k_return
RF_5C4C:
  k_func 0
  k_call RF_5BF4
  k_pushi 2
  k_callx RF_5C13, 2
  k_return
RF_5C5A:
  k_func 4
  k_ldli 2
  k_stlba $F28F
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_5C6F
  k_ldli 3
  k_jump RL_5C71
RL_5C6F:
  k_ldlib 19
RL_5C71:
  k_stl -4
  k_pusharg 13
  k_pusharg 11
  k_ldl -4
  k_inc
  k_pushl
  k_pushib 25
  k_callx RF_4E29, 8
  k_call RF_5BF4
  k_ldl -4
  k_inc
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $9164
  k_callx RF_2FB9, 4
  k_return
RF_5C91:
  k_func 0
  k_pushi 0
  k_call RF_430C
  k_pushl
  k_callx RF_5C5A, 4
  k_return
RF_5CA0:
  k_func 0
  k_pusha $F280
  k_ldlarg 15
  k_shl1
  k_ldriw $916B
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldli 2
  k_swap
  k_ldlarg 11
  k_add
  k_stlarg 11
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_ldlarg 17
  k_ldri 10
  k_umod
  k_stlarg 17
  k_pusha $F280
  k_ldlarg 17
  k_shl1
  k_ldriw $917B
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
RF_5CDA:
  k_func 2
  k_ldlba $EF83
  k_stl -2
  k_pusha $F280
  k_pushiw $BC8A
  k_pushi 8
  k_pushi 5
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldli 2
  k_swap
  k_ldlarg 13
  k_add
  k_stlarg 13
  k_ldl -2
  k_jumpf RL_5D09
  k_push -2
  k_ldlba $EF82
  k_pushl
  k_pusharg 13
  k_pusharg 11
  k_callx RF_5CA0, 8
RL_5D09:
  k_ldlba $EF86
  k_ldri 3
  k_shr
  k_ldri 3
  k_and
  k_stl -2
  k_ldli 3
  k_swap
  k_ldlarg 13
  k_add
  k_stlarg 13
  k_ldl -2
  k_jumpf RL_5D29
  k_push -2
  k_ldlba $EF86
  k_ldri 6
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_pusharg 13
  k_pusharg 11
  k_callx RF_5CA0, 8
RL_5D29:
  k_return
RF_5D2A:
  k_func 25
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -11
  k_ldli 0
  k_stln -17
  k_stln -15
  k_stln -13
  k_leal -5
  k_stln -7
  k_ldrn -11
  k_add
  k_stln -9
  k_jump RL_5D8A
RL_5D4E:
  k_ldln -7
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -23
  k_ldln -7
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -25
  k_ldln -23
  k_addlib 18
  k_deref
  k_swap
  k_ldln -15
  k_add
  k_stln -15
  k_ldln -23
  k_addlib 16
  k_deref
  k_swap
  k_ldln -17
  k_add
  k_stln -17
  k_ldln -25
  k_addli 4
  k_deref
  k_swap
  k_ldln -13
  k_add
  k_stln -13
  k_ldln -7
  k_inc
  k_stln -7
RL_5D8A:
  k_ldln -7
  k_ldrn -9
  k_ult
  k_jumpt RL_5D4E
  k_ldlba $E99A
  k_long $26
  k_long $14
  k_ldln -13
  k_long $26
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stln -19
  k_ldlba $E99B
  k_long $26
  k_long $14
  k_ldln -13
  k_long $26
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stln -21
  k_ldln -19
  k_inc
  k_pushl
  k_ldln -15
  k_popr
  k_udiv
  k_stln -19
  k_ldln -21
  k_inc
  k_pushl
  k_ldln -17
  k_popr
  k_udiv
  k_stln -21
  k_pushiw $03E8
  k_pushn -19
  k_callx RL_8962, 4
  k_stln -19
  k_pushiw $03E8
  k_pushn -21
  k_callx RL_8962, 4
  k_stln -21
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4B2A, 6
  k_pusharg 13
  k_ldlarg 11
  k_addli 3
  k_pushl
  k_callx RF_2F8F, 4
  k_pushn -19
  k_pushiw $9196
  k_callx RF_3608, 4
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 11
  k_addli 3
  k_pushl
  k_callx RF_2F8F, 4
  k_pusha $918F
  k_pushiw $9199
  k_callx RF_3608, 4
  k_pushi 0
  k_ldlarg 13
  k_addli 3
  k_pushl
  k_pusharg 11
  k_callx RF_4B2A, 6
  k_ldlarg 13
  k_addli 3
  k_pushl
  k_ldlarg 11
  k_addli 3
  k_pushl
  k_callx RF_2F8F, 4
  k_pushn -21
  k_pushiw $919C
  k_callx RF_3608, 4
  k_ldlarg 13
  k_addli 4
  k_pushl
  k_ldlarg 11
  k_addli 3
  k_pushl
  k_callx RF_2F8F, 4
  k_pusha $918F
  k_pushiw $919F
  k_callx RF_3608, 4
  k_return
RF_5E4F:
  k_func 4
  k_ldli 2
  k_stl -2
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_5E62
  k_ldli 3
  k_jump RL_5E64
RL_5E62:
  k_ldlib 19
RL_5E64:
  k_stl -4
  k_pushi 0
  k_pushiw $91A2
  k_callx RF_2FB9, 4
  k_ldlba $F28F
  k_jumpt RL_5E79
  k_push -4
  k_push -2
  k_callx RF_5CDA, 4
RL_5E79:
  k_ldlba $F28F
  k_jumpf RL_5E87
  k_ldlba $F28F
  k_ldri 2
  k_eq
  k_jumpf RL_5EF6
RL_5E87:
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushib 126
  k_pushiw $8FE4
  k_pushi 8
  k_pushib 23
  k_push -4
  k_ldl -2
  k_addli 5
  k_pushl
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_push -4
  k_ldl -2
  k_addli 6
  k_pushl
  k_callx RF_2F8F, 4
  k_call RF_4AC6
  k_push -4
  k_ldl -2
  k_addli 10
  k_pushl
  k_callx RF_2F8F, 4
  k_call RF_4AF7
  k_push -4
  k_ldl -2
  k_addli 13
  k_pushl
  k_callx RF_2F8F, 4
  k_call RF_4A99
  k_push -4
  k_ldl -2
  k_addlib 19
  k_pushl
  k_callx RF_2F8F, 4
  k_pusha $E998
  k_pushiw $91AC
  k_callx RF_3608, 4
  k_ldl -4
  k_addli 2
  k_pushl
  k_ldl -2
  k_addlib 19
  k_pushl
  k_callx RF_5D2A, 4
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F291
  k_stlba $F290
  k_ldlib -1
  k_stla $F295
  k_jump RL_5F0A
RL_5EF6:
  k_call RF_4DD8
  k_pushiw $2000
  k_pushi 6
  k_pushi 12
  k_ldl -4
  k_inc
  k_pushl
  k_ldl -2
  k_addli 6
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
RL_5F0A:
  k_ldli 1
  k_stlba $F28F
  k_return
RF_5F0F:
  k_func 0
  k_ldli 0
  k_stlba $F28F
  k_call RF_5E4F
  k_return
RF_5F1C:
  k_func 0
  k_pushib 127
  k_pushiw $E000
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 1
  k_callx RF_5375, 14
  k_ldlba $F193
  k_jumpt RL_5F45
  k_pushib 127
  k_pushiw $E800
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_jump RL_5F50
RL_5F45:
  k_pushib 127
  k_pushiw $D800
  k_pushib 28
  k_pushib 28
  k_pushi 1
  k_pushi 2
RL_5F50:
  k_pushi 2
  k_callx RF_5375, 14
  k_return
RF_5F56:
  k_func 0
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx RL_21BE, 6
  k_pushi 0
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushib 127
  k_pushiw $E000
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 1
  k_callx RF_532F, 14
  k_ldlba $F193
  k_jumpt RL_5FA2
  k_pushib 127
  k_pushiw $E800
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_jump RL_5FAD
RL_5FA2:
  k_pushib 127
  k_pushiw $D800
  k_pushib 28
  k_pushib 28
  k_pushi 1
  k_pushi 2
RL_5FAD:
  k_pushi 2
  k_callx RF_532F, 14
  k_call RF_586A
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F291
  k_stlba $F290
  k_ldlib -1
  k_stla $F295
  k_ldli 0
  k_stlba $F28F
  k_return
RF_5FDB:
  k_func 0
  k_ldlba $F28F
  k_jumpf RL_5FFA
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F291
  k_stlba $F290
  k_ldlib -1
  k_stla $F295
  k_call RF_5F56
RL_5FFA:
  k_return
RF_5FFB:
  k_func 10
  k_ldlba $E566
  k_shl1
  k_addli 2
  k_stl -2
  k_ldlba $E567
  k_shl1
  k_inc
  k_stl -4
  k_ldli 0
  k_stl -10
  k_ldlarg 11
  k_ldrarg 15
  k_add
  k_stl -6
  k_ldlarg 13
  k_ldrarg 17
  k_add
  k_stl -8
  k_ldl -2
  k_ldrarg 11
  k_uge
  k_jumpf RL_6048
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpf RL_6048
  k_ldl -4
  k_ldrarg 13
  k_uge
  k_jumpf RL_6048
  k_ldl -4
  k_ldr -8
  k_ult
  k_jumpf RL_6048
  k_ldli 1
  k_stl -10
  k_ldlba $E573
  k_ldrib 32
  k_and
  k_jumpf RL_603F
  k_pushi 4
  k_pushib 18
  k_jump RL_6042
RL_603F:
  k_pushi 4
  k_pushib 22
RL_6042:
  k_pushib 58
  k_callx RL_21BE, 6
RL_6048:
  k_ldl -10
  k_return
RF_604A:
  k_func 6
  k_ldlarg 15
  k_ldrn 19
  k_add
  k_stl -6
  k_ldlarg 15
  k_jump RL_6078
RL_6058:
  k_ldl -6
  k_ldr -2
  k_sub
  k_ldri 5
  k_ugt
  k_jumpf RL_6064
  k_ldli 5
  k_jump RL_6067
RL_6064:
  k_ldl -6
  k_ldr -2
  k_sub
RL_6067:
  k_stl -4
  k_pushn 21
  k_push -4
  k_pusharg 17
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldli 5
  k_swap
  k_ldl -2
  k_add
RL_6078:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt RL_6058
  k_return
RF_6080:
  k_func 0
  k_pushi 0
  k_pushi 0
  k_pushi 8
  k_pushib 25
  k_pushib 20
  k_pushi 7
  k_callx RF_50D1, 12
  k_pushi 1
  k_pushiw $91B4
  k_callx RF_2FB9, 4
  k_return
RF_609A:
  k_func 0
  k_ldlarg 11
  k_shl1
  k_addlib 19
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $91BE
  k_callx RF_2FB9, 4
  k_return
RF_60B2:
  k_func 0
  k_call RF_6080
  k_pushi 1
  k_callx RF_609A, 2
  k_return
RF_60C0:
  k_func 0
  k_call RF_6080
  k_pushi 3
  k_callx RF_609A, 2
  k_return
RF_60CE:
  k_func 0
  k_pushi 0
  k_pushi 0
  k_pushi 8
  k_pushib 25
  k_pushib 20
  k_pushi 7
  k_callx RF_50D1, 12
  k_pusharg 13
  k_pusharg 11
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_pushi 1
  k_callx RF_609A, 2
  k_return
RF_60EE:
  k_func 0
  k_pushi 0
  k_call RF_430C
  k_pushl
  k_callx RF_60CE, 4
  k_return
RF_60FD:
  k_func 2
  k_ldli 3
  k_stl -2
  k_return
RF_6105:
  k_func 0
  k_pushib 24
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $91F5
  k_callx RF_2FB9, 4
  k_return
RF_611A:
  k_func 10
  k_ldliw $00B1
  k_stl -4
  k_ldli 0
  k_jump RL_618A
RL_6127:
  k_ldl -2
  k_switch -36, 29, RL_616C
    .word RL_6169, RL_6193, RL_6169, RL_6199, RL_619F, RL_616C, RL_616C, RL_616C
    .word RL_616C, RL_616C, RL_6169, RL_61A5, RL_6169, RL_61AB, RL_61B1, RL_616C
    .word RL_616C, RL_616C, RL_616C, RL_616C, RL_616C, RL_616C, RL_616C, RL_61B7
    .word RL_616C, RL_61BD, RL_6169, RL_6169, RL_6169
RL_6169:
  k_ldlib 64
RL_616B:
  k_stl -4
RL_616C:
  k_ldl -4
  k_ldriw $00FF
  k_and
  k_stl -10
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_ldl -10
  k_popstoreb
  k_ldl -10
  k_ldrib 64
  k_eq
  k_jumpf RL_6185
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
RL_6185:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_inc
RL_618A:
  k_stl -2
  k_ldl -2
  k_ldrib 64
  k_ule
  k_jumpt RL_6127
  k_return
RL_6193:
  k_ldliw $00D5
  k_jump RL_616B
RL_6199:
  k_ldliw $00D6
  k_jump RL_616B
RL_619F:
  k_ldliw $00D7
  k_jump RL_616B
RL_61A5:
  k_ldliw $00A6
  k_jump RL_616B
RL_61AB:
  k_ldliw $00DD
  k_jump RL_616B
RL_61B1:
  k_ldliw $00A7
  k_jump RL_616B
RL_61B7:
  k_ldliw $00DE
  k_jump RL_616B
RL_61BD:
  k_ldlib 45
  k_jump RL_616B
RF_61C2:
  k_func 10
  k_ldlib 33
  k_stl -4
  k_ldli 0
  k_jump RL_61FE
RL_61CE:
  k_ldl -2
  k_switchn 5
    .word $001A, RL_61E8
    .word $0034, RL_6207
    .word $003E, RL_620C
    .word $003F, RL_6210
    .word $0040, RL_6214
    .word RL_61EB
RL_61E8:
  k_ldlib 65
RL_61EA:
  k_stl -4
RL_61EB:
  k_ldl -4
  k_ldriw $00FF
  k_and
  k_stl -10
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_ldl -10
  k_addlib 32
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_inc
RL_61FE:
  k_stl -2
  k_ldl -2
  k_ldrib 64
  k_ule
  k_jumpt RL_61CE
  k_return
RL_6207:
  k_ldlib 16
  k_jump RL_61EA
RL_620C:
  k_ldli 7
  k_jump RL_61EA
RL_6210:
  k_ldli 13
  k_jump RL_61EA
RL_6214:
  k_ldli 0
  k_jump RL_61EA
RF_6218:
  k_func 0
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_dec
  k_derefb
  k_ldriw $00B3
  k_eq
  k_jumpf RL_622B
  k_ldli 1
  k_return
RL_622B:
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_dec
  k_derefb
  k_ldriw $00B6
  k_uge
  k_jumpf RL_6245
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_dec
  k_derefb
  k_ldriw $00C4
  k_ule
  k_jumpf RL_6245
  k_ldli 1
  k_return
RL_6245:
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_dec
  k_derefb
  k_ldriw $00CA
  k_uge
  k_jumpf RL_625F
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_dec
  k_derefb
  k_ldriw $00CE
  k_ule
  k_jumpf RL_625F
  k_ldli 2
  k_return
RL_625F:
  k_ldli 0
  k_return
RF_6261:
  k_func 4
  k_ldlarg 11
  k_addlib -6
  k_ldri 1
  k_shr
  k_pushl
  k_ldlarg 13
  k_addlib -7
  k_ldri 1
  k_shr
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_inc
  k_stl -2
  k_ldlarg 15
  k_jump RL_628B
RL_627B:
  k_ldl -4
  k_shl1
  k_ldriw $91C8
  k_add
  k_deref
  k_ldr -2
  k_eq
  k_jumpf RL_6289
  k_ldli 1
  k_return
RL_6289:
  k_ldl -4
  k_inc
RL_628B:
  k_stl -4
  k_ldl -4
  k_ldri 9
  k_ule
  k_jumpt RL_627B
  k_ldl -2
  k_ldrib 66
  k_eq
  k_jumpf RL_629B
  k_ldli 2
  k_return
RL_629B:
  k_ldl -2
  k_ldrib 69
  k_eq
  k_jumpf RL_62A4
  k_ldli 3
  k_return
RL_62A4:
  k_ldli 0
  k_return
RF_62A6:
  k_func 4
  k_ldli 1
  k_stl -4
  k_ldlarg 13
  k_ldri 10
  k_ugt
  k_jumpf RL_62B9
  k_pushib 24
  k_pushi 10
  k_jump RL_62BC
RL_62B9:
  k_pushib 24
  k_pushi 13
RL_62BC:
  k_callx RF_2F8F, 4
  k_ldli 0
  k_jump RL_62E4
RL_62C4:
  k_ldlarg 11
  k_ldr -2
  k_add
  k_derefb
  k_jumpt RL_62CD
  k_ldli 0
  k_stl -4
RL_62CD:
  k_ldl -4
  k_jumpf RL_62D8
  k_ldlarg 11
  k_ldr -2
  k_add
  k_derefb
  k_jump RL_62DA
RL_62D8:
  k_ldlib 95
RL_62DA:
  k_pushl
  k_pushiw $91FA
  k_callx RF_3608, 4
  k_ldl -2
  k_inc
RL_62E4:
  k_stl -2
  k_ldlarg 13
  k_addlib -2
  k_pushl
  k_ldl -2
  k_popr
  k_ule
  k_jumpt RL_62C4
  k_return
RF_62F0:
  k_func 0
  k_ldlarg 11
  k_ldri 1
  k_uge
  k_jumpf RL_62FE
  k_ldlarg 11
  k_dec
  k_stlarg 11
RL_62FE:
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldlarg 11
  k_return
RF_6306:
  k_func 2
  k_pushiw $2000
  k_pushi 1
  k_pushib 26
  k_pushib 26
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushib 25
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $9201
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_jumpf RL_6332
  k_ldl -2
  k_return
RL_6332:
  k_pushiw $2000
  k_pushi 1
  k_pushib 26
  k_pushib 26
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldl -2
  k_return
RF_6343:
  k_func 30
  k_ldli 6
  k_stl -2
  k_stl -10
  k_ldli 7
  k_stl -4
  k_stl -12
  k_ldli 2
  k_stl -8
  k_ldli 0
  k_stl -16
  k_stln -28
  k_stln -26
  k_ldli 1
  k_stl -18
  k_ldli 0
  k_stl -22
  k_pusharg 15
  k_pusharg 11
  k_callx RF_62A6, 4
  k_jump RL_6552
RL_6363:
  k_ldli 0
  k_stln -30
  k_ldln -26
  k_ldri 1
  k_ne
  k_jumpf RL_6391
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -12
  k_ldri 3
  k_shl
  k_addlib -5
  k_pushl
  k_ldl -10
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_pushi 0
  k_callx RF_3E5A, 14
  k_pushi 7
  k_push -6
  k_callx RF_3D91, 4
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -6
RL_6391:
  k_ldl -6
  k_switchn 12
    .word $8000, RL_6447
    .word $0010, RL_6422
    .word $0020, RL_6432
    .word $0040, RL_640A
    .word $0080, RL_6442
    .word $0100, RL_6422
    .word $0200, RL_6432
    .word $0400, RL_6412
    .word $0800, RL_63C7
    .word $1000, RL_6457
    .word $2000, RL_640A
    .word $4000, RL_6457
    .word RL_640A
RL_63C7:
  k_ldl -8
  k_swap
  k_ldl -12
  k_sub
  k_stl -12
  k_ldl -12
  k_ldr -4
  k_ult
  k_jumpf RL_63D5
  k_ldlib 19
RL_63D4:
  k_stl -12
RL_63D5:
  k_ldl -12
  k_ldrib 19
  k_eq
  k_jumpf RL_640A
  k_ldl -18
  k_ldri 1
  k_ult
  k_jumpf RL_63EF
  k_ldl -10
  k_ldri 10
  k_uge
  k_jumpf RL_63F9
  k_ldl -10
  k_ldrib 18
  k_ule
  k_jump RL_63F3
RL_63EF:
  k_ldl -10
  k_ldrib 18
  k_eq
RL_63F3:
  k_jumpf RL_63F9
  k_ldlib 16
  k_stl -10
RL_63F9:
  k_ldl -10
  k_ldrib 19
  k_uge
  k_jumpf RL_640A
  k_ldl -10
  k_ldrib 25
  k_ult
  k_jumpf RL_640A
  k_ldlib 22
RL_6409:
  k_stl -10
RL_640A:
  k_ldl -18
  k_jumpf RL_6475
  k_ldli 7
  k_jump RL_6476
RL_6412:
  k_ldl -8
  k_swap
  k_ldl -12
  k_add
  k_stl -12
  k_ldl -12
  k_ldrib 19
  k_ugt
  k_jumpf RL_63D5
  k_ldl -4
  k_jump RL_63D4
RL_6422:
  k_ldl -8
  k_swap
  k_ldl -10
  k_add
  k_stl -10
  k_ldl -10
  k_ldrib 24
  k_ugt
  k_jumpf RL_640A
  k_ldl -2
  k_jump RL_6409
RL_6432:
  k_ldl -8
  k_swap
  k_ldl -10
  k_sub
  k_stl -10
  k_ldl -10
  k_ldr -2
  k_ult
  k_jumpf RL_640A
  k_ldlib 24
  k_jump RL_6409
RL_6442:
  k_ldli 1
  k_stl -16
  k_jump RL_640A
RL_6447:
  k_pusharg 11
  k_push -22
  k_callx RF_62F0, 4
  k_stl -22
  k_pusharg 15
  k_pusharg 11
  k_callx RF_62A6, 4
  k_jump RL_640A
RL_6457:
  k_ldlib 22
  k_stl -10
  k_ldlib 19
  k_stl -12
  k_ldl -22
  k_jumpt RL_6464
  k_pusharg 11
  k_ldli 0
  k_popstoreb
RL_6464:
  k_pushiw $2000
  k_pushi 2
  k_pushib 24
  k_pushib 25
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldl -22
  k_return
RL_6475:
  k_ldli 0
RL_6476:
  k_stl -20
  k_push -20
  k_push -12
  k_push -10
  k_callx RF_6261, 6
  k_stln -26
  k_ldln -26
  k_ldri 1
  k_eq
  k_jumpf RL_6496
  k_ldl -6
  k_ldriw $2000
  k_eq
  k_jumpf RL_6552
  k_ldli 6
  k_stl -10
  k_ldli 7
  k_stl -12
  k_ldli 0
  k_stln -26
RL_6496:
  k_ldl -16
  k_ldri 1
  k_eq
  k_jumpf RL_654F
  k_ldln -26
  k_ldri 2
  k_eq
  k_jumpf RL_64AC
  k_pusharg 11
  k_push -22
  k_callx RF_62F0, 4
  k_jump RL_6541
RL_64AC:
  k_ldln -26
  k_ldri 3
  k_eq
  k_jumpf RL_64CB
  k_ldl -22
  k_jumpt RL_64BA
  k_pusharg 11
  k_ldli 0
  k_popstoreb
RL_64BA:
  k_pushiw $2000
  k_pushi 2
  k_pushib 24
  k_pushib 25
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldl -22
  k_return
RL_64CB:
  k_ldl -10
  k_ldr -2
  k_sub
  k_ldri 1
  k_shr
  k_pushl
  k_ldl -12
  k_ldr -4
  k_sub
  k_ldri 1
  k_shr
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_stl -14
  k_ldlarg 15
  k_addlib -2
  k_pushl
  k_ldl -22
  k_popr
  k_uge
  k_jumpf RL_64E9
  k_ldlarg 15
  k_addlib -2
  k_stl -22
RL_64E9:
  k_ldlarg 11
  k_ldr -22
  k_add
  k_pushl
  k_ldl -18
  k_ldrib 65
  k_mul
  k_ldrarg 13
  k_add
  k_ldr -14
  k_add
  k_derefb
  k_popstoreb
  k_ldl -18
  k_jumpt RL_6533
  k_ldl -14
  k_ldrib 59
  k_eq
  k_jumpt RL_6509
  k_ldl -14
  k_ldrib 60
  k_eq
  k_jumpf RL_6533
RL_6509:
  k_ldl -22
  k_ldri 0
  k_ule
  k_jumpf RL_6515
  k_ldli 1
  k_stln -30
  k_jump RL_6533
RL_6515:
  k_pusharg 11
  k_push -22
  k_callx RF_6218, 4
  k_stln -28
  k_ldln -28
  k_jumpf RL_6530
  k_ldln -28
  k_ldri 1
  k_eq
  k_jumpf RL_6533
  k_ldl -14
  k_ldrib 60
  k_eq
  k_jumpf RL_6533
RL_6530:
  k_ldl -22
  k_dec
  k_stl -22
RL_6533:
  k_ldln -30
  k_jumpt RL_6542
  k_ldlarg 11
  k_ldr -22
  k_add
  k_inc
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -22
  k_inc
RL_6541:
  k_stl -22
RL_6542:
  k_ldli 0
  k_stl -16
  k_ldln -30
  k_jumpt RL_654F
  k_pusharg 15
  k_pusharg 11
  k_callx RF_62A6, 4
RL_654F:
  k_ldli 0
  k_stln -26
RL_6552:
  k_ldli 1
  k_jumpt RL_6363
  k_return
RF_6557:
  k_func 151
  k_pushi 0
  k_pushi 1
  k_callx RF_60FD, 4
  k_ldlbf 11
  k_pushl
  k_pushib 95
  k_pusharg 13
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pusharg 13
  k_ldli 0
  k_popstoreb
  k_pushiw $2000
  k_pushi 15
  k_pushib 22
  k_pushi 6
  k_pushi 5
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $F282
  k_ldlarg 15
  k_ldriw $03DC
  k_mul
  k_ldriw $320E
  k_add
  k_pushl
  k_pushi 13
  k_pushib 19
  k_pushi 7
  k_pushi 7
  k_pushi 3
  k_callx RF_3DF1, 14
  k_leal -130
  k_pushl
  k_callx RF_611A, 2
  k_leal -65
  k_pushl
  k_callx RF_61C2, 2
  k_pusharg 15
  k_ldlbf 11
  k_pushl
  k_leal -130
  k_pushl
  k_pusharg 13
  k_callx RF_6343, 8
  k_stlbf -131
  k_ldlbf -131
  k_return
RF_65BE:
  k_func 0
  k_ldlarg 11
  k_shl1
  k_addlib 19
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $920A
  k_callx RF_2FB9, 4
  k_return
RF_65D6:
  k_func 0
  k_pushi 0
  k_pushi 5
  k_pushi 8
  k_pushib 23
  k_pushib 20
  k_pushi 7
  k_callx RF_50D1, 12
  k_pushi 1
  k_pushiw $9214
  k_callx RF_2FB9, 4
  k_return
RF_65F0:
  k_func 0
  k_pushi 0
  k_call RF_430C
  k_pushl
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_pushi 0
  k_pushi 5
  k_pushi 8
  k_pushib 23
  k_pushib 20
  k_pushi 7
  k_callx RF_50D1, 12
  k_pushi 1
  k_callx RF_65BE, 2
  k_return
RF_6613:
  k_func 0
  k_ldlba $E573
  k_ldri 2
  k_and
  k_jumpf RL_6626
  k_call RF_60EE
  k_jump RL_6629
RL_6626:
  k_call RF_65F0
RL_6629:
  k_return
RF_662A:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpf RL_6641
  k_call RF_60EE
  k_jump RL_666C
RL_6641:
  k_ldlarg 11
  k_jumpf RL_664B
  k_call RF_5C91
  k_jump RL_666C
RL_664B:
  k_pushiw $2000
  k_pushi 6
  k_pushib 16
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_665D
  k_ldli 3
  k_jump RL_665F
RL_665D:
  k_ldlib 19
RL_665F:
  k_inc
  k_pushl
  k_pushi 8
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 1
  k_callx RF_5C13, 2
RL_666C:
  k_return
RF_666D:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpf RL_6686
  k_pusharg 11
  k_callx RF_609A, 2
  k_jump RL_6699
RL_6686:
  k_ldlarg 13
  k_ldri 1
  k_eq
  k_jumpf RL_6694
  k_pusharg 11
  k_callx RF_5C13, 2
  k_jump RL_6699
RL_6694:
  k_pusharg 11
  k_callx RF_65BE, 2
RL_6699:
  k_return
RF_669A:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpf RL_66B1
  k_call RF_6080
  k_jump RL_66BE
RL_66B1:
  k_ldlarg 11
  k_jumpf RL_66BB
  k_call RF_5C91
  k_jump RL_66BE
RL_66BB:
  k_call RF_65D6
RL_66BE:
  k_return
RF_66BF:
  k_func 0
  k_pushi 0
  k_callx RF_669A, 2
  k_pushi 0
  k_pusharg 11
  k_callx RF_666D, 4
  k_return
RF_66D0:
  k_func 0
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9B8
  k_add
  k_deref
  k_ldri 10
  k_sdiv
  k_return
RF_66E1:
  k_func 0
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9BA
  k_add
  k_deref
  k_return
RF_66F0:
  k_func 0
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9B6
  k_add
  k_deref
  k_ldri 10
  k_sdiv
  k_return
RF_6701:
  k_func 32
  k_ldliw $E564
  k_stln -32
  k_ldln -32
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpf RL_6721
  k_pushiw $2000
  k_pushi 14
  k_pushib 30
  k_pushi 6
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
RL_6721:
  k_pushi 1
  k_pushiw $9224
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushi 0
  k_pushi 14
  k_pushib 30
  k_pusharg 15
  k_pusharg 13
  k_callx RF_4F65, 12
  k_pushiw $20FA
  k_pushi 12
  k_pushi 1
  k_ldlarg 15
  k_inc
  k_pushl
  k_ldlarg 13
  k_addlib 20
  k_pushl
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldlarg 15
  k_inc
  k_pushl
  k_ldlarg 13
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $922E
  k_callx RF_2FB9, 4
  k_pusha $F280
  k_pushiw $45EE
  k_pushi 2
  k_pushi 2
  k_ldlarg 15
  k_inc
  k_pushl
  k_ldlarg 13
  k_addlib 16
  k_pushl
  k_pushi 3
  k_callx RF_3DF1, 14
  k_pusharg 11
  k_ldlarg 15
  k_inc
  k_pushl
  k_ldlarg 13
  k_addli 10
  k_pushl
  k_callx RF_4B2A, 6
  k_ldli 0
  k_stln -28
  k_stln -26
  k_ldli 0
  k_stl -2
  k_stl -4
  k_jump RL_6842
RL_6782:
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -30
  k_ldln -30
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_683F
  k_leal -14
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_popstore
  k_leal -14
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_swap
  k_ldln -26
  k_add
  k_stln -26
  k_leal -24
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_push -2
  k_callx RF_4565, 2
  k_popstore
  k_leal -24
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_swap
  k_ldln -28
  k_add
  k_stln -28
  k_ldl -4
  k_shl1
  k_ldrarg 15
  k_add
  k_addli 4
  k_pushl
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_ldln -30
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -4
  k_shl1
  k_ldrarg 15
  k_add
  k_addli 3
  k_pushl
  k_ldlarg 13
  k_addli 9
  k_pushl
  k_callx RF_2F8F, 4
  k_push -2
  k_ldlarg 11
  k_shl1
  k_ldriw $921E
  k_add
  k_deref
  k_callptrn 2
  k_pushl
  k_pushiw $9233
  k_callx RF_3619, 4
  k_ldl -4
  k_shl1
  k_ldrarg 15
  k_add
  k_addli 3
  k_pushl
  k_ldlarg 13
  k_addli 13
  k_pushl
  k_callx RF_2F8F, 4
  k_leal -14
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_leal -24
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_pushiw $9237
  k_callx RF_3619, 6
  k_ldl -4
  k_inc
  k_stl -4
RL_683F:
  k_ldl -2
  k_inc
  k_stl -2
RL_6842:
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt RL_6782
  k_ldlarg 15
  k_addli 9
  k_pushl
  k_ldlarg 13
  k_addlib 21
  k_pushl
  k_callx RF_2F8F, 4
  k_pushiw $923F
  k_callx RF_3619, 2
  k_ldlarg 15
  k_addli 11
  k_pushl
  k_ldlarg 13
  k_addlib 23
  k_pushl
  k_callx RF_2F8F, 4
  k_pushn -28
  k_pushiw $9245
  k_callx RF_3608, 4
  k_ldlarg 15
  k_addli 12
  k_pushl
  k_ldlarg 13
  k_addlib 24
  k_pushl
  k_callx RF_2F8F, 4
  k_pushn -26
  k_pushiw $9248
  k_callx RF_3608, 4
  k_return
RF_6883:
  k_func 18
  k_ldli 0
  k_stl -16
  k_ldli 0
  k_stl -2
  k_stl -4
  k_jump RL_68C3
RL_6890:
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -18
  k_ldl -18
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf RL_68C0
  k_leal -14
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_push -2
  k_callx RF_4565, 2
  k_popstore
  k_leal -14
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_swap
  k_ldl -16
  k_add
  k_stl -16
  k_ldl -4
  k_inc
  k_stl -4
RL_68C0:
  k_ldl -2
  k_inc
  k_stl -2
RL_68C3:
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt RL_6890
  k_pushi 1
  k_pushiw $9253
  k_callx RF_2FB9, 4
  k_ldlarg 15
  k_shl1
  k_ldrn 19
  k_add
  k_addli 3
  k_pushl
  k_ldlarg 17
  k_addli 9
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 13
  k_ldlarg 11
  k_shl1
  k_ldriw $924D
  k_add
  k_deref
  k_callptrn 2
  k_pushl
  k_pushiw $925D
  k_callx RF_3619, 4
  k_ldlarg 15
  k_shl1
  k_ldrn 19
  k_add
  k_addli 3
  k_pushl
  k_ldlarg 17
  k_addli 13
  k_pushl
  k_callx RF_2F8F, 4
  k_leal -14
  k_pushl
  k_ldlarg 15
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_pushiw $9261
  k_callx RF_3619, 4
  k_ldln 19
  k_addli 11
  k_pushl
  k_ldlarg 17
  k_addlib 23
  k_pushl
  k_callx RF_2F8F, 4
  k_push -16
  k_pushiw $9265
  k_callx RF_3608, 4
  k_return
RF_6925:
  k_func 6
  k_ldli 0
  k_stl -6
  k_pusharg 11
  k_callx RF_4565, 2
  k_pushl
  k_pusharg 11
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_popr
  k_sub
  k_stl -2
  k_ldl -2
  k_jumpt RL_6954
  k_pushi 1
  k_pushi 1
  k_callx RF_666D, 4
  k_pushiw $9268
  k_callx RF_4B44, 2
  k_ldl -6
  k_return
RL_6954:
  k_pushi 1
  k_pushi 1
  k_callx RF_666D, 4
  k_pushi 1
  k_push -2
  k_pushi 0
  k_pushiw $9279
  k_callx RF_3C4E, 8
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpt RL_6970
  k_ldl -4
  k_jumpt RL_6972
RL_6970:
  k_ldli 0
  k_return
RL_6972:
  k_ldl -4
  k_ldrib -1
  k_ne
  k_jumpf RL_6993
  k_ldl -4
  k_ldri 10
  k_mul
  k_pushl
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9B8
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_6883, 10
RL_6993:
  k_ldl -6
  k_return
RF_6995:
  k_func 8
  k_ldli 1
  k_stl -8
  k_pusharg 17
  k_pusharg 15
  k_pushi 1
  k_callx RF_6701, 6
  k_ldli 0
  k_stl -2
RL_69A5:
  k_push -8
  k_callx RF_662A, 2
  k_ldli 0
  k_stl -8
  k_pushi 1
  k_pushiw $9288
  k_callx RF_2FB9, 4
  k_pusharg 11
  k_pushi 2
  k_ldlarg 17
  k_addli 4
  k_pushl
  k_ldlarg 15
  k_inc
  k_pushl
  k_callx RF_490C, 8
  k_stl -4
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpf RL_69EE
  k_ldlarg 13
  k_ldr -4
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9B8
  k_add
  k_deref
  k_stl -6
  k_pushi 1
  k_callx RF_669A, 2
  k_pushi 1
  k_pushi 1
  k_callx RF_666D, 4
  k_pusharg 17
  k_pusharg 15
  k_push -4
  k_ldlarg 13
  k_ldr -4
  k_add
  k_derefb
  k_pushl
  k_callx RF_6925, 8
  k_stl -2
RL_69EE:
  k_ldl -4
  k_ldriw $00FF
  k_eq
  k_jumpt RL_69FC
  k_ldl -2
  k_ldri 1
  k_eq
  k_jumpf RL_69A5
RL_69FC:
  k_return
RF_69FD:
  k_func 0
  k_pusharg 11
  k_callx RF_40A5, 2
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_return
RF_6A0E:
  k_func 0
  k_pusharg 11
  k_callx RF_69FD, 2
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_pushl
  k_pushiw $929C
  k_callx RF_3619, 6
  k_return
RF_6A2A:
  k_func 16
  k_pusharg 17
  k_callx RF_69FD, 2
  k_pushl
  k_ldlarg 11
  k_deref
  k_pushl
  k_ldlarg 17
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stl -2
  k_pushi 1
  k_callx RF_669A, 2
  k_pushi 1
  k_pushi 1
  k_callx RF_666D, 4
  k_pushi 1
  k_push -2
  k_pushi 0
  k_pushiw $92A4
  k_callx RF_3C4E, 8
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf RL_6A66
  k_return
RL_6A66:
  k_ldlarg 17
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_stl -6
  k_ldlarg 17
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -16
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpf RL_6AE2
  k_ldl -16
  k_addlib 22
  k_derefb
  k_long $26
  k_long $14
  k_ldl -4
  k_long $26
  k_long $14
  k_ldl -6
  k_long $25
  k_long $15
  k_long $04
  k_long $15
  k_long $01
  k_longw $0E, $FFF6
  k_ldlarg 11
  k_deref
  k_long $25
  k_long $14
  k_ldlarg 13
  k_deref
  k_long $26
  k_long $15
  k_long $01
  k_longw $0E, $FFF2
  k_pusharg 13
  k_ldlarg 11
  k_deref
  k_long $25
  k_long $14
  k_ldl -4
  k_long $26
  k_long $14
  k_ldl -6
  k_long $25
  k_long $15
  k_long $04
  k_long $15
  k_long $03
  k_long $14
  k_longw $0C, $FFF6
  k_longw $0D, $FFF2
  k_long $03
  k_long $15
  k_long $02
  k_long $27
  k_popstore
  k_ldl -6
  k_ldr -4
  k_sub
  k_pushl
  k_ldlarg 11
  k_popr
  k_pushl
  k_deref
  k_add
  k_jump RL_6B32
RL_6AE2:
  k_ldl -6
  k_long $25
  k_long $14
  k_ldl -16
  k_addlib 22
  k_derefb
  k_long $26
  k_long $15
  k_long $01
  k_longw $0E, $FFF6
  k_ldlarg 13
  k_deref
  k_long $26
  k_long $14
  k_ldl -6
  k_long $25
  k_long $14
  k_ldl -4
  k_long $26
  k_long $15
  k_long $04
  k_long $15
  k_long $01
  k_longw $0E, $FFF2
  k_ldl -16
  k_addlib 22
  k_pushl
  k_ldl -4
  k_long $26
  k_long $14
  k_longw $0C, $FFF2
  k_longw $0D, $FFF6
  k_long $03
  k_long $15
  k_long $02
  k_long $27
  k_popstoreb
  k_ldl -4
  k_ldr -6
  k_sub
  k_pushl
  k_ldlarg 11
  k_popr
  k_pushl
  k_deref
  k_sub
RL_6B32:
  k_popstore
  k_ldlarg 17
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_pushl
  k_ldl -4
  k_popstore
  k_pushi 1
  k_pushiw $92B2
  k_callx RF_2FB9, 4
  k_ldlarg 15
  k_shl1
  k_ldrn 21
  k_add
  k_pushl
  k_ldln 19
  k_addli 8
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 17
  k_callx RF_6A0E, 2
  k_ldlba $E573
  k_ldri 2
  k_and
  k_jumpf RL_6B66
  k_ldln 21
  k_addli 10
  k_jump RL_6B6C
RL_6B66:
  k_ldln 23
  k_shl1
  k_ldrn 21
  k_add
RL_6B6C:
  k_pushl
  k_ldln 19
  k_addli 5
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_deref
  k_pushl
  k_pushiw $92B6
  k_callx RF_3619, 4
  k_return
RF_6B80:
  k_func 6
  k_ldlarg 11
  k_stl -4
  k_ldliw $E564
  k_stl -6
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpf RL_6B95
  k_ldli 5
  k_stl -4
RL_6B95:
  k_ldlarg 17
  k_ldriw $00FF
  k_eq
  k_jumpf RL_6B9F
  k_ldli 0
  k_stlarg 17
RL_6B9F:
  k_pushi 0
  k_pushi 0
  k_ldl -4
  k_shl1
  k_addli 4
  k_pushl
  k_pushib 18
  k_ldln 21
  k_dec
  k_pushl
  k_ldln 19
  k_addlib -2
  k_pushl
  k_callx RF_4F65, 12
  k_ldli 0
  k_jump RL_6C00
RL_6BB8:
  k_ldl -2
  k_shl1
  k_ldrn 21
  k_add
  k_pushl
  k_ldln 19
  k_addli 8
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 13
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_callx RF_6A0E, 2
  k_ldl -2
  k_shl1
  k_ldrarg 15
  k_add
  k_pushl
  k_ldlarg 13
  k_ldr -2
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
  k_popstore
  k_ldl -2
  k_shl1
  k_ldrn 21
  k_add
  k_inc
  k_pushl
  k_pushn 19
  k_callx RF_2F8F, 4
  k_ldl -2
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_inc
RL_6C00:
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_ult
  k_jumpt RL_6BB8
  k_ldl -4
  k_shl1
  k_ldrn 21
  k_add
  k_pushl
  k_ldln 19
  k_addli 5
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 17
  k_pushiw $92BF
  k_callx RF_3619, 4
  k_return
RF_6C1E:
  k_func 45
  k_ldli 1
  k_stln -45
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -21
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_leal -15
  k_pushl
  k_leal -5
  k_pushl
  k_pushn -21
  k_callx RF_6B80, 12
  k_ldli 0
  k_jump RL_6C64
RL_6C46:
  k_leal -37
  k_pushl
  k_ldln -17
  k_shl1
  k_popr
  k_add
  k_pushl
  k_leal -5
  k_pushl
  k_ldln -17
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_popstore
  k_ldln -17
  k_inc
RL_6C64:
  k_stln -17
  k_ldln -17
  k_ldrn -21
  k_ult
  k_jumpt RL_6C46
  k_ldli 1
  k_stln -39
  k_ldlarg 11
  k_ldriw $00FF
  k_eq
  k_jumpf RL_6C7D
  k_ldli 0
  k_jump RL_6C7E
RL_6C7D:
  k_ldlarg 11
RL_6C7E:
  k_stln -27
  k_ldlib 90
  k_stln -25
RL_6C84:
  k_pushn -45
  k_callx RF_662A, 2
  k_ldli 0
  k_stln -45
  k_pushi 1
  k_pushiw $92C8
  k_callx RF_2FB9, 4
  k_pushn -21
  k_pushi 2
  k_ldlarg 15
  k_inc
  k_pushl
  k_ldlarg 13
  k_dec
  k_pushl
  k_callx RF_490C, 8
  k_stln -19
  k_ldln -19
  k_ldriw $00FF
  k_ne
  k_jumpf RL_6CCC
  k_pushn -21
  k_pusharg 15
  k_pusharg 13
  k_leal -5
  k_pushl
  k_ldln -19
  k_popr
  k_add
  k_derefb
  k_pushl
  k_pushn -19
  k_leal -25
  k_pushl
  k_leal -27
  k_pushl
  k_callx RF_6A2A, 14
  k_jump RL_6D72
RL_6CCC:
  k_pushi 1
  k_callx RF_669A, 2
  k_ldln -27
  k_jumpf RL_6D56
  k_pushi 1
  k_pushi 2
  k_callx RF_666D, 4
  k_pushi 1
  k_pushiw $92D4
  k_callx RF_2FB9, 4
  k_ldlba $F28C
  k_jumpt RL_6CEF
  k_ldlib 21
  k_jump RL_6CFD
RL_6CEF:
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf RL_6CFB
  k_ldli 4
  k_jump RL_6CFD
RL_6CFB:
  k_ldlib 20
RL_6CFD:
  k_stln -23
  k_pushn -23
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $92F0
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 1
  k_pushi 1
  k_pushi 8
  k_ldln -23
  k_inc
  k_pushl
  k_pushi 8
  k_pushi 2
  k_pushiw $92FD
  k_callx RF_3787, 16
  k_stln -43
  k_ldln -43
  k_ldrib -1
  k_eq
  k_jumpf RL_6D2F
  k_ldliw $00FF
  k_jump RL_6D32
RL_6D2F:
  k_ldln -43
  k_dec
RL_6D32:
  k_stln -19
  k_ldln -19
  k_switchn 3
    .word $0000, RL_6D47
    .word $0001, RL_6D4A
    .word $00FF, RL_6D52
    .word RL_6D72
RL_6D47:
  k_ldli 0
  k_stln -39
RL_6D4A:
  k_ldliw $00FF
RL_6D4D:
  k_stln -19
  k_jump RL_6D72
RL_6D52:
  k_ldli 0
  k_jump RL_6D4D
RL_6D56:
  k_pushi 1
  k_pushi 1
  k_callx RF_666D, 4
  k_pushi 1
  k_pushiw $92FE
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf RL_6D52
  k_ldliw $00FF
  k_stln -19
  k_ldli 1
  k_stln -39
RL_6D72:
  k_ldln -19
  k_ldriw $00FF
  k_ne
  k_jumpt RL_6C84
  k_ldli 1
  k_stln -41
  k_ldln -39
  k_jumpt RL_6DB2
  k_ldli 0
  k_jump RL_6DA5
RL_6D87:
  k_leal -5
  k_pushl
  k_ldln -17
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_pushl
  k_leal -37
  k_pushl
  k_ldln -17
  k_shl1
  k_popr
  k_add
  k_deref
  k_popstore
  k_ldln -17
  k_inc
RL_6DA5:
  k_stln -17
  k_ldln -17
  k_ldrn -21
  k_ult
  k_jumpt RL_6D87
  k_ldli 0
  k_stln -41
RL_6DB2:
  k_ldln -41
  k_return
RF_6DB5:
  k_func 4
  k_ldli 0
  k_stl -2
  k_jump RL_6DD2
RL_6DBF:
  k_ldl -4
  k_shl1
  k_ldrarg 11
  k_add
  k_deref
  k_jumpf RL_6DD0
  k_ldl -4
  k_shl1
  k_ldrarg 11
  k_add
  k_deref
  k_swap
  k_ldl -2
  k_add
  k_stl -2
RL_6DD0:
  k_ldl -4
  k_inc
RL_6DD2:
  k_stl -4
  k_ldl -4
  k_ldri 8
  k_lt
  k_jumpt RL_6DBF
  k_ldlarg 11
  k_addlib 16
  k_deref
  k_ldr -2
  k_sub
  k_return
RF_6DE0:
  k_func 0
  k_pushiw $2000
  k_ldlib 16
  k_ldrarg 13
  k_sub
  k_addli 3
  k_pushl
  k_ldlarg 11
  k_addli 13
  k_pushl
  k_pusharg 13
  k_ldlarg 11
  k_ldri 14
  k_mul
  k_addli 2
  k_pushl
  k_pushi 3
  k_callx RF_604A, 12
  k_return
RF_6DFD:
  k_func 18
  k_ldli 3
  k_stl -16
  k_ldli 3
  k_stl -18
  k_leal -14
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_dec
  k_stl -4
  k_ldli 0
  k_jump RL_6E3D
RL_6E15:
  k_ldl -2
  k_shl1
  k_ldr -18
  k_add
  k_inc
  k_pushl
  k_push -16
  k_callx RF_2F8F, 4
  k_leal -14
  k_pushl
  k_ldl -2
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
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_inc
RL_6E3D:
  k_stl -2
  k_ldl -2
  k_ldr -4
  k_ule
  k_jumpt RL_6E15
RL_6E44:
  k_pushi 0
  k_pushi 1
  k_callx RF_666D, 4
  k_pushi 0
  k_callx RF_669A, 2
  k_pushi 1
  k_pushiw $931F
  k_callx RF_2FB9, 4
  k_ldl -4
  k_inc
  k_pushl
  k_pushi 2
  k_ldl -18
  k_inc
  k_pushl
  k_ldl -16
  k_dec
  k_pushl
  k_callx RF_490C, 8
  k_stl -6
  k_ldl -6
  k_ldriw $00FF
  k_ne
  k_jumpf RL_6EB1
  k_call RF_65D6
  k_pushi 1
  k_callx RF_65BE, 2
  k_pushi 0
  k_pushiw $932F
  k_callx RF_2FB9, 4
  k_leal -14
  k_pushl
  k_ldl -6
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
  k_pushl
  k_callx RF_40DE, 2
  k_pushib 25
  k_pushi 8
  k_callx RF_2F8F, 4
  k_call RF_3CFF
  k_stl -8
  k_ldl -8
  k_jumpf RL_6E44
  k_leal -14
  k_pushl
  k_ldl -6
  k_popr
  k_add
  k_derefb
  k_return
RL_6EB1:
  k_ldliw $00FF
  k_return
RF_6EB5:
  k_func 10
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -10
  k_ldl -10
  k_inc
  k_stl -6
  k_ldl -10
  k_addli 6
  k_stl -8
  k_ldli 3
  k_stl -2
  k_ldli 0
  k_jump RL_6EF0
RL_6ECF:
  k_ldl -4
  k_shl1
  k_ldr -8
  k_add
  k_deref
  k_jumpf RL_6EEE
  k_ldlarg 13
  k_ldr -2
  k_add
  k_pushl
  k_ldl -6
  k_ldr -4
  k_add
  k_derefb
  k_popstoreb
  k_ldl -2
  k_shl1
  k_ldrarg 17
  k_add
  k_pushl
  k_ldl -4
  k_shl1
  k_ldr -8
  k_add
  k_deref
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
RL_6EEE:
  k_ldl -4
  k_inc
RL_6EF0:
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt RL_6ECF
  k_jump RL_6F0C
RL_6EFA:
  k_ldlarg 13
  k_ldr -2
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -2
  k_shl1
  k_ldrarg 17
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
RL_6F0C:
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt RL_6EFA
  k_ldli 0
  k_stl -4
RL_6F14:
  k_ldlarg 13
  k_ldr -4
  k_add
  k_pushl
  k_ldl -4
  k_addlib 26
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt RL_6F14
  k_pusharg 17
  k_ldl -10
  k_addlib 18
  k_deref
  k_ldri 10
  k_sdiv
  k_popstore
  k_ldlarg 17
  k_addli 2
  k_pushl
  k_ldl -10
  k_addlib 16
  k_deref
  k_ldri 10
  k_sdiv
  k_popstore
  k_ldlarg 17
  k_addli 4
  k_pushl
  k_ldl -10
  k_addlib 20
  k_deref
  k_popstore
  k_ldlarg 17
  k_addlib 16
  k_pushl
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
  k_popstore
  k_return
RF_6F5B:
  k_func 0
  k_pushi 0
  k_pushi 3
  k_callx RF_666D, 4
  k_pusharg 11
  k_callx RF_6DB5, 2
  k_pushl
  k_pushiw $934B
  k_callx RF_3619, 4
  k_return
RF_6F74:
  k_func 10
  k_ldli 0
  k_stl -10
  k_pushi 1
  k_pushiw $935C
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stl -2
  k_jump RL_6FE9
RL_6F88:
  k_ldlarg 13
  k_ldr -4
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf RL_6FE7
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpf RL_6FB2
  k_ldl -2
  k_shl1
  k_addli 3
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 1
  k_ldl -4
  k_shl1
  k_ldriw $9307
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_jump RL_6FCE
RL_6FB2:
  k_ldl -2
  k_shl1
  k_addli 4
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlarg 13
  k_ldr -4
  k_add
  k_derefb
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
RL_6FCE:
  k_ldl -2
  k_shl1
  k_addli 3
  k_pushl
  k_pushi 12
  k_callx RF_2F8F, 4
  k_ldl -4
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_pushiw $9360
  k_callx RF_3619, 4
  k_ldl -2
  k_inc
  k_stl -2
RL_6FE7:
  k_ldl -4
  k_inc
RL_6FE9:
  k_stl -4
  k_ldl -4
  k_ldri 8
  k_ult
  k_jumpt RL_6F88
  k_ldli 0
  k_stl -6
  k_jump RL_703D
RL_6FF5:
  k_ldl -4
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_jumpf RL_703B
  k_ldli 0
  k_stl -8
RL_6FFF:
  k_ldlarg 13
  k_ldr -8
  k_add
  k_derefb
  k_ldr -4
  k_eq
  k_jumpf RL_700D
  k_ldli 1
  k_stl -10
  k_jump RL_7016
RL_700D:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -8
  k_ldri 8
  k_ult
  k_jumpt RL_6FFF
RL_7016:
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpf RL_7039
  k_ldl -10
  k_jumpt RL_7039
  k_ldl -2
  k_shl1
  k_addli 3
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $9364
  k_callx RF_2FB9, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldli 1
  k_stl -6
  k_jump RL_7045
RL_7039:
  k_ldli 0
  k_stl -10
RL_703B:
  k_ldl -4
  k_inc
RL_703D:
  k_stl -4
  k_ldl -4
  k_ldrib 26
  k_ult
  k_jumpt RL_6FF5
RL_7045:
  k_ldl -2
  k_jump RL_705C
RL_7049:
  k_ldl -4
  k_shl1
  k_addli 3
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $9372
  k_callx RF_2FB9, 4
  k_ldl -4
  k_inc
RL_705C:
  k_stl -4
  k_ldl -4
  k_ldri 8
  k_ult
  k_jumpt RL_7049
  k_pusharg 17
  k_callx RF_6F5B, 2
  k_ldl -2
  k_dec
  k_ldr -6
  k_sub
  k_return
RF_706D:
  k_func 10
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -10
  k_ldl -10
  k_inc
  k_stl -2
  k_ldl -10
  k_addli 6
  k_stl -8
  k_ldli 0
  k_stl -6
RL_7083:
  k_ldl -2
  k_ldr -6
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -6
  k_shl1
  k_ldr -8
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 5
  k_ult
  k_jumpt RL_7083
  k_ldli 0
  k_stl -4
  k_ldli 3
  k_jump RL_70C5
RL_70A1:
  k_ldlarg 13
  k_ldr -6
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf RL_70C3
  k_ldl -2
  k_ldr -4
  k_add
  k_pushl
  k_ldlarg 13
  k_ldr -6
  k_add
  k_derefb
  k_popstoreb
  k_ldl -4
  k_shl1
  k_ldr -8
  k_add
  k_pushl
  k_ldl -6
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_popstore
  k_ldl -4
  k_inc
  k_stl -4
RL_70C3:
  k_ldl -6
  k_inc
RL_70C5:
  k_stl -6
  k_ldl -6
  k_ldri 8
  k_ult
  k_jumpt RL_70A1
  k_ldl -10
  k_addlib 18
  k_pushl
  k_ldlarg 17
  k_deref
  k_ldri 10
  k_mul
  k_popstore
  k_ldl -10
  k_addlib 16
  k_pushl
  k_ldlarg 17
  k_addli 2
  k_deref
  k_ldri 10
  k_mul
  k_popstore
  k_ldl -10
  k_addlib 20
  k_pushl
  k_ldlarg 17
  k_addli 4
  k_deref
  k_popstore
  k_return
RF_70E8:
  k_func 6
  k_ldli 0
  k_stl -2
  k_ldli 3
  k_stl -6
  k_jump RL_7127
RL_70F4:
  k_ldl -2
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_jumpf RL_7124
  k_ldli 0
  k_stl -4
RL_70FE:
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf RL_711B
  k_ldlarg 11
  k_ldr -4
  k_add
  k_derefb
  k_ldr -2
  k_eq
  k_jumpf RL_711B
  k_ldlarg 13
  k_ldr -6
  k_add
  k_pushl
  k_ldl -2
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
RL_711B:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 8
  k_ult
  k_jumpt RL_70FE
RL_7124:
  k_ldl -2
  k_inc
  k_stl -2
RL_7127:
  k_ldl -2
  k_ldrib 26
  k_ult
  k_jumpt RL_70F4
  k_ldl -6
  k_jump RL_713C
RL_7132:
  k_ldlarg 13
  k_ldr -2
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -2
  k_inc
RL_713C:
  k_stl -2
  k_ldl -2
  k_ldrib 29
  k_ult
  k_jumpt RL_7132
  k_ldlib 26
  k_stl -2
RL_7147:
  k_ldlarg 13
  k_ldr -2
  k_add
  k_addlib -26
  k_pushl
  k_ldl -2
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 29
  k_ult
  k_jumpt RL_7147
  k_ldl -6
  k_dec
  k_return
RF_715C:
  k_func 8
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_stl -8
  k_jump RL_71AB
RL_716A:
  k_ldl -4
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_jumpf RL_71A8
  k_ldli 0
  k_stl -6
RL_7174:
  k_ldlarg 11
  k_ldr -6
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf RL_718D
  k_ldlarg 11
  k_ldr -6
  k_add
  k_derefb
  k_ldr -4
  k_eq
  k_jumpf RL_718D
  k_ldli 1
  k_stl -2
  k_jump RL_7196
RL_718D:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 8
  k_ult
  k_jumpt RL_7174
RL_7196:
  k_ldl -2
  k_jumpt RL_71A6
  k_ldlarg 13
  k_ldr -8
  k_add
  k_pushl
  k_ldl -4
  k_popstoreb
  k_ldl -8
  k_inc
  k_stl -8
  k_jump RL_71A8
RL_71A6:
  k_ldli 0
  k_stl -2
RL_71A8:
  k_ldl -4
  k_inc
  k_stl -4
RL_71AB:
  k_ldl -4
  k_ldrib 26
  k_ult
  k_jumpt RL_716A
  k_ldl -8
  k_jump RL_71C0
RL_71B6:
  k_ldlarg 13
  k_ldr -4
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -4
  k_inc
RL_71C0:
  k_stl -4
  k_ldl -4
  k_ldrib 29
  k_ult
  k_jumpt RL_71B6
  k_ldl -8
  k_jumpt RL_71D0
  k_ldliw $00FF
  k_return
RL_71D0:
  k_ldl -8
  k_dec
  k_return
RF_71D3:
  k_func 4
  k_ldli 0
  k_stl -4
  k_pushi 1
  k_pushiw $9379
  k_callx RF_2FB9, 4
  k_ldli 0
  k_jump RL_7242
RL_71E6:
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpf RL_7206
  k_ldl -4
  k_shl1
  k_addli 3
  k_pushl
  k_pushib 17
  k_callx RF_2F8F, 4
  k_pushi 1
  k_ldl -2
  k_shl1
  k_ldriw $9307
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_jump RL_7223
RL_7206:
  k_ldl -4
  k_shl1
  k_addli 4
  k_pushl
  k_pushib 17
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_ldr -2
  k_add
  k_derefb
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
RL_7223:
  k_ldl -4
  k_shl1
  k_addli 3
  k_pushl
  k_pushib 26
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_ldr -2
  k_add
  k_derefb
  k_shl1
  k_ldrarg 13
  k_add
  k_deref
  k_pushl
  k_pushiw $937D
  k_callx RF_3619, 4
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_inc
RL_7242:
  k_stl -2
  k_ldlarg 11
  k_ldr -2
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf RL_7254
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt RL_71E6
RL_7254:
  k_return
RF_7255:
  k_func 6
  k_pushi 3
  k_pushi 1
  k_callx RF_6DE0, 4
  k_pushi 1
  k_pushiw $9381
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stl -6
  k_ldlarg 11
  k_ldri 3
  k_shl
  k_jump RL_72E1
RL_7270:
  k_ldlarg 15
  k_ldr -2
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf RL_72F0
  k_ldli 0
  k_jump RL_7297
RL_727F:
  k_ldlarg 15
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_ldlarg 13
  k_ldr -4
  k_add
  k_derefb
  k_popr
  k_eq
  k_jumpf RL_7295
  k_pushi 1
  k_pushiw $9385
  k_callx RF_2FB9, 4
RL_7295:
  k_ldl -4
  k_inc
RL_7297:
  k_stl -4
  k_ldlarg 13
  k_ldr -4
  k_add
  k_derefb
  k_jumpf RL_72A5
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt RL_727F
RL_72A5:
  k_ldl -6
  k_shl1
  k_addli 4
  k_pushl
  k_pushib 17
  k_callx RF_2F8F, 4
  k_ldlarg 15
  k_ldr -2
  k_add
  k_derefb
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -6
  k_shl1
  k_addli 3
  k_pushl
  k_pushib 26
  k_callx RF_2F8F, 4
  k_ldlarg 15
  k_ldr -2
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_pushiw $9389
  k_callx RF_3619, 4
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -2
  k_inc
RL_72E1:
  k_stl -2
  k_ldl -6
  k_ldri 8
  k_ult
  k_jumpf RL_72EF
  k_ldl -2
  k_ldrib 29
  k_ult
  k_jumpt RL_7270
RL_72EF:
  k_return
RL_72F0:
  k_return
RF_72F1:
  k_func 2
  k_pushi 1
  k_pushiw $938D
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stl -2
RL_7300:
  k_ldlarg 15
  k_ldrarg 11
  k_add
  k_derefb
  k_pushl
  k_ldlarg 13
  k_ldr -2
  k_add
  k_derefb
  k_popr
  k_eq
  k_jumpf RL_7328
  k_ldl -2
  k_shl1
  k_addli 3
  k_pushl
  k_pushib 26
  k_callx RF_2F8F, 4
  k_ldlarg 15
  k_ldrarg 11
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_pushiw $9391
  k_callx RF_3619, 4
RL_7328:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt RL_7300
  k_return
RF_7332:
  k_func 97
  k_ldli 2
  k_stl -2
  k_ldli 4
  k_stl -4
  k_ldli 8
  k_stl -6
  k_ldli 0
  k_stl -16
  k_stln -95
  k_ldli 1
  k_stl -12
  k_ldli 0
  k_stl -24
  k_pushi 3
  k_pushi 1
  k_callx RF_6DE0, 4
  k_pusharg 17
  k_leal -57
  k_pushl
  k_pusharg 15
  k_callx RF_70E8, 6
  k_stl -20
  k_pusharg 17
  k_leal -86
  k_pushl
  k_pusharg 15
  k_callx RF_715C, 6
  k_stl -22
  k_pusharg 17
  k_leal -57
  k_pushl
  k_callx RF_71D3, 4
RL_736A:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -18
  k_ldl -18
  k_ldriw $8000
  k_ne
  k_jumpf RL_7AAB
  k_pushn 19
  k_callx RF_6DB5, 2
  k_stln -93
  k_ldli 8
  k_stl -6
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldln -95
  k_shl1
  k_ldr -4
  k_add
  k_ldri 3
  k_shl
  k_addlib -5
  k_pushl
  k_ldl -2
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_pushi 0
  k_callx RF_3E5A, 14
  k_ldl -18
  k_switchn 6
    .word $0080, RL_773F
    .word $0100, RL_740D
    .word $0200, RL_7618
    .word $0400, RL_73DC
    .word $0800, RL_73BC
    .word $1000, RL_73FB
    .word RL_73FB
RL_73BC:
  k_ldln -95
  k_dec
  k_stln -95
  k_ldri 0
  k_lt
  k_jumpf RL_73FB
  k_ldlarg 11
  k_stln -95
  k_ldl -22
  k_ldriw $00FF
  k_ne
  k_jumpf RL_73FB
  k_ldlarg 11
  k_ldri 7
  k_ult
  k_jumpf RL_73FB
  k_ldlarg 11
  k_inc
  k_jump RL_73F9
RL_73DC:
  k_ldln -95
  k_ldri 7
  k_ge
  k_jumpt RL_73F8
  k_ldl -22
  k_ldriw $00FF
  k_ne
  k_jumpf RL_7404
  k_ldlarg 11
  k_inc
  k_pushl
  k_ldln -95
  k_inc
  k_stln -95
  k_popr
RL_73F4:
  k_ugt
  k_jumpf RL_73FB
RL_73F8:
  k_ldli 0
RL_73F9:
  k_stln -95
RL_73FB:
  k_push -6
  k_push -18
  k_callx RF_3D91, 4
  k_jump RL_736A
RL_7404:
  k_ldln -95
  k_inc
  k_stln -95
  k_ldrarg 11
  k_jump RL_73F4
RL_740D:
  k_ldln -95
  k_ldrarg 11
  k_ugt
  k_jumpt RL_73FB
RL_7414:
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_ldri 0
  k_gt
  k_jumpf RL_7523
  k_ldl -6
  k_ldri 1
  k_eq
  k_jumpf RL_7483
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_ldri 10
  k_gt
  k_jumpf RL_7456
  k_pushi 10
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_pushi 10
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldli 10
  k_swap
  k_ldln -93
  k_add
  k_stln -93
  k_jump RL_749E
RL_7456:
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_pushl
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_swap
  k_ldln -93
  k_add
  k_stln -93
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_pushl
  k_ldli 0
  k_jump RL_749D
RL_7483:
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_pushl
  k_deref
  k_dec
  k_popstore
  k_ldln -93
  k_inc
  k_stln -93
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_pushl
  k_deref
  k_inc
RL_749D:
  k_popstore
RL_749E:
  k_ldli 0
  k_jump RL_74BC
RL_74A2:
  k_leal -57
  k_pushl
  k_ldl -8
  k_popr
  k_add
  k_derefb
  k_pushl
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_popr
  k_eq
  k_jumpf RL_74BA
  k_ldli 0
  k_stl -12
  k_jump RL_74C6
RL_74BA:
  k_ldl -8
  k_inc
RL_74BC:
  k_stl -8
  k_ldl -20
  k_inc
  k_pushl
  k_ldl -8
  k_popr
  k_ult
  k_jumpt RL_74A2
RL_74C6:
  k_ldl -12
  k_jumpf RL_7521
  k_pushi 1
  k_pushiw $9395
  k_callx RF_2FB9, 4
  k_ldl -20
  k_inc
  k_shl1
  k_addli 4
  k_pushl
  k_pushib 17
  k_callx RF_2F8F, 4
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -20
  k_inc
  k_shl1
  k_addli 3
  k_pushl
  k_pushib 26
  k_callx RF_2F8F, 4
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_pushiw $9399
  k_callx RF_3619, 4
  k_leal -56
  k_pushl
  k_ldl -20
  k_popr
  k_add
  k_pushl
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_popstoreb
  k_ldl -20
  k_inc
  k_stl -20
  k_jump RL_7523
RL_7521:
  k_ldli 1
  k_stl -12
RL_7523:
  k_pushi 1
  k_pushiw $939D
  k_callx RF_2FB9, 4
  k_pusharg 17
  k_pusharg 15
  k_leal -57
  k_pushl
  k_pushn -95
  k_callx RF_72F1, 8
  k_ldln -95
  k_shl1
  k_ldr -4
  k_add
  k_dec
  k_pushl
  k_pushi 12
  k_callx RF_2F8F, 4
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_pushl
  k_pushiw $93A1
  k_callx RF_3619, 4
  k_pushi 1
  k_pushiw $93A5
  k_callx RF_2FB9, 4
  k_pushib 25
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushn -93
  k_pushiw $93A9
  k_callx RF_3619, 4
  k_ldli 1
  k_stl -6
  k_ldln -95
  k_ldri 2
  k_gt
  k_jumpf RL_75F9
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_jumpt RL_75F9
  k_pushi 0
  k_callx RF_669A, 2
  k_pushi 0
  k_pushi 1
  k_callx RF_666D, 4
  k_pushi 1
  k_pushiw $93AD
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 0
  k_callx RF_669A, 2
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_pushi 8
  k_callx RL_21BE, 2
  k_ldln -95
  k_ldrarg 11
  k_eq
  k_jumpf RL_75B2
  k_ldln -95
  k_dec
  k_stln -95
RL_75B2:
  k_pusharg 17
  k_leal -57
  k_pushl
  k_pusharg 15
  k_callx RF_70E8, 6
  k_stl -20
  k_pusharg 17
  k_leal -86
  k_pushl
  k_pusharg 15
  k_callx RF_715C, 6
  k_stl -22
  k_pushi 9
  k_pushi 1
  k_callx RF_6DE0, 4
  k_pusharg 17
  k_leal -57
  k_pushl
  k_callx RF_71D3, 4
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_callx RF_706D, 8
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_callx RF_6EB5, 8
  k_pushi 9
  k_pushi 0
  k_callx RF_6DE0, 4
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_callx RF_6F74, 8
  k_stlarg 11
RL_75F9:
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
  k_ldriw $0100
  k_and
  k_pushl
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_ldriw $0100
  k_and
  k_popr
  k_or
  k_jumpt RL_7414
RL_7613:
  k_ldli 8
  k_stl -6
  k_jump RL_73FB
RL_7618:
  k_ldln -95
  k_ldrarg 11
  k_ugt
  k_jumpt RL_73FB
RL_761F:
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_jumpf RL_76E9
  k_ldln -93
  k_jumpf RL_76E9
  k_ldl -6
  k_ldri 1
  k_eq
  k_jumpf RL_76CE
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_ldri 10
  k_gt
  k_jumpf RL_766D
  k_ldln -93
  k_ldri 10
  k_gt
  k_jumpf RL_766D
  k_pushi 10
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_pushi 10
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldli 10
  k_swap
  k_ldln -93
  k_sub
  k_jump RL_76E7
RL_766D:
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_ldrn -93
  k_gt
  k_jumpf RL_769C
  k_pushn -93
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_pushn -93
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldli 0
  k_jump RL_76E7
RL_769C:
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_swap
  k_ldln -93
  k_sub
  k_stln -93
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_jump RL_76E9
RL_76CE:
  k_ldlarg 15
  k_ldrn -95
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_pushl
  k_deref
  k_dec
  k_popstore
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_ldln -93
  k_dec
RL_76E7:
  k_stln -93
RL_76E9:
  k_pusharg 17
  k_pusharg 15
  k_leal -57
  k_pushl
  k_pushn -95
  k_callx RF_72F1, 8
  k_ldln -95
  k_shl1
  k_ldr -4
  k_add
  k_dec
  k_pushl
  k_pushi 12
  k_callx RF_2F8F, 4
  k_ldln -95
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_pushl
  k_pushiw $93C3
  k_callx RF_3619, 4
  k_pushib 25
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushn -93
  k_pushiw $93CA
  k_callx RF_3619, 4
  k_ldli 1
  k_stl -6
  k_pushi 1
  k_pushi 15
  k_callx RL_21BE, 4
  k_ldriw $0200
  k_and
  k_pushl
  k_pushi 0
  k_pushi 15
  k_callx RL_21BE, 4
  k_ldriw $0200
  k_and
  k_popr
  k_or
  k_jumpt RL_761F
  k_jump RL_7613
RL_773F:
  k_ldln -95
  k_ldrarg 11
  k_ugt
  k_jumpf RL_7A82
  k_ldl -22
  k_ldriw $00FF
  k_ne
  k_jumpf RL_7A82
  k_pushn 19
  k_callx RF_6DB5, 2
  k_jumpt RL_7775
  k_pushi 1
  k_callx RF_66BF, 2
  k_pushi 1
  k_pushiw $93D1
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 3
  k_callx RF_66BF, 2
RL_776C:
  k_pushn 19
  k_callx RF_6F5B, 2
  k_jump RL_73FB
RL_7775:
  k_ldli 0
  k_stl -8
RL_7777:
  k_leal -91
  k_pushl
  k_ldl -8
  k_popr
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -8
  k_ldri 5
  k_ult
  k_jumpt RL_7777
  k_ldli 0
  k_stl -14
  k_ldl -22
  k_stln -28
  k_pushi 0
  k_callx RF_669A, 2
  k_pushi 0
  k_pushi 1
  k_callx RF_666D, 4
  k_pushiw $93E6
  k_callx RF_4B44, 2
  k_pushi 3
  k_callx RF_66BF, 2
  k_pushn 19
  k_callx RF_6F5B, 2
  k_ldli 0
  k_stl -24
  k_ldli 0
  k_stln -97
  k_pusharg 17
  k_leal -86
  k_pushl
  k_leal -91
  k_pushl
  k_push -24
  k_callx RF_7255, 8
  k_ldl -22
  k_ldri 3
  k_shr
  k_stln -26
  k_jump RL_7A44
RL_77C9:
  k_push -6
  k_push -18
  k_callx RF_3D91, 4
  k_ldli 8
  k_stl -6
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -24
  k_ldri 3
  k_shl
  k_pushl
  k_ldln -97
  k_popr
  k_sub
  k_shl1
  k_ldr -4
  k_add
  k_ldri 3
  k_shl
  k_addlib -5
  k_pushl
  k_pushib 127
  k_pushi 0
  k_callx RF_3E5A, 14
  k_ldl -18
  k_switchn 5
    .word $0080, RL_7892
    .word $0100, RL_7868
    .word $0200, RL_7849
    .word $0400, RL_782B
    .word $0800, RL_780A
    .word RL_7A44
RL_780A:
  k_ldln -97
  k_dec
  k_stln -97
  k_ldln -97
  k_inc
  k_ldri 8
  k_smod
  k_jumpt RL_7A44
  k_ldl -24
  k_ldri 3
  k_shl
  k_addli 7
  k_pushl
  k_ldl -22
  k_popr
  k_ugt
  k_jumpf RL_788E
  k_ldl -24
  k_ldri 3
  k_shl
  k_addli 7
RL_7826:
  k_stln -97
  k_jump RL_7A44
RL_782B:
  k_ldln -97
  k_inc
  k_stln -97
  k_ldl -24
  k_ldri 3
  k_shl
  k_addli 7
  k_pushl
  k_ldln -97
  k_popr
  k_ugt
  k_jumpt RL_7843
  k_ldln -97
  k_ldr -22
  k_ugt
  k_jumpf RL_7A44
RL_7843:
  k_ldl -24
  k_ldri 3
  k_shl
  k_jump RL_7826
RL_7849:
  k_ldl -24
  k_ldri 0
  k_ugt
  k_jumpf RL_7A44
  k_ldl -24
  k_dec
  k_stl -24
  k_pusharg 17
  k_leal -86
  k_pushl
  k_leal -91
  k_pushl
  k_push -24
  k_callx RF_7255, 8
  k_ldli 8
  k_swap
  k_ldln -97
  k_sub
  k_jump RL_7826
RL_7868:
  k_ldln -26
  k_ldr -24
  k_ugt
  k_jumpf RL_7A44
  k_ldl -24
  k_inc
  k_stl -24
  k_pusharg 17
  k_leal -86
  k_pushl
  k_leal -91
  k_pushl
  k_push -24
  k_callx RF_7255, 8
  k_ldli 8
  k_swap
  k_ldln -97
  k_add
  k_stln -97
  k_ldln -97
  k_ldr -22
  k_ugt
  k_jumpf RL_7A44
RL_788E:
  k_ldl -22
  k_jump RL_7826
RL_7892:
  k_ldli 0
  k_jump RL_78B4
RL_7896:
  k_leal -86
  k_pushl
  k_ldln -97
  k_popr
  k_add
  k_derefb
  k_pushl
  k_leal -91
  k_pushl
  k_ldl -8
  k_popr
  k_add
  k_derefb
  k_popr
  k_eq
  k_jumpf RL_78B2
  k_ldli 1
  k_stl -16
  k_jump RL_78BB
RL_78B2:
  k_ldl -8
  k_inc
RL_78B4:
  k_stl -8
  k_ldl -8
  k_ldr -14
  k_ule
  k_jumpt RL_7896
RL_78BB:
  k_ldln -93
  k_jumpt RL_78E0
  k_pushi 1
  k_callx RF_66BF, 2
  k_pushi 1
  k_pushiw $93F6
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_stl -16
  k_call RF_472D
  k_pushi 3
  k_callx RF_66BF, 2
  k_pushn 19
  k_callx RF_6F5B, 2
RL_78E0:
  k_ldlarg 11
  k_ldri 7
  k_ult
  k_jumpf RL_7A1D
  k_ldl -16
  k_jumpt RL_7A1D
  k_ldln -93
  k_jumpf RL_7A1D
  k_leal -91
  k_pushl
  k_ldl -14
  k_popr
  k_add
  k_pushl
  k_leal -86
  k_pushl
  k_ldln -97
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldl -14
  k_inc
  k_stl -14
  k_pushi 1
  k_pushiw $940B
  k_callx RF_2FB9, 4
  k_ldl -24
  k_ldri 3
  k_shl
  k_pushl
  k_ldln -97
  k_popr
  k_sub
  k_shl1
  k_addli 4
  k_pushl
  k_pushib 17
  k_callx RF_2F8F, 4
  k_leal -86
  k_pushl
  k_ldln -97
  k_popr
  k_add
  k_derefb
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -24
  k_ldri 3
  k_shl
  k_pushl
  k_ldln -97
  k_popr
  k_sub
  k_shl1
  k_addli 3
  k_pushl
  k_pushib 26
  k_callx RF_2F8F, 4
  k_leal -86
  k_pushl
  k_ldln -97
  k_popr
  k_add
  k_derefb
  k_shl1
  k_ldrarg 17
  k_add
  k_pushl
  k_deref
  k_dec
  k_popstore
  k_pushl
  k_pushiw $940F
  k_callx RF_3619, 4
  k_pushi 1
  k_pushiw $9413
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlarg 15
  k_ldrarg 11
  k_add
  k_pushl
  k_leal -86
  k_pushl
  k_ldln -97
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_leal -57
  k_pushl
  k_ldl -20
  k_popr
  k_add
  k_pushl
  k_leal -86
  k_pushl
  k_ldln -97
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_shl1
  k_addli 4
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushiw $2000
  k_pushi 1
  k_pushi 9
  k_ldlarg 11
  k_shl1
  k_addli 4
  k_pushl
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldlarg 15
  k_ldrarg 11
  k_add
  k_derefb
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 11
  k_shl1
  k_addli 3
  k_pushl
  k_pushi 12
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_shl1
  k_ldrn 19
  k_add
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_pushl
  k_pushiw $9417
  k_callx RF_3619, 4
  k_ldlarg 11
  k_ldri 7
  k_ult
  k_jumpf RL_79F3
  k_ldln -28
  k_ldri 0
  k_ugt
  k_jumpf RL_79F3
  k_ldlarg 11
  k_inc
  k_shl1
  k_addli 3
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $941B
  k_callx RF_2FB9, 4
  k_ldln -28
  k_dec
  k_stln -28
RL_79F3:
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_callx RF_706D, 8
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_callx RF_6EB5, 8
  k_ldln -93
  k_dec
  k_stln -93
  k_pushib 25
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushn -93
  k_pushiw $9429
  k_callx RF_3619, 4
  k_jump RL_7A42
RL_7A1D:
  k_ldl -16
  k_jumpt RL_7A42
  k_pushi 0
  k_callx RF_669A, 2
  k_pushi 0
  k_pushi 1
  k_callx RF_666D, 4
  k_pushi 1
  k_pushiw $9430
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 3
  k_callx RF_66BF, 2
  k_pushn 19
  k_callx RF_6F5B, 2
RL_7A42:
  k_ldli 0
  k_stl -16
RL_7A44:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -18
  k_ldl -18
  k_ldriw $8000
  k_ne
  k_jumpt RL_77C9
  k_ldli 0
  k_stl -18
  k_push -6
  k_push -18
  k_callx RF_3D91, 4
  k_pusharg 17
  k_leal -57
  k_pushl
  k_pusharg 15
  k_callx RF_70E8, 6
  k_stl -20
  k_pusharg 17
  k_leal -86
  k_pushl
  k_pusharg 15
  k_callx RF_715C, 6
  k_stl -22
  k_pushi 3
  k_pushi 1
  k_callx RF_6DE0, 4
  k_pusharg 17
  k_leal -57
  k_pushl
  k_callx RF_71D3, 4
  k_jump RL_73FB
RL_7A82:
  k_ldl -22
  k_ldriw $00FF
  k_eq
  k_jumpf RL_73FB
  k_ldln -95
  k_ldrarg 11
  k_ugt
  k_jumpf RL_73FB
  k_pushi 0
  k_callx RF_669A, 2
  k_pushi 0
  k_pushi 1
  k_callx RF_666D, 4
  k_pushiw $9440
  k_callx RF_4B44, 2
  k_pushi 0
  k_callx RF_669A, 2
  k_jump RL_776C
RL_7AAB:
  k_return
RF_7AAC:
  k_func 34
  k_pushi 8
  k_pushiw $00FF
  k_leal -8
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushib 18
  k_pushi 0
  k_leal -34
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_leal -34
  k_pushl
  k_pusharg 13
  k_leal -8
  k_pushl
  k_pusharg 11
  k_callx RF_6EB5, 8
  k_pushi 3
  k_pushi 0
  k_callx RF_6DE0, 4
  k_leal -34
  k_pushl
  k_pusharg 13
  k_leal -8
  k_pushl
  k_pusharg 11
  k_callx RF_6F74, 8
  k_stl -16
  k_leal -34
  k_pushl
  k_pusharg 13
  k_leal -8
  k_pushl
  k_pusharg 11
  k_push -16
  k_callx RF_7332, 10
  k_leal -34
  k_pushl
  k_pusharg 13
  k_leal -8
  k_pushl
  k_pusharg 11
  k_callx RF_706D, 8
  k_return
RF_7B11:
  k_func 2
  k_pushi 2
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $945D
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stl -2
RL_7B26:
  k_pushi 2
  k_ldl -2
  k_ldri 14
  k_mul
  k_addli 12
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $9463
  k_callx RF_2FB9, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 2
  k_ult
  k_jumpt RL_7B26
  k_pushi 2
  k_pushib 17
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $9467
  k_callx RF_2FB9, 4
  k_return
RF_7B51:
  k_func 8
  k_pushiw $2000
  k_pushib 20
  k_pushib 32
  k_pushi 0
  k_pushi 0
  k_pushi 3
  k_callx RF_604A, 12
  k_ldli 0
  k_stl -6
  k_ldliw $E564
  k_stl -8
  k_ldli 0
  k_stlba $F28C
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 0
  k_pushi 2
  k_pushib 19
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_callx RF_4F65, 12
  k_ldl -8
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpt RL_7B91
  k_ldl -8
  k_addli 15
  k_derefb
  k_ldrib 32
  k_and
  k_jumpf RL_7B9D
RL_7B91:
  k_pushib 58
  k_pushi 0
  k_pusharg 11
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
RL_7B9D:
  k_call RF_6613
  k_pushiw $20FA
  k_pushib 16
  k_pushi 1
  k_pushi 3
  k_pushi 15
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
RL_7BAE:
  k_pushiw $2000
  k_pushi 1
  k_pushib 26
  k_pushi 2
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 3
  k_pushi 0
  k_callx RF_6DE0, 4
  k_pushi 1
  k_pushiw $946F
  k_callx RF_2FB9, 4
  k_call RF_6DFD
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf RL_7C1A
  k_ldli 0
  k_stl -4
RL_7BD8:
  k_ldl -4
  k_shl1
  k_ldrarg 11
  k_add
  k_deref
  k_jumpf RL_7BE5
  k_ldli 1
  k_stl -6
  k_jump RL_7BEF
RL_7BE5:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldrib 26
  k_ult
  k_jumpt RL_7BD8
RL_7BEF:
  k_pushi 0
  k_callx RF_669A, 2
  k_pushi 0
  k_pushi 1
  k_callx RF_666D, 4
  k_ldl -6
  k_jumpf RL_7C05
  k_pushi 1
  k_pushiw $9473
  k_jump RL_7C09
RL_7C05:
  k_pushi 1
  k_pushiw $9491
RL_7C09:
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpt RL_7C15
  k_ldli 0
  k_stl -2
RL_7C15:
  k_ldli 0
  k_stl -6
  k_jump RL_7C36
RL_7C1A:
  k_pushi 1
  k_pushiw $949A
  k_callx RF_2FB9, 4
  k_call RF_7B11
  k_pusharg 11
  k_push -2
  k_callx RF_7AAC, 4
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushi 3
  k_pushi 1
  k_callx RF_6DE0, 4
RL_7C36:
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpt RL_7BAE
  k_return
RF_7C3F:
  k_func 2
  k_call RF_49B5
  k_stl -2
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_ldl -2
  k_return
RF_7C5A:
  k_func 0
  k_pushi 0
  k_pushi 1
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 1
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 1
  k_pushi 0
  k_callx RF_3EC3, 6
  k_pushib 16
  k_pushiw $A400
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 127
  k_pushi 0
  k_pushib 53
  k_pushiw $0120
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushib 127
  k_pushiw $0720
  k_pushib 89
  k_pushiw $0160
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushib 127
  k_pushiw $1240
  k_pushib 23
  k_pushiw $01C0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 127
  k_pushiw $06A0
  k_pushi 4
  k_pushiw $0140
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushib 16
  k_pushiw $B1CF
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushib 32
  k_pushiw $0100
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 2
  k_pushib 127
  k_pushiw $0600
  k_pushi 4
  k_pushiw $00E8
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 16
  k_pushiw $B804
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushib 127
  k_pushi 0
  k_pushib 36
  k_pushiw $0100
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushib 127
  k_pushiw $0480
  k_pushi 12
  k_pushiw $0130
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushib 127
  k_pushiw $0600
  k_pushi 4
  k_pushiw $0160
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushi 1
  k_pushib 16
  k_pushiw $DCDE
  k_pushib 96
  k_pushiw $0220
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushi 15
  k_pushiw $8000
  k_pushib 28
  k_pushiw $02A0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushib 16
  k_pushiw $EC9E
  k_pushib 16
  k_pushiw $0280
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 16
  k_pushiw $EA5E
  k_pushib 18
  k_pushiw $0180
  k_pushi 13
  k_callx RL_21BE, 10
  k_return
RF_7D57:
  k_func 2
  k_ldlba $EF6A
  k_jumpt RL_7D63
  k_return
RL_7D63:
  k_pushiw $27FF
  k_pushi 0
  k_pushiw $D800
  k_pushib 127
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushi 1
  k_callx RF_4F48, 2
  k_call RF_3D7C
  k_call RF_7C5A
  k_ldliw $00FF
  k_stlba $F274
  k_ldlib -1
  k_stla $EF66
  k_ldli 0
  k_stlba $EF6A
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 3
  k_derefb
  k_ldri 7
  k_ult
  k_jumpf RL_7D9C
  k_ldli 2
  k_jump RL_7D9D
RL_7D9C:
  k_ldli 1
RL_7D9D:
  k_stlba $F28C
  k_ldl -2
  k_inc
  k_derefb
  k_pushl
  k_ldl -2
  k_derefb
  k_pushl
  k_callx RF_59AF, 4
  k_ldlba $F193
  k_jumpt RL_7DB6
  k_pushi 1
  k_callx RF_4F2A, 2
RL_7DB6:
  k_return
RF_7DB7:
  k_func 0
  k_ldlba $EF6A
  k_ldri 1
  k_ne
  k_jumpf RL_7DCE
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_callx RF_58B6, 6
  k_call RF_4F05
RL_7DCE:
  k_ldli 0
  k_stlba $F28C
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_return
RF_7DD9:
  k_func 0
  k_pushi 1
  k_callx RF_4F48, 2
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_callx RF_58B6, 6
  k_ldli 0
  k_stlba $F28C
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_return
RF_7DF5:
  k_func 2
  k_ldlarg 11
  k_ldri 4
  k_smod
  k_jumpt RL_7E04
  k_ldli 1
  k_jump RL_7E05
RL_7E04:
  k_ldli 0
RL_7E05:
  k_stl -2
  k_ldlarg 11
  k_ldrib 100
  k_smod
  k_jumpt RL_7E15
  k_ldlarg 11
  k_ldriw $0190
  k_smod
  k_jumpt RL_7E1C
RL_7E15:
  k_ldli 0
RL_7E16:
  k_swap
  k_ldl -2
  k_sub
  k_stl -2
  k_ldl -2
  k_return
RL_7E1C:
  k_ldli 1
  k_jump RL_7E16
RF_7E20:
  k_func 2
  k_ldlarg 13
  k_shl1
  k_ldriw $949E
  k_add
  k_deref
  k_stl -2
  k_ldlarg 13
  k_ldri 1
  k_eq
  k_jumpf RL_7E42
  k_ldlarg 11
  k_addliw $05DC
  k_pushl
  k_callx RF_7DF5, 2
  k_jumpf RL_7E42
  k_ldl -2
  k_inc
  k_stl -2
RL_7E42:
  k_ldl -2
  k_return
RF_7E44:
  k_func 15
  k_leal -11
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stl -4
  k_ldli 0
  k_stl -2
  k_leal -11
  k_stln -13
  k_ldr -4
  k_add
  k_stln -15
  k_jump RL_7E75
RL_7E61:
  k_ldln -13
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9BD
  k_add
  k_derefb
  k_swap
  k_ldl -2
  k_add
  k_stl -2
  k_ldln -13
  k_inc
  k_stln -13
RL_7E75:
  k_ldln -13
  k_ldrn -15
  k_ult
  k_jumpt RL_7E61
  k_ldl -2
  k_ldr -4
  k_udiv
  k_inc
  k_stl -2
  k_ldlba $EF86
  k_ldri 7
  k_and
  k_stl -6
  k_ldl -6
  k_ldri 6
  k_mul
  k_inc
  k_ldr -2
  k_udiv
  k_stl -4
  k_pushiw $0258
  k_callx RF_3F3E, 2
  k_ldr -4
  k_ult
  k_jumpf RL_7EC1
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt RL_7EB5
  k_ldl -4
  k_ldri 1
  k_ugt
  k_jumpf RL_7EB5
  k_ldl -6
  k_ldri 5
  k_ugt
  k_jumpf RL_7EB5
  k_ldl -6
  k_addlib -5
  k_jump RL_7EBE
RL_7EB5:
  k_ldlba $EF83
  k_ldri 7
  k_uge
  k_jumpf RL_7EC1
  k_ldli 3
RL_7EBE:
  k_stlba $F192
RL_7EC1:
  k_return
RF_7EC2:
  k_func 0
  k_ldlba $EF6A
  k_ldri 1
  k_eq
  k_jumpf RL_7ED0
  k_return
RL_7ED0:
  k_pusharg 11
  k_callx RF_5BBB, 2
  k_pushi 3
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EA8C
  k_ldri 2
  k_ugt
  k_jumpf RL_7EF3
  k_ldlba $EA8C
  k_ldri 9
  k_ult
  k_jumpf RL_7EF3
  k_ldlba $EF84
  k_ldri 4
  k_shr
  k_jump RL_7EF6
RL_7EF3:
  k_ldlba $EF84
RL_7EF6:
  k_ldri 15
  k_and
  k_popr
  k_add
  k_addli 7
  k_ldri 7
  k_and
  k_stlba $EF82
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EA8C
  k_ldri 2
  k_ugt
  k_jumpf RL_7F1E
  k_ldlba $EA8C
  k_ldri 9
  k_ult
  k_jumpf RL_7F1E
  k_ldlba $EF85
  k_ldri 4
  k_shr
  k_jump RL_7F21
RL_7F1E:
  k_ldlba $EF85
RL_7F21:
  k_ldri 15
  k_and
  k_popr
  k_add
  k_stlba $EF83
  k_call RF_7E44
  k_ldlba $E573
  k_ldrib 32
  k_and
  k_jumpf RL_7F49
  k_ldlba $E573
  k_ldrib 64
  k_and
  k_jumpt RL_7F49
  k_ldlarg 11
  k_ldri 3
  k_ult
  k_jumpf RL_7F49
  k_pushi 1
  k_pushi 6
  k_callx RF_200C, 4
RL_7F49:
  k_return
RF_7F4A:
  k_func 0
  k_ldlarg 11
  k_ldriw $0F30
  k_and
  k_jumpf RL_7F59
  k_ldli 1
  k_return
RL_7F59:
  k_ldli 0
  k_return
RF_7F5B:
  k_func 0
  k_ldlarg 11
  k_ldriw $C0C0
  k_and
  k_jumpf RL_7F6A
  k_ldli 1
  k_return
RL_7F6A:
  k_ldli 0
  k_return
RF_7F6C:
  k_func 0
  k_pushib 16
  k_pushiw $EC9E
  k_pushi 0
  k_pushib 40
  k_pushi 4
  k_pusharg 11
  k_pushiw $0280
  k_pushi 2
  k_pushi 0
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_pushiw $ED1E
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0284
  k_pushi 2
  k_pushi 1
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_pushiw $ED9E
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0288
  k_pushi 2
  k_pushi 2
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 16
  k_pushiw $EE1E
  k_pushi 15
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $028C
  k_pushi 2
  k_pushi 3
  k_pushib 55
  k_callx RL_21BE, 20
  k_return
RF_7FC3:
  k_func 6
  k_ldliw $D800
  k_stl -6
  k_ldli 0
  k_stl -4
RL_7FCE:
  k_ldli 0
  k_stl -2
RL_7FD0:
  k_pushi 4
  k_push -6
  k_pushib 127
  k_ldl -4
  k_ldri 1
  k_and
  k_jumpf RL_7FE0
  k_ldliw $94BA
  k_jump RL_7FE3
RL_7FE0:
  k_ldliw $94B6
RL_7FE3:
  k_pushl
  k_pushib 126
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldli 4
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 15
  k_ult
  k_jumpt RL_7FD0
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldrib 29
  k_ult
  k_jumpt RL_7FCE
  k_pushib 127
  k_pushiw $D800
  k_pushib 28
  k_pushib 28
  k_pushi 1
  k_pushi 2
  k_pushi 2
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushi 0
  k_pushi 4
  k_pushib 19
  k_callx RF_3EC3, 6
  k_pushi 1
  k_pushi 1
  k_callx RF_21EA, 4
  k_pushi 1
  k_callx RF_7F6C, 2
  k_return
RF_8029:
  k_func 12
  k_pushib 20
  k_callx RF_3F3E, 2
  k_jumpt RL_803D
  k_pushi 1
  k_pushi 1
  k_callx RF_200C, 4
RL_803D:
  k_ldliw $E564
  k_stl -4
  k_ldli 0
  k_stl -2
RL_8043:
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt RL_8099
  k_pushiw $00EF
  k_ldl -4
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpf RL_8099
  k_ldl -2
  k_jumpt RL_8071
  k_call RF_7DB7
  k_pushi 1
  k_pushi 7
  k_callx RF_200C, 4
  k_ldli 0
  k_stlba $EA8E
  k_jump RL_8090
RL_8071:
  k_ldl -2
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -10
  k_ldl -10
  k_addli 6
  k_derefb
  k_jumpt RL_808A
  k_push -2
  k_pushi 2
  k_callx RF_4079, 4
  k_jump RL_8090
RL_808A:
  k_ldl -10
  k_addli 6
  k_pushl
  k_derefb
  k_dec
  k_popstoreb
RL_8090:
  k_pushib 16
  k_ldl -4
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
RL_8099:
  k_ldlba $F169
  k_jumpt RL_8264
  k_ldl -4
  k_addlib 16
  k_stl -4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 21
  k_ult
  k_jumpt RL_8043
  k_jump RL_8264
RL_80B0:
  k_ldlba $F193
  k_jumpf RL_80CA
  k_ldlba $F194
  k_inc
  k_stlba $F194
  k_ldlba $F194
  k_ldrib 60
  k_ugt
  k_jumpf RL_80CA
  k_ldli 2
  k_stlba $F193
RL_80CA:
  k_ldlba $EA8E
  k_ldri 5
  k_umod
  k_jumpt RL_80E2
  k_ldlba $EF6A
  k_jumpt RL_80E2
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_7EC2, 2
RL_80E2:
  k_ldliw $E564
  k_stl -4
  k_stl -6
  k_addliw $0150
  k_stl -8
  k_ldli 0
  k_stl -2
  k_jump RL_8251
RL_80F0:
  k_ldl -2
  k_stlba $F198
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 32
  k_and
  k_jumpf RL_813B
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -12
  k_push -12
  k_callx RF_7F4A, 2
  k_jumpt RL_8115
  k_push -12
  k_callx RF_7F5B, 2
  k_jumpt RL_8115
  k_ldli 0
  k_stl -12
RL_8115:
  k_ldlba $F193
  k_jumpt RL_813B
  k_ldl -12
  k_jumpf RL_813B
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 16
  k_and
  k_jumpt RL_813B
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 32
  k_and
  k_jumpf RL_813B
  k_pushiw $00BF
  k_ldl -6
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
RL_813B:
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt RL_8244
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldrib 16
  k_and
  k_jumpt RL_8244
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldrib 32
  k_and
  k_jumpt RL_8244
  k_ldli 0
  k_stlba $F197
  k_ldl -2
  k_jumpt RL_8160
  k_call RF_7D57
RL_8160:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -12
  k_push -12
  k_callx RF_7F4A, 2
  k_jumpt RL_8178
  k_push -12
  k_callx RF_7F5B, 2
  k_jumpt RL_8178
  k_ldli 0
  k_stl -12
RL_8178:
  k_ldlba $F193
  k_jumpt RL_81C2
  k_ldl -12
  k_jumpf RL_81C2
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 16
  k_and
  k_jumpt RL_81C2
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 32
  k_and
  k_jumpt RL_81C2
  k_push -12
  k_callx RF_7F4A, 2
  k_jumpf RL_81AA
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldri 1
  k_and
  k_jumpf RL_81AA
  k_call RF_7C3F
  k_jump RL_81B0
RL_81AA:
  k_pushi 1
  k_pushi 4
  k_callx RF_200C, 4
RL_81B0:
  k_ldlba $F197
  k_jumpf RL_81C2
  k_ldlba $F197
  k_ldri 1
  k_ne
  k_jumpf RL_81C2
  k_ldli 0
  k_stlba $F198
RL_81C2:
  k_pushib 60
  k_callx RF_3F3E, 2
  k_jumpf RL_81EF
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldrib 16
  k_and
  k_jumpt RL_81FB
  k_ldlba $F165
  k_pushl
  k_ldl -4
  k_derefb
  k_ldri 3
  k_udiv
  k_popr
  k_eq
  k_jumpf RL_81FB
  k_ldlba $F166
  k_pushl
  k_ldl -4
  k_inc
  k_derefb
  k_ldri 3
  k_udiv
  k_popr
  k_eq
  k_jumpf RL_81FB
RL_81EF:
  k_ldlba $F197
  k_jumpt RL_81FB
  k_push -2
  k_pushi 3
  k_callx RF_4079, 4
RL_81FB:
  k_ldlba $F197
  k_jumpf RL_8244
  k_ldlba $F197
  k_dec
  k_stlba $F197
  k_ldlba $F198
  k_jumpf RL_8214
  k_ldlba $F197
  k_jumpt RL_823E
RL_8214:
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 16
  k_and
  k_jumpt RL_8244
  k_call RF_7DD9
  k_ldlba $F198
  k_pushl
  k_pushib 36
  k_callx RF_4079, 4
  k_call RF_7D57
  k_ldlba $F193
  k_jumpf RL_8244
  k_call RF_7FC3
  k_pushi 1
  k_callx RF_4F2A, 2
  k_jump RL_8244
RL_823E:
  k_pushi 1
  k_pushi 9
  k_callx RF_200C, 4
RL_8244:
  k_ldlba $F169
  k_jumpt RL_8257
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -4
  k_addlib 16
  k_stl -4
RL_8251:
  k_ldl -4
  k_ldr -8
  k_ult
  k_jumpt RL_80F0
RL_8257:
  k_ldlba $F169
  k_jumpt RL_826D
  k_ldlba $EA8E
  k_inc
  k_stlba $EA8E
RL_8264:
  k_ldlba $EA8E
  k_ldrib 30
  k_ult
  k_jumpt RL_80B0
RL_826D:
  k_ldli 0
  k_stlba $EA8E
  k_return
RF_8272:
  k_func 4
  k_ldlba $EA8D
  k_inc
  k_stlba $EA8D
  k_ldlba $EA8D
  k_ldrib 21
  k_ugt
  k_jumpf RL_828B
  k_ldli 3
  k_stlba $F169
RL_828B:
  k_ldliw $EAC0
  k_stl -2
  k_addliw $00D2
  k_stl -4
  k_jump RL_829E
RL_8296:
  k_ldl -2
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
  k_ldl -2
  k_addli 10
  k_stl -2
RL_829E:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt RL_8296
  k_return
RF_82A5:
  k_func 2
  k_jump RL_82EC
RL_82AD:
  k_ldlba $EA8C
  k_pushl
  k_ldlba $EA8D
  k_pushl
  k_callx RF_7E20, 4
  k_stl -2
  k_jump RL_82CD
RL_82BD:
  k_call RF_8029
  k_ldlba $F169
  k_jumpt RL_82D5
  k_ldlba $EA8B
  k_inc
  k_stlba $EA8B
RL_82CD:
  k_ldlba $EA8B
  k_ldr -2
  k_ult
  k_jumpt RL_82BD
RL_82D5:
  k_ldlba $F169
  k_jumpt RL_82F4
  k_ldli 0
  k_stlba $EA8B
  k_pushi 1
  k_pushi 2
  k_callx RF_200C, 4
  k_ldlba $EA8C
  k_inc
  k_stlba $EA8C
RL_82EC:
  k_ldlba $EA8C
  k_ldri 12
  k_ult
  k_jumpt RL_82AD
RL_82F4:
  k_ldlba $F169
  k_jumpt RL_8307
  k_ldli 0
  k_stlba $EA8C
  k_call RF_8272
  k_ldlba $F169
  k_jumpf RL_82EC
RL_8307:
  k_return
RF_8308:
  k_func 10
  k_ldla $F295
  k_ldrib 33
  k_ult
  k_jumpf RL_831B
  k_ldlib 25
  k_jump RL_831D
RL_831B:
  k_ldlib 26
RL_831D:
  k_stl -2
  k_ldla $F295
  k_ldrib 33
  k_ult
  k_jumpf RL_832D
  k_ldla $F295
  k_jump RL_8332
RL_832D:
  k_ldla $F295
  k_addlib -33
RL_8332:
  k_stl -6
  k_ldl -6
  k_inc
  k_shl1
  k_pushl
  k_ldl -6
  k_ldriw $03C0
  k_mul
  k_popr
  k_add
  k_addliw $8000
  k_stl -8
  k_ldlarg 11
  k_jumpf RL_834B
  k_ldlib 59
  k_jump RL_834D
RL_834B:
  k_ldlib 89
RL_834D:
  k_stl -4
  k_ldlarg 11
  k_jumpf RL_8358
  k_ldliw $4632
  k_jump RL_835B
RL_8358:
  k_ldliw $45F6
RL_835B:
  k_stl -10
  k_pushi 1
  k_push -2
  k_push -8
  k_pushib 30
  k_push -4
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_push -10
  k_pushi 6
  k_pushi 5
  k_ldlba $F291
  k_pushl
  k_ldlba $F290
  k_pushl
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
RF_837B:
  k_func 978
  k_ldlarg 13
  k_ldriw $0C00
  k_and
  k_ldri 10
  k_shr
  k_stl -2
  k_ldlarg 13
  k_ldriw $0300
  k_and
  k_ldri 8
  k_shr
  k_stl -4
  k_ldlarg 13
  k_ldriw $00C0
  k_and
  k_ldri 6
  k_shr
  k_stl -6
  k_ldlarg 13
  k_ldrib 48
  k_and
  k_ldri 4
  k_shr
  k_stl -8
  k_ldlarg 13
  k_ldri 12
  k_and
  k_ldri 2
  k_shr
  k_stl -10
  k_ldlarg 13
  k_ldri 3
  k_and
  k_stl -12
  k_ldl -2
  k_ldrib 40
  k_mul
  k_ldriw $94BE
  k_add
  k_stl -18
  k_ldl -2
  k_ldrib 20
  k_mul
  k_ldriw $955E
  k_add
  k_stl -14
  k_ldl -14
  k_addlib 16
  k_stl -16
  k_ldl -16
  k_addli 2
  k_deref
  k_ldri 5
  k_shl
  k_pushl
  k_leal -978
  k_pushl
  k_ldl -16
  k_deref
  k_ldri 5
  k_shl
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_ldl -12
  k_shl1
  k_ldr -18
  k_add
  k_addlib 32
  k_deref
  k_addliw $8000
  k_pushl
  k_pushib 27
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldl -14
  k_stl -16
  k_ldl -16
  k_addli 2
  k_deref
  k_ldri 5
  k_shl
  k_pushl
  k_leal -978
  k_pushl
  k_ldl -16
  k_deref
  k_ldri 5
  k_shl
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_ldl -4
  k_shl1
  k_ldr -18
  k_add
  k_deref
  k_addliw $8000
  k_pushl
  k_pushib 27
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldl -14
  k_addli 4
  k_stl -16
  k_ldl -16
  k_addli 2
  k_deref
  k_ldri 5
  k_shl
  k_pushl
  k_leal -978
  k_pushl
  k_ldl -16
  k_deref
  k_ldri 5
  k_shl
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_ldl -6
  k_shl1
  k_ldr -18
  k_add
  k_addli 8
  k_deref
  k_addliw $8000
  k_pushl
  k_pushib 27
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldl -14
  k_addli 8
  k_stl -16
  k_ldl -16
  k_addli 2
  k_deref
  k_ldri 5
  k_shl
  k_pushl
  k_leal -978
  k_pushl
  k_ldl -16
  k_deref
  k_ldri 5
  k_shl
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_ldl -8
  k_shl1
  k_ldr -18
  k_add
  k_addlib 16
  k_deref
  k_addliw $8000
  k_pushl
  k_pushib 27
  k_pushib 23
  k_callx RL_21BE, 12
  k_ldl -14
  k_addli 12
  k_stl -16
  k_ldl -16
  k_addli 2
  k_deref
  k_ldri 5
  k_shl
  k_pushl
  k_leal -978
  k_pushl
  k_ldl -16
  k_deref
  k_ldri 5
  k_shl
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_ldl -10
  k_shl1
  k_ldr -18
  k_add
  k_addlib 24
  k_deref
  k_addliw $8000
  k_pushl
  k_pushib 27
  k_pushib 23
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushib 126
  k_leal -978
  k_pushl
  k_pushib 30
  k_pusharg 11
  k_pushi 11
  k_callx RL_21BE, 12
  k_return
RF_8495:
  k_func 4
  k_ldlarg 11
  k_jumpf RL_84A3
  k_ldlib 59
  k_jump RL_84A5
RL_84A3:
  k_ldlib 89
RL_84A5:
  k_stl -2
  k_ldlarg 11
  k_jumpf RL_84B0
  k_ldliw $4632
  k_jump RL_84B3
RL_84B0:
  k_ldliw $45F6
RL_84B3:
  k_stl -4
  k_pusha $F295
  k_push -2
  k_callx RF_837B, 4
  k_pusha $F280
  k_push -4
  k_pushi 6
  k_pushi 5
  k_ldlba $F291
  k_pushl
  k_ldlba $F290
  k_pushl
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
RL_84D0:
  php
  rep #$30
  tsc
  sta z:$0A
.i16
  ldy #$09
  lda ($0A),y
  sta z:$0C
  iny
  iny
  lda ($0A),y
  sta z:$0E
  sec
  sbc z:$0C
  bcs RL_84EE
.a16
  eor #$FFFF
  adc #$01
RL_84EE:
  cmp #$05
  bcc RL_84FE
  sbc #$04
  sta z:$10
  lda #$04
  sec
  sbc z:$10
RL_84FE:
  sta z:$0A
  plp
  rtl
RL_8502:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$0B
  lda ($0A),y
  sta z:$0E
  dey
  dey
  lda ($0A),y
  sta z:$0C
  asl a
  asl a
  clc
  adc z:$0C
  sta z:$0C
  asl a
  asl a
  asl a
  sec
  sbc z:$0C
  clc
  adc #$EB92
  sta z:$12
  clc
  adc #$23
  sta z:$14
  ldx #$00
  stx z:$10
  ldy #$06
RL_8536:
  sep #$20
  lda ($12),y
.a8
  and #$40
  beq RL_854A
  lda z:$0C
  sta ($0E)
  rep #$30
  inc z:$0E
  inc z:$10
  bra RL_854C
RL_854A:
  rep #$30
RL_854C:
  inc z:$0C
  lda z:$12
  clc
.a16
  adc #$07
  sta z:$12
  cmp z:$14
  bcc RL_8536
  lda z:$10
  sta z:$0A
  plp
  rtl
RL_8560:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  iny
  iny
  lda ($0A),y
  sta z:$0E
  iny
  iny
  lda ($0A),y
  sta z:$10
  lda #$E564
  sta z:$12
  lda #$0150
  clc
  adc #$E564
  sta z:$14
  stz z:$16
  stz z:$18
RL_858B:
  sep #$20
  lda ($12)
  cmp z:$0C
  bne RL_85BC
  ldy #$01
  lda ($12),y
  cmp z:$0E
  bne RL_85BC
  ldy #$0F
  lda ($12),y
  tax
.a8
  and #$02
  bne RL_85BC
  txa
  and #$20
  bne RL_85BC
  txa
  and #$08
  bne RL_85BC
  lda z:$18
  sta ($10)
  rep #$30
  inc z:$10
  inc z:$16
  bra RL_85BE
RL_85BC:
  rep #$30
RL_85BE:
  inc z:$18
.a16
  lda #$10
  clc
  adc z:$12
  cmp z:$14
  bcs RL_85CE
  sta z:$12
  bra RL_858B
RL_85CE:
  lda z:$16
  sta z:$0A
  plp
  rtl
RL_85D4:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$0D
  lda ($0A),y
  sta z:$10
  dey
  dey
  lda ($0A),y
  sta z:$0E
  dey
  dey
  lda ($0A),y
  sta z:$0C
  asl a
  asl a
  asl a
  asl a
  sta z:$12
  asl a
  clc
  adc z:$12
  clc
  adc z:$0C
  clc
  adc #$EFAB
  sta z:$12
  lda z:$10
  asl a
  asl a
  asl a
  sec
  sbc z:$10
  clc
  adc z:$0E
  tay
  sep #$20
  lda ($12),y
  sta z:$0A
  stz z:$0B
  plp
  rtl
RL_8616:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  and #$FF
  sta z:$0C
  sta z:$14
  iny
  iny
  lda ($0A),y
  and #$FF
  sta z:$0E
  sta z:$16
  iny
  iny
  lda ($0A),y
  sta z:$10
  iny
  iny
  lda ($0A),y
  sta z:$12
  lda #$C0
  sta z:$1C
RL_8644:
  lda z:$1C
  cmp z:$14
  bcc RL_8653
  bne RL_865A
  lda #$00
  sta z:$14
  bra RL_865E
RL_8653:
  lda z:$14
  sec
  sbc z:$1C
  sta z:$14
RL_865A:
  lsr z:$1C
  bcc RL_8644
RL_865E:
  sep #$20
  lda a:$F167
  rep #$30
  and #$FF
  cmp z:$14
  bne RL_8699
  lda #$C0
  sta z:$1C
RL_8671:
  lda z:$1C
  cmp z:$16
  bcc RL_8680
  bne RL_8687
  lda #$00
  sta z:$16
  bra RL_868B
RL_8680:
  lda z:$16
  sec
  sbc z:$1C
  sta z:$16
RL_8687:
  lsr z:$1C
  bcc RL_8671
RL_868B:
  sep #$20
  lda a:$F168
  rep #$30
  and #$FF
  cmp z:$16
  beq RL_86A1
RL_8699:
  lda #$01
  sta z:$0A
  jmp RL_872A
RL_86A1:
  asl a
  clc
  adc z:$16
  clc
  adc z:$14
  sta z:$18
  lda z:$10
  lsr a
  sta z:$0A
  lda z:$12
  lsr a
  sta z:$0C
  lda z:$18
  asl a
  asl a
  asl a
  asl a
  sta z:$0E
  asl a
  clc
  adc z:$0E
  clc
  adc z:$18
  clc
  adc #$EFAB
  sta z:$0E
  lda z:$0C
  asl a
  asl a
  asl a
  sec
  sbc z:$0C
  clc
  adc z:$0A
  tay
  sep #$20
  lda ($0E),y
  sta z:$1A
  stz z:$1B
  rep #$30
  lda #$08
  ldy #$00
  lsr z:$12
  bcc RL_86EC
  ldy #$02
RL_86EC:
  lsr z:$10
  bcc RL_86F1
  iny
RL_86F1:
  tyx
  beq RL_86F8
  lsr a
  dey
  bra RL_86F1
RL_86F8:
  sta z:$0E
  ldy #$00
  lda z:$1A
  lsr a
  bcs RL_8705
  ldy #$04
RL_8705:
  lda z:$1A
  lsr a
  tax
  sep #$20
  lda a:$872C,x
  rep #$30
  and #$FF
  tyx
  beq RL_871A
  lsr a
  lsr a
  lsr a
  lsr a
RL_871A:
  and #$0F
  and z:$0E
  beq RL_8725
  stz z:$0A
  bra RL_872A
RL_8725:
  lda #$01
  sta z:$0A
RL_872A:
  plp
  rtl
  .byte $0F, $FF, $01, $24, $8A, $53, $CE, $DB, $7F, $FF, $FE, $DB, $7F, $FF, $F4, $82
  .byte $8E, $DB, $7E, $DB, $7F, $FF, $FF, $FF, $F0, $00, $00
  php
  rep #$30
  tsc
  sta z:$0A
  sep #$20
  ldy #$09
  lda ($0A),y
  sta z:$12
  iny
  iny
  lda ($0A),y
  sta z:$13
  iny
  iny
  lda ($0A),y
  sta z:$14
  iny
  iny
  lda ($0A),y
  sta z:$15
  rep #$30
  stz z:$1C
  lda #$150A
  sta z:$18
  lda #$0FD8
RL_8774:
  sta z:$1A
  clc
  adc #$0F
  sta z:$16
  sta z:$0C
  jsr RL_88BB
  sep #$20
  lda z:$0E
  cmp z:$12
  bne RL_87CA
  rep #$30
  inc z:$16
  lda z:$16
  sta z:$0C
  jsr RL_88BB
  sep #$20
  lda z:$0E
  cmp z:$13
  bne RL_87CA
  rep #$30
  inc z:$16
  lda z:$16
  sta z:$0C
  jsr RL_88BB
  sep #$20
  lda z:$0E
  cmp z:$14
  bne RL_87CA
  rep #$30
  inc z:$16
  lda z:$16
  sta z:$0C
  jsr RL_88BB
  sep #$20
  lda z:$0E
  cmp z:$15
  bne RL_87CA
  rep #$30
  lda z:$1C
  sta z:$0A
  bra RL_87DE
RL_87CA:
  rep #$30
  inc z:$1C
  lda z:$1A
  clc
  adc #$13
  sta z:$16
  cmp z:$18
  bcs RL_87DC
  bra RL_8774
RL_87DC:
  stz z:$0A
RL_87DE:
  plp
  rtl
RL_87E0:
  php
  rep #$30
  tsc
  sta z:$0A
  sep #$20
  ldy #$09
  lda ($0A),y
  sta z:$12
  iny
  iny
  lda ($0A),y
  sta z:$13
  rep #$30
  iny
  iny
  lda ($0A),y
  sta z:$14
  ldx #$00
  txy
  lda #$150A
  sta z:$1A
  lda #$0FD8
RL_8809:
  sta z:$18
  clc
  adc #$0F
  sta z:$16
  sta z:$0C
  jsr RL_88BB
  sep #$20
  lda z:$0E
  cmp z:$12
  bne RL_883B
  rep #$30
  inc z:$16
  lda z:$16
  sta z:$0C
  jsr RL_88BB
  sep #$20
  lda z:$0E
  cmp z:$13
  bne RL_883B
  txa
  sta ($14)
  rep #$30
  inc z:$14
  iny
  bra RL_883D
RL_883B:
  rep #$30
RL_883D:
  inx
  lda #$13
  clc
  adc z:$18
  sta z:$16
  cmp z:$1A
  bcc RL_8809
  sty z:$0A
  plp
  rtl
RL_884E:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  cmp #$2CD9
  bcs RL_886B
  sta z:$0C
  jsr RL_88BB
  sep #$20
  lda z:$0E
  bra RL_886F
RL_886B:
  sep #$20
  lda ($0C)
RL_886F:
  sta z:$0A
  stz z:$0B
  plp
  rtl
RL_8875:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  cmp #$2CD9
  bcs RL_8890
  sta z:$0C
  jsr RL_88BB
  lda z:$0E
  bra RL_8894
RL_8890:
  lda ($0C)
  bra RL_8894
RL_8894:
  sta z:$0A
  plp
  rtl
RL_8898:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  cmp #$2CD9
  bcs RL_88B3
  sta z:$0C
  jsr RL_88BB
  lda z:$0E
  bra RL_88B7
RL_88B3:
  lda ($0C)
  bra RL_88B7
RL_88B7:
  sta z:$0A
  plp
  rtl
RL_88BB:
  rep #$30
  lda #$F282
  sta z:$10
  lda ($10)
  sta z:$54
  lda z:$0C
  sta z:$56
  stz z:$58
  stz z:$5A
  lda #$1A
  sta z:$52
  jsl f:$00800C
  lda ($10)
  sta z:$54
  lda #$7E
  sta z:$56
  lda #$0E
  sta z:$58
  lda #$02
  sta z:$5A
  lda #$1C
  sta z:$52
  jsl f:$00800C
  rts
RL_88F4:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0E
  tax
  iny
  iny
  lda ($0A),y
  sta z:$12
  iny
  iny
  lda ($0A),y
  dec a
  ldy z:$12
  cpy z:$0E
  bcc RL_8926
  sta z:$16
  txa
  clc
  adc z:$16
  tax
  tya
  clc
  adc z:$16
  tay
  lda z:$16
  mvp #$7E,#$7E
  bra RL_8929
RL_8926:
  mvn #$7E,#$7E
RL_8929:
  plp
  rtl
RL_892B:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  bmi RL_8941
  beq RL_8946
  lda #$01
RL_893D:
  sta z:$0A
  plp
  rtl
RL_8941:
  lda #$FFFF
  bra RL_893D
RL_8946:
  lda #$00
  bra RL_893D
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  iny
  iny
  cmp ($0A),y
  bcs RL_895E
  lda ($0A),y
RL_895E:
  sta z:$0A
  plp
  rtl
RL_8962:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  iny
  iny
  cmp ($0A),y
  bcc RL_8975
  lda ($0A),y
RL_8975:
  sta z:$0A
  plp
  rtl
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0E
  tax
  iny
  iny
  lda ($0A),y
  sta z:$12
  ldy #$00
  sep #$20
RL_8992:
  lda ($12),y
  sta ($0E),y
  beq RL_899B
  iny
  bra RL_8992
RL_899B:
  rep #$30
  stx z:$0A
  plp
  rtl
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0E
  tax
  iny
  iny
  lda ($0A),y
  sta z:$12
  ldy #$00
  sep #$20
RL_89BA:
  lda ($0E),y
  beq RL_89C1
  iny
  bra RL_89BA
RL_89C1:
  rep #$30
  tya
  clc
  adc z:$0E
  sta z:$0E
  ldy #$00
  sep #$20
RL_89CE:
  lda ($12),y
  sta ($0E),y
  beq RL_89D7
  iny
  bra RL_89CE
RL_89D7:
  rep #$30
  stx z:$0A
  plp
  rtl
RL_89DD:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0E
  ldy #$00
  sep #$20
RL_89EF:
  lda ($0E),y
  beq RL_89F6
  iny
  bra RL_89EF
RL_89F6:
  rep #$30
  sty z:$0A
  plp
  rtl
RL_89FC:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  tax
  cmp #$0E
  bcs RL_8A59
  iny
  iny
  lda ($0A),y
  sta z:$0E
  cmp #$0E
  bcs RL_8A59
  iny
  iny
  lda ($0A),y
  sta z:$10
  lda #$F199
  sta z:$16
  txa
  asl a
  sta z:$12
  asl a
  asl a
  asl a
  sec
  sbc z:$12
  clc
  adc z:$0E
  clc
  adc #$F1AE
  sta z:$12
  sep #$30
  lda ($12)
.a8
  cmp #$FF
  bne RL_8A44
  lda z:$10
  sta ($12)
  bra RL_8A53
RL_8A44:
  tay
  sta z:$14
  lda ($16),y
  cmp #$FF
  bne RL_8A44
  ldy z:$14
  lda z:$10
  sta ($16),y
RL_8A53:
  lda #$FF
  ldy z:$10
  sta ($16),y
RL_8A59:
  plp
  rtl
  php
  rep #$30
  tsc
  sta z:$0A
.a16
  lda #$F199
  sta z:$14
  ldy #$0D
  lda ($0A),y
  sta z:$10
  dey
  dey
  lda ($0A),y
  cmp #$0E
  bcs RL_8AC4
  sta z:$0E
  dey
  dey
  lda ($0A),y
  cmp #$0E
  bcs RL_8AC4
  asl a
  sta z:$12
  asl a
  asl a
  asl a
  sec
  sbc z:$12
  clc
  adc z:$0E
  clc
  adc #$F1AE
  sta z:$12
  sep #$30
  lda ($12)
  sta z:$16
  tay
.a8
  cmp #$FF
  beq RL_8AC4
  cmp z:$10
  bne RL_8AA8
  lda ($14),y
  sta ($12)
  bra RL_8AC4
RL_8AA8:
  ldy z:$16
  sty z:$18
  lda ($14),y
  sta z:$16
  cmp z:$10
  bne RL_8ABE
  ldy z:$10
  lda ($14),y
  ldy z:$18
  sta ($14),y
  bra RL_8AC4
RL_8ABE:
  cmp #$FF
  beq RL_8AC4
  bra RL_8AA8
RL_8AC4:
  sep #$20
  ldy z:$10
  lda #$FF
  sta ($14),y
  plp
  rtl
  .byte $E4, $8A, $EB, $8A, $F2, $8A, $FA, $8A, $02, $8B, $07, $8B, $0E, $8B, $16, $8B
  .byte $1E, $8B, $25, $8B, $2A, $8B
  .byte "initop"
  .byte $00
  .byte "ibento"
  .byte $00
  .byte "maituki"
  .byte $00
  .byte "cminato"
  .byte $00
  .byte "ucom"
  .byte $00
  .byte "uarugo"
  .byte $00
  .byte "jouriku"
  .byte $00
  .byte "uminato"
  .byte $00
  .byte "sensou"
  .byte $00
  .byte "scom"
  .byte $00
  .byte "ending"
  .byte $00, $00, $49, $00, $49, $00, $49, $00, $49, $00, $49, $00, $49, $00, $49, $00
  .byte $1A, $00, $0F, $00, $49, $00
  .byte "Isgdata"
  .byte $00
  .byte "cbmap0"
  .byte $00
  .byte "fdata"
  .byte $00
  .byte "kdata"
  .byte $00, $00, $80, $46, $DA, $46, $12, $47, $4A, $47, $82, $47, $BA, $47, $B8, $46
  .byte $F2, $47, $10
  .byte "H.HLHjH "
  .byte $9D, $00, $9F, $00, $00, $E0, $A0, $C0, $A2, $00, $00, $60, $B7, $60, $B7, $60
  .byte $B7, $A0, $A4, $80, $A6, $60, $A8, $40, $AA, $20, $AC, $00, $AE, $40, $B9, $40
  .byte $B9, $40, $B9, $00, $00, $E0, $AF, $C0, $B1, $00, $00, $A0, $B3, $80, $B5, $20
  .byte $BB, $20, $BB, $20, $BB, $1B, $43, $30, $00
  .byte "Ship: "
  .byte $00
  .byte "Condition: %3d"
  .byte $00
  .byte "Navigator: "
  .byte $00
  .byte "Durability:        %3d/%3d"
  .byte $00
  .byte "Power:             %3d/%3d"
  .byte $00
  .byte "Handling:          %3d/%3d"
  .byte $00
  .byte "Cargo load:        %3d/%3d"
  .byte $00
  .byte "Crewmen:           %3d/%3d"
  .byte $00
  .byte "Arms ("
  .byte $00, $29, $3A, $00
  .byte "%3d/%3d"
  .byte $00
  .byte "%3d   %3d   %3d"
  .byte $00, $1B, $43, $32, $00, $89, $8C, $91, $8C, $9B, $8C
  .byte "Captain"
  .byte $00
  .byte "Navigator"
  .byte $00
  .byte "Sailor"
  .byte $00, $1B, $43, $30, $00, $20, $00
  .byte "Ship: "
  .byte $00
  .byte "Age: %2d"
  .byte $00
  .byte "Fame:%6d      Gold: %5d"
  .byte $00
  .byte "Loyalty: %4d"
  .byte $00
  .byte "Battle Exp: %5d  Level:%3d"
  .byte $00
  .byte "Sailing Exp:%5d  Level:%3d"
  .byte $00
  .byte "Charisma:%3d     Wisdom: %3d"
  .byte $00
  .byte "Strength:%3d     Courage:%3d"
  .byte $00
  .byte "Intelligence:%3d"
  .byte $00, $1B, $43, $32, $00, $A0, $08, $A1, $08, $A2, $08, $A3, $08, $A4, $08, $A5
  .byte $08, $A6, $08, $A7, $08, $F5, $81, $2B, $C3, $DB, $B9, $8D, $A7, $E6, $9C, $BC
  .byte $92, $95, $B0, $07, $89, $1B, $52, $27, $1B, $45, $16, $1B, $3D, $31, $27, $00
  .byte $1B, $43, $30, $00, $00, $00, $00, $7B, $7F, $F7, $6E, $B5, $66, $73, $5E, $00
  .byte $00, $CE, $4D, $8C, $45, $55, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $F7, $6E, $FF, $7F, $CA, $8D, $CE, $8D, $D2, $8D, $D6, $8D, $DA, $8D, $DE
  .byte $8D, $E2, $8D, $E6, $8D, $EA, $8D, $EE, $8D, $F2, $8D, $F6, $8D, $4A, $61, $6E
  .byte $00, $46, $65, $62, $00, $4D, $61, $72, $00, $41, $70, $72, $00, $4D, $61, $79
  .byte $00, $4A, $75, $6E, $00, $4A, $75, $6C, $00, $41, $75, $67, $00, $53, $65, $70
  .byte $00, $4F, $63, $74, $00, $4E, $6F, $76, $00, $44, $65, $63, $00
  .byte "%s %d, %d."
  .byte $0A, $00
  .byte "Last save was"
  .byte $0A, $6F, $6E, $20, $00
  .byte "Save game"
  .byte $00
  .byte "Game is saved"
  .byte $1B, $57, $00
  .byte "Quit game"
  .byte $00, $0A
  .byte "Are you"
  .byte $0A
  .byte "sure"
  .byte $00
  .byte "Message speed"
  .byte $0A
  .byte "is %2d. Change"
  .byte $0A, $74, $6F, $00, $00
  .byte "Music is %s."
  .byte $0A
  .byte "Turn "
  .byte $00, $6F, $6E, $00, $6F, $66, $66, $00, $6F, $66, $66, $00, $6F, $6E, $00, $98
  .byte $8E, $9D, $8E, $A3, $8E
  .byte "6,9-"
  .byte $A1
  .byte "-Save"
  .byte $00
  .byte "Speed"
  .byte $00
  .byte "Music"
  .byte $00
  .byte "Which one?"
  .byte $0A
  .byte "(B-cancel)"
  .byte $00, $00, $FF, $FF, $F7, $FF, $07, $00
  .byte "(%d-%d)?"
  .byte $00
  .byte "(Y/N)?"
  .byte $00, $59, $00, $4E, $00, $F0, $8E, $F7, $8E, $FE, $8E, $06, $8F, $0E, $8F, $13
  .byte $8F, $1A, $8F, $22, $8F, $2A, $8F, $31, $8F, $36, $8F
  .byte "initop"
  .byte $00
  .byte "ibento"
  .byte $00
  .byte "maituki"
  .byte $00
  .byte "cminato"
  .byte $00
  .byte "ucom"
  .byte $00
  .byte "uarugo"
  .byte $00
  .byte "jouriku"
  .byte $00
  .byte "uminato"
  .byte $00
  .byte "sensou"
  .byte $00
  .byte "scom"
  .byte $00
  .byte "ending"
  .byte $00
  .byte "%s %s%3d"
  .byte $00
  .byte "input ovlno"
  .byte $00, $6F, $76, $6C, $00, $00, $00, $00, $00, $00, $00, $25, $34, $64, $00
  .byte "%2d,"
  .byte $00, $25, $32, $64, $00, $CE, $45, $D6, $45, $DE, $45, $00, $00, $00, $FF, $FF
  .byte $01, $00, $1B, $43, $30, $00, $4E, $57, $FE, $5B, $76, $4D, $06, $4F, $26, $50
  .byte $FE, $50, $76, $51, $EE, $51, $5E, $53, $CE, $54, $0E, $56, $08, $00, $10
  .byte "`3a3b3c3"
  .byte $00, $0D, $01, $0D, $02, $0D, $03, $0D, $04, $0D, $05, $0D, $06, $0D, $07, $0D
  .byte $08, $0D, $09, $0D, $0A, $0D, $0B, $0D, $0C, $0D, $0D, $0D, $0E, $0D, $0F, $0D
  .byte $10, $0D, $11, $0D, $12, $0D, $13, $0D, $14, $0D, $15, $0D, $16, $0D, $17, $0D
  .byte $18, $0D, $19, $0D, $1A, $0D, $1B, $0D, $1C, $0D, $1D, $0D, $1E, $0D, $1F, $0D
  .byte $14, $13, $06, $02, $01, $00, $00, $00, $02, $A0, $1A, $A1, $1A, $A2, $1A, $A3
  .byte $1A, $A4, $1A, $A5, $1A, $A6, $1A, $A4, $1A, $A5, $1A, $A6, $1A, $A4, $1A, $A5
  .byte $1A, $A6, $1A, $A7, $1A, $A8, $1A, $A6, $1A, $A4, $1A, $A5, $1A, $A6, $1A, $A4
  .byte $1A, $A5, $1A, $A6, $1A, $A9, $1A, $AA, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AC, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AD, $1A, $AE, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AC
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AF, $1A, $B0, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AC, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $B1
  .byte $1A, $AA, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AC, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AD, $1A, $AE
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AC, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AF, $1A, $B2, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AC, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB
  .byte $1A, $AB, $1A, $AB, $1A, $AB, $1A, $AB, $1A, $B1, $1A, $B3, $1A, $B4, $1A, $B5
  .byte $1A, $B6, $1A, $B7, $1A, $B8, $1A, $B9, $1A, $B7, $1A, $B8, $1A, $B9, $1A, $B7
  .byte $1A, $B8, $1A, $B9, $1A, $BA, $1A, $B8, $1A, $B9, $1A, $B7, $1A, $B8, $1A, $B9
  .byte $1A, $B7, $1A, $B8, $1A, $B9, $1A, $BB, $1A, $00, $01, $00, $02, $03, $02, $1B
  .byte $43, $32, $1B, $52, $28, $1B, $45, $38, $00, $1B, $43, $32, $1B, $52, $28, $00
  .byte "F!N!V!^!f!n!v!~!"
  .byte $86, $21, $88, $21, $8A, $21, $8C, $21, $8E, $21, $90, $21, $92, $21, $94, $21
  .byte $96, $21, $98, $21, $91, $91
  .byte "days"
  .byte $00, $25, $64, $00, $25, $73, $00, $25, $64, $00, $25, $73, $00, $1B, $52, $28
  .byte $1B, $45, $3E, $1B, $43, $30, $00
  .byte "Day %d"
  .byte $00, $00, $1B, $43, $32, $1B, $52, $28, $1B, $45, $3D, $00, $1B, $43, $32, $1B
  .byte $52, $28, $1B, $45, $3D, $00, $25, $00, $27, $00, $2F, $00, $31, $00, $3F, $00
  .byte $40, $00, $41, $00, $43, $00, $44, $00, $46, $00, $E0, $91, $EC, $91, $20, $1B
  .byte $4B, $B6, $C0, $B6, $C5, $1B, $48, $20, $20, $00, $20, $B4, $B2, $BD, $B3, $BC
  .byte $DE, $20, $00, $C5, $CF, $B4, $3A, $00, $1B, $4B, $25, $63, $1B, $48, $00, $D6
  .byte $DB, $BC, $B2, $C3, $DE, $BD, $B6, $00, $1B, $43, $32, $1B, $52, $28, $1B, $45
  .byte $3E, $00, $1B, $43, $32, $1B, $52, $28, $1B, $45, $3E, $00, $F0, $66, $D0, $66
  .byte $E1, $66, $1B, $43, $30, $1B, $52, $22, $1B, $45, $3F, $00
  .byte "Ship"
  .byte $00, $25, $33, $64, $00
  .byte "%3d/%3d"
  .byte $00
  .byte "Total"
  .byte $00, $25, $64, $00
  .byte "/%4d"
  .byte $00, $F0, $66, $D0, $66, $E1, $66, $1B, $43, $30, $1B, $52, $22, $1B, $45, $3F
  .byte $00, $25, $33, $64, $00, $25, $33, $64, $00, $25, $64, $00
  .byte "Cannot load more"
  .byte $00
  .byte "Load how much"
  .byte $0A, $00
  .byte "Which ship?"
  .byte $0A
  .byte "(B-end)"
  .byte $00
  .byte "%3d/%3d"
  .byte $00
  .byte "How many men"
  .byte $0A, $00, $1B, $43, $30, $00
  .byte "%4d left"
  .byte $00
  .byte "%4d left"
  .byte $00
  .byte "Which ship?"
  .byte $00
  .byte "Some men remain."
  .byte $0A
  .byte "OK to end?"
  .byte $00
  .byte " Cancel  End"
  .byte $00, $00
  .byte "All done"
  .byte $00, $0D, $93, $13, $93, $18, $93
  .byte "Water"
  .byte $00
  .byte "Food"
  .byte $00
  .byte "Lumber"
  .byte $00
  .byte "Choose a vessel"
  .byte $00, $0A
  .byte "Transfer supplies on"
  .byte $0A, $0A
  .byte "the "
  .byte $00
  .byte "%4d barrels free"
  .byte $00, $1B, $43, $30, $00, $25, $33, $64, $00, $1B
  .byte "C1Reserve"
  .byte $1B, $43, $30, $00
  .byte "------"
  .byte $00, $1B, $43, $30, $00, $25, $34, $64, $00, $1B, $43, $30, $00, $1B, $43, $30
  .byte $00, $25, $34, $64, $00, $1B, $43, $30, $00, $25, $34, $64, $00, $1B, $43, $30
  .byte $00, $25, $34, $64, $00, $1B, $43, $30, $00, $25, $33, $64, $00, $1B, $43, $32
  .byte $00, $25, $34, $64, $00
  .byte "Eliminating this"
  .byte $0A
  .byte "item"
  .byte $00, $1B
  .byte "C0%3d"
  .byte $00, $1B
  .byte "C2%4d"
  .byte $00
  .byte "Cargo space is full!"
  .byte $00
  .byte "Add which item?"
  .byte $00
  .byte "No more cargo space!"
  .byte $00, $1B, $43, $31, $00, $25, $34, $64, $00, $1B, $43, $30, $00, $25, $33, $64
  .byte $00, $1B
  .byte "C1Reserve"
  .byte $1B, $43, $30, $00, $1B
  .byte "C2%4d"
  .byte $00
  .byte "Cannot add more"
  .byte $00
  .byte "There's nothing else"
  .byte $0A
  .byte "to load"
  .byte $00
  .byte "Cargo"
  .byte $00, $41, $6D, $74, $00
  .byte "Reserve"
  .byte $00, $1B, $43, $30, $00
  .byte "Some goods remain."
  .byte $0A
  .byte "OK to quit"
  .byte $00
  .byte "All done"
  .byte $00, $1B, $43, $30, $00, $1F, $00, $1C, $00, $1F, $00, $1E, $00, $1F, $00, $1E
  .byte $00, $1F, $00, $1F, $00, $1E, $00, $1F, $00, $1E, $00, $1F, $00, $80, $12, $84
  .byte $12, $88, $12, $8C, $12, $00, $00, $80, $02, $00, $05, $80, $07, $00, $0A, $60
  .byte $0A, $C0, $0A, $20, $0B, $80, $0B, $E0, $0B, $40, $0C, $A0, $0C, $00, $0D, $40
  .byte $0D, $80, $0D, $C0, $0D, $00, $0E, $E0, $0F, $C0, $11, $A0, $13, $80, $15, $A0
  .byte $18, $C0, $1B, $E0, $1E, $00, $22, $60, $22, $C0, $22, $20, $23, $80, $23, $E0
  .byte $23, $40, $24, $A0, $24, $00, $25, $60, $25, $C0, $25, $20, $26, $80, $26, $20
  .byte $27, $C0, $27, $60, $28, $00, $3C, $E0, $3D, $C0, $3F, $A0, $41, $80, $43, $E0
  .byte $43, $40, $44, $A0, $44, $00, $45, $60, $45, $C0, $45, $20, $46, $80, $46, $C0
  .byte $46, $00, $47, $40, $47, $80
  .byte "G`I@K M"
  .byte $00, $29, $E0, $2A, $C0, $2C, $A0, $2E, $80, $30, $E0, $30, $40, $31, $A0, $31
  .byte $00, $32, $60, $32, $C0, $32, $20, $33, $80, $33, $C0, $33, $00, $34, $40, $34
  .byte $80
  .byte "4`6@8 :"
  .byte $00, $00, $14, $00, $0B, $00, $03, $00, $10, $00, $03, $00, $15, $00, $02, $00
  .byte $0F, $00, $0F, $00, $00, $00, $19, $00, $0C, $00, $03, $00, $11, $00, $03, $00
  .byte $16, $00, $03, $00, $19, $00, $05, $00, $00, $00, $0F, $00, $0A, $00, $03, $00
  .byte $0F, $00, $03, $00, $15, $00, $02, $00, $0F, $00, $0F, $00, $00, $00, $0F, $00
  .byte $0B, $00, $03, $00, $10, $00, $03, $00, $16, $00, $02, $00, $0F, $00, $0F, $00
