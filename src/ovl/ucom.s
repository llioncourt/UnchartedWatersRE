; overlay ucom, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp UCOM_F_9603
UCOM_F_9603:
  k_func 0
  k_call UCOM_F_9675
  k_return
UCOM_F_960C:
  k_func 0
  k_call RF_2E13
  k_return
UCOM_F_9615:
  k_func 10
  k_ldlarg 11
  k_shl1
  k_addli 2
  k_ldri 3
  k_shl
  k_stlarg 11
  k_ldlarg 13
  k_shl1
  k_inc
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
  k_stlarg 13
  k_ldli 0
  k_stl -2
UCOM_L_9634:
  k_leal -10
  k_pushl
  k_ldl -2
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldlarg 15
  k_shl1
  k_shl1
  k_pushl
  k_ldl -2
  k_shl1
  k_ldriw $BF42
  k_add
  k_deref
  k_popr
  k_add
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 4
  k_ult
  k_jumpt UCOM_L_9634
  k_pushib 126
  k_pushi 0
  k_leal -10
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 10
  k_pushi 9
  k_callx RL_21BE, 18
  k_return
UCOM_F_9666:
  k_func 0
  k_pushib 17
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
  k_return
UCOM_F_9675:
  k_func 2
  k_call RF_5F1C
  k_ldlba $EF81
  k_jumpf UCOM_L_9695
  k_pushi 5
  k_callx RF_3F3E, 2
  k_jumpt UCOM_L_9695
  k_call RF_5C91
  k_pushiw $BF87
  k_callx RF_4B44, 2
UCOM_L_9695:
  k_call RF_5F0F
UCOM_L_9698:
  k_pushi 3
  k_pushi 6
  k_pushiw $BF4A
  k_pushi 2
  k_pushi 5
  k_callx RF_48A7, 10
  k_stl -2
  k_ldl -2
  k_ldrib -2
  k_eq
  k_jumpf UCOM_L_96BC
  k_ldli 6
  k_stl -2
UCOM_L_96AD:
  k_ldl -2
  k_shl1
  k_ldriw $BF56
  k_add
  k_deref
  k_callptr
  k_jumpf UCOM_L_9698
UCOM_L_96B8:
  k_call RF_5FDB
  k_return
UCOM_L_96BC:
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf UCOM_L_96AD
  k_jump UCOM_L_96B8
UCOM_F_96C6:
  k_func 4
  k_ldliw $E564
  k_stl -4
  k_call RF_5C91
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldri 1
  k_and
  k_jumpf UCOM_L_9716
  k_pushi 1
  k_pushiw $C006
  k_callx RF_2FB9, 4
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
  k_jumpf UCOM_L_9714
  k_pushi 0
  k_pushi 0
  k_callx RF_5C5A, 4
  k_call RF_5C3E
  k_ldl -4
  k_addli 8
  k_derefb
  k_shl1
  k_ldriw $BFB8
  k_add
  k_deref
  k_pushl
  k_pushiw $C01E
  k_callx RF_3619, 4
UCOM_L_9714:
  k_ldl -2
  k_return
UCOM_L_9716:
  k_pushiw $C040
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_F_971F:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_pushi 0
  k_pushi 0
  k_callx RF_5C5A, 4
  k_ldl -2
  k_addli 15
  k_derefb
  k_ldri 1
  k_and
  k_jumpf UCOM_L_9749
  k_pushiw $C05B
  k_callx RF_4B44, 2
  k_pushiw $00FE
  k_ldl -2
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_and
  k_jump UCOM_L_9757
UCOM_L_9749:
  k_pushiw $C072
  k_callx RF_4B44, 2
  k_pushi 1
  k_ldl -2
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
UCOM_L_9757:
  k_popstoreb
  k_pushi 4
  k_pushib 22
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_ldli 1
  k_return
UCOM_F_9773:
  k_func 2
  k_pushi 2
  k_pushi 2
  k_pushiw $C092
  k_pushi 2
  k_pushi 0
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_978E
  k_ldli 0
  k_return
UCOM_L_978E:
  k_ldl -2
  k_shl1
  k_ldriw $C096
  k_add
  k_deref
  k_callptr
  k_return
UCOM_F_9797:
  k_func 0
  k_ldlarg 11
  k_ldri 0
  k_lt
  k_jumpt UCOM_L_97B8
  k_ldlarg 11
  k_ldri 13
  k_gt
  k_jumpt UCOM_L_97B8
  k_ldlarg 13
  k_ldri 0
  k_lt
  k_jumpt UCOM_L_97B8
  k_ldlarg 13
  k_ldri 13
  k_gt
  k_jumpt UCOM_L_97B8
  k_ldli 0
  k_jump UCOM_L_97B9
UCOM_L_97B8:
  k_ldli 1
UCOM_L_97B9:
  k_return
UCOM_F_97BA:
  k_func 6
  k_pusharg 13
  k_pusharg 11
  k_callx UCOM_F_9797, 4
  k_jumpf UCOM_L_97CC
  k_ldliw $00FF
  k_return
UCOM_L_97CC:
  k_ldlarg 17
  k_stl -4
  k_ldrarg 15
  k_add
  k_stl -6
  k_jump UCOM_L_9802
UCOM_L_97D4:
  k_ldl -4
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -2
  k_ldlarg 11
  k_pushl
  k_ldl -2
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popr
  k_eq
  k_jumpf UCOM_L_97FF
  k_ldlarg 13
  k_pushl
  k_ldl -2
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_popr
  k_eq
  k_jumpf UCOM_L_97FF
  k_ldl -4
  k_derefb
  k_return
UCOM_L_97FF:
  k_ldl -4
  k_inc
  k_stl -4
UCOM_L_9802:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt UCOM_L_97D4
  k_ldliw $00FF
  k_return
UCOM_F_980C:
  k_func 6
  k_ldli 0
  k_stl -2
UCOM_L_9813:
  k_ldl -2
  k_stl -4
  k_ldlarg 11
  k_ldr -2
  k_add
  k_ldri 15
  k_uge
  k_jumpf UCOM_L_9835
  k_ldlarg 13
  k_deref
  k_ldriw $2EE0
  k_uge
  k_jumpf UCOM_L_9853
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
  k_jump UCOM_L_9853
UCOM_L_9835:
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
  k_jumpf UCOM_L_9853
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
UCOM_L_9853:
  k_ldl -4
  k_ldr -2
  k_ne
  k_jumpt UCOM_L_9813
  k_ldlarg 11
  k_ldr -2
  k_add
  k_ldrib 50
  k_ugt
  k_jumpf UCOM_L_9872
UCOM_L_9862:
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_jumpt UCOM_L_9862
  k_ldlarg 11
  k_ldr -2
  k_add
  k_ldrib 50
  k_ugt
  k_jumpt UCOM_L_9862
UCOM_L_9872:
  k_ldl -2
  k_return
UCOM_F_9874:
  k_func 27
  k_ldli 1
  k_stln -27
  k_ldla $E998
  k_stl -2
  k_leal -17
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stl -8
  k_ldli 0
  k_jump UCOM_L_9A01
UCOM_L_988E:
  k_leal -17
  k_pushl
  k_ldl -10
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -19
  k_ldln -19
  k_derefb
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stln -21
  k_ldln -19
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stln -23
  k_ldln -23
  k_addli 3
  k_derefb
  k_ldrib 50
  k_ult
  k_jumpf UCOM_L_98E8
  k_ldln -21
  k_addli 8
  k_pushl
  k_pushiw $EA60
  k_ldln -21
  k_addli 8
  k_deref
  k_pushl
  k_ldl -2
  k_ldri 10
  k_smod
  k_ldri 10
  k_mul
  k_pushl
  k_ldl -2
  k_ldri 10
  k_sdiv
  k_pushl
  k_ldl -2
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldriw $00C8
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstore
UCOM_L_98E8:
  k_ldln -19
  k_derefb
  k_jumpf UCOM_L_9921
  k_ldln -19
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_stln -25
  k_ldln -25
  k_derefb
  k_stl -4
  k_ldln -21
  k_inc
  k_derefb
  k_pushl
  k_ldlba $EAC1
  k_popr
  k_sub
  k_ldri 10
  k_sdiv
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -4
  k_ldri 0
  k_lt
  k_jumpf UCOM_L_9915
  k_ldli 0
  k_stl -4
UCOM_L_9915:
  k_pushib 100
  k_push -4
  k_callx RL_8962, 4
  k_stl -4
  k_pushn -25
  k_ldl -4
  k_popstoreb
UCOM_L_9921:
  k_ldln -23
  k_addli 3
  k_derefb
  k_ldrib 50
  k_ult
  k_jumpf UCOM_L_99FF
  k_ldln -21
  k_addli 8
  k_pushl
  k_ldln -23
  k_addli 3
  k_derefb
  k_pushl
  k_callx UCOM_F_980C, 4
  k_stl -6
  k_ldl -6
  k_jumpf UCOM_L_99FF
  k_ldln -27
  k_jumpf UCOM_L_994B
  k_call RF_5C3E
  k_ldli 0
  k_stln -27
  k_jump UCOM_L_996C
UCOM_L_994B:
  k_pushiw $2000
  k_pushi 6
  k_pushib 16
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_995D
  k_ldli 3
  k_jump UCOM_L_995F
UCOM_L_995D:
  k_ldlib 19
UCOM_L_995F:
  k_inc
  k_pushl
  k_pushi 8
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 1
  k_callx RF_5C13, 2
UCOM_L_996C:
  k_pushi 0
  k_pushiw $C0B0
  k_callx RF_2FB9, 4
  k_ldln -19
  k_derefb
  k_jumpf UCOM_L_9990
  k_ldln -19
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C0B2
  k_jump UCOM_L_9994
UCOM_L_9990:
  k_pushi 0
  k_pushiw $C0B5
UCOM_L_9994:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw $C0C1
  k_callx RF_2FB9, 4
  k_ldl -6
  k_pushl
  k_ldln -23
  k_addli 3
  k_popr
  k_pushl
  k_derefb
  k_add
  k_popstoreb
  k_ldli 0
  k_jump UCOM_L_99F8
UCOM_L_99AE:
  k_ldln -21
  k_inc
  k_pushl
  k_pushib 100
  k_ldln -21
  k_inc
  k_derefb
  k_pushl
  k_pushi 4
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldln -21
  k_addli 2
  k_pushl
  k_pushib 100
  k_ldln -21
  k_addli 2
  k_derefb
  k_pushl
  k_pushi 4
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldln -21
  k_addli 3
  k_pushl
  k_pushib 100
  k_ldln -21
  k_addli 3
  k_derefb
  k_pushl
  k_pushi 4
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -12
  k_inc
UCOM_L_99F8:
  k_stl -12
  k_ldl -12
  k_ldr -6
  k_ult
  k_jumpt UCOM_L_99AE
UCOM_L_99FF:
  k_ldl -10
  k_inc
UCOM_L_9A01:
  k_stl -10
  k_ldl -10
  k_ldr -8
  k_ult
  k_jumpt UCOM_L_988E
  k_ldli 0
  k_stla $E998
  k_return
UCOM_F_9A0D:
  k_func 80
  k_leal -70
  k_pushl
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx RL_87E0, 6
  k_stln -72
  k_ldliw $E564
  k_stln -78
  k_ldliw $00FF
  k_stln -74
  k_ldln -72
  k_jumpf UCOM_L_9A89
  k_ldli 0
  k_stln -76
UCOM_L_9A46:
  k_leal -70
  k_pushl
  k_pushn -72
  k_ldln -76
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_pushl
  k_ldln -78
  k_addli 3
  k_derefb
  k_popr
  k_add
  k_pushl
  k_ldln -76
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_pushl
  k_ldln -78
  k_addli 2
  k_derefb
  k_popr
  k_add
  k_pushl
  k_callx UCOM_F_97BA, 8
  k_stln -74
  k_ldln -74
  k_ldriw $00FF
  k_ne
  k_jumpt UCOM_L_9A89
  k_ldln -76
  k_inc
  k_stln -76
  k_ldln -76
  k_ldri 8
  k_ult
  k_jumpt UCOM_L_9A46
UCOM_L_9A89:
  k_call RF_5C91
  k_ldln -74
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_9A9E
  k_pushiw $C0E1
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_9A9E:
  k_pushi 0
  k_pushiw $C0F6
  k_callx RF_2FB9, 4
  k_ldln -74
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C107
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf UCOM_L_9B50
  k_call UCOM_F_9874
  k_ldli 0
  k_stlba $EA88
  k_ldli 0
  k_stlba $F28D
  k_pushi 0
  k_ldln -78
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -78
  k_addli 2
  k_derefb
  k_pushl
  k_callx $8A5B, 6
  k_ldln -78
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -78
  k_addli 2
  k_derefb
  k_ldri 14
  k_mul
  k_popr
  k_add
  k_ldriw $F1AE
  k_add
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_9B14
  k_ldln -78
  k_derefb
  k_ldri 3
  k_umod
  k_pushl
  k_ldln -78
  k_inc
  k_derefb
  k_ldri 3
  k_umod
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldln -78
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -78
  k_addli 2
  k_derefb
  k_pushl
  k_callx RF_556D, 6
UCOM_L_9B14:
  k_ldln -74
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -80
  k_ldln -78
  k_addli 2
  k_pushl
  k_ldln -80
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldln -78
  k_addli 3
  k_pushl
  k_ldln -80
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_pushib 18
  k_ldln -78
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_pushi 4
  k_pushib 22
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldli 1
  k_return
UCOM_L_9B50:
  k_ldli 0
  k_return
UCOM_F_9B52:
  k_func 0
  k_pusharg 13
  k_pusharg 11
  k_callx UCOM_F_9797, 4
  k_jumpf UCOM_L_9B62
  k_ldli 0
  k_return
UCOM_L_9B62:
  k_ldlarg 13
  k_pushl
  k_ldlarg 11
  k_pushl
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_callx RL_8616, 8
  k_jumpf UCOM_L_9B89
  k_ldli 0
  k_jump UCOM_L_9B8A
UCOM_L_9B89:
  k_ldli 1
UCOM_L_9B8A:
  k_return
UCOM_F_9B8B:
  k_func 2
  k_ldli 0
  k_jump UCOM_L_9BAD
UCOM_L_9B94:
  k_ldl -2
  k_shl1
  k_ldrarg 17
  k_add
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf UCOM_L_9BAB
  k_ldl -2
  k_shl1
  k_ldrarg 17
  k_add
  k_inc
  k_derefb
  k_ldrarg 13
  k_eq
  k_jumpf UCOM_L_9BAB
  k_ldli 1
  k_return
UCOM_L_9BAB:
  k_ldl -2
  k_inc
UCOM_L_9BAD:
  k_stl -2
  k_ldl -2
  k_ldrarg 15
  k_ult
  k_jumpt UCOM_L_9B94
  k_ldli 0
  k_return
UCOM_F_9BB6:
  k_func 36
  k_ldliw $E564
  k_stln -36
  k_ldln -36
  k_addli 2
  k_derefb
  k_stl -24
  k_ldln -36
  k_addli 3
  k_derefb
  k_stln -26
  k_ldli 0
  k_stln -28
  k_stl -18
  k_jump UCOM_L_9C25
UCOM_L_9BD2:
  k_ldln -28
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_ldrn -26
  k_add
  k_pushl
  k_ldln -28
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_ldr -24
  k_add
  k_pushl
  k_callx UCOM_F_9B52, 4
  k_jumpf UCOM_L_9C20
  k_leal -16
  k_pushl
  k_ldl -18
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldln -28
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_ldr -24
  k_add
  k_popstoreb
  k_leal -15
  k_pushl
  k_ldl -18
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldln -28
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_ldrn -26
  k_add
  k_popstoreb
  k_ldl -18
  k_inc
  k_stl -18
UCOM_L_9C20:
  k_ldln -28
  k_inc
  k_stln -28
UCOM_L_9C25:
  k_ldln -28
  k_ldri 8
  k_ult
  k_jumpt UCOM_L_9BD2
  k_push -18
  k_callx RF_3F3E, 2
  k_stln -30
  k_leal -16
  k_pushl
  k_ldln -30
  k_shl1
  k_popr
  k_add
  k_derefb
  k_stl -20
  k_leal -15
  k_pushl
  k_ldln -30
  k_shl1
  k_popr
  k_add
  k_derefb
  k_stl -22
UCOM_L_9C49:
  k_pushi 2
  k_push -22
  k_push -20
  k_callx UCOM_F_9615, 6
  k_pushi 12
  k_pushn -32
  k_callx RF_3D91, 4
  k_call RF_3759
  k_stln -32
  k_switchn 4
    .word $0100, UCOM_L_9CAE
    .word $0200, UCOM_L_9CC9
    .word $0400, UCOM_L_9C93
    .word $0800, UCOM_L_9C71
    .word UCOM_L_9CE0
UCOM_L_9C71:
  k_ldl -22
  k_jumpf UCOM_L_9CE0
  k_leal -16
  k_pushl
  k_push -18
  k_ldl -22
  k_dec
  k_pushl
  k_push -20
  k_callx UCOM_F_9B8B, 8
  k_jumpf UCOM_L_9CE0
  k_ldl -22
  k_dec
UCOM_L_9C87:
  k_stl -22
  k_jump UCOM_L_9CE0
UCOM_L_9C8B:
  k_pusharg 11
  k_ldl -20
  k_popstoreb
  k_pusharg 13
  k_ldl -22
  k_popstoreb
  k_ldli 1
  k_return
UCOM_L_9C93:
  k_ldl -22
  k_ldri 13
  k_ne
  k_jumpf UCOM_L_9CE0
  k_leal -16
  k_pushl
  k_push -18
  k_ldl -22
  k_inc
  k_pushl
  k_push -20
  k_callx UCOM_F_9B8B, 8
  k_jumpf UCOM_L_9CE0
  k_ldl -22
  k_inc
  k_jump UCOM_L_9C87
UCOM_L_9CAE:
  k_ldl -20
  k_ldri 13
  k_ne
  k_jumpf UCOM_L_9CE0
  k_leal -16
  k_pushl
  k_push -18
  k_push -22
  k_ldl -20
  k_inc
  k_pushl
  k_callx UCOM_F_9B8B, 8
  k_jumpf UCOM_L_9CE0
  k_ldl -20
  k_inc
  k_jump UCOM_L_9CDF
UCOM_L_9CC9:
  k_ldl -20
  k_jumpf UCOM_L_9CE0
  k_leal -16
  k_pushl
  k_push -18
  k_push -22
  k_ldl -20
  k_dec
  k_pushl
  k_callx UCOM_F_9B8B, 8
  k_jumpf UCOM_L_9CE0
  k_ldl -20
  k_dec
UCOM_L_9CDF:
  k_stl -20
UCOM_L_9CE0:
  k_ldln -32
  k_ldriw $0080
  k_eq
  k_jumpt UCOM_L_9CF2
  k_ldln -32
  k_ldriw $8000
  k_eq
  k_jumpf UCOM_L_9C49
UCOM_L_9CF2:
  k_call UCOM_F_9666
  k_ldln -32
  k_ldriw $0080
  k_eq
  k_jumpt UCOM_L_9C8B
  k_ldli 0
  k_return
UCOM_F_9D00:
  k_func 6
  k_ldliw $E564
  k_stl -4
  k_call RF_5C91
  k_pushi 1
  k_pushiw $C109
  k_callx RF_2FB9, 4
  k_leal -2
  k_pushl
  k_leal -1
  k_pushl
  k_callx UCOM_F_9BB6, 4
  k_stl -6
  k_ldl -6
  k_jumpf UCOM_L_9DB5
  k_call RF_5C3E
  k_pushi 1
  k_pushiw $C120
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf UCOM_L_9DB3
  k_pushi 0
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_callx $8A5B, 6
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 2
  k_derefb
  k_ldri 14
  k_mul
  k_popr
  k_add
  k_ldriw $F1AE
  k_add
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_9D75
  k_ldl -4
  k_derefb
  k_ldri 3
  k_umod
  k_pushl
  k_ldl -4
  k_inc
  k_derefb
  k_ldri 3
  k_umod
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_pushl
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_callx RF_556D, 6
UCOM_L_9D75:
  k_pushib 48
  k_ldl -4
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_pushiw $00FE
  k_ldl -4
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldl -4
  k_addli 2
  k_pushl
  k_ldlbf -1
  k_popstoreb
  k_ldl -4
  k_addli 3
  k_pushl
  k_ldlbf -2
  k_popstoreb
  k_pushi 4
  k_pushib 22
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_ldli 1
  k_jump UCOM_L_9DB4
UCOM_L_9DB3:
  k_ldli 0
UCOM_L_9DB4:
  k_stl -6
UCOM_L_9DB5:
  k_ldl -6
  k_return
UCOM_F_9DB7:
  k_func 16
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_stl -10
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_stl -12
  k_ldliw $E564
  k_stl -16
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump UCOM_L_9E14
UCOM_L_9DDE:
  k_ldl -14
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_pushl
  k_ldl -16
  k_addli 2
  k_derefb
  k_popr
  k_add
  k_stl -4
  k_ldl -14
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_pushl
  k_ldl -16
  k_addli 3
  k_derefb
  k_popr
  k_add
  k_stl -6
  k_push -6
  k_push -4
  k_callx UCOM_F_9797, 4
  k_jumpt UCOM_L_9E12
  k_push -6
  k_push -4
  k_push -12
  k_push -10
  k_callx RL_8616, 8
  k_jumpt UCOM_L_9E12
  k_ldli 1
  k_stl -2
UCOM_L_9E12:
  k_ldl -14
  k_inc
UCOM_L_9E14:
  k_stl -14
  k_ldl -14
  k_ldri 8
  k_ult
  k_jumpt UCOM_L_9DDE
  k_ldl -2
  k_jumpt UCOM_L_9E2B
  k_call RF_5C91
  k_pushiw $C14D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_9E2B:
  k_pushi 2
  k_pushi 2
  k_pushiw $C131
  k_pushi 2
  k_pushi 0
  k_callx RF_47E1, 10
  k_stl -8
  k_ldl -8
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_9E41
  k_ldli 0
  k_return
UCOM_L_9E41:
  k_ldl -8
  k_shl1
  k_ldriw $C135
  k_add
  k_deref
  k_callptr
  k_return
UCOM_F_9E4A:
  k_func 6
  k_ldlarg 11
  k_deref
  k_stl -4
  k_ldlarg 13
  k_deref
  k_stl -6
UCOM_L_9E55:
  k_pushn 23
  k_push -6
  k_push -4
  k_callx UCOM_F_9615, 6
  k_pushi 6
  k_push -2
  k_callx RF_3D91, 4
  k_call RF_3759
  k_stl -2
  k_ldl -2
  k_switchn 8
    .word $0100, UCOM_L_9EF2
    .word $0200, UCOM_L_9EFF
    .word $0400, UCOM_L_9ED7
    .word $0500, UCOM_L_9EF2
    .word $0600, UCOM_L_9EFF
    .word $0800, UCOM_L_9E8D
    .word $0900, UCOM_L_9EF2
    .word $0A00, UCOM_L_9EFF
    .word UCOM_L_9EBF
UCOM_L_9E8D:
  k_ldl -6
  k_ldrarg 17
  k_ugt
  k_jumpf UCOM_L_9EBF
  k_ldl -6
  k_dec
  k_stl -6
  k_ldl -6
  k_ldri 4
  k_eq
  k_jumpf UCOM_L_9EBF
  k_ldli 2
  k_stlba $F28C
  k_pushiw $01F7
UCOM_L_9EA3:
  k_pushi 0
  k_callx RF_530E, 4
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
UCOM_L_9EBF:
  k_ldl -2
  k_ldriw $0080
  k_eq
  k_jumpt UCOM_L_9ECF
  k_ldl -2
  k_ldriw $8000
  k_eq
  k_jumpf UCOM_L_9E55
UCOM_L_9ECF:
  k_pusharg 11
  k_ldl -4
  k_popstore
  k_pusharg 13
  k_ldl -6
  k_popstore
  k_ldl -2
  k_return
UCOM_L_9ED7:
  k_ldl -6
  k_ldrn 21
  k_ult
  k_jumpf UCOM_L_9EBF
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 9
  k_eq
  k_jumpf UCOM_L_9EBF
  k_ldli 1
  k_stlba $F28C
  k_pushi 7
  k_jump UCOM_L_9EA3
  .byte $D6, $BF, $9E
UCOM_L_9EF2:
  k_ldl -4
  k_ldrn 19
  k_ult
  k_jumpf UCOM_L_9EBF
  k_ldl -4
  k_inc
UCOM_L_9EFB:
  k_stl -4
  k_jump UCOM_L_9EBF
UCOM_L_9EFF:
  k_ldl -4
  k_ldrarg 15
  k_ugt
  k_jumpf UCOM_L_9EBF
  k_ldl -4
  k_dec
  k_jump UCOM_L_9EFB
UCOM_F_9F0A:
  k_func 8
  k_ldlarg 17
  k_stl -4
  k_ldrarg 15
  k_add
  k_stl -6
  k_ldli 0
  k_stl -2
  k_jump UCOM_L_9F3F
UCOM_L_9F19:
  k_ldlarg 17
  k_derefb
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -8
  k_ldl -8
  k_addli 2
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf UCOM_L_9F3C
  k_ldl -8
  k_addli 3
  k_derefb
  k_ldrarg 13
  k_eq
  k_jumpf UCOM_L_9F3C
  k_push -4
  k_ldlarg 17
  k_derefb
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_9F3C:
  k_ldlarg 17
  k_inc
  k_stlarg 17
UCOM_L_9F3F:
  k_ldlarg 17
  k_ldr -6
  k_ult
  k_jumpt UCOM_L_9F19
  k_ldl -2
  k_return
UCOM_F_9F47:
  k_func 10
  k_ldlarg 11
  k_ldri 1
  k_ugt
  k_jumpf UCOM_L_9FAC
  k_ldliw $C168
  k_stl -8
  k_ldlarg 13
  k_stl -2
  k_stl -6
  k_ldrarg 11
  k_add
  k_stl -4
  k_jump UCOM_L_9F74
UCOM_L_9F5F:
  k_ldl -2
  k_derefb
  k_jumpt UCOM_L_9F6A
  k_ldlarg 11
  k_dec
  k_stlarg 11
  k_jump UCOM_L_9F71
UCOM_L_9F6A:
  k_push -6
  k_ldl -2
  k_derefb
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
UCOM_L_9F71:
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_9F74:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UCOM_L_9F5F
  k_call RF_5C91
  k_ldlarg 11
  k_ldri 1
  k_ugt
  k_jumpf UCOM_L_9FA5
  k_pusharg 11
  k_pushiw $C169
  k_callx RF_3619, 4
  k_pusharg 11
  k_pushiw $C185
  k_callx RF_3C7B, 4
  k_stl -10
  k_ldl -10
  k_ldrib -1
  k_eq
  k_jumpf UCOM_L_9F9F
  k_ldliw $00FF
  k_return
UCOM_L_9F9F:
  k_ldlarg 13
  k_ldr -10
  k_add
  k_dec
  k_derefb
  k_return
UCOM_L_9FA5:
  k_pushiw $C18F
  k_callx RF_4B44, 2
UCOM_L_9FAC:
  k_ldlarg 13
  k_derefb
  k_return
UCOM_F_9FAF:
  k_func 20
  k_ldliw $E564
  k_stl -20
  k_ldl -20
  k_addli 11
  k_deref
  k_ldri 2
  k_and
  k_jumpt UCOM_L_9FCC
  k_call RF_5C91
  k_pushiw $C1BE
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_9FCC:
  k_call RF_430C
  k_stl -14
  k_ldl -20
  k_derefb
  k_stl -16
  k_ldl -20
  k_inc
  k_derefb
  k_stl -18
  k_ldl -14
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_9FE7
  k_ldlba $EAC3
  k_addlib 60
  k_jump UCOM_L_9FF5
UCOM_L_9FE7:
  k_ldlba $EAC3
  k_pushl
  k_ldl -14
  k_ldri 10
  k_mul
  k_ldriw $EAC3
  k_add
  k_derefb
  k_popr
  k_add
UCOM_L_9FF5:
  k_stl -12
  k_pushiw $00B4
  k_callx RF_3F3E, 2
  k_pushl
  k_ldl -12
  k_popr
  k_ult
  k_jumpf UCOM_L_A03B
  k_pushi 5
  k_callx RF_3F3E, 2
  k_ldr -16
  k_add
  k_addlib -2
  k_stl -16
  k_pushi 3
  k_callx RF_3F3E, 2
  k_ldr -18
  k_add
  k_dec
  k_stl -18
  k_ldl -16
  k_ldri 0
  k_lt
  k_jumpf UCOM_L_A021
  k_ldli 0
  k_jump UCOM_L_A028
UCOM_L_A021:
  k_pushib 71
  k_push -16
  k_callx RL_8962, 4
UCOM_L_A028:
  k_stl -16
  k_ldl -18
  k_ldri 0
  k_lt
  k_jumpf UCOM_L_A033
  k_ldli 0
  k_jump UCOM_L_A03A
UCOM_L_A033:
  k_pushib 35
  k_push -18
  k_callx RL_8962, 4
UCOM_L_A03A:
  k_stl -18
UCOM_L_A03B:
  k_ldl -18
  k_ldrib 18
  k_sdiv
  k_stl -2
  k_ldl -2
  k_jumpf UCOM_L_A04C
  k_ldl -18
  k_ldri 5
  k_mul
  k_addlib -90
  k_jump UCOM_L_A054
UCOM_L_A04C:
  k_ldl -18
  k_ldri 5
  k_mul
  k_pushl
  k_ldlib 90
  k_popr
  k_sub
UCOM_L_A054:
  k_stl -6
  k_ldl -16
  k_addlib 38
  k_ldrib 72
  k_smod
  k_stl -10
  k_ldl -10
  k_ldrib 36
  k_udiv
  k_stl -4
  k_ldl -4
  k_jumpf UCOM_L_A06C
  k_ldlib 72
  k_ldr -10
  k_sub
  k_jump UCOM_L_A06D
UCOM_L_A06C:
  k_ldl -10
UCOM_L_A06D:
  k_ldri 5
  k_mul
  k_stl -8
  k_call RF_5C91
  k_push -8
  k_ldl -4
  k_shl1
  k_ldriw $C1B2
  k_add
  k_deref
  k_pushl
  k_push -6
  k_ldl -2
  k_shl1
  k_ldriw $C1AE
  k_add
  k_deref
  k_pushl
  k_pushiw $C1D6
  k_callx RF_3619, 10
  k_call RF_472D
  k_ldli 1
  k_return
UCOM_F_A091:
  k_func 0
  k_ldlarg 11
  k_addli 2
  k_derefb
  k_ldri 7
  k_ult
  k_jumpf UCOM_L_A0A3
  k_ldlib 16
  k_jump UCOM_L_A0A4
UCOM_L_A0A3:
  k_ldli 2
UCOM_L_A0A4:
  k_return
UCOM_F_A0A5:
  k_func 0
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_A0B6
  k_ldli 11
  k_jump UCOM_L_A0B7
UCOM_L_A0B6:
  k_ldli 1
UCOM_L_A0B7:
  k_return
UCOM_F_A0B8:
  k_func 0
  k_call UCOM_F_A388
  k_call RF_5C91
  k_return
UCOM_F_A0C4:
  k_func 31
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stln -27
  k_pushn -27
  k_callx UCOM_F_A091, 2
  k_stln -19
  k_call UCOM_F_A0A5
  k_stln -21
  k_leal -9
  k_pushl
  k_pusharg 11
  k_callx RL_8502, 4
  k_stln -15
  k_ldln -15
  k_shl1
  k_addli 8
  k_stln -13
  k_pushn -13
  k_pushi 14
  k_pushn -21
  k_pushn -19
  k_callx RF_4D41, 8
  k_pushn -13
  k_pushi 14
  k_pushn -21
  k_pushn -19
  k_callx RF_5FFB, 8
  k_stln -29
  k_pushi 0
  k_pushi 0
  k_pushn -13
  k_pushi 14
  k_pushn -21
  k_pushn -19
  k_callx RF_4F65, 12
  k_ldln -21
  k_inc
  k_stln -13
  k_pushl
  k_ldln -19
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stln -23
  k_ldln -23
  k_shl1
  k_ldriw $C1FC
  k_add
  k_deref
  k_pushl
  k_pushiw $C2B9
  k_callx RF_3608, 4
  k_ldln -13
  k_inc
  k_stln -13
  k_pushl
  k_ldln -19
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_shl1
  k_ldriw $C204
  k_add
  k_deref
  k_pushl
  k_pushiw $C2C2
  k_callx RF_3608, 4
  k_ldln -13
  k_inc
  k_stln -13
  k_pushl
  k_ldln -19
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx RF_2AE0, 2
  k_pushl
  k_pushiw $C2C5
  k_callx RF_3608, 4
  k_ldli 2
  k_swap
  k_ldln -13
  k_add
  k_stln -13
  k_pushl
  k_ldln -19
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldln -27
  k_addli 8
  k_derefb
  k_ldri 7
  k_and
  k_shl1
  k_ldriw $C208
  k_add
  k_deref
  k_pushl
  k_pushiw $C2CF
  k_callx RF_3608, 4
  k_ldli 2
  k_swap
  k_ldln -13
  k_add
  k_stln -13
  k_pushl
  k_ldln -19
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C2DA
  k_callx RF_2FB9, 4
  k_leal -9
  k_stl -2
  k_ldrn -15
  k_add
  k_stl -4
  k_jump UCOM_L_A1F0
UCOM_L_A1BD:
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -25
  k_ldln -25
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_stln -11
  k_ldln -13
  k_inc
  k_pushl
  k_ldln -19
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_pushn -11
  k_callx RF_40DE, 2
  k_ldli 2
  k_swap
  k_ldln -13
  k_add
  k_stln -13
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_A1F0:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UCOM_L_A1BD
  k_call RF_430C
  k_stln -13
  k_ldlba $EAC3
  k_stln -17
  k_ldln -13
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_A20E
  k_ldlib 60
  k_jump UCOM_L_A217
UCOM_L_A20E:
  k_ldln -13
  k_ldri 10
  k_mul
  k_ldriw $EAC3
  k_add
  k_derefb
UCOM_L_A217:
  k_swap
  k_ldln -17
  k_add
  k_stln -17
  k_ldla $E56F
  k_ldri 1
  k_and
  k_stln -31
  k_ldln -31
  k_shl1
  k_ldriw $C228
  k_add
  k_deref
  k_callptr
  k_pushib 80
  k_callx RF_3F3E, 2
  k_addlib 100
  k_pushl
  k_ldln -17
  k_popr
  k_uge
  k_jumpf UCOM_L_A27D
  k_pushi 0
  k_pushiw $C2E0
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
  k_pushi 0
  k_pushiw $C2EF
  k_callx RF_2FB9, 4
  k_ldli 1
  k_swap
  k_ldla $F18A
  k_sub
  k_stla $F18A
  k_call RF_472D
  k_ldlarg 11
  k_ldrib 16
  k_uge
  k_jumpf UCOM_L_A294
  k_call RF_5C3E
  k_pushi 1
  k_pushiw $C2FA
  k_callx RF_2FB9, 4
  k_jump UCOM_L_A291
UCOM_L_A27D:
  k_ldln -27
  k_addli 8
  k_derefb
  k_ldri 7
  k_and
  k_shl1
  k_ldriw $C218
  k_add
  k_deref
  k_pushl
  k_pushiw $C315
  k_callx RF_3619, 4
UCOM_L_A291:
  k_call RF_472D
UCOM_L_A294:
  k_ldln -29
  k_jumpf UCOM_L_A2A9
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_A2A9:
  k_call RF_4D8B
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
  k_return
UCOM_F_A2C9:
  k_func 7
  k_ldli 0
  k_stln -3
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -5
  k_addliw $0532
  k_stln -7
  k_ldli 0
  k_stlbf -1
  k_jump UCOM_L_A31C
UCOM_L_A2E6:
  k_ldln -5
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_ldrarg 11
  k_eq
  k_jumpf UCOM_L_A30F
  k_ldln -5
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_ldrarg 13
  k_eq
  k_jumpf UCOM_L_A30F
  k_ldlarg 15
  k_ldrn -3
  k_add
  k_pushl
  k_ldlbf -1
  k_popstoreb
  k_ldln -3
  k_inc
  k_stln -3
UCOM_L_A30F:
  k_ldlbf -1
  k_inc
  k_stlbf -1
  k_ldln -5
  k_addlib 19
  k_stln -5
UCOM_L_A31C:
  k_ldln -5
  k_ldrn -7
  k_ult
  k_jumpt UCOM_L_A2E6
  k_ldln -3
  k_return
UCOM_F_A327:
  k_func 6
  k_ldlarg 17
  k_stl -2
  k_ldrarg 15
  k_add
  k_stl -4
  k_jump UCOM_L_A380
UCOM_L_A334:
  k_ldl -2
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -6
  k_ldl -6
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_ldrarg 11
  k_eq
  k_jumpf UCOM_L_A37D
  k_ldl -6
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_ldrarg 13
  k_eq
  k_jumpf UCOM_L_A37D
  k_ldlba $E564
  k_pushl
  k_ldl -6
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_popr
  k_eq
  k_jumpf UCOM_L_A37D
  k_ldlba $E565
  k_pushl
  k_ldl -6
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_popr
  k_eq
  k_jumpf UCOM_L_A37D
  k_ldl -2
  k_derefb
  k_inc
  k_return
UCOM_L_A37D:
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_A380:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UCOM_L_A334
  k_ldli 0
  k_return
UCOM_F_A388:
  k_func 6
  k_ldli 0
  k_stl -6
  k_ldlba $E566
  k_stl -2
  k_ldl -2
  k_ldri 1
  k_ugt
  k_jumpf UCOM_L_A3BE
  k_ldlba $E567
  k_stl -4
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_A3B0
  k_ldl -4
  k_ldri 0
  k_ugt
  k_jumpf UCOM_L_A3BE
  k_ldl -4
  k_ldri 5
  k_jump UCOM_L_A3B8
UCOM_L_A3B0:
  k_ldl -4
  k_ldri 8
  k_ugt
  k_jumpf UCOM_L_A3BE
  k_ldl -4
  k_ldri 14
UCOM_L_A3B8:
  k_ult
  k_jumpf UCOM_L_A3BE
  k_ldli 1
  k_stl -6
UCOM_L_A3BE:
  k_ldl -6
  k_jumpf UCOM_L_A3CB
  k_pushi 4
  k_pushib 22
  k_pushib 58
  k_callx RL_21BE, 6
UCOM_L_A3CB:
  k_ldl -6
  k_return
UCOM_F_A3CD:
  k_func 119
  k_ldli 0
  k_stl -18
  k_stl -16
  k_ldli 13
  k_stl -22
  k_stl -20
  k_ldliw $E564
  k_stl -24
  k_leal -49
  k_pushl
  k_ldl -24
  k_inc
  k_derefb
  k_pushl
  k_ldl -24
  k_derefb
  k_pushl
  k_callx RL_8560, 6
  k_stl -2
  k_leal -119
  k_pushl
  k_ldl -24
  k_inc
  k_derefb
  k_pushl
  k_ldl -24
  k_derefb
  k_pushl
  k_callx UCOM_F_A2C9, 6
  k_stl -14
  k_ldl -2
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_A412
  k_ldl -14
  k_jumpt UCOM_L_A412
  k_call RF_5C91
  k_pushiw $C32B
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_A412:
  k_ldl -24
  k_addli 2
  k_derefb
  k_stl -4
  k_ldl -24
  k_addli 3
  k_derefb
  k_stl -6
  k_ldl -24
  k_addli 11
  k_deref
  k_ldri 1
  k_and
  k_stln -28
  k_ldln -28
  k_jumpt UCOM_L_A451
  k_ldl -4
  k_jumpf UCOM_L_A42F
  k_ldl -4
  k_dec
  k_jump UCOM_L_A430
UCOM_L_A42F:
  k_ldli 0
UCOM_L_A430:
  k_stl -16
  k_ldl -6
  k_jumpf UCOM_L_A43A
  k_ldl -6
  k_dec
  k_jump UCOM_L_A43B
UCOM_L_A43A:
  k_ldli 0
UCOM_L_A43B:
  k_stl -18
  k_pushi 13
  k_ldl -4
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_stl -20
  k_pushi 13
  k_ldl -6
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_stl -22
  k_call RF_5C91
UCOM_L_A451:
  k_ldli 0
  k_stl -8
UCOM_L_A453:
  k_ldl -8
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_A461
  k_call RF_5C3E
  k_ldli 0
  k_stl -8
  k_jump UCOM_L_A46A
UCOM_L_A461:
  k_ldln -28
  k_shl1
  k_ldriw $C327
  k_add
  k_deref
  k_callptr
UCOM_L_A46A:
  k_pushiw $C340
  k_callx RF_4B44, 2
  k_ldln -28
  k_jumpf UCOM_L_A4C3
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F291
  k_stlba $F290
  k_ldlib -1
  k_stla $F295
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
  k_pushib 127
  k_pushiw $E800
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx RF_532F, 14
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_ldli 0
  k_stlba $F28F
UCOM_L_A4C3:
  k_pushi 0
  k_push -22
  k_push -20
  k_push -18
  k_push -16
  k_leal -6
  k_pushl
  k_leal -4
  k_pushl
  k_callx UCOM_F_9E4A, 14
  k_stl -12
  k_ldl -12
  k_ldriw $0080
  k_eq
  k_jumpf UCOM_L_A570
  k_leal -49
  k_pushl
  k_ldl -24
  k_inc
  k_derefb
  k_pushl
  k_ldl -24
  k_derefb
  k_pushl
  k_callx RL_8560, 6
  k_stl -2
  k_leal -49
  k_pushl
  k_push -2
  k_push -6
  k_push -4
  k_callx UCOM_F_9F0A, 8
  k_stl -2
  k_ldl -2
  k_jumpf UCOM_L_A560
  k_leal -49
  k_pushl
  k_push -2
  k_callx UCOM_F_9F47, 4
  k_stl -10
  k_ldl -10
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_A55B
  k_ldl -10
  k_jumpt UCOM_L_A529
  k_ldln -28
  k_shl1
  k_ldriw $C327
  k_add
  k_deref
  k_callptr
  k_call RF_5C3E
  k_pushiw $C34C
  k_callx RF_4B44, 2
  k_jump UCOM_L_A55B
UCOM_L_A529:
  k_ldli 1
  k_stln -26
  k_push -10
  k_callx UCOM_F_A0C4, 2
  k_jump UCOM_L_A55B
UCOM_L_A534:
  k_ldln -28
  k_shl1
  k_ldriw $C327
  k_add
  k_deref
  k_callptr
  k_pushi 0
  k_pushiw $C35D
  k_callx RF_2FB9, 4
  k_ldl -2
  k_dec
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C37B
  k_callx RF_2FB9, 4
UCOM_L_A55B:
  k_ldli 1
  k_stl -8
  k_jump UCOM_L_A578
UCOM_L_A560:
  k_leal -119
  k_pushl
  k_push -14
  k_push -6
  k_push -4
  k_callx UCOM_F_A327, 8
  k_stl -2
  k_ldl -2
  k_jumpt UCOM_L_A534
UCOM_L_A570:
  k_ldl -12
  k_ldriw $8000
  k_ne
  k_jumpt UCOM_L_A4C3
UCOM_L_A578:
  k_ldl -12
  k_ldriw $8000
  k_ne
  k_jumpt UCOM_L_A453
  k_call UCOM_F_9666
  k_ldln -28
  k_jumpf UCOM_L_A59B
  k_call RF_586A
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_A59B:
  k_ldli 0
  k_return
UCOM_F_A59D:
  k_func 16
  k_ldli 0
  k_stl -16
  k_ldli 0
  k_stl -8
  k_stl -6
  k_jump UCOM_L_A625
UCOM_L_A5AA:
  k_ldl -8
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -2
  k_ldl -8
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -4
  k_ldl -4
  k_addli 11
  k_derefb
  k_addlib 50
  k_stl -12
  k_ldlarg 11
  k_shl1
  k_pushl
  k_push -2
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_popr
  k_add
  k_ldriw $1888
  k_add
  k_pushl
  k_callx RL_8898, 2
  k_stl -14
  k_ldl -12
  k_long $25
  k_long $14
  k_ldl -14
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stl -14
  k_ldl -2
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stl -10
  k_ldl -10
  k_ldrarg 11
  k_eq
  k_jumpf UCOM_L_A618
  k_ldl -12
  k_long $25
  k_long $14
  k_ldl -4
  k_addli 12
  k_deref
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_ldri 2
  k_sdiv
  k_inc
  k_stl -14
UCOM_L_A618:
  k_ldl -14
  k_ldr -16
  k_gt
  k_jumpf UCOM_L_A622
  k_ldl -14
  k_stl -16
  k_ldl -8
  k_stl -6
UCOM_L_A622:
  k_ldl -8
  k_inc
  k_stl -8
UCOM_L_A625:
  k_ldl -8
  k_ldrib 27
  k_ult
  k_jumpt UCOM_L_A5AA
  k_ldl -6
  k_return
UCOM_F_A62E:
  k_func 25
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -21
  k_leal -9
  k_stln -11
  k_ldrn -21
  k_add
  k_stln -13
  k_ldli 0
  k_stln -15
  k_jump UCOM_L_A698
UCOM_L_A64E:
  k_ldln -11
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -2
  k_ldl -2
  k_inc
  k_stl -4
  k_ldl -2
  k_addli 6
  k_stln -23
  k_ldln -23
  k_addli 10
  k_stln -25
  k_ldli 0
  k_stln -19
  k_jump UCOM_L_A68B
UCOM_L_A66B:
  k_ldln -23
  k_deref
  k_jumpf UCOM_L_A681
  k_ldlarg 11
  k_ldrn -15
  k_add
  k_pushl
  k_ldl -4
  k_ldrn -19
  k_add
  k_derefb
  k_popstoreb
  k_ldln -15
  k_inc
  k_stln -15
UCOM_L_A681:
  k_ldln -19
  k_inc
  k_stln -19
  k_ldln -23
  k_addli 2
  k_stln -23
UCOM_L_A68B:
  k_ldln -23
  k_ldrn -25
  k_ult
  k_jumpt UCOM_L_A66B
  k_ldln -11
  k_inc
  k_stln -11
UCOM_L_A698:
  k_ldln -11
  k_ldrn -13
  k_ult
  k_jumpt UCOM_L_A64E
  k_ldln -15
  k_return
UCOM_F_A6A3:
  k_func 8
  k_ldliw $E970
  k_stl -8
  k_ldliw $E44B
  k_stl -4
  k_addliw $008C
  k_stl -6
  k_jump UCOM_L_A6D7
UCOM_L_A6B7:
  k_ldl -4
  k_addli 6
  k_derefb
  k_stl -2
  k_ldl -8
  k_inc
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf UCOM_L_A6D1
  k_ldl -2
  k_ldri 2
  k_and
  k_jumpt UCOM_L_A6D1
  k_ldl -2
  k_ldri 1
  k_and
  k_jumpf UCOM_L_A6D1
  k_ldli 1
  k_return
UCOM_L_A6D1:
  k_ldl -8
  k_addli 2
  k_stl -8
  k_ldl -4
  k_addli 7
  k_stl -4
UCOM_L_A6D7:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt UCOM_L_A6B7
  k_ldli 0
  k_return
UCOM_F_A6DF:
  k_func 4
  k_ldli 0
  k_stl -2
UCOM_L_A6E6:
  k_pushib 27
  k_callx RF_3F3E, 2
  k_stl -4
  k_push -4
  k_callx UCOM_F_A6A3, 2
  k_jumpf UCOM_L_A6F7
  k_ldl -4
  k_return
UCOM_L_A6F7:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 30
  k_ult
  k_jumpt UCOM_L_A6E6
  k_ldliw $00FF
  k_return
UCOM_F_A705:
  k_func 31
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_ldrib 39
  k_ugt
  k_jumpf UCOM_L_A724
  k_call RF_5C3E
  k_pushiw $C380
  k_jump UCOM_L_A7F4
UCOM_L_A724:
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_ult
  k_jumpf UCOM_L_A7B9
  k_leal -25
  k_pushl
  k_callx UCOM_F_A62E, 2
  k_stln -27
  k_ldln -27
  k_jumpf UCOM_L_A7B0
  k_leal -25
  k_pushl
  k_pushn -27
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_derefb
  k_stln -29
  k_pushn -29
  k_callx UCOM_F_A59D, 2
  k_stln -31
  k_call RF_5C3E
  k_pushi 0
  k_pushiw $C39F
  k_callx RF_2FB9, 4
  k_ldln -29
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldln -29
  k_ldri 4
  k_eq
  k_jumpt UCOM_L_A785
  k_ldln -29
  k_ldri 6
  k_eq
  k_jumpt UCOM_L_A785
  k_ldln -29
  k_ldrib 21
  k_eq
  k_jumpf UCOM_L_A78C
UCOM_L_A785:
  k_pushi 0
  k_pushiw $C3A1
  k_jump UCOM_L_A790
UCOM_L_A78C:
  k_pushi 0
  k_pushiw $C3A6
UCOM_L_A790:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw $C3AA
  k_callx RF_2FB9, 4
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushiw $C3BB
  k_jump UCOM_L_A7F4
UCOM_L_A7B0:
  k_call RF_5C3E
  k_pushiw $C3BC
  k_jump UCOM_L_A7F4
UCOM_L_A7B9:
  k_call UCOM_F_A6DF
  k_stln -31
  k_ldln -31
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_A7EE
  k_call RF_5C3E
  k_pushi 0
  k_pushiw $C3D6
  k_callx RF_2FB9, 4
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C3E0
  k_callx RF_2FB9, 4
  k_pushiw $C3FD
  k_jump UCOM_L_A7F4
UCOM_L_A7EE:
  k_call RF_5C3E
  k_pushiw $C3FE
UCOM_L_A7F4:
  k_callx RF_4B44, 2
  k_return
UCOM_F_A7F9:
  k_func 2
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -2
  k_addli 5
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -2
  k_addli 7
  k_pushl
  k_ldli 0
  k_popstore
  k_return
UCOM_F_A818:
  k_func 0
  k_ldlba $EA8E
  k_ldri 15
  k_uge
  k_jumpf UCOM_L_A83F
  k_pusharg 11
  k_callx UCOM_F_A7F9, 2
  k_call RF_5C3E
  k_pushi 0
  k_pushiw $C411
  k_callx RF_2FB9, 4
  k_pushiw $C44B
  k_callx RF_4B44, 2
  k_jump UCOM_L_A847
UCOM_L_A83F:
  k_ldlarg 11
  k_stlba $F198
  k_ldli 1
  k_stlba $F197
UCOM_L_A847:
  k_return
UCOM_F_A848:
  k_func 45
  k_ldliw $E564
  k_stln -43
  k_call RF_5C91
  k_leal -21
  k_pushl
  k_ldln -43
  k_inc
  k_derefb
  k_pushl
  k_ldln -43
  k_derefb
  k_pushl
  k_callx RL_8560, 6
  k_stln -23
  k_ldln -23
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_A878
  k_pushiw $C44C
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_A878:
  k_ldli 0
  k_stln -29
  k_ldln -43
  k_addli 2
  k_derefb
  k_stln -25
  k_ldln -43
  k_addli 3
  k_derefb
  k_stln -27
  k_ldln -25
  k_jumpf UCOM_L_A892
  k_ldln -25
  k_dec
  k_jump UCOM_L_A893
UCOM_L_A892:
  k_ldli 0
UCOM_L_A893:
  k_stln -35
  k_ldln -27
  k_jumpf UCOM_L_A8A0
  k_ldln -27
  k_dec
  k_jump UCOM_L_A8A1
UCOM_L_A8A0:
  k_ldli 0
UCOM_L_A8A1:
  k_stln -37
  k_pushi 13
  k_ldln -25
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_stln -39
  k_pushi 13
  k_ldln -27
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_stln -41
UCOM_L_A8B9:
  k_ldln -29
  k_jumpf UCOM_L_A8C7
  k_call RF_5C91
  k_ldli 0
  k_stln -29
  k_jump UCOM_L_A8CA
UCOM_L_A8C7:
  k_call RF_5C3E
UCOM_L_A8CA:
  k_pushiw $C468
  k_callx RF_4B44, 2
UCOM_L_A8D1:
  k_pushi 0
  k_pushn -41
  k_pushn -39
  k_pushn -37
  k_pushn -35
  k_leal -27
  k_pushl
  k_leal -25
  k_pushl
  k_callx UCOM_F_9E4A, 14
  k_stln -33
  k_ldln -33
  k_ldriw $0080
  k_eq
  k_jumpf UCOM_L_A968
  k_leal -21
  k_pushl
  k_ldln -43
  k_inc
  k_derefb
  k_pushl
  k_ldln -43
  k_derefb
  k_pushl
  k_callx RL_8560, 6
  k_stln -23
  k_leal -21
  k_pushl
  k_pushn -23
  k_pushn -27
  k_pushn -25
  k_callx UCOM_F_9F0A, 8
  k_stln -23
  k_ldln -23
  k_jumpf UCOM_L_A968
  k_leal -21
  k_pushl
  k_pushn -23
  k_callx UCOM_F_9F47, 4
  k_stln -31
  k_ldln -31
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_A971
  k_ldln -31
  k_jumpt UCOM_L_A940
  k_call RF_5C3E
  k_pushiw $C475
  k_callx RF_4B44, 2
  k_jump UCOM_L_A971
UCOM_L_A940:
  k_ldln -31
  k_ldri 15
  k_ugt
  k_jumpf UCOM_L_A952
  k_pushn -31
  k_callx UCOM_F_A818, 2
  k_call UCOM_F_9666
  k_ldli 1
  k_return
UCOM_L_A952:
  k_pushi 0
  k_ldln -31
  k_addlib 20
  k_pushl
  k_callx RF_5C5A, 4
  k_pushn -31
  k_callx UCOM_F_A705, 2
  k_ldli 1
  k_stln -29
  k_jump UCOM_L_A971
UCOM_L_A968:
  k_ldln -33
  k_ldriw $8000
  k_ne
  k_jumpt UCOM_L_A8D1
UCOM_L_A971:
  k_ldln -33
  k_ldriw $8000
  k_ne
  k_jumpt UCOM_L_A8B9
  k_call UCOM_F_9666
  k_ldli 0
  k_return
UCOM_F_A97F:
  k_func 2
  k_pushi 3
  k_pushi 3
  k_pushiw $C486
  k_pushi 2
  k_pushi 0
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_A99A
  k_ldli 0
  k_return
UCOM_L_A99A:
  k_ldl -2
  k_shl1
  k_ldriw $C48C
  k_add
  k_deref
  k_callptr
  k_return
UCOM_F_A9A3:
  k_func 8
  k_ldlarg 11
  k_stl -2
  k_ldrarg 13
  k_add
  k_stl -4
  k_ldli 0
  k_stlarg 13
  k_jump UCOM_L_A9ED
UCOM_L_A9B2:
  k_ldl -2
  k_derefb
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -8
  k_ldl -2
  k_derefb
  k_jumpf UCOM_L_A9EA
  k_ldl -8
  k_addli 2
  k_derefb
  k_stl -6
  k_ldrarg 15
  k_uge
  k_jumpf UCOM_L_A9EA
  k_ldl -6
  k_ldrn 19
  k_ule
  k_jumpf UCOM_L_A9EA
  k_ldl -8
  k_addli 3
  k_derefb
  k_stl -6
  k_ldrarg 17
  k_uge
  k_jumpf UCOM_L_A9EA
  k_ldl -6
  k_ldrn 21
  k_ule
  k_jumpf UCOM_L_A9EA
  k_pusharg 11
  k_ldl -2
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldlarg 13
  k_inc
  k_stlarg 13
UCOM_L_A9EA:
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_A9ED:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UCOM_L_A9B2
  k_ldlarg 13
  k_return
UCOM_F_A9F5:
  k_func 47
  k_ldliw $E564
  k_stln -47
  k_ldln -47
  k_addli 2
  k_derefb
  k_stln -25
  k_ldln -47
  k_addli 3
  k_derefb
  k_stln -27
  k_ldln -25
  k_jumpf UCOM_L_AA16
  k_ldln -25
  k_dec
  k_jump UCOM_L_AA17
UCOM_L_AA16:
  k_ldli 0
UCOM_L_AA17:
  k_stln -35
  k_ldln -27
  k_jumpf UCOM_L_AA24
  k_ldln -27
  k_dec
  k_jump UCOM_L_AA25
UCOM_L_AA24:
  k_ldli 0
UCOM_L_AA25:
  k_stln -37
  k_pushi 13
  k_ldln -25
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_stln -39
  k_pushi 13
  k_ldln -27
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_stln -41
  k_call RF_5C91
  k_ldlba $EA8E
  k_ldri 15
  k_uge
  k_jumpf UCOM_L_AA51
  k_pushiw $C4F0
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_AA51:
  k_leal -21
  k_pushl
  k_ldln -47
  k_inc
  k_derefb
  k_pushl
  k_ldln -47
  k_derefb
  k_pushl
  k_callx RL_8560, 6
  k_stln -23
  k_pushn -41
  k_pushn -39
  k_pushn -37
  k_pushn -35
  k_pushn -23
  k_leal -21
  k_pushl
  k_callx UCOM_F_A9A3, 12
  k_stln -23
  k_ldln -23
  k_jumpt UCOM_L_AA86
  k_pushiw $C51B
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_AA86:
  k_ldli 0
  k_stln -29
UCOM_L_AA89:
  k_call RF_5C3E
  k_pushiw $C536
  k_callx RF_4B44, 2
  k_pushi 1
  k_pushn -41
  k_pushn -39
  k_pushn -37
  k_pushn -35
  k_leal -27
  k_pushl
  k_leal -25
  k_pushl
  k_callx UCOM_F_9E4A, 14
  k_stln -33
  k_ldln -33
  k_ldriw $0080
  k_eq
  k_jumpf UCOM_L_AB58
  k_leal -21
  k_pushl
  k_ldln -47
  k_inc
  k_derefb
  k_pushl
  k_ldln -47
  k_derefb
  k_pushl
  k_callx RL_8560, 6
  k_stln -23
  k_pushn -41
  k_pushn -39
  k_pushn -37
  k_pushn -35
  k_pushn -23
  k_leal -21
  k_pushl
  k_callx UCOM_F_A9A3, 12
  k_stln -23
  k_leal -21
  k_pushl
  k_pushn -23
  k_pushn -27
  k_pushn -25
  k_callx UCOM_F_9F0A, 8
  k_stln -23
  k_ldln -23
  k_jumpf UCOM_L_AB58
  k_leal -21
  k_pushl
  k_pushn -23
  k_callx UCOM_F_9F47, 4
  k_stln -31
  k_ldln -31
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_AB58
  k_call RF_5C3E
  k_ldla $EA9B
  k_ldrib -9
  k_and
  k_ldri 1
  k_shr
  k_ldri 15
  k_and
  k_stln -45
  k_ldln -31
  k_dec
  k_ldri 5
  k_udiv
  k_stln -43
  k_pushi 1
  k_pushiw $C543
  k_callx RF_2FB9, 4
  k_ldln -43
  k_ldri 3
  k_eq
  k_jumpf UCOM_L_AB30
  k_pushi 1
  k_pushiw $C54F
  k_jump UCOM_L_AB43
UCOM_L_AB30:
  k_ldln -31
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_stln -43
  k_pushi 1
  k_ldln -43
  k_shl1
  k_ldriw $C4B4
  k_add
  k_deref
  k_pushl
UCOM_L_AB43:
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf UCOM_L_AB61
  k_ldln -31
  k_inc
  k_stlba $F197
  k_call UCOM_F_9666
  k_ldli 1
  k_return
UCOM_L_AB58:
  k_ldln -33
  k_ldriw $8000
  k_ne
  k_jumpt UCOM_L_AA89
UCOM_L_AB61:
  k_ldln -33
  k_ldriw $8000
  k_ne
  k_jumpt UCOM_L_AA89
  k_call UCOM_F_9666
  k_ldli 0
  k_return
UCOM_F_AB6F:
  k_func 0
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_AB80
  k_ldli 11
  k_jump UCOM_L_AB81
UCOM_L_AB80:
  k_ldli 7
UCOM_L_AB81:
  k_return
UCOM_F_AB82:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 2
  k_derefb
  k_ldri 7
  k_ult
  k_jumpf UCOM_L_AB98
  k_ldlib 20
  k_jump UCOM_L_AB99
UCOM_L_AB98:
  k_ldli 2
UCOM_L_AB99:
  k_return
UCOM_F_AB9A:
  k_func 0
  k_call RF_4D8B
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
  k_return
UCOM_F_ABBF:
  k_func 10
  k_ldlarg 15
  k_ldri 2
  k_smod
  k_pushl
  k_ldlarg 15
  k_ldri 2
  k_sdiv
  k_popr
  k_add
  k_stl -2
  k_ldl -2
  k_shl1
  k_addli 2
  k_stl -6
  k_push -6
  k_pushib 26
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4D41, 8
  k_push -6
  k_pushib 26
  k_pusharg 13
  k_pusharg 11
  k_callx RF_5FFB, 8
  k_stl -10
  k_pushi 0
  k_pushi 0
  k_push -6
  k_pushib 26
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4F65, 12
  k_ldli 0
  k_jump UCOM_L_AC0D
UCOM_L_ABF4:
  k_ldl -4
  k_shl1
  k_ldrarg 13
  k_add
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -4
  k_inc
UCOM_L_AC0D:
  k_stl -4
  k_ldl -4
  k_ldr -2
  k_ult
  k_jumpt UCOM_L_ABF4
  k_jump UCOM_L_AC33
UCOM_L_AC17:
  k_ldl -4
  k_ldr -2
  k_sub
  k_shl1
  k_ldrarg 13
  k_add
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_addli 14
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -4
  k_shl1
  k_ldrarg 17
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -4
  k_inc
  k_stl -4
UCOM_L_AC33:
  k_ldl -4
  k_ldrarg 15
  k_ult
  k_jumpt UCOM_L_AC17
  k_pushi 1
  k_push -2
  k_pushi 2
  k_pushi 12
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_pusharg 15
  k_pushiw $C55E
  k_callx RF_3787, 16
  k_stl -8
  k_call UCOM_F_AB9A
  k_ldl -10
  k_jumpf UCOM_L_AC63
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_AC63:
  k_ldl -8
  k_ldrib -1
  k_eq
  k_jumpf UCOM_L_AC70
  k_ldliw $00FF
  k_jump UCOM_L_AC72
UCOM_L_AC70:
  k_ldl -8
  k_dec
UCOM_L_AC72:
  k_return
UCOM_F_AC73:
  k_func 26
  k_ldli 0
  k_stl -24
  k_ldliw $E99C
  k_jump UCOM_L_ACA1
UCOM_L_AC80:
  k_ldl -2
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_ACA8
  k_leal -22
  k_pushl
  k_ldl -24
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_popstore
  k_ldl -24
  k_inc
  k_stl -24
  k_ldl -2
  k_inc
UCOM_L_ACA1:
  k_stl -2
  k_ldl -24
  k_ldri 10
  k_ult
  k_jumpt UCOM_L_AC80
UCOM_L_ACA8:
  k_call RF_5C91
  k_ldl -24
  k_jumpt UCOM_L_ACBA
  k_pushiw $C55F
  k_callx RF_4B44, 2
  k_ldliw $00FF
  k_return
UCOM_L_ACBA:
  k_pushi 1
  k_pushiw $C57D
  k_callx RF_2FB9, 4
  k_leal -22
  k_pushl
  k_push -24
  k_call UCOM_F_AB6F
  k_pushl
  k_pushi 2
  k_callx UCOM_F_ABBF, 8
  k_stln -26
  k_ldln -26
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_ACDE
  k_ldln -26
  k_return
UCOM_L_ACDE:
  k_ldln -26
  k_ldriw $E99C
  k_add
  k_derefb
  k_return
UCOM_F_ACE6:
  k_func 6
  k_ldlarg 15
  k_shl1
  k_addli 2
  k_stl -4
  k_push -4
  k_pushi 10
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4D41, 8
  k_pushi 0
  k_pushi 0
  k_push -4
  k_pushi 10
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4F65, 12
  k_ldli 0
  k_jump UCOM_L_AD1E
UCOM_L_AD05:
  k_ldl -2
  k_shl1
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
UCOM_L_AD1E:
  k_stl -2
  k_ldl -2
  k_ldrarg 15
  k_ult
  k_jumpt UCOM_L_AD05
  k_pushi 1
  k_pusharg 15
  k_pushi 2
  k_pushi 0
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_pusharg 15
  k_pushiw $C589
  k_callx RF_3787, 16
  k_stl -6
  k_call UCOM_F_AB9A
  k_ldl -6
  k_ldrib -1
  k_eq
  k_jumpf UCOM_L_AD48
  k_ldliw $00FF
  k_jump UCOM_L_AD4A
UCOM_L_AD48:
  k_ldl -6
  k_dec
UCOM_L_AD4A:
  k_return
UCOM_F_AD4B:
  k_func 0
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_AD5C
  k_ldli 3
  k_jump UCOM_L_AD5D
UCOM_L_AD5C:
  k_ldli 7
UCOM_L_AD5D:
  k_return
UCOM_F_AD5E:
  k_func 8
  k_call UCOM_F_AD4B
  k_stl -6
UCOM_L_AD67:
  k_pushi 2
  k_pushi 2
  k_pushiw $C58A
  k_pushi 2
  k_pushi 0
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_AE1C
  k_ldl -2
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_ADDC
UCOM_L_AD81:
  k_call UCOM_F_AC73
  k_stl -4
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_ADCD
  k_pushib 20
  k_pushib 30
  k_push -6
  k_pushi 1
  k_callx RF_5FFB, 8
  k_stl -8
  k_pushi 0
  k_pushib 20
  k_pushib 30
  k_push -6
  k_pushi 1
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_push -4
  k_push -6
  k_pushi 1
  k_callx RF_2682, 6
  k_call RF_5F56
  k_ldl -8
  k_jumpf UCOM_L_ADCD
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_ADCD:
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpt UCOM_L_AD81
  k_ldli 0
  k_stlba $F28F
  k_jump UCOM_L_AE1C
UCOM_L_ADDC:
  k_pushib 20
  k_pushib 30
  k_push -6
  k_pushi 1
  k_callx RF_5FFB, 8
  k_stl -8
  k_pushi 0
  k_pushib 20
  k_pushib 30
  k_push -6
  k_pushi 1
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_push -2
  k_push -6
  k_pushi 1
  k_callx RF_2682, 6
  k_call RF_5F56
  k_ldl -8
  k_jumpf UCOM_L_AE1C
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_AE1C:
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpt UCOM_L_AD67
  k_ldli 0
  k_return
UCOM_F_AE26:
  k_func 27
  k_leal -19
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -27
  k_leal -12
  k_stl -14
  k_leal -19
  k_stln -21
  k_ldrn -27
  k_add
  k_stln -23
  k_jump UCOM_L_AE6B
UCOM_L_AE47:
  k_ldln -21
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_pushn -21
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_popstoreb
  k_push -14
  k_ldln -21
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_popstore
  k_ldl -14
  k_addli 2
  k_stl -14
  k_ldln -21
  k_inc
  k_stln -21
UCOM_L_AE6B:
  k_ldln -21
  k_ldrn -23
  k_ult
  k_jumpt UCOM_L_AE47
  k_call RF_5C91
  k_pushi 1
  k_pushiw $C59C
  k_callx RF_2FB9, 4
  k_leal -12
  k_pushl
  k_pushn -27
  k_call UCOM_F_AB6F
  k_pushl
  k_call UCOM_F_AB82
  k_pushl
  k_callx UCOM_F_ACE6, 8
  k_stln -25
  k_ldln -25
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_AEA7
  k_leal -19
  k_pushl
  k_ldln -25
  k_popr
  k_add
  k_derefb
  k_jump UCOM_L_AEAA
UCOM_L_AEA7:
  k_ldliw $00FF
UCOM_L_AEAA:
  k_return
UCOM_F_AEAB:
  k_func 8
  k_call UCOM_F_AD4B
  k_stl -4
UCOM_L_AEB4:
  k_call UCOM_F_AE26
  k_stl -6
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_AEFF
  k_pushib 20
  k_pushib 30
  k_push -4
  k_pushi 1
  k_callx RF_5FFB, 8
  k_stl -8
  k_pushi 0
  k_pushib 20
  k_pushib 30
  k_push -4
  k_pushi 1
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_push -6
  k_push -4
  k_pushi 1
  k_callx RF_2401, 6
  k_call RF_5F56
  k_ldl -8
  k_jumpf UCOM_L_AEFF
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_AEFF:
  k_ldl -6
  k_ldriw $00FF
  k_ne
  k_jumpt UCOM_L_AEB4
  k_ldli 0
  k_stlba $F28F
  k_ldli 0
  k_return
UCOM_F_AF0D:
  k_func 12
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -12
  k_ldli 0
  k_stl -2
  k_ldl -12
  k_addli 6
  k_stl -8
  k_addli 10
  k_stl -10
  k_jump UCOM_L_AF39
UCOM_L_AF2E:
  k_ldl -8
  k_deref
  k_jumpf UCOM_L_AF36
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_AF36:
  k_ldl -8
  k_addli 2
  k_stl -8
UCOM_L_AF39:
  k_ldl -8
  k_ldr -10
  k_ult
  k_jumpt UCOM_L_AF2E
  k_ldl -2
  k_jumpt UCOM_L_AF50
  k_call RF_5C91
  k_pushiw $C5A8
  k_callx RF_4B44, 2
  k_jump UCOM_L_AFDA
UCOM_L_AF50:
  k_ldl -2
  k_shl1
  k_addli 2
  k_stl -4
  k_push -4
  k_pushi 15
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4D41, 8
  k_pushi 0
  k_pushi 2
  k_push -4
  k_pushi 15
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4F65, 12
  k_ldlarg 13
  k_inc
  k_stl -6
  k_ldli 0
  k_stl -2
  k_ldl -12
  k_addli 6
  k_jump UCOM_L_AFB1
UCOM_L_AF70:
  k_ldl -8
  k_deref
  k_jumpf UCOM_L_AFAC
  k_push -6
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -12
  k_ldr -2
  k_add
  k_inc
  k_derefb
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_push -6
  k_ldlarg 11
  k_addli 10
  k_pushl
  k_callx RF_2F8F, 4
  k_ldl -2
  k_shl1
  k_ldr -12
  k_add
  k_addli 6
  k_deref
  k_pushl
  k_pushiw $C5BE
  k_callx RF_3608, 4
  k_ldli 2
  k_swap
  k_ldl -6
  k_add
  k_stl -6
UCOM_L_AFAC:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -8
  k_addli 2
UCOM_L_AFB1:
  k_stl -8
  k_ldl -8
  k_ldr -10
  k_ult
  k_jumpt UCOM_L_AF70
  k_call RF_5C91
  k_pushi 0
  k_pushiw $C5C2
  k_callx RF_2FB9, 4
  k_pusharg 15
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call UCOM_F_AB9A
UCOM_L_AFDA:
  k_return
UCOM_F_AFDB:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 2
  k_derefb
  k_ldri 7
  k_ult
  k_jumpf UCOM_L_AFF1
  k_ldlib 16
  k_jump UCOM_L_AFF2
UCOM_L_AFF1:
  k_ldli 1
UCOM_L_AFF2:
  k_return
UCOM_F_AFF3:
  k_func 2
UCOM_L_AFF8:
  k_call UCOM_F_AE26
  k_stl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_B010
  k_push -2
  k_call UCOM_F_AB6F
  k_pushl
  k_call UCOM_F_AFDB
  k_pushl
  k_callx UCOM_F_AF0D, 6
UCOM_L_B010:
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpt UCOM_L_AFF8
  k_ldli 0
  k_return
UCOM_F_B01A:
  k_func 8
  k_ldliw $E56F
  k_stl -6
  k_ldli 0
  k_stl -2
  k_stl -4
  k_jump UCOM_L_B049
UCOM_L_B029:
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
  k_jumpf UCOM_L_B046
  k_pusharg 11
  k_ldl -2
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -4
  k_inc
  k_stl -4
UCOM_L_B046:
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_B049:
  k_ldl -2
  k_ldrib 32
  k_ult
  k_jumpt UCOM_L_B029
  k_ldl -4
  k_return
UCOM_F_B052:
  k_func 0
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_B063
  k_ldli 11
  k_jump UCOM_L_B064
UCOM_L_B063:
  k_ldli 1
UCOM_L_B064:
  k_return
UCOM_F_B065:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 2
  k_derefb
  k_ldri 7
  k_ult
  k_jumpf UCOM_L_B07B
  k_ldlib 16
  k_jump UCOM_L_B07C
UCOM_L_B07B:
  k_ldli 0
UCOM_L_B07C:
  k_return
UCOM_F_B07D:
  k_func 50
  k_call RF_5C91
  k_leal -50
  k_pushl
  k_callx UCOM_F_B01A, 2
  k_stl -10
  k_jumpt UCOM_L_B09A
  k_pushiw $C5DF
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_B09A:
  k_ldl -10
  k_dec
  k_ldri 3
  k_shr
  k_stl -8
  k_pushi 1
  k_pushiw $C5F7
  k_callx RF_2FB9, 4
  k_ldl -8
  k_jumpf UCOM_L_B0B3
  k_pushi 1
  k_pushiw $C60D
  k_callx RF_2FB9, 4
UCOM_L_B0B3:
  k_pushi 1
  k_pushiw $C615
  k_callx RF_2FB9, 4
  k_call UCOM_F_B065
  k_stl -14
  k_call UCOM_F_B052
  k_stl -16
  k_ldl -8
  k_jumpf UCOM_L_B0CC
  k_ldlib 18
  k_jump UCOM_L_B0D1
UCOM_L_B0CC:
  k_ldl -10
  k_ldri 9
  k_umod
  k_shl1
  k_addli 2
UCOM_L_B0D1:
  k_stl -12
  k_push -12
  k_pushib 16
  k_push -16
  k_push -14
  k_callx RF_4D41, 8
  k_pushi 0
  k_pushi 2
  k_push -12
  k_pushib 16
  k_push -16
  k_push -14
  k_callx RF_4F65, 12
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -16
  k_inc
  k_stl -16
  k_ldli 2
  k_swap
  k_ldl -12
  k_sub
  k_stl -12
  k_ldli 0
  k_stl -6
  k_ldli 0
  k_stl -18
UCOM_L_B0F5:
  k_ldli 0
  k_stl -2
UCOM_L_B0F7:
  k_ldl -6
  k_ldri 3
  k_shl
  k_ldr -2
  k_add
  k_stl -4
  k_ldl -4
  k_ldr -10
  k_ult
  k_jumpf UCOM_L_B128
  k_ldl -2
  k_shl1
  k_ldr -16
  k_add
  k_pushl
  k_push -14
  k_callx RF_2F8F, 4
  k_leal -50
  k_pushl
  k_ldl -4
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt UCOM_L_B0F7
UCOM_L_B128:
  k_pushi 8
  k_pushib 16
  k_callx RL_21BE, 4
UCOM_L_B12F:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -18
  k_ldl -8
  k_jumpf UCOM_L_B15A
  k_ldl -18
  k_ldriw $0080
  k_eq
  k_jumpf UCOM_L_B15A
  k_pushi 0
  k_push -12
  k_pushi 14
  k_push -16
  k_push -14
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldr -8
  k_ugt
  k_jumpf UCOM_L_B162
  k_ldli 0
  k_stl -6
  k_jump UCOM_L_B162
UCOM_L_B15A:
  k_ldl -18
  k_ldriw $8000
  k_eq
  k_jumpf UCOM_L_B12F
UCOM_L_B162:
  k_ldl -18
  k_ldriw $8000
  k_ne
  k_jumpt UCOM_L_B0F5
  k_call UCOM_F_AB9A
  k_ldli 0
  k_return
UCOM_F_B16F:
  k_func 6
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 2
  k_derefb
  k_ldri 1
  k_and
  k_jumpf UCOM_L_B184
  k_ldli 4
  k_jump UCOM_L_B185
UCOM_L_B184:
  k_ldli 0
UCOM_L_B185:
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_ldri 1
  k_shr
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 3
  k_umod
  k_ldri 7
  k_mul
  k_popr
  k_add
  k_addli 5
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_stl -4
  k_ldlba $F28C
  k_shl1
  k_ldriw $8EC0
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_addli 3
  k_derefb
  k_ldri 1
  k_and
  k_jumpf UCOM_L_B1B0
  k_ldli 0
  k_jump UCOM_L_B1B1
UCOM_L_B1B0:
  k_ldli 4
UCOM_L_B1B1:
  k_pushl
  k_ldl -2
  k_addli 3
  k_derefb
  k_ldri 1
  k_shr
  k_pushl
  k_ldl -2
  k_inc
  k_derefb
  k_ldri 3
  k_umod
  k_ldri 7
  k_mul
  k_popr
  k_add
  k_addli 4
  k_ldri 3
  k_shl
  k_popr
  k_sub
  k_popr
  k_add
  k_stl -6
  k_pushib 126
  k_pushi 0
  k_pushiw $C61C
  k_pushi 2
  k_pushi 1
  k_push -6
  k_push -4
  k_pushi 14
  k_pushi 9
  k_callx RL_21BE, 18
  k_return
UCOM_F_B1DA:
  k_func 4
  k_ldlba $EF5F
  k_ldri 1
  k_and
  k_jumpf UCOM_L_B1EB
  k_ldli 2
  k_jump UCOM_L_B1ED
UCOM_L_B1EB:
  k_ldlib -2
UCOM_L_B1ED:
  k_pushl
  k_ldlba $EF5F
  k_ldri 1
  k_shr
  k_pushl
  k_ldlba $EF5D
  k_ldri 3
  k_umod
  k_ldri 7
  k_mul
  k_popr
  k_add
  k_addli 5
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_stl -2
  k_ldlba $F28C
  k_shl1
  k_ldriw $8EC0
  k_add
  k_deref
  k_pushl
  k_ldlba $EF60
  k_ldri 1
  k_and
  k_jumpf UCOM_L_B219
  k_ldli 1
  k_jump UCOM_L_B21B
UCOM_L_B219:
  k_ldlib -3
UCOM_L_B21B:
  k_pushl
  k_ldlba $EF60
  k_ldri 1
  k_shr
  k_pushl
  k_ldlba $EF5E
  k_ldri 3
  k_umod
  k_ldri 7
  k_mul
  k_popr
  k_add
  k_addli 4
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_stl -4
  k_pushi 0
  k_pusha $C620
  k_push -4
  k_push -2
  k_pushi 14
  k_pushib 19
  k_callx RL_21BE, 12
  k_return
UCOM_F_B241:
  k_func 0
  k_pushi 1
  k_callx UCOM_F_B4AC, 2
  k_call UCOM_F_B16F
  k_call RF_2F18
  k_pushi 8
  k_callx RL_21BE, 2
  k_pushi 0
  k_pushi 0
  k_pushi 1
  k_pushi 4
  k_callx RL_21BE, 8
  k_return
UCOM_F_B25F:
  k_func 0
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx RL_21BE, 8
  k_ldli 2
  k_stlba $F28F
  k_return
UCOM_F_B273:
  k_func 4
  k_ldla $E56F
  k_ldri 4
  k_and
  k_jumpt UCOM_L_B28C
  k_call RF_5C91
  k_pushiw $C622
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_B28C:
  k_call RF_5F56
  k_pushib 23
  k_pushib 23
  k_pushi 3
  k_pushi 4
  k_callx RF_5FFB, 8
  k_stl -4
  k_call UCOM_F_B241
  k_call RF_5F56
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
  k_ldl -4
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_B2C6
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_B2C6:
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_5BBB, 2
  k_ldli 0
  k_return
UCOM_F_B2D2:
  k_func 10
  k_ldlba $EF5D
  k_ldri 3
  k_udiv
  k_stl -2
  k_ldlba $EF5E
  k_ldri 3
  k_udiv
  k_stl -4
  k_ldlba $F165
  k_ldr -2
  k_ne
  k_jumpt UCOM_L_B2F7
  k_ldlba $F166
  k_ldr -4
  k_ne
  k_jumpt UCOM_L_B2F7
  k_ldli 0
  k_jump UCOM_L_B2F8
UCOM_L_B2F7:
  k_ldli 1
UCOM_L_B2F8:
  k_stl -10
  k_ldl -10
  k_jumpf UCOM_L_B313
  k_ldlba $F165
  k_stl -6
  k_ldlba $F166
  k_stl -8
  k_push -4
  k_push -2
  k_callx RF_54D9, 4
  k_ldl -2
  k_stlba $F165
  k_ldl -4
  k_stlba $F166
UCOM_L_B313:
  k_pushi 0
  k_callx UCOM_F_B4AC, 2
  k_call UCOM_F_B1DA
  k_call RF_2F18
  k_pushi 4
  k_pushi 14
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldl -10
  k_jumpf UCOM_L_B338
  k_push -8
  k_push -6
  k_callx RF_54D9, 4
  k_ldl -6
  k_stlba $F165
  k_ldl -8
  k_stlba $F166
UCOM_L_B338:
  k_return
UCOM_F_B339:
  k_func 2
  k_call RF_5F56
  k_pushib 23
  k_pushib 23
  k_pushi 3
  k_pushi 4
  k_callx RF_5FFB, 8
  k_stl -2
  k_call UCOM_F_B2D2
  k_call RF_5F56
  k_ldl -2
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_B368
  k_ldlba $E56C
  k_pushl
  k_ldlba $E567
  k_pushl
  k_ldlba $E566
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_B368:
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_5BBB, 2
  k_ldli 0
  k_return
UCOM_F_B374:
  k_func 0
  k_pushi 0
  k_pushi 4
  k_pushib 30
  k_pushib 27
  k_pushi 2
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushib 27
  k_pushi 2
  k_callx RF_2F8F, 4
  k_return
UCOM_F_B38E:
  k_func 4
  k_ldli 1
  k_stl -4
UCOM_L_B395:
  k_ldlba $EF61
  k_ldri 4
  k_and
  k_jumpf UCOM_L_B3A2
  k_pushi 3
  k_pushi 6
  k_jump UCOM_L_B3A4
UCOM_L_B3A2:
  k_pushi 3
  k_pushi 5
UCOM_L_B3A4:
  k_pushiw $C63A
  k_pushi 2
  k_pushi 6
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_B3BB
  k_ldli 0
  k_stl -4
  k_jump UCOM_L_B3C6
UCOM_L_B3BB:
  k_ldl -2
  k_shl1
  k_ldriw $C646
  k_add
  k_deref
  k_callptr
  k_jumpf UCOM_L_B395
UCOM_L_B3C6:
  k_ldl -4
  k_return
UCOM_F_B3C8:
  k_func 0
  k_ldlarg 15
  k_ldri 2
  k_smod
  k_jumpf UCOM_L_B3D7
  k_ldli 2
  k_jump UCOM_L_B3D9
UCOM_L_B3D7:
  k_ldlib -2
UCOM_L_B3D9:
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_pushl
  k_ldlarg 15
  k_ldri 2
  k_sdiv
  k_popr
  k_add
  k_addli 5
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_stlarg 11
  k_ldlarg 17
  k_ldri 2
  k_smod
  k_jumpf UCOM_L_B3F3
  k_ldli 2
  k_jump UCOM_L_B3F5
UCOM_L_B3F3:
  k_ldlib -2
UCOM_L_B3F5:
  k_pushl
  k_ldlba $F28C
  k_shl1
  k_ldriw $8EC0
  k_add
  k_deref
  k_pushl
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_pushl
  k_ldlarg 17
  k_ldri 2
  k_sdiv
  k_popr
  k_add
  k_addli 4
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_stlarg 13
  k_pushi 0
  k_pusha $C674
  k_pusharg 13
  k_pusharg 11
  k_pushn 19
  k_pushib 19
  k_callx RL_21BE, 12
  k_return
UCOM_F_B420:
  k_func 35
  k_ldlib 26
  k_stl -8
  k_ldli 0
  k_stl -4
UCOM_L_B42A:
  k_ldli 0
  k_stl -2
UCOM_L_B42C:
  k_leal -29
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_ldr -4
  k_add
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_ldr -2
  k_add
  k_pushl
  k_callx RL_87E0, 6
  k_stl -6
  k_ldl -6
  k_jumpf UCOM_L_B499
  k_leal -29
  k_stln -31
  k_ldr -6
  k_add
  k_stln -33
  k_jump UCOM_L_B491
UCOM_L_B455:
  k_ldln -31
  k_derefb
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpf UCOM_L_B48C
  k_ldln -31
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -35
  k_push -8
  k_ldln -35
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldln -35
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_push -4
  k_push -2
  k_callx UCOM_F_B3C8, 10
  k_ldl -8
  k_inc
  k_stl -8
UCOM_L_B48C:
  k_ldln -31
  k_inc
  k_stln -31
UCOM_L_B491:
  k_ldln -31
  k_ldrn -33
  k_ult
  k_jumpt UCOM_L_B455
UCOM_L_B499:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_lt
  k_jumpt UCOM_L_B42C
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 3
  k_lt
  k_jumpt UCOM_L_B42A
  k_return
UCOM_F_B4AC:
  k_func 10
  k_call RF_4DD8
  k_ldlarg 11
  k_jumpf UCOM_L_B4C6
  k_pushiw $0422
  k_pushiw $F300
  k_pushib 126
  k_pushiw $1D24
  k_jump UCOM_L_B4D1
UCOM_L_B4C6:
  k_pushiw $0422
  k_pushiw $F300
  k_pushib 126
  k_pushiw $1902
UCOM_L_B4D1:
  k_pusha $F280
  k_callx RF_3FC8, 10
  k_ldli 0
  k_stl -10
UCOM_L_B4DA:
  k_ldl -10
  k_ldrib 49
  k_mul
  k_ldriw $EFAB
  k_add
  k_stl -2
  k_ldl -10
  k_shl1
  k_ldriw $C6E0
  k_add
  k_deref
  k_shl1
  k_ldriw $F300
  k_add
  k_stl -4
  k_ldli 0
  k_stl -8
UCOM_L_B4F2:
  k_ldli 0
  k_stl -6
UCOM_L_B4F4:
  k_push -4
  k_ldl -2
  k_derefb
  k_shl1
  k_ldriw $C676
  k_add
  k_deref
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -4
  k_addli 2
  k_stl -4
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 7
  k_ult
  k_jumpt UCOM_L_B4F4
  k_ldlib 32
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -8
  k_ldri 7
  k_ult
  k_jumpt UCOM_L_B4F2
  k_ldl -10
  k_inc
  k_stl -10
  k_ldl -10
  k_ldri 9
  k_ult
  k_jumpt UCOM_L_B4DA
  k_pushib 126
  k_pushiw $F300
  k_pushib 23
  k_pushib 23
  k_pushi 3
  k_pushi 4
  k_pushi 1
  k_pushi 6
  k_callx RL_21BE, 16
  k_ldlarg 11
  k_jumpf UCOM_L_B53D
  k_call UCOM_F_B420
UCOM_L_B53D:
  k_return
UCOM_F_B53E:
  k_func 12
  k_ldli 0
  k_stl -8
  k_call UCOM_F_AB82
  k_dec
  k_stl -10
  k_ldlba $F28C
  k_ldri 2
  k_eq
  k_jumpf UCOM_L_B556
  k_ldli 10
  k_jump UCOM_L_B557
UCOM_L_B556:
  k_ldli 12
UCOM_L_B557:
  k_stl -12
  k_pushi 8
  k_pushi 10
  k_push -12
  k_push -10
  k_callx RF_4D41, 8
  k_pushi 0
  k_pushi 2
  k_pushi 9
  k_pushi 10
  k_ldl -12
  k_dec
  k_pushl
  k_push -10
  k_callx RF_4F65, 12
  k_ldl -10
  k_inc
  k_stl -10
  k_push -12
  k_push -10
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C6F2
  k_callx RF_2FB9, 4
  k_ldlba $E99A
  k_stl -2
  k_ldlba $E99B
  k_stl -4
  k_pushi 1
  k_ldl -12
  k_addli 2
  k_pushl
  k_push -10
  k_callx RF_4B2A, 6
  k_pushi 0
  k_ldl -12
  k_addli 5
  k_pushl
  k_push -10
  k_callx RF_4B2A, 6
  k_ldl -12
  k_addli 3
  k_pushl
  k_ldl -10
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_push -2
  k_pushiw $C700
  k_callx RF_3608, 4
  k_ldl -12
  k_addli 6
  k_pushl
  k_ldl -10
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_push -4
  k_pushiw $C706
  k_callx RF_3608, 4
  k_call RF_5C91
  k_pushi 1
  k_pushiw $C70C
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addli 2
  k_pushl
  k_ldl -10
  k_addli 6
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushib 99
  k_pushi 1
  k_callx RF_3935, 6
  k_stl -6
  k_ldl -6
  k_ldrib -1
  k_eq
  k_jumpf UCOM_L_B5F5
  k_ldl -12
  k_addli 2
  k_pushl
  k_ldl -10
  k_addli 6
  k_pushl
  k_callx RF_2F8F, 4
  k_push -2
  k_pushiw $C736
  k_callx RF_3619, 4
  k_jump UCOM_L_B5FB
UCOM_L_B5F5:
  k_ldl -6
  k_stlba $E99A
  k_ldli 1
  k_stl -8
UCOM_L_B5FB:
  k_ldl -12
  k_addli 5
  k_pushl
  k_ldl -10
  k_addli 6
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushib 99
  k_pushi 1
  k_callx RF_3935, 6
  k_stl -6
  k_ldl -6
  k_ldrib -1
  k_eq
  k_jumpf UCOM_L_B62A
  k_ldl -12
  k_addli 2
  k_pushl
  k_ldl -10
  k_addli 6
  k_pushl
  k_callx RF_2F8F, 4
  k_push -4
  k_pushiw $C73A
  k_callx RF_3619, 4
  k_jump UCOM_L_B630
UCOM_L_B62A:
  k_ldl -6
  k_stlba $E99B
  k_ldli 1
  k_stl -8
UCOM_L_B630:
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
  k_ldl -8
  k_return
UCOM_F_B651:
  k_func 29
  k_ldlarg 11
  k_ldri 10
  k_mul
  k_ldriw $EAC1
  k_add
  k_stl -2
  k_ldli 0
  k_stln -9
  k_ldli 0
  k_stlbf -5
  k_ldl -2
  k_addli 5
  k_stl -4
  k_jump UCOM_L_B687
UCOM_L_B66B:
  k_ldlbf -5
  k_pushl
  k_ldl -2
  k_derefb
  k_popr
  k_ugt
  k_jumpf UCOM_L_B67F
  k_ldl -2
  k_derefb
  k_stlbf -5
  k_ldln -9
  k_stln -7
UCOM_L_B67F:
  k_ldln -9
  k_inc
  k_stln -9
  k_ldl -2
  k_inc
  k_stl -2
UCOM_L_B687:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UCOM_L_B66B
  k_ldlbf -5
  k_stln -13
  k_ldliw $EAC1
  k_stl -4
  k_ldl -4
  k_ldrn -7
  k_add
  k_derefb
  k_stln -15
  k_ldlarg 13
  k_stln -17
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stln -27
  k_ldliw $E444
  k_stln -29
  k_ldln -27
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -27
  k_addli 2
  k_derefb
  k_popr
  k_add
  k_stln -19
  k_ldln -29
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -29
  k_addli 2
  k_derefb
  k_popr
  k_add
  k_stln -21
  k_ldln -13
  k_ldrn -19
  k_mul
  k_ldrib 100
  k_sdiv
  k_ldrn -13
  k_add
  k_stln -23
  k_ldln -15
  k_ldrn -21
  k_mul
  k_ldrib 100
  k_sdiv
  k_ldrn -25
  k_add
  k_stln -25
  k_ldln -23
  k_ldrn -25
  k_gt
  k_jumpf UCOM_L_B6F3
  k_pushib 100
  k_ldln -17
  k_ldrn -19
  k_jump UCOM_L_B6FB
UCOM_L_B6F3:
  k_pushib 100
  k_ldln -17
  k_ldrn -19
  k_sdiv
  k_ldri 3
UCOM_L_B6FB:
  k_sdiv
  k_pushl
  k_ldlarg 11
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_derefb
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stln -11
  k_ldlarg 11
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_pushl
  k_ldln -11
  k_popstoreb
  k_pushi 0
  k_pusharg 11
  k_callx RF_5C5A, 4
  k_pushiw $C73E
  k_callx RF_4B44, 2
  k_return
UCOM_F_B727:
  k_func 2
  k_ldliw $E564
  k_stl -2
  k_ldl -2
  k_addli 2
  k_derefb
  k_ldri 7
  k_ult
  k_jumpf UCOM_L_B73D
  k_ldlib 18
  k_jump UCOM_L_B73E
UCOM_L_B73D:
  k_ldli 2
UCOM_L_B73E:
  k_return
UCOM_F_B73F:
  k_func 12
  k_ldli 0
  k_stl -10
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_stl -12
  k_call UCOM_F_B727
  k_stl -2
  k_pushi 6
  k_pushi 14
  k_pushi 12
  k_push -2
  k_callx RF_4D41, 8
  k_pushi 0
  k_pushi 2
  k_pushi 6
  k_pushi 14
  k_pushi 12
  k_push -2
  k_callx RF_4F65, 12
  k_ldl -2
  k_inc
  k_stl -2
  k_pushi 13
  k_push -2
  k_callx RF_2F8F, 4
  k_ldl -12
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 15
  k_push -2
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_derefb
  k_pushl
  k_pushiw $C753
  k_callx RF_3619, 4
  k_ldla $E56D
  k_stl -4
  k_ldl -4
  k_ldriw $03E7
  k_ugt
  k_jumpf UCOM_L_B79C
  k_ldliw $03E7
  k_jump UCOM_L_B79D
UCOM_L_B79C:
  k_ldl -4
UCOM_L_B79D:
  k_stl -8
  k_call RF_5C3E
  k_push -4
  k_pushiw $C75F
  k_callx RF_3619, 4
  k_pushi 1
  k_push -8
  k_pushi 1
  k_pushiw $C768
  k_callx RF_3C4E, 8
  k_stl -6
  k_ldl -6
  k_ldrib -1
  k_ne
  k_jumpf UCOM_L_B7E2
  k_ldl -6
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_push -6
  k_pusharg 11
  k_callx UCOM_F_B651, 4
  k_pushi 15
  k_push -2
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_derefb
  k_pushl
  k_pushiw $C778
  k_callx RF_3619, 4
  k_ldli 1
  k_stl -10
UCOM_L_B7E2:
  k_call RF_4D8B
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
  k_ldl -10
  k_return
UCOM_F_B803:
  k_func 4
  k_ldla $E56D
  k_jumpt UCOM_L_B81A
  k_call RF_5C91
  k_pushiw $C78F
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_B81A:
  k_call UCOM_F_AC73
  k_stl -2
  k_ldli 0
  k_stl -4
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_B82E
  k_push -2
  k_callx UCOM_F_B73F, 2
  k_stl -4
UCOM_L_B82E:
  k_ldl -4
  k_return
UCOM_F_B830:
  k_func 0
  k_ldlba $F28C
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_B841
  k_ldli 3
  k_jump UCOM_L_B842
UCOM_L_B841:
  k_ldli 7
UCOM_L_B842:
  k_return
UCOM_F_B843:
  k_func 20
  k_ldln 19
  k_shl1
  k_ldriw $C7AD
  k_add
  k_deref
  k_stl -14
  k_ldli 1
  k_stl -10
  k_ldli 0
  k_stl -12
  k_ldli 0
  k_stl -8
  k_ldln 19
  k_jumpf UCOM_L_B894
  k_ldlarg 13
  k_addlib 16
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7BD
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7C5
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 18
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7CD
  k_jump UCOM_L_B8C9
UCOM_L_B894:
  k_ldlarg 13
  k_addlib 16
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7D5
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7DD
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 18
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7E5
UCOM_L_B8C9:
  k_callx RF_2FB9, 4
UCOM_L_B8CD:
  k_ldl -10
  k_ldri 10
  k_mul
  k_ldr -12
  k_add
  k_stl -2
  k_ldl -10
  k_shl1
  k_ldriw $C7B1
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_stl -4
  k_ldl -10
  k_ldri 2
  k_eq
  k_jumpf UCOM_L_B8E7
  k_ldli 1
  k_jump UCOM_L_B8E8
UCOM_L_B8E7:
  k_ldli 2
UCOM_L_B8E8:
  k_stl -16
  k_ldl -12
  k_ldr -16
  k_mul
  k_pushl
  k_ldl -10
  k_shl1
  k_ldriw $C7B7
  k_add
  k_deref
  k_popr
  k_add
  k_ldrarg 13
  k_add
  k_stl -6
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
  k_stl -20
  k_ldl -4
  k_ldri 3
  k_shl
  k_stl -18
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -20
  k_addlib -4
  k_pushl
  k_ldl -18
  k_dec
  k_pushl
  k_push -14
  k_callx RF_3E5A, 14
  k_pushi 12
  k_push -8
  k_callx RF_3D91, 4
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -8
  k_switchn 6
    .word $8000, UCOM_L_B975
    .word $0080, UCOM_L_B94A
    .word $0100, UCOM_L_B9C3
    .word $0200, UCOM_L_B9BF
    .word $0400, UCOM_L_B9A1
    .word $0800, UCOM_L_B988
    .word UCOM_L_B8CD
UCOM_L_B94A:
  k_pushi 2
  k_push -14
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushi 0
  k_pushiw $30E7
  k_push -20
  k_push -18
  k_push -14
  k_pushib 19
  k_callx RL_21BE, 12
  k_ldl -2
  k_jumpt UCOM_L_B96B
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
UCOM_L_B96B:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt UCOM_L_B96B
  k_ldl -2
  k_return
UCOM_L_B975:
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
UCOM_L_B97D:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt UCOM_L_B97D
  k_ldlib -1
  k_return
UCOM_L_B988:
  k_ldl -12
  k_dec
  k_stl -12
  k_ldl -12
  k_ldri 0
  k_lt
  k_jumpf UCOM_L_B993
  k_ldli 0
  k_stl -12
UCOM_L_B993:
  k_ldl -10
  k_ldri 2
  k_eq
  k_jumpf UCOM_L_B8CD
  k_ldli 1
  k_stl -10
UCOM_L_B99B:
  k_ldlarg 15
UCOM_L_B99C:
  k_dec
UCOM_L_B99D:
  k_stl -12
  k_jump UCOM_L_B8CD
UCOM_L_B9A1:
  k_ldl -12
  k_inc
  k_stl -12
  k_ldln 21
  k_jumpf UCOM_L_B9C9
  k_ldlarg 17
  k_jumpf UCOM_L_B9C9
  k_ldl -10
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_B9C9
  k_ldl -12
  k_ldrarg 15
  k_uge
  k_jumpf UCOM_L_B9C9
  k_ldli 0
  k_stl -12
  k_ldli 2
  k_jump UCOM_L_B9C8
UCOM_L_B9BF:
  k_ldli 0
  k_jump UCOM_L_B9C8
UCOM_L_B9C3:
  k_ldl -10
  k_jumpt UCOM_L_B9C9
  k_ldli 1
UCOM_L_B9C8:
  k_stl -10
UCOM_L_B9C9:
  k_ldl -10
  k_jumpf UCOM_L_B9E6
  k_ldl -10
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_B9DC
  k_ldl -12
  k_ldrarg 15
  k_ult
  k_jumpt UCOM_L_B8CD
  k_jump UCOM_L_B99B
UCOM_L_B9DC:
  k_ldl -12
  k_ldrarg 17
  k_ult
  k_jumpt UCOM_L_B8CD
  k_ldlarg 17
  k_jump UCOM_L_B99C
UCOM_L_B9E6:
  k_ldli 0
  k_jump UCOM_L_B99D
UCOM_F_B9EA:
  k_func 4
  k_pushiw $2000
  k_pushi 9
  k_pushi 11
  k_ldlarg 13
  k_inc
  k_pushl
  k_pusharg 11
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldlarg 17
  k_ldrarg 15
  k_add
  k_stl -2
  k_jump UCOM_L_BA63
UCOM_L_BA05:
  k_ldlarg 13
  k_inc
  k_pushl
  k_pusharg 11
  k_callx RF_2F8F, 4
  k_ldlarg 17
  k_derefb
  k_jumpt UCOM_L_BA1A
  k_pushi 1
  k_pushiw $C7ED
  k_callx RF_2FB9, 4
UCOM_L_BA1A:
  k_ldlarg 17
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 17
  k_derefb
  k_jumpt UCOM_L_BA35
  k_pushi 1
  k_pushiw $C7F1
  k_callx RF_2FB9, 4
UCOM_L_BA35:
  k_ldlarg 11
  k_addli 6
  k_pushl
  k_ldla $F188
  k_popr
  k_ult
  k_jumpf UCOM_L_BA58
  k_ldlarg 11
  k_addli 6
  k_ldra $F188
  k_sub
  k_stl -4
  k_pushiw $2000
  k_pushi 2
  k_push -4
  k_pusha $F18A
  k_pusha $F188
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
UCOM_L_BA58:
  k_ldli 2
  k_ldrn 19
  k_sub
  k_swap
  k_ldlarg 13
  k_add
  k_stlarg 13
  k_ldlarg 17
  k_inc
  k_stlarg 17
UCOM_L_BA63:
  k_ldlarg 17
  k_ldr -2
  k_ult
  k_jumpt UCOM_L_BA05
  k_return
UCOM_F_BA6A:
  k_func 0
  k_pushi 1
  k_pusharg 11
  k_callx RF_2FB9, 4
  k_return
UCOM_F_BA76:
  k_func 6
  k_ldlarg 17
  k_ldrarg 15
  k_add
  k_stl -2
  k_jump UCOM_L_BAA7
UCOM_L_BA82:
  k_ldlarg 17
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_stl -6
  k_push -6
  k_callx RF_40A5, 2
  k_stl -4
  k_pusharg 13
  k_pusharg 11
  k_callx RF_2F8F, 4
  k_push -4
  k_callx UCOM_F_BA6A, 2
  k_ldli 2
  k_swap
  k_ldlarg 13
  k_add
  k_stlarg 13
  k_ldlarg 17
  k_inc
  k_stlarg 17
UCOM_L_BAA7:
  k_ldlarg 17
  k_ldr -2
  k_ult
  k_jumpt UCOM_L_BA82
  k_return
UCOM_F_BAAE:
  k_func 14
  k_ldli 3
  k_stl -12
  k_call RF_4DD8
  k_pushi 0
  k_pushi 2
  k_pushib 25
  k_pushib 23
  k_ldl -12
  k_dec
  k_pushl
  k_pushi 7
  k_callx RF_4F65, 12
  k_push -12
  k_pushi 9
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7F5
  k_callx RF_2FB9, 4
  k_push -12
  k_pushib 18
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7FA
  k_callx RF_2FB9, 4
  k_pushiw $20F9
  k_pushi 1
  k_pushib 21
  k_ldl -12
  k_addli 12
  k_pushl
  k_pushi 8
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldl -12
  k_addli 12
  k_pushl
  k_pushib 18
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C804
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addli 13
  k_pushl
  k_pushi 11
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C80C
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 20
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C811
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 21
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C81B
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 22
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C824
  k_callx RF_2FB9, 4
  k_pusharg 13
  k_pusharg 11
  k_ldl -12
  k_inc
  k_pushl
  k_pushi 9
  k_callx UCOM_F_BA76, 8
  k_leal -10
  k_pushl
  k_callx RF_42D5, 2
  k_stl -14
  k_pushi 0
  k_leal -10
  k_pushl
  k_push -14
  k_ldl -12
  k_inc
  k_pushl
  k_pushib 18
  k_callx UCOM_F_B9EA, 10
  k_leal -10
  k_pushl
  k_callx RF_4251, 2
  k_stl -14
  k_pushi 1
  k_leal -10
  k_pushl
  k_push -14
  k_ldl -12
  k_addli 13
  k_pushl
  k_pushib 18
  k_callx UCOM_F_B9EA, 10
  k_return
UCOM_F_BB82:
  k_func 2
  k_ldlarg 11
  k_ldrarg 15
  k_add
  k_stl -2
  k_jump UCOM_L_BBA0
UCOM_L_BB8E:
  k_ldlarg 13
  k_derefb
  k_pushl
  k_ldlarg 11
  k_derefb
  k_popr
  k_ne
  k_jumpf UCOM_L_BB9A
  k_ldli 0
  k_return
UCOM_L_BB9A:
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_ldlarg 11
  k_inc
  k_stlarg 11
UCOM_L_BBA0:
  k_ldlarg 11
  k_ldr -2
  k_ult
  k_jumpt UCOM_L_BB8E
  k_ldli 1
  k_return
UCOM_F_BBA8:
  k_func 4
  k_ldlarg 17
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -4
  k_push -4
  k_ldlarg 11
  k_popstoreb
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -2
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -4
  k_push -4
  k_ldlarg 13
  k_popstoreb
  k_return
UCOM_F_BBDE:
  k_func 60
  k_ldli 3
  k_stln -42
  k_leal -5
  k_pushl
  k_callx RF_42D5, 2
  k_stln -32
  k_leal -20
  k_pushl
  k_callx RF_4251, 2
  k_stln -34
  k_ldln -32
  k_stln -36
  k_ldln -34
  k_stln -38
  k_pushi 5
  k_leal -10
  k_pushl
  k_leal -5
  k_pushl
  k_callx RL_88F4, 6
  k_pushi 10
  k_leal -30
  k_pushl
  k_leal -20
  k_pushl
  k_callx RL_88F4, 6
  k_ldli 0
  k_stln -44
  k_ldli 0
  k_stln -54
UCOM_L_BC22:
  k_pushn -54
  k_pushn -44
  k_pushn -38
  k_pushn -36
  k_pushn -42
  k_pushi 7
  k_callx UCOM_F_B843, 12
  k_stln -56
  k_ldln -56
  k_switchn 2
    .word $0000, UCOM_L_BC42
    .word $FFFF, UCOM_L_BC78
    .word UCOM_L_BCE8
UCOM_L_BC42:
  k_ldln -36
  k_ldrn -32
  k_eq
  k_jumpf UCOM_L_BC76
  k_ldln -38
  k_ldrn -34
  k_eq
  k_jumpf UCOM_L_BC76
  k_pushn -36
  k_leal -10
  k_pushl
  k_leal -5
  k_pushl
  k_callx UCOM_F_BB82, 6
  k_jumpf UCOM_L_BC76
  k_pushn -38
  k_leal -30
  k_pushl
  k_leal -20
  k_pushl
  k_callx UCOM_F_BB82, 6
  k_jumpf UCOM_L_BC76
  k_ldli 0
  k_return
UCOM_L_BC76:
  k_ldli 1
  k_return
UCOM_L_BC78:
  k_ldli 0
  k_jump UCOM_L_BCA7
UCOM_L_BC7C:
  k_ldlarg 13
  k_ldrn -40
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -58
  k_ldln -58
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -60
  k_pushn -60
  k_leal -5
  k_pushl
  k_ldln -40
  k_popr
  k_add
  k_derefb
  k_popstoreb
  k_ldln -40
  k_inc
UCOM_L_BCA7:
  k_stln -40
  k_ldln -40
  k_ldrarg 11
  k_ult
  k_jumpt UCOM_L_BC7C
  k_leal -10
  k_pushl
  k_callx RF_42D5, 2
  k_stln -36
  k_leal -30
  k_pushl
  k_callx RF_4251, 2
  k_stln -38
  k_pushi 0
  k_leal -10
  k_pushl
  k_pushn -36
  k_ldln -42
  k_inc
  k_pushl
  k_pushib 18
  k_callx UCOM_F_B9EA, 10
  k_pushi 1
  k_leal -30
  k_pushl
  k_pushn -38
  k_ldln -42
  k_addli 13
  k_pushl
  k_pushib 18
  k_callx UCOM_F_B9EA, 10
  k_ldli 0
  k_return
UCOM_L_BCE8:
  k_ldln -44
  k_jumpt UCOM_L_BD15
  k_leal -10
  k_pushl
  k_ldln -56
  k_ldri 10
  k_umod
  k_popr
  k_add
  k_derefb
  k_stln -46
  k_ldln -56
  k_ldri 10
  k_umod
  k_ldrarg 13
  k_add
  k_derefb
  k_stln -50
  k_ldln -46
  k_jumpf UCOM_L_BD0B
  k_ldli 1
  k_stln -54
UCOM_L_BD0B:
  k_ldln -44
  k_inc
UCOM_L_BD0E:
  k_stln -44
UCOM_L_BD10:
  k_ldli 1
  k_jumpt UCOM_L_BC22
  k_return
UCOM_L_BD15:
  k_ldln -56
  k_ldrib 20
  k_ult
  k_jumpf UCOM_L_BD34
  k_leal -10
  k_pushl
  k_ldln -56
  k_ldri 10
  k_umod
  k_popr
  k_add
  k_derefb
  k_stln -48
  k_ldln -56
  k_ldri 10
  k_umod
  k_ldrarg 13
  k_add
  k_derefb
  k_jump UCOM_L_BD43
UCOM_L_BD34:
  k_leal -30
  k_pushl
  k_ldln -56
  k_ldri 10
  k_umod
  k_popr
  k_add
  k_derefb
  k_stln -48
  k_ldln -50
UCOM_L_BD43:
  k_stln -52
  k_ldln -46
  k_ldrn -48
  k_ne
  k_jumpf UCOM_L_BD10
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushn -52
  k_pushn -50
  k_pushn -48
  k_pushn -46
  k_callx UCOM_F_BBA8, 8
  k_leal -10
  k_pushl
  k_callx RF_42D5, 2
  k_stln -36
  k_leal -30
  k_pushl
  k_callx RF_4251, 2
  k_stln -38
  k_pushi 0
  k_leal -10
  k_pushl
  k_pushn -36
  k_ldln -42
  k_inc
  k_pushl
  k_pushib 18
  k_callx UCOM_F_B9EA, 10
  k_pushi 1
  k_leal -30
  k_pushl
  k_pushn -38
  k_ldln -42
  k_addli 13
  k_pushl
  k_pushib 18
  k_callx UCOM_F_B9EA, 10
  k_ldli 0
  k_stln -54
  k_ldli 0
  k_jump UCOM_L_BD0E
UCOM_F_BD9E:
  k_func 15
  k_call RF_5C91
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -9
  k_ldln -9
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_BDC1
  k_pushiw $C82D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_BDC1:
  k_pushiw $C845
  k_callx RF_4B44, 2
  k_call RF_4DD8
  k_call RF_5F56
  k_pushib 25
  k_pushib 23
  k_pushi 2
  k_pushi 7
  k_callx RF_5FFB, 8
  k_leal -5
  k_pushl
  k_pushn -9
  k_callx UCOM_F_BAAE, 4
  k_leal -5
  k_pushl
  k_pushn -9
  k_callx UCOM_F_BBDE, 4
  k_stln -11
  k_call RF_5F56
  k_call RF_5C91
  k_pushi 1
  k_pushiw $C85E
  k_callx RF_2FB9, 4
  k_pushi 0
  k_callx RF_4190, 2
  k_stln -15
  k_pushn -15
  k_callx RF_40A5, 2
  k_stln -13
  k_pushn -13
  k_callx UCOM_F_BA6A, 2
  k_pushi 1
  k_pushiw $C873
  k_callx RF_2FB9, 4
  k_call RF_5FDB
  k_ldln -11
  k_return
UCOM_F_BE1F:
  k_func 10
  k_ldliw $E9A6
  k_stl -10
  k_ldli 0
  k_stl -2
  k_stl -4
  k_ldliw $EB92
  k_stl -6
  k_addlib 35
  k_stl -8
  k_jump UCOM_L_BE56
UCOM_L_BE35:
  k_ldl -6
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf UCOM_L_BE4C
  k_ldl -10
  k_derefb
  k_jumpf UCOM_L_BE4C
  k_pusharg 11
  k_ldl -2
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -4
  k_inc
  k_stl -4
UCOM_L_BE4C:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -10
  k_addlib 24
  k_stl -10
  k_ldl -6
  k_addli 7
  k_stl -6
UCOM_L_BE56:
  k_ldl -6
  k_ldr -8
  k_ult
  k_jumpt UCOM_L_BE35
  k_ldl -4
  k_return
UCOM_F_BE5E:
  k_func 34
  k_call RF_5C91
  k_leal -22
  k_pushl
  k_callx UCOM_F_BE1F, 2
  k_stln -30
  k_ldln -30
  k_jumpt UCOM_L_BE7E
  k_pushiw $C876
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_BE7E:
  k_leal -10
  k_stl -12
  k_leal -22
  k_stl -24
  k_ldrn -30
  k_add
  k_stln -26
  k_jump UCOM_L_BEAF
UCOM_L_BE8E:
  k_ldl -24
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -28
  k_push -24
  k_ldln -28
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_popstoreb
  k_push -12
  k_ldl -24
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_popstore
  k_ldl -12
  k_addli 2
  k_stl -12
  k_ldl -24
  k_inc
  k_stl -24
UCOM_L_BEAF:
  k_ldl -24
  k_ldrn -26
  k_ult
  k_jumpt UCOM_L_BE8E
  k_pushi 1
  k_pushiw $C89B
  k_callx RF_2FB9, 4
  k_leal -10
  k_pushl
  k_pushn -30
  k_call UCOM_F_AB6F
  k_pushl
  k_call UCOM_F_AB82
  k_pushl
  k_callx UCOM_F_ACE6, 8
  k_stln -32
  k_ldli 0
  k_stln -34
  k_ldln -32
  k_ldriw $00FF
  k_ne
  k_jumpf UCOM_L_BF14
  k_call RF_5C3E
  k_leal -10
  k_pushl
  k_ldln -32
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_pushiw $C8B4
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_stln -34
  k_ldln -34
  k_jumpf UCOM_L_BF14
  k_pushiw $00BF
  k_leal -22
  k_pushl
  k_ldln -32
  k_popr
  k_add
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
UCOM_L_BF14:
  k_ldln -34
  k_return
UCOM_F_BF17:
  k_func 4
UCOM_L_BF1C:
  k_pushi 4
  k_pushi 4
  k_pushiw $C8C6
  k_pushi 1
  k_pushi 0
  k_callx RF_47E1, 10
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UCOM_L_BF32
  k_ldli 0
  k_return
UCOM_L_BF32:
  k_ldl -2
  k_shl1
  k_ldriw $C8CE
  k_add
  k_deref
  k_callptr
  k_stl -4
  k_ldl -4
  k_jumpf UCOM_L_BF1C
  k_ldli 1
  k_return
  .byte $00
  .byte "0;1;2;3;d"
  .byte $BF, $69, $BF, $6E, $BF, $73, $BF, $7A, $BF, $81, $BF, $73, $97, $7F, $A9, $8E
  .byte $B3, $B7, $9D, $F5, $A9, $17, $BF, $0C, $96
  .byte "Move"
  .byte $00
  .byte "Look"
  .byte $00
  .byte "Info"
  .byte $00
  .byte "Debark"
  .byte $00
  .byte "Battle"
  .byte $00
  .byte "Order"
  .byte $00
  .byte "Cap'n, a port is"
  .byte $0A
  .byte "rumored to lie"
  .byte $0A
  .byte "in these waters"
  .byte $00, $00, $C8, $BF, $CE, $BF, $D8, $BF, $DD, $BF, $E7, $BF, $ED, $BF, $F7, $BF
  .byte $FC, $BF
  .byte "north"
  .byte $00
  .byte "northeast"
  .byte $00
  .byte "east"
  .byte $00
  .byte "southeast"
  .byte $00
  .byte "south"
  .byte $00
  .byte "southwest"
  .byte $00
  .byte "west"
  .byte $00
  .byte "northwest"
  .byte $00
  .byte "Set the compass"
  .byte $0A
  .byte "bearing"
  .byte $00
  .byte "All hands aloft!"
  .byte $0A
  .byte "Set to the"
  .byte $0A, $25, $73, $21, $1B, $57, $00
  .byte "We're anchored"
  .byte $0A
  .byte "down, Cap'n"
  .byte $00
  .byte "Heave to!"
  .byte $0A
  .byte "Anchor down!"
  .byte $00
  .byte "All hands up"
  .byte $0A
  .byte "anchor! We're"
  .byte $0A
  .byte "off!"
  .byte $00, $9A, $C0, $A4, $C0, $C6, $96, $1F, $97
  .byte "Direction"
  .byte $00
  .byte "Cast Anchor"
  .byte $00, $0A, $00, $27, $73, $00
  .byte "Cap'n, your"
  .byte $00, $0A, $0A
  .byte "sailing skill"
  .byte $0A, $0A
  .byte "has improved"
  .byte $1B, $57, $00
  .byte "There's no port"
  .byte $0A
  .byte "here"
  .byte $00, $0A
  .byte "OK to call at"
  .byte $0A, $0A, $00, $0A, $00
  .byte "Select a"
  .byte $0A
  .byte "landing point"
  .byte $00
  .byte "OK to go ashore"
  .byte $0A, $00, $39, $C1, $43, $C1, $0D, $9A, $00, $9D
  .byte "Port call"
  .byte $00
  .byte "Go ashore"
  .byte $00
  .byte "We can't drop"
  .byte $0A
  .byte "anchor here"
  .byte $00, $00, $00
  .byte "There are %d"
  .byte $0A
  .byte "fleets there."
  .byte $0A, $00
  .byte "Which one"
  .byte $00
  .byte "That fleet's"
  .byte $0A
  .byte "right next to"
  .byte $0A, $75, $73, $21, $00, $B6, $C1, $B8, $C1, $BA, $C1, $BC, $C1, $4E, $00, $53
  .byte $00, $45, $00, $57, $00
  .byte "We don't have a"
  .byte $0A
  .byte "sextant"
  .byte $00
  .byte "Our present"
  .byte $0A
  .byte "position is"
  .byte $0A
  .byte "%s %d"
  .byte $DF
  .byte " %s %d"
  .byte $DF, $00, $2C, $C2, $37, $C2, $3F, $C2, $47, $C2, $52, $C2, $5E, $C2, $67, $C2
  .byte $69, $C2, $6C, $C2, $6E, $C2, $71, $C2, $73, $C2, $76, $C2, $78, $C2, $7B, $C2
  .byte $81, $C2, $8B, $C2, $90, $C2, $9A, $C2, $A0, $C2, $AA, $C2, $AF, $C2, $3E, $5C
  .byte $B8, $A0
  .byte "Portuguese"
  .byte $00
  .byte "Spanish"
  .byte $00
  .byte "Turkish"
  .byte $00
  .byte "Portuguese"
  .byte $00
  .byte "trade ships"
  .byte $00
  .byte "warships"
  .byte $00, $4E, $00, $4E, $45, $00, $45, $00, $53, $45, $00, $53, $00, $53, $57, $00
  .byte $57, $00, $4E, $57, $00
  .byte "North"
  .byte $00
  .byte "Northeast"
  .byte $00
  .byte "East"
  .byte $00
  .byte "Southeast"
  .byte $00
  .byte "South"
  .byte $00
  .byte "Southwest"
  .byte $00
  .byte "West"
  .byte $00
  .byte "Northwest"
  .byte $00, $1B, $52, $22, $1B
  .byte "E>%s"
  .byte $00, $25, $73, $00
  .byte "Speed:%3d"
  .byte $00
  .byte "Course: %s"
  .byte $00
  .byte "Type:"
  .byte $00, $0A
  .byte "There sails"
  .byte $0A, $0A, $00, $27, $73, $0A, $0A
  .byte "fleet!"
  .byte $00
  .byte "They're pirates,"
  .byte $0A
  .byte "they are!"
  .byte $00
  .byte "They're headed"
  .byte $0A, $25, $73, $00, $B8, $A0, $B8, $A0
  .byte "No fleet within"
  .byte $0A
  .byte "view"
  .byte $00
  .byte "Look where?"
  .byte $00
  .byte "That's our fleet"
  .byte $00, $0A
  .byte "Cap'n, that's"
  .byte $0A, $0A
  .byte "the port of"
  .byte $0A, $0A, $00, $1B, $57, $1B, $57, $00
  .byte "I haven't a word"
  .byte $0A
  .byte "to say to you"
  .byte $00, $0A, $00
  .byte " are"
  .byte $00, $20, $69, $73, $00, $0A, $0A
  .byte "best sold in"
  .byte $0A, $0A, $00, $00
  .byte "Good luck on"
  .byte $0A
  .byte "your voyage!"
  .byte $00, $0A
  .byte "Back in"
  .byte $0A, $00, $0A
  .byte "there were some"
  .byte $0A
  .byte "skilled men"
  .byte $00, $00
  .byte "Beware of"
  .byte $0A
  .byte "pirates!"
  .byte $00, $0A
  .byte "Hmm, they're a"
  .byte $0A
  .byte "suspicious lot."
  .byte $0A
  .byte "They won't even"
  .byte $0A
  .byte "answer us"
  .byte $00, $00
  .byte "There's not a"
  .byte $0A
  .byte "fleet near us"
  .byte $00
  .byte "Which fleet?"
  .byte $00
  .byte "That's our fleet"
  .byte $00, $92, $C4, $9A, $C4, $A1, $C4, $CD, $A3, $AF, $9F, $48, $A8
  .byte "Inspect"
  .byte $00
  .byte "Survey"
  .byte $00
  .byte "Negotiate"
  .byte $00, $00, $B8, $C4, $C1, $C4, $C7, $C4, $CF, $C4, $D6, $C4, $E6, $C4
  .byte "Portugal"
  .byte $00
  .byte "Spain"
  .byte $00
  .byte "Turkish"
  .byte $00
  .byte "Pirate"
  .byte $00
  .byte "merchant fleet"
  .byte $0A, $00
  .byte "warships"
  .byte $0A, $00
  .byte "We can't fight"
  .byte $0A
  .byte "in the middle"
  .byte $0A
  .byte "of the night!"
  .byte $00
  .byte "There's no"
  .byte $0A
  .byte "fleet to attack"
  .byte $00
  .byte "Which fleet?"
  .byte $00
  .byte "Attack the"
  .byte $0A, $00
  .byte "pirate fleet"
  .byte $0A, $00, $00, $00
  .byte "There's no one"
  .byte $0A
  .byte "but me with ye"
  .byte $00
  .byte "Which mate?"
  .byte $00, $00, $8E, $C5, $97, $C5
  .byte "Yourself"
  .byte $00
  .byte "Mate"
  .byte $00
  .byte "Which ship?"
  .byte $00
  .byte "No cargo on"
  .byte $0A
  .byte "that ship"
  .byte $00, $25, $34, $64, $00, $0A
  .byte "This is the"
  .byte $0A, $0A
  .byte "cargo of the"
  .byte $0A, $0A, $00
  .byte "We don't have"
  .byte $0A
  .byte "any items"
  .byte $00
  .byte "We have these"
  .byte $0A
  .byte "items"
  .byte $0A, $28, $00
  .byte "A-more "
  .byte $00
  .byte "B-end)"
  .byte $00
  .byte "A9B9C9There's nothing"
  .byte $0A
  .byte "unusual"
  .byte $00, $52, $C6, $58, $C6, $5E, $C6, $63, $C6, $69, $C6, $6F, $C6, $AB, $AE, $F3
  .byte $AF, $73, $B2, $5E, $AD, $7D, $B0, $39, $B3
  .byte "Fleet"
  .byte $00
  .byte "Cargo"
  .byte $00
  .byte "Land"
  .byte $00
  .byte "Mates"
  .byte $00
  .byte "Items"
  .byte $00, $4D, $61, $70, $00, $00, $40, $39, $20, $11, $21, $11, $22, $11, $23, $11
  .byte $24, $11, $25, $11, $26, $11, $27, $11, $28, $11, $29, $11, $2A, $11, $2B, $11
  .byte $2C, $11, $2D, $11, $2E, $11, $2F, $11, $30, $11, $31, $11, $32, $11, $33, $11
  .byte $34, $11, $35, $11, $36, $11, $37, $11, $38, $11, $39, $11, $3A, $11, $3B, $11
  .byte $3C, $11, $3D, $11, $3E, $11, $3F, $11, $40, $11, $41, $11, $42, $11, $43, $11
  .byte $44, $11, $45, $11, $46, $11, $47, $11, $48, $11, $49, $11, $4A, $11, $4B, $11
  .byte $4C, $11, $4D, $11, $4E, $11, $4F, $11, $50, $11, $51, $11, $52, $11, $53, $11
  .byte $54, $11, $18, $00, $1F, $00, $26, $00, $B9, $00, $C0, $00, $C7, $00, $5A, $01
  .byte $61, $01, $68, $01, $1B, $52, $22, $1B
  .byte "E=Rations"
  .byte $00, $25, $33, $64, $1B, $EF, $00, $25, $33, $64, $1B, $EF, $00
  .byte "Set rations to"
  .byte $0A
  .byte "what (1-99)?"
  .byte $0A
  .byte "(B-cancel)"
  .byte $1B, $43, $30, $00, $25, $32, $64, $00, $25, $32, $64, $00
  .byte "Thank you very"
  .byte $0A
  .byte "much!"
  .byte $00
  .byte "Loyalty:%4d"
  .byte $00
  .byte "Gold: %d"
  .byte $00, $0A
  .byte "Give how much"
  .byte $0A, $00, $1B, $52, $22, $1B, $45, $3E, $1B
  .byte "C0Loyalty:%4d"
  .byte $1B, $57, $00
  .byte "There's a limit"
  .byte $0A
  .byte "to your gold!"
  .byte $00, $02, $00, $00, $00, $03, $00, $0A, $00, $0A, $00, $0E, $00, $02, $00, $0E
  .byte $00
  .byte "Replace"
  .byte $00
  .byte "with   "
  .byte $00
  .byte "whom?  "
  .byte $00
  .byte "Choose "
  .byte $00
  .byte "mate to"
  .byte $00
  .byte "replace"
  .byte $00, $1B, $43, $31, $00, $1B, $43, $30, $00
  .byte "Ship"
  .byte $00
  .byte "Navigator"
  .byte $00
  .byte "Sailors"
  .byte $00
  .byte "Done"
  .byte $00, $1B, $F1
  .byte "-Select"
  .byte $00
  .byte "A-Decide"
  .byte $00
  .byte "B-Cancel"
  .byte $00
  .byte "We only have"
  .byte $0A
  .byte "one vessel"
  .byte $00
  .byte "Replace which"
  .byte $0A
  .byte "navigator?"
  .byte $00
  .byte "The flagship"
  .byte $0A
  .byte "is the "
  .byte $00, $1B, $57, $00
  .byte "Cap'n, we don't"
  .byte $0A
  .byte "have a ship to"
  .byte $0A
  .byte "spare"
  .byte $00
  .byte "Dispose of"
  .byte $0A
  .byte "which vessel?"
  .byte $00
  .byte "Dispose of the"
  .byte $0A, $25, $73, $00, $D6, $C8, $DD, $C8, $E8, $C8, $F2, $C8, $3E, $B5, $03, $B8
  .byte $9E, $BD, $5E, $BE
  .byte "Ration"
  .byte $00
  .byte "Distribute"
  .byte $00
  .byte "Personnel"
  .byte $00
  .byte "Dispose"
  .byte $00
