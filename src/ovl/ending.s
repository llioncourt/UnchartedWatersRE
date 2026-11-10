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
  k_pushiw ENDING_D_A7DE
  k_callx RF_2FB9, 4
  k_return
ENDING_F_962A:
  k_func 0
  k_pushi 0
  k_pushiw ENDING_D_A7E9
  k_callx RF_2FB9, 4
  k_call RF_4AC6
  k_pushi 0
  k_pushiw ENDING_D_A7EE
  k_callx RF_2FB9, 4
  k_call RF_4AF7
  k_pushi 0
  k_pushiw ENDING_D_A7F0
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_pushi 0
  k_pushiw ENDING_D_A7F3
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw ENDING_D_A7FF
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
  k_pushiw ENDING_D_A81C
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_pushi 1
  k_pushiw ENDING_D_A864
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_pushi 1
  k_pushiw ENDING_D_A8AE
  k_jump ENDING_L_971A
ENDING_L_96D2:
  k_pushi 0
  k_callx RF_28CC, 2
  k_call ENDING_F_962A
  k_pushi 1
  k_pushiw ENDING_D_A8FB
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_pushi 1
  k_pushiw ENDING_D_A932
  k_jump ENDING_L_971A
ENDING_L_96EC:
  k_pushi 7
  k_callx RF_28CC, 2
  k_pushi 1
  k_pushiw ENDING_D_A97F
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw ENDING_D_A983
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw ENDING_D_A9B0
  k_callx RF_2FB9, 4
  k_call ENDING_F_960C
  k_call ENDING_F_962A
  k_pushi 1
  k_pushiw ENDING_D_A9C2
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
  k_pushiw ENDING_D_B51D
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
  k_pushiw ENDING_D_B520
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
  k_ldriw ENDING_D_B529
  k_add
  k_derefb
  k_pushl
  k_ldlbf -10
  k_shl1
  k_ldriw ENDING_D_B528
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
  k_ldriw ENDING_D_B525
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
  k_ldriw ENDING_D_B4F9
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
  k_ldriw ENDING_D_AC0A
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
  k_ldriw ENDING_D_B522
  k_add
  k_derefb
  k_jumpt ENDING_L_9961
  k_ldlib 32
  k_stlba $F294
ENDING_L_9961:
  k_pushib 17
  k_ldlbf -5
  k_ldriw ENDING_D_B522
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
  k_pushiw ENDING_D_B52E
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_99ED:
  k_func 0
  k_pushiw ENDING_D_B5C4
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_99FA:
  k_func 0
  k_pushiw ENDING_D_B648
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A07:
  k_func 0
  k_pushiw ENDING_D_B6AE
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A14:
  k_func 0
  k_pushiw ENDING_D_B7DE
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A21:
  k_func 0
  k_pushiw ENDING_D_B7FF
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A2E:
  k_func 0
  k_pushiw ENDING_D_B874
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A3B:
  k_func 0
  k_pushiw ENDING_D_B952
  k_callx ENDING_F_97F0, 2
  k_return
ENDING_F_9A48:
  k_func 0
  k_pushiw ENDING_D_BA70
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
  k_pushiw ENDING_D_BC2E
  k_callx ENDING_F_97F0, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 33
  k_ult
  k_jumpt ENDING_L_9A5C
  k_pushiw ENDING_D_BC53
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
  k_pushiw ENDING_D_BCC9
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
  k_ldriw RD_8B64
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
  k_pushiw RD_8AF8
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
  k_pushiw RD_8AF8
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
  k_pushiw ENDING_D_ABEA
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
  k_pushiw RD_8DA0
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
  k_pushiw ENDING_D_AA0A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushiw $00A0
  k_pushib 126
  k_pushiw ENDING_D_AA6A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 96
  k_pushib 126
  k_pushiw ENDING_D_AA6A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw RD_94F4
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
  k_pushiw ENDING_D_BC5E
  k_pushi 4
  k_pushi 2
  k_pushib 37
  k_pushib 19
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw ENDING_D_BC6E
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
  k_pushiw ENDING_D_BCED
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
  k_pushiw ENDING_D_BCEE
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
  k_pushiw ENDING_D_BCEF
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
  k_ldriw ENDING_D_BD08
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw ENDING_D_BCFD
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw ENDING_D_BCFC
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw ENDING_D_BCF1
  k_add
  k_derefb
  k_dec
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw ENDING_D_BCF0
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
  k_pushiw RD_8AEC
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
  k_ldriw ENDING_D_BD20
  k_add
  k_deref
  k_stln -9
  k_ldln -3
  k_shl1
  k_ldriw ENDING_D_BD15
  k_add
  k_derefb
  k_pushl
  k_ldln -3
  k_shl1
  k_ldriw ENDING_D_BD14
  k_add
  k_derefb
  k_popr
  k_mul
  k_stln -13
  k_ldln -3
  k_shl1
  k_ldriw ENDING_D_BD14
  k_add
  k_derefb
  k_stlba $F300
  k_ldln -3
  k_shl1
  k_ldriw ENDING_D_BD15
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
  k_pushiw RD_8B04
  k_ldln -3
  k_shl1
  k_ldriw ENDING_D_BD15
  k_add
  k_derefb
  k_pushl
  k_ldln -3
  k_shl1
  k_ldriw ENDING_D_BD14
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
  k_pushiw RD_8B6D
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
  k_pushiw RD_8BED
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
  k_pushiw RD_8C6D
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
  k_pushiw RD_8CED
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
  k_pushiw RD_8D6D
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
  k_pushiw RD_8DED
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
  k_pushiw RD_8E6D
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
  k_pushiw RD_8EED
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
  k_ldliw ENDING_D_BD68
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
  k_ldriw ENDING_D_C24F
  k_add
  k_deref
  k_stln -11
  k_jump ENDING_L_A285
ENDING_L_A256:
  k_ldlbf -4
  k_shl1
  k_ldriw ENDING_D_C267
  k_add
  k_deref
  k_stln -11
  k_jump ENDING_L_A285
ENDING_L_A264:
  k_ldlbf -4
  k_shl1
  k_ldriw ENDING_D_C27F
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
  k_pushiw RD_8B6D
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
  k_pushiw ENDING_D_C2B7
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushib 16
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw ENDING_D_C2BB
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_call RF_4AC6
  k_call RF_4AF7
  k_pushi 1
  k_pushiw ENDING_D_C2C2
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
  k_ldliw RL_2790
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
  k_pushiw ENDING_D_C297
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
  k_pusha ENDING_D_C2C6
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
  k_pusha ENDING_D_C2C8
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
  k_pushiw ENDING_D_AA8A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 80
  k_pushib 126
  k_pushiw ENDING_D_AAAA
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
  k_pushiw ENDING_D_AAEA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 64
  k_pushib 126
  k_pushiw ENDING_D_AACA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushiw $00C0
  k_pushib 126
  k_pushiw ENDING_D_AACA
  k_pushi 3
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushiw ENDING_D_AD48
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
  k_pushiw ENDING_D_A898
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
  k_pushiw ENDING_D_AAF0
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
  k_pushiw ENDING_D_AB2A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushib 64
  k_pushib 96
  k_pushib 126
  k_pushiw ENDING_D_AB6A
  k_pushi 3
  k_callx RL_21BE, 10
  k_pushib 120
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushib 64
  k_pushib 96
  k_pushib 126
  k_pushiw ENDING_D_ABAA
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
  k_pushiw ENDING_D_AFA0
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
  k_pushiw ENDING_D_C3FD
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw ENDING_D_C35E
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
  k_pushiw ENDING_D_B040
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
  k_pushiw ENDING_D_B0E0
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
  k_pushiw ENDING_D_B180
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
  k_pushiw ENDING_D_BC40
  k_pushi 5
  k_pushi 3
  k_pusha ENDING_D_C473
  k_pusha ENDING_D_C429
  k_pushi 10
  k_callx RF_3E5A, 14
  k_pushib 60
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 0
  k_stl -2
ENDING_L_A708:
  k_pusha $F280
  k_pushiw ENDING_D_BC40
  k_pushi 5
  k_pushi 3
  k_ldl -2
  k_shl1
  k_inc
  k_shl1
  k_ldriw ENDING_D_C473
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_shl1
  k_inc
  k_shl1
  k_ldriw ENDING_D_C429
  k_add
  k_deref
  k_pushl
  k_pushi 10
  k_callx RF_3E5A, 14
  k_pusha $F280
  k_ldl -2
  k_shl1
  k_ldriw ENDING_D_C405
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
  k_pushiw ENDING_D_BC40
  k_pushi 5
  k_pushi 3
  k_ldl -2
  k_shl1
  k_addli 2
  k_shl1
  k_ldriw ENDING_D_C473
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_shl1
  k_addli 2
  k_shl1
  k_ldriw ENDING_D_C429
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
ENDING_D_A7DE:
  .byte $1B, $52, $27, $1B, $45, $16, $1B
  .byte "=1'", $00
ENDING_D_A7E9:
  .byte $0A, "On ", $00
ENDING_D_A7EE:
  .byte $20, $00
ENDING_D_A7F0:
  .byte ", ", $00
ENDING_D_A7F3:
  .byte ",", $0A, $0A, "Captain ", $00
ENDING_D_A7FF:
  .byte $0A, $0A, "was reported lost", $0A, $0A, "at sea.", $00
ENDING_D_A81C:
  .byte "According to one", $0A, "story, the fleet", $0A, "used up all of its", $0A, "precious supplies."
  .byte $00
ENDING_D_A864:
  .byte "They say the crew", $0A, "lingered on bravely", $0A, "until their fa"
ENDING_D_A898:
  .byte "tes", $0A, "met up with them.", $00
ENDING_D_A8AE:
  .byte "The Captain perished", $0A, "boldly at sea, a", $0A, "common fate in the", $0A, "Age of Exploration."
  .byte $00
ENDING_D_A8FB:
  .byte "A terrible storm", $0A, "ravaged his fleet", $0A, "beyond imagination.", $00
ENDING_D_A932:
  .byte "The Captain perished", $0A, "boldly at sea, a", $0A, "common fate in the", $0A, "Age of Exploration."
  .byte $00
ENDING_D_A97F:
  .byte $1B
  .byte "C0", $00
ENDING_D_A983:
  .byte $0A, "After 20 long years", $0A, $0A, "of the sailor's life", $0A, $0A, $00
ENDING_D_A9B0:
  .byte " passed", $0A, $0A, "away on ", $00
ENDING_D_A9C2:
  .byte "He was just short of", $0A, "reaching the goal he", $0A, "had aspired for all"
  .byte $0A, "his life.", $00
ENDING_D_AA0A:
  .byte $00, $00, $00, $28, $80, $20, $C2, $28, $06, $31, $93, $09, $37, $0A, $FD, $1A
  .byte $88, $45, $88
  .byte "US", $00
  .byte $59, $00, $80, $28, $C2, $38, $46, $45, $FF, $7F, $00, $00, $1D, $01, $DB, $7D
  .byte $64, $7E, $E0, $7E, $31, $7F, $BD, $46, $42, $08
  .byte "Fe9*?_"
  .byte $FF, $6F, $57, $11, $7D, $2A, $7F, $4F, $FD, $7F, $00, $00, $4E, $55, $91, $5D
  .byte $33, $5E, $B7, $5E, $F9, $66, $7B, $67, $FF
  .byte "oFe9*?_"
  .byte $FF, $6F, $57, $11, $7D, $2A, $7F, $4F, $42, $4C
ENDING_D_AA6A:
  .byte $CA, $21, $00, $28, $D9, $29, $BD, $46, $3F, $5F, $FF, $6F, $93, $00, $5B, $09
  .byte $02, $5D, $68, $6E, $B5, $7F, $BF, $1A, $7F, $3B, $0E, $4D, $57, $65, $FF, $7F
ENDING_D_AA8A:
  .byte $00, $00, $42, $08, $DB, $7D, $64, $7E, $E0, $7E, $2A, $7F, $6E, $7F, $73, $7F
  .byte "Fe9*?_"
  .byte $FF, $6F, $5B, $11, $7D, $2A, $7F, $3B, $FD, $7F
ENDING_D_AAAA:
  .byte $00, $00, $80
  .byte "DFed~"
  .byte $E0, $7E, $2A, $7F, $6E, $7F, $73, $7F, $CA, $08, $D5
  .byte "!y:=W"
  .byte $CE, $39, $B5, $56, $39, $67, $FF, $7F
ENDING_D_AACA:
  .byte $00, $00, $C6, $18, $0C, $01, $91, $11, $77, $32, $B9, $46, $7D, $57, $BF, $6F
  .byte $02, $5D, $68, $6E, $B5, $7F, $BF, $1A, $7F, $3B, $0E, $4D, $57, $65, $FF, $7F
ENDING_D_AAEA:
  .byte $00, $00, $42, $08, $CE
  .byte "9"
ENDING_D_AAF0:
  .byte "Y", $00
  .byte $1F, $01, $7F, $02, $2A, $7F, $F7, $7F, $0E, $09, $93, $19
  .byte "y*=G"
  .byte $CE, $39, $B5, $56, $39, $67, $FF, $7F, $00, $00, $86, $6D, $64, $7E, $A0, $7E
  .byte $E0, $7E, $2A, $7F, $6E, $7F, $73, $7F, $46, $01, $13, $01, $D9, $01, $BD, $1A
  .byte $A6, $02, $2E, $0B, $F5, $13, $FD, $7F
ENDING_D_AB2A:
  .byte $00, $00, $42, $08, $4C, $29, $17, $11, $59, $11, $DB, $11, $AE, $66, $33, $6F
  .byte $CC, $10
  .byte "Q!52"
  .byte $B9, $3A, $8E, $29, $33, $46, $B7
  .byte "V;_", $00
  .byte $00, $06, $45, $84, $4D, $C2, $4D, $C2
  .byte "M(N*N.N"
  .byte $C6, $00, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13, $B5, $4E
ENDING_D_AB6A:
  .byte $00, $00, $42, $08, $0A, $11, $D3, $08, $15, $09, $57, $11, $CC, $4D, $6E, $4E
  .byte $8A, $08, $0E, $19, $91, $29, $35, $32, $0C, $19, $91, $29, $35, $3A, $F9, $4E
  .byte $00, $00, $C6, $18, $C6, $18, $06, $21, $06, $21, $08, $21, $08, $21, $0A, $21
  .byte $C6, $00, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13
  .byte "L!"
ENDING_D_ABAA:
  .byte $00
  .byte $00, $42, $08, $88, $00, $4A, $00, $CE, $08, $13, $09, $4C, $29, $8E
  .byte "1F", $00
  .byte $CA, $08, $0E, $19, $D3, $29, $CA, $10, $4E, $21, $D3
  .byte ")w:", $00
  .byte $00, $86, $08, $86, $08, $86, $08, $86, $08, $86, $08, $C8, $08, $88, $08, $C6
  .byte $00, $13, $01, $D9, $01, $BD, $1A, $A6, $02, $2E, $0B, $F5, $13
  .byte $0A, $09
ENDING_D_ABEA:
  .byte $00
  .byte $00, $7B, $7F, $F7, $6E, $B5
  .byte "fs^", $00
  .byte $00, $CE, $4D, $8C, $45, $55, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $F7, $6E, $FF, $7F
ENDING_D_AC0A:
  .word ENDING_D_AC78, ENDING_D_ACA1, ENDING_D_ACCA, ENDING_D_ACF0, ENDING_D_AD01, ENDING_D_AD35, ENDING_D_AD6A, ENDING_D_AD9E
  .word ENDING_D_ADCD, ENDING_D_ADEC, ENDING_D_AE25, ENDING_D_AE58, ENDING_D_AE8C, ENDING_D_AEBF, ENDING_D_AEEB, ENDING_D_AF1D
  .word ENDING_D_AF54, ENDING_D_AF83, ENDING_D_AF89, ENDING_D_AFA1, ENDING_D_AFD1, ENDING_D_AFF6, ENDING_D_B028, ENDING_D_B05A
  .word ENDING_D_B061, ENDING_D_B09A, ENDING_D_B0BF, ENDING_D_B0F1, ENDING_D_B121, ENDING_D_B14E, ENDING_D_B176, ENDING_D_B1AA
  .word ENDING_D_B1DD, ENDING_D_B20D, ENDING_D_B218, ENDING_D_B243, ENDING_D_B265, ENDING_D_B292, ENDING_D_B2BD, ENDING_D_B2C4
  .word ENDING_D_B2F4, ENDING_D_B30F, ENDING_D_B33B, ENDING_D_B34F, ENDING_D_B370, ENDING_D_B3A6, ENDING_D_B3CE, ENDING_D_B3F3
  .word ENDING_D_B428, ENDING_D_B443, ENDING_D_B461, ENDING_D_B486, ENDING_D_B490, ENDING_D_B49C, ENDING_D_B4CE
ENDING_D_AC78:
  .byte "Sir %s,", $0A, "my thanks for", $0A, "saving Christiana!", $00
ENDING_D_ACA1:
  .byte "In addition you", $0A, "have routed the", $0A, "pirates!", $00
ENDING_D_ACCA:
  .byte "You are truly the", $0A, "bravest of them", $0A, "all", $00
ENDING_D_ACF0:
  .byte "You are too kind", $00
ENDING_D_AD01:
  .byte "There are no words", $0A, "that can express", $0A, "my appreciation", $00
ENDING_D_AD35:
  .byte "I shall award you", $0A, "a"
ENDING_D_AD48:
  .byte "s you please. Ask", $0A, "me for anything", $00
ENDING_D_AD6A:
  .byte "What do you want?", $0A, "  Land   Princess", $0A, "  Honor  Refuse", $00
ENDING_D_AD9E:
  .byte "If I owned a", $0A, "piece of land in", $0A, "my home country,", $00
ENDING_D_ADCD:
  .byte "I would be more", $0A, "than satisfied", $00
ENDING_D_ADEC:
  .byte "You desire land to", $0A, "support your noble", $0A, "rank? Let's see...", $00
ENDING_D_AE25:
  .byte "I know! Alcobaca", $0A, "the land of you", $0A, "ancestors will do", $00
ENDING_D_AE58:
  .byte "From here on you", $0A, "shall be known as", $0A, "Lord of Alcobaca", $00
ENDING_D_AE8C:
  .byte "This honor is more", $0A, "than I deserve.", $0A, "I humbly accept", $00
ENDING_D_AEBF:
  .byte "This will restore", $0A, "dignity to my", $0A, "family name", $00
ENDING_D_AEEB:
  .byte "Yes. By the way,", $0A, "as you know, I do", $0A, "not have a son", $00
ENDING_D_AF1D:
  .byte "Thus there is no", $0A, "heir to my throne.", $0A, "But how about you?", $00
ENDING_D_AF54:
  .byte "Will you marry", $0A, "Christiana and be", $0A, "my successor?", $00
ENDING_D_AF83:
  .byte "Wha-?", $00
ENDING_D_AF89:
  .byte "How wonderful!", $0A, "(Blush!)"
ENDING_D_AFA0:
  .byte $00
ENDING_D_AFA1:
  .byte "You may decide.", $0A, "I hope you will", $0A, "accept my offer", $00
ENDING_D_AFD1:
  .byte "What is your", $0A, "reply?", $0A, "  Accept  Refuse", $00
ENDING_D_AFF6:
  .byte "I am incapable of", $0A, "such a task, but", $0A, "if you wish...", $00
ENDING_D_B028:
  .byte "To the Princess", $0A, "and to P"
ENDING_D_B040:
  .byte "ortugal I", $0A, "devote my life!", $00
ENDING_D_B05A:
  .byte "Oh %s!", $00
ENDING_D_B061:
  .byte "You two seem glad!", $0A, "There must be some", $0A, "hidden charm here!", $00
ENDING_D_B09A:
  .byte "Now I can retire", $0A, "in peace.", $0A, "Oh-ho-ho!", $00
ENDING_D_B0BF:
  .byte "Unfortunately I am", $0A, "incapable of s"
ENDING_D_B0E0:
  .byte "uch", $0A, "a great task", $00
ENDING_D_B0F1:
  .byte "Please, won't you", $0A, "think again?", $0A, "  Accept  Refuse", $00
ENDING_D_B121:
  .byte "I have long", $0A, "wanted to restore", $0A, "my family name", $00
ENDING_D_B14E:
  .byte "Easily done. I", $0A, "dub you Lord of", $0A, "Alcobaca", $00
ENDING_D_B176:
  .byte "Your title"
ENDING_D_B180:
  .byte " will", $0A, "restore the glory", $0A, "of your ancestors", $00
ENDING_D_B1AA:
  .byte "This is too great", $0A, "an honor for me.", $0A, "I humbly accept", $00
ENDING_D_B1DD:
  .byte "I desire Princess", $0A, "Christiana's hand", $0A, "in marriage", $00
ENDING_D_B20D:
  .byte "Oh my!", $0A, "%s!", $00
ENDING_D_B218:
  .byte "There mu"
ENDING_D_B220:
  .byte "st be a", $0A, "greater power at", $0A, "work here", $00
ENDING_D_B243:
  .byte "Yet, my daughter", $0A, "is my only child", $00
ENDING_D_B265:
  .byte "I had planned for", $0A, "her to marry into", $0A, "Spain...", $00
ENDING_D_B292:
  .byte "Father, please! I", $0A, "can marry no"
ENDING_D_B2B0:
  .byte " one", $0A, "but %s!", $00
ENDING_D_B2BD:
  .byte "Hmm...", $00
ENDING_D_B2C4:
  .byte "She will always", $0A, "be happy with me.", $0A, "Sire, please!", $00
ENDING_D_B2F4:
  .byte "Then it's settled.", $0A, "Sir %s,", $00
ENDING_D_B30F:
  .byte "I will transfer", $0A, "the reigns of", $0A, "power to you!", $00
ENDING_D_B33B:
  .byte "Wha-?"
ENDING_D_B340:
  .byte $0A, "Your Majesty!", $00
ENDING_D_B34F:
  .byte "I'm so happy!", $0A, "Thank you, Father!", $00
ENDING_D_B370:
  .byte "I will strive for", $0A, "Christiana and the", $0A, "good of Portugal", $00
ENDING_D_B3A6:
  .byte "As of this day", $0A, "you are King of", $0A, "Portugal", $00
ENDING_D_B3CE:
  .byte "My"
ENDING_D_B3D0:
  .byte " blessings are", $0A, "with you.", $0A, "Oh-ho-ho!", $00
ENDING_D_B3F3:
  .byte "My labors were for", $0A, "my ancestors and", $0A, "for the Princess", $00
ENDING_D_B428:
  .byte "I desire nothing", $0A, "in return", $00
ENDING_D_B443:
  .byte "I see. You are a", $0A, "generous man", $00
ENDING_D_B461:
  .byte "Thank you. I must", $0A, "take my leave", $0A, "here", $00
ENDING_D_B486:
  .byte "%s!", $0A, "Wait!", $00
ENDING_D_B490:
  .byte "Christiana!", $00
ENDING_D_B49C:
  .byte "What's this? You", $0A, "must be hiding", $0A, "something from me", $00
ENDING_D_B4CE:
  .byte "Your Majesty, I", $0A, "beg for your", $0A, "understanding", $00
ENDING_D_B4F9:
  .word $9B04, $9B14, $9B24, $9B34, $9B44, $9A74
  .byte $84, $9A, $94, $9A, $A4, $9A, $B4, $9A, $C4, $9A, $D4, $9A, $E4, $9A, $54, $9B
  .byte $6C, $9B, $84, $9B, $9C, $9B, $F4, $9A
ENDING_D_B51D:
  .byte $1B, $48, $00
ENDING_D_B520:
  .byte $0A, $00
ENDING_D_B522:
  .byte $00, $0C, $01
ENDING_D_B525:
  .byte $0A, $12, $1A
ENDING_D_B528:
  .byte $02
ENDING_D_B529:
  .byte $04, $02, $04, $03, $04
ENDING_D_B52E:
  .byte $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $0A, $4B, $02, $03, $0C, $4D, $02, $00, $57, $B4, $4D, $02, $01, $57, $B4, $4D
  .byte $02, $02, $57, $64, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F
  .byte $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0E, $02, $00
  .byte $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0D, $02, $00, $0C, $50, $02, $D0
  .byte "'OW", $0F, "K", $00
  .byte $18, $15, $4D, $00, $03, $57, $14, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $14, $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $4D, $02, $04, $57, $1E, $47, $0E, $02, $00, $0C, $50, $02, $D0
  .byte "'OW<G"
  .byte $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0A, $4D, $02, $05, $57, $B4
  .byte $4D, $02, $06
  .byte "E"
ENDING_D_B5C4:
  .byte "M", $00
  .byte $07, $57, $B4, $4D, $00, $08, $57, $1E, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0D, $02
  .byte $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02, $09, $57, $3C, $47, $0F
  .byte $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $4D, $02, $0A, $57, $78, $47
  .byte $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $4D, $02, $0B, $57, $3C
  .byte $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW", $0F, "M", $00
  .byte $0C, $57, $B4, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW", $14, "M", $00
  .byte $0D, $57, $B4, $45
ENDING_D_B648:
  .byte $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47, $0D, $02, $00
  .byte $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02, $0E, $57, $B4, $4D, $02, $0F
  .byte $57, $B4, $4D, $02, $10, $57, $1E, $47, $0E, $02, $00, $0C, $50, $02, $D0
  .byte "'OW", $0F, "M", $00
  .byte $11, $57, $B4, $4B, $01, $03, $0C, $4D, $01, $12, $57, $B4, $4B, $02, $03, $0C
  .byte $4D, $02, $13, $57, $B4, $4D, $02, $14, $57, $1E, $47, $0D, $02, $00, $0C, $50
  .byte $02, $D0
  .byte "'OW", $0A, "G", $06, $00
  .byte $00, $08, $50, $00
  .byte "X'OE"
ENDING_D_B6AE:
  .byte "G", $05, $00
  .byte $00, $08, $50, $00
  .byte "X'OW", $0F, "M", $00
  .byte $15, $57, $B4, $4D, $00, $16, $57, $B4, $4B, $01, $03, $0C, $4D, $01, $17, $57
  .byte $B4, $47, $01, $01, $00, $08, $50, $01, $98, $27, $4F, $57, $0F, $47, $02, $01
  .byte $00, $08, $50, $01, $96, $27, $4F, $57, $0F, $47, $01, $01, $00, $08, $50, $01
  .byte $94, $27, $4F, $57, $1E, $47, $02, $01, $00, $08, $50, $01, $92, $27, $4F, $57
  .byte $0A, $47, $01, $01, $00, $08, $50, $01, $90, $27, $4F, $57, $0A, $47, $02, $01
  .byte $00, $08, $50, $01, $8E, $27, $47, $07, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $8C
  .byte "'G", $09, $00
  .byte $00, $08, $50, $00
  .byte "^'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $88
  .byte "'G", $0A, $00
  .byte $00, $08, $50, $00
  .byte "d'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $84, $27, $47, $07, $00, $00, $08, $50
  .byte $00
  .byte "j'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $80
  .byte "'G", $09, $00
  .byte $00, $08, $50, $00
  .byte "p'OW"
  .byte $05, $47, $03, $01, $00, $08, $50, $01, $80, $27, $47, $11, $00, $00, $08, $50
  .byte $00
  .byte "p'OW"
  .byte $0F, $4B, $02, $03, $0C, $4D, $02, $18, $57, $1E, $47, $0E, $02, $00, $0C, $50
  .byte $02, $D0, $27, $4F, $57, $0A, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F
  .byte $57, $0A, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0A, $47, $0D
  .byte $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0A, $47, $0E, $02, $00, $0C, $50
  .byte $02, $D0, $27, $4F, $57, $0A, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F
  .byte $57, $0A, $4D, $02, $19, $57, $B4, $45
ENDING_D_B7DE:
  .byte $47, $05, $00, $00, $08, $50, $00
  .byte "X'OW", $0F, "M", $00
  .byte $1A, $57, $B4, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $1E, $4D, $02, $1B, $45
ENDING_D_B7FF:
  .byte $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW", $0F, "M", $00
  .byte $1C, $57, $B4, $47, $0E, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $47
  .byte $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02, $1D, $57, $B4
  .byte $47, $0F, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $4D, $02, $1E, $57
  .byte $B4, $47, $0D, $02, $00, $0C, $50, $02, $D0
  .byte "'OW", $0A, "G", $05, $00
  .byte $00, $08, $50, $00
  .byte "X'OW", $0F, "M", $00
  .byte $1F, $57, $3C, $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW(G", $05, $00
  .byte $00, $08, $50, $00
  .byte "X'OW"
  .byte $0F, $45
ENDING_D_B874:
  .byte $47, $06, $00, $00, $08, $50, $00
  .byte "X'OW", $0F, "M", $00
  .byte $20, $57, $B4, $4B, $01, $03, $0C, $4D, $01, $21, $57, $B4, $47, $01, $01, $00
  .byte $08, $50, $01, $98, $27, $4F, $57, $0F, $47, $02, $01, $00, $08, $50, $01, $96
  .byte $27, $4F, $57, $0F, $47, $01, $01, $00, $08, $50, $01, $94, $27, $4F, $57, $1E
  .byte $47, $02, $01, $00, $08, $50, $01, $92, $27, $4F, $57, $0A, $47, $01, $01, $00
  .byte $08, $50, $01, $90, $27, $4F, $57, $0A, $47, $02, $01, $00, $08, $50, $01, $8E
  .byte $27, $47, $07, $00, $00, $08, $50, $00
  .byte "X'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $8C
  .byte "'G", $09, $00
  .byte $00, $08, $50, $00
  .byte "^'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $88
  .byte "'G", $0A, $00
  .byte $00, $08, $50, $00
  .byte "d'OW"
  .byte $05, $47, $01, $01, $00, $08, $50, $01, $84, $27, $47, $07, $00, $00, $08, $50
  .byte $00
  .byte "j'OW"
  .byte $05, $47, $02, $01, $00, $08, $50, $01, $80
  .byte "'G", $09, $00
  .byte $00, $08, $50, $00
  .byte "p'OW"
  .byte $05, $47, $03, $01, $00, $08, $50, $01, $80, $27, $47, $11, $00, $00, $08, $50
  .byte $00
  .byte "p'OW"
  .byte $0F, $4B, $02, $03, $0C, $4D, $02, $22, $57, $B4, $45
ENDING_D_B952:
  .byte $4D, $02, $23, $57, $B4, $4D, $02, $24, $57, $1E, $47, $0E, $02, $00, $0C, $50
  .byte $02, $D0
  .byte "'OW<G", $05, $00
  .byte $00, $08, $50, $00
  .byte "p'OW", $0F, "G", $00
  .byte $01, $00, $08, $50, $01, $80, $27, $4F, $57, $0F, $47, $04, $01, $00, $08, $50
  .byte $01, $80, $27, $4F, $57, $0F, $4B, $01, $03, $0C, $4D, $01
  .byte "%W<G"
  .byte $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $1E, $47, $0E, $02, $00, $0C
  .byte $50, $02, $D0, $27, $4F, $57, $0F, $4B, $02, $03, $0C, $4D, $02, $26, $57, $B4
  .byte $4D, $00, $27, $57, $1E, $47, $06, $00, $00, $08, $50, $00, $70, $27, $57, $0F
  .byte $47, $05, $00, $00, $08, $50, $00
  .byte "p'W<G"
  .byte $0F, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57, $0F, $4D, $02, $28, $57, $B4
  .byte $4D, $02, $29, $57, $1E, $47, $0D, $02, $00, $0C, $50, $02, $D0, $27, $4F, $57
  .byte $1E, $47, $07, $00, $00, $08, $50, $00
  .byte "p'OW", $05, "M", $00
  .byte $2A, $57, $B4, $4B, $01, $03, $0C, $4D, $01, $2B, $57, $1E, $47, $04, $01, $00
  .byte $08, $50, $01, $80, $27, $4F, $57, $0F, $47, $06, $00, $00, $08, $50, $00
  .byte "p'OW", $0F, "M", $00
  .byte ",W<G", $07, $00
  .byte $00, $08, $50, $00
  .byte "p'W", $1E, "G", $00
  .byte $01, $00, $08, $50, $01, $80, $27, $4F, $57, $0F, $47, $07, $00, $00, $08, $50
  .byte $00, $70, $27, $57, $1E, $47, $11, $00, $00, $08, $50, $00, $70, $27, $47, $03
  .byte $01, $00, $08, $50, $01, $80
  .byte "'OW<K"
  .byte $02, $03, $0C, $4D, $02, $2D, $57, $B4, $4D, $02, $2E, $57, $B4
  .byte "E"
ENDING_D_BA70:
  .byte "M", $00
  .byte $2F, $57, $B4, $4D, $00
  .byte "0W<G", $06, $00
  .byte $00, $08, $50, $00
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
  .byte "L'OW", $0F, "M", $00
  .byte "4W<G"
  .byte $02, $01, $00, $08, $50, $01, $94, $27, $4F, $57, $05, $47, $01, $01, $00, $08
  .byte $50, $01, $90, $27, $4F, $57, $05, $47, $02, $01, $00, $08, $50, $01, $8C, $27
  .byte $4F, $57, $05, $47, $01, $01, $00, $08, $50, $01, $88, $27, $4F, $57, $05, $47
  .byte $02, $01, $00, $08, $50, $01, $84
  .byte "'OW", $05, "G", $00
  .byte $01, $00, $08, $50, $01, $80
  .byte "'OW", $0F, "G", $09, $00
  .byte $00, $08, $50, $00
  .byte "R'OW", $0A, "G", $0A, $00
  .byte $00, $08, $50, $00
  .byte "X'OW", $0A, "G", $07, $00
  .byte $00, $08, $50, $00
  .byte "^'OW", $0A, "G", $09, $00
  .byte $00, $08, $50, $00
  .byte "d'OW", $0A, "G", $0A, $00
  .byte $00, $08, $50, $00
  .byte "j'OW", $0A, "G", $11, $00
  .byte $00, $08, $50, $00, $70, $27, $47, $03, $01, $00, $08, $50, $01, $80
  .byte "'OW<K"
  .byte $02, $03, $0C, $4D, $02, $35, $57, $B4, $47, $04, $01, $00, $08, $50, $01, $80
  .byte $27, $47, $05, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $0F, $47, $06, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $14, $47, $05, $00, $00, $08, $50, $00
  .byte "p'OW", $0F, "M", $00
  .byte "6W<G", $06, $00
  .byte $00, $08, $50, $00
  .byte "p'OWPG", $00
  .byte $01, $00, $08, $50, $01, $80, $27, $4F, $47, $07, $00, $00, $08, $50, $00
  .byte "p'OW"
  .byte $0F, $47, $11, $00, $00, $08, $50, $00, $70, $27, $47, $03, $01, $00, $08, $50
  .byte $01, $80
  .byte "'OW<E"
ENDING_D_BC2E:
  .byte "G", $07, $00
  .byte $00, $08, $50, $00
  .byte "0'OW", $05, "G", $09, $00
  .byte $00, $08, $50
ENDING_D_BC40:
  .byte $00
  .byte "0'OW", $05, "G", $0A, $00
  .byte $00, $08, $50, $00
  .byte "0'OW"
  .byte $05, $45
ENDING_D_BC53:
  .byte $47, $07, $00, $00, $08, $50, $00
  .byte "0'OW"
ENDING_D_BC5E:
  .byte $0A, "G", $09, $00
  .byte $00, $08, $50, $00
  .byte "6'OW", $0A, "G", $0A, $00
ENDING_D_BC6E:
  .byte $00, $08, $50, $00
  .byte "<'OW", $0A, "G", $07, $00
  .byte $00, $08, $50, $00
  .byte "B'OW", $0A, "G", $09, $00
  .byte $00, $08, $50, $00
  .byte "H'OW", $0A, "G", $0A, $00
  .byte $00, $08, $50, $00
  .byte "N'OW", $0A, "G", $07, $00
  .byte $00, $08, $50, $00
  .byte "S'OW", $0A, "G", $09, $00
  .byte $00, $08, $50, $00
  .byte "X'OW", $0A, "G", $00
  .byte $01, $00, $08, $50, $01, $98, $27, $47, $0D, $02, $00, $0C, $50, $02, $D0
  .byte "'OW", $0A, "E"
ENDING_D_BCC9:
  .byte $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8"
  .byte $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8"
ENDING_D_BCED:
  .byte $00
ENDING_D_BCEE:
  .byte $00
ENDING_D_BCEF:
  .byte $00
ENDING_D_BCF0:
  .byte $02
ENDING_D_BCF1:
  .byte $06, $17, $06, $02, $0C, $10, $06, $09, $06, $18, $0E
ENDING_D_BCFC:
  .byte $07
ENDING_D_BCFD:
  .byte $04, $07, $05, $07, $04, $07, $04, $07, $04, $06, $06
ENDING_D_BD08:
  .byte $0A, $25, $32, $26, $B2
  .byte "%z%B%"
  .byte $EA, $25
ENDING_D_BD14:
  .byte $04
ENDING_D_BD15:
  .byte $04, $04, $05, $06, $05, $06, $05, $07, $06, $08, $06
ENDING_D_BD20:
  .byte $00, $00, $10, $00, $00, $04, $20, $00, $30, $00, $00, $04, $40, $00, $54, $00
  .byte $00, $04, $68, $00, $7C, $00, $00, $04, $90, $00, $AE, $00, $CC, $00, $EA, $00
  .byte $08, $01, $26, $01, $44, $01, $62, $01, $80, $01, $9E, $01, $BC, $01, $DA, $01
  .byte $00, $04, $F8, $01, $22, $02, $00, $04, $4C, $02, $76, $02, $00, $04, $A0, $02
  .byte $D0, $02, $00, $04, $00, $03, $30, $03
ENDING_D_BD68:
  .byte $5A, $00, $C0
  .byte "@P", $00
  .byte $00, $5A, $01, $D0, $40, $50, $01, $00, $5A, $02, $90, $58, $50, $02, $01, $5A
  .byte $03, $90, $70, $50, $03, $01, $5A, $04, $B0, $68, $50, $04, $02, $5A, $05, $B0
  .byte $80, $50, $05
  .byte $02, "SW<Z", $00
  .byte $C0
  .byte "BP", $00
  .byte $01, $5A, $01, $D0, $42, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $C0
  .byte "DP", $00
  .byte $00, $5A, $01, $D0, $44, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $C0
  .byte "FP", $00
  .byte $02, $5A, $01, $D0, $46, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $C0
  .byte "HP", $00
  .byte $00, $5A, $01, $D0, $48, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $C0
  .byte "JP", $00
  .byte $01, $5A, $01, $D0, $4A, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $C0
  .byte "LP", $00
  .byte $00, $5A, $01, $D0, $4C, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $C0
  .byte "NP", $00
  .byte $02, $5A, $01, $D0, $4E, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $C0
  .byte "PP", $00
  .byte $00, $5A, $01, $D0, $50, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $C0
  .byte "PP", $00
  .byte $03, $5A, $01, $D0, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $BE
  .byte "PP", $00
  .byte $04, $5A, $01, $CE, $50, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $BC
  .byte "PP", $00
  .byte $03, $5A, $01, $CC, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $BA
  .byte "PP", $00
  .byte $05, $5A, $01, $CA, $50, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $B8
  .byte "PP", $00
  .byte $03, $5A, $01, $C8, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $B6
  .byte "PP", $00
  .byte $04, $5A, $01, $C6, $50, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $B4
  .byte "PP", $00
  .byte $03, $5A, $01, $C4, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $B2
  .byte "PP", $00
  .byte $05, $5A, $01, $C2, $50, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $B0
  .byte "PP", $00
  .byte $03, $5A, $01, $C0, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $AE
  .byte "PP", $00
  .byte $04, $5A, $01, $BE, $50, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $AC
  .byte "PP", $00
  .byte $03, $5A, $01, $BC, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $AA
  .byte "PP", $00
  .byte $05, $5A, $01, $BA, $50, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $A8
  .byte "PP", $00
  .byte $03, $5A, $01, $B8, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $A6
  .byte "PP", $00
  .byte $04, $5A, $01, $B6, $50, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $A4
  .byte "PP", $00
  .byte $03, $5A, $01, $B4, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $A2
  .byte "PP", $00
  .byte $05, $5A, $01, $B2, $50, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $A0
  .byte "PP", $00
  .byte $03, $5A, $01, $B0, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $A0
  .byte "PP", $00
  .byte $00, $5A, $01, $B0, $50, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $A0
  .byte "RP", $00
  .byte $01, $5A, $01, $AE, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $A0
  .byte "TP", $00
  .byte $00, $5A, $01, $AC, $50, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $A0
  .byte "VP", $00
  .byte $02, $5A, $01, $AA, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $A0
  .byte "XP", $00
  .byte $00, $5A, $01, $A8, $50, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $A0
  .byte "ZP", $00
  .byte $01, $5A, $01, $A6, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $A0
  .byte "\P", $00
  .byte $00, $5A, $01, $A4, $50, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $A0
  .byte "^P", $00
  .byte $02, $5A, $01, $A2, $50, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $A0
  .byte "`P", $00
  .byte $00, $5A, $01, $A0, $50, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $A0
  .byte "`P", $00
  .byte $01, $5A, $01, $A0, $50, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "bP", $00
  .byte $00, $5A, $01, $A0, $52, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $A0
  .byte "dP", $00
  .byte $02, $5A, $01, $A0, $54, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "fP", $00
  .byte $00, $5A, $01, $A0, $56, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $A0
  .byte "hP", $00
  .byte $01, $5A, $01, $A0, $58, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "jP", $00
  .byte $00, $5A, $01, $A0, $5A, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $A0
  .byte "lP", $00
  .byte $02, $5A, $01, $A0, $5C, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "nP", $00
  .byte $00, $5A, $01, $A0, $5E, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $A0
  .byte "pP", $00
  .byte $01, $5A, $01, $A0, $60, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "rP", $00
  .byte $00, $5A, $01, $A0, $62, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $A0
  .byte "tP", $00
  .byte $02, $5A, $01, $A0, $64, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "vP", $00
  .byte $00, $5A, $01, $A0, $66, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $A0
  .byte "xP", $00
  .byte $01, $5A, $01, $A0, $68, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "zP", $00
  .byte $00, $5A, $01, $A0, $6A, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $A0
  .byte "|P", $00
  .byte $02, $5A, $01, $A0, $6C, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $A0
  .byte "~P", $00
  .byte $00, $5A, $01, $A0, $6E, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $A0, $80, $50, $00, $01, $5A, $01, $A0, $70, $50, $01, $00, $50, $02, $00
  .byte "SW", $0A, "Z", $00
  .byte $9E, $80, $50, $00, $03, $5A, $01, $A0, $72, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $9E, $80, $50, $00, $04, $5A, $01, $A0, $72, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $9C, $80, $50, $00, $03, $5A, $01, $A0, $74, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $9A, $80, $50, $00, $05, $5A, $01, $A0, $76, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $98, $80, $50, $00, $03, $5A, $01, $A0, $78, $50, $01
  .byte $01, "SW", $0A, "Z", $00
  .byte $96, $80, $50, $00, $04, $5A, $01, $A0, $7A, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $94, $80, $50, $00, $03, $5A, $01, $A0, $7C, $50, $01
  .byte $02, "SW", $0A, "Z", $00
  .byte $92, $80, $50, $00, $05, $5A, $01, $A0, $7E, $50, $01, $00
  .byte "SW", $0A, "Z", $00
  .byte $90, $80, $50, $00, $03, $5A, $01, $A0, $80, $50, $01, $01, $50, $03, $00
  .byte "SW", $0A, "Z", $00
  .byte $8E, $80, $50, $00, $04, $5A, $01, $9E, $80, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $8C, $80, $50, $00, $03, $5A, $01, $9C, $80, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $8A, $80, $50, $00, $05, $5A, $01, $9A, $80, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $88, $80, $50, $00, $03, $5A, $01, $98, $80, $50, $01
  .byte $04, "SW", $0A, "Z", $00
  .byte $86, $80, $50, $00, $04, $5A, $01, $96, $80, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $84, $80, $50, $00, $03, $5A, $01, $94, $80, $50, $01
  .byte $05, "SW", $0A, "Z", $00
  .byte $82, $80, $50, $00, $05, $5A, $01, $92, $80, $50, $01
  .byte $03, "SW", $0A, "Z", $00
  .byte $80, $80, $50, $00, $03, $5A, $01, $90, $80, $50, $01
  .byte $04, "SW", $0A, "C", $00
  .byte $5A, $01, $86, $80, $50, $01, $03, $53, $57, $0A, $5A, $01, $84, $80, $50, $01
  .byte $05, $53, $57, $0A, $5A, $01, $82, $80, $50, $01, $03, $53, $57, $0A, $5A, $01
  .byte $80, $80, $50, $01, $04, $53, $57, $0A, $43, $01, $53, $57, $01, $45
ENDING_D_C24F:
  .byte $B8, $81, $C4, $81, $D0, $81, $24, $82, $30, $82, $3C, $82, $00, $82, $0C, $82
  .byte $18, $82, $DC, $81, $E8, $81, $F4, $81
ENDING_D_C267:
  .word $A58C, $A598
  .byte $A4, $A5, $F8, $A5, $04, $A6, $10, $A6, $D4, $A5, $E0, $A5, $EC, $A5, $B0, $A5
  .byte $BC, $A5, $C8, $A5
ENDING_D_C27F:
  .byte $1C, $A6, $28, $A6, $34, $A6, $1C, $A6, $28, $A6, $34, $A6, $1C, $A6, $28, $A6
  .byte $34, $A6, $1C, $A6, $28, $A6, $34, $A6
ENDING_D_C297:
  .byte $CA, $21, $00, $28, $D9, $29, $BD, $46, $3F, $5F, $FF, $6F, $93, $00, $5B, $09
  .byte $02, $5D, $68, $6E, $B5, $7F, $BF, $1A, $7F, $3B, $0E, $4D, $57, $65, $FF, $7F
ENDING_D_C2B7:
  .byte $1B
  .byte "C2", $00
ENDING_D_C2BB:
  .byte "Lisbon", $00
ENDING_D_C2C2:
  .byte $1B
  .byte "C0", $00
ENDING_D_C2C6:
  .word ENDING_D_C2CA
ENDING_D_C2C8:
  .word ENDING_D_C30F
ENDING_D_C2CA:
  .byte $1B, "=5#", $1B, "R#King %s went on", $0A, "to lead Portugal into a", $0A, "new age of prosperity"
  .byte $00
ENDING_D_C30F:
  .byte $1B, "=5#", $1B, "R#And those sailors with", $0A, "ambitions still aglow", $0A, "embarked for the high seas"
  .byte $00
ENDING_D_C35E:
  .word ENDING_D_C366, ENDING_D_C37C, ENDING_D_C39B, ENDING_D_C3CC
ENDING_D_C366:
  .byte "Uncharted", $0A, "Waters...", $1B, "W", $00
ENDING_D_C37C:
  .byte "In the Age of", $0A, "Exploration...", $1B, "W", $00
ENDING_D_C39B:
  .byte "When those with", $0A, "courage challenged", $0A, "the unknown", $1B, "W", $00
ENDING_D_C3CC:
  .byte "A glorious page", $0A, "in the great book", $0A, "of history", $1B, "W", $1B, "W", $00
ENDING_D_C3FD:
  .byte $1B
  .byte "=0(", $1B, "R(", $00
ENDING_D_C405:
  .word ENDING_D_B220, ENDING_D_B2B0, ENDING_D_B340, ENDING_D_B3D0
  .byte $60, $B4, $F0, $B4, $80, $B5, $10, $B6, $A0, $B6, $30, $B7, $C0, $B7, $50, $B8
  .byte $E0, $B8, $70, $B9, $00, $BA, $90, $BA, $20, $BB, $B0, $BB
ENDING_D_C429:
  .byte $88, $00, $8C, $00, $96, $00, $9E, $00, $9A, $00, $8D, $00, $96, $00, $A1, $00
  .byte $AE, $00, $BD, $00, $B0, $00, $A5, $00, $9B, $00, $90, $00, $85, $00, $85, $00
  .byte $93, $00, $A8, $00, $A0, $00, $A1, $00, $AE, $00, $B4, $00, $B1, $00, $BB, $00
  .byte $C5, $00, $C5, $00, $C1, $00, $C9, $00, $D2, $00, $D2, $00, $D4, $00, $DA, $00
  .byte $DB, $00, $CB, $00, $C1, $00, $B5, $00, $BF, $00
ENDING_D_C473:
  .byte $84, $00, $7C, $00, $76, $00, $79, $00, $84, $00, $85, $00, $7B, $00, $77, $00
  .byte $79, $00, $78, $00, $7A, $00, $80, $00, $8F, $00, $99, $00, $9A, $00, $92, $00
  .byte $8F, $00, $88, $00, $8F, $00, $97, $00, $8E, $00, $8B, $00, $9A, $00, $92, $00
  .byte $8A, $00, $94, $00, $99, $00, $91, $00, $89, $00, $92, $00, $99, $00, $95, $00
  .byte $86, $00, $83, $00, $83, $00, $83, $00, $7A, $00, $00
