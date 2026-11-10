; overlay ibento, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp IBENTO_F_9603
IBENTO_F_9603:
  k_func 0
  k_call IBENTO_F_9D79
  k_return
IBENTO_F_960C:
  k_func 2
  k_ldlarg 11
  k_ldrib 49
  k_mul
  k_ldriw $F300
  k_add
  k_stl -2
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldr -2
  k_add
  k_ldrarg 13
  k_add
  k_derefb
  k_return
IBENTO_F_9623:
  k_func 2
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_callx IBENTO_F_960C, 6
  k_stl -2
  k_ldl -2
  k_ldri 4
  k_ugt
  k_jumpf IBENTO_L_963D
  k_ldl -2
  k_ldrib 17
  k_ult
  k_jumpt IBENTO_L_965D
IBENTO_L_963D:
  k_ldl -2
  k_ldrib 20
  k_ugt
  k_jumpf IBENTO_L_964B
  k_ldl -2
  k_ldrib 25
  k_ult
  k_jumpt IBENTO_L_965D
IBENTO_L_964B:
  k_ldl -2
  k_ldrib 28
  k_ugt
  k_jumpf IBENTO_L_9659
  k_ldl -2
  k_ldrib 41
  k_ult
  k_jumpt IBENTO_L_965D
IBENTO_L_9659:
  k_ldli 0
  k_jump IBENTO_L_965E
IBENTO_L_965D:
  k_ldli 1
IBENTO_L_965E:
  k_return
IBENTO_F_965F:
  k_func 4
  k_ldli 0
  k_stl -4
IBENTO_L_9666:
  k_ldli 0
  k_stl -2
IBENTO_L_9668:
  k_push -4
  k_push -2
  k_pusharg 11
  k_callx IBENTO_F_9623, 6
  k_jumpf IBENTO_L_9674
  k_ldli 1
  k_return
IBENTO_L_9674:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 7
  k_ult
  k_jumpt IBENTO_L_9668
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 7
  k_ult
  k_jumpt IBENTO_L_9666
  k_ldli 0
  k_return
IBENTO_F_9688:
  k_func 2
  k_ldli 0
  k_stl -2
IBENTO_L_968F:
  k_push -2
  k_callx IBENTO_F_965F, 2
  k_jumpf IBENTO_L_9699
  k_ldli 0
  k_return
IBENTO_L_9699:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_ult
  k_jumpt IBENTO_L_968F
  k_ldli 1
  k_return
IBENTO_F_96A4:
  k_func 0
  k_ldlarg 15
  k_shl1
  k_ldrarg 13
  k_add
  k_pushl
  k_ldli 8
  k_popr
  k_shr
  k_pushl
  k_ldlarg 11
  k_ldri 1
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_sub
  k_shl1
  k_shl1
  k_pushl
  k_ldlarg 11
  k_ldri 1
  k_shr
  k_ldriw IBENTO_D_9DCE
  k_add
  k_derefb
  k_popr
  k_shr
  k_popr
  k_and
  k_ldri 15
  k_and
  k_jumpf IBENTO_L_96D1
  k_ldli 0
  k_jump IBENTO_L_96D2
IBENTO_L_96D1:
  k_ldli 1
IBENTO_L_96D2:
  k_return
IBENTO_F_96D3:
  k_func 4
  k_pusharg 11
  k_callx RF_40C3, 2
  k_stl -2
  k_ldl -2
  k_stl -4
  k_ldl -2
  k_addli 15
  k_pushl
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EE76
  k_ldri 3
  k_udiv
  k_popr
  k_add
  k_inc
  k_ldriw $0FA0
  k_mul
  k_popstore
  k_pushi 12
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw IBENTO_D_9DE9
  k_add
  k_deref
  k_pushl
  k_push -4
  k_callx $8979, 4
  k_pushiw IBENTO_D_9EBB
  k_push -4
  k_callx $89A1, 4
  k_pushi 13
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw IBENTO_D_9E01
  k_add
  k_deref
  k_pushl
  k_push -4
  k_callx $89A1, 4
  k_return
IBENTO_F_9721:
  k_func 25
  k_ldlba $EF5C
  k_jumpt IBENTO_L_9808
  k_pushi 3
  k_leal -3
  k_pushl
  k_pushiw $EF84
  k_callx RL_88F4, 6
  k_longd $18, $00000000
  k_longw $0E, $FFE7
  k_pushi 2
  k_pushiw $EFA7
  k_leal -25
  k_pushl
  k_callx RF_3F4F, 6
  k_pushi 2
  k_pushiw $EFA9
  k_leal -25
  k_pushl
  k_callx RF_3F4F, 6
IBENTO_L_975A:
  k_pushib 24
  k_callx RF_3F3E, 2
  k_stln -17
  k_pushi 12
  k_callx RF_3F3E, 2
  k_stln -19
  k_pushiw $F300
  k_pushn -19
  k_pushn -17
  k_callx RF_5449, 6
  k_call IBENTO_F_9688
  k_jumpt IBENTO_L_975A
  k_pushi 3
  k_pushiw $EF84
  k_leal -3
  k_pushl
  k_callx RL_88F4, 6
IBENTO_L_9786:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_stln -5
  k_pushi 3
  k_callx RF_3F3E, 2
  k_stln -7
  k_pushi 7
  k_callx RF_3F3E, 2
  k_stln -9
  k_pushi 7
  k_callx RF_3F3E, 2
  k_stln -11
  k_pushn -11
  k_pushn -9
  k_ldln -7
  k_ldri 3
  k_mul
  k_ldrn -5
  k_add
  k_pushl
  k_callx IBENTO_F_9623, 6
  k_jumpf IBENTO_L_9786
  k_pushn -11
  k_pushn -9
  k_ldln -7
  k_ldri 3
  k_mul
  k_ldrn -5
  k_add
  k_pushl
  k_callx IBENTO_F_960C, 6
  k_stln -21
IBENTO_L_97C7:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_stln -13
  k_pushi 2
  k_callx RF_3F3E, 2
  k_stln -15
  k_pushn -15
  k_pushn -13
  k_pushn -21
  k_callx IBENTO_F_96A4, 6
  k_jumpt IBENTO_L_97C7
  k_ldln -17
  k_ldri 3
  k_mul
  k_ldrn -5
  k_add
  k_stlba $EF5D
  k_ldln -19
  k_ldri 3
  k_mul
  k_ldrn -7
  k_add
  k_stlba $EF5E
  k_ldln -9
  k_shl1
  k_ldrn -13
  k_add
  k_stlba $EF5F
  k_ldln -11
  k_shl1
  k_ldrn -15
  k_add
  k_stlba $EF60
IBENTO_L_9808:
  k_ldlib 31
  k_stlba $EF57
  k_pushib 31
  k_callx IBENTO_F_96D3, 2
  k_return
IBENTO_F_9814:
  k_func 0
  k_pusharg 11
  k_ldli 0
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_pusharg 11
  k_ldlarg 13
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlarg 11
  k_return
IBENTO_F_9827:
  k_func 0
  k_pusharg 11
  k_ldli 1
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_pusharg 11
  k_ldlarg 13
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlarg 11
  k_return
IBENTO_F_983A:
  k_func 2
  k_ldli 0
  k_stlba $EF56
  k_ldlba $EE76
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_stl -2
  k_ldl -2
  k_ldriw IBENTO_D_9EBD
  k_add
  k_derefb
  k_stlba $EF57
  k_ldli 1
  k_stlba $EF61
  k_return
IBENTO_F_985D:
  k_func 3
  k_ldli 1
  k_stlba $EF56
  k_pushi 2
  k_callx RF_3F3E, 2
  k_inc
  k_stlbf -1
  k_ldlbf -1
  k_stlba $EF57
  k_ldli 1
  k_stlba $EF61
  k_return
IBENTO_F_987A:
  k_func 20
  k_ldli 2
  k_stlba $EF56
  k_ldlba $EF54
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stl -8
  k_ldliw $EED2
  k_stl -4
  k_push -4
  k_ldli 3
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_push -4
  k_ldli 0
  k_popstoreb
  k_ldli 1
  k_stl -16
  k_ldl -8
  k_jumpf IBENTO_L_9916
  k_ldliw $EA8F
  k_stl -2
  k_ldl -8
  k_dec
  k_stl -8
  k_ldlib 101
  k_stl -10
  k_ldli 0
  k_jump IBENTO_L_98D9
IBENTO_L_98AF:
  k_ldl -14
  k_ldr -8
  k_ne
  k_jumpf IBENTO_L_98D7
  k_ldl -8
  k_shl1
  k_shl1
  k_ldr -14
  k_add
  k_ldriw IBENTO_D_9EC9
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_ldr -10
  k_ult
  k_jumpf IBENTO_L_98D7
  k_ldl -14
  k_stl -12
  k_ldl -8
  k_shl1
  k_shl1
  k_ldr -14
  k_add
  k_ldriw IBENTO_D_9EC9
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_stl -10
IBENTO_L_98D7:
  k_ldl -14
  k_inc
IBENTO_L_98D9:
  k_stl -14
  k_ldl -14
  k_ldri 3
  k_ult
  k_jumpt IBENTO_L_98AF
  k_ldl -10
  k_ldrib 51
  k_ult
  k_jumpf IBENTO_L_9916
  k_ldl -12
  k_ldri 5
  k_mul
  k_addli 4
  k_stl -14
  k_ldl -14
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -18
  k_addlib 32
  k_stl -20
  k_jump IBENTO_L_9910
IBENTO_L_98FA:
  k_ldl -18
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt IBENTO_L_9909
  k_ldli 0
  k_stl -16
  k_ldl -14
  k_stl -6
  k_jump IBENTO_L_9916
IBENTO_L_9909:
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -18
  k_addlib 16
  k_stl -18
IBENTO_L_9910:
  k_ldl -18
  k_ldr -20
  k_ult
  k_jumpt IBENTO_L_98FA
IBENTO_L_9916:
  k_ldl -16
  k_jumpf IBENTO_L_9947
  k_ldlib 16
  k_stl -14
  k_ldl -14
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -18
  k_addlib 80
  k_stl -20
  k_jump IBENTO_L_9941
IBENTO_L_992B:
  k_ldl -18
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt IBENTO_L_993A
  k_ldli 0
  k_stl -16
  k_ldl -14
  k_stl -6
  k_jump IBENTO_L_9947
IBENTO_L_993A:
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -18
  k_addlib 16
  k_stl -18
IBENTO_L_9941:
  k_ldl -18
  k_ldr -20
  k_ult
  k_jumpt IBENTO_L_992B
IBENTO_L_9947:
  k_ldl -16
  k_jumpf IBENTO_L_994C
  k_return
IBENTO_L_994C:
  k_ldl -6
  k_stlba $EF57
  k_ldli 1
  k_stlba $EF61
  k_return
IBENTO_F_9955:
  k_func 10
  k_ldliw $E444
  k_stl -4
  k_addliw $011F
  k_stl -6
IBENTO_L_9962:
  k_ldli 0
  k_stl -10
  k_pushib 90
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $04FF
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_stl -2
  k_ldl -4
  k_jump IBENTO_L_9987
IBENTO_L_9979:
  k_ldl -8
  k_deref
  k_ldr -2
  k_eq
  k_jumpf IBENTO_L_9985
  k_ldli 1
  k_stl -10
  k_jump IBENTO_L_998E
IBENTO_L_9985:
  k_ldl -8
  k_addli 7
IBENTO_L_9987:
  k_stl -8
  k_ldl -8
  k_ldr -6
  k_ult
  k_jumpt IBENTO_L_9979
IBENTO_L_998E:
  k_ldl -10
  k_jumpt IBENTO_L_9962
  k_pusharg 11
  k_ldl -2
  k_popstore
  k_return
IBENTO_F_9996:
  k_func 10
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stl -2
  k_ldliw $E444
  k_stl -4
  k_push -2
  k_callx IBENTO_F_9955, 2
  k_ldl -2
  k_addli 2
  k_pushl
  k_pushib 50
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -2
  k_addli 3
  k_pushl
  k_pushib 50
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldlarg 11
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_stl -10
  k_ldl -10
  k_inc
  k_pushl
  k_pushib 20
  k_callx RF_3F3E, 2
  k_popstoreb
  k_push -10
  k_ldli 0
  k_popstoreb
  k_ldl -2
  k_addli 4
  k_pushl
  k_pushi 0
  k_callx RF_464C, 2
  k_popstore
  k_pushi 1
  k_ldl -2
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_return
IBENTO_F_99FF:
  k_func 22
  k_leal -10
  k_pushl
  k_callx RF_4221, 2
  k_stl -16
IBENTO_L_9A0D:
  k_pushib 20
  k_callx RF_3F3E, 2
  k_inc
  k_stl -18
  k_ldli 0
  k_stl -22
  k_ldl -18
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_derefb
  k_ldri 2
  k_and
  k_jumpt IBENTO_L_9A43
  k_leal -10
  k_stl -12
  k_ldr -16
  k_add
  k_stl -14
  k_jump IBENTO_L_9A3A
IBENTO_L_9A2E:
  k_ldl -12
  k_derefb
  k_ldr -18
  k_eq
  k_jumpf IBENTO_L_9A37
  k_ldli 1
  k_stl -22
IBENTO_L_9A37:
  k_ldl -12
  k_inc
  k_stl -12
IBENTO_L_9A3A:
  k_ldl -12
  k_ldr -14
  k_ult
  k_jumpt IBENTO_L_9A2E
  k_jump IBENTO_L_9A45
IBENTO_L_9A43:
  k_ldli 1
  k_stl -22
IBENTO_L_9A45:
  k_ldl -22
  k_jumpt IBENTO_L_9A0D
  k_ldl -18
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_derefb
  k_ldri 1
  k_and
  k_jumpt IBENTO_L_9A5B
  k_push -18
  k_callx IBENTO_F_9996, 2
IBENTO_L_9A5B:
  k_pushi 2
  k_ldl -18
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldl -18
  k_return
IBENTO_F_9A6A:
  k_func 6
IBENTO_L_9A6F:
  k_ldli 0
  k_stl -4
  k_pushib 20
  k_callx RF_3F3E, 2
  k_stl -6
  k_ldlarg 11
  k_ldrarg 13
  k_add
  k_stl -2
  k_jump IBENTO_L_9A8B
IBENTO_L_9A7F:
  k_ldlarg 11
  k_derefb
  k_ldr -6
  k_eq
  k_jumpf IBENTO_L_9A88
  k_ldli 1
  k_stl -4
IBENTO_L_9A88:
  k_ldlarg 11
  k_inc
  k_stlarg 11
IBENTO_L_9A8B:
  k_ldlarg 11
  k_ldr -2
  k_ult
  k_jumpt IBENTO_L_9A7F
  k_ldl -4
  k_jumpt IBENTO_L_9A6F
  k_ldl -6
  k_return
IBENTO_F_9A97:
  k_func 19
  k_ldliw $E564
  k_stln -19
  k_ldli 3
  k_stlba $EF56
  k_ldliw $EED2
  k_stln -7
  k_pushn -7
  k_ldli 3
  k_popstoreb
  k_ldln -7
  k_inc
  k_stln -7
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EE76
  k_ldri 3
  k_udiv
  k_popr
  k_add
  k_inc
  k_stln -11
  k_ldli 0
  k_stln -9
  k_stln -15
  k_jump IBENTO_L_9B0F
IBENTO_L_9ACB:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf IBENTO_L_9AE3
  k_call IBENTO_F_99FF
  k_stln -13
  k_pushn -13
  k_pushn -7
  k_callx IBENTO_F_9814, 4
  k_jump IBENTO_L_9B08
IBENTO_L_9AE3:
  k_pushn -15
  k_leal -5
  k_pushl
  k_callx IBENTO_F_9A6A, 4
  k_stln -13
  k_leal -5
  k_pushl
  k_ldln -15
  k_popr
  k_add
  k_pushl
  k_ldln -13
  k_popstoreb
  k_ldln -15
  k_inc
  k_stln -15
  k_pushn -13
  k_pushn -7
  k_callx IBENTO_F_9827, 4
IBENTO_L_9B08:
  k_stln -7
  k_ldln -9
  k_inc
  k_stln -9
IBENTO_L_9B0F:
  k_ldln -9
  k_ldrn -11
  k_ult
  k_jumpt IBENTO_L_9ACB
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf IBENTO_L_9B26
  k_ldli 0
  k_stlba $EF5C
  k_jump IBENTO_L_9B51
IBENTO_L_9B26:
  k_pushi 15
  k_callx RF_3F3E, 2
  k_addli 6
  k_stln -17
  k_ldln -17
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpt IBENTO_L_9B26
  k_ldln -17
  k_stlba $EF5C
  k_pushiw $8000
  k_ldln -17
  k_ldri 4
  k_shl
  k_ldriw $E571
  k_add
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
IBENTO_L_9B51:
  k_pushn -7
  k_ldli 9
  k_popstoreb
  k_ldli 1
  k_stlba $EF61
  k_call IBENTO_F_9721
  k_return
IBENTO_F_9B5D:
  k_func 20
  k_ldli 4
  k_stlba $EF56
  k_ldliw $EED2
  k_stl -4
  k_push -4
  k_ldli 3
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_push -4
  k_ldli 0
  k_popstoreb
  k_ldliw $EA8F
  k_stl -2
  k_ldlib 101
  k_stl -6
  k_ldli 1
  k_jump IBENTO_L_9B9A
IBENTO_L_9B7E:
  k_ldl -12
  k_ldriw IBENTO_D_9ED9
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_ldr -6
  k_ult
  k_jumpf IBENTO_L_9B98
  k_ldl -12
  k_stl -8
  k_ldl -12
  k_ldriw IBENTO_D_9ED9
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_stl -6
IBENTO_L_9B98:
  k_ldl -12
  k_inc
IBENTO_L_9B9A:
  k_stl -12
  k_ldl -12
  k_ldri 3
  k_ult
  k_jumpt IBENTO_L_9B7E
  k_ldli 1
  k_stl -16
  k_ldl -6
  k_ldrib 51
  k_ult
  k_jumpf IBENTO_L_9BD9
  k_ldl -8
  k_ldri 5
  k_mul
  k_addli 4
  k_stl -12
  k_ldl -12
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -18
  k_addlib 32
  k_stl -20
  k_jump IBENTO_L_9BD3
IBENTO_L_9BBD:
  k_ldl -18
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt IBENTO_L_9BCC
  k_ldli 0
  k_stl -16
  k_ldl -12
  k_stl -14
  k_jump IBENTO_L_9BD9
IBENTO_L_9BCC:
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -18
  k_addlib 16
  k_stl -18
IBENTO_L_9BD3:
  k_ldl -18
  k_ldr -20
  k_ult
  k_jumpt IBENTO_L_9BBD
IBENTO_L_9BD9:
  k_ldl -16
  k_jumpf IBENTO_L_9C0A
  k_ldlib 16
  k_stl -12
  k_ldl -12
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -18
  k_addlib 80
  k_stl -20
  k_jump IBENTO_L_9C04
IBENTO_L_9BEE:
  k_ldl -18
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt IBENTO_L_9BFD
  k_ldli 0
  k_stl -16
  k_ldl -12
  k_stl -14
  k_jump IBENTO_L_9C0A
IBENTO_L_9BFD:
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -18
  k_addlib 16
  k_stl -18
IBENTO_L_9C04:
  k_ldl -18
  k_ldr -20
  k_ult
  k_jumpt IBENTO_L_9BEE
IBENTO_L_9C0A:
  k_ldl -16
  k_jumpf IBENTO_L_9C0F
  k_return
IBENTO_L_9C0F:
  k_ldl -14
  k_stlba $EF57
  k_ldli 1
  k_stlba $EF61
  k_return
IBENTO_F_9C18:
  k_func 2
IBENTO_L_9C1D:
  k_pushib 28
  k_callx RF_3F3E, 2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpf IBENTO_L_9C1D
  k_ldl -2
  k_return
IBENTO_F_9C32:
  k_func 2
IBENTO_L_9C37:
  k_pushib 28
  k_callx RF_3F3E, 2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpf IBENTO_L_9C37
  k_ldl -2
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 4
  k_and
  k_jumpf IBENTO_L_9C37
  k_ldl -2
  k_return
IBENTO_F_9C57:
  k_func 2
IBENTO_L_9C5C:
  k_pushib 28
  k_callx RF_3F3E, 2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpf IBENTO_L_9C5C
  k_ldl -2
  k_return
IBENTO_F_9C71:
  k_func 8
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf IBENTO_L_9CC3
  k_ldlba $EF56
  k_ldri 3
  k_eq
  k_jumpt IBENTO_L_9C8E
  k_ldlba $EF56
  k_ldri 2
  k_eq
  k_jumpf IBENTO_L_9CC3
IBENTO_L_9C8E:
  k_ldlba $EF5C
  k_jumpf IBENTO_L_9CA5
  k_pushiw $7FFF
  k_ldlba $EF5C
  k_ldri 4
  k_shl
  k_ldriw $E571
  k_add
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
IBENTO_L_9CA5:
  k_ldliw $E44B
  k_stl -6
  k_addliw $008C
  k_stl -8
  k_jump IBENTO_L_9CBD
IBENTO_L_9CB0:
  k_pushiw $00FD
  k_ldl -6
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldl -6
  k_addli 7
  k_stl -6
IBENTO_L_9CBD:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt IBENTO_L_9CB0
IBENTO_L_9CC3:
  k_ldliw $EED2
  k_stla $EF52
  k_ldlarg 11
  k_switch 0, 4, IBENTO_L_9D24
    .word IBENTO_L_9CD9, IBENTO_L_9D2B, IBENTO_L_9D45, IBENTO_L_9D5F
IBENTO_L_9CD9:
  k_pusha $EF52
  k_ldli 0
  k_popstoreb
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_pusha $EF52
  k_ldli 0
  k_popstoreb
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_ldli 0
  k_stlba $EF54
  k_ldli 0
  k_stlba $EF55
  k_ldlba $EE76
  k_jumpf IBENTO_L_9D10
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EE76
  k_dec
  k_ldri 1
  k_shr
  k_popr
  k_add
  k_jump IBENTO_L_9D11
IBENTO_L_9D10:
  k_ldli 0
IBENTO_L_9D11:
  k_stl -4
  k_ldlba $EE76
  k_ldri 9
  k_eq
  k_jumpf IBENTO_L_9D1C
  k_ldli 4
  k_stl -4
IBENTO_L_9D1C:
  k_ldl -4
  k_shl1
  k_ldriw IBENTO_D_9EE9
  k_add
  k_deref
IBENTO_L_9D23:
  k_callptr
IBENTO_L_9D24:
  k_ldliw $EED2
  k_stla $EF52
  k_return
IBENTO_L_9D2B:
  k_call IBENTO_F_9C18
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf IBENTO_L_9D24
  k_ldl -2
  k_stlba $EF54
  k_ldli 1
  k_stlba $EF55
  k_ldla IBENTO_D_9EE9
  k_jump IBENTO_L_9D23
IBENTO_L_9D45:
  k_call IBENTO_F_9C32
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf IBENTO_L_9D24
  k_ldl -2
  k_stlba $EF54
  k_ldli 2
  k_stlba $EF55
  k_ldla IBENTO_D_9EEF
  k_jump IBENTO_L_9D23
IBENTO_L_9D5F:
  k_call IBENTO_F_9C57
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf IBENTO_L_9D24
  k_ldl -2
  k_stlba $EF54
  k_ldli 3
  k_stlba $EF55
  k_ldla IBENTO_D_9EED
  k_jump IBENTO_L_9D23
IBENTO_F_9D79:
  k_func 2
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpt IBENTO_L_9DCD
  k_ldlba $EF56
  k_ldri 4
  k_ne
  k_jumpf IBENTO_L_9DCD
  k_ldlba $EE76
  k_inc
  k_pushl
  k_ldlba $EE76
  k_inc
  k_popr
  k_mul
  k_ldriw $0190
  k_mul
  k_pushl
  k_ldla $EE74
  k_popr
  k_ugt
  k_jumpf IBENTO_L_9DAA
  k_ldli 0
  k_jump IBENTO_L_9DBB
IBENTO_L_9DAA:
  k_pushi 3
  k_ldlba $E447
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_callx RF_3F3E, 2
  k_inc
IBENTO_L_9DBB:
  k_stl -2
  k_ldl -2
  k_jumpf IBENTO_L_9DC8
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf IBENTO_L_9DCD
IBENTO_L_9DC8:
  k_push -2
  k_callx IBENTO_F_9C71, 2
IBENTO_L_9DCD:
  k_return
IBENTO_D_9DCE:
  .byte $0F, $FF, $01, $24, $8A, $53, $CE, $DB, $7F, $FF, $FE, $DB, $7F, $FF, $F4, $82
  .byte $8E, $DB, $7E, $DB, $7F, $FF, $FF, $FF, $F0, $00, $00
IBENTO_D_9DE9:
  .word IBENTO_D_9E1B, IBENTO_D_9E20, IBENTO_D_9E27, IBENTO_D_9E2D, IBENTO_D_9E33, IBENTO_D_9E3A, IBENTO_D_9E42, IBENTO_D_9E49
  .word IBENTO_D_9E4E, IBENTO_D_9E54, IBENTO_D_9E5A, IBENTO_D_9E61
IBENTO_D_9E01:
  .word IBENTO_D_9E69, IBENTO_D_9E70, IBENTO_D_9E76, IBENTO_D_9E7C, IBENTO_D_9E83, IBENTO_D_9E8A, IBENTO_D_9E8F, IBENTO_D_9E96
  .word IBENTO_D_9E9C, IBENTO_D_9EA3, IBENTO_D_9EA9, IBENTO_D_9EAF, IBENTO_D_9EB6
IBENTO_D_9E1B:
  .byte "Lion", $00
IBENTO_D_9E20:
  .byte "Dragon", $00
IBENTO_D_9E27:
  .byte "Hydra", $00
IBENTO_D_9E2D:
  .byte "Ebony", $00
IBENTO_D_9E33:
  .byte "Bronze", $00
IBENTO_D_9E3A:
  .byte "Crystal", $00
IBENTO_D_9E42:
  .byte "Silver", $00
IBENTO_D_9E49:
  .byte "Ruby", $00
IBENTO_D_9E4E:
  .byte "Magic", $00
IBENTO_D_9E54:
  .byte "Royal", $00
IBENTO_D_9E5A:
  .byte "Golden", $00
IBENTO_D_9E61:
  .byte "Emerald", $00
IBENTO_D_9E69:
  .byte "Dagger", $00
IBENTO_D_9E70:
  .byte "Charm", $00
IBENTO_D_9E76:
  .byte "Crown", $00
IBENTO_D_9E7C:
  .byte "Goblet", $00
IBENTO_D_9E83:
  .byte "Statue", $00
IBENTO_D_9E8A:
  .byte "Harp", $00
IBENTO_D_9E8F:
  .byte "Mirror", $00
IBENTO_D_9E96:
  .byte "Ladle", $00
IBENTO_D_9E9C:
  .byte "Shield", $00
IBENTO_D_9EA3:
  .byte "Armor", $00
IBENTO_D_9EA9:
  .byte "Sword", $00
IBENTO_D_9EAF:
  .byte "Helmet", $00
IBENTO_D_9EB6:
  .byte "Ring", $00
IBENTO_D_9EBB:
  .byte $20, $00
IBENTO_D_9EBD:
  .byte $17, $12, $09, $0D, $0E, $0C, $03, $00, $01, $02, $04, $11
IBENTO_D_9EC9:
  .byte $FF, $00, $02, $03, $00, $FF, $0B, $04, $02, $01, $FF, $05, $03, $04, $05, $FF
IBENTO_D_9ED9:
  .byte $FF, $00, $02, $03, $00, $FF, $01, $04, $02, $01, $FF, $05, $03, $04, $05, $FF
IBENTO_D_9EE9:
  .word IBENTO_F_983A, IBENTO_F_985D
IBENTO_D_9EED:
  .word IBENTO_F_987A
IBENTO_D_9EEF:
  .word IBENTO_F_9A97, IBENTO_F_9B5D
  .byte $00
