; overlay cminato, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp CMINATO_F_9603
CMINATO_F_9603:
  k_func 2
  k_ldlba $F16A
  k_stl -2
  k_push -2
  k_callx CMINATO_F_9612, 2
  k_return
CMINATO_F_9612:
  k_func 6
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -4
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -6
  k_ldl -6
  k_addli 4
  k_derefb
  k_jumpf CMINATO_L_965C
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -4
  k_inc
  k_derefb
  k_pushl
  k_ldl -4
  k_derefb
  k_pushl
  k_callx $8747, 8
  k_stl -2
  k_ldl -6
  k_addli 5
  k_derefb
  k_ldr -2
  k_eq
  k_jumpf CMINATO_L_965C
  k_push -2
  k_pusharg 11
  k_ldl -6
  k_addli 4
  k_derefb
  k_dec
  k_shl1
  k_ldriw CMINATO_D_A1B4
  k_add
  k_deref
  k_callptrn 4
  k_jump CMINATO_L_9661
CMINATO_L_965C:
  k_pusharg 11
  k_callx CMINATO_F_9662, 2
CMINATO_L_9661:
  k_return
CMINATO_F_9662:
  k_func 8
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -8
  k_ldl -8
  k_addli 7
  k_pushl
  k_ldli 0
  k_popstore
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -2
  k_pushib 16
  k_callx RF_3F3E, 2
  k_addli 15
  k_stl -4
  k_ldl -4
  k_shl1
  k_ldriw $1825
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stl -6
  k_pushiw $00FD
  k_ldl -2
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_pushi 6
  k_callx RF_3F3E, 2
  k_ldr -6
  k_ugt
  k_jumpf CMINATO_L_96C9
  k_ldl -2
  k_addli 11
  k_pushl
  k_ldli 0
  k_popstore
  k_pushiw $8000
  k_ldl -2
  k_addli 13
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
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
  k_addli 11
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
CMINATO_L_96C9:
  k_return
CMINATO_F_96CA:
  k_func 43
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -12
  k_ldlarg 13
  k_ldrib 50
  k_ult
  k_jumpf CMINATO_L_98C5
  k_ldlarg 13
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -14
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_ldriw $150B
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stln -39
  k_ldln -39
  k_ldriw $00FF
  k_ne
  k_jumpf CMINATO_L_9803
  k_leal -25
  k_pushl
  k_pusharg 11
  k_callx RL_8502, 4
  k_stln -33
  k_ldli 0
  k_stl -4
  k_leal -25
  k_stln -29
  k_ldrn -33
  k_add
  k_stln -31
  k_jump CMINATO_L_973D
CMINATO_L_9717:
  k_ldln -29
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -16
  k_ldl -16
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_stl -18
  k_ldl -18
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln -29
  k_inc
  k_stln -29
CMINATO_L_973D:
  k_ldln -29
  k_ldrn -31
  k_ult
  k_jumpt CMINATO_L_9717
  k_ldl -14
  k_addli 11
  k_derefb
  k_addlib 50
  k_long $26
  k_long $14
  k_ldl -14
  k_addli 12
  k_deref
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stl -6
  k_ldl -12
  k_addli 9
  k_deref
  k_inc
  k_ldri 3
  k_udiv
  k_ldr -6
  k_udiv
  k_stl -8
  k_push -4
  k_push -8
  k_callx RL_8962, 4
  k_stl -8
  k_ldl -8
  k_ldr -6
  k_mul
  k_pushl
  k_ldl -12
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldl -14
  k_addli 11
  k_pushl
  k_pushib 100
  k_ldl -14
  k_addli 11
  k_derefb
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_addli 4
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -14
  k_addli 12
  k_pushl
  k_pushiw $0258
  k_ldl -14
  k_addli 12
  k_deref
  k_addli 3
  k_pushl
  k_callx RL_8962, 4
  k_popstore
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_mul
  k_stln -41
  k_ldli 0
  k_stl -4
  k_leal -25
  k_jump CMINATO_L_97F9
CMINATO_L_97B2:
  k_ldln -29
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -16
  k_ldl -16
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_stl -18
  k_ldln -41
  k_ldri 3
  k_mul
  k_ldriw $E302
  k_add
  k_stl -20
  k_ldl -18
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_push -8
  k_callx RL_8962, 4
  k_stl -10
  k_ldl -20
  k_inc
  k_pushl
  k_ldl -10
  k_popstore
  k_ldl -10
  k_swap
  k_ldl -8
  k_sub
  k_stl -8
  k_push -20
  k_ldln -39
  k_popstoreb
  k_ldl -8
  k_jumpf CMINATO_L_9803
  k_ldln -41
  k_inc
  k_stln -41
  k_ldln -29
  k_inc
CMINATO_L_97F9:
  k_stln -29
  k_ldln -29
  k_ldrn -31
  k_ult
  k_jumpt CMINATO_L_97B2
CMINATO_L_9803:
  k_ldl -12
  k_addli 9
  k_deref
  k_ldri 1
  k_shr
  k_pushl
  k_ldl -12
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldl -14
  k_addli 6
  k_deref
  k_pushl
  k_ldl -14
  k_addli 2
  k_deref
  k_popr
  k_ule
  k_jumpf CMINATO_L_9835
  k_ldl -12
  k_addli 9
  k_deref
  k_pushl
  k_ldl -14
  k_addli 2
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_stl -2
  k_push -2
  k_ldl -14
  k_addli 2
  k_jump CMINATO_L_984B
CMINATO_L_9835:
  k_ldl -12
  k_addli 9
  k_deref
  k_pushl
  k_ldl -14
  k_addli 6
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_stl -2
  k_push -2
  k_ldl -14
  k_addli 6
CMINATO_L_984B:
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stln -41
  k_ldl -12
  k_addli 9
  k_deref
  k_ldriw $012C
  k_udiv
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_pushn -41
  k_pusharg 13
  k_callx RF_4353, 6
  k_ldlarg 13
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stln -37
  k_ldln -37
  k_jumpf CMINATO_L_98C5
  k_ldln -37
  k_dec
  k_stln -43
  k_ldln -41
  k_ldrn -43
  k_ne
  k_jumpf CMINATO_L_98C5
  k_ldliw $EA8F
  k_stln -27
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 4
  k_pushl
  k_ldln -43
  k_shl1
  k_pushl
  k_ldln -41
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_ldriw CMINATO_D_A1BC
  k_add
  k_deref
  k_ldrn -27
  k_add
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldln -43
  k_shl1
  k_pushl
  k_ldln -41
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_ldriw CMINATO_D_A1BC
  k_add
  k_deref
  k_ldrn -27
  k_add
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
CMINATO_L_98C5:
  k_pusharg 11
  k_callx RF_46C6, 2
  k_return
CMINATO_F_98CB:
  k_func 43
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -12
  k_ldlarg 13
  k_ldrib 50
  k_ult
  k_jumpf CMINATO_L_99E5
  k_ldlarg 13
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -14
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -22
  k_ldl -22
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stln -41
  k_ldriw $00FF
  k_ne
  k_jumpf CMINATO_L_99B4
  k_leal -27
  k_pushl
  k_pusharg 11
  k_callx RL_8502, 4
  k_stln -35
  k_ldli 0
  k_stl -4
  k_leal -27
  k_stln -31
  k_ldrn -35
  k_add
  k_stln -33
  k_jump CMINATO_L_993A
CMINATO_L_9919:
  k_ldln -31
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
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldln -31
  k_inc
  k_stln -31
CMINATO_L_993A:
  k_ldln -31
  k_ldrn -33
  k_ult
  k_jumpt CMINATO_L_9919
  k_ldl -22
  k_addli 2
  k_pushl
  k_callx RL_884E, 2
  k_inc
  k_pushl
  k_ldl -14
  k_deref
  k_popr
  k_udiv
  k_stl -8
  k_push -4
  k_push -8
  k_callx RL_8962, 4
  k_stl -8
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_mul
  k_inc
  k_stln -43
  k_ldli 0
  k_stl -4
  k_leal -27
  k_jump CMINATO_L_99AA
CMINATO_L_9966:
  k_ldln -31
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
  k_stl -18
  k_ldln -43
  k_ldri 3
  k_mul
  k_ldriw $E302
  k_add
  k_stl -20
  k_ldl -18
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_push -8
  k_callx RL_8962, 4
  k_stl -10
  k_ldl -20
  k_inc
  k_pushl
  k_ldl -10
  k_popstore
  k_ldl -10
  k_swap
  k_ldl -8
  k_sub
  k_stl -8
  k_push -20
  k_ldln -41
  k_popstoreb
  k_ldl -8
  k_jumpf CMINATO_L_99B4
  k_ldln -43
  k_inc
  k_stln -43
  k_ldln -31
  k_inc
CMINATO_L_99AA:
  k_stln -31
  k_ldln -31
  k_ldrn -33
  k_ult
  k_jumpt CMINATO_L_9966
CMINATO_L_99B4:
  k_ldl -12
  k_addli 9
  k_pushl
  k_pushiw $2710
  k_ldl -12
  k_addli 9
  k_deref
  k_pushl
  k_ldl -14
  k_deref
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstore
  k_ldl -14
  k_deref
  k_ldri 10
  k_sdiv
  k_pushl
  k_pushi 10
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_ldl -14
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -14
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
CMINATO_L_99E5:
  k_pusharg 11
  k_callx RF_46C6, 2
  k_return
CMINATO_F_99EB:
  k_func 17
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stln -3
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -7
  k_ldln -7
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_stlbf -1
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_stln -5
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stln -9
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_stln -11
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stln -13
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stln -15
  k_pushn -7
  k_ldln -11
  k_ldri 10
  k_mul
  k_pushl
  k_ldln -9
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_popstoreb
  k_ldln -7
  k_inc
  k_pushl
  k_ldli 4
  k_ldrn -15
  k_sub
  k_pushl
  k_ldli 10
  k_ldrn -13
  k_sub
  k_pushl
  k_ldlib 20
  k_ldrn -9
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
  k_ldln -7
  k_addli 2
  k_pushl
  k_pushib 100
  k_ldln -15
  k_addli 3
  k_pushl
  k_ldli 10
  k_ldrn -9
  k_sub
  k_pushl
  k_ldln -13
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
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldln -5
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_stln -17
  k_ldln -7
  k_addli 4
  k_deref
  k_ldrn -17
  k_lt
  k_jumpf CMINATO_L_9AFE
  k_ldlarg 15
  k_ldrib 50
  k_ult
  k_jumpf CMINATO_L_9AF7
  k_ldln -7
  k_addli 4
  k_pushl
  k_pushn -17
  k_ldln -7
  k_addli 4
  k_deref
  k_pushl
  k_ldlarg 15
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_ldrib 30
  k_sdiv
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_jump CMINATO_L_9AFD
CMINATO_L_9AF7:
  k_ldln -7
  k_addli 4
  k_pushl
  k_ldln -17
CMINATO_L_9AFD:
  k_popstore
CMINATO_L_9AFE:
  k_return
CMINATO_F_9AFF:
  k_func 15
  k_leal -7
  k_pushl
  k_pusharg 11
  k_callx RL_8502, 4
  k_stl -2
  k_leal -7
  k_stln -9
  k_ldr -2
  k_add
  k_stln -11
  k_jump CMINATO_L_9B29
CMINATO_L_9B1A:
  k_pusharg 13
  k_ldln -9
  k_derefb
  k_pushl
  k_pusharg 11
  k_callx CMINATO_F_99EB, 6
  k_ldln -9
  k_inc
  k_stln -9
CMINATO_L_9B29:
  k_ldln -9
  k_ldrn -11
  k_ult
  k_jumpt CMINATO_L_9B1A
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stln -13
  k_ldlarg 13
  k_ldrib 50
  k_ult
  k_jumpf CMINATO_L_9B9C
  k_ldlarg 13
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stln -15
  k_pushib 50
  k_callx RF_3F3E, 2
  k_pushl
  k_ldln -15
  k_deref
  k_pushl
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_ult
  k_jumpf CMINATO_L_9B62
  k_ldli 9
  k_jump CMINATO_L_9B63
CMINATO_L_9B62:
  k_ldli 5
CMINATO_L_9B63:
  k_popr
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldln -13
  k_addli 9
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldln -13
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldln -15
  k_addli 11
  k_derefb
  k_pushl
  k_pushi 2
  k_callx RF_3F3E, 2
  k_addli 2
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldln -15
  k_addli 11
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_jump CMINATO_L_9BAD
CMINATO_L_9B9C:
  k_ldln -13
  k_addli 9
  k_pushl
  k_pushi 10
  k_callx RF_3F3E, 2
  k_ldriw $03E8
  k_mul
  k_addliw $2710
  k_popstore
CMINATO_L_9BAD:
  k_pusharg 11
  k_callx CMINATO_F_A186, 2
  k_return
CMINATO_F_9BB3:
  k_func 24
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -4
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -8
  k_ldl -8
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_stl -2
  k_push -2
  k_callx RF_40A5, 2
  k_stl -6
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stl -10
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_stl -12
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stl -14
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stl -16
  k_ldl -8
  k_derefb
  k_stl -18
  k_ldl -8
  k_inc
  k_derefb
  k_stl -20
  k_ldl -8
  k_addli 2
  k_derefb
  k_stl -22
  k_pushib 100
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
  k_udiv
  k_popr
  k_mul
  k_ldri 2
  k_shr
  k_pushl
  k_callx RL_8962, 4
  k_ldr -22
  k_sub
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
  k_ldr -18
  k_sub
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
  k_udiv
  k_popr
  k_mul
  k_ldri 10
  k_udiv
  k_popr
  k_mul
  k_ldri 2
  k_shr
  k_ldr -20
  k_sub
  k_popr
  k_add
  k_popr
  k_add
  k_ldri 10
  k_mul
  k_pushl
  k_ldl -4
  k_addli 9
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -4
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
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
  k_pushib 100
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
  k_udiv
  k_popr
  k_mul
  k_ldri 2
  k_shr
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -6
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_stl -24
  k_ldl -4
  k_addli 9
  k_deref
  k_ldrib 100
  k_ugt
  k_jumpf CMINATO_L_9D09
  k_ldl -8
  k_addli 4
  k_deref
  k_ldr -24
  k_ult
  k_jumpf CMINATO_L_9D09
  k_pushi 10
  k_callx RF_3F3E, 2
  k_addlib 90
  k_pushl
  k_ldl -4
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldl -8
  k_addli 4
  k_pushl
  k_push -24
  k_ldl -8
  k_addli 4
  k_deref
  k_pushl
  k_pushi 10
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_addlib 20
  k_pushl
  k_callx RL_8962, 4
  k_popstore
CMINATO_L_9D09:
  k_return
CMINATO_F_9D0A:
  k_func 11
  k_leal -5
  k_pushl
  k_pusharg 11
  k_callx RL_8502, 4
  k_stln -11
  k_leal -5
  k_stln -7
  k_ldrn -11
  k_add
  k_stln -9
  k_jump CMINATO_L_9D35
CMINATO_L_9D27:
  k_ldln -7
  k_derefb
  k_pushl
  k_pusharg 11
  k_callx CMINATO_F_9BB3, 4
  k_ldln -7
  k_inc
  k_stln -7
CMINATO_L_9D35:
  k_ldln -7
  k_ldrn -9
  k_ult
  k_jumpt CMINATO_L_9D27
  k_ldln -11
  k_ldri 3
  k_ult
  k_jumpt CMINATO_L_9D53
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E56D
  k_add
  k_deref
  k_ldriw $03E8
  k_ult
  k_jumpf CMINATO_L_9D5B
CMINATO_L_9D53:
  k_pusharg 11
  k_callx RF_46C6, 2
  k_jump CMINATO_L_9D60
CMINATO_L_9D5B:
  k_pusharg 11
  k_callx CMINATO_F_A186, 2
CMINATO_L_9D60:
  k_return
CMINATO_F_9D61:
  k_func 22
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -20
  k_ldl -20
  k_addli 4
  k_pushl
  k_ldli 1
  k_popstoreb
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -14
  k_ldli 3
  k_stl -10
  k_ldl -10
  k_ldriw $EE78
  k_add
  k_stl -4
  k_ldliw $EEAA
  k_stl -6
  k_ldl -10
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -22
  k_ldlib 101
  k_stl -16
  k_ldli 0
  k_stl -12
  k_jump CMINATO_L_9DC3
CMINATO_L_9D96:
  k_ldl -4
  k_derefb
  k_ldri 3
  k_and
  k_stl -8
  k_ldl -22
  k_addli 8
  k_stl -2
  k_ldl -14
  k_inc
  k_ldr -8
  k_eq
  k_jumpf CMINATO_L_9DBA
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -2
  k_ldr -14
  k_add
  k_derefb
  k_pushl
  k_ldl -16
  k_popr
  k_ugt
  k_jumpf CMINATO_L_9DBA
  k_ldl -2
  k_ldr -14
  k_add
  k_derefb
  k_stl -16
  k_ldl -10
  k_stl -18
CMINATO_L_9DBA:
  k_ldl -10
  k_inc
  k_stl -10
  k_ldl -22
  k_addli 14
  k_stl -22
  k_ldl -4
  k_inc
  k_stl -4
CMINATO_L_9DC3:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt CMINATO_L_9D96
  k_ldl -12
  k_jumpf CMINATO_L_9DD4
  k_ldl -20
  k_addli 5
  k_pushl
  k_ldl -18
  k_jump CMINATO_L_9DDD
CMINATO_L_9DD4:
  k_ldl -20
  k_addli 5
  k_pushl
  k_pushi 15
  k_callx RF_3F3E, 2
  k_addli 3
CMINATO_L_9DDD:
  k_popstoreb
  k_return
CMINATO_F_9DDF:
  k_func 10
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -10
  k_ldli 3
  k_stlbf -1
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -6
  k_ldliw $E970
  k_stl -8
  k_ldli 0
  k_stlbf -2
  k_stl -4
  k_jump CMINATO_L_9E1F
CMINATO_L_9E05:
  k_ldl -6
  k_deref
  k_ldr -4
  k_gt
  k_jumpf CMINATO_L_9E15
  k_ldl -6
  k_deref
  k_stl -4
  k_ldlbf -1
  k_stlbf -2
CMINATO_L_9E15:
  k_ldlbf -1
  k_inc
  k_stlbf -1
  k_ldl -6
  k_addli 14
  k_stl -6
CMINATO_L_9E1F:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt CMINATO_L_9E05
  k_pushiw $02BC
  k_callx RF_3F3E, 2
  k_ldr -4
  k_lt
  k_jumpf CMINATO_L_9E40
  k_ldl -10
  k_addli 4
  k_pushl
  k_ldli 3
  k_popstoreb
  k_ldl -10
  k_addli 5
  k_pushl
  k_ldlbf -2
  k_popstoreb
  k_jump CMINATO_L_9E45
CMINATO_L_9E40:
  k_pusharg 11
  k_callx CMINATO_F_9D61, 2
CMINATO_L_9E45:
  k_return
CMINATO_F_9E46:
  k_func 6
  k_ldlarg 11
  k_dec
  k_stl -2
  k_ldl -2
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -6
  k_ldli 5
  k_swap
  k_ldl -2
  k_udiv
  k_stl -2
  k_ldl -2
  k_shl1
  k_shl1
  k_ldriw $EEC1
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_switch 0, 6, CMINATO_L_9E8E
    .word CMINATO_L_9E79, CMINATO_L_9E79, CMINATO_L_9E79, CMINATO_L_9E8E, CMINATO_L_9E8F, CMINATO_L_9E9B
CMINATO_L_9E79:
  k_ldl -6
  k_addli 4
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -6
  k_addli 5
  k_pushl
  k_ldl -4
  k_ldri 5
  k_mul
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_inc
CMINATO_L_9E8D:
  k_popstoreb
CMINATO_L_9E8E:
  k_return
CMINATO_L_9E8F:
  k_ldl -6
  k_addli 4
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -6
  k_addli 5
  k_pushl
  k_ldli 0
  k_jump CMINATO_L_9E8D
CMINATO_L_9E9B:
  k_pusharg 11
  k_callx CMINATO_F_9DDF, 2
  k_jump CMINATO_L_9E8E
CMINATO_F_9EA3:
  k_func 8
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_inc
  k_stl -4
  k_ldl -4
  k_addli 3
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -6
  k_ldl -4
  k_addli 5
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -8
  k_ldli 0
  k_stl -2
  k_jump CMINATO_L_9EDC
CMINATO_L_9EC4:
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt CMINATO_L_9ED5
  k_pusharg 13
  k_ldl -4
  k_popstoreb
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_ldl -2
  k_inc
  k_stl -2
CMINATO_L_9ED5:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -6
  k_addlib 16
  k_stl -6
CMINATO_L_9EDC:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt CMINATO_L_9EC4
  k_ldl -2
  k_return
CMINATO_F_9EE4:
  k_func 8
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -6
  k_addlib 48
  k_stl -8
  k_ldli 0
  k_stl -2
  k_jump CMINATO_L_9F16
CMINATO_L_9EFE:
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt CMINATO_L_9F0F
  k_pusharg 13
  k_ldl -4
  k_popstoreb
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_ldl -2
  k_inc
  k_stl -2
CMINATO_L_9F0F:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -6
  k_addlib 16
  k_stl -6
CMINATO_L_9F16:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt CMINATO_L_9EFE
  k_ldl -2
  k_return
CMINATO_F_9F1E:
  k_func 11
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stln -11
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stln -7
  k_ldlarg 13
  k_shl1
  k_shl1
  k_ldriw $EEBE
  k_add
  k_deref
  k_pushl
  k_ldln -7
  k_shl1
  k_shl1
  k_ldriw $EEBE
  k_add
  k_deref
  k_popr
  k_ult
  k_jumpf CMINATO_L_9F57
  k_leal -5
  k_pushl
  k_pusharg 13
  k_callx CMINATO_F_9EE4, 4
  k_jump CMINATO_L_9F60
CMINATO_L_9F57:
  k_leal -5
  k_pushl
  k_pusharg 13
  k_callx CMINATO_F_9EA3, 4
CMINATO_L_9F60:
  k_stln -9
  k_ldln -9
  k_jumpf CMINATO_L_9F82
  k_ldln -11
  k_addli 4
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldln -11
  k_addli 5
  k_pushl
  k_leal -5
  k_pushl
  k_pushn -9
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_jump CMINATO_L_9F87
CMINATO_L_9F82:
  k_pusharg 11
  k_callx CMINATO_F_9D61, 2
CMINATO_L_9F87:
  k_return
CMINATO_F_9F88:
  k_func 8
  k_ldlib 16
  k_stl -4
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -6
  k_ldliw $E6B4
  k_stl -8
  k_ldli 0
  k_stl -2
  k_jump CMINATO_L_9FB8
CMINATO_L_9FA0:
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt CMINATO_L_9FB1
  k_pusharg 11
  k_ldl -4
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -2
  k_inc
  k_stl -2
CMINATO_L_9FB1:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -6
  k_addlib 16
  k_stl -6
CMINATO_L_9FB8:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt CMINATO_L_9FA0
  k_ldl -2
  k_return
CMINATO_F_9FC0:
  k_func 9
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stln -9
  k_leal -5
  k_pushl
  k_callx CMINATO_F_9F88, 2
  k_stln -7
  k_ldln -7
  k_jumpf CMINATO_L_9FFA
  k_ldln -9
  k_addli 4
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldln -9
  k_addli 5
  k_pushl
  k_leal -5
  k_pushl
  k_pushn -7
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_jump CMINATO_L_9FFF
CMINATO_L_9FFA:
  k_pusharg 11
  k_callx CMINATO_F_9D61, 2
CMINATO_L_9FFF:
  k_return
CMINATO_F_A000:
  k_func 6
  k_ldlarg 11
  k_dec
  k_stl -2
  k_ldl -2
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -6
  k_ldli 5
  k_swap
  k_ldl -2
  k_udiv
  k_stl -2
  k_ldl -2
  k_shl1
  k_shl1
  k_ldriw $EEC1
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_switch 0, 6, CMINATO_L_A046
    .word CMINATO_L_A033, CMINATO_L_A033, CMINATO_L_A033, CMINATO_L_A047, CMINATO_L_A04F, CMINATO_L_A057
CMINATO_L_A033:
  k_push -4
  k_pusharg 11
  k_callx CMINATO_F_9F1E, 4
  k_jump CMINATO_L_A046
CMINATO_L_A03C:
  k_ldl -6
  k_addli 4
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -6
  k_addli 5
  k_pushl
  k_ldli 0
  k_popstoreb
CMINATO_L_A046:
  k_return
CMINATO_L_A047:
  k_pusharg 11
  k_callx CMINATO_F_9FC0, 2
  k_jump CMINATO_L_A046
CMINATO_L_A04F:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf CMINATO_L_A03C
CMINATO_L_A057:
  k_pusharg 11
  k_callx CMINATO_F_9D61, 2
  k_jump CMINATO_L_A046
CMINATO_F_A05F:
  k_func 24
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -22
  k_ldli 0
  k_stl -16
  k_stl -14
  k_stl -10
  k_ldlib 100
  k_stl -12
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -18
  k_ldli 3
  k_stl -8
  k_ldl -8
  k_ldriw $EE78
  k_add
  k_stl -4
  k_ldliw $EEAA
  k_stl -6
  k_ldl -8
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -24
  k_jump CMINATO_L_A0D3
CMINATO_L_A091:
  k_ldl -4
  k_derefb
  k_ldri 3
  k_and
  k_stl -20
  k_ldl -24
  k_addli 8
  k_stl -2
  k_ldl -20
  k_jumpt CMINATO_L_A0B2
  k_ldl -2
  k_ldr -18
  k_add
  k_derefb
  k_pushl
  k_ldl -10
  k_popr
  k_ult
  k_jumpf CMINATO_L_A0CA
  k_ldl -2
  k_ldr -18
  k_add
  k_derefb
  k_stl -10
  k_ldl -8
  k_stl -14
  k_jump CMINATO_L_A0CA
CMINATO_L_A0B2:
  k_ldl -18
  k_inc
  k_stl -20
  k_jumpf CMINATO_L_A0CA
  k_ldl -2
  k_ldr -18
  k_add
  k_derefb
  k_pushl
  k_ldl -12
  k_popr
  k_ugt
  k_jumpf CMINATO_L_A0CA
  k_ldl -2
  k_ldr -18
  k_add
  k_derefb
  k_stl -12
  k_ldl -8
  k_stl -16
CMINATO_L_A0CA:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -24
  k_addli 14
  k_stl -24
  k_ldl -4
  k_inc
  k_stl -4
CMINATO_L_A0D3:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt CMINATO_L_A091
  k_ldl -14
  k_jumpf CMINATO_L_A0E4
  k_ldl -22
  k_addli 5
  k_pushl
  k_ldl -14
  k_jump CMINATO_L_A100
CMINATO_L_A0E4:
  k_ldl -16
  k_jumpf CMINATO_L_A0F6
  k_ldl -12
  k_ldrib 90
  k_ult
  k_jumpf CMINATO_L_A0F6
  k_ldl -22
  k_addli 5
  k_pushl
  k_ldl -16
  k_jump CMINATO_L_A100
CMINATO_L_A0F6:
  k_ldl -22
  k_addli 5
  k_pushl
  k_pushib 47
  k_callx RF_3F3E, 2
  k_addli 3
CMINATO_L_A100:
  k_popstoreb
  k_return
CMINATO_F_A102:
  k_func 20
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -18
  k_ldl -18
  k_addli 4
  k_pushl
  k_ldli 2
  k_popstoreb
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -14
  k_ldl -14
  k_shl1
  k_shl1
  k_ldriw $EEC1
  k_add
  k_derefb
  k_stl -16
  k_ldl -16
  k_ldri 3
  k_ult
  k_jumpf CMINATO_L_A180
  k_ldli 3
  k_stl -12
  k_ldl -12
  k_ldriw $EE78
  k_add
  k_stl -4
  k_ldliw $EEAA
  k_stl -6
  k_ldl -12
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -20
  k_ldliw $00C8
  k_stl -8
  k_jump CMINATO_L_A16D
CMINATO_L_A145:
  k_ldl -16
  k_inc
  k_pushl
  k_ldl -4
  k_derefb
  k_ldri 3
  k_and
  k_popr
  k_eq
  k_jumpf CMINATO_L_A164
  k_ldl -20
  k_addli 8
  k_stl -2
  k_ldl -2
  k_ldr -16
  k_add
  k_derefb
  k_ldr -8
  k_ult
  k_jumpf CMINATO_L_A164
  k_ldl -12
  k_stl -10
  k_ldl -2
  k_ldr -16
  k_add
  k_derefb
  k_stl -8
CMINATO_L_A164:
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -20
  k_addli 14
  k_stl -20
  k_ldl -4
  k_inc
  k_stl -4
CMINATO_L_A16D:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt CMINATO_L_A145
  k_ldl -8
  k_ldrib 101
  k_ult
  k_jumpf CMINATO_L_A180
  k_ldl -18
  k_addli 5
  k_pushl
  k_ldl -10
  k_popstoreb
  k_return
CMINATO_L_A180:
  k_pusharg 11
  k_callx CMINATO_F_A05F, 2
  k_return
CMINATO_F_A186:
  k_func 2
  k_ldlarg 11
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_udiv
  k_ldri 3
  k_eq
  k_jumpf CMINATO_L_A19E
  k_pusharg 11
  k_callx CMINATO_F_9E46, 2
  k_jump CMINATO_L_A1B3
CMINATO_L_A19E:
  k_ldl -2
  k_ldri 5
  k_umod
  k_ldri 3
  k_ult
  k_jumpf CMINATO_L_A1AE
  k_pusharg 11
  k_callx CMINATO_F_A102, 2
  k_jump CMINATO_L_A1B3
CMINATO_L_A1AE:
  k_pusharg 11
  k_callx CMINATO_F_A000, 2
CMINATO_L_A1B3:
  k_return
CMINATO_D_A1B4:
  .word CMINATO_F_9D0A, CMINATO_F_96CA, CMINATO_F_98CB, CMINATO_F_9AFF
CMINATO_D_A1BC:
  .byte $FF, $00, $00, $00, $02, $00, $03, $00, $00, $00, $FF, $00, $01, $00, $04, $00
  .byte $02, $00, $01, $00, $FF, $00, $05, $00, $03, $00, $04, $00, $05, $00, $FF, $00
