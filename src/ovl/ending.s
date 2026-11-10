; overlay ending, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp ENDING_F_9603
ENDING_F_9603:
  k_func 0
  k_call ENDING_F_966B
  k_return
ENDING_F_960C:
  k_func 0
  k_pushib 45
  k_callx RF_3DD1, 2
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushiw $A7DE
  k_callx RF_2FB9, 4
  k_return
ENDING_F_962A:
  k_func 0
  k_pushi 0
  k_pushiw $A7E9
  k_callx RF_2FB9, 4
  k_call RF_4AC6
  k_pushi 0
  k_pushiw $A7EE
  k_callx RF_2FB9, 4
  k_call RF_4AF7
  k_pushi 0
  k_pushiw $A7F0
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_pushi 0
  k_pushiw $A7F3
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $A7FF
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_return
ENDING_F_966B:
  k_func 0
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
  k_pushi 0
  k_pushi 0
  k_pushib 56
  k_callx RL_21BE, 6
  k_call RF_2281
  k_ldlba $F169
  k_ldri 5
  k_ult
  k_jumpf ENDING_L_969B
  k_pushi 1
  k_pushi 14
  k_callx RF_21EA, 4
ENDING_L_969B:
  k_ldlba $F169
  k_switch -1, 4, ENDING_L_972D
    .word ENDING_L_96AD, ENDING_L_96D2, ENDING_L_96EC, ENDING_L_971E
ENDING_L_96AD:
  k_pushi 0
  k_callx RF_28CC, 2
  k_call ENDING_F_962A
  k_pushi 1
  k_pushiw $A81C
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_pushi 1
  k_pushiw $A864
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_pushi 1
  k_pushiw $A8AE
  k_jump ENDING_L_971A
ENDING_L_96D2:
  k_pushi 0
  k_callx RF_28CC, 2
  k_call ENDING_F_962A
  k_pushi 1
  k_pushiw $A8FB
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_pushi 1
  k_pushiw $A932
  k_jump ENDING_L_971A
ENDING_L_96EC:
  k_pushi 7
  k_callx RF_28CC, 2
  k_pushi 1
  k_pushiw $A97F
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw $A983
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $A9B0
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_call ENDING_F_962A
  k_pushi 1
  k_pushiw $A9C2
ENDING_L_971A:
  k_callx RF_2FB9, 4
ENDING_L_971E:
  k_pushi 0
  k_callx RF_2265, 2
  k_pushib 50
  k_callx RF_3DD1, 2
  k_call RF_2BB1
ENDING_L_972C:
  k_return
ENDING_L_972D:
  k_call ENDING_F_A797
  k_jump ENDING_L_972C
ENDING_F_9733:
  k_func 7
  k_pushiw $B51D
  k_leal -7
  k_pushl
  k_callx $8979, 4
ENDING_L_9743:
  k_ldlarg 11
  k_derefb
  k_stlbf -1
  k_jumpf ENDING_L_97EF
  k_ldlbf -1
  k_jump ENDING_L_97DC
ENDING_L_9751:
  k_pushi 1
  k_pushiw $B520
  k_callx RF_2FB9, 4
  k_jump ENDING_L_97E9
ENDING_L_975C:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlarg 11
  k_derefb
  k_stlbf -2
  k_jump ENDING_L_977B
ENDING_L_9767:
  k_ldlbf -2
  k_stlbf -6
  k_jump ENDING_L_978C
ENDING_L_9770:
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump ENDING_L_978C
ENDING_L_977B:
  k_switchn 3
    .word $004B, ENDING_L_9767
    .word $0048, ENDING_L_9767
    .word $0057, ENDING_L_9770
    .word ENDING_L_978C
ENDING_L_978C:
  k_jump ENDING_L_97E9
ENDING_L_978F:
  k_ldlarg 11
  k_inc
  k_derefb
  k_stlbf -2
  k_ldlbf -2
  k_ldriw $00DE
  k_eq
  k_jumpt ENDING_L_97A9
  k_ldlbf -2
  k_ldriw $00DF
  k_eq
  k_jumpf ENDING_L_97BF
ENDING_L_97A9:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlbf -1
  k_stlbf -5
  k_ldlbf -2
  k_stlbf -4
  k_ldli 0
  k_stlbf -3
  k_jump ENDING_L_97C9
ENDING_L_97BF:
  k_ldlbf -1
  k_stlbf -5
  k_ldli 0
  k_stlbf -4
ENDING_L_97C9:
  k_pushi 1
  k_leal -7
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 7
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump ENDING_L_97E9
ENDING_L_97DC:
  k_switchn 2
    .word $000A, ENDING_L_9751
    .word $001B, ENDING_L_975C
    .word ENDING_L_978F
ENDING_L_97E9:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_jump ENDING_L_9743
ENDING_L_97EF:
  k_return
ENDING_F_97F0:
  k_func 14
  k_ldlarg 11
  k_stl -2
ENDING_L_97F7:
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_pushl
  k_callx RF_36C5, 2
  k_jump ENDING_L_99AF
ENDING_L_9804:
  k_ldli 0
  k_stlbf -10
  k_jump ENDING_L_9856
ENDING_L_980B:
  k_pushib 126
  k_pushi 0
  k_ldlbf -10
  k_ldrib 24
  k_mul
  k_ldriw $F312
  k_add
  k_pushl
  k_ldlbf -10
  k_shl1
  k_ldriw $B529
  k_add
  k_derefb
  k_pushl
  k_ldlbf -10
  k_shl1
  k_ldriw $B528
  k_add
  k_derefb
  k_pushl
  k_ldlbf -10
  k_shl1
  k_ldriw $F360
  k_add
  k_deref
  k_pushl
  k_ldlbf -10
  k_shl1
  k_ldriw $F35A
  k_add
  k_deref
  k_pushl
  k_ldlbf -10
  k_ldriw $B525
  k_add
  k_derefb
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldlbf -10
  k_inc
  k_stlbf -10
ENDING_L_9856:
  k_ldlbf -10
  k_ldri 3
  k_ult
  k_jumpt ENDING_L_980B
  k_jump ENDING_L_99DC
ENDING_L_9861:
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_shl1
  k_ldriw $B4F9
  k_add
  k_deref
  k_stl -4
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -5
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -6
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -7
  k_ldlbf -7
  k_shl1
  k_pushl
  k_ldlbf -5
  k_ldrib 24
  k_mul
  k_ldriw $F312
  k_add
  k_pushl
  k_pushib 126
  k_push -4
  k_pusha $F280
  k_callx RF_3FC8, 10
  k_jump ENDING_L_99DC
ENDING_L_98A2:
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -5
  k_ldlbf -5
  k_shl1
  k_ldriw $F35A
  k_add
  k_pushl
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_popstore
  k_ldlbf -5
  k_shl1
  k_ldriw $F360
  k_add
  k_pushl
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_popstore
  k_jump ENDING_L_99DC
ENDING_L_98CB:
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_jumpt ENDING_L_98FB
  k_pushiw $2000
  k_pushi 6
  k_pushib 18
  k_pushi 12
  k_pushi 9
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 7
  k_pushi 8
  k_pushib 20
  k_pushib 20
  k_pushi 4
  k_callx RF_50D1, 12
  k_pushib 21
  k_pushi 5
  k_callx RF_2F8F, 4
  k_ldli 5
  k_stla $F18C
  k_jump ENDING_L_991F
ENDING_L_98FB:
  k_pushiw $2000
  k_pushi 6
  k_pushib 18
  k_pushib 21
  k_pushi 5
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 0
  k_pushi 8
  k_pushi 8
  k_pushib 20
  k_pushi 11
  k_pushi 8
  k_callx RF_50D1, 12
  k_pushi 12
  k_pushi 9
  k_callx RF_2F8F, 4
  k_ldli 9
  k_stla $F18C
ENDING_L_991F:
  k_ldli 2
  k_stlba $F190
  k_pushiw $F302
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_shl1
  k_ldriw $AC0A
  k_add
  k_deref
  k_pushl
  k_callx RF_3619, 4
  k_jump ENDING_L_99DC
ENDING_L_9939:
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -5
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -8
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -9
  k_ldlbf -5
  k_ldriw $B522
  k_add
  k_derefb
  k_jumpt ENDING_L_9961
  k_ldlib 32
  k_stlba $F294
ENDING_L_9961:
  k_pushib 17
  k_ldlbf -5
  k_ldriw $B522
  k_add
  k_derefb
  k_pushl
  k_ldlbf -9
  k_pushl
  k_ldlbf -8
  k_pushl
  k_callx RF_4E29, 8
  k_ldliw $00FF
  k_stlba $F294
  k_jump ENDING_L_99DC
ENDING_L_9981:
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -5
  k_ldlbf -5
  k_shl1
  k_pushl
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump ENDING_L_99DC
ENDING_L_9997:
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stlbf -5
  k_pushi 0
  k_ldlbf -5
  k_pushl
  k_pushi 2
  k_pushib 17
  k_callx RL_21BE, 8
  k_jump ENDING_L_99DC
ENDING_L_99AE:
  k_return
ENDING_L_99AF:
  k_switch -69, 19, ENDING_L_99AE
    .word ENDING_L_99AE, ENDING_L_99AE, ENDING_L_9861, ENDING_L_99AE, ENDING_L_99AE, ENDING_L_99AE, ENDING_L_9939, ENDING_L_99AE
    .word ENDING_L_98CB, ENDING_L_99AE, ENDING_L_9804, ENDING_L_98A2, ENDING_L_99AE, ENDING_L_99AE, ENDING_L_9997, ENDING_L_99AE
    .word ENDING_L_99AE, ENDING_L_99AE, ENDING_L_9981
ENDING_L_99DC:
  k_jump ENDING_L_97F7
  .byte $CF
ENDING_F_99E0:
  k_func 0
  k_pushiw $B52E
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_99ED:
  k_func 0
  k_pushiw $B5C4
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_99FA:
  k_func 0
  k_pushiw $B648
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A07:
  k_func 0
  k_pushiw $B6AE
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A14:
  k_func 0
  k_pushiw $B7DE
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A21:
  k_func 0
  k_pushiw $B7FF
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A2E:
  k_func 0
  k_pushiw $B874
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A3B:
  k_func 0
  k_pushiw $B952
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A48:
  k_func 0
  k_pushiw $BA70
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A55:
  k_func 2
  k_ldli 1
  k_stl -2
ENDING_L_9A5C:
  k_pushi 0
  k_ldl -2
  k_ldri 3
  k_shl
  k_pushl
  k_pushi 2
  k_pushib 17
  k_callx RL_21BE, 8
  k_pushi 0
  k_ldl -2
  k_ldri 3
  k_shl
  k_pushl
  k_pushi 1
  k_pushib 17
  k_callx RL_21BE, 8
  k_pushiw $BC2E
  k_callx ENDING_F_97F0, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 33
  k_ult
  k_jumpt ENDING_L_9A5C
  k_pushiw $BC53
  k_callx ENDING_F_97F0, 2
  k_pushi 0
  k_pushi 1
  k_pushi 1
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 0
  k_pushi 0
  k_pushi 1
  k_pushib 17
  k_callx RL_21BE, 8
  k_return
ENDING_F_9A9E:
  k_func 140
  k_ldlba $F300
  k_stl -14
  k_ldlba $F301
  k_stl -18
  k_pushib 126
  k_leal -140
  k_pushl
  k_pushi 9
  k_pushi 1
  k_pushib 19
  k_pushi 1
  k_pushi 2
  k_pushi 7
  k_callx RL_21BE, 16
  k_ldli 0
  k_stl -2
ENDING_L_9ABE:
  k_pushiw $2000
  k_leal -140
  k_pushl
  k_ldl -2
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_lt
  k_jumpt ENDING_L_9ABE
  k_pushi 0
  k_pushi 6
  k_pushi 2
  k_callx RF_3EC3, 6
  k_pushib 126
  k_leal -140
  k_pushl
  k_pushi 9
  k_pushi 1
  k_pushib 19
  k_pushi 1
  k_pushi 1
  k_callx RF_532F, 14
  k_pushib 126
  k_pushiw $BCC9
  k_pushi 9
  k_pushi 2
  k_pushib 19
  k_pushi 0
  k_pushi 2
  k_callx RF_532F, 14
  k_pushib 96
  k_pushi 0
  k_leal -122
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stl -10
  k_stl -8
  k_jump ENDING_L_9B5C
ENDING_L_9B12:
  k_ldli 0
  k_stl -12
  k_ldl -10
  k_stl -2
  k_jump ENDING_L_9B50
ENDING_L_9B19:
  k_pushi 0
  k_ldl -2
  k_shl1
  k_ldriw $8B64
  k_add
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 2
  k_leal -122
  k_pushl
  k_ldl -12
  k_shl1
  k_pushl
  k_ldl -8
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_pusha $F280
  k_pushib 28
  k_callx RL_21BE, 10
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -14
  k_swap
  k_ldl -2
  k_add
  k_stl -2
ENDING_L_9B50:
  k_ldl -12
  k_ldr -18
  k_lt
  k_jumpt ENDING_L_9B19
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -10
  k_inc
  k_stl -10
ENDING_L_9B5C:
  k_ldl -8
  k_ldr -14
  k_lt
  k_jumpt ENDING_L_9B12
  k_ldlib 46
  k_stl -22
  k_ldli 5
  k_stl -8
  k_ldli 0
  k_stl -2
  k_jump ENDING_L_9B93
ENDING_L_9B6C:
  k_pushib 126
  k_pushi 0
  k_leal -122
  k_pushl
  k_ldl -2
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_pushl
  k_push -18
  k_pushi 1
  k_pushiw $009F
  k_ldl -8
  k_ldri 3
  k_shl
  k_pushl
  k_push -22
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -18
  k_swap
  k_ldl -22
  k_add
  k_stl -22
  k_ldl -8
  k_inc
  k_stl -8
ENDING_L_9B93:
  k_ldl -2
  k_ldr -14
  k_lt
  k_jumpt ENDING_L_9B6C
  k_pushi 0
  k_push -18
  k_push -14
  k_pushib 20
  k_pushi 5
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $F280
  k_pushiw $8AF8
  k_pushi 2
  k_pushi 3
  k_pushiw $008F
  k_pushib 104
  k_pushib 94
  k_callx RF_3E5A, 14
  k_pushi 0
  k_pushi 2
  k_pushi 3
  k_pushib 18
  k_pushi 13
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 8
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 12
  k_pushi 10
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldlib 104
  k_stl -8
  k_ldliw $0090
  k_stl -12
  k_jump ENDING_L_9C10
ENDING_L_9BDD:
  k_pusha $F280
  k_pushiw $8AF8
  k_pushi 2
  k_pushi 3
  k_pushi 2
  k_callx RF_3F3E, 2
  k_ldr -12
  k_add
  k_dec
  k_pushl
  k_push -8
  k_pushib 94
  k_callx RF_3E5A, 14
  k_pushi 3
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -8
  k_ldri 3
  k_smod
  k_jumpt ENDING_L_9C0D
  k_ldl -12
  k_ldriw $00B0
  k_lt
  k_jumpf ENDING_L_9C0D
  k_ldl -12
  k_inc
  k_stl -12
ENDING_L_9C0D:
  k_ldl -8
  k_dec
  k_stl -8
ENDING_L_9C10:
  k_ldl -8
  k_ldrib 56
  k_gt
  k_jumpt ENDING_L_9BDD
  k_pushi 15
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 6
  k_pushib 94
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldlib 46
  k_stl -24
  k_ldl -14
  k_addli 5
  k_ldri 3
  k_shl
  k_stln -26
  k_ldli 0
  k_stl -4
  k_jump ENDING_L_9CD4
ENDING_L_9C3C:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_stl -20
  k_ldl -4
  k_jumpf ENDING_L_9C4A
  k_ldl -24
  k_jump ENDING_L_9C4C
ENDING_L_9C4A:
  k_ldlib 46
ENDING_L_9C4C:
  k_stl -22
  k_ldl -14
  k_ldr -4
  k_sub
  k_stl -16
  k_ldli 0
  k_stl -8
  k_jump ENDING_L_9C87
ENDING_L_9C56:
  k_ldl -8
  k_ldr -4
  k_add
  k_stl -10
  k_pushib 126
  k_pushi 0
  k_leal -122
  k_pushl
  k_ldl -10
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_pushl
  k_push -18
  k_pushi 1
  k_ldl -20
  k_addliw $009F
  k_pushl
  k_ldl -16
  k_ldr -8
  k_sub
  k_ldri 3
  k_shl
  k_pushl
  k_ldln -26
  k_popr
  k_sub
  k_pushl
  k_push -22
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -18
  k_swap
  k_ldl -22
  k_add
  k_stl -22
ENDING_L_9C87:
  k_ldl -8
  k_ldr -16
  k_lt
  k_jumpt ENDING_L_9C56
  k_ldl -4
  k_ldri 2
  k_gt
  k_jumpf ENDING_L_9C97
  k_ldli 3
  k_jump ENDING_L_9C98
ENDING_L_9C97:
  k_ldli 5
ENDING_L_9C98:
  k_pushl
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -14
  k_ldri 3
  k_shl
  k_pushl
  k_ldln -26
  k_popr
  k_sub
  k_ldrib 16
  k_lt
  k_jumpf ENDING_L_9CC4
  k_ldln -26
  k_ldri 8
  k_smod
  k_jumpt ENDING_L_9CC4
  k_push -18
  k_push -24
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldl -18
  k_swap
  k_ldl -24
  k_add
  k_stl -24
  k_ldl -4
  k_inc
  k_stl -4
ENDING_L_9CC4:
  k_ldln -26
  k_ldrib 16
  k_lt
  k_jumpf ENDING_L_9CCF
  k_jump ENDING_L_9CDA
ENDING_L_9CCF:
  k_ldln -26
  k_dec
  k_stln -26
ENDING_L_9CD4:
  k_ldl -4
  k_ldr -14
  k_lt
  k_jumpt ENDING_L_9C3C
ENDING_L_9CDA:
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -14
  k_ldr -18
  k_mul
  k_pushl
  k_pushib 46
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_return
ENDING_F_9CF5:
  k_func 0
  k_pushib 60
  k_pushib 16
  k_callx RL_21BE, 4
  k_call RF_3D7C
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
  k_pushiw $ABEA
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
ENDING_L_9D66:
  k_jump ENDING_L_9D66
  .byte $CF
ENDING_F_9D6A:
  k_func 2
  k_pushi 1
  k_pushi 3
  k_callx RF_21EA, 4
  k_pushi 2
  k_pushib 29
  k_pushiw $8000
  k_pushib 109
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 1
  k_pushib 29
  k_pushiw $9CA0
  k_pushiw $0150
  k_pushiw $00E4
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 29
  k_pushiw $8DA0
  k_pushib 120
  k_pushiw $00F0
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushi 1
  k_pushib 29
  k_pushiw $FB00
  k_pushib 19
  k_pushiw $0234
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 96
  k_pushib 32
  k_pushib 126
  k_pushiw $AA0A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushiw $00A0
  k_pushib 126
  k_pushiw $AA6A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 96
  k_pushib 126
  k_pushiw $AA6A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw $94F4
  k_pushi 11
  k_pushib 32
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $97B4
  k_pushi 11
  k_pushib 32
  k_pushib 32
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $BC5E
  k_pushi 4
  k_pushi 2
  k_pushib 37
  k_pushib 19
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $BC6E
  k_pushi 4
  k_pushi 3
  k_pushib 37
  k_pushib 26
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_call ENDING_F_9A55
  k_call ENDING_F_99E0
  k_pushi 0
  k_pushi 2
  k_pushi 2
  k_pushi 7
  k_pushi 15
  k_pushi 10
  k_pushi 4
  k_pushiw $BCED
  k_callx RF_3787, 16
  k_stl -2
  k_jump ENDING_L_9E59
ENDING_L_9E41:
  k_call ENDING_F_99ED
  k_jump ENDING_L_9E68
ENDING_L_9E47:
  k_call ENDING_F_9A21
  k_jump ENDING_L_9E68
ENDING_L_9E4D:
  k_call ENDING_F_9A2E
  k_jump ENDING_L_9E68
ENDING_L_9E53:
  k_call ENDING_F_9A48
  k_jump ENDING_L_9E68
ENDING_L_9E59:
  k_switch -1, 4, ENDING_L_9E68
    .word ENDING_L_9E41, ENDING_L_9E47, ENDING_L_9E4D, ENDING_L_9E53
ENDING_L_9E68:
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpf ENDING_L_9EAE
  k_call ENDING_F_99FA
  k_pushi 0
  k_pushi 1
  k_pushi 0
  k_pushi 8
  k_pushib 17
  k_pushi 10
  k_pushi 2
  k_pushiw $BCEE
  k_callx RF_3787, 16
  k_ldri 1
  k_eq
  k_jumpf ENDING_L_9E8B
  k_call ENDING_F_9A07
  k_jump ENDING_L_9EAB
ENDING_L_9E8B:
  k_call ENDING_F_9A14
  k_pushi 0
  k_pushi 1
  k_pushi 0
  k_pushi 8
  k_pushib 17
  k_pushi 10
  k_pushi 2
  k_pushiw $BCEF
  k_callx RF_3787, 16
  k_ldri 1
  k_eq
  k_jumpf ENDING_L_9EA8
  k_call ENDING_F_9A07
  k_jump ENDING_L_9EAB
ENDING_L_9EA8:
  k_jump ENDING_L_9E8B
ENDING_L_9EAB:
  k_jump ENDING_L_9EB1
ENDING_L_9EAE:
  k_call ENDING_F_9A3B
ENDING_L_9EB1:
  k_pushiw $00B4
  k_pushib 16
  k_callx RL_21BE, 4
  k_return
ENDING_F_9EBB:
  k_func 2
  k_ldli 0
  k_stl -2
ENDING_L_9EC2:
  k_ldl -2
  k_ldri 4
  k_shl
  k_ldri 2
  k_or
  k_pushl
  k_pushib 22
  k_callx RL_21BE, 4
  k_ldli 15
  k_ldr -2
  k_sub
  k_pushl
  k_pushib 37
  k_callx RL_21BE, 4
  k_pushi 3
  k_callx RF_3654, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 16
  k_ult
  k_jumpt ENDING_L_9EC2
  k_pushiw $00B4
  k_pushib 16
  k_callx RL_21BE, 4
  k_call RF_3D7C
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_pusha $F280
  k_pushiw $9E48
  k_pushi 11
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $9BB4
  k_pushi 11
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_pushib 22
  k_callx RL_21BE, 4
  k_pushi 2
  k_callx RF_4F2A, 2
  k_pushiw $0190
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 2
  k_callx RF_4F48, 2
  k_call RF_3D7C
  k_return
ENDING_F_9F37:
  k_func 0
  k_pusha $F280
  k_ldlarg 11
  k_shl1
  k_ldriw $BD08
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $BCFD
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $BCFC
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $BCF1
  k_add
  k_derefb
  k_dec
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $BCF0
  k_add
  k_derefb
  k_pushl
  k_pushi 2
  k_callx RF_3DF1, 14
  k_return
ENDING_F_9F6E:
  k_func 4
  k_pusha $F280
  k_pushiw $82F0
  k_pushi 7
  k_pushib 28
  k_pushib 20
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8248
  k_pushi 2
  k_pushib 18
  k_pushib 18
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8290
  k_pushi 2
  k_pushi 14
  k_pushib 20
  k_pushib 16
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8ACC
  k_pushi 2
  k_pushi 4
  k_pushib 18
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8AEC
  k_pushi 2
  k_pushi 3
  k_pushib 18
  k_pushi 13
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
ENDING_F_9FC8:
  k_func 21
  k_pushib 22
  k_pushiw $96FB
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_ldli 0
  k_stlbf -1
  k_jump ENDING_L_9FFC
ENDING_L_9FE0:
  k_ldlbf -1
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -21
  k_ldln -21
  k_derefb
  k_jumpt ENDING_L_9FF5
  k_jump ENDING_L_A004
ENDING_L_9FF5:
  k_ldlbf -1
  k_inc
  k_stlbf -1
ENDING_L_9FFC:
  k_ldlbf -1
  k_ldri 5
  k_ult
  k_jumpt ENDING_L_9FE0
ENDING_L_A004:
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_stln -19
  k_ldln -19
  k_addlib 20
  k_derefb
  k_stlbf -1
  k_ldlbf -1
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stln -3
  k_ldlbf -1
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stln -5
  k_ldlbf -1
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stln -7
  k_ldln -7
  k_shl1
  k_pushl
  k_ldln -5
  k_ldri 6
  k_mul
  k_pushl
  k_ldln -3
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_ldriw $BD20
  k_add
  k_deref
  k_stln -9
  k_ldln -3
  k_shl1
  k_ldriw $BD15
  k_add
  k_derefb
  k_pushl
  k_ldln -3
  k_shl1
  k_ldriw $BD14
  k_add
  k_derefb
  k_popr
  k_mul
  k_stln -13
  k_ldln -3
  k_shl1
  k_ldriw $BD14
  k_add
  k_derefb
  k_stlba $F300
  k_ldln -3
  k_shl1
  k_ldriw $BD15
  k_add
  k_derefb
  k_stlba $F301
  k_ldln -9
  k_ldriw $0400
  k_ult
  k_jumpf ENDING_L_A0AF
  k_pushi 1
  k_pushib 127
  k_ldln -9
  k_ldri 5
  k_shl
  k_pushl
  k_pushn -13
  k_pushiw $03B0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $8B04
  k_ldln -3
  k_shl1
  k_ldriw $BD15
  k_add
  k_derefb
  k_pushl
  k_ldln -3
  k_shl1
  k_ldriw $BD14
  k_add
  k_derefb
  k_pushl
  k_pushib 20
  k_pushi 5
  k_pushi 1
  k_callx RF_3DF1, 14
ENDING_L_A0AF:
  k_return
ENDING_F_A0B0:
  k_func 0
  k_pushib 22
  k_pushiw $8B6D
  k_pushi 0
  k_pushib 20
  k_pushi 4
  k_pusharg 11
  k_pushib 119
  k_pushi 2
  k_pushi 0
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8BED
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushib 123
  k_pushi 2
  k_pushi 1
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8C6D
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushib 127
  k_pushi 2
  k_pushi 2
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8CED
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0083
  k_pushi 2
  k_pushi 3
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8D6D
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0087
  k_pushi 2
  k_pushi 4
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8DED
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $008B
  k_pushi 2
  k_pushi 5
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8E6D
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $008F
  k_pushi 2
  k_pushi 6
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8EED
  k_pushiw $00FF
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0093
  k_pushi 2
  k_pushi 7
  k_pushib 55
  k_callx RL_21BE, 20
  k_return
ENDING_F_A156:
  k_func 108
  k_pushib 72
  k_pushi 0
  k_leal -83
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldliw $BD68
  k_stln -7
ENDING_L_A16F:
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_pushl
  k_callx RF_36C5, 2
  k_jump ENDING_L_A2D4
ENDING_L_A17E:
  k_ldli 0
  k_stlbf -84
  k_jump ENDING_L_A1E4
ENDING_L_A185:
  k_leal -96
  k_pushl
  k_ldlbf -84
  k_shl1
  k_popr
  k_add
  k_deref
  k_ldriw $00FF
  k_eq
  k_jumpf ENDING_L_A1A8
  k_pushi 6
  k_ldlbf -84
  k_ldri 6
  k_mul
  k_addli 10
  k_pushl
  k_pushib 58
  k_callx RL_21BE, 6
  k_jump ENDING_L_A1DD
ENDING_L_A1A8:
  k_pushib 126
  k_pushi 0
  k_leal -83
  k_pushl
  k_ldlbf -84
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_pushl
  k_pushi 3
  k_pushi 2
  k_leal -108
  k_pushl
  k_ldlbf -84
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_leal -96
  k_pushl
  k_ldlbf -84
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldlbf -84
  k_ldri 6
  k_mul
  k_addli 10
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
ENDING_L_A1DD:
  k_ldlbf -84
  k_inc
  k_stlbf -84
ENDING_L_A1E4:
  k_ldlbf -84
  k_ldri 6
  k_ult
  k_jumpt ENDING_L_A185
  k_jump ENDING_L_A2F1
ENDING_L_A1EF:
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_stlbf -1
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_stlbf -2
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_stlbf -3
  k_leal -96
  k_pushl
  k_ldlbf -1
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldlbf -2
  k_popstore
  k_leal -108
  k_pushl
  k_ldlbf -1
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldlbf -3
  k_popstore
  k_jump ENDING_L_A2F1
ENDING_L_A22E:
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_stlbf -1
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_stlbf -4
  k_ldlbf -1
  k_jump ENDING_L_A272
ENDING_L_A248:
  k_ldlbf -4
  k_shl1
  k_ldriw $C24F
  k_add
  k_deref
  k_stln -11
  k_jump ENDING_L_A285
ENDING_L_A256:
  k_ldlbf -4
  k_shl1
  k_ldriw $C267
  k_add
  k_deref
  k_stln -11
  k_jump ENDING_L_A285
ENDING_L_A264:
  k_ldlbf -4
  k_shl1
  k_ldriw $C27F
  k_add
  k_deref
  k_stln -11
  k_jump ENDING_L_A285
ENDING_L_A272:
  k_switch 0, 6, ENDING_L_A264
    .word ENDING_L_A248, ENDING_L_A256, ENDING_L_A264, ENDING_L_A264, ENDING_L_A264, ENDING_L_A264
ENDING_L_A285:
  k_pushi 12
  k_leal -83
  k_pushl
  k_ldlbf -1
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_pushn -11
  k_pusha $F280
  k_callx RF_3FC8, 10
  k_jump ENDING_L_A2F1
ENDING_L_A2A0:
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_stlbf -1
  k_leal -96
  k_pushl
  k_ldlbf -1
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstore
  k_jump ENDING_L_A2F1
ENDING_L_A2BC:
  k_ldln -7
  k_inc
  k_stln -7
  k_dec
  k_derefb
  k_stlbf -5
  k_ldlbf -5
  k_pushl
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump ENDING_L_A2F1
ENDING_L_A2D3:
  k_return
ENDING_L_A2D4:
  k_switchn 6
    .word $0043, ENDING_L_A2A0
    .word $0045, ENDING_L_A2D3
    .word $0050, ENDING_L_A22E
    .word $0053, ENDING_L_A17E
    .word $0057, ENDING_L_A2BC
    .word $005A, ENDING_L_A1EF
    .word ENDING_L_A2D3
ENDING_L_A2F1:
  k_jump ENDING_L_A16F
  .byte $CF
ENDING_F_A2F5:
  k_func 2
  k_pushi 1
  k_pushib 22
  k_pushiw $8B6D
  k_pushib 32
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 22
  k_pushiw $8000
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushiw $00BD
  k_pushiw $0097
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 2
  k_pushib 127
  k_pushiw $17A0
  k_pushi 11
  k_pushiw $03A5
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 17
  k_pushiw $8000
  k_pushib 60
  k_pushiw $00F0
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushib 29
  k_pushiw $F280
  k_pushib 68
  k_pushiw $012C
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushi 2
  k_pushib 18
  k_pushiw $8000
  k_pushiw $01C1
  k_pushiw $01A0
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw $8478
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pushiw $C2B7
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushib 16
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C2BB
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_call RF_4AC6
  k_call RF_4AF7
  k_pushi 1
  k_pushiw $C2C2
  k_callx RF_2FB9, 4
  k_pusha $F280
  k_pushiw $21C2
  k_pushi 15
  k_pushib 28
  k_pushi 5
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_ldli 0
  k_stl -2
ENDING_L_A3AD:
  k_push -2
  k_callx ENDING_F_9F37, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_ult
  k_jumpt ENDING_L_A3AD
  k_call ENDING_F_9F6E
  k_ldlba $EF69
  k_pushl
  k_callx ENDING_F_9FC8, 2
  k_pushi 1
  k_callx ENDING_F_A0B0, 2
  k_pushi 0
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 0
  k_ldliw $2790
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
  k_pushi 0
  k_ldliw $2890
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 96
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushi 1
  k_pushi 1
  k_callx RF_3EC3, 6
  k_pushib 32
  k_pushiw $00D0
  k_pushib 126
  k_pushiw $C297
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushi 1
  k_callx RF_4F2A, 2
  k_return
ENDING_F_A42F:
  k_func 0
  k_pushi 0
  k_pushi 2
  k_callx RF_21EA, 4
  k_call ENDING_F_A2F5
  k_pushi 8
  k_pushib 28
  k_pushib 20
  k_pushi 2
  k_callx RF_4D41, 8
  k_call ENDING_F_A156
  k_pushiw $012C
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 0
  k_pushi 0
  k_pushi 8
  k_pushib 28
  k_pushib 20
  k_pushi 2
  k_callx RF_4F65, 12
  k_pushiw $F302
  k_pusha $C2C6
  k_callx RF_3619, 4
  k_pushiw $0168
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushiw $2000
  k_pushi 6
  k_pushib 26
  k_pushib 21
  k_pushi 3
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 1
  k_pusha $C2C8
  k_callx RF_2FB9, 4
  k_pushiw $0168
  k_pushib 16
  k_callx RL_21BE, 4
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
  k_call ENDING_F_9A9E
  k_pushi 0
  k_callx ENDING_F_A0B0, 2
  k_return
ENDING_F_A4B9:
  k_func 2
  k_pushiw $012C
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_call RF_3D7C
  k_pushi 1
  k_pushib 29
  k_pushiw $C6A0
  k_pushiw $015F
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 32
  k_pushib 112
  k_pushib 126
  k_pushiw $AA8A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 80
  k_pushib 126
  k_pushiw $AAAA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw $A334
  k_pushi 10
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $A0DC
  k_pushi 10
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_callx RF_4F2A, 2
  k_pushiw $012C
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 2
  k_callx RF_4F48, 2
  k_pushiw $00C8
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 1
  k_pushib 30
  k_pushiw $8000
  k_pushiw $0295
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 30
  k_pushiw $D160
  k_pushi 10
  k_pushiw $00F0
  k_pushi 13
  k_callx RL_21BE, 10
  k_pushib 64
  k_pushib 96
  k_pushib 126
  k_pushiw $AAEA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_pushiw $AACA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushiw $00C0
  k_pushib 126
  k_pushiw $AACA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw $AD48
  k_pushi 10
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $A640
  k_pushi 10
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 2
  k_callx RF_4F2A, 2
  k_pushiw $00FA
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $A898
  k_pushi 10
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushiw $00C8
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $AAF0
  k_pushi 10
  k_pushib 30
  k_pushi 7
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushiw $0096
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushib 64
  k_pushib 96
  k_pushib 126
  k_pushiw $AB2A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushib 64
  k_pushib 96
  k_pushib 126
  k_pushiw $AB6A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushib 64
  k_pushib 96
  k_pushib 126
  k_pushiw $ABAA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushiw $012C
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 2
  k_callx RF_4F48, 2
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_call RF_3D7C
  k_pusha $F280
  k_pushiw $AFA0
  k_pushi 8
  k_pushi 10
  k_pushi 6
  k_pushi 8
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 2
  k_callx RF_4F2A, 2
  k_ldli 0
  k_stlba $F190
  k_ldli 0
  k_stl -2
ENDING_L_A64F:
  k_pushi 1
  k_pushiw $C3FD
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw $C35E
  k_add
  k_deref
  k_pushl
  k_callx ENDING_F_9733, 2
  k_pushiw $2000
  k_pushi 6
  k_pushib 21
  k_pushib 16
  k_pushi 8
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 4
  k_lt
  k_jumpt ENDING_L_A64F
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $B040
  k_pushi 8
  k_pushi 10
  k_pushi 6
  k_pushi 8
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushib 50
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $B0E0
  k_pushi 8
  k_pushi 10
  k_pushi 6
  k_pushi 8
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushib 50
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $B180
  k_pushi 8
  k_pushi 10
  k_pushi 6
  k_pushi 8
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushiw $012C
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 2
  k_callx RF_4F48, 2
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_return
ENDING_F_A6E1:
  k_func 2
  k_pushi 1
  k_callx RF_4F2A, 2
  k_pusha $F280
  k_pushiw $BC40
  k_pushi 5
  k_pushi 3
  k_pusha $C473
  k_pusha $C429
  k_pushi 10
  k_callx RF_3E5A, 14
  k_pushib 60
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 0
  k_stl -2
ENDING_L_A708:
  k_pusha $F280
  k_pushiw $BC40
  k_pushi 5
  k_pushi 3
  k_ldl -2
  k_shl1
  k_inc
  k_shl1
  k_ldriw $C473
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_shl1
  k_inc
  k_shl1
  k_ldriw $C429
  k_add
  k_deref
  k_pushl
  k_pushi 10
  k_callx RF_3E5A, 14
  k_pusha $F280
  k_ldl -2
  k_shl1
  k_ldriw $C405
  k_add
  k_deref
  k_pushl
  k_pushi 6
  k_pushi 12
  k_pushib 19
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 3
  k_pushib 16
  k_callx RL_21BE, 4
  k_pusha $F280
  k_pushiw $BC40
  k_pushi 5
  k_pushi 3
  k_ldl -2
  k_shl1
  k_addli 2
  k_shl1
  k_ldriw $C473
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_shl1
  k_addli 2
  k_shl1
  k_ldriw $C429
  k_add
  k_deref
  k_pushl
  k_pushi 10
  k_callx RF_3E5A, 14
  k_pushi 3
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 18
  k_ult
  k_jumpt ENDING_L_A708
  k_pushib 30
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushiw $0258
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 1
  k_callx RF_4F48, 2
  k_call ENDING_F_9CF5
  k_return
ENDING_F_A797:
  k_func 0
  k_pushi 1
  k_callx RF_4F48, 2
  k_call RF_3D7C
  k_pushi 0
  k_pushi 1
  k_pushi 2
  k_pushi 4
  k_callx RL_21BE, 8
  k_pushi 0
  k_pushi 0
  k_callx RF_530E, 4
  k_pusha $E444
  k_pushiw $F302
  k_callx $8979, 4
  k_pushib 72
  k_pushi 0
  k_pushiw $F312
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stlba $F28C
  k_call ENDING_F_9D6A
  k_call ENDING_F_9EBB
  k_call ENDING_F_A42F
  k_call ENDING_F_A4B9
  k_call ENDING_F_A6E1
  k_return
  .byte $1B, $52, $27, $1B, $45, $16, $1B, $3D, $31, $27, $00, $0A, $4F, $6E, $20, $00
  .byte $20, $00, $2C, $20, $00, $2C, $0A, $0A
  .byte "Captain "
  .byte $00, $0A, $0A
  .byte "was reported lost"
  .byte $0A, $0A
  .byte "at sea."
  .byte $00
  .byte "According to one"
  .byte $0A
  .byte "story, the fleet"
  .byte $0A
  .byte "used up all of its"
  .byte $0A
  .byte "precious supplies."
  .byte $00
  .byte "They say the crew"
  .byte $0A
  .byte "lingered on bravely"
  .byte $0A
  .byte "until their fates"
  .byte $0A
  .byte "met up with them."
  .byte $00
  .byte "The Captain perished"
  .byte $0A
  .byte "boldly at sea, a"
  .byte $0A
  .byte "common fate in the"
  .byte $0A
  .byte "Age of Exploration."
  .byte $00
  .byte "A terrible storm"
  .byte $0A
  .byte "ravaged his fleet"
  .byte $0A
  .byte "beyond imagination."
  .byte $00
  .byte "The Captain perished"
  .byte $0A
  .byte "boldly at sea, a"
  .byte $0A
  .byte "common fate in the"
  .byte $0A
  .byte "Age of Exploration."
  .byte $00, $1B, $43, $30, $00, $0A
  .byte "After 20 long years"
  .byte $0A, $0A
  .byte "of the sailor's life"
  .byte $0A, $0A, $00
  .byte " passed"
  .byte $0A, $0A
  .byte "away on "
  .byte $00
  .byte "He was just short of"
  .byte $0A
  .byte "reaching the goal he"
  .byte $0A
  .byte "had aspired for all"
  .byte $0A
  .byte "his life."
  .byte $00, $00, $00, $00, $28, $80, $20, $C2, $28, $06, $31, $93, $09, $37, $0A, $FD
  .byte $1A, $88, $45, $88, $55, $53, $00, $59, $00, $80, $28, $C2, $38, $46, $45, $FF
  .byte $7F, $00, $00, $1D, $01, $DB, $7D, $64, $7E, $E0, $7E, $31, $7F, $BD, $46, $42
  .byte $08
  .byte "Fe9*?_"
  .byte $FF, $6F, $57, $11, $7D, $2A, $7F, $4F, $FD, $7F, $00, $00, $4E, $55, $91, $5D
  .byte $33, $5E, $B7, $5E, $F9, $66, $7B, $67, $FF
  .byte "oFe9*?_"
  .byte $FF, $6F, $57, $11, $7D, $2A, $7F, $4F, $42, $4C, $CA, $21, $00, $28, $D9, $29
  .byte $BD, $46, $3F, $5F, $FF, $6F, $93, $00, $5B, $09, $02, $5D, $68, $6E, $B5, $7F
  .byte $BF, $1A, $7F, $3B, $0E, $4D, $57, $65, $FF, $7F, $00, $00, $42, $08, $DB, $7D
  .byte $64, $7E, $E0, $7E, $2A, $7F, $6E, $7F, $73, $7F
  .byte "Fe9*?_"
  .byte $FF, $6F, $5B, $11, $7D, $2A, $7F, $3B, $FD, $7F, $00, $00, $80
  .byte "DFed~"
  .byte $E0, $7E, $2A, $7F, $6E, $7F, $73, $7F, $CA, $08, $D5
  .byte "!y:=W"
  .byte $CE, $39, $B5, $56, $39, $67, $FF, $7F, $00, $00, $C6, $18, $0C, $01, $91, $11
  .byte $77, $32, $B9, $46, $7D, $57, $BF, $6F, $02, $5D, $68, $6E, $B5, $7F, $BF, $1A
  .byte $7F, $3B, $0E, $4D, $57, $65, $FF, $7F, $00, $00, $42, $08, $CE, $39, $59, $00
  .byte $1F, $01, $7F, $02, $2A, $7F, $F7, $7F, $0E, $09, $93, $19
  .byte "y*=G"
  .byte $CE, $39, $B5, $56, $39, $67, $FF, $7F, $00, $00, $86, $6D, $64, $7E, $A0, $7E
  .byte $E0, $7E, $2A, $7F, $6E, $7F, $73, $7F, $46, $01, $13, $01, $D9, $01, $BD, $1A
  .byte $A6, $02, $2E, $0B, $F5, $13, $FD, $7F, $00, $00, $42, $08, $4C, $29, $17, $11
  .byte $59, $11, $DB, $11, $AE, $66, $33, $6F, $CC, $10
  .byte "Q!52"
  .byte $B9, $3A, $8E, $29, $33, $46, $B7, $56, $3B, $5F, $00, $00, $06, $45, $84, $4D
  .byte $C2, $4D, $C2
  .byte "M(N*N.N"
  .byte $C6, $00, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13, $B5, $4E
  .byte $00, $00, $42, $08, $0A, $11, $D3, $08, $15, $09, $57, $11, $CC, $4D, $6E, $4E
  .byte $8A, $08, $0E, $19, $91, $29, $35, $32, $0C, $19, $91, $29, $35, $3A, $F9, $4E
  .byte $00, $00, $C6, $18, $C6, $18, $06, $21, $06, $21, $08, $21, $08, $21, $0A, $21
  .byte $C6, $00, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13, $4C, $21
  .byte $00, $00, $42, $08, $88, $00, $4A, $00, $CE, $08, $13, $09, $4C, $29, $8E, $31
  .byte $46, $00, $CA, $08, $0E, $19, $D3, $29, $CA, $10, $4E, $21, $D3, $29, $77, $3A
  .byte $00, $00, $86, $08, $86, $08, $86, $08, $86, $08, $86, $08, $C8, $08, $88, $08
  .byte $C6, $00, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13, $0A, $09
  .byte $00, $00, $7B, $7F, $F7, $6E, $B5, $66, $73, $5E, $00, $00, $CE, $4D, $8C, $45
  .byte $55, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $F7, $6E, $FF, $7F
  .byte $78, $AC, $A1, $AC, $CA, $AC, $F0, $AC, $01, $AD, $35, $AD, $6A, $AD, $9E, $AD
  .byte $CD, $AD, $EC, $AD, $25, $AE, $58, $AE, $8C, $AE, $BF, $AE, $EB, $AE, $1D, $AF
  .byte $54, $AF, $83, $AF, $89, $AF, $A1, $AF, $D1, $AF, $F6, $AF, $28, $B0, $5A, $B0
  .byte $61, $B0, $9A, $B0, $BF, $B0, $F1, $B0, $21, $B1, $4E, $B1, $76, $B1, $AA, $B1
  .byte $DD, $B1, $0D, $B2, $18, $B2, $43, $B2, $65, $B2, $92, $B2, $BD, $B2, $C4, $B2
  .byte $F4, $B2, $0F, $B3, $3B, $B3, $4F, $B3, $70, $B3, $A6, $B3, $CE, $B3, $F3, $B3
  .byte $28, $B4, $43, $B4, $61, $B4, $86, $B4, $90, $B4, $9C, $B4, $CE, $B4
  .byte "Sir %s,"
  .byte $0A
  .byte "my thanks for"
  .byte $0A
  .byte "saving Christiana!"
  .byte $00
  .byte "In addition you"
  .byte $0A
  .byte "have routed the"
  .byte $0A
  .byte "pirates!"
  .byte $00
  .byte "You are truly the"
  .byte $0A
  .byte "bravest of them"
  .byte $0A, $61, $6C, $6C, $00
  .byte "You are too kind"
  .byte $00
  .byte "There are no words"
  .byte $0A
  .byte "that can express"
  .byte $0A
  .byte "my appreciation"
  .byte $00
  .byte "I shall award you"
  .byte $0A
  .byte "as you please. Ask"
  .byte $0A
  .byte "me for anything"
  .byte $00
  .byte "What do you want?"
  .byte $0A
  .byte "  Land   Princess"
  .byte $0A
  .byte "  Honor  Refuse"
  .byte $00
  .byte "If I owned a"
  .byte $0A
  .byte "piece of land in"
  .byte $0A
  .byte "my home country,"
  .byte $00
  .byte "I would be more"
  .byte $0A
  .byte "than satisfied"
  .byte $00
  .byte "You desire land to"
  .byte $0A
  .byte "support your noble"
  .byte $0A
  .byte "rank? Let's see..."
  .byte $00
  .byte "I know! Alcobaca"
  .byte $0A
  .byte "the land of you"
  .byte $0A
  .byte "ancestors will do"
  .byte $00
  .byte "From here on you"
  .byte $0A
  .byte "shall be known as"
  .byte $0A
  .byte "Lord of Alcobaca"
  .byte $00
  .byte "This honor is more"
  .byte $0A
  .byte "than I deserve."
  .byte $0A
  .byte "I humbly accept"
  .byte $00
  .byte "This will restore"
  .byte $0A
  .byte "dignity to my"
  .byte $0A
  .byte "family name"
  .byte $00
  .byte "Yes. By the way,"
  .byte $0A
  .byte "as you know, I do"
  .byte $0A
  .byte "not have a son"
  .byte $00
  .byte "Thus there is no"
  .byte $0A
  .byte "heir to my throne."
  .byte $0A
  .byte "But how about you?"
  .byte $00
  .byte "Will you marry"
  .byte $0A
  .byte "Christiana and be"
  .byte $0A
  .byte "my successor?"
  .byte $00
  .byte "Wha-?"
  .byte $00
  .byte "How wonderful!"
  .byte $0A
  .byte "(Blush!)"
  .byte $00
  .byte "You may decide."
  .byte $0A
  .byte "I hope you will"
  .byte $0A
  .byte "accept my offer"
  .byte $00
  .byte "What is your"
  .byte $0A
  .byte "reply?"
  .byte $0A
  .byte "  Accept  Refuse"
  .byte $00
  .byte "I am incapable of"
  .byte $0A
  .byte "such a task, but"
  .byte $0A
  .byte "if you wish..."
  .byte $00
  .byte "To the Princess"
  .byte $0A
  .byte "and to Portugal I"
  .byte $0A
  .byte "devote my life!"
  .byte $00
  .byte "Oh %s!"
  .byte $00
  .byte "You two seem glad!"
  .byte $0A
  .byte "There must be some"
  .byte $0A
  .byte "hidden charm here!"
  .byte $00
  .byte "Now I can retire"
  .byte $0A
  .byte "in peace."
  .byte $0A
  .byte "Oh-ho-ho!"
  .byte $00
  .byte "Unfortunately I am"
  .byte $0A
  .byte "incapable of such"
  .byte $0A
  .byte "a great task"
  .byte $00
  .byte "Please, won't you"
  .byte $0A
  .byte "think again?"
  .byte $0A
  .byte "  Accept  Refuse"
  .byte $00
  .byte "I have long"
  .byte $0A
  .byte "wanted to restore"
  .byte $0A
  .byte "my family name"
  .byte $00
  .byte "Easily done. I"
  .byte $0A
  .byte "dub you Lord of"
  .byte $0A
  .byte "Alcobaca"
  .byte $00
  .byte "Your title will"
  .byte $0A
  .byte "restore the glory"
  .byte $0A
  .byte "of your ancestors"
  .byte $00
  .byte "This is too great"
  .byte $0A
  .byte "an honor for me."
  .byte $0A
  .byte "I humbly accept"
  .byte $00
  .byte "I desire Princess"
  .byte $0A
  .byte "Christiana's hand"
  .byte $0A
  .byte "in marriage"
  .byte $00
  .byte "Oh my!"
  .byte $0A, $25, $73, $21, $00
  .byte "There must be a"
  .byte $0A
  .byte "greater power at"
  .byte $0A
  .byte "work here"
  .byte $00
  .byte "Yet, my daughter"
  .byte $0A
  .byte "is my only child"
  .byte $00
  .byte "I had planned for"
  .byte $0A
  .byte "her to marry into"
  .byte $0A
  .byte "Spain..."
  .byte $00
  .byte "Father, please! I"
  .byte $0A
  .byte "can marry no one"
  .byte $0A
  .byte "but %s!"
  .byte $00
  .byte "Hmm..."
  .byte $00
  .byte "She will always"
  .byte $0A
  .byte "be happy with me."
  .byte $0A
  .byte "Sire, please!"
  .byte $00
  .byte "Then it's settled."
  .byte $0A
  .byte "Sir %s,"
  .byte $00
  .byte "I will transfer"
  .byte $0A
  .byte "the reigns of"
  .byte $0A
  .byte "power to you!"
  .byte $00
  .byte "Wha-?"
  .byte $0A
  .byte "Your Majesty!"
  .byte $00
  .byte "I'm so happy!"
  .byte $0A
  .byte "Thank you, Father!"
  .byte $00
  .byte "I will strive for"
  .byte $0A
  .byte "Christiana and the"
  .byte $0A
  .byte "good of Portugal"
  .byte $00
  .byte "As of this day"
  .byte $0A
  .byte "you are King of"
  .byte $0A
  .byte "Portugal"
  .byte $00
  .byte "My blessings are"
  .byte $0A
  .byte "with you."
  .byte $0A
  .byte "Oh-ho-ho!"
  .byte $00
  .byte "My labors were for"
  .byte $0A
  .byte "my ancestors and"
  .byte $0A
  .byte "for the Princess"
  .byte $00
  .byte "I desire nothing"
  .byte $0A
  .byte "in return"
  .byte $00
  .byte "I see. You are a"
  .byte $0A
  .byte "generous man"
  .byte $00
  .byte "Thank you. I must"
  .byte $0A
  .byte "take my leave"
  .byte $0A
  .byte "here"
  .byte $00, $25, $73, $21, $0A
  .byte "Wait!"
  .byte $00
  .byte "Christiana!"
  .byte $00
  .byte "What's this? You"
  .byte $0A
  .byte "must be hiding"
  .byte $0A
  .byte "something from me"
  .byte $00
  .byte "Your Majesty, I"
  .byte $0A
  .byte "beg for your"
  .byte $0A
  .byte "understanding"
  .byte $00, $04, $9B, $14, $9B, $24, $9B, $34, $9B, $44, $9B, $74, $9A, $84, $9A, $94
  .byte $9A, $A4, $9A, $B4, $9A, $C4, $9A, $D4, $9A, $E4, $9A, $54, $9B, $6C, $9B, $84
  .byte $9B, $9C, $9B, $F4, $9A, $1B, $48, $00, $0A, $00, $00, $0C, $01, $0A, $12, $1A
  .byte $02, $04, $02, $04, $03, $04, $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0A, $4B, $02, $03, $0C, $4D, $02, $00, $57, $B4, $4D, $02, $01, $57, $B4, $4D
  .byte $02, $02, $57, $64, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F
  .byte $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0E, $02, $00
  .byte $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0D, $02, $00, $0C, $50, $02, $D0
  .byte $27, $4F, $57, $0F, $4B, $00, $18, $15, $4D, $00, $03, $57, $14, $47, $06, $00
  .byte $00, $08, $50, $00
  .byte "X'OW"
  .byte $14, $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $4D, $02, $04, $57, $1E, $47, $0E, $02, $00, $0C, $50, $02, $D0
  .byte "'OW<G"
  .byte $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0A, $4D, $02, $05, $57, $B4
  .byte $4D, $02, $06, $45, $4D, $00, $07, $57, $B4, $4D, $00, $08, $57, $1E, $47, $06
  .byte $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0D, $02
  .byte $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02, $09, $57, $3C, $47, $0F
  .byte $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $4D, $02, $0A, $57, $78, $47
  .byte $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $4D, $02, $0B, $57, $3C
  .byte $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $4D, $00, $0C, $57, $B4, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $14, $4D, $00, $0D, $57, $B4, $45, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27
  .byte $4F, $57, $0F, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D
  .byte $02, $0E, $57, $B4, $4D, $02, $0F, $57, $B4, $4D, $02, $10, $57, $1E, $47, $0E
  .byte $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $00, $11, $57, $B4, $4B
  .byte $01, $03, $0C, $4D, $01, $12, $57, $B4, $4B, $02, $03, $0C, $4D, $02, $13, $57
  .byte $B4, $4D, $02, $14, $57, $1E, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F
  .byte $57, $0A, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OEG"
  .byte $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $4D, $00, $15, $57, $B4, $4D, $00, $16, $57, $B4, $4B, $01, $03, $0C, $4D
  .byte $01, $17, $57, $B4, $47, $01, $01, $00, $08, $50, $01, $98, $27, $4F, $57, $0F
  .byte $47, $02, $01, $00, $08, $50, $01, $96, $27, $4F, $57, $0F, $47, $01, $01, $00
  .byte $08, $50, $01, $94, $27, $4F, $57, $1E, $47, $02, $01, $00, $08, $50, $01, $92
  .byte $27, $4F, $57, $0A, $47, $01, $01, $00, $08, $50, $01, $90, $27, $4F, $57, $0A
  .byte $47, $02, $01, $00, $08, $50, $01, $8E, $27, $47, $07, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $8C, $27, $47, $09, $00, $00, $08, $50
  .byte $00
  .byte "^'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $88, $27, $47, $0A, $00, $00, $08, $50
  .byte $00
  .byte "d'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $84, $27, $47, $07, $00, $00, $08, $50
  .byte $00
  .byte "j'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $80, $27, $47, $09, $00, $00, $08, $50
  .byte $00
  .byte "p'OW"
  .byte $05, $47, $03, $01, $00, $08, $50, $01, $80, $27, $47, $11, $00, $00, $08, $50
  .byte $00
  .byte "p'OW"
  .byte $0F, $4B, $02, $03, $0C, $4D, $02, $18, $57, $1E, $47, $0E, $02, $00, $0C, $50
  .byte $02, $D0, $27, $4F, $57, $0A, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F
  .byte $57, $0A, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0A, $47, $0D
  .byte $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0A, $47, $0E, $02, $00, $0C, $50
  .byte $02, $D0, $27, $4F, $57, $0A, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F
  .byte $57, $0A, $4D, $02, $19, $57, $B4, $45, $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $4D, $00, $1A, $57, $B4, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $4D, $02, $1B, $45, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $4D, $00, $1C, $57, $B4, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F
  .byte $57, $0F, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02
  .byte $1D, $57, $B4, $47, $0F, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $4D
  .byte $02, $1E, $57, $B4, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0A
  .byte $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $4D, $00, $1F, $57, $3C, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW(G"
  .byte $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $45, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $4D, $00, $20, $57, $B4, $4B, $01, $03, $0C, $4D, $01, $21, $57, $B4, $47
  .byte $01, $01, $00, $08, $50, $01, $98, $27, $4F, $57, $0F, $47, $02, $01, $00, $08
  .byte $50, $01, $96, $27, $4F, $57, $0F, $47, $01, $01, $00, $08, $50, $01, $94, $27
  .byte $4F, $57, $1E, $47, $02, $01, $00, $08, $50, $01, $92, $27, $4F, $57, $0A, $47
  .byte $01, $01, $00, $08, $50, $01, $90, $27, $4F, $57, $0A, $47, $02, $01, $00, $08
  .byte $50, $01, $8E, $27, $47, $07, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $8C, $27, $47, $09, $00, $00, $08, $50
  .byte $00
  .byte "^'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $88, $27, $47, $0A, $00, $00, $08, $50
  .byte $00
  .byte "d'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $84, $27, $47, $07, $00, $00, $08, $50
  .byte $00
  .byte "j'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $80, $27, $47, $09, $00, $00, $08, $50
  .byte $00
  .byte "p'OW"
  .byte $05, $47, $03, $01, $00, $08, $50, $01, $80, $27, $47, $11, $00, $00, $08, $50
  .byte $00
  .byte "p'OW"
  .byte $0F, $4B, $02, $03, $0C, $4D, $02, $22, $57, $B4, $45, $4D, $02, $23, $57, $B4
  .byte $4D, $02, $24, $57, $1E, $47, $0E, $02, $00, $0C, $50, $02, $D0
  .byte "'OW<G"
  .byte $05, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $0F, $47, $00, $01, $00, $08, $50, $01, $80, $27, $4F, $57, $0F, $47, $04, $01
  .byte $00, $08, $50, $01, $80, $27, $4F, $57, $0F, $4B, $01, $03, $0C, $4D, $01
  .byte "%W<G"
  .byte $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $47, $0E, $02, $00, $0C
  .byte $50, $02, $D0, $27, $4F, $57, $0F, $4B, $02, $03, $0C, $4D, $02, $26, $57, $B4
  .byte $4D, $00, $27, $57, $1E, $47, $06, $00, $00, $08, $50, $00, $70, $27, $57, $0F
  .byte $47, $05, $00, $00, $08, $50, $00
  .byte "p'W<G"
  .byte $0F, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02, $28, $57, $B4
  .byte $4D, $02, $29, $57, $1E, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57
  .byte $1E, $47, $07, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $05, $4D, $00, $2A, $57, $B4, $4B, $01, $03, $0C, $4D, $01, $2B, $57, $1E, $47
  .byte $04, $01, $00, $08, $50, $01, $80, $27, $4F, $57, $0F, $47, $06, $00, $00, $08
  .byte $50, $00
  .byte "p'OW"
  .byte $0F, $4D, $00
  .byte ",W<G"
  .byte $07, $00, $00, $08, $50, $00, $70, $27, $57, $1E, $47, $00, $01, $00, $08, $50
  .byte $01, $80, $27, $4F, $57, $0F, $47, $07, $00, $00, $08, $50, $00, $70, $27, $57
  .byte $1E, $47, $11, $00, $00, $08, $50, $00, $70, $27, $47, $03, $01, $00, $08, $50
  .byte $01, $80
  .byte "'OW<K"
  .byte $02, $03, $0C, $4D, $02, $2D, $57, $B4, $4D, $02, $2E, $57, $B4, $45, $4D, $00
  .byte $2F, $57, $B4, $4D, $00
  .byte "0W<G"
  .byte $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0D, $02
  .byte $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02, $31, $57, $B4, $4D, $00
  .byte $32, $57, $B4, $47, $07, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $47, $08, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $47, $0B, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $47, $0C, $00, $00, $08, $50, $00
  .byte "R'OW"
  .byte $0F, $47, $08, $00, $00, $08, $50, $00
  .byte "L'OW"
  .byte $0F, $4B, $01, $03, $0C, $4D, $01, $33, $57, $1E, $47, $01, $01, $00, $08, $50
  .byte $01, $98, $27, $4F, $57, $05, $47, $02, $01, $00, $08, $50, $01, $96, $27, $4F
  .byte $57, $05, $47, $01, $01, $00, $08, $50, $01, $94, $27, $4F, $57, $05, $47, $07
  .byte $00, $00, $08, $50, $00
  .byte "L'OW"
  .byte $0F, $4D, $00
  .byte "4W<G"
  .byte $02, $01, $00, $08, $50, $01, $94, $27, $4F, $57, $05, $47, $01, $01, $00, $08
  .byte $50, $01, $90, $27, $4F, $57, $05, $47, $02, $01, $00, $08, $50, $01, $8C, $27
  .byte $4F, $57, $05, $47, $01, $01, $00, $08, $50, $01, $88, $27, $4F, $57, $05, $47
  .byte $02, $01, $00, $08, $50, $01, $84, $27, $4F, $57, $05, $47, $00, $01, $00, $08
  .byte $50, $01, $80, $27, $4F, $57, $0F, $47, $09, $00, $00, $08, $50, $00
  .byte "R'OW"
  .byte $0A, $47, $0A, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0A, $47, $07, $00, $00, $08, $50, $00
  .byte "^'OW"
  .byte $0A, $47, $09, $00, $00, $08, $50, $00
  .byte "d'OW"
  .byte $0A, $47, $0A, $00, $00, $08, $50, $00
  .byte "j'OW"
  .byte $0A, $47, $11, $00, $00, $08, $50, $00, $70, $27, $47, $03, $01, $00, $08, $50
  .byte $01, $80
  .byte "'OW<K"
  .byte $02, $03, $0C, $4D, $02, $35, $57, $B4, $47, $04, $01, $00, $08, $50, $01, $80
  .byte $27, $47, $05, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $0F, $47, $06, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $14, $47, $05, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $0F, $4D, $00
  .byte "6W<G"
  .byte $06, $00, $00, $08, $50, $00
  .byte "p'OWPG"
  .byte $00, $01, $00, $08, $50, $01, $80, $27, $4F, $47, $07, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $0F, $47, $11, $00, $00, $08, $50, $00, $70, $27, $47, $03, $01, $00, $08, $50
  .byte $01, $80
  .byte "'OW<EG"
  .byte $07, $00, $00, $08, $50, $00
  .byte "0'OW"
  .byte $05, $47, $09, $00, $00, $08, $50, $00
  .byte "0'OW"
  .byte $05, $47, $0A, $00, $00, $08, $50, $00
  .byte "0'OW"
  .byte $05, $45, $47, $07, $00, $00, $08, $50, $00
  .byte "0'OW"
  .byte $0A, $47, $09, $00, $00, $08, $50, $00
  .byte "6'OW"
  .byte $0A, $47, $0A, $00, $00, $08, $50, $00
  .byte "<'OW"
  .byte $0A, $47, $07, $00, $00, $08, $50, $00
  .byte "B'OW"
  .byte $0A, $47, $09, $00, $00, $08, $50, $00
  .byte "H'OW"
  .byte $0A, $47, $0A, $00, $00, $08, $50, $00
  .byte "N'OW"
  .byte $0A, $47, $07, $00, $00, $08, $50, $00
  .byte "S'OW"
  .byte $0A, $47, $09, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0A, $47, $00, $01, $00, $08, $50, $01, $98, $27, $47, $0D, $02, $00, $0C, $50
  .byte $02, $D0, $27, $4F, $57, $0A, $45, $09, $38, $09, $38, $09, $38, $09, $38, $09
  .byte $38, $09, $38, $09, $38, $09, $38, $09, $38, $09, $38, $09, $38, $09, $38, $09
  .byte $38, $09, $38, $09, $38, $09, $38, $09, $38, $09, $38, $00, $00, $00, $02, $06
  .byte $17, $06, $02, $0C, $10, $06, $09, $06, $18, $0E, $07, $04, $07, $05, $07, $04
  .byte $07, $04, $07, $04, $06, $06, $0A, $25, $32, $26, $B2
  .byte "%z%B%"
  .byte $EA, $25, $04, $04, $04, $05, $06, $05, $06, $05, $07, $06, $08, $06, $00, $00
  .byte $10, $00, $00, $04, $20, $00, $30, $00, $00, $04, $40, $00, $54, $00, $00, $04
  .byte $68, $00, $7C, $00, $00, $04, $90, $00, $AE, $00, $CC, $00, $EA, $00, $08, $01
  .byte $26, $01, $44, $01, $62, $01, $80, $01, $9E, $01, $BC, $01, $DA, $01, $00, $04
  .byte $F8, $01, $22, $02, $00, $04, $4C, $02, $76, $02, $00, $04, $A0, $02, $D0, $02
  .byte $00, $04, $00, $03, $30, $03, $5A, $00, $C0, $40, $50, $00, $00, $5A, $01, $D0
  .byte $40, $50, $01, $00, $5A, $02, $90, $58, $50, $02, $01, $5A, $03, $90, $70, $50
  .byte $03, $01, $5A, $04, $B0, $68, $50, $04, $02, $5A, $05, $B0, $80, $50, $05, $02
  .byte "SW<Z"
  .byte $00, $C0, $42, $50, $00, $01, $5A, $01, $D0, $42, $50, $01, $01, $53, $57, $0A
  .byte $5A, $00, $C0, $44, $50, $00, $00, $5A, $01, $D0, $44, $50, $01, $00, $53, $57
  .byte $0A, $5A, $00, $C0, $46, $50, $00, $02, $5A, $01, $D0, $46, $50, $01, $02, $53
  .byte $57, $0A, $5A, $00, $C0, $48, $50, $00, $00, $5A, $01, $D0, $48, $50, $01, $00
  .byte $53, $57, $0A, $5A, $00, $C0, $4A, $50, $00, $01, $5A, $01, $D0, $4A, $50, $01
  .byte $01, $53, $57, $0A, $5A, $00, $C0, $4C, $50, $00, $00, $5A, $01, $D0, $4C, $50
  .byte $01, $00, $53, $57, $0A, $5A, $00, $C0, $4E, $50, $00, $02, $5A, $01, $D0, $4E
  .byte $50, $01, $02, $53, $57, $0A, $5A, $00, $C0, $50, $50, $00, $00, $5A, $01, $D0
  .byte $50, $50, $01, $00, $53, $57, $0A, $5A, $00, $C0, $50, $50, $00, $03, $5A, $01
  .byte $D0, $50, $50, $01, $03, $53, $57, $0A, $5A, $00, $BE, $50, $50, $00, $04, $5A
  .byte $01, $CE, $50, $50, $01, $04, $53, $57, $0A, $5A, $00, $BC, $50, $50, $00, $03
  .byte $5A, $01, $CC, $50, $50, $01, $03, $53, $57, $0A, $5A, $00, $BA, $50, $50, $00
  .byte $05, $5A, $01, $CA, $50, $50, $01, $05, $53, $57, $0A, $5A, $00, $B8, $50, $50
  .byte $00, $03, $5A, $01, $C8, $50, $50, $01, $03, $53, $57, $0A, $5A, $00, $B6, $50
  .byte $50, $00, $04, $5A, $01, $C6, $50, $50, $01, $04, $53, $57, $0A, $5A, $00, $B4
  .byte $50, $50, $00, $03, $5A, $01, $C4, $50, $50, $01, $03, $53, $57, $0A, $5A, $00
  .byte $B2, $50, $50, $00, $05, $5A, $01, $C2, $50, $50, $01, $05, $53, $57, $0A, $5A
  .byte $00, $B0, $50, $50, $00, $03, $5A, $01, $C0, $50, $50, $01, $03, $53, $57, $0A
  .byte $5A, $00, $AE, $50, $50, $00, $04, $5A, $01, $BE, $50, $50, $01, $04, $53, $57
  .byte $0A, $5A, $00, $AC, $50, $50, $00, $03, $5A, $01, $BC, $50, $50, $01, $03, $53
  .byte $57, $0A, $5A, $00, $AA, $50, $50, $00, $05, $5A, $01, $BA, $50, $50, $01, $05
  .byte $53, $57, $0A, $5A, $00, $A8, $50, $50, $00, $03, $5A, $01, $B8, $50, $50, $01
  .byte $03, $53, $57, $0A, $5A, $00, $A6, $50, $50, $00, $04, $5A, $01, $B6, $50, $50
  .byte $01, $04, $53, $57, $0A, $5A, $00, $A4, $50, $50, $00, $03, $5A, $01, $B4, $50
  .byte $50, $01, $03, $53, $57, $0A, $5A, $00, $A2, $50, $50, $00, $05, $5A, $01, $B2
  .byte $50, $50, $01, $05, $53, $57, $0A, $5A, $00, $A0, $50, $50, $00, $03, $5A, $01
  .byte $B0, $50, $50, $01, $03, $53, $57, $0A, $5A, $00, $A0, $50, $50, $00, $00, $5A
  .byte $01, $B0, $50, $50, $01, $04, $53, $57, $0A, $5A, $00, $A0, $52, $50, $00, $01
  .byte $5A, $01, $AE, $50, $50, $01, $03, $53, $57, $0A, $5A, $00, $A0, $54, $50, $00
  .byte $00, $5A, $01, $AC, $50, $50, $01, $05, $53, $57, $0A, $5A, $00, $A0, $56, $50
  .byte $00, $02, $5A, $01, $AA, $50, $50, $01, $03, $53, $57, $0A, $5A, $00, $A0, $58
  .byte $50, $00, $00, $5A, $01, $A8, $50, $50, $01, $04, $53, $57, $0A, $5A, $00, $A0
  .byte $5A, $50, $00, $01, $5A, $01, $A6, $50, $50, $01, $03, $53, $57, $0A, $5A, $00
  .byte $A0, $5C, $50, $00, $00, $5A, $01, $A4, $50, $50, $01, $05, $53, $57, $0A, $5A
  .byte $00, $A0, $5E, $50, $00, $02, $5A, $01, $A2, $50, $50, $01, $03, $53, $57, $0A
  .byte $5A, $00, $A0, $60, $50, $00, $00, $5A, $01, $A0, $50, $50, $01, $04, $53, $57
  .byte $0A, $5A, $00, $A0, $60, $50, $00, $01, $5A, $01, $A0, $50, $50, $01, $00, $53
  .byte $57, $0A, $5A, $00, $A0, $62, $50, $00, $00, $5A, $01, $A0, $52, $50, $01, $01
  .byte $53, $57, $0A, $5A, $00, $A0, $64, $50, $00, $02, $5A, $01, $A0, $54, $50, $01
  .byte $00, $53, $57, $0A, $5A, $00, $A0, $66, $50, $00, $00, $5A, $01, $A0, $56, $50
  .byte $01, $02, $53, $57, $0A, $5A, $00, $A0, $68, $50, $00, $01, $5A, $01, $A0, $58
  .byte $50, $01, $00, $53, $57, $0A, $5A, $00, $A0, $6A, $50, $00, $00, $5A, $01, $A0
  .byte $5A, $50, $01, $01, $53, $57, $0A, $5A, $00, $A0, $6C, $50, $00, $02, $5A, $01
  .byte $A0, $5C, $50, $01, $00, $53, $57, $0A, $5A, $00, $A0, $6E, $50, $00, $00, $5A
  .byte $01, $A0, $5E, $50, $01, $02, $53, $57, $0A, $5A, $00, $A0, $70, $50, $00, $01
  .byte $5A, $01, $A0, $60, $50, $01, $00, $53, $57, $0A, $5A, $00, $A0, $72, $50, $00
  .byte $00, $5A, $01, $A0, $62, $50, $01, $01, $53, $57, $0A, $5A, $00, $A0, $74, $50
  .byte $00, $02, $5A, $01, $A0, $64, $50, $01, $00, $53, $57, $0A, $5A, $00, $A0, $76
  .byte $50, $00, $00, $5A, $01, $A0, $66, $50, $01, $02, $53, $57, $0A, $5A, $00, $A0
  .byte $78, $50, $00, $01, $5A, $01, $A0, $68, $50, $01, $00, $53, $57, $0A, $5A, $00
  .byte $A0, $7A, $50, $00, $00, $5A, $01, $A0, $6A, $50, $01, $01, $53, $57, $0A, $5A
  .byte $00, $A0, $7C, $50, $00, $02, $5A, $01, $A0, $6C, $50, $01, $00, $53, $57, $0A
  .byte $5A, $00, $A0, $7E, $50, $00, $00, $5A, $01, $A0, $6E, $50, $01, $02, $53, $57
  .byte $0A, $5A, $00, $A0, $80, $50, $00, $01, $5A, $01, $A0, $70, $50, $01, $00, $50
  .byte $02, $00, $53, $57, $0A, $5A, $00, $9E, $80, $50, $00, $03, $5A, $01, $A0, $72
  .byte $50, $01, $01, $53, $57, $0A, $5A, $00, $9E, $80, $50, $00, $04, $5A, $01, $A0
  .byte $72, $50, $01, $00, $53, $57, $0A, $5A, $00, $9C, $80, $50, $00, $03, $5A, $01
  .byte $A0, $74, $50, $01, $02, $53, $57, $0A, $5A, $00, $9A, $80, $50, $00, $05, $5A
  .byte $01, $A0, $76, $50, $01, $00, $53, $57, $0A, $5A, $00, $98, $80, $50, $00, $03
  .byte $5A, $01, $A0, $78, $50, $01, $01, $53, $57, $0A, $5A, $00, $96, $80, $50, $00
  .byte $04, $5A, $01, $A0, $7A, $50, $01, $00, $53, $57, $0A, $5A, $00, $94, $80, $50
  .byte $00, $03, $5A, $01, $A0, $7C, $50, $01, $02, $53, $57, $0A, $5A, $00, $92, $80
  .byte $50, $00, $05, $5A, $01, $A0, $7E, $50, $01, $00, $53, $57, $0A, $5A, $00, $90
  .byte $80, $50, $00, $03, $5A, $01, $A0, $80, $50, $01, $01, $50, $03, $00, $53, $57
  .byte $0A, $5A, $00, $8E, $80, $50, $00, $04, $5A, $01, $9E, $80, $50, $01, $03, $53
  .byte $57, $0A, $5A, $00, $8C, $80, $50, $00, $03, $5A, $01, $9C, $80, $50, $01, $05
  .byte $53, $57, $0A, $5A, $00, $8A, $80, $50, $00, $05, $5A, $01, $9A, $80, $50, $01
  .byte $03, $53, $57, $0A, $5A, $00, $88, $80, $50, $00, $03, $5A, $01, $98, $80, $50
  .byte $01, $04, $53, $57, $0A, $5A, $00, $86, $80, $50, $00, $04, $5A, $01, $96, $80
  .byte $50, $01, $03, $53, $57, $0A, $5A, $00, $84, $80, $50, $00, $03, $5A, $01, $94
  .byte $80, $50, $01, $05, $53, $57, $0A, $5A, $00, $82, $80, $50, $00, $05, $5A, $01
  .byte $92, $80, $50, $01, $03, $53, $57, $0A, $5A, $00, $80, $80, $50, $00, $03, $5A
  .byte $01, $90, $80, $50, $01, $04, $53, $57, $0A, $43, $00, $5A, $01, $86, $80, $50
  .byte $01, $03, $53, $57, $0A, $5A, $01, $84, $80, $50, $01, $05, $53, $57, $0A, $5A
  .byte $01, $82, $80, $50, $01, $03, $53, $57, $0A, $5A, $01, $80, $80, $50, $01, $04
  .byte $53, $57, $0A, $43, $01, $53, $57, $01, $45, $B8, $81, $C4, $81, $D0, $81, $24
  .byte $82, $30, $82, $3C, $82, $00, $82, $0C, $82, $18, $82, $DC, $81, $E8, $81, $F4
  .byte $81, $8C, $A5, $98, $A5, $A4, $A5, $F8, $A5, $04, $A6, $10, $A6, $D4, $A5, $E0
  .byte $A5, $EC, $A5, $B0, $A5, $BC, $A5, $C8, $A5, $1C, $A6, $28, $A6, $34, $A6, $1C
  .byte $A6, $28, $A6, $34, $A6, $1C, $A6, $28, $A6, $34, $A6, $1C, $A6, $28, $A6, $34
  .byte $A6, $CA, $21, $00, $28, $D9, $29, $BD, $46, $3F, $5F, $FF, $6F, $93, $00, $5B
  .byte $09, $02, $5D, $68, $6E, $B5, $7F, $BF, $1A, $7F, $3B, $0E, $4D, $57, $65, $FF
  .byte $7F, $1B, $43, $32, $00
  .byte "Lisbon"
  .byte $00, $1B, $43, $30, $00, $CA, $C2, $0F, $C3, $1B, $3D, $35, $23, $1B
  .byte "R#King %s went on"
  .byte $0A
  .byte "to lead Portugal into a"
  .byte $0A
  .byte "new age of prosperity"
  .byte $00, $1B, $3D, $35, $23, $1B
  .byte "R#And those sailors with"
  .byte $0A
  .byte "ambitions still aglow"
  .byte $0A
  .byte "embarked for the high seas"
  .byte $00, $66, $C3, $7C, $C3, $9B, $C3, $CC, $C3
  .byte "Uncharted"
  .byte $0A
  .byte "Waters..."
  .byte $1B, $57, $00
  .byte "In the Age of"
  .byte $0A
  .byte "Exploration..."
  .byte $1B, $57, $00
  .byte "When those with"
  .byte $0A
  .byte "courage challenged"
  .byte $0A
  .byte "the unknown"
  .byte $1B, $57, $00
  .byte "A glorious page"
  .byte $0A
  .byte "in the great book"
  .byte $0A
  .byte "of history"
  .byte $1B, $57, $1B, $57, $00, $1B, $3D, $30, $28, $1B, $52, $28, $00, $20, $B2, $B0
  .byte $B2, $40, $B3, $D0, $B3, $60, $B4, $F0, $B4, $80, $B5, $10, $B6, $A0, $B6, $30
  .byte $B7, $C0, $B7, $50, $B8, $E0, $B8, $70, $B9, $00, $BA, $90, $BA, $20, $BB, $B0
  .byte $BB, $88, $00, $8C, $00, $96, $00, $9E, $00, $9A, $00, $8D, $00, $96, $00, $A1
  .byte $00, $AE, $00, $BD, $00, $B0, $00, $A5, $00, $9B, $00, $90, $00, $85, $00, $85
  .byte $00, $93, $00, $A8, $00, $A0, $00, $A1, $00, $AE, $00, $B4, $00, $B1, $00, $BB
  .byte $00, $C5, $00, $C5, $00, $C1, $00, $C9, $00, $D2, $00, $D2, $00, $D4, $00, $DA
  .byte $00, $DB, $00, $CB, $00, $C1, $00, $B5, $00, $BF, $00, $84, $00, $7C, $00, $76
  .byte $00, $79, $00, $84, $00, $85, $00, $7B, $00, $77, $00, $79, $00, $78, $00, $7A
  .byte $00, $80, $00, $8F, $00, $99, $00, $9A, $00, $92, $00, $8F, $00, $88, $00, $8F
  .byte $00, $97, $00, $8E, $00, $8B, $00, $9A, $00, $92, $00, $8A, $00, $94, $00, $99
  .byte $00, $91, $00, $89, $00, $92, $00, $99, $00, $95, $00, $86, $00, $83, $00, $83
  .byte $00, $83, $00, $7A, $00, $00
