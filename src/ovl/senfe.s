; overlay senfe, runs at $7E:A500
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp SENFE_F_A503
; calls 2
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
; vars: g_cargo | calls 2
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
  k_ldriw g_cargo
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
  k_callx rand, 2
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
  k_callx rand, 2
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
; calls 1
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
  k_callx rand, 2
  k_popstoreb
  k_pushib 30
  k_callx rand, 2
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
; calls 1
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
  k_callx rand, 2
  k_jumpt SENFE_L_A680
  k_pushi 8
  k_callx rand, 2
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
  k_ldriw SENFE_D_BBDE
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
; vars: g_month, g_zone_attr
SENFE_F_A6CA:
  k_func 8
  k_ldlba g_month
  k_ldri 2
  k_ugt
  k_jumpf SENFE_L_A6E7
  k_ldlba g_month
  k_ldri 9
  k_ult
  k_jumpf SENFE_L_A6E7
  k_ldlba g_zone_attr+1
  k_ldri 4
  k_shr
  k_jump SENFE_L_A6EA
SENFE_L_A6E7:
  k_ldlba g_zone_attr+1
SENFE_L_A6EA:
  k_ldri 15
  k_and
  k_inc
  k_stla $F30C
  k_ldlba g_month
  k_ldri 2
  k_ugt
  k_jumpf SENFE_L_A708
  k_ldlba g_month
  k_ldri 9
  k_ult
  k_jumpf SENFE_L_A708
  k_ldlba g_zone_attr
  k_ldri 4
  k_shr
  k_jump SENFE_L_A70B
SENFE_L_A708:
  k_ldlba g_zone_attr
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
; calls 1
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
  k_callx rand, 2
  k_ldrarg 11
  k_add
  k_stl -10
  k_pushi 3
  k_callx rand, 2
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
  k_callx rand, 2
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
; sys: memset_long | vars: g_fleets | calls 6
SENFE_F_A7FD:
  k_func 8
  k_pushiw $0087
  k_pushi 0
  k_pushiw $F310
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_pusharg 13
  k_callx SENFE_F_A5F5, 2
  k_call SENFE_F_A622
  k_call SENFE_F_A693
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -2
  k_ldlarg 13
  k_ldri 4
  k_shl
  k_ldriw g_fleets
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
; vars: g_cargo
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
  k_ldriw g_cargo
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
; calls 2
SENFE_F_A8FC:
  k_func 8
  k_ldli 7
  k_stl -4
  k_ldli 3
  k_stl -6
  k_ldli 5
  k_stl -8
  k_ldliw SENFE_D_BC56
  k_stl -2
  k_ldlarg 11
  k_jumpf SENFE_L_A91A
  k_ldli 2
  k_stl -4
  k_ldlib 18
  k_stl -6
  k_ldli 6
  k_stl -8
  k_ldliw SENFE_D_BC60
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
; calls 3
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
; vars: g_king_mission
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
  k_ldlba g_king_mission+2
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_A96D
  k_ldlba g_king_mission+8
  k_ldr -2
  k_eq
  k_return
SENFE_L_A96D:
  k_ldlba g_king_mission+3
  k_ldr -2
  k_eq
  k_return
; calls 1
SENFE_F_A973:
  k_func 2
  k_ldlbf 13
  k_jumpt SENFE_L_A985
  k_pushi 1
  k_pushiw SENFE_D_BF42
  k_jump SENFE_L_A989
SENFE_L_A985:
  k_pushi 1
  k_pushiw SENFE_D_BF46
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
  k_pushiw SENFE_D_BF4A
  k_jump SENFE_L_A9A3
SENFE_L_A99F:
  k_pushi 0
  k_pushiw SENFE_D_BF4F
SENFE_L_A9A3:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_ldl -2
  k_shl1
  k_ldriw SENFE_D_BF1F
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_return
; vars: g_princess, g_king_mission, g_player_name_ptr | calls 10
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
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpt SENFE_L_A9FC
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf SENFE_L_A9FC
  k_ldlba g_king_mission+2
  k_ldri 1
  k_ugt
  k_jumpf SENFE_L_A9FC
  k_pusharg 13
  k_pusharg 11
  k_callx SENFE_F_A950, 4
  k_jumpf SENFE_L_A9FC
  k_ldli 0
  k_stlba g_princess
  k_ldli 0
  k_stlba g_king_mission+2
SENFE_L_A9FC:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf SENFE_L_AA1F
  k_ldlba g_princess
  k_ldri 2
  k_and
  k_ldri 2
  k_eq
  k_jumpt SENFE_L_AA1F
  k_ldlba g_king_mission+2
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
  k_pushiw SENFE_D_BF55
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pushiw SENFE_D_BF77
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw SENFE_D_BF78
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pusha SENFE_D_BC6A
  k_pushiw SENFE_D_BF7E
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
  k_pusha SENFE_D_BC6C
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
  k_pusha SENFE_D_BC6E
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha SENFE_D_BC70
SENFE_L_AAB5:
  k_pushi 0
  k_jump SENFE_L_AA7E
SENFE_L_AAB9:
  k_pusha SENFE_D_BC72
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha SENFE_D_BC74
  k_jump SENFE_L_AAB5
SENFE_L_AACA:
  k_pusha SENFE_D_BC76
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha SENFE_D_BC78
  k_jump SENFE_L_AAB5
SENFE_L_AADB:
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_ldlba g_king_mission+2
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_AB37
  k_pushiw SENFE_D_BF83
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw SENFE_D_BF84
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
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw SENFE_D_BF97
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pusha SENFE_D_BC7A
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pusha SENFE_D_BC7C
  k_pushi 0
  k_callx SENFE_F_A92C, 4
SENFE_L_AB37:
  k_ldlba g_king_mission+2
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_AB6D
  k_pushiw SENFE_D_BF9A
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pusha SENFE_D_BC80
  k_pusha SENFE_D_BC7E
  k_pushiw SENFE_D_BF9B
  k_callx RF_3608, 8
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pusha SENFE_D_BC82
  k_pushi 0
  k_callx SENFE_F_A92C, 4
SENFE_L_AB6D:
  k_ldlba g_king_mission+2
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_ABC3
  k_pusha SENFE_D_BC84
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_pusha SENFE_D_BC86
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
  k_pushiw SENFE_D_BFB6
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw SENFE_D_BFB7
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pusha SENFE_D_BC88
  k_pushiw SENFE_D_BFBD
  k_callx RF_3608, 4
  k_pusha SENFE_D_BC8A
  k_pushi 1
  k_callx SENFE_F_A92C, 4
SENFE_L_ABC3:
  k_call RF_472D
  k_return
; calls 4
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
  k_callx rand, 2
  k_shl1
  k_ldriw SENFE_D_BFC3
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
; vars: g_fh_cbmap0 | calls 2
SENFE_F_AC0C:
  k_func 0
  k_call RF_3D7C
  k_pusha g_fh_cbmap0
  k_pushiw $05EC
  k_pushib 28
  k_pushib 32
  k_pushi 1
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha g_fh_cbmap0
  k_pushiw $1378
  k_pushi 6
  k_pushib 30
  k_pushib 22
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha g_fh_cbmap0
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
; calls 1
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
; vars: g_fh_cbmap0 | calls 3
SENFE_F_ACD1:
  k_func 8
  k_call SENFE_F_AC0C
  k_ldli 1
  k_stl -6
SENFE_L_ACDB:
  k_pusha g_fh_cbmap0
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
  k_pusha g_fh_cbmap0
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
  k_pusha g_fh_cbmap0
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
; sys: lz_decompress, vram_load_tiles | vars: g_player_name_ptr, g_fh_cbmap0, g_title | calls 6
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
  k_pushiw SENFE_D_C02D
  k_callx RF_2FB9, 4
  k_ldl -2
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw SENFE_D_C038
  k_callx RF_2FB9, 4
  k_pushi 0
  k_push -2
  k_callx SENFE_F_A973, 4
  k_pushi 0
  k_pushiw SENFE_D_C03A
  k_callx RF_2FB9, 4
  k_pushib 23
  k_pushiw $8000
  k_pushi 0
  k_pushib 76
  k_callx syscall, 8  ; sys 76 lz_decompress
  k_pushi 1
  k_pushib 127
  k_pushiw $0100
  k_pushi 4
  k_pushiw $00A0
  k_pushi 11
  k_callx syscall, 12  ; sys 11 vram_load_tiles
  k_pusha g_fh_cbmap0
  k_pushiw RD_8C54
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
  k_pushiw SENFE_D_C03C
  k_callx RF_2FB9, 4
  k_ldlba g_title
  k_shl1
  k_ldriw $1C56
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlba g_title
  k_jumpf SENFE_L_AE1C
  k_pushi 1
  k_pushiw SENFE_D_C03E
  k_jump SENFE_L_AE20
SENFE_L_AE1C:
  k_pushi 0
  k_pushiw SENFE_D_C040
SENFE_L_AE20:
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw SENFE_D_C049
  k_callx RF_2FB9, 4
  k_return
; sys: memset_long, vram_load_tiles, vram_load_obj_tiles, brightness_set | calls 15
SENFE_F_AE34:
  k_func 5
  k_pushi 5
  k_pushiw $00FF
  k_leal -5
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
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
  k_callx syscall, 12  ; sys 11 vram_load_tiles
  k_pushib 28
  k_pushiw $E6A0
  k_pushib 114
  k_pushiw $0100
  k_pushi 13
  k_callx syscall, 10  ; sys 13 vram_load_obj_tiles
  k_call SENFE_F_ACD1
  k_call $9A47
  k_ldlba $F436
  k_stla $F574
  k_pushi 15
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
  k_return
; calls 5
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
; calls 5
SENFE_F_AF45:
  k_func 0
  k_pushib 16
  k_call RF_430C
  k_pushl
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pusha SENFE_D_C092
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
  k_pusha SENFE_D_C094
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_return
; vars: g_player_name_ptr | calls 11
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
  k_ldriw SENFE_D_C04C
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
  k_ldliw SENFE_D_C3D4
  k_jump SENFE_L_AFBA
SENFE_L_AFB7:
  k_ldliw SENFE_D_C3DB
SENFE_L_AFBA:
  k_pushl
  k_pushiw SENFE_D_C3B7
  k_callx RF_3619, 4
SENFE_L_AFC2:
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_pushi 6
  k_callx RF_28CC, 2
  k_pushi 0
  k_pusha SENFE_D_C29C
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha SENFE_D_C29E
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_return
; vars: g_player_name_ptr, g_cargo | calls 13
SENFE_F_AFEF:
  k_func 12
  k_ldli 1
  k_stl -12
  k_ldliw g_player_name_ptr
  k_stl -4
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha SENFE_D_C096
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
  k_pusha SENFE_D_C098
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
  k_ldriw g_cargo
  k_add
  k_stl -2
  k_ldl -2
  k_derefb
  k_jumpf SENFE_L_B0EB
  k_pushi 5
  k_callx rand, 2
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
  k_ldriw g_player_name_ptr
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
  k_callx rand, 2
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
  k_callx rand, 2
  k_popr
  k_ugt
  k_jumpf SENFE_L_B0D6
  k_ldl -6
  k_inc
  k_pushl
  k_pushib 20
  k_callx rand, 2
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
  k_callx rand, 2
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
  k_pushiw SENFE_D_C3E0
  k_jump SENFE_L_B101
SENFE_L_B0FE:
  k_pushiw SENFE_D_C3F9
SENFE_L_B101:
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_call SENFE_F_AF17
  k_pushi 4
  k_callx RF_28CC, 2
  k_pushi 0
  k_pushiw SENFE_D_C439
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha SENFE_D_C2A4
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_return
; vars: g_king_mission
treasure_fleet_set:
  k_func 0
  k_ldlba g_king_mission+2
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_B144
  k_ldlba g_king_mission+8
  k_ldrarg 11
  k_eq
  k_return
SENFE_L_B144:
  k_ldlba g_king_mission+3
  k_ldrarg 11
  k_eq
  k_return
; sys: brightness_set | vars: g_player_name_ptr, g_princess, g_king_mission | calls 12
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
  k_ldriw SENFE_D_C08C
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
  k_pushiw SENFE_D_C45E
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
  k_pushiw SENFE_D_C478
  k_callx RF_2FB9, 4
  k_pushi 0
  k_ldl -6
  k_shl1
  k_ldriw SENFE_D_C43B
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw SENFE_D_C484
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
  k_pusha SENFE_D_C2A0
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha SENFE_D_C2A2
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_ldlba g_princess
  k_ldri 10
  k_and
  k_ldri 8
  k_eq
  k_jumpf SENFE_L_B32A
  k_pusharg 13
  k_callx treasure_fleet_set, 2
  k_jumpf SENFE_L_B32A
  k_ldliw g_player_name_ptr
  k_stl -2
  k_ldlba g_king_mission+2
  k_ldri 2
  k_eq
  k_jumpf SENFE_L_B219
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha SENFE_D_C09A
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_ldli 2
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
SENFE_L_B219:
  k_ldlba g_king_mission+2
  k_ldri 3
  k_eq
  k_jumpf SENFE_L_B245
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pushiw SENFE_D_C486
  k_pushi 1
  k_callx SENFE_F_A92C, 4
  k_ldli 2
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
SENFE_L_B245:
  k_ldlba g_king_mission+2
  k_ldri 4
  k_eq
  k_jumpf SENFE_L_B338
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha SENFE_D_C09C
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
  k_pusha SENFE_D_C09E
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_call SENFE_F_AF17
  k_pushi 1
  k_callx RF_28CC, 2
  k_pushi 0
  k_pusha SENFE_D_C2A8
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pusha SENFE_D_C2AA
  k_callx RF_2FB9, 4
  k_pushi 8
  k_callx RF_3DDF, 2
  k_call SENFE_F_AF17
  k_pushib 17
  k_pushi 12
  k_pushi 4
  k_pushi 2
  k_callx RF_4E29, 8
  k_pushiw SENFE_D_C4A6
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw SENFE_D_C4A7
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_pushi 1
  k_pusha SENFE_D_C0A0
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_4F2A, 2
  k_call RF_472D
  k_ldliw g_player_name_ptr
  k_stl -2
  k_ldlib 32
  k_stlba $F294
  k_pushib 16
  k_pushi 0
  k_pushib 19
  k_pushib 25
  k_callx RF_4E29, 8
  k_pusha SENFE_D_C0A2
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
  k_pusha SENFE_D_C0A4
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_call RF_472D
  k_ldli 2
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
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
  k_callx syscall, 4  ; sys 37 brightness_set
  k_return
; vars: g_player_name_ptr | calls 5
SENFE_F_B35E:
  k_func 2
  k_ldlba $EF6A
  k_stl -2
  k_ldli 0
  k_stlba $EF6A
  k_pushi 0
  k_pushiw SENFE_D_C4A9
  k_callx RF_2FB9, 4
  k_call RF_4AC6
  k_pushi 0
  k_pushiw SENFE_D_C4AE
  k_callx RF_2FB9, 4
  k_call RF_4AF7
  k_pushi 0
  k_pushiw SENFE_D_C4B0
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_pushi 0
  k_pushiw SENFE_D_C4B3
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw SENFE_D_C4BF
  k_callx RF_2FB9, 4
  k_ldl -2
  k_stlba $EF6A
  k_return
; calls 3
SENFE_F_B3A8:
  k_func 0
  k_pushi 5
  k_callx RF_28CC, 2
  k_call SENFE_F_B35E
  k_pushi 0
  k_pushiw SENFE_D_C4C2
  k_callx RF_2FB9, 4
  k_return
; sys: memset_long | vars: g_ships, g_cargo | calls 3
SENFE_F_B3BE:
  k_func 26
  k_pushib 58
  k_pushi 0
  k_pushiw $F576
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
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
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -12
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stln -26
  k_ldln -26
  k_jumpf SENFE_L_B435
  k_pushib 60
  k_callx rand, 2
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
  k_callx rand, 2
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
  k_ldriw g_cargo
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
  k_ldriw g_ships
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
  k_callx rand, 2
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
  k_callx rand, 2
  k_addlib 30
  k_ldr -24
  k_mul
  k_swap
  k_ldla $F5AA
  k_add
  k_stla $F5AA
  k_pushib 50
  k_callx rand, 2
  k_addlib 30
  k_ldr -24
  k_mul
  k_swap
  k_ldla $F5AC
  k_add
  k_stla $F5AC
  k_pushi 3
  k_callx rand, 2
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
; vars: g_player_items
SENFE_F_B620:
  k_func 10
  k_ldliw g_player_items
  k_stl -10
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_player_items
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
; sys: tilemap_write | calls 2
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
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushiw $2000
  k_pushi 14
  k_pushi 10
  k_pushi 13
  k_pushib 19
  k_pushi 3
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
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
; sys: brightness_set | vars: g_fh_cbmap0 | calls 15
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
  k_pusha g_fh_cbmap0
  k_pushiw RD_8D74
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
  k_pushiw SENFE_D_C4EB
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 15
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
  k_pushi 0
  k_pushi 1
  k_pushib 16
  k_pushib 28
  k_pushi 12
  k_pushi 2
  k_callx RF_4F65, 12
  k_pushi 1
  k_pushiw SENFE_D_C502
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
  k_pushiw SENFE_D_C509
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
  k_pushiw SENFE_D_C512
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
  k_pushiw SENFE_D_C51C
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
  k_pushiw SENFE_D_C532
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
  k_pushiw SENFE_D_C4EB
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
  k_pushiw SENFE_D_C4EB
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call SENFE_F_AF17
SENFE_L_B819:
  k_return
; sys: brightness_set, color_math, window_off | vars: g_cargo, g_player_name_ptr, g_relations, g_fleets, g_fh_cbmap0 | calls 22
SENFE_F_B81A:
  k_func 58
  k_ldli 1
  k_stln -58
  k_call SENFE_F_AF17
  k_pushi 15
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
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
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stl -18
  k_ldl -18
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
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
  k_callx rand, 2
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
  k_callx rand, 2
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
  k_pushiw SENFE_D_C53A
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw SENFE_D_C53B
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
  k_pushiw SENFE_D_C53D
  k_callx RF_2FB9, 4
  k_pushi 4
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushiw SENFE_D_C547
  k_pushi 0
  k_callx SENFE_F_A92C, 4
  k_pushi 0
  k_pushiw SENFE_D_C548
  k_callx RF_2FB9, 4
SENFE_L_B901:
  k_ldl -18
  k_jumpf SENFE_L_B913
  k_ldl -10
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw SENFE_D_C54A
  k_jump SENFE_L_B917
SENFE_L_B913:
  k_pushi 0
  k_pushiw SENFE_D_C54F
SENFE_L_B917:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw SENFE_D_C55F
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
  k_pushiw SENFE_D_C57D
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
  k_callx rand, 2
  k_popr
  k_add
  k_addli 10
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -16
  k_jumpf SENFE_L_B9B8
  k_ldl -16
  k_ldriw SENFE_D_C536
  k_add
  k_derefb
  k_stl -14
  k_pushi 10
  k_callx rand, 2
  k_addli 10
  k_pushl
  k_ldl -14
  k_ldriw g_relations
  k_add
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -14
  k_ldriw g_relations
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
  k_ldriw g_fleets
  k_add
  k_stl -2
  k_ldlarg 13
  k_ldri 4
  k_shl
  k_ldriw g_fleets
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
  k_callx syscall, 4  ; sys 37 brightness_set
  k_leal -50
  k_pushl
  k_push -14
  k_pushn -56
  k_callx SENFE_F_B6BA, 6
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
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
  k_pushiw SENFE_D_C599
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
  k_pusha g_fh_cbmap0
  k_pushiw RD_8D74
  k_pushib 30
  k_pushib 32
  k_pushi 0
  k_pushi 0
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 15
  k_pushib 37
  k_callx syscall, 4  ; sys 37 brightness_set
  k_pushiw $F576
  k_callx RF_7B51, 2
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
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
; vars: g_fame | calls 9
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
  k_callx rand, 2
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
  k_ldliw SENFE_D_C350
  k_ldra g_fame
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_fame
  k_add
  k_stla g_fame
SENFE_L_BB58:
  k_push -4
  k_push -2
  k_callx SENFE_F_B81A, 4
  k_ldli 1
  k_return
; vars: g_ending | calls 5
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
  k_pushiw SENFE_D_C5A0
  k_callx RF_2FB9, 4
  k_jump SENFE_L_BBDC
SENFE_L_BBD8:
  k_ldli 4
  k_stlba g_ending
SENFE_L_BBDC:
  k_ldli 1
  k_return
SENFE_D_BBDE:
  .byte $00, $04, $02, $02, $00, $00, $04, $04, $04, $00, $00, $00, $00, $00, $00, $00
  .byte $03, $02, $02, $00, $00, $03, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $03, $04, $02, $00, $00, $00, $04, $02, $00, $00, $00, $00
  .byte $00, $00, $00, $03, $03, $03, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $03, $04, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $04, $03, $04, $00, $00, $02, $02, $02, $00, $03, $03, $00, $00, $00, $02
  .byte $02, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $04
  .byte $04, $04, $02, $00, $00, $00, $00, $00
SENFE_D_BC56:
  .byte $1B, $43, $32, $1B
  .byte "R(", $1B, "E>", $00
SENFE_D_BC60:
  .byte $1B, $43, $32, $1B
  .byte "R#", $1B, "E8", $00
SENFE_D_BC6A:
  .word SENFE_D_BC8C
SENFE_D_BC6C:
  .word SENFE_D_BCB1
SENFE_D_BC6E:
  .word SENFE_D_BCCE
SENFE_D_BC70:
  .word SENFE_D_BCF4
SENFE_D_BC72:
  .word SENFE_D_BD21
SENFE_D_BC74:
  .word SENFE_D_BD48
SENFE_D_BC76:
  .word SENFE_D_BD64
SENFE_D_BC78:
  .word SENFE_D_BD93
SENFE_D_BC7A:
  .word SENFE_D_BDC8
SENFE_D_BC7C:
  .word SENFE_D_BDE9
SENFE_D_BC7E:
  .word SENFE_D_BE1D
SENFE_D_BC80:
  .word SENFE_D_BE36
SENFE_D_BC82:
  .word SENFE_D_BE48
SENFE_D_BC84:
  .word SENFE_D_BE7D
SENFE_D_BC86:
  .word SENFE_D_BEB7
SENFE_D_BC88:
  .word SENFE_D_BEF5
SENFE_D_BC8A:
  .byte $05, $BF
SENFE_D_BC8C:
  .byte "Now", $0A, $0A, "that we've met,", $0A, $0A, "you're doomed!", $00
SENFE_D_BCB1:
  .byte "You won't throw me", $0A, "so easily", $00
SENFE_D_BCCE:
  .byte "How about a taste of", $0A, "justice, pirate!", $00
SENFE_D_BCF4:
  .byte "Let's show the boy", $0A, "what pirates are made", $0A, "of!", $00
SENFE_D_BD21:
  .byte "This is where I see", $0A, "you to your death!", $00
SENFE_D_BD48:
  .byte "Soon you will beg", $0A, "for mercy", $00
SENFE_D_BD64:
  .byte "Hand over your goods", $0A, "and I'll spare your", $0A, "life!", $00
SENFE_D_BD93:
  .byte "You pirate! You think", $0A, "we'll give in without", $0A, "a fight?", $00
SENFE_D_BDC8:
  .byte "Your", $0A, "devilry ends here,", $0A, "you rat!", $00
SENFE_D_BDE9:
  .byte "Ha! I'll slash ye", $0A, "down before ye make", $0A, "another move!", $00
SENFE_D_BE1D:
  .byte $0A, "I didn't come to", $0A, "fight.", $00
SENFE_D_BE36:
  .byte " Just give me", $0A, "the", $00
SENFE_D_BE48:
  .byte "Never! You'll have to", $0A, "fight for it, ye", $0A, "yellow-belly!", $00
SENFE_D_BE7D:
  .byte "Ye made it this far,", $0A, "youngster, but this", $0A, "is where ye die!", $00
SENFE_D_BEB7:
  .byte "So you're the rat who", $0A, "kidnapped Christiana!", $0A, "Prepare to fight!"
  .byte $00
SENFE_D_BEF5:
  .byte "Please save me!", $00
  .byte "Hold on, I'll", $0A, "rescue you!", $00
SENFE_D_BF1F:
  .word SENFE_D_BF27, SENFE_D_BF30, SENFE_D_BF36, SENFE_D_BF3B
SENFE_D_BF27:
  .byte "Portugal", $00
SENFE_D_BF30:
  .byte "Spain", $00
SENFE_D_BF36:
  .byte "Turk", $00
SENFE_D_BF3B:
  .byte "pirate", $00
SENFE_D_BF42:
  .byte $1B
  .byte "C0", $00
SENFE_D_BF46:
  .byte $1B
  .byte "C2", $00
SENFE_D_BF4A:
  .byte "the ", $00
SENFE_D_BF4F:
  .byte "from ", $00
SENFE_D_BF55:
  .byte "They're challenging", $0A, "us to battle!", $00
SENFE_D_BF77:
  .byte $00
SENFE_D_BF78:
  .byte $0A, "I'm ", $00
SENFE_D_BF7E:
  .byte "! %s", $00
SENFE_D_BF83:
  .byte $00
SENFE_D_BF84:
  .byte $0A, "We've found you,", $0A, $00
SENFE_D_BF97:
  .byte "! ", $00
SENFE_D_BF9A:
  .byte $00
SENFE_D_BF9B:
  .byte "%s%s %s", $0A, "and I'll spare you", $00
SENFE_D_BFB6:
  .byte $00
SENFE_D_BFB7:
  .byte $0A, "Oh, ", $00
SENFE_D_BFBD:
  .byte "!", $0A, $0A, "%s", $00
SENFE_D_BFC3:
  .word SENFE_D_BFC9, SENFE_D_BFE3, SENFE_D_BFF9
SENFE_D_BFC9:
  .byte "I'm not staying for", $0A, "this!", $00
SENFE_D_BFE3:
  .byte "Time for me to", $0A, "leave!", $00
SENFE_D_BFF9:
  .byte "So long! You'll have", $0A, "to fight this out", $0A, "on your own!", $00
SENFE_D_C02D:
  .byte $1B, $52, $22, $1B
  .byte "E>", $1B, "C0[", $00
SENFE_D_C038:
  .byte $20, $00
SENFE_D_C03A:
  .byte $5D, $00
SENFE_D_C03C:
  .byte $5B, $00
SENFE_D_C03E:
  .byte $20, $00
SENFE_D_C040:
  .byte "Captain ", $00
SENFE_D_C049:
  .byte $5D, $00, $00
SENFE_D_C04C:
  .word SENFE_D_C052, SENFE_D_C073
  .byte $8B, $C0
SENFE_D_C052:
  .byte "Blasted curs!", $0A, "Pull away, maties!", $00
SENFE_D_C073:
  .byte "I'll never forget", $0A, "this!", $00
  .byte $00
SENFE_D_C08C:
  .byte $A6, $C0, $C4, $C0, $C5, $C0
SENFE_D_C092:
  .word SENFE_D_C0EA
SENFE_D_C094:
  .word SENFE_D_C11C
SENFE_D_C096:
  .word SENFE_D_C13C
SENFE_D_C098:
  .word SENFE_D_C171
SENFE_D_C09A:
  .word SENFE_D_C19F
SENFE_D_C09C:
  .word SENFE_D_C1DA
SENFE_D_C09E:
  .word SENFE_D_C1F0
SENFE_D_C0A0:
  .word SENFE_D_C20C
SENFE_D_C0A2:
  .word SENFE_D_C228
SENFE_D_C0A4:
  .word SENFE_D_C261
  .byte "Blast! We're through,", $0A, "maties!", $00
  .byte $00
  .byte "Im-impossible! I'm", $0A, "not ready to die!", $00
SENFE_D_C0EA:
  .byte "Cap'n, the sun's", $0A, "setting. We can't go", $0A, "on fighting", $00
SENFE_D_C11C:
  .byte "Are ye running away,", $0A, "youngster?", $00
SENFE_D_C13C:
  .byte "At this rate we're", $0A, "finished for sure.", $0A, "Let's pull out", $00
SENFE_D_C171:
  .byte "Now there's a bit o'", $0A, "wisdom! Let's sail", $0A, "away!", $00
SENFE_D_C19F:
  .byte "Now things should be", $0A, "a bit quieter in this", $0A, "part of the sea", $00
SENFE_D_C1DA:
  .byte "Where's the", $0A, "princess?", $00
SENFE_D_C1F0:
  .byte "Don't worry, she's", $0A, "safe now", $00
SENFE_D_C20C:
  .byte ", how", $0A, "can I ever thank", $0A, "you!", $00
SENFE_D_C228:
  .byte "We're thankful for", $0A, "your safe return,", $0A, "Princess Christiana", $00
SENFE_D_C261:
  .byte "Captain, restrain", $0A, "yourself until we've", $0A, "seized the treasure", $00
SENFE_D_C29C:
  .word SENFE_D_C2AC
SENFE_D_C29E:
  .word SENFE_D_C2D7
SENFE_D_C2A0:
  .word SENFE_D_C2ED
SENFE_D_C2A2:
  .word SENFE_D_C307
SENFE_D_C2A4:
  .byte $35, $C3, $76, $C3
SENFE_D_C2A8:
  .word SENFE_D_C377
SENFE_D_C2AA:
  .word SENFE_D_C389
SENFE_D_C2AC:
  .byte $0A, "Unable to withstand", $0A, $0A, "the bold attack by", $0A, $0A, $00
SENFE_D_C2D7:
  .byte ", the", $0A, $0A, "enemy withdrew", $00
SENFE_D_C2ED:
  .byte $0A, "Victory smiled down", $0A, $0A, "on ", $00
SENFE_D_C307:
  .byte " as", $0A, $0A, "the enemy's flagship", $0A, $0A, "roared into flames", $00
  .byte " withdrew", $0A, $0A, "as the enemy's", $0A, $0A
SENFE_D_C350:
  .byte "scornful laughter", $0A, $0A, "echoed from behind", $00
  .byte $00
SENFE_D_C377:
  .byte $0A, "Heroic Captain", $0A, $0A, $00
SENFE_D_C389:
  .byte " rescued", $0A, $0A, "Princess Christiana", $0A, $0A, "from the enemy", $00
SENFE_D_C3B7:
  .byte "The %s will hear", $0A, "about this!", $00
SENFE_D_C3D4:
  .byte "Sultan", $00
SENFE_D_C3DB:
  .byte "King", $00
SENFE_D_C3E0:
  .byte "We were lucky to", $0A, "escape!", $00
SENFE_D_C3F9:
  .byte "Cap'n, the head count", $0A, "doesn't tally. I fear", $0A, "we lost a few mates"
  .byte $00
SENFE_D_C439:
  .byte $0A, $00
SENFE_D_C43B:
  .word SENFE_D_C443, SENFE_D_C44C, SENFE_D_C452
  .byte $5D, $C4
SENFE_D_C443:
  .byte "Portugal", $00
SENFE_D_C44C:
  .byte "Spain", $00
SENFE_D_C452:
  .byte "the Empire", $00
  .byte $00
SENFE_D_C45E:
  .byte $0A, "This is the end", $0A, $0A, "for us!", $00
SENFE_D_C478:
  .byte " Glory to", $0A, $0A, $00
SENFE_D_C484:
  .byte $21, $00
SENFE_D_C486:
  .byte "All hands aided in", $0A, "our success!", $00
SENFE_D_C4A6:
  .byte $00
SENFE_D_C4A7:
  .byte $0A, $00
SENFE_D_C4A9:
  .byte $0A, "On ", $00
SENFE_D_C4AE:
  .byte $20, $00
SENFE_D_C4B0:
  .byte ", ", $00
SENFE_D_C4B3:
  .byte ",", $0A, $0A, "Captain ", $00
SENFE_D_C4BF:
  .byte $0A, $0A, $00
SENFE_D_C4C2:
  .byte "lost his life in a", $0A, $0A, "stormy battle at sea", $00
SENFE_D_C4EB:
  .byte $1B, "C2Here are our spoils", $00
SENFE_D_C502:
  .byte $1B
  .byte "R", $22, $1B, "E>", $00
SENFE_D_C509:
  .byte "Gold: %d", $00
SENFE_D_C512:
  .byte "Treasure:", $00
SENFE_D_C51C:
  .byte $1B, "C2(A-more  B-cancel)", $00
SENFE_D_C532:
  .byte $1B
  .byte "C0", $00
SENFE_D_C536:
  .byte $FF, $00, $02, $03
SENFE_D_C53A:
  .byte $00
SENFE_D_C53B:
  .byte $0A, $00
SENFE_D_C53D:
  .byte $1B, $43, $32, $1B
  .byte "R(", $1B, "E>", $00
SENFE_D_C547:
  .byte $00
SENFE_D_C548:
  .byte $0A, $00
SENFE_D_C54A:
  .byte "'s", $0A, $0A, $00
SENFE_D_C54F:
  .byte "Captain, your", $0A, $0A, $00
SENFE_D_C55F:
  .byte "battle skill has", $0A, $0A, "improved!", $1B, "W", $00
SENFE_D_C57D:
  .byte "won a great victory", $0A, $0A, "at sea", $00
SENFE_D_C599:
  .byte $1B
  .byte "R ", $1B, "E?", $00
SENFE_D_C5A0:
  .byte $1B
  .byte "R ", $1B, "E?", $00
  .byte $00
