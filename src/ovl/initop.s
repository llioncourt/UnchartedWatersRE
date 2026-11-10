; overlay initop, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp INITOP_F_9603
INITOP_F_9603:
  k_func 0
  k_call INITOP_F_972A
  k_return
INITOP_F_960C:
  k_func 0
  k_pushib 34
  k_callx RL_21BE, 2
  k_pushi 13
  k_pushiw $8000
  k_pushib 65
  k_callx RL_21BE, 6
  k_pushib 35
  k_callx RL_21BE, 2
  k_return
INITOP_F_9628:
  k_func 0
  k_ldli 0
  k_stla $F18C
  k_stla $F18A
  k_stla $F188
  k_ldlib 31
  k_stla $F18E
  k_ldli 0
  k_stlba $F190
  k_return
INITOP_F_9641:
  k_func 0
  k_ldli 0
  k_stlba $F198
  k_stlba $F197
  k_stlba $F196
  k_stlba $F195
  k_stlba $F194
  k_stlba $F193
  k_stlba $F192
  k_pushib 21
  k_pushi 0
  k_pushiw $F199
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushiw $00C4
  k_pushi 0
  k_pushiw $F1AE
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stlba $F273
  k_stlba $F272
  k_ldliw $00FF
  k_stlba $F274
  k_ldli 0
  k_stla $F275
  k_ldli 0
  k_stlba $F277
  k_longd $18, $00000000
  k_longw $12, $F278
  k_ldli 3
  k_stla $F286
  k_ldli 0
  k_stla $F288
  k_ldli 0
  k_stla $F28A
  k_ldli 0
  k_stlba $F28C
  k_ldli 0
  k_stlba $F28F
  k_stlba $F28E
  k_stlba $F28D
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F293
  k_stlba $F292
  k_stlba $F291
  k_stlba $F290
  k_ldlib -1
  k_stla $F297
  k_stla $F295
  k_return
INITOP_F_96CD:
  k_func 6
  k_ldliw $EF64
  k_stl -2
  k_ldliw $1287
  k_ldriw $1064
  k_sub
  k_inc
  k_stl -4
  k_pushi 0
  k_ldliw $1064
  k_long $26
  k_long $14
  k_pusha $F27E
  k_pushib 26
  k_callx RL_21BE, 10
  k_push -4
  k_push -2
  k_pushib 126
  k_pusha $F27E
  k_pushib 28
  k_callx RL_21BE, 10
  k_return
INITOP_F_96FE:
  k_func 0
  k_ldliw $00FF
  k_stlba $EA89
  k_ldli 5
  k_stlba $EA8A
  k_pushi 8
  k_callx RL_21BE, 2
  k_call RF_3D7C
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 0
  k_pushiw $ADF4
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushi 0
  k_callx RF_2F8F, 4
  k_return
INITOP_F_972A:
  k_func 2
  k_call INITOP_F_960C
  k_call INITOP_F_9628
  k_call INITOP_F_9641
  k_call INITOP_F_96CD
  k_call INITOP_F_AD8D
  k_call INITOP_F_96FE
  k_call INITOP_F_9ECB
  k_call RF_4F05
  k_call RF_3D7C
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_return
INITOP_F_9751:
  k_func 0
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_return
INITOP_F_9768:
  k_func 18
  k_pushi 0
  k_ldlarg 13
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 15
  k_leal -18
  k_pushl
  k_pushib 126
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
  k_leal -18
  k_stln -3
  k_ldli 0
  k_jump INITOP_L_97BE
INITOP_L_9795:
  k_ldln -3
  k_inc
  k_stln -3
  k_dec
  k_derefb
  k_pushl
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_dec
  k_derefb
  k_popr
  k_ne
  k_jumpf INITOP_L_97A9
  k_ldli 0
  k_return
INITOP_L_97A9:
  k_ldln -3
  k_derefb
  k_jumpt INITOP_L_97BA
  k_ldlarg 11
  k_derefb
  k_jumpt INITOP_L_97B8
  k_ldli 1
  k_jump INITOP_L_97B9
INITOP_L_97B8:
  k_ldli 0
INITOP_L_97B9:
  k_return
INITOP_L_97BA:
  k_ldlbf -1
  k_inc
INITOP_L_97BE:
  k_stlbf -1
  k_ldlbf -1
  k_ldri 11
  k_lt
  k_jumpt INITOP_L_9795
  k_ldli 1
  k_return
INITOP_F_97CB:
  k_func 4
  k_ldliw $DF04
  k_stl -2
  k_ldliw $1062
  k_ldriw $0004
  k_sub
  k_inc
  k_stl -4
  k_pushi 0
  k_ldliw $0004
  k_long $26
  k_long $14
  k_pusha $F27E
  k_pushib 26
  k_callx RL_21BE, 10
  k_push -4
  k_push -2
  k_pushib 126
  k_pusha $F27E
  k_pushib 28
  k_callx RL_21BE, 10
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_pusha $F27E
  k_pushib 26
  k_callx RL_21BE, 10
  k_return
INITOP_F_980E:
  k_func 0
  k_pushi 3
  k_callx RF_3D5C, 2
  k_call INITOP_F_9751
  k_pushi 0
  k_pushi 2
  k_pushib 25
  k_pushib 20
  k_pushi 3
  k_pushi 6
  k_callx RF_4F65, 12
  k_pushi 8
  k_pushi 9
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $ADFC
  k_callx RF_2FB9, 4
  k_pushi 11
  k_pushi 9
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AE0A
  k_callx RF_2FB9, 4
  k_pushib 24
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AE15
  k_callx RF_2FB9, 4
  k_return
INITOP_F_9853:
  k_func 2
  k_pushib 25
  k_pushi 7
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pusharg 11
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw $AE21
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_return
INITOP_F_9873:
  k_func 55
  k_call INITOP_F_97CB
  k_call INITOP_F_9751
  k_pushi 3
  k_callx RF_3D5C, 2
  k_pushi 0
  k_pushi 2
  k_pushib 26
  k_pushib 27
  k_pushi 2
  k_pushi 2
  k_callx RF_4F65, 12
INITOP_L_988F:
  k_pushib 25
  k_pushi 7
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AE55
  k_callx RF_2FB9, 4
INITOP_L_989E:
  k_pushi 0
  k_leal -34
  k_pushl
  k_pushi 12
  k_callx RF_6557, 6
  k_stlbf -7
  k_ldlbf -7
  k_jumpf INITOP_L_9918
  k_ldli 1
  k_stln -53
INITOP_L_98B4:
  k_ldln -53
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_leal -34
  k_pushl
  k_callx INITOP_F_9768, 4
  k_jumpf INITOP_L_990B
  k_ldlib 30
  k_stlbf -7
  k_pushiw $2000
  k_pushi 2
  k_pushib 24
  k_pushib 25
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushib 25
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AE68
  k_callx RF_2FB9, 4
  k_pushib 60
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushiw $2000
  k_pushi 2
  k_pushib 21
  k_pushib 25
  k_pushi 6
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_jump INITOP_L_9918
INITOP_L_990B:
  k_ldln -53
  k_inc
  k_stln -53
  k_ldln -53
  k_ldrib 41
  k_lt
  k_jumpt INITOP_L_98B4
INITOP_L_9918:
  k_ldlbf -7
  k_ldrib 30
  k_eq
  k_jumpt INITOP_L_989E
  k_ldlbf -7
  k_jumpt INITOP_L_9935
  k_pushib 24
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushiw $EAB0
  k_callx RF_40DE, 2
INITOP_L_9935:
  k_pushiw $AE7F
  k_callx INITOP_F_9853, 2
  k_jumpf INITOP_L_988F
  k_ldlbf -7
  k_jumpf INITOP_L_994C
  k_leal -34
  k_pushl
  k_jump INITOP_L_994F
INITOP_L_994C:
  k_pushiw $AE88
INITOP_L_994F:
  k_pushiw $EAB0
  k_callx $8979, 4
  k_ldliw $EAB0
  k_stla $E444
  k_pushi 3
  k_callx RF_3D5C, 2
  k_call INITOP_F_9751
  k_pushiw $2000
  k_pushib 17
  k_pushi 14
  k_pushi 4
  k_pushi 9
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 2
  k_pushib 25
  k_pushib 20
  k_pushi 3
  k_pushi 6
  k_callx RF_4F65, 12
  k_pushi 5
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pusha $E444
  k_callx RF_40DE, 2
INITOP_L_998B:
  k_pushiw $2000
  k_pushi 1
  k_pushi 1
  k_pushib 26
  k_pushib 23
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldli 0
  k_jump INITOP_L_99EF
INITOP_L_999E:
  k_leal -6
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_pushl
  k_pushib 30
  k_callx RF_3F3E, 2
  k_addlib 40
  k_popstoreb
  k_ldlbf -7
  k_shl1
  k_addli 6
  k_pushl
  k_pushi 10
  k_callx RF_2F8F, 4
  k_ldlbf -7
  k_shl1
  k_ldriw $AE24
  k_add
  k_deref
  k_pushl
  k_pushiw $AE94
  k_callx RF_3619, 4
  k_ldlbf -7
  k_shl1
  k_addli 6
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_leal -6
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_derefb
  k_pushl
  k_pushiw $AE97
  k_callx RF_3619, 4
  k_ldlbf -7
  k_inc
INITOP_L_99EF:
  k_stlbf -7
  k_ldlbf -7
  k_ldri 5
  k_ult
  k_jumpt INITOP_L_999E
  k_pushib 40
  k_callx RF_3F3E, 2
  k_inc
  k_ldrib 40
  k_udiv
  k_stlbf -8
  k_pushib 30
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlbf -8
  k_pushl
  k_pushib 50
  k_callx RF_3F3E, 2
  k_addlib 20
  k_popr
  k_mul
  k_popr
  k_add
  k_addlib 40
  k_stlbf -1
  k_ldlbf -7
  k_shl1
  k_addli 7
  k_pushl
  k_pushi 10
  k_callx RF_2F8F, 4
  k_ldlbf -1
  k_pushl
  k_pushiw $AE9B
  k_callx RF_3619, 4
  k_pushiw $AEA8
  k_callx INITOP_F_9853, 2
  k_jumpf INITOP_L_998B
  k_pushi 5
  k_pushi 0
  k_leal -19
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_pushiw $2000
  k_pushi 1
  k_pushib 18
  k_pushib 26
  k_pushi 7
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
INITOP_L_9A60:
  k_pushiw $2000
  k_pushi 2
  k_pushib 18
  k_pushib 25
  k_pushi 7
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushib 22
  k_pushi 9
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AEB1
  k_callx RF_2FB9, 4
  k_pushib 24
  k_pushi 9
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AEBF
  k_callx RF_2FB9, 4
  k_ldli 0
  k_jump INITOP_L_9AD1
INITOP_L_9A91:
  k_leal -19
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_derefb
  k_swap
  k_ldlbf -1
  k_add
  k_stlbf -1
  k_leal -19
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldlbf -7
  k_shl1
  k_addli 6
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_leal -6
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_derefb
  k_pushl
  k_pushiw $AECC
  k_callx RF_3619, 4
  k_ldlbf -7
  k_inc
INITOP_L_9AD1:
  k_stlbf -7
  k_ldlbf -7
  k_ldri 5
  k_ult
  k_jumpt INITOP_L_9A91
  k_ldlbf -7
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_ldlbf -1
  k_pushl
  k_pushiw $AED0
  k_callx RF_3619, 4
  k_ldli 0
  k_stln -51
  k_ldli 0
  k_stln -55
  k_ldli 12
  k_stln -53
INITOP_L_9AFC:
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldln -51
  k_shl1
  k_addli 7
  k_ldri 3
  k_shl
  k_addlib -5
  k_pushl
  k_pushib 71
  k_pushi 0
  k_callx RF_3E5A, 14
  k_pushn -53
  k_pushn -55
  k_callx RF_3D91, 4
  k_ldli 12
  k_stln -53
  k_pushi 0
  k_callx RF_362A, 2
  k_stln -55
  k_switchn 10
    .word $8000, INITOP_L_9BA9
    .word $0010, INITOP_L_9B60
    .word $0020, INITOP_L_9B60
    .word $0040, INITOP_L_9B60
    .word $0080, INITOP_L_9C0D
    .word $0100, INITOP_L_9BA9
    .word $0200, INITOP_L_9C0D
    .word $0400, INITOP_L_9B9B
    .word $0800, INITOP_L_9B53
    .word $4000, INITOP_L_9B60
    .word INITOP_L_9B60
INITOP_L_9B53:
  k_ldln -51
  k_dec
  k_stln -51
  k_ldri 0
  k_lt
  k_jumpf INITOP_L_9B60
  k_ldli 4
INITOP_L_9B5E:
  k_stln -51
INITOP_L_9B60:
  k_ldlbf -1
  k_jumpt INITOP_L_9AFC
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushiw $2000
  k_pushi 2
  k_pushib 18
  k_pushib 22
  k_pushi 7
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 2
  k_pushib 18
  k_pushib 24
  k_pushi 7
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $AEE4
  k_callx INITOP_F_9853, 2
  k_jumpf INITOP_L_9A60
  k_ldliw $EAC1
  k_stl -14
  k_ldli 0
  k_jump INITOP_L_9CA1
INITOP_L_9B9B:
  k_ldln -51
  k_inc
  k_stln -51
  k_ldri 4
  k_gt
  k_jumpf INITOP_L_9B60
  k_ldli 0
  k_jump INITOP_L_9B5E
INITOP_L_9BA9:
  k_leal -19
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_derefb
  k_jumpf INITOP_L_9B60
  k_leal -19
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_pushl
  k_derefb
  k_dec
  k_popstoreb
  k_ldlbf -1
  k_inc
  k_stlbf -1
  k_ldln -51
  k_shl1
  k_addli 6
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_leal -19
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_derefb
  k_pushl
  k_leal -6
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_derefb
  k_popr
  k_add
  k_pushl
  k_pushiw $AED4
  k_callx RF_3619, 4
  k_ldlbf -7
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_ldlbf -1
  k_pushl
  k_pushiw $AED8
INITOP_L_9C03:
  k_callx RF_3619, 4
  k_ldli 1
  k_stln -53
  k_jump INITOP_L_9B60
INITOP_L_9C0D:
  k_ldlbf -1
  k_jumpf INITOP_L_9B60
  k_leal -6
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_derefb
  k_pushl
  k_leal -19
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_derefb
  k_popr
  k_add
  k_ldrib 100
  k_ult
  k_jumpf INITOP_L_9B60
  k_leal -19
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
  k_ldlbf -1
  k_dec
  k_stlbf -1
  k_ldln -51
  k_shl1
  k_addli 6
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_leal -19
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_derefb
  k_pushl
  k_leal -6
  k_pushl
  k_ldln -51
  k_popr
  k_add
  k_derefb
  k_popr
  k_add
  k_pushl
  k_pushiw $AEDC
  k_callx RF_3619, 4
  k_ldlbf -7
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_ldlbf -1
  k_pushl
  k_pushiw $AEE0
  k_jump INITOP_L_9C03
INITOP_L_9C7F:
  k_ldlbf -7
  k_ldr -14
  k_add
  k_pushl
  k_leal -19
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_derefb
  k_pushl
  k_leal -6
  k_pushl
  k_ldlbf -7
  k_popr
  k_add
  k_derefb
  k_popr
  k_add
  k_popstoreb
  k_ldlbf -7
  k_inc
INITOP_L_9CA1:
  k_stlbf -7
  k_ldlbf -7
  k_ldri 5
  k_ult
  k_jumpt INITOP_L_9C7F
  k_call INITOP_F_9751
  k_pushi 3
  k_callx RF_3D5C, 2
  k_pushi 0
  k_pushi 2
  k_pushib 26
  k_pushib 27
  k_pushi 2
  k_pushi 2
  k_callx RF_4F65, 12
INITOP_L_9CC0:
  k_pushib 25
  k_pushi 5
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AEED
  k_callx RF_2FB9, 4
  k_pushi 0
  k_leal -49
  k_pushl
  k_pushi 7
  k_callx RF_6557, 6
  k_stlbf -7
  k_ldlbf -7
  k_jumpt INITOP_L_9CF6
  k_pushib 23
  k_pushi 13
  k_callx RF_2F8F, 4
  k_pushi 0
  k_callx RF_40A5, 2
  k_pushl
  k_pushiw $AF04
  k_callx RF_3619, 4
INITOP_L_9CF6:
  k_pushiw $AF07
  k_callx INITOP_F_9853, 2
  k_jumpf INITOP_L_9CC0
  k_call INITOP_F_9751
  k_pushi 3
  k_callx RF_3D5C, 2
  k_ldlbf -7
  k_jumpf INITOP_L_9D1C
  k_leal -49
  k_pushl
  k_pushi 0
  k_callx RF_40A5, 2
  k_pushl
  k_callx $8979, 4
INITOP_L_9D1C:
  k_pushiw $2000
  k_pushib 17
  k_pushi 14
  k_pushi 4
  k_pushi 9
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 2
  k_pushib 25
  k_pushib 24
  k_pushi 3
  k_pushi 4
  k_callx RF_4F65, 12
  k_pushi 5
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_ldli 0
  k_jump INITOP_L_9D7F
INITOP_L_9D47:
  k_ldlbf -7
  k_shl1
  k_addli 6
  k_pushl
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushi 1
  k_ldlbf -7
  k_shl1
  k_ldriw $AE24
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_ldlbf -7
  k_shl1
  k_addli 6
  k_pushl
  k_pushib 19
  k_callx RF_2F8F, 4
  k_ldlbf -7
  k_ldr -14
  k_add
  k_derefb
  k_pushl
  k_pushiw $AF10
  k_callx RF_3619, 4
  k_ldlbf -7
  k_inc
INITOP_L_9D7F:
  k_stlbf -7
  k_ldlbf -7
  k_ldri 5
  k_ult
  k_jumpt INITOP_L_9D47
  k_ldlbf -7
  k_shl1
  k_addli 6
  k_pushl
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushi 0
  k_callx RF_40A5, 2
  k_pushl
  k_pushiw $AF14
  k_callx RF_3619, 4
  k_pushiw $AF1D
  k_callx INITOP_F_9853, 2
  k_return
INITOP_F_9DAA:
  k_func 5
  k_call INITOP_F_9873
  k_stln -3
  k_ldli 0
  k_jump INITOP_L_9DD0
INITOP_L_9DB8:
  k_ldlbf -1
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stln -5
  k_ldln -5
  k_addli 7
  k_pushl
  k_ldln -5
  k_addli 9
  k_popstore
  k_ldlbf -1
  k_inc
INITOP_L_9DD0:
  k_stlbf -1
  k_ldlbf -1
  k_ldrib 20
  k_ult
  k_jumpt INITOP_L_9DB8
  k_ldln -3
  k_return
INITOP_F_9DDF:
  k_func 5
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
  k_ne
  k_jumpf INITOP_L_9E10
  k_pushib 24
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AF26
  k_callx RF_2FB9, 4
  k_ldli 0
  k_return
INITOP_L_9E10:
  k_ldliw $EF62
  k_ldriw $DF05
  k_sub
  k_inc
  k_stln -3
  k_pushn -3
  k_pushiw $DF05
  k_pushib 126
  k_pushiw $0005
  k_pushib 112
  k_pushib 23
  k_callx RL_21BE, 12
  k_pushib 24
  k_pushi 10
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $AF38
  k_callx RF_2FB9, 4
  k_ldli 1
  k_return
INITOP_F_9E3D:
  k_func 2
  k_call INITOP_F_9DDF
  k_stl -2
  k_ldl -2
  k_return
INITOP_F_9E48:
  k_func 6
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 12
  k_pushiw $ACC0
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushiw $0348
  k_pushiw $0098
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $73D8
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 0
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 0
  k_pushi 3
  k_pushi 14
  k_callx RF_3EC3, 6
  k_pushi 2
  k_callx RF_4F2A, 2
INITOP_L_9E97:
  k_call INITOP_F_980E
  k_pushi 0
  k_pushi 2
  k_pushi 3
  k_pushi 0
  k_pushi 9
  k_pushi 8
  k_pushi 2
  k_pushiw $AF47
  k_callx RF_3787, 16
  k_stl -6
  k_ldl -6
  k_switchn 2
    .word $0001, INITOP_L_9EB7
    .word $0002, INITOP_L_9EC3
    .word INITOP_L_9EBD
INITOP_L_9EB7:
  k_call INITOP_F_9DAA
  k_stl -2
  k_ldli 1
INITOP_L_9EBC:
  k_stl -4
INITOP_L_9EBD:
  k_ldl -2
  k_jumpf INITOP_L_9E97
  k_ldl -4
  k_return
INITOP_L_9EC3:
  k_call INITOP_F_9E3D
  k_stl -2
  k_ldli 0
  k_jump INITOP_L_9EBC
INITOP_F_9ECB:
  k_func 0
  k_pushi 1
  k_pushib 17
  k_callx RF_21EA, 4
  k_call INITOP_F_9E48
  k_jumpf INITOP_L_9EE0
  k_call INITOP_F_A3E5
INITOP_L_9EE0:
  k_pushi 1
  k_callx RF_4F48, 2
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_ldlba $EA89
  k_ldri 4
  k_and
  k_jumpt INITOP_L_9F04
  k_pushib 61
  k_callx RL_21BE, 2
INITOP_L_9F04:
  k_ldli 0
  k_stlba $F192
  k_ldli 0
  k_stlba $F193
  k_ldli 0
  k_stlba $F194
  k_ldli 0
  k_stlba $F195
  k_ldliw $00FF
  k_stlba $EF6A
  k_return
INITOP_F_9F1B:
  k_func 2
  k_ldlarg 13
  k_jumpf INITOP_L_9F59
  k_pushiw $00E0
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_ldli 0
  k_stl -2
INITOP_L_9F34:
  k_ldl -2
  k_ldriw $00E0
  k_or
  k_pushl
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 31
  k_ule
  k_jumpt INITOP_L_9F34
  k_jump INITOP_L_9F89
INITOP_L_9F59:
  k_ldlib 32
  k_stl -2
INITOP_L_9F5C:
  k_ldl -2
  k_dec
  k_ldriw $00E0
  k_or
  k_pushl
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 1
  k_ne
  k_jumpt INITOP_L_9F5C
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
INITOP_L_9F89:
  k_return
INITOP_F_9F8A:
  k_func 4
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushib 34
  k_callx RL_21BE, 2
  k_pushi 1
  k_pushib 30
  k_pushiw $E820
  k_pushiw $0085
  k_pushi 1
  k_pushi 11
  k_callx RL_21BE, 12
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
  k_pushib 35
  k_callx RL_21BE, 2
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_pushiw $B848
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushiw $3001
  k_pushi 0
  k_pushi 2
  k_pushi 4
  k_callx RL_21BE, 8
  k_pusha $F280
  k_pushiw $61DC
  k_pushi 7
  k_pushi 12
  k_pushi 10
  k_pushi 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldli 0
  k_stl -2
INITOP_L_9FF8:
  k_push -2
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 15
  k_ult
  k_jumpt INITOP_L_9FF8
  k_pushib 20
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 1
  k_stl -2
INITOP_L_A019:
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_ldl -2
  k_ldri 5
  k_shl
  k_ldriw $B848
  k_add
  k_pushl
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_ldl -2
  k_dec
  k_shl1
  k_ldriw $BA24
  k_add
  k_deref
  k_pushl
  k_pushi 5
  k_pushi 12
  k_pushi 10
  k_pushi 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_ult
  k_jumpt INITOP_L_A019
  k_pusha $F280
  k_pushiw $61DC
  k_pushi 7
  k_pushi 12
  k_pushi 10
  k_pushi 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldli 6
  k_stl -2
INITOP_L_A05B:
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_ldl -2
  k_ldri 5
  k_shl
  k_ldriw $B848
  k_add
  k_pushl
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 0
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_ult
  k_jumpt INITOP_L_A05B
  k_ldli 9
  k_stl -2
INITOP_L_A080:
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_ldl -2
  k_ldri 5
  k_shl
  k_ldriw $B848
  k_add
  k_pushl
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 0
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ugt
  k_jumpt INITOP_L_A080
  k_ldli 4
  k_stl -2
INITOP_L_A0A5:
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_ldl -2
  k_ldri 5
  k_shl
  k_ldriw $B848
  k_add
  k_pushl
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 0
  k_ugt
  k_jumpt INITOP_L_A0A5
  k_pusha $F280
  k_pushiw $61DC
  k_pushi 7
  k_pushi 12
  k_pushi 10
  k_pushi 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_pushiw $B848
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 10
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 10
  k_stl -2
INITOP_L_A0EE:
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_ldl -2
  k_ldri 5
  k_shl
  k_ldriw $B848
  k_add
  k_pushl
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 4
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 14
  k_ult
  k_jumpt INITOP_L_A0EE
  k_pushib 32
  k_pushiw $0080
  k_pushib 126
  k_pushiw $B9E8
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw $61DC
  k_pushi 7
  k_pushi 12
  k_pushib 79
  k_pushib 88
  k_pushi 0
  k_callx RF_3E5A, 14
  k_pushib 20
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 0
  k_pushi 0
  k_pushi 1
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushib 32
  k_pushib 16
  k_pushib 126
  k_pushiw $B6C8
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw $61A2
  k_pushi 2
  k_pushi 14
  k_pushib 17
  k_pushi 9
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 0
  k_pushiw $0083
  k_callx INITOP_F_9F1B, 4
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 2
  k_callx RF_4F48, 2
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 0
  k_pushi 0
  k_pushi 1
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 15
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A1A4
  k_return
INITOP_L_A1A4:
  k_pusha $F280
  k_pushiw $6132
  k_pushi 2
  k_pushib 28
  k_pushi 14
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushiw $00B4
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A1C9
  k_return
INITOP_L_A1C9:
  k_pushi 2
  k_callx RF_4F48, 2
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 15
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A1E9
  k_return
INITOP_L_A1E9:
  k_pusha $F280
  k_pushiw $60BA
  k_pushi 3
  k_pushi 8
  k_pushi 11
  k_pushi 12
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $60EA
  k_pushi 2
  k_pushib 18
  k_pushi 15
  k_pushi 7
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushiw $00B4
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A21D
  k_return
INITOP_L_A21D:
  k_pushi 2
  k_callx RF_4F48, 2
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_call RF_3D7C
  k_pushi 0
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 15
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A244
  k_return
INITOP_L_A244:
  k_return
INITOP_F_A245:
  k_func 2
  k_ldli 0
  k_stl -2
INITOP_L_A24C:
  k_pushi 0
  k_push -2
  k_pushi 2
  k_callx RF_3EC3, 6
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt INITOP_L_A24C
  k_ldli 0
  k_stl -2
INITOP_L_A25E:
  k_pushi 1
  k_push -2
  k_pushi 2
  k_callx RF_3EC3, 6
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt INITOP_L_A25E
  k_return
INITOP_F_A26F:
  k_func 0
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_return
INITOP_F_A286:
  k_func 0
INITOP_L_A28B:
  k_ldlarg 11
  k_dec
  k_stlarg 11
  k_inc
  k_jumpf INITOP_L_A2A9
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpf INITOP_L_A29F
  k_ldli 1
  k_stla $F320
  k_return
INITOP_L_A29F:
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump INITOP_L_A28B
INITOP_L_A2A9:
  k_return
INITOP_F_A2AA:
  k_func 11
  k_pushiw $BA2E
  k_leal -7
  k_pushl
  k_callx $8979, 4
INITOP_L_A2BA:
  k_ldlarg 11
  k_derefb
  k_stlbf -1
  k_jumpf INITOP_L_A3E4
  k_ldlbf -1
  k_jump INITOP_L_A3D1
INITOP_L_A2C8:
  k_pushi 1
  k_pushiw $BA31
  k_callx RF_2FB9, 4
  k_jump INITOP_L_A3DE
INITOP_L_A2D3:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlarg 11
  k_derefb
  k_stlbf -2
  k_jump INITOP_L_A35D
INITOP_L_A2DE:
  k_ldlbf -2
  k_stlbf -6
  k_jump INITOP_L_A37A
INITOP_L_A2E7:
  k_pushib 60
  k_callx INITOP_F_A286, 2
  k_jump INITOP_L_A37A
INITOP_L_A2F0:
  k_ldlba $F300
  k_jump INITOP_L_A31B
INITOP_L_A2F6:
  k_ldli 13
  k_stln -9
  k_ldli 5
  k_stln -11
  k_jump INITOP_L_A32A
INITOP_L_A2FF:
  k_ldli 7
  k_stln -9
  k_ldli 6
  k_stln -11
  k_jump INITOP_L_A32A
INITOP_L_A308:
  k_ldlib 20
  k_stln -9
  k_ldli 6
  k_stln -11
  k_jump INITOP_L_A32A
INITOP_L_A312:
  k_ldli 13
  k_stln -9
  k_ldli 5
  k_stln -11
  k_jump INITOP_L_A32A
INITOP_L_A31B:
  k_switch 0, 4, INITOP_L_A32A
    .word INITOP_L_A2F6, INITOP_L_A2FF, INITOP_L_A308, INITOP_L_A312
INITOP_L_A32A:
  k_call RF_4DD8
  k_pushi 1
  k_ldlba $F300
  k_ldriw $B2A0
  k_add
  k_derefb
  k_pushl
  k_pushn -11
  k_pushn -9
  k_callx RF_4E29, 8
  k_ldlba $F300
  k_inc
  k_stlba $F300
  k_jump INITOP_L_A37A
INITOP_L_A349:
  k_pushiw $F301
  k_callx INITOP_F_A2AA, 2
  k_jump INITOP_L_A37A
INITOP_L_A353:
  k_pushiw $F310
  k_callx INITOP_F_A2AA, 2
  k_jump INITOP_L_A37A
INITOP_L_A35D:
  k_switchn 6
    .word $0046, INITOP_L_A353
    .word $0048, INITOP_L_A2DE
    .word $004B, INITOP_L_A2DE
    .word $0050, INITOP_L_A2F0
    .word $0053, INITOP_L_A349
    .word $0057, INITOP_L_A2E7
    .word INITOP_L_A37A
INITOP_L_A37A:
  k_jump INITOP_L_A3DE
INITOP_L_A37D:
  k_ldlarg 11
  k_inc
  k_derefb
  k_stlbf -2
  k_ldlbf -2
  k_ldriw $00DE
  k_eq
  k_jumpt INITOP_L_A397
  k_ldlbf -2
  k_ldriw $00DF
  k_eq
  k_jumpf INITOP_L_A3AD
INITOP_L_A397:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlbf -1
  k_stlbf -5
  k_ldlbf -2
  k_stlbf -4
  k_ldli 0
  k_stlbf -3
  k_jump INITOP_L_A3B7
INITOP_L_A3AD:
  k_ldlbf -1
  k_stlbf -5
  k_ldli 0
  k_stlbf -4
INITOP_L_A3B7:
  k_pushi 1
  k_leal -7
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 7
  k_callx INITOP_F_A286, 2
  k_ldla $F320
  k_jumpf INITOP_L_A3CE
  k_jump INITOP_L_A3DE
INITOP_L_A3CE:
  k_jump INITOP_L_A3DE
INITOP_L_A3D1:
  k_switchn 2
    .word $000A, INITOP_L_A2C8
    .word $001B, INITOP_L_A2D3
    .word INITOP_L_A37D
INITOP_L_A3DE:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_jump INITOP_L_A2BA
INITOP_L_A3E4:
  k_return
INITOP_F_A3E5:
  k_func 2
  k_call INITOP_F_A26F
  k_pushi 3
  k_callx RF_3D5C, 2
  k_pushi 15
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 1
  k_pushi 13
  k_pushib 60
  k_callx RL_21BE, 6
  k_pushib 31
  k_pusha $B214
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 127
  k_pushi 0
  k_pushib 17
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 32
  k_pushib 96
  k_pushib 126
  k_pushiw $B0E8
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 126
  k_pushiw $D240
  k_pushi 10
  k_pushib 22
  k_pushi 12
  k_pushi 5
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushi 1
  k_pushib 32
  k_pushiw $00AB
  k_pushiw $00D3
  k_pushib 109
  k_pushib 45
  k_pushib 38
  k_callx RL_21BE, 14
  k_pushiw $00E0
  k_pushib 82
  k_pushib 32
  k_pushib 48
  k_callx RL_21BE, 8
  k_ldli 0
  k_stlba $F300
  k_pusha $E444
  k_pushiw $F301
  k_callx $8979, 4
  k_pushi 0
  k_callx RF_40A5, 2
  k_pushl
  k_pushiw $F310
  k_callx $8979, 4
  k_ldli 0
  k_stl -2
INITOP_L_A475:
  k_ldli 0
  k_stla $F320
  k_pushiw $2000
  k_pushi 7
  k_pushib 20
  k_pushi 14
  k_pushi 6
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 1
  k_pushiw $BA33
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw $B2A4
  k_add
  k_deref
  k_pushl
  k_callx INITOP_F_A2AA, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 22
  k_lt
  k_jumpt INITOP_L_A475
  k_pushi 1
  k_callx RF_4F48, 2
  k_call RF_2281
  k_call RF_4DD8
  k_call RF_3D7C
  k_call INITOP_F_A26F
  k_pushi 0
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_callx RF_3E7E, 4
  k_return
INITOP_F_A4C3:
  k_func 0
INITOP_L_A4C8:
  k_ldlarg 11
  k_dec
  k_stlarg 11
  k_inc
  k_jumpf INITOP_L_A4EA
  k_pushi 0
  k_callx RF_362A, 2
  k_ldriw $1000
  k_eq
  k_jumpf INITOP_L_A4E0
  k_ldli 1
  k_stla $F320
  k_return
INITOP_L_A4E0:
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump INITOP_L_A4C8
INITOP_L_A4EA:
  k_return
INITOP_F_A4EB:
  k_func 2
  k_ldlarg 11
  k_jumpf INITOP_L_A516
  k_ldli 0
  k_stl -2
INITOP_L_A4F6:
  k_push -2
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 6
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A509
  k_return
INITOP_L_A509:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 16
  k_ult
  k_jumpt INITOP_L_A4F6
  k_jump INITOP_L_A535
INITOP_L_A516:
  k_ldlib 16
  k_stl -2
INITOP_L_A519:
  k_ldl -2
  k_dec
  k_pushl
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 6
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A52E
  k_return
INITOP_L_A52E:
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_jumpt INITOP_L_A519
INITOP_L_A535:
  k_return
INITOP_F_A536:
  k_func 2
  k_ldlarg 13
  k_jumpf INITOP_L_A579
  k_pushiw $00E0
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_ldli 0
  k_stl -2
INITOP_L_A54F:
  k_ldl -2
  k_ldriw $00E0
  k_or
  k_pushl
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushi 8
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A56C
  k_return
INITOP_L_A56C:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 31
  k_ule
  k_jumpt INITOP_L_A54F
  k_jump INITOP_L_A5AE
INITOP_L_A579:
  k_ldlib 32
  k_stl -2
INITOP_L_A57C:
  k_ldl -2
  k_dec
  k_ldriw $00E0
  k_or
  k_pushl
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushi 8
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A59A
  k_return
INITOP_L_A59A:
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 1
  k_ne
  k_jumpt INITOP_L_A57C
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
INITOP_L_A5AE:
  k_return
INITOP_F_A5AF:
  k_func 2
  k_ldlarg 11
  k_ldri 11
  k_lt
  k_jumpf INITOP_L_A5C3
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_addlib 32
  k_stl -2
  k_jump INITOP_L_A60F
INITOP_L_A5C3:
  k_ldlarg 11
  k_ldrib 22
  k_lt
  k_jumpf INITOP_L_A5D4
  k_ldlarg 11
  k_addlib -11
  k_ldri 3
  k_mul
  k_inc
  k_stl -2
  k_jump INITOP_L_A60F
INITOP_L_A5D4:
  k_ldlarg 11
  k_ldrib 32
  k_lt
  k_jumpf INITOP_L_A5E6
  k_ldlarg 11
  k_addlib -22
  k_ldri 3
  k_mul
  k_addlib 34
  k_stl -2
  k_jump INITOP_L_A60F
INITOP_L_A5E6:
  k_ldlarg 11
  k_ldrib 35
  k_lt
  k_jumpf INITOP_L_A5F6
  k_ldlarg 11
  k_addlib -32
  k_ldri 3
  k_mul
  k_stl -2
  k_jump INITOP_L_A60F
INITOP_L_A5F6:
  k_ldlarg 11
  k_ldrib 42
  k_lt
  k_jumpf INITOP_L_A607
  k_ldlarg 11
  k_addlib -32
  k_ldri 3
  k_mul
  k_inc
  k_stl -2
  k_jump INITOP_L_A60F
INITOP_L_A607:
  k_ldlarg 11
  k_addlib -42
  k_ldri 3
  k_mul
  k_addlib 32
  k_stl -2
INITOP_L_A60F:
  k_ldl -2
  k_return
INITOP_F_A611:
  k_func 12
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 0
  k_pushi 1
  k_pushib 60
  k_callx RL_21BE, 6
  k_pushib 122
  k_pushi 3
  k_pushib 75
  k_callx RL_21BE, 6
  k_pushib 31
  k_pusha $B208
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 127
  k_pushi 0
  k_pushiw $008D
  k_pushi 1
  k_pushi 11
  k_callx RL_21BE, 12
  k_ldla $F320
  k_jumpf INITOP_L_A66C
  k_pushib 126
  k_pushiw $BAA6
  k_pushi 12
  k_pushi 10
  k_pushi 11
  k_pushib 18
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushiw $0080
  k_pushi 0
  k_pushib 126
  k_pushiw $AF48
  k_pushi 3
  k_callx RL_21BE, 10
  k_return
INITOP_L_A66C:
  k_pushib 31
  k_pusha $B20A
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushiw $02B6
  k_pushiw $00CE
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 126
  k_pushiw $BB96
  k_pushib 28
  k_pushib 32
  k_pushi 1
  k_pushi 0
  k_pushi 2
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushib 126
  k_pushiw $BAA6
  k_pushi 12
  k_pushi 10
  k_pushi 11
  k_pushib 18
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushiw $0080
  k_pushi 0
  k_pushib 126
  k_pushiw $AF48
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 10
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A6C2
  k_return
INITOP_L_A6C2:
  k_pushi 1
  k_callx INITOP_F_A4EB, 2
  k_ldla $F320
  k_jumpf INITOP_L_A6CE
  k_return
INITOP_L_A6CE:
  k_pushi 0
  k_pushi 0
  k_pushi 3
  k_pushib 17
  k_callx RL_21BE, 8
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushiw $2000
  k_pushi 1
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushib 31
  k_pusha $B20C
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushi 4
  k_pushiw $00D4
  k_pushiw $00F8
  k_pushib 28
  k_pushib 16
  k_pushib 38
  k_callx RL_21BE, 14
  k_ldli 0
  k_stl -12
  k_pushi 3
  k_pushib 127
  k_pushi 0
  k_pushiw $01F8
  k_pushi 1
  k_pushi 11
  k_callx RL_21BE, 12
  k_ldli 0
  k_stl -2
INITOP_L_A71A:
  k_pushib 126
  k_ldl -2
  k_shl1
  k_ldriw $B28E
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushib 28
  k_ldl -2
  k_ldri 3
  k_mul
  k_addlib 32
  k_pushl
  k_pushi 2
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_lt
  k_jumpt INITOP_L_A71A
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_stl -2
  k_jump INITOP_L_A804
INITOP_L_A744:
  k_pushi 3
  k_pushib 24
  k_pushi 3
  k_pushi 1
  k_pushi 0
  k_ldl -2
  k_ldrib 24
  k_mul
  k_pushl
  k_pushi 0
  k_pushi 1
  k_pushib 69
  k_callx RL_21BE, 18
  k_ldl -2
  k_dec
  k_pushl
  k_callx INITOP_F_A5AF, 2
  k_stl -8
  k_ldl -2
  k_addlib -10
  k_pushl
  k_callx INITOP_F_A5AF, 2
  k_stl -10
  k_ldl -2
  k_ldrib 38
  k_lt
  k_jumpf INITOP_L_A7BA
  k_ldl -2
  k_ldri 9
  k_gt
  k_jumpf INITOP_L_A7BA
  k_pushiw $2000
  k_pushi 2
  k_pushib 28
  k_push -10
  k_pushi 2
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 3
  k_pushib 127
  k_ldl -2
  k_dec
  k_ldriw $0380
  k_mul
  k_pushl
  k_pushib 56
  k_ldl -4
  k_ldrib 56
  k_mul
  k_inc
  k_pushl
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 126
  k_ldl -4
  k_shl1
  k_ldriw $B28E
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushib 28
  k_push -8
  k_pushi 2
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 8
  k_gt
  k_jumpf INITOP_L_A7BA
  k_ldli 0
  k_stl -4
INITOP_L_A7BA:
  k_jump INITOP_L_A7F0
INITOP_L_A7BD:
  k_pushi 0
  k_callx RF_362A, 2
  k_ldriw $1000
  k_eq
  k_jumpf INITOP_L_A7F0
  k_pushi 3
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushib 69
  k_callx RL_21BE, 18
  k_ldli 1
  k_stla $F320
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushiw $2000
  k_pushi 1
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_return
INITOP_L_A7F0:
  k_pushi 3
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_pushib 69
  k_callx RL_21BE, 18
  k_jumpt INITOP_L_A7BD
  k_ldl -2
  k_inc
  k_stl -2
INITOP_L_A804:
  k_ldl -2
  k_ldrib 47
  k_lt
  k_jumpt INITOP_L_A744
  k_pushib 60
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A817
INITOP_L_A817:
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushiw $2000
  k_pushi 1
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 2
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A837
  k_return
INITOP_L_A837:
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushi 0
  k_pushi 0
  k_pushi 3
  k_pushib 17
  k_callx RL_21BE, 8
  k_ldli 0
  k_stl -2
INITOP_L_A848:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_push -2
  k_pushi 1
  k_pushib 17
  k_callx RL_21BE, 8
  k_pushi 6
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_A862
  k_return
INITOP_L_A862:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 56
  k_lt
  k_jumpt INITOP_L_A848
  k_return
INITOP_F_A86D:
  k_func 0
  k_pushib 31
  k_pusha $B210
  k_pushi 0
  k_pushib 48
  k_pushi 4
  k_pusharg 11
  k_pushiw $0AFC
  k_pushi 2
  k_pushi 0
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 31
  k_ldla $B210
  k_addliw $0080
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0B00
  k_pushi 2
  k_pushi 1
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 31
  k_ldla $B210
  k_addliw $0100
  k_pushl
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0B04
  k_pushi 2
  k_pushi 2
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 31
  k_ldla $B210
  k_addliw $0180
  k_pushl
  k_pushi 15
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0B08
  k_pushi 2
  k_pushi 3
  k_pushib 55
  k_callx RL_21BE, 20
  k_return
INITOP_F_A8D0:
  k_func 0
  k_pushib 126
  k_pushiw $BA3E
  k_pushib 38
  k_pushi 1
  k_pushib 73
  k_callx RL_21BE, 10
  k_call INITOP_L_ADE8
  k_pushiw $00E0
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx RL_21BE, 8
  k_return
INITOP_F_A8F4:
  k_func 2
  k_ldlarg 11
  k_ldrib 64
  k_ult
  k_jumpf INITOP_L_A906
  k_ldlib 48
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A906:
  k_ldlarg 11
  k_ldrib 96
  k_ult
  k_jumpf INITOP_L_A913
  k_ldlib 56
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A913:
  k_ldlarg 11
  k_ldrib 104
  k_ult
  k_jumpf INITOP_L_A920
  k_ldlib 64
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A920:
  k_ldlarg 11
  k_ldriw $0080
  k_ult
  k_jumpf INITOP_L_A92E
  k_ldlib 80
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A92E:
  k_ldlarg 11
  k_ldriw $00F0
  k_ult
  k_jumpf INITOP_L_A93C
  k_ldlib 88
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A93C:
  k_ldlarg 11
  k_ldriw $0108
  k_ult
  k_jumpf INITOP_L_A94A
  k_ldlib 80
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A94A:
  k_ldlarg 11
  k_ldriw $0110
  k_ult
  k_jumpf INITOP_L_A958
  k_ldlib 64
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A958:
  k_ldlarg 11
  k_ldriw $0130
  k_ult
  k_jumpf INITOP_L_A966
  k_ldlib 56
  k_stl -2
  k_jump INITOP_L_A971
INITOP_L_A966:
  k_ldlarg 11
  k_ldriw $0150
  k_ult
  k_jumpf INITOP_L_A971
  k_ldlib 48
  k_stl -2
INITOP_L_A971:
  k_ldl -2
  k_return
INITOP_F_A973:
  k_func 0
  k_ldlarg 11
  k_ldrib 96
  k_ult
  k_jumpf INITOP_L_A985
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_jump INITOP_L_A996
INITOP_L_A985:
  k_ldlarg 11
  k_ldriw $0108
  k_ult
  k_jumpf INITOP_L_A993
  k_ldlarg 13
  k_dec
  k_stlarg 13
  k_jump INITOP_L_A996
INITOP_L_A993:
  k_ldlarg 13
  k_inc
  k_stlarg 13
INITOP_L_A996:
  k_ldlarg 13
  k_return
INITOP_F_A998:
  k_func 18
  k_ldla $F320
  k_jumpf INITOP_L_A9B9
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_pushib 55
  k_pushi 1
  k_pushib 17
  k_callx RL_21BE, 8
INITOP_L_A9B9:
  k_pushiw $00E0
  k_pushiw $0082
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_ldli 0
  k_stl -2
INITOP_L_A9C8:
  k_ldl -2
  k_ldriw $00E0
  k_or
  k_pushl
  k_pushiw $0082
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_ldla $F320
  k_jumpf INITOP_L_A9E1
  k_ldlib 30
  k_stl -2
INITOP_L_A9E1:
  k_ldl -2
  k_ldri 6
  k_umod
  k_jumpt INITOP_L_AA22
  k_pushib 32
  k_pushib 48
  k_pushib 126
  k_ldl -2
  k_ldri 6
  k_udiv
  k_ldri 5
  k_shl
  k_ldriw $B108
  k_add
  k_pushl
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 6
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_AA1F
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushib 32
  k_pushib 48
  k_pushib 126
  k_pushiw $B1A8
  k_pushi 3
  k_callx RL_21BE, 10
  k_jump INITOP_L_AA4F
INITOP_L_AA1F:
  k_jump INITOP_L_AA45
INITOP_L_AA22:
  k_pushi 4
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_AA45
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushib 32
  k_pushib 48
  k_pushib 126
  k_pushiw $B1A8
  k_pushi 3
  k_callx RL_21BE, 10
  k_jump INITOP_L_AA4F
INITOP_L_AA45:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 31
  k_ule
  k_jumpt INITOP_L_A9C8
INITOP_L_AA4F:
  k_pushi 0
  k_pushi 2
  k_pushi 2
  k_callx RF_3EC3, 6
  k_pushi 2
  k_callx RF_3D5C, 2
  k_pushib 31
  k_pusha $B20E
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushiw $01F6
  k_pushiw $00CE
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 2
  k_pushib 31
  k_pusha $B210
  k_pushib 16
  k_pushiw $02FC
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 31
  k_pusha $B212
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 3
  k_pushib 127
  k_pushi 0
  k_pushiw $00CE
  k_pushi 1
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 127
  k_pushiw $18D0
  k_pushib 42
  k_pushiw $0100
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushib 126
  k_pushiw $C296
  k_pushi 1
  k_pushiw $0260
  k_pushi 2
  k_pushi 0
  k_pushi 2
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushib 126
  k_pushiw $C7EA
  k_pushi 7
  k_pushib 32
  k_pushib 21
  k_pushi 0
  k_pushi 2
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushib 126
  k_pushiw $C9AA
  k_pushi 11
  k_pushib 22
  k_pushib 49
  k_pushi 5
  k_pushi 3
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushi 1
  k_callx INITOP_F_A86D, 2
INITOP_L_AAE6:
  k_call RF_223A
  k_jumpf INITOP_L_AAFD
  k_pushi 1
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_AAFA
  k_jump INITOP_L_AAFD
INITOP_L_AAFA:
  k_jump INITOP_L_AAE6
INITOP_L_AAFD:
  k_ldla $F320
  k_jumpt INITOP_L_AB09
  k_pushib 60
  k_callx INITOP_F_A4C3, 2
INITOP_L_AB09:
  k_ldla $F320
  k_jumpf INITOP_L_AB0F
INITOP_L_AB0F:
  k_pushib 32
  k_pushib 32
  k_pushib 126
  k_pushiw $B088
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_pushiw $B068
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 112
  k_pushib 126
  k_pushiw $B1C8
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushi 0
  k_pushib 126
  k_pushiw $B0A8
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushiw $0090
  k_pushib 126
  k_pushiw $B0A8
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushiw $00D0
  k_pushib 126
  k_pushiw $B0C8
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 0
  k_pushi 12
  k_pushib 60
  k_callx RL_21BE, 6
  k_ldla $F320
  k_jumpf INITOP_L_AB75
  k_jump INITOP_L_AB7D
INITOP_L_AB75:
  k_pushi 0
  k_pushiw $0082
  k_callx INITOP_F_A536, 4
INITOP_L_AB7D:
  k_pushiw $00E0
  k_pushiw $0082
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushib 126
  k_pushiw $C772
  k_pushi 2
  k_pushi 10
  k_pushib 21
  k_pushib 18
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldli 0
  k_stl -4
INITOP_L_ABA4:
  k_ldla $F320
  k_jumpf INITOP_L_ABAD
  k_jump INITOP_L_ABF1
INITOP_L_ABAD:
  k_ldli 0
  k_stl -2
INITOP_L_ABAF:
  k_pushib 126
  k_ldl -2
  k_shl1
  k_ldriw $B224
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushi 10
  k_pushib 21
  k_pushib 18
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushib 126
  k_ldl -2
  k_shl1
  k_ldriw $B216
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 2
  k_pushi 11
  k_pushib 22
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushi 5
  k_callx INITOP_F_A4C3, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 7
  k_ult
  k_jumpt INITOP_L_ABAF
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt INITOP_L_ABA4
INITOP_L_ABF1:
  k_ldliw $01FE
  k_stl -12
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_stl -2
  k_jump INITOP_L_AC5B
INITOP_L_ABFC:
  k_ldla $F320
  k_jumpf INITOP_L_AC06
  k_ldliw $0168
  k_stl -12
INITOP_L_AC06:
  k_push -12
  k_pushi 0
  k_pushi 3
  k_pushib 17
  k_callx RL_21BE, 8
  k_ldl -4
  k_ldri 6
  k_umod
  k_jumpt INITOP_L_AC4E
  k_pushib 126
  k_ldl -2
  k_shl1
  k_ldriw $B224
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushi 10
  k_pushib 21
  k_pushib 18
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushib 126
  k_ldl -2
  k_shl1
  k_ldriw $B216
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 2
  k_pushi 11
  k_pushib 22
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_ugt
  k_jumpf INITOP_L_AC4B
  k_ldli 0
  k_stl -2
INITOP_L_AC4B:
  k_jump INITOP_L_AC53
INITOP_L_AC4E:
  k_pushi 1
  k_callx INITOP_F_A4C3, 2
INITOP_L_AC53:
  k_ldli 2
  k_swap
  k_ldl -12
  k_sub
  k_stl -12
  k_ldl -4
  k_inc
  k_stl -4
INITOP_L_AC5B:
  k_ldl -12
  k_ldriw $0166
  k_gt
  k_jumpt INITOP_L_ABFC
  k_pushib 32
  k_pushiw $00D0
  k_pushib 126
  k_pushiw $B1E8
  k_pushi 3
  k_callx RL_21BE, 10
  k_ldla $F320
  k_jumpf INITOP_L_ACA1
  k_pushib 126
  k_pushiw $D3F8
  k_pushi 3
  k_pushib 18
  k_pushib 24
  k_pushi 14
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushib 126
  k_pushi 0
  k_pushiw $CB8E
  k_pushi 2
  k_pushib 22
  k_pushiw $008F
  k_pushib 40
  k_pushi 0
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldli 0
  k_stla $F320
INITOP_L_ACA1:
  k_ldli 0
  k_stl -18
  k_ldli 0
  k_stl -4
INITOP_L_ACA5:
  k_ldli 0
  k_stl -2
INITOP_L_ACA7:
  k_pushib 126
  k_ldl -2
  k_shl1
  k_ldriw $B224
  k_add
  k_deref
  k_pushl
  k_pushi 2
  k_pushi 10
  k_pushib 21
  k_pushib 18
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushib 126
  k_ldl -2
  k_shl1
  k_ldriw $B216
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 2
  k_pushi 11
  k_pushib 22
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt INITOP_L_ACDC
  k_ldli 1
  k_stl -18
INITOP_L_ACDC:
  k_ldl -18
  k_ldri 1
  k_eq
  k_jumpf INITOP_L_ACEF
  k_pushi 0
  k_callx RF_362A, 2
  k_ldriw $1000
  k_eq
  k_jumpf INITOP_L_ACEF
  k_return
INITOP_L_ACEF:
  k_ldl -4
  k_ldri 2
  k_ult
  k_jumpf INITOP_L_AD0F
  k_pushi 0
  k_callx RF_362A, 2
  k_ldriw $1000
  k_eq
  k_jumpf INITOP_L_AD05
  k_ldli 1
  k_stla $F320
INITOP_L_AD05:
  k_pushi 6
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump INITOP_L_AD1B
INITOP_L_AD0F:
  k_pushi 6
  k_callx INITOP_F_A4C3, 2
  k_ldla $F320
  k_jumpf INITOP_L_AD1B
  k_return
INITOP_L_AD1B:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 7
  k_ult
  k_jumpt INITOP_L_ACA7
  k_ldla $F320
  k_jumpf INITOP_L_AD2D
  k_jump INITOP_L_AD61
INITOP_L_AD2D:
  k_ldl -4
  k_ldri 1
  k_eq
  k_jumpf INITOP_L_AD47
  k_pushib 126
  k_pushiw $D3F8
  k_pushi 3
  k_pushib 18
  k_pushib 24
  k_pushi 14
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_jump INITOP_L_AD61
INITOP_L_AD47:
  k_ldl -4
  k_ldri 3
  k_eq
  k_jumpf INITOP_L_AD61
  k_pushib 126
  k_pushi 0
  k_pushiw $CB8E
  k_pushi 2
  k_pushib 22
  k_pushiw $008F
  k_pushib 40
  k_pushi 0
  k_pushi 9
  k_callx RL_21BE, 18
INITOP_L_AD61:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 15
  k_ult
  k_jumpt INITOP_L_ACA5
  k_return
INITOP_F_AD6B:
  k_func 0
  k_ldla $F320
  k_jumpf INITOP_L_AD76
INITOP_L_AD76:
  k_call INITOP_F_A245
  k_call INITOP_F_A611
  k_ldla $F320
  k_jumpf INITOP_L_AD82
INITOP_L_AD82:
  k_call INITOP_F_A998
  k_ldla $F320
  k_jumpf INITOP_L_AD8C
  k_return
INITOP_L_AD8C:
  k_return
INITOP_F_AD8D:
  k_func 2
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 8
  k_callx RL_21BE, 2
  k_call RF_3D7C
  k_ldli 0
  k_stla $F320
  k_call INITOP_F_9F8A
  k_call INITOP_F_AD6B
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_call RF_2281
  k_pushib 74
  k_callx RL_21BE, 2
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushib 121
  k_pushi 3
  k_pushib 75
  k_callx RL_21BE, 6
  k_call INITOP_F_A26F
  k_pushi 0
  k_callx INITOP_F_A86D, 2
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_call RF_20CC
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_return
INITOP_L_ADE8:
  php
  sep #$20
.a8
  lda #$30
  sta f:$002125
  plp
  rtl
  .byte $00, $1B, $52, $20, $1B, $45, $3F, $00, $00
  .byte "New Adventure"
  .byte $00
  .byte "Saved Game"
  .byte $00
  .byte " Which one?"
  .byte $00, $4F, $4B, $00, $2E, $AE, $37, $AE, $3E, $AE, $44, $AE, $4C, $AE
  .byte "Charisma"
  .byte $00
  .byte "Wisdom"
  .byte $00
  .byte "Intel"
  .byte $00
  .byte "Courage"
  .byte $00
  .byte "Strength"
  .byte $00
  .byte "Enter name of hero"
  .byte $00
  .byte "Cannot use that name"
  .byte $1B, $57, $00
  .byte "Is this "
  .byte $00
  .byte "Leon Franco"
  .byte $00, $25, $73, $00, $25, $33, $64, $00
  .byte "Bonus    %3d"
  .byte $00
  .byte "Is this "
  .byte $00
  .byte "Please assign"
  .byte $00
  .byte "bonus points"
  .byte $00, $25, $33, $64, $00, $25, $33, $64, $00, $25, $33, $64, $00, $25, $33, $64
  .byte $00, $25, $33, $64, $00, $25, $33, $64, $00
  .byte "Is this "
  .byte $00
  .byte "Enter name of flagship"
  .byte $00, $25, $73, $00
  .byte "Is this "
  .byte $00, $25, $33, $64, $00
  .byte "Ship: %s"
  .byte $00
  .byte "Is this "
  .byte $00
  .byte "No saved game"
  .byte $1B, $57, $1B, $57, $00
  .byte "Loading game"
  .byte $1B, $57, $00, $00, $00, $00, $11, $19, $D3, $31, $37, $3A, $BB, $46, $3D, $57
  .byte $FD
  .byte "N?W7*N!"
  .byte $D3, $29, $FB, $56, $79, $3A, $BB, $46, $FD, $4E, $84, $28, $00, $00, $00, $28
  .byte $59, $00, $1F, $01, $00, $00, $BF, $5F, $3B, $4F, $B7, $3A, $00, $00, $2A, $7F
  .byte $F7, $7F, $0E, $09, $00, $00
  .byte "y*=G"
  .byte $FF, $7F, $00, $00, $D3
  .byte "172y:"
  .byte $BB, $46, $37, $3A, $BB, $46, $FD, $4E, $37, $2A, $D3
  .byte "15:y:y:"
  .byte $BB, $46, $FD, $4E, $3F, $57, $00, $00, $D3
  .byte "172y:"
  .byte $BB, $46, $37, $3A, $BB, $46, $FD, $4E, $37, $2A, $D3
  .byte "15:y:y:"
  .byte $BB, $46, $FD, $4E, $3F, $57, $00, $00, $11, $19, $D3, $31, $37, $3A, $BB, $46
  .byte $3D, $57, $FD
  .byte "N?W7*N!"
  .byte $D3, $29, $FB, $56, $79, $3A, $BB, $46, $FD, $4E, $84, $28, $00, $00, $00, $28
  .byte $59, $00, $1F, $01, $00, $00, $BF, $5F, $3B, $4F, $B7, $3A, $00, $00, $2A, $7F
  .byte $F7, $7F, $0E, $09, $00, $00
  .byte "y*=G"
  .byte $FF, $7F, $00, $00, $86, $6D, $64, $7E, $A0, $7E, $E0, $7E, $2A, $7F, $6E, $7F
  .byte $73, $7F, $46, $01, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13
  .byte $FD, $7F, $00, $00, $00, $28, $59, $00, $1F, $01, $7F, $02, $CE, $39, $B5
  .byte "V9gd~*"
  .byte $7F, $F7, $7F, $0E, $09, $93, $19
  .byte "y*=G"
  .byte $FF, $7F, $00, $00, $00, $6C, $59, $00, $1F, $01, $7F, $02, $CE, $39, $B5
  .byte "V9gd~*"
  .byte $7F, $F7, $7F, $0E, $09, $93, $19
  .byte "y*=G"
  .byte $FF, $7F, $00, $00, $00, $6C, $59, $00, $1F, $01, $7F, $02, $CE, $39, $B5
  .byte "V9gd~*"
  .byte $7F, $F7, $7F, $0E, $09, $93, $19
  .byte "y*=G"
  .byte $FF, $7F, $00, $00, $86, $6D, $64, $7E, $A0, $7E, $E0, $7E, $2A, $7F, $6E, $7F
  .byte $73, $7F, $46, $01, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13
  .byte $FD, $7F, $00, $00, $00, $28, $59, $00, $1F, $01, $00, $00, $BF, $5F, $3B, $4F
  .byte $B7, $3A, $00, $00, $2A, $7F, $F7, $7F, $0E, $09, $00, $00
  .byte "y*=G"
  .byte $FF, $7F, $00, $00, $80, $20, $00, $31, $80, $39, $20, $56, $E0, $6E, $E0, $7F
  .byte $FF, $7F, $00, $00, $04, $00, $0A, $00, $D3, $00, $97, $01, $40, $30, $00, $7D
  .byte $FF, $7F, $00, $00, $CC, $00, $93, $19
  .byte "y:=W1F"
  .byte $F7, $5E, $FF, $7F, $80, $28, $02, $45, $46, $55, $88
  .byte "],fqV"
  .byte $FD, $77, $B5, $56, $00, $00, $D3
  .byte "172y:"
  .byte $BB, $46, $37, $3A, $BB, $46, $FD, $4E, $37, $2A, $D3
  .byte "15:y:y:"
  .byte $BB, $46, $FD, $4E, $3F, $57, $00, $00, $CE, $31, $D7, $29, $39, $32, $BB, $3A
  .byte $37, $3A, $BB, $46, $FD, $4E, $35, $32, $D3
  .byte "9uN72y:"
  .byte $BB, $46, $FD, $4E, $3F, $5F, $00, $00, $8C, $31, $97, $21, $D9, $29, $BB, $32
  .byte $35, $3A, $B9, $46, $FD
  .byte "N1F1N"
  .byte $F5, $56, $D5, $29, $77, $32, $BB, $3A, $FD, $4E, $7F, $67, $00, $00, $08, $29
  .byte $17, $11, $99, $19, $BD, $22, $33, $3A, $B7, $4E, $FB
  .byte "V.VnVu_"
  .byte $93, $21, $35, $2A, $BB, $32, $FD, $4E, $BF, $6F, $00, $00, $84, $28, $99, $08
  .byte $5B, $09, $7F, $12, $D1, $39, $B5
  .byte "V9_hn"
  .byte $EC, $6E, $B7, $6F, $51, $19, $D3
  .byte "!y*=G"
  .byte $FF, $77, $00, $00, $00, $28, $59, $00, $1F, $01, $7F, $02, $CE, $39, $B5
  .byte "V9gd~*"
  .byte $7F, $F7, $7F, $0E, $09, $93, $19
  .byte "y*=G"
  .byte $FF, $7F, $00, $00, $F7, $6E, $4A, $39, $FF, $4F, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $FF, $7F, $00, $00, $42, $08, $99, $10, $91, $10, $8C, $10, $B5, $56, $7B, $6F
  .byte $FF, $7F, $08, $21, $C6, $18, $08, $19, $3F, $03, $7F, $0B, $BF, $33, $BF, $57
  .byte $FF, $7F, $00, $80, $A3, $8B, $B5, $B5, $11, $CE, $60, $E4, $60, $E6, $DA, $F3
  .byte $56, $C7, $5A, $C7, $5E, $C7, $62, $C7, $66, $C7, $6A, $C7, $6E, $C7, $9A, $C7
  .byte $C2, $C7, $72, $C7, $9A, $C7, $C2, $C7, $72, $C7, $9A, $C7, $B0, $CD, $B0, $CD
  .byte $B0, $CD, $B0, $CD, $B4, $CD, $B8, $CD, $BC, $CD, $C0, $CD, $C4, $CD, $C8, $CD
  .byte $CC, $CD, $D0, $CD, $D4, $CD, $DA, $CD, $DE, $CD, $E2, $CD, $E6, $CD, $EA, $CD
  .byte $EE, $CD, $F2, $CD, $F6, $CD, $B0, $CD, $B0, $CD, $B0, $CD, $B0, $CD, $FA, $CD
  .byte $F2, $CD, $EE, $CD, $FE, $CD, $02, $CE, $06, $CE, $0A, $CE, $0E, $CE, $12, $CE
  .byte $18, $CE, $1C, $CE, $20, $CE, $24, $CE, $28, $CE, $BC, $CD, $B8, $CD, $2C, $CE
  .byte $30, $CE, $38, $CE, $40, $CE, $48, $CE, $50, $CE, $C0, $CE, $30, $CF, $A0, $CF
  .byte $10, $D0, $80, $D0, $F0, $D0, $60, $D1, $D0, $D1, $00, $0C, $08, $00, $D0, $B2
  .byte $D5, $B2, $06, $B3, $3E, $B3, $75, $B3, $AD, $B3, $B2, $B3, $EE, $B3, $23, $B4
  .byte $5A, $B4, $5F, $B4, $92, $B4, $C7, $B4, $FD, $B4, $35, $B5, $6C, $B5, $A2, $B5
  .byte $A7, $B5, $E1, $B5, $1B, $B6, $53, $B6, $8C, $B6, $1B, $50, $1B, $57, $00
  .byte "I am "
  .byte $1B, $53, $2E, $1B, $57, $0A
  .byte "My ancestors were"
  .byte $0A
  .byte "nobles, but now I"
  .byte $1B, $57, $00
  .byte "toil as a trader"
  .byte $0A
  .byte "in Lisbon."
  .byte $1B
  .byte "W Over"
  .byte $0A
  .byte "the last 100 years"
  .byte $1B, $57, $00
  .byte "Portugal, my home,"
  .byte $0A
  .byte "has prospered as"
  .byte $0A
  .byte "new sea routes"
  .byte $1B, $57, $1B, $58, $00
  .byte "opened, yet I have"
  .byte $0A
  .byte "struggled while"
  .byte $0A
  .byte "others profited."
  .byte $1B, $57, $1B, $58, $00, $1B, $50, $1B, $57, $00
  .byte "Ah Christiana-"
  .byte $1B
  .byte "W our"
  .byte $0A
  .byte "fair Princess!"
  .byte $1B
  .byte "W Her"
  .byte $0A
  .byte "beauty takes my"
  .byte $1B, $57, $00
  .byte "breath away."
  .byte $1B
  .byte "W Her"
  .byte $0A
  .byte "father wishes to"
  .byte $0A
  .byte "marry her to a"
  .byte $1B, $57, $00
  .byte "Spaniard who will"
  .byte $0A
  .byte "succeed him as"
  .byte $0A
  .byte "King of Portugal."
  .byte $1B, $57, $1B, $57, $00, $1B, $50, $1B, $57, $00
  .byte "This is my partner"
  .byte $0A
  .byte "and friend, the"
  .byte $0A
  .byte "old sailor."
  .byte $1B, $57, $1B, $57, $00
  .byte "One year ago he"
  .byte $0A
  .byte "sailed for India"
  .byte $0A
  .byte "with my father in"
  .byte $1B, $57, $00
  .byte "hopes of restoring"
  .byte $0A
  .byte "my family to"
  .byte $0A
  .byte "nobility."
  .byte $1B
  .byte "W Yet, as"
  .byte $1B, $57, $00
  .byte "they sailed home a"
  .byte $0A
  .byte "great storm swept"
  .byte $0A
  .byte "them out to sea,"
  .byte $1B, $57, $00
  .byte "killing my father."
  .byte $1B, $57, $0A
  .byte "The old sailor"
  .byte $0A
  .byte "survived to tell"
  .byte $1B, $57, $00
  .byte "me his last words:"
  .byte $1B, $57, $0A, $22
  .byte "Never give up"
  .byte $0A
  .byte "your dreams!"
  .byte $22, $1B, $57, $1B, $57, $00, $1B, $50, $1B, $57, $00
  .byte "His words gave me"
  .byte $0A
  .byte "strength."
  .byte $1B
  .byte "W I began"
  .byte $0A
  .byte "to prepare my own"
  .byte $1B, $57, $00
  .byte "voyage."
  .byte $1B
  .byte "W I used my"
  .byte $0A
  .byte "savings for a ship"
  .byte $0A
  .byte "I call the "
  .byte $1B, $46, $2E, $1B, $57, $1B, $57, $00
  .byte "And with the help"
  .byte $0A
  .byte "of the old sailor"
  .byte $0A
  .byte "I started trading"
  .byte $1B, $57, $00
  .byte "with nearby ports."
  .byte $1B, $57, $0A
  .byte "I knew that in"
  .byte $0A
  .byte "time I would build"
  .byte $1B, $57, $00
  .byte "a great fleet and"
  .byte $0A
  .byte "seek adventure in"
  .byte $0A
  .byte "Uncharted Waters."
  .byte $1B, $57, $1B, $57, $1B, $57, $00, $00, $00, $F7, $6E, $4A, $39, $FF, $4F, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $FF, $7F, $00, $00, $5F, $08, $5F, $08, $5F, $08, $5F
  .byte $08, $5B, $08, $57, $08, $F7, $6E, $57, $08, $57, $08, $00, $00, $5B, $08, $57
  .byte $08, $57, $08, $57, $08, $FF, $7F, $00, $00, $5F, $08, $DF, $08, $DF, $08, $DF
  .byte $08, $DF, $18, $5F, $09, $F7, $6E, $DF, $09, $DF, $09, $00, $00, $5F, $09, $DF
  .byte $09, $DF, $09, $DF, $09, $FF, $7F, $00, $00, $DF, $09, $DF, $09, $DF, $19, $DF
  .byte $29, $DF, $09, $DF, $19, $F7, $6E, $7F, $1B, $7F, $1B, $00, $00, $7F, $1A, $FF
  .byte $0A, $7F, $1B, $7F, $1B, $FF, $7F, $00, $00, $DF, $09, $DF, $19, $DF, $29, $7F
  .byte $3A, $DF, $19, $7F, $2A, $F7, $6E, $FF, $33, $FF, $33, $00, $00, $FF, $2A, $7F
  .byte $2B, $FF, $33, $FF, $33, $FF, $7F, $00, $00, $DF, $19, $DF, $29, $7F, $3A, $FF
  .byte $4E, $7F, $2A, $FF, $2A, $F7, $6E, $FF, $7F, $FF, $7F, $00, $00, $FF, $2A, $7F
  .byte $5F, $FF, $7F, $FF, $7F, $FF, $7F, $00, $00, $5F, $08, $DF, $08, $DF, $08, $DF
  .byte $08, $DB, $39, $DB, $19, $F7, $6E, $DF, $09, $DF, $09, $00, $00, $5F, $09, $DF
  .byte $09, $DF, $09, $DF, $09, $FF, $7F, $00, $00, $5F, $08, $5F, $08, $5F, $08, $5F
  .byte $08
  .byte "[){:"
  .byte $F7, $6E, $5F, $08, $5F, $08, $00, $00, $5F, $09, $DF, $39, $5F, $29, $DB, $39
  .byte $FF, $7F, $00, $00, $5F, $08, $5F, $08, $5F, $08, $5F, $08, $5B, $29, $DB
  .byte "9s^_"
  .byte $08, $5F, $08, $00, $00, $5F, $09, $DF, $39, $5F, $29, $DB, $39, $FF, $7F, $00
  .byte $00, $5F, $08, $5F, $08, $5F, $08, $5F, $08, $5B, $29, $D7, $39, $CE, $4D, $5F
  .byte $08, $5F, $08, $00, $00, $5B, $29, $D7, $39, $5B, $29, $D7, $39, $FF, $7F, $00
  .byte $00, $5F, $08, $5F, $08, $5F, $08, $5F, $08, $5B, $10, $57, $08, $4A, $39, $5F
  .byte $08, $5F, $08, $00, $00, $5B, $08, $57, $08, $5B, $08, $57, $08, $FF, $7F, $00
  .byte $00, $5F, $08, $5F, $08, $5F, $08, $5F, $08, $57, $08, $4E, $08, $C6, $28, $5F
  .byte $08, $5F, $08, $00, $00, $57, $08, $4E, $08, $57, $08, $4E, $08, $FF, $7F, $00
  .byte $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $84
  .byte "(J9J9J9J9"
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $10
  .byte "J9J9J9J9"
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $10, $42, $18
  .byte "J9J9J9"
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $10, $42, $18, $84
  .byte " J9J9"
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $10, $42, $18, $84, $20, $C6, $28, $4A, $39
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $10, $42, $18, $84, $20, $C6, $28, $08, $31
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $20, $42, $18, $84, $20, $C6, $28, $08, $31
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $38, $42, $30, $84, $20, $C6, $28, $08, $31
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $4C, $46, $38, $84, $20, $C6, $28, $08, $31
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^J9"
  .byte $CE, $4D, $8C, $45, $55, $19, $06, $64, $48, $4C, $84, $28, $C6, $30, $08, $39
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5, $66, $73, $5E, $08, $31
  .byte $CE, $4D, $8C, $45, $55, $19, $84, $28, $08, $31, $08, $31, $08, $31, $08, $31
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5, $66, $73, $5E, $C6, $28
  .byte $CE, $4D, $8C, $45, $55, $19, $84, $28, $C6, $28, $C6, $28, $C6, $28, $C6, $28
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5, $66, $73, $5E, $84, $20
  .byte $CE, $4D, $8C, $45, $55, $19, $42, $18, $84, $20, $84, $20, $84, $20, $84, $20
  .byte $F7, $6E, $FF, $7F, $00, $00, $7B, $7F, $F7, $6E, $B5, $66, $73, $5E, $00, $00
  .byte $CE, $4D, $8C, $45, $55, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $F7, $6E, $FF, $7F, $00, $00, $01, $00, $02, $00, $03, $00, $04, $00, $03, $00
  .byte $02, $00, $05, $00, $06, $00, $06, $00, $07, $00, $08, $00, $09, $00, $0A, $00
  .byte $84, $62, $FC, $62, $74, $63, $EC, $63, $64, $64, $1B, $48, $00, $0A, $00, $1B
  .byte $43, $30, $1B, $52, $27, $1B, $3D, $2E, $27, $00, $3F, $FF, $00, $B0, $80, $88
  .byte $78, $90, $70, $98, $68, $A0, $60, $A8, $58, $B0, $50, $B8, $4C, $BC, $48, $C0
  .byte $44, $C4, $40, $C8, $3F, $C9, $3D, $CB, $3B, $CD, $39, $CF, $38, $D0, $37, $D1
  .byte $36, $D2, $35, $D3, $34, $D4, $33, $D5, $32, $D6, $31, $D7, $30, $D8, $2F, $D9
  .byte $31, $D7, $32, $D6, $33, $D5, $34, $D4, $35, $D3, $36, $D2, $37, $D1, $38, $D0
  .byte $39, $CF, $3B, $CD, $3D, $CB, $3F, $C9, $40, $C8, $44, $C4, $48, $C0, $4C, $BC
  .byte $50, $B8, $58, $B0, $60, $A8, $68, $A0, $70, $98, $78, $90, $80, $88, $80, $FF
  .byte $00, $00, $01, $0C, $01, $0C, $01, $0C, $01, $0C, $02, $0C, $03, $0C, $04, $0C
  .byte $01, $0C, $01, $0C, $01, $0C, $01, $0C, $01, $0C, $01, $0C, $05, $0C, $06, $0C
  .byte $07, $0C, $08, $0C, $09, $0C, $01, $0C, $01, $0C, $01, $0C, $01, $0C, $0A, $0C
  .byte $0B, $0C, $0C, $0C, $0D, $0C, $0E, $0C, $0F, $0C, $01, $0C, $01, $0C, $01, $0C
  .byte $01, $0C, $10, $0C, $11, $0C, $12, $0C, $13, $0C, $14, $0C, $15, $0C, $01, $0C
  .byte $01, $0C, $01, $0C, $16, $0C, $17, $0C, $18, $0C, $19, $0C, $1A, $0C, $1B, $0C
  .byte $1C, $0C, $1D, $0C, $01, $0C, $01, $0C, $1E, $0C, $1F, $0C, $20, $0C, $21, $0C
  .byte $22, $0C, $23, $0C, $24, $0C, $25, $0C, $01, $0C, $01, $0C, $26, $0C, $27, $0C
  .byte $28, $0C, $29, $0C, $2A, $0C, $2B, $0C, $2C, $0C, $2D, $0C, $2E, $0C, $2F, $0C
  .byte $30, $0C, $31, $0C, $32, $0C, $33, $0C, $34, $0C, $35, $0C, $36, $0C, $37, $0C
  .byte $01, $0C, $38, $0C, $39, $0C, $3A, $0C, $3B, $0C, $3C, $0C, $3D, $0C, $3E, $0C
  .byte $3F, $0C, $40, $0C, $01, $0C, $01, $0C, $41, $0C, $42, $0C, $43, $0C, $44, $0C
  .byte $45, $0C, $46, $0C, $47, $0C, $48, $0C, $01, $0C, $01, $0C, $01, $0C, $49, $0C
  .byte $4A, $0C, $4B, $0C, $4C, $0C, $4D, $0C, $4E, $0C, $4F, $0C, $01, $0C, $01, $0C
  .byte $50, $0C, $51, $0C, $52, $0C, $53, $0C, $54, $0C, $55, $0C, $56, $0C, $57, $0C
  .byte $58, $0C, $CE, $08, $CF, $08, $D0, $08, $D1, $08, $D2, $08, $D3, $08, $D4, $08
  .byte $D3, $08, $D5, $08, $D6, $08, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $D3, $08
  .byte $D3, $08, $D3, $08, $D7, $08, $D3, $08, $D8, $08, $D9, $08, $DA, $08, $DB, $08
  .byte $DC, $08, $DD, $08, $DE, $08, $DF, $08, $E0, $08, $E1, $08, $E2, $08, $E3, $08
  .byte $CE, $08, $CE, $08, $E4, $08, $E5, $08, $E6, $08, $E7, $08, $E8, $08, $E9, $08
  .byte $EA, $08, $EB, $08, $EC, $08, $ED, $08, $EE, $08, $EF, $08, $F0, $08, $F1, $08
  .byte $F2, $08, $F3, $08, $F4, $08, $F5, $08, $F6, $08, $F7, $08, $F8, $08, $F9, $08
  .byte $FA, $08, $FB, $08, $FC, $08, $FD, $08, $FE, $08, $FF, $08, $00, $09, $01, $09
  .byte $CE, $08, $CE, $08, $02, $09, $03, $09, $04, $09, $05, $09, $06, $09, $07, $09
  .byte $08, $09, $09, $09, $0A, $09, $0B, $09, $0C, $09, $0D, $09, $0E, $09, $0F, $09
  .byte $10, $09, $11, $09, $12, $09, $13, $09, $14, $09, $15, $09, $16, $09, $17, $09
  .byte $18, $09, $19, $09, $1A, $09, $1B, $09, $1C, $09, $1D, $09, $1E, $09, $1F, $09
  .byte $CE, $08, $CE, $08, $20, $09, $21, $09, $22, $09, $23, $09, $24, $09, $25, $09
  .byte $26, $09, $27, $09, $28, $09, $D3, $08, $29, $09, $2A, $09, $2B, $09, $2C, $09
  .byte $2D, $09, $2E, $09, $2F, $09, $30, $09, $31, $09, $32, $09, $33, $09, $34, $09
  .byte $35, $09, $36, $09, $37, $09, $38, $09, $39, $09, $3A, $09, $3B, $09, $3C, $09
  .byte $CE, $08, $CE, $08, $3D, $09, $3E, $09, $3F, $09, $40, $09, $41, $09, $42, $09
  .byte $43, $09, $44, $09, $45, $09, $46, $09, $47, $09, $48, $09, $49, $09, $4A, $09
  .byte $4B, $09, $4C, $09, $4D, $09, $4E, $09, $D3, $08, $4F, $09, $50, $09, $51, $09
  .byte $D3, $08, $D3, $08, $52, $09, $53, $09, $54, $09, $55, $09, $56, $09, $57, $09
  .byte $CE, $08, $CE, $08, $58, $09, $59, $09, $5A, $09, $5B, $09, $D3, $08, $5C, $09
  .byte $5D, $09, $5E, $09, $5F, $09, $60, $09, $61, $09, $D3, $08, $D3, $08, $62, $09
  .byte $63, $09, $64, $09, $65, $09, $D3, $08, $D3, $08, $66, $09, $67, $09, $68, $09
  .byte $D3, $08, $D3, $08, $D3, $08, $69, $09, $6A, $09, $6B, $09, $6C, $09, $6D, $09
  .byte $CE, $08, $CE, $08, $6E, $09, $6F, $09, $70, $09, $71, $09, $72, $09, $73, $09
  .byte $74, $09, $75, $09, $76, $09, $77, $09, $78, $09, $79, $09, $7A, $09, $7B, $09
  .byte $7C, $09, $7D, $09, $D3, $08, $D3, $08, $D3, $08, $52, $09, $7E, $09, $7F, $09
  .byte $80, $09, $D3, $08, $D3, $08, $81, $09, $82, $09, $83, $09, $84, $09, $85, $09
  .byte $86, $09, $CE, $08, $87, $09, $88, $09, $89, $09, $8A, $09, $8B, $09, $8C, $09
  .byte $8D, $09, $8E, $09, $8F, $09, $90, $09, $91, $09, $92, $09, $93, $09, $94, $09
  .byte $95, $09, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $96, $09, $97, $09
  .byte $98, $09, $99, $09, $D3, $08, $9A, $09, $9B, $09, $9C, $09, $9D, $09, $9E, $09
  .byte $CE, $08, $CE, $08, $9F, $09, $A0, $09, $A1, $09, $A2, $09, $A3, $09, $A4, $09
  .byte $A5, $09, $A6, $09, $A7, $09, $A8, $09, $A9, $09, $AA, $09, $AB, $09, $AC, $09
  .byte $D3, $08, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $AD, $09, $AE, $09, $AF, $09
  .byte $B0, $09, $B1, $09, $52, $09, $B2, $09, $B3, $09, $B4, $09, $B5, $09, $B6, $09
  .byte $CE, $08, $CE, $08, $B7, $09, $B8, $09, $B9, $09, $BA, $09, $BB, $09, $BC, $09
  .byte $BD, $09, $BE, $09, $D3, $08, $BF, $09, $C0, $09, $C1, $09, $C2, $09, $C3, $09
  .byte $C4, $09, $C5, $09, $D3, $08, $D3, $08, $D3, $08, $C6, $09, $C7, $09, $C8, $09
  .byte $C9, $09, $CA, $09, $D3, $08, $52, $09, $CB, $09, $CC, $09, $D3, $08, $CD, $09
  .byte $CE, $08, $CE, $08, $CE, $09, $CF, $09, $D0, $09, $D1, $09, $D2, $09, $D3, $09
  .byte $D4, $09, $D3, $08, $D5, $09, $D6, $09, $D7, $09, $D8, $09, $D9, $09, $DA, $09
  .byte $DB, $09, $DC, $09, $DD, $09, $D3, $08, $D3, $08, $DE, $09, $DF, $09, $E0, $09
  .byte $E1, $09, $E2, $09, $E3, $09, $D3, $08, $E4, $09, $E5, $09, $D3, $08, $E6, $09
  .byte $CE, $08, $CE, $08, $E7, $09, $E8, $09, $E9, $09, $EA, $09, $EB, $09, $EC, $09
  .byte $ED, $09, $EE, $09, $EF, $09, $F0, $09, $F1, $09, $F2, $09, $F3, $09, $F4, $09
  .byte $F5, $09, $F6, $09, $F7, $09, $F8, $09, $D3, $08, $F9, $09, $FA, $09, $FB, $09
  .byte $FC, $09, $FD, $09, $FE, $09, $FF, $09, $00, $0A, $01, $0A, $02, $0A, $03, $0A
  .byte $CE, $08, $CE, $08, $04, $0A, $05, $0A, $06, $0A, $07, $0A, $08, $0A, $09, $0A
  .byte $0A, $0A, $0B, $0A, $0C, $0A, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $D3, $08
  .byte $0D, $0A, $0E, $0A, $0F, $0A, $D3, $08, $10, $0A, $11, $0A, $12, $0A, $13, $0A
  .byte $14, $0A, $15, $0A, $16, $0A, $17, $0A, $18, $0A, $19, $0A, $1A, $0A, $1B, $0A
  .byte $CE, $08, $CE, $08, $1C, $0A, $1D, $0A, $1E, $0A, $1F, $0A, $20, $0A, $21, $0A
  .byte $22, $0A, $23, $0A, $24, $0A, $25, $0A, $26, $0A, $27, $0A, $28, $0A, $EC, $08
  .byte $D3, $08, $29, $0A, $2A, $0A, $2B, $0A, $2C, $0A, $2D, $0A, $2E, $0A, $2F, $0A
  .byte $D3, $08, $D3, $08, $30, $0A, $31, $0A, $32, $0A, $D3, $08, $33, $0A, $34, $0A
  .byte $CE, $08, $CE, $08, $35, $0A, $36, $0A, $37, $0A, $38, $0A, $39, $0A, $3A, $0A
  .byte $3B, $0A, $3C, $0A, $3D, $0A, $3E, $0A, $3F, $0A, $40, $0A, $41, $0A, $42, $0A
  .byte $43, $0A, $44, $0A, $45, $0A, $46, $0A, $47, $0A, $48, $0A, $49, $0A, $4A, $0A
  .byte $4B, $0A, $D3, $08, $D3, $08, $D3, $08, $4C, $0A, $4D, $0A, $4E, $0A, $4F, $0A
  .byte $CE, $08, $CE, $08, $50, $0A, $51, $0A, $D3, $08, $52, $0A, $53, $0A, $54, $0A
  .byte $55, $0A, $D3, $08, $56, $0A, $57, $0A, $58, $0A, $D3, $08, $59, $0A, $5A, $0A
  .byte $5B, $0A, $5C, $0A, $5D, $0A, $5E, $0A, $5F, $0A, $D3, $08, $60, $0A, $61, $0A
  .byte $62, $0A, $D3, $08, $D3, $08, $D3, $08, $63, $0A, $64, $0A, $65, $0A, $66, $0A
  .byte $CE, $08, $CE, $08, $67, $0A, $68, $0A, $D3, $08, $69, $0A, $6A, $0A, $6B, $0A
  .byte $6C, $0A, $6D, $0A, $6E, $0A, $6F, $0A, $D3, $08, $D3, $08, $70, $0A, $71, $0A
  .byte $72, $0A, $73, $0A, $74, $0A, $D3, $08, $75, $0A, $D3, $08, $D3, $08, $D3, $08
  .byte $76, $0A, $77, $0A, $78, $0A, $79, $0A, $7A, $0A, $7B, $0A, $7C, $0A, $7D, $0A
  .byte $CE, $08, $CE, $08, $7E, $0A, $7F, $0A, $80, $0A, $81, $0A, $82, $0A, $83, $0A
  .byte $84, $0A, $85, $0A, $86, $0A, $87, $0A, $D3, $08, $88, $0A, $89, $0A, $8A, $0A
  .byte $8B, $0A, $8C, $0A, $D3, $08, $D3, $08, $D3, $08, $8D, $0A, $8E, $0A, $D3, $08
  .byte $8F, $0A, $90, $0A, $91, $0A, $92, $0A, $93, $0A, $94, $0A, $95, $0A, $96, $0A
  .byte $CE, $08, $CE, $08, $97, $0A, $98, $0A, $99, $0A, $9A, $0A, $9B, $0A, $9C, $0A
  .byte $9D, $0A, $9E, $0A, $9F, $0A, $A0, $0A, $A1, $0A, $D6, $08, $D3, $08, $A2, $0A
  .byte $D3, $08, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $A3, $0A, $A4, $0A, $A5, $0A
  .byte $A6, $0A, $A7, $0A, $A8, $0A, $A9, $0A, $AA, $0A, $AB, $0A, $AC, $0A, $AD, $0A
  .byte $CE, $08, $CE, $08, $AE, $0A, $AF, $0A, $B0, $0A, $36, $09, $D3, $08, $B1, $0A
  .byte $B2, $0A, $B3, $0A, $B4, $0A, $B5, $0A, $B6, $0A, $B5, $09, $B7, $0A, $B8, $0A
  .byte $D3, $08, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $B9, $0A, $BA, $0A, $BB, $0A
  .byte $D2, $08, $BC, $0A, $BD, $0A, $BE, $0A, $BF, $0A, $C0, $0A, $C1, $0A, $C2, $0A
  .byte $CE, $08, $CE, $08, $C3, $0A, $C4, $0A, $C5, $0A, $C6, $0A, $D3, $08, $C7, $0A
  .byte $C8, $0A, $D3, $08, $C9, $0A, $CA, $0A, $CB, $0A, $CC, $0A, $8C, $0A, $CD, $0A
  .byte $D3, $08, $D3, $08, $CE, $0A, $CF, $0A, $D0, $0A, $F1, $08, $D1, $0A, $D3, $08
  .byte $D2, $0A, $D3, $0A, $D4, $0A, $D3, $08, $D5, $0A, $D3, $08, $D6, $0A, $D7, $0A
  .byte $CE, $08, $CE, $08, $D8, $0A, $D9, $0A, $DA, $0A, $DB, $0A, $EC, $08, $DC, $0A
  .byte $DD, $0A, $DE, $0A, $DF, $0A, $E0, $0A, $E1, $0A, $E2, $0A, $E3, $0A, $E4, $0A
  .byte $E5, $0A, $E6, $0A, $E7, $0A, $E8, $0A, $E9, $0A, $D3, $08, $D3, $08, $D3, $08
  .byte $EA, $0A, $EB, $0A, $EC, $0A, $ED, $0A, $EE, $0A, $EF, $0A, $F0, $0A, $F1, $0A
  .byte $CE, $08, $CE, $08, $F2, $0A, $F3, $0A, $F4, $0A, $F5, $0A, $D3, $08, $F6, $0A
  .byte $D3, $08, $F7, $0A, $F8, $0A, $F9, $0A, $D3, $08, $D3, $08, $FA, $0A, $FB, $0A
  .byte $FC, $0A, $FD, $0A, $FE, $0A, $FF, $0A, $00, $0B, $01, $0B, $02, $0B, $03, $0B
  .byte $D3, $08, $D3, $08, $04, $0B, $D3, $08, $D3, $08, $05, $0B, $06, $0B, $07, $0B
  .byte $CE, $08, $CE, $08, $08, $0B, $09, $0B, $0A, $0B, $0B, $0B, $0C, $0B, $0D, $0B
  .byte $0E, $0B, $0F, $0B, $10, $0B, $11, $0B, $12, $0B, $13, $0B, $14, $0B, $15, $0B
  .byte $16, $0B, $17, $0B, $D3, $08, $18, $0B, $19, $0B, $D3, $08, $D3, $08, $D3, $08
  .byte $D3, $08, $D3, $08, $D3, $08, $04, $0B, $1A, $0B, $1B, $0B, $1C, $0B, $1D, $0B
  .byte $CE, $08, $CE, $08, $1E, $0B, $1F, $0B, $20, $0B, $21, $0B, $22, $0B, $23, $0B
  .byte $24, $0B, $25, $0B, $26, $0B, $27, $0B, $28, $0B, $29, $0B, $2A, $0B, $2B, $0B
  .byte $2C, $0B, $2D, $0B, $2E, $0B, $2F, $0B, $30, $0B, $D3, $08, $31, $0B, $32, $0B
  .byte $33, $0B, $34, $0B, $D3, $08, $35, $0B, $36, $0B, $37, $0B, $38, $0B, $39, $0B
  .byte $CE, $08, $CE, $08, $3A, $0B, $3B, $0B, $3C, $0B, $3D, $0B, $3E, $0B, $3F, $0B
  .byte $40, $0B, $D3, $08, $41, $0B, $42, $0B, $43, $0B, $44, $0B, $45, $0B, $46, $0B
  .byte $47, $0B, $D3, $08, $48, $0B, $49, $0B, $4A, $0B, $4B, $0B, $4C, $0B, $4D, $0B
  .byte $4E, $0B, $D3, $08, $D3, $08, $D3, $08, $D3, $08, $4F, $0B, $50, $0B, $51, $0B
  .byte $CE, $08, $CE, $08, $52, $0B, $53, $0B, $54, $0B, $55, $0B, $56, $0B, $57, $0B
  .byte $58, $0B, $59, $0B, $5A, $0B, $5B, $0B, $D3, $08, $D3, $08, $D3, $08, $D3, $08
  .byte $D3, $08, $D3, $08, $5C, $0B, $5D, $0B, $5E, $0B, $5F, $0B, $60, $0B, $61, $0B
  .byte $62, $0B, $63, $0B, $64, $0B, $65, $0B, $66, $0B, $67, $0B, $68, $0B, $69, $0B
  .byte $CE, $08, $CE, $08, $6A, $0B, $6B, $0B, $6C, $0B, $6D, $0B, $6E, $0B, $6F, $0B
  .byte $70, $0B, $71, $0B, $72, $0B, $73, $0B, $74, $0B, $75, $0B, $75, $0B, $75, $0B
  .byte $76, $0B, $77, $0B, $75, $0B, $75, $0B, $78, $0B, $79, $0B, $7A, $0B, $7B, $0B
  .byte $7C, $0B, $7D, $0B, $7E, $0B, $7F, $0B, $80, $0B, $81, $0B, $82, $0B, $83, $0B
  .byte $CE, $08, $CE, $08, $CE, $08, $CE, $08, $CE, $08, $CF, $08, $D0, $08, $D1, $08
  .byte $D2, $08, $D3, $08, $D4, $08, $CE, $08, $D5, $08, $D6, $08, $D7, $08, $D8, $08
  .byte $D9, $08, $DA, $08, $DB, $08, $DC, $08, $DD, $08, $DE, $08, $DF, $08, $E0, $08
  .byte $E1, $08, $E2, $08, $E3, $08, $DE, $08, $E4, $08, $E5, $08, $CE, $08, $CE, $08
  .byte $CE, $08, $E6, $08, $E7, $08, $E8, $08, $E9, $08, $EA, $08, $EB, $08, $EB, $08
  .byte $EB, $08, $EB, $08, $EC, $08, $ED, $08, $EE, $08, $EF, $08, $F0, $08, $F1, $08
  .byte $F2, $08, $F3, $08, $F4, $08, $F5, $08, $F6, $08, $F7, $08, $F8, $08, $DE, $08
  .byte $F9, $08, $FA, $08, $FB, $08, $FC, $08, $FD, $08, $FE, $08, $FF, $08, $00, $09
  .byte $01, $09, $EB, $08, $EB, $08, $02, $09, $03, $09, $04, $09, $EB, $08, $EB, $08
  .byte $EB, $08, $05, $09, $06, $09, $07, $09, $EB, $08, $08, $09, $09, $09, $0A, $09
  .byte $0B, $09, $CE, $08, $0C, $09, $0D, $09, $0E, $09, $0F, $09, $10, $09, $11, $09
  .byte $12, $09, $CE, $08, $CE, $08, $13, $09, $14, $09, $EB, $08, $15, $09, $16, $09
  .byte $17, $09, $18, $09, $19, $09, $EB, $08, $EB, $08, $EB, $08, $1A, $09, $1B, $09
  .byte $EB, $08, $1C, $09, $1D, $09, $EB, $08, $1E, $09, $1F, $09, $20, $09, $21, $09
  .byte $22, $09, $23, $09, $24, $09, $25, $09, $26, $09, $CE, $08, $CE, $08, $CE, $08
  .byte $CE, $08, $CE, $08, $27, $09, $28, $09, $29, $09, $2A, $09, $2B, $09, $EB, $08
  .byte $EB, $08, $2C, $09, $2D, $09, $2E, $09, $2F, $09, $30, $09, $DE, $08, $31, $09
  .byte $32, $09, $33, $09, $34, $09, $35, $09, $36, $09, $37, $09, $38, $09, $39, $09
  .byte $3A, $09, $3B, $09, $CE, $08, $CE, $08, $3C, $09, $3D, $09, $CE, $08, $CE, $08
  .byte $CE, $08, $CE, $08, $CE, $08, $CE, $08, $3E, $09, $3F, $09, $40, $09, $41, $09
  .byte $42, $09, $43, $09, $44, $09, $0A, $09, $45, $09, $46, $09, $47, $09, $48, $09
  .byte $49, $09, $4A, $09, $4B, $09, $CE, $08, $4C, $09, $4D, $09, $4E, $09, $4F, $09
  .byte $50, $09, $51, $09, $52, $09, $53, $09, $54, $09, $55, $09, $56, $09, $57, $09
  .byte $58, $09, $59, $09, $5A, $09, $CE, $08, $5B, $09, $5C, $09, $5D, $09, $5E, $09
  .byte $5F, $09, $60, $09, $61, $09, $62, $09, $63, $09, $64, $09, $65, $09, $66, $09
  .byte $67, $09, $68, $09, $CE, $08, $69, $09, $6A, $09, $6B, $09, $6C, $09, $6D, $09
  .byte $6E, $09, $6F, $09, $70, $09, $71, $09, $71, $09, $72, $09, $73, $09, $74, $09
  .byte $75, $09, $76, $09, $77, $09, $78, $09, $CE, $08, $79, $09, $7A, $09, $7B, $09
  .byte $7C, $09, $7D, $09, $7E, $09, $7F, $09, $CE, $08, $CE, $08, $CE, $08, $CE, $08
  .byte $CE, $08, $80, $09, $81, $09, $82, $09, $83, $09, $84, $09, $85, $09, $86, $09
  .byte $87, $09, $88, $09, $89, $09, $8A, $09, $8B, $09, $8C, $09, $8D, $09, $8E, $09
  .byte $8F, $09, $90, $09, $91, $09, $92, $09, $CE, $08, $CE, $08, $CE, $08, $CE, $08
  .byte $93, $09, $94, $09, $95, $09, $96, $09, $97, $09, $98, $09, $99, $09, $9A, $09
  .byte $9A, $09, $9A, $09, $9A, $09, $9A, $09, $9A, $09, $9A, $09, $9A, $09, $9A, $09
  .byte $9A, $09, $9B, $09, $9C, $09, $9D, $09, $9E, $09, $9F, $09, $A0, $09, $9A, $09
  .byte $A1, $09, $A2, $09, $A3, $09, $A4, $09, $A5, $09, $A6, $09, $A7, $09, $A8, $09
  .byte $A9, $09, $AA, $09, $AB, $09, $AC, $09, $AD, $09, $AE, $09, $AF, $09, $B0, $09
  .byte $B1, $09, $B2, $09, $B3, $09, $B4, $09, $B5, $09, $B6, $09, $B7, $09, $B8, $09
  .byte $B8, $09, $B8, $09, $B9, $09, $BA, $09, $BB, $09, $BC, $09, $BD, $09, $BE, $09
  .byte $BF, $09, $C0, $09, $C1, $09, $C2, $09, $C3, $09, $C4, $09, $C5, $09, $C6, $09
  .byte $C7, $09, $C8, $09, $C9, $09, $CA, $09, $CB, $09, $CC, $09, $CD, $09, $CE, $09
  .byte $CF, $09, $D0, $09, $D1, $09, $D2, $09, $D3, $09, $D4, $09, $D5, $09, $D6, $09
  .byte $D6, $09, $D6, $09, $D6, $09, $D6, $09, $D7, $09, $D8, $09, $D9, $09, $DA, $09
  .byte $DB, $09, $DC, $09, $DD, $09, $DE, $09, $DF, $09, $E0, $09, $E1, $09, $E2, $09
  .byte $E3, $09, $E4, $09, $E5, $09, $E3, $09, $E6, $09, $E7, $09, $E8, $09, $E9, $09
  .byte $EA, $09, $EB, $09, $EC, $09, $ED, $09, $EE, $09, $EF, $09, $F0, $09, $F1, $09
  .byte $F2, $09, $F2, $09, $F3, $09, $F4, $09, $F5, $09, $F6, $09, $F7, $09, $F8, $09
  .byte $F9, $09, $DF, $09, $FA, $09, $E1, $09, $FB, $09, $E3, $09, $FC, $09, $FD, $09
  .byte $FE, $09, $FF, $09, $00, $0A, $01, $0A, $02, $0A, $E3, $09, $03, $0A, $04, $0A
  .byte $05, $0A, $06, $0A, $DF, $09, $07, $0A, $08, $0A, $09, $0A, $0A, $0A, $0B, $0A
  .byte $0B, $0A, $0B, $0A, $0C, $0A, $0D, $0A, $0E, $0A, $0F, $0A, $DF, $09, $10, $0A
  .byte $E1, $09, $FB, $09, $E3, $09, $11, $0A, $12, $0A, $13, $0A, $71, $09, $14, $0A
  .byte $15, $0A, $16, $0A, $17, $0A, $18, $0A, $71, $09, $19, $0A, $1A, $0A, $1B, $0A
  .byte $E5, $09, $E3, $09, $1C, $0A, $04, $0A, $1D, $0A, $1E, $0A, $1F, $0A, $20, $0A
  .byte $21, $0A, $1F, $0A, $1E, $0A, $22, $0A, $23, $0A, $24, $0A, $25, $0A, $E3, $09
  .byte $26, $0A, $27, $0A, $28, $0A, $29, $0A, $71, $09, $2A, $0A, $2B, $0A, $2C, $0A
  .byte $2D, $0A, $2E, $0A, $2F, $0A, $30, $0A, $31, $0A, $32, $0A, $18, $0A, $71, $09
  .byte $33, $0A, $34, $0A, $35, $0A, $36, $0A, $37, $0A, $38, $0A, $39, $0A, $39, $0A
  .byte $39, $0A, $39, $0A, $3A, $0A, $38, $0A, $3B, $0A, $3C, $0A, $3D, $0A, $FE, $09
  .byte $71, $09, $3E, $0A, $3F, $0A, $40, $0A, $41, $0A, $42, $0A, $43, $0A, $44, $0A
  .byte $45, $0A, $46, $0A, $46, $0A, $47, $0A, $48, $0A, $49, $0A, $42, $0A, $4A, $0A
  .byte $4B, $0A, $4C, $0A, $4D, $0A, $4E, $0A, $4F, $0A, $71, $09, $71, $09, $71, $09
  .byte $71, $09, $71, $09, $50, $0A, $51, $0A, $52, $0A, $53, $0A, $54, $0A, $55, $0A
  .byte $41, $0A, $42, $0A, $56, $0A, $57, $0A, $58, $0A, $59, $0A, $46, $0A, $46, $0A
  .byte $5A, $0A, $5B, $0A, $5C, $0A, $46, $0A, $46, $0A, $46, $0A, $5D, $0A, $5E, $0A
  .byte $5F, $0A, $60, $0A, $61, $0A, $62, $0A, $42, $0A, $42, $0A, $42, $0A, $42, $0A
  .byte $42, $0A, $42, $0A, $42, $0A, $42, $0A, $2D, $0A, $62, $0A, $63, $0A, $64, $0A
  .byte $65, $0A, $66, $0A, $67, $0A, $46, $0A, $46, $0A, $46, $0A, $68, $0A, $69, $0A
  .byte $6A, $0A, $DE, $08, $DE, $08, $6B, $0A, $6C, $0A, $6D, $0A, $6E, $0A, $6F, $0A
  .byte $70, $0A, $70, $0A, $46, $0A, $46, $0A, $46, $0A, $46, $0A, $71, $0A, $71, $0A
  .byte $71, $0A, $71, $0A, $72, $0A, $46, $0A, $46, $0A, $73, $0A, $70, $0A, $74, $0A
  .byte $75, $0A, $76, $0A, $77, $0A, $78, $0A, $79, $0A, $7A, $0A, $DE, $08, $DE, $08
  .byte $DE, $08, $7B, $0A, $7C, $0A, $7D, $0A, $7E, $0A, $7F, $0A, $80, $0A, $DE, $08
  .byte $DE, $08, $DE, $08, $DE, $08, $DE, $08, $81, $0A, $82, $0A, $83, $0A, $84, $0A
  .byte $84, $0A, $85, $0A, $82, $0A, $86, $0A, $DE, $08, $DE, $08, $DE, $08, $DE, $08
  .byte $DE, $08, $87, $0A, $7E, $0A, $88, $0A, $89, $0A, $8A, $0A, $8B, $0A, $8C, $0A
  .byte $8D, $0A, $8E, $12, $8F, $12, $90, $12, $91, $12, $92, $12, $93, $12, $94, $12
  .byte $95, $12, $96, $12, $97, $12, $98, $12, $99, $12, $9A, $12, $9B, $12, $9C, $12
  .byte $9C, $12, $9D, $12, $9E, $12, $9F, $12, $A0, $12, $A1, $12, $A2, $12, $A3, $12
  .byte $9C, $12, $9C, $12, $A4, $12, $A5, $12, $A6, $12, $A7, $12, $A8, $12, $A9, $12
  .byte $AA, $12, $AB, $12, $AC, $12, $9C, $12, $9C, $12, $AD, $12, $AE, $12, $9F, $12
  .byte $A0, $12, $A1, $12, $A2, $12, $AF, $12, $9C, $12, $9C, $12, $B0, $12, $B1, $12
  .byte $B2, $12, $B3, $12, $B4, $12, $B5, $12, $B6, $12, $B7, $12, $B8, $12, $9C, $12
  .byte $9C, $12, $B9, $12, $BA, $12, $9F, $12, $A0, $12, $A1, $12, $A2, $12, $A3, $12
  .byte $9C, $12, $9C, $12, $BB, $12, $BC, $12, $BD, $12, $BE, $12, $BF, $12, $C0, $12
  .byte $C1, $12, $C2, $12, $C3, $12, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B, $08, $0B, $04, $0B
  .byte $08, $0B, $04, $0B, $08, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A, $00, $0B, $FC, $0A
  .byte $00, $0B, $FC, $0A, $00, $0B, $01, $30, $02, $30, $03, $30, $04, $30, $05, $30
  .byte $06, $30, $07, $30, $08, $30, $09, $30, $0A, $30, $0B, $30, $0C, $30, $0D, $30
  .byte $0E, $30, $0F, $30, $10, $30, $11, $30, $12, $30, $13, $30, $14, $30, $15, $30
  .byte $16, $30, $17, $30, $18, $30, $19, $30, $1A, $30, $1B, $30, $1C, $30, $1D, $30
  .byte $1E, $30, $1F
  .byte "0 0!0"
  .byte $22
  .byte "0#0$0%0&0'0"
  .byte $1C
  .byte "0(0)0*0 0"
  .byte $17, $30, $18, $30, $19
  .byte "0+0,0"
  .byte $1C
  .byte "0-0#0.0 0/000#01020#0304050#0*0 0"
  .byte $17, $30, $18, $30, $19
  .byte "06070"
  .byte $1C
  .byte "08090:0;0<0=0>0:0?0#030@0A0#0*0 0"
  .byte $17, $30, $18, $30, $19
  .byte "0B0C0D0E0F0G0H0I0J0K0L0M0N0O0"
  .byte $1C
  .byte "0P0Q0*0 0"
  .byte $17, $30, $18, $30, $19
  .byte "0R0S0T0U0V0W0X0Y0Z0[0\0]0^0_0`0a0b0*0 0c0d0e0f0g"
  .byte "0h0i0j0k0l0 0"
  .byte $17
  .byte "0m0n0o0p0q0r0s0t0u0v0w0x0y0z0{0|0}0~0"
  .byte $7F, $30, $80, $30, $20, $30, $17, $30, $81, $30, $82, $30, $83, $30, $84, $30
  .byte $85, $30, $86
  .byte "0z0w0"
  .byte $87, $30, $88
  .byte "0z0z0z0z0"
  .byte $89, $30, $8A, $30, $8B, $30, $8C, $30, $8D, $30, $8E, $30, $8F, $30, $90, $30
  .byte $91, $30, $92, $30, $18, $30, $93, $30, $94, $30, $95
  .byte "0z0z0z0z0z0z0z0z0"
  .byte $96, $30, $97, $30, $98, $30, $99, $30, $9A
  .byte "0z0z0z0z0"
  .byte $9B, $30, $9C, $30, $9D, $30, $9E, $30, $9F, $30, $A0, $30, $A1
  .byte "0z0z0z0z0z0z0"
  .byte $A2, $30, $A3
  .byte "0z0z0z0z0z0z0z0z0z0z0"
  .byte $A4, $30, $A5, $30, $A6, $30, $A7
  .byte "0z0z0"
  .byte $00, $3B, $01, $3B, $02, $3B, $03, $3B, $04, $3B, $05, $3B, $06, $3B, $07, $3B
  .byte $08, $3B, $09, $3B, $0A, $3B, $0B, $3B, $0C, $3B, $0D, $3B, $0E, $3B, $0F, $3B
  .byte $10, $3B, $11, $3B, $12, $3B, $13, $3B, $14, $3B, $06, $3B, $15, $3B, $16, $3B
  .byte $17, $3B, $18, $3B, $19, $3B, $1A, $3B, $1B, $3B, $1C, $3B, $1D, $3B, $1E, $3B
  .byte $1F
  .byte "; ;!;"
  .byte $0D, $3B, $22
  .byte ";#;$;%;&;';(;);h2h2h2h2h2h2i2j2k2l2m2n2o2p2q2r2s"
  .byte "2t2u2v2h2h2h2h2h2h2h2h2h2h2h2w2x2y2z2{2|2}2~2"
  .byte $7F, $32, $80, $32, $81, $32, $82, $32, $83, $32, $84
  .byte "2h2h2h2h2h2h2h2h2h2h2h2"
  .byte $85, $32, $86, $32, $87, $32, $88, $32, $89, $32, $8A, $32, $8B, $32, $8C, $32
  .byte $8D, $32, $8E, $32, $8F, $32, $90, $32, $91, $32, $92
  .byte "2h2h2h2h2h2 : : : : :!:"
  .byte $22
  .byte ":#:$:%:%:%:%:&:#:"
  .byte $22
  .byte ":': : : : : : :(:):*:+:,:-:.:/:0:0:0:0:1:.:-:2:3"
  .byte ":4:5:6: :7:8:9::: : : : : : : : : : : : : : :;:<"
  .byte ":=:>:?: : : : : : : : : : : : : : : : : : : : :@"
  .byte ":A:B:C:D: : : : : : : : : : : : : : :E:F:G:H: : "
  .byte ":I:J:K:L:M:N:O:%:%:%:%:P:N:M:Q:R:S:T: : : : : : "
  .byte ": : : :U:V:0:0:0:0:W:U: : : : : : : :%:0:&:1:#:."
  .byte $3A, $22
  .byte ":-:':2:3: :4:;:5:<:6:=:>:@:H:G: :F:T:E:S:R: :Q: "
  .byte ":M: :N:U:P:W:O:V:L: :K: :D:J:C:I:B: :7:?:A:(:8:)"
  .byte ":9:*:::+: :!:,:$:/:X:Y:Z:[:\:]:^:_:`:a:b:c:d:e:f"
  .byte $3A, $67, $3A, $01, $2C, $02, $2C, $03, $2C, $04, $2C, $05, $2C, $06, $2C, $07
  .byte $2C, $08, $2C, $09, $2C, $0A, $2C, $0B, $2C, $0C, $2C, $0D, $2C, $0E, $2C, $0F
  .byte $2C, $10, $2C, $11, $2C, $12, $2C, $13, $2C, $14, $2C, $15, $2C, $16, $2C, $17
  .byte $2C, $18, $2C, $19, $2C, $1A, $2C, $1B, $2C, $1C, $2C, $1D, $2C, $1E, $2C, $1F
  .byte ", ,!,"
  .byte $22
  .byte ",#,$,%,&,',(,),*,+,,,-,.,/,0,1,2,3,4,5,6,7,8,9,:"
  .byte ",;,<,=,>,?,@,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R"
  .byte ",S,T,U,V,W,X,Y,Z,[,\,],^,_,`,a,b,c,d,e,f,g,h,i,j"
  .byte ",k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,{,|,},~,"
  .byte $7F, $2C, $80, $2C, $81, $2C, $82, $2C, $83, $2C, $84, $2C, $85, $2C, $86, $2C
  .byte $87, $2C, $88, $2C, $89, $2C, $8A, $2C, $8B, $2C, $8C, $2C, $8D, $2C, $8E, $2C
  .byte $8F, $2C, $90, $2C, $91, $2C, $92, $2C, $93, $2C, $94, $2C, $95, $2C, $96, $2C
  .byte $97, $2C, $98, $2C, $99, $2C, $9A, $2C, $9B, $2C, $9C, $2C, $9D, $2C, $9E, $2C
  .byte $9F, $2C, $A0, $2C, $A1, $2C, $A2, $2C, $A3, $2C, $A4, $2C, $A5, $2C, $A6, $2C
  .byte $A7, $2C, $A8, $2C, $A9, $2C, $AA, $2C, $AB, $2C, $AC, $2C, $AD, $2C, $AE, $2C
  .byte $AF, $2C, $B0, $2C, $B1, $2C, $B2, $2C, $B3, $2C, $B4, $2C, $B5, $2C, $B6, $2C
  .byte $B7, $2C, $B8, $2C, $B9, $2C, $BA, $2C, $BB, $2C, $BC, $2C, $BD, $2C, $BE, $2C
  .byte $BF, $2C, $C0, $2C, $C1, $2C, $C2, $2C, $C3, $2C, $C4, $2C, $C5, $2C, $C6, $2C
  .byte $C7, $2C, $C8, $2C, $C9, $2C, $CA, $2C, $CB, $2C, $CC, $2C, $CD, $2C, $CE, $2C
  .byte $CF, $2C, $D0, $2C, $D1, $2C, $D2, $2C, $D3, $2C, $D4, $2C, $D5, $2C, $D6, $2C
  .byte $D7, $2C, $D8, $2C, $D9, $2C, $DA, $2C, $DB, $2C, $DC, $2C, $DD, $2C, $DE, $2C
  .byte $DF, $2C, $E0, $2C, $E1, $2C, $E2, $2C, $E3, $2C, $E4, $2C, $E5, $2C, $E6, $2C
  .byte $E7, $2C, $E8, $2C, $E9, $2C, $EA, $2C, $EB, $2C, $EC, $2C, $ED, $2C, $EE, $2C
  .byte $EF, $2C, $F0, $2C, $F1, $2C, $F2, $2C, $F3, $2C, $F4, $2C, $F5, $2C, $F6, $2C
  .byte $F7, $2C, $F8, $2C, $F9, $2C, $FA, $2C, $FB, $2C, $FC, $2C, $FD, $2C, $FE, $2C
  .byte $FF, $2C, $00, $2D, $01, $2D, $02, $2D, $03, $2D, $04, $2D, $05, $2D, $06, $2D
  .byte $07, $2D, $08, $2D, $09, $2D, $0A, $2D, $0B, $2D, $0C, $2D, $0D, $2D, $0E, $2D
  .byte $0F, $2D, $10, $2D, $11, $2D, $12, $2D, $13, $2D, $14, $2D, $15, $2D, $16, $2D
  .byte $17, $2D, $18, $2D, $19, $2D, $1A, $2D, $1B, $2D, $1C, $2D, $1D, $2D, $1E, $2D
  .byte $1F
  .byte "- -!-"
  .byte $22
  .byte "-#-$-%-&-'-(-)-*-+-,---.-/-0-1-2-3-4-5-6-7-8-9-:"
  .byte "-;-<-=->-?-@-A-B-C-D-E-F-G-H-I-J-K-L-M-N-O-P-Q-R"
  .byte "-S-T-U-V-W-X-Y-Z-[-\-]-^-_-`-a-b-c-d-e-f-g-h-i-j"
  .byte "-k-l-m-n-o-p-q-r-s-t-u-v-w-x-y-z-{-|-}-~-"
  .byte $7F, $2D, $80, $2D, $81, $2D, $82, $2D, $83, $2D, $84, $2D, $85, $2D, $86, $2D
  .byte $87, $2D, $88, $2D, $89, $2D, $8A, $2D, $8B, $2D, $8C, $2D, $8D, $2D, $8E, $2D
  .byte $8F, $2D, $90, $2D, $91, $2D, $92, $2D, $93, $2D, $94, $2D, $95, $2D, $96, $2D
  .byte $97, $2D, $98, $2D, $99, $2D, $9A, $2D, $9B, $2D, $9C, $2D, $9D, $2D, $9E, $2D
  .byte $9F, $2D, $A0, $2D, $A1, $2D, $A2, $2D, $A3, $2D, $A4, $2D, $A5, $2D, $A6, $2D
  .byte $A7, $2D, $A8, $2D, $A9, $2D, $AA, $2D, $AB, $2D, $AC, $2D, $AD, $2D, $AE, $2D
  .byte $AF, $2D, $B0, $2D, $B1, $2D, $B2, $2D, $B3, $2D, $B4, $2D, $B5, $2D, $B6, $2D
  .byte $B7, $2D, $B8, $2D, $B9, $2D, $BA, $2D, $BB, $2D, $BC, $2D, $BD, $2D, $BE, $2D
  .byte $BF, $2D, $C0, $2D, $C1, $2D, $C2, $2D, $C3, $2D, $C4, $2D, $C5, $2D, $C6, $2D
  .byte $C7, $2D, $C8, $2D, $C9, $2D, $CA, $2D, $CB, $2D, $CC, $2D, $CD, $2D, $CE, $2D
  .byte $CF, $2D, $D0, $2D, $D1, $2D, $D2, $2D, $D3, $2D, $D4, $2D, $D5, $2D, $D6, $2D
  .byte $D7, $2D, $D8, $2D, $D9, $2D, $DA, $2D, $DB, $2D, $DC, $2D, $DD, $2D, $DE, $2D
  .byte $DF, $2D, $E0, $2D, $E1, $2D, $E2, $2D, $E3, $2D, $E4, $2D, $E5, $2D, $E6, $2D
  .byte $E7, $2D, $E8, $2D, $E9, $2D, $EA, $2D, $EB, $2D, $EC, $2D, $ED, $2D, $EE, $2D
  .byte $EF, $2D, $F0, $2D, $F1, $2D, $F2, $2D, $F3, $2D, $F4, $2D, $F5, $2D, $F6, $2D
  .byte $F7, $2D, $F8, $2D, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $78, $18, $79, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $7A, $18, $7B, $18, $7B, $18, $7B, $18, $7B, $18, $7B, $18, $7B, $18, $7B, $18
  .byte $7C, $18, $7D, $18, $7E, $18, $7F, $18, $80, $18, $81, $18, $7B, $18, $7B, $18
  .byte $7B, $18, $7B, $18, $7B, $18, $7B, $18, $7B, $18, $82, $18, $83, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $84, $18, $83, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $84, $18, $83, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $84, $18
  .byte $83, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $84, $18, $83, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $84, $18, $83, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $84, $18, $83, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18
  .byte $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $77, $18, $84, $18
  .byte $85, $18, $86, $18, $86, $18, $86, $18, $86, $18, $86, $18, $86, $18, $86, $18
  .byte $86, $18, $86, $18, $86, $18, $86, $18, $86, $18, $86, $18, $86, $18, $86, $18
  .byte $86, $18, $86, $18, $86, $18, $86, $18, $86, $18, $87, $18, $59, $1C, $5A, $1C
  .byte $5B, $1C, $5C, $1C, $5D, $1C, $5E, $1C, $5F, $1C, $60, $1C, $61, $1C, $62, $1C
  .byte $63, $1C, $64, $1C, $65, $1C, $66, $1C, $67, $1C, $68, $1C, $69, $1C, $6A, $1C
  .byte $6B, $1C, $6C, $1C, $6D, $1C, $6E, $1C, $6F, $1C, $70, $1C, $71, $1C, $72, $1C
  .byte $73, $1C, $74, $1C, $75, $1C, $76, $1C, $77, $1C, $78, $1C, $79, $1C, $7A, $1C
  .byte $7B, $1C, $6A, $1C, $7C, $1C, $7D, $1C, $7E, $1C, $7F, $1C, $80, $1C, $81, $1C
  .byte $82, $1C, $83, $1C, $84, $1C, $85, $1C, $86, $1C, $87, $1C, $88, $1C, $89, $1C
  .byte $8A, $1C, $8B, $1C, $8C, $1C, $6A, $1C
