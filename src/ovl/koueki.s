; overlay koueki, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp KOUEKI_F_B003
KOUEKI_F_B003:
  k_func 0
  k_call KOUEKI_F_C52B
  k_stla $F9A6
  k_return
KOUEKI_F_B00F:
  k_func 6
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -6
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump KOUEKI_L_B02F
KOUEKI_L_B023:
  k_ldl -4
  k_shl1
  k_ldr -6
  k_add
  k_addli 6
  k_deref
  k_swap
  k_ldl -2
  k_add
  k_stl -2
  k_ldl -4
  k_inc
KOUEKI_L_B02F:
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_B023
  k_ldl -2
  k_return
KOUEKI_F_B038:
  k_func 2
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -2
  k_ldl -2
  k_addlib 20
  k_deref
  k_pushl
  k_ldl -2
  k_addlib 18
  k_deref
  k_ldri 10
  k_sdiv
  k_pushl
  k_ldl -2
  k_addlib 16
  k_deref
  k_ldri 10
  k_sdiv
  k_pushl
  k_pusharg 11
  k_callx KOUEKI_F_B00F, 2
  k_popr
  k_add
  k_popr
  k_add
  k_popr
  k_add
  k_return
KOUEKI_F_B065:
  k_func 0
  k_pushi 1
  k_pushiw $C57A
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 18
  k_callx RF_2F8F, 4
  k_pusharg 13
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_pusharg 13
  k_callx RF_4565, 2
  k_pushl
  k_pushiw $C57E
  k_callx RF_3619, 6
  k_pushib 17
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pusha $E56D
  k_pushiw $C586
  k_callx RF_3619, 4
  k_return
KOUEKI_F_B0A8:
  k_func 12
  k_ldlib -1
  k_stla $EF66
  k_pushiw $2000
  k_pushi 15
  k_pushib 20
  k_pushi 4
  k_pushi 6
  k_pushi 3
  k_callx RF_604A, 12
  k_ldlarg 15
  k_jumpt KOUEKI_L_B0CF
  k_pushi 0
  k_pushi 0
  k_pushib 17
  k_pushib 22
  k_pushi 3
  k_pushi 5
  k_callx RF_4F65, 12
KOUEKI_L_B0CF:
  k_pushiw $20F9
  k_pushi 1
  k_pushib 20
  k_pushi 6
  k_pushi 6
  k_pushi 3
  k_callx $960C, 12
  k_pushi 4
  k_pushi 7
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C596
  k_callx RF_2FB9, 4
  k_ldli 0
  k_jump KOUEKI_L_B12D
KOUEKI_L_B0EE:
  k_ldlarg 13
  k_ldr -12
  k_add
  k_derefb
  k_pushl
  k_push -12
  k_callx KOUEKI_F_B065, 4
  k_leal -10
  k_pushl
  k_ldl -12
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldlarg 13
  k_ldr -12
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
  k_ldl -12
  k_shl1
  k_addli 8
  k_pushl
  k_pushi 7
  k_callx RF_2F8F, 4
  k_leal -10
  k_pushl
  k_ldl -12
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -12
  k_inc
KOUEKI_L_B12D:
  k_stl -12
  k_ldl -12
  k_ldrarg 11
  k_ult
  k_jumpt KOUEKI_L_B0EE
  k_return
KOUEKI_F_B135:
  k_func 29
  k_ldli 0
  k_stl -2
  k_pushiw $2000
  k_pushi 10
  k_pushib 20
  k_pushi 7
  k_pushi 6
  k_pushi 3
  k_callx RF_604A, 12
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stln -27
  k_addli 11
  k_derefb
  k_addlib 50
  k_stln -11
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -23
  k_addli 6
  k_stln -15
  k_ldln -23
  k_inc
  k_stl -8
  k_ldli 0
  k_stl -6
  k_jump KOUEKI_L_B28B
KOUEKI_L_B170:
  k_ldln -15
  k_deref
  k_jumpf KOUEKI_L_B281
  k_ldl -2
  k_jumpt KOUEKI_L_B1B6
  k_ldlba $EF69
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stln -25
  k_ldln -25
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stlbf -9
  k_ldln -25
  k_addli 2
  k_pushl
  k_callx RL_884E, 2
  k_stln -17
  k_pushn -25
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_ldriw $1864
  k_add
  k_stln -29
  k_ldln -27
  k_deref
  k_stln -19
  k_ldln -27
  k_addli 12
  k_deref
  k_stln -21
  k_ldli 1
  k_stl -2
KOUEKI_L_B1B6:
  k_pushi 1
  k_pushiw $C696
  k_callx RF_2FB9, 4
  k_ldl -6
  k_shl1
  k_addli 7
  k_pushl
  k_pushi 7
  k_callx RF_2F8F, 4
  k_ldl -8
  k_derefb
  k_shl1
  k_ldrn -29
  k_add
  k_addlib 36
  k_pushl
  k_callx RL_8898, 2
  k_stln -13
  k_ldln -11
  k_long $25
  k_long $14
  k_ldln -13
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stln -13
  k_ldl -8
  k_derefb
  k_pushl
  k_ldlbf -9
  k_popr
  k_eq
  k_jumpf KOUEKI_L_B223
  k_ldln -17
  k_ldrib 50
  k_mul
  k_ldrn -19
  k_le
  k_jumpf KOUEKI_L_B223
  k_ldln -11
  k_long $25
  k_long $14
  k_ldln -21
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_ldri 2
  k_sdiv
  k_inc
  k_stln -13
KOUEKI_L_B223:
  k_ldl -6
  k_shl1
  k_ldrarg 15
  k_add
  k_pushl
  k_ldln -13
  k_popstore
  k_ldl -6
  k_shl1
  k_ldrarg 17
  k_add
  k_pushl
  k_ldln -15
  k_deref
  k_popstore
  k_ldl -6
  k_shl1
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -8
  k_derefb
  k_shl1
  k_ldriw $C5AC
  k_add
  k_deref
  k_popstore
  k_ldln 19
  k_ldr -6
  k_add
  k_pushl
  k_ldl -4
  k_popstoreb
  k_ldl -6
  k_shl1
  k_ldrarg 13
  k_add
  k_deref
  k_pushl
  k_pushiw $C69A
  k_callx RF_3619, 4
  k_ldl -6
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 18
  k_callx RF_2F8F, 4
  k_ldln -15
  k_deref
  k_pushl
  k_pushiw $C69D
  k_callx RF_3619, 4
  k_ldl -6
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushn -13
  k_pushiw $C6A1
  k_callx RF_3619, 4
  k_ldl -6
  k_inc
  k_stl -6
KOUEKI_L_B281:
  k_ldln -15
  k_addli 2
  k_stln -15
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -4
  k_inc
KOUEKI_L_B28B:
  k_stl -4
  k_ldl -4
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_B170
  k_ldl -6
  k_return
KOUEKI_F_B294:
  k_func 47
  k_pusharg 11
  k_callx KOUEKI_F_B00F, 2
  k_jumpt KOUEKI_L_B2B0
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C6A5
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_B2B0:
  k_ldla $E56D
  k_ldriw $EA60
  k_eq
  k_jumpf KOUEKI_L_B2C9
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C6C4
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_B2C9:
  k_ldli 0
  k_stln -45
  k_pushiw $2000
  k_pushi 10
  k_pushib 20
  k_pushi 7
  k_pushi 6
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 1
  k_pushiw $C6F3
  k_callx RF_2FB9, 4
  k_pushi 4
  k_pushi 7
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C6F7
  k_callx RF_2FB9, 4
  k_pushiw $20F9
  k_pushi 1
  k_pushib 20
  k_pushi 6
  k_pushi 6
  k_pushi 3
  k_callx $960C, 12
  k_pushib 17
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pusha $E56D
  k_pushiw $C70B
  k_callx RF_3619, 4
  k_ldli 1
  k_stln -47
KOUEKI_L_B310:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C71B
  k_callx RF_2FB9, 4
  k_ldln -47
  k_jumpf KOUEKI_L_B336
  k_leal -19
  k_pushl
  k_leal -39
  k_pushl
  k_leal -29
  k_pushl
  k_leal -14
  k_pushl
  k_pusharg 11
  k_callx KOUEKI_F_B135, 10
  k_stl -2
KOUEKI_L_B336:
  k_push -2
  k_pushi 2
  k_pushi 8
  k_pushi 6
  k_callx RF_490C, 8
  k_stl -4
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_B4A5
  k_ldla $E56D
  k_long $26
  k_long $14
  k_leal -29
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_long $25
  k_long $14
  k_leal -39
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_long $25
  k_long $15
  k_long $01
  k_long $15
  k_long $03
  k_longd $19, $0000EA60
  k_long $0A
  k_jumpf KOUEKI_L_B3AC
  k_ldliw $EA60
  k_ldra $E56D
  k_sub
  k_stln -41
  k_leal -29
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldln -41
  k_popr
  k_udiv
  k_pushl
  k_leal -29
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldln -41
  k_popr
  k_umod
  k_jumpf KOUEKI_L_B3A6
  k_ldli 1
  k_jump KOUEKI_L_B3A7
KOUEKI_L_B3A6:
  k_ldli 0
KOUEKI_L_B3A7:
  k_popr
  k_add
  k_jump KOUEKI_L_B3B5
KOUEKI_L_B3AC:
  k_leal -39
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
KOUEKI_L_B3B5:
  k_stln -41
  k_call RF_60B2
  k_leal -14
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_pushiw $C730
  k_callx RF_3619, 4
  k_pushn -41
  k_pushi 1
  k_pushiw $C74A
  k_callx RF_3C6D, 6
  k_stln -43
  k_ldln -43
  k_ldrib -1
  k_ne
  k_jumpf KOUEKI_L_B4A1
  k_pushn -43
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_pushl
  k_leal -19
  k_pushl
  k_ldl -4
  k_popr
  k_add
  k_derefb
  k_shl1
  k_popr
  k_add
  k_ldriw $E9AC
  k_add
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_leal -29
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_ldrn -43
  k_mul
  k_swap
  k_ldla $E56D
  k_add
  k_stla $E56D
  k_ldli 1
  k_stln -45
  k_ldla $E56D
  k_ldriw $EA60
  k_ugt
  k_jumpf KOUEKI_L_B421
  k_ldliw $EA60
  k_stla $E56D
KOUEKI_L_B421:
  k_pushi 1
  k_pushiw $C74B
  k_callx RF_2FB9, 4
  k_pushib 17
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pusha $E56D
  k_pushiw $C74F
  k_callx RF_3619, 4
  k_leal -29
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_ldrn -43
  k_mul
  k_ldriw $03E8
  k_udiv
  k_ldri 10
  k_ugt
  k_jumpf KOUEKI_L_B454
  k_pusharg 13
  k_ldli 10
  k_jump KOUEKI_L_B465
KOUEKI_L_B454:
  k_pusharg 13
  k_leal -29
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_deref
  k_ldrn -43
  k_mul
  k_ldriw $03E8
  k_udiv
KOUEKI_L_B465:
  k_popstoreb
  k_ldla $E56D
  k_ldriw $EA60
  k_eq
  k_jumpf KOUEKI_L_B480
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C75F
  k_callx RF_4B44, 2
  k_ldln -45
  k_return
KOUEKI_L_B480:
  k_pusharg 11
  k_callx KOUEKI_F_B00F, 2
  k_jumpt KOUEKI_L_B498
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C77F
  k_callx RF_4B44, 2
  k_ldln -45
  k_return
KOUEKI_L_B498:
  k_ldli 0
  k_stln -45
  k_ldli 1
KOUEKI_L_B49C:
  k_stln -47
  k_jump KOUEKI_L_B4AA
KOUEKI_L_B4A1:
  k_ldli 0
  k_jump KOUEKI_L_B49C
KOUEKI_L_B4A5:
  k_ldliw $00FF
  k_stln -45
KOUEKI_L_B4AA:
  k_ldl -4
  k_ldriw $00FF
  k_eq
  k_jumpt KOUEKI_L_B4B7
  k_ldln -45
  k_jumpf KOUEKI_L_B310
KOUEKI_L_B4B7:
  k_ldln -45
  k_return
KOUEKI_F_B4BA:
  k_func 31
  k_pusharg 11
  k_ldli 0
  k_popstoreb
  k_ldli 1
  k_stln -29
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -17
  k_ldli 0
  k_stln -23
  k_ldli 0
  k_jump KOUEKI_L_B4EE
KOUEKI_L_B4D7:
  k_leal -5
  k_pushl
  k_ldln -19
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx KOUEKI_F_B00F, 2
  k_swap
  k_ldln -23
  k_add
  k_stln -23
  k_ldln -19
  k_inc
KOUEKI_L_B4EE:
  k_stln -19
  k_ldln -19
  k_ldrn -17
  k_ult
  k_jumpt KOUEKI_L_B4D7
  k_ldln -23
  k_jumpt KOUEKI_L_B50E
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $C79A
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_B50E:
  k_ldla $E56D
  k_ldriw $EA60
  k_eq
  k_jumpf KOUEKI_L_B529
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $C7B7
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_B529:
  k_ldli 0
  k_stln -31
  k_stln -27
  k_stln -25
  k_ldliw $00F0
  k_stlba $EF65
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_call $9675
KOUEKI_L_B543:
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $C7D6
  k_callx RF_2FB9, 4
  k_ldln -29
  k_jumpf KOUEKI_L_B56D
  k_pushn -31
  k_leal -5
  k_pushl
  k_pushn -17
  k_callx KOUEKI_F_B0A8, 6
  k_ldli 0
  k_stln -29
  k_ldli 1
  k_stln -31
KOUEKI_L_B56D:
  k_pushn -17
  k_pushi 2
  k_pushi 8
  k_pushi 6
  k_callx RF_490C, 8
  k_stln -21
  k_ldln -21
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_B5AE
  k_pusharg 11
  k_leal -5
  k_pushl
  k_ldln -21
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx KOUEKI_F_B294, 4
  k_stln -27
  k_ldln -27
  k_jumpf KOUEKI_L_B5A6
  k_ldln -27
  k_ldriw $00FF
  k_eq
  k_jumpf KOUEKI_L_B5A3
  k_ldli 0
  k_stln -27
KOUEKI_L_B5A3:
  k_ldli 1
  k_stln -29
KOUEKI_L_B5A6:
  k_ldln -27
  k_swap
  k_ldln -25
  k_or
  k_stln -25
KOUEKI_L_B5AE:
  k_ldln -21
  k_ldriw $00FF
  k_eq
  k_jumpt KOUEKI_L_B5BC
  k_ldln -25
  k_jumpf KOUEKI_L_B543
KOUEKI_L_B5BC:
  k_ldln -25
  k_jumpt KOUEKI_L_B5C6
  k_ldlarg 11
  k_derefb
  k_jumpf KOUEKI_L_B5F4
KOUEKI_L_B5C6:
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_ldri 9
  k_ugt
  k_jumpf KOUEKI_L_B5E8
  k_ldlarg 11
  k_derefb
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_jump KOUEKI_L_B5F3
KOUEKI_L_B5E8:
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_pushl
  k_ldli 0
KOUEKI_L_B5F3:
  k_popstoreb
KOUEKI_L_B5F4:
  k_call $97BE
  k_ldln -25
  k_return
KOUEKI_F_B5FA:
  k_func 6
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9AC
  k_add
  k_stl -4
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_jump KOUEKI_L_B61C
KOUEKI_L_B60E:
  k_ldl -4
  k_addli 2
  k_stl -4
  k_addlib -2
  k_deref
  k_jumpf KOUEKI_L_B61A
  k_ldl -2
  k_inc
  k_stl -2
KOUEKI_L_B61A:
  k_ldl -6
  k_inc
KOUEKI_L_B61C:
  k_stl -6
  k_ldl -6
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_B60E
  k_ldl -2
  k_return
KOUEKI_F_B625:
  k_func 14
  k_ldlba $EF69
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_ldriw $1864
  k_add
  k_stl -4
  k_ldl -4
  k_addli 9
  k_stl -8
  k_ldl -4
  k_stl -10
  k_ldl -4
  k_addlib 18
  k_stl -12
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -6
  k_ldl -6
  k_deref
  k_stl -14
  k_ldli 0
  k_stl -2
KOUEKI_L_B658:
  k_push -8
  k_callx RL_884E, 2
  k_jumpf KOUEKI_L_B68C
  k_push -10
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_ldr -14
  k_le
  k_jumpf KOUEKI_L_B68C
  k_ldl -6
  k_addli 11
  k_derefb
  k_addlib 50
  k_long $25
  k_long $14
  k_push -12
  k_callx RL_8898, 2
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_return
KOUEKI_L_B68C:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -12
  k_addli 2
  k_stl -12
  k_ldl -10
  k_inc
  k_stl -10
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_ult
  k_jumpt KOUEKI_L_B658
  k_ldli 0
  k_return
KOUEKI_F_B6A0:
  k_func 10
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -6
  k_ldli 0
  k_stl -2
KOUEKI_L_B6B0:
  k_ldl -2
  k_shl1
  k_ldr -6
  k_add
  k_addli 6
  k_deref
  k_jumpf KOUEKI_L_B6DC
  k_pusharg 15
  k_ldl -6
  k_ldr -2
  k_add
  k_inc
  k_derefb
  k_pushl
  k_callx KOUEKI_F_B625, 2
  k_popstore
  k_jumpf KOUEKI_L_B6DC
  k_pusharg 13
  k_ldl -6
  k_ldr -2
  k_add
  k_inc
  k_derefb
  k_popstoreb
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_ldlarg 15
  k_addli 2
  k_stlarg 15
  k_ldlbf -3
  k_inc
  k_stlbf -3
KOUEKI_L_B6DC:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_B6B0
  k_ldlba $EF69
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -8
  k_ldl -8
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stlbf -4
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_B75C
  k_ldli 0
  k_stl -2
KOUEKI_L_B702:
  k_ldl -2
  k_shl1
  k_ldr -6
  k_add
  k_addli 6
  k_deref
  k_jumpf KOUEKI_L_B753
  k_ldlbf -4
  k_pushl
  k_ldl -6
  k_ldr -2
  k_add
  k_inc
  k_derefb
  k_popr
  k_eq
  k_jumpf KOUEKI_L_B753
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -10
  k_pusharg 13
  k_ldlbf -4
  k_popstoreb
  k_ldlarg 13
  k_inc
  k_stlarg 13
  k_pusharg 15
  k_ldl -10
  k_addli 11
  k_derefb
  k_addlib 50
  k_long $25
  k_long $14
  k_ldl -10
  k_addli 12
  k_deref
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_popstore
  k_ldlarg 15
  k_addli 2
  k_stlarg 15
  k_ldlbf -3
  k_inc
  k_stlbf -3
KOUEKI_L_B753:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_B702
KOUEKI_L_B75C:
  k_ldlbf -3
  k_return
KOUEKI_F_B760:
  k_func 4
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -4
  k_ldli 0
  k_stl -2
KOUEKI_L_B770:
  k_ldl -4
  k_ldr -2
  k_add
  k_inc
  k_derefb
  k_ldrarg 13
  k_eq
  k_jumpf KOUEKI_L_B781
  k_ldl -2
  k_shl1
  k_ldr -4
  k_add
  k_addli 6
  k_deref
  k_return
KOUEKI_L_B781:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_B770
  k_ldli 0
  k_return
KOUEKI_F_B78C:
  k_func 4
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -4
  k_ldli 0
  k_stl -2
KOUEKI_L_B79C:
  k_ldl -4
  k_ldr -2
  k_add
  k_inc
  k_derefb
  k_ldrarg 13
  k_eq
  k_jumpf KOUEKI_L_B7B1
  k_ldl -2
  k_shl1
  k_ldr -4
  k_add
  k_addli 6
  k_deref
  k_jumpf KOUEKI_L_B7B1
  k_ldli 0
  k_return
KOUEKI_L_B7B1:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_B79C
  k_ldli 1
  k_return
KOUEKI_F_B7BC:
  k_func 4
  k_pushi 1
  k_pushiw $C7F6
  k_callx RF_2FB9, 4
  k_pushib 16
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C7FA
  k_callx RF_2FB9, 4
  k_pushib 17
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pusha $E56D
  k_pushiw $C800
  k_callx RF_3608, 4
  k_pushi 8
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C804
  k_callx RF_2FB9, 4
  k_pushi 9
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pusharg 17
  k_callx KOUEKI_F_B5FA, 2
  k_pushl
  k_pushiw $C80D
  k_callx RF_3608, 4
  k_pushi 12
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $C817
  k_callx RF_2FB9, 4
  k_pushi 13
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pusharg 17
  k_callx KOUEKI_F_B038, 2
  k_pushl
  k_ldlarg 17
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
  k_popr
  k_sub
  k_pushl
  k_pushiw $C81D
  k_callx RF_3608, 4
  k_ldln 19
  k_ldri 6
  k_mul
  k_jump KOUEKI_L_B8D2
KOUEKI_L_B851:
  k_ldl -2
  k_shl1
  k_addli 8
  k_pushl
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 17
  k_callx KOUEKI_F_B5FA, 2
  k_ldri 5
  k_eq
  k_jumpf KOUEKI_L_B87A
  k_ldln 19
  k_ldri 6
  k_mul
  k_ldrarg 13
  k_add
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_pusharg 17
  k_callx KOUEKI_F_B78C, 4
  k_jumpf KOUEKI_L_B87A
  k_ldli 3
  k_jump KOUEKI_L_B87B
KOUEKI_L_B87A:
  k_ldli 0
KOUEKI_L_B87B:
  k_stl -4
  k_ldln 19
  k_ldri 6
  k_mul
  k_ldrarg 13
  k_add
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
  k_ldl -2
  k_shl1
  k_addli 7
  k_pushl
  k_pushi 13
  k_callx RF_2F8F, 4
  k_ldln 19
  k_ldri 6
  k_mul
  k_ldrarg 13
  k_add
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_pusharg 17
  k_callx KOUEKI_F_B760, 4
  k_pushl
  k_pushiw $C826
  k_callx RF_3619, 4
  k_ldl -2
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 17
  k_callx RF_2F8F, 4
  k_ldln 19
  k_ldri 6
  k_mul
  k_ldr -2
  k_add
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_pushl
  k_pushiw $C82A
  k_callx RF_3619, 4
  k_ldl -2
  k_inc
KOUEKI_L_B8D2:
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_ult
  k_jumpt KOUEKI_L_B851
  k_return
KOUEKI_F_B8DA:
  k_func 28
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -20
  k_ldl -20
  k_addli 11
  k_derefb
  k_addlib 50
  k_stl -12
  k_ldl -20
  k_deref
  k_stl -10
  k_ldlba $EF69
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -22
  k_push -22
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_ldriw $1864
  k_add
  k_stl -2
  k_ldl -2
  k_stl -8
  k_ldl -2
  k_addli 9
  k_stl -6
  k_ldl -2
  k_addlib 18
  k_stl -14
  k_ldli 0
  k_stl -24
  k_stln -26
  k_jump KOUEKI_L_B970
KOUEKI_L_B919:
  k_push -6
  k_callx RL_884E, 2
  k_stln -28
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_B964
  k_push -8
  k_callx RL_884E, 2
  k_stl -16
  k_ldl -16
  k_ldrib 50
  k_mul
  k_ldr -10
  k_le
  k_jumpf KOUEKI_L_B964
  k_ldlarg 11
  k_ldrn -26
  k_add
  k_pushl
  k_ldln -28
  k_popstoreb
  k_ldln -26
  k_shl1
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -12
  k_long $25
  k_long $14
  k_push -14
  k_callx RL_8898, 2
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_popstore
  k_ldln -26
  k_inc
  k_stln -26
KOUEKI_L_B964:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -14
  k_addli 2
  k_stl -14
  k_ldl -24
  k_inc
  k_stl -24
KOUEKI_L_B970:
  k_ldl -24
  k_ldri 9
  k_ult
  k_jumpt KOUEKI_L_B919
  k_ldl -22
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stl -4
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_B9C0
  k_ldl -22
  k_addli 2
  k_pushl
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_ldr -10
  k_le
  k_jumpf KOUEKI_L_B9C0
  k_ldlarg 11
  k_ldrn -26
  k_add
  k_pushl
  k_ldl -4
  k_popstoreb
  k_ldln -26
  k_shl1
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -12
  k_long $25
  k_long $14
  k_ldl -20
  k_addli 12
  k_deref
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_popstore
  k_ldln -26
  k_inc
  k_stln -26
KOUEKI_L_B9C0:
  k_ldln -26
  k_return
KOUEKI_F_B9C3:
  k_func 18
  k_ldliw $00E1
  k_stl -16
  k_ldli 0
  k_stl -14
  k_ldli 0
  k_stl -10
  k_stl -8
  k_ldli 2
  k_stl -2
  k_ldli 8
KOUEKI_L_B9D4:
  k_stl -4
KOUEKI_L_B9D5:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -6
  k_ldl -6
  k_ldriw $0080
  k_eq
  k_jumpt KOUEKI_L_B9EB
  k_ldl -6
  k_ldriw $8000
  k_eq
  k_jumpf KOUEKI_L_B9EF
KOUEKI_L_B9EB:
  k_ldli 0
  k_jump KOUEKI_L_B9F0
KOUEKI_L_B9EF:
  k_ldli 1
KOUEKI_L_B9F0:
  k_jumpf KOUEKI_L_BA81
  k_ldl -4
  k_ldri 3
  k_shl
  k_dec
  k_stl -18
  k_ldl -2
  k_ldri 3
  k_shl
  k_stl -12
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -18
  k_addlib -4
  k_pushl
  k_ldl -12
  k_dec
  k_pushl
  k_pushi 0
  k_callx RF_3E5A, 14
  k_pushi 12
  k_push -6
  k_callx RF_3D91, 4
  k_ldl -6
  k_switchn 4
    .word $0100, KOUEKI_L_BA59
    .word $0200, KOUEKI_L_BA79
    .word $0400, KOUEKI_L_BA42
    .word $0800, KOUEKI_L_BA2C
    .word KOUEKI_L_B9D5
KOUEKI_L_BA2C:
  k_ldl -8
  k_jumpt KOUEKI_L_BA38
  k_ldlarg 11
  k_stl -8
  k_ldlarg 11
  k_shl1
  k_addli 8
  k_jump KOUEKI_L_B9D4
KOUEKI_L_BA38:
  k_ldl -8
  k_dec
  k_stl -8
  k_ldli 2
  k_swap
  k_ldl -4
  k_sub
  k_jump KOUEKI_L_B9D4
KOUEKI_L_BA42:
  k_ldl -8
  k_ldrarg 11
  k_eq
  k_jumpf KOUEKI_L_BA4F
  k_ldli 8
  k_stl -4
  k_ldli 0
KOUEKI_L_BA4B:
  k_stl -8
  k_jump KOUEKI_L_B9D5
KOUEKI_L_BA4F:
  k_ldli 2
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -8
  k_inc
  k_jump KOUEKI_L_BA4B
KOUEKI_L_BA59:
  k_ldl -10
  k_jumpt KOUEKI_L_B9D5
  k_ldlarg 11
  k_inc
  k_ldri 6
  k_ugt
  k_jumpf KOUEKI_L_B9D5
  k_ldli 1
KOUEKI_L_BA65:
  k_stl -10
  k_pushi 8
  k_callx RL_21BE, 2
  k_push -10
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx KOUEKI_F_B7BC, 10
  k_jump KOUEKI_L_B9D5
KOUEKI_L_BA79:
  k_ldl -10
  k_jumpf KOUEKI_L_B9D5
  k_ldli 0
  k_jump KOUEKI_L_BA65
KOUEKI_L_BA81:
  k_pushi 8
  k_callx RL_21BE, 2
  k_ldl -6
  k_ldriw $8000
  k_eq
  k_jumpf KOUEKI_L_BA92
  k_ldliw $00FF
  k_return
KOUEKI_L_BA92:
  k_ldl -10
  k_ldri 6
  k_mul
  k_ldr -8
  k_add
  k_return
KOUEKI_F_BA98:
  k_func 17
  k_pusharg 17
  k_callx KOUEKI_F_B5FA, 2
  k_ldri 5
  k_eq
  k_jumpf KOUEKI_L_BAB4
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_derefb
  k_pushl
  k_pusharg 17
  k_callx KOUEKI_F_B78C, 4
  k_jumpt KOUEKI_L_BAD5
KOUEKI_L_BAB4:
  k_pusharg 17
  k_callx KOUEKI_F_B038, 2
  k_pushl
  k_ldlarg 17
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
  k_popr
  k_sub
  k_jumpt KOUEKI_L_BAE4
KOUEKI_L_BAD5:
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C82E
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_BAE4:
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldlarg 11
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_stl -10
  k_pushi 0
  k_pushiw $C84D
  k_callx RF_2FB9, 4
  k_ldlarg 13
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
  k_pushi 0
  k_pushiw $C84F
  k_callx RF_2FB9, 4
  k_pushib 23
  k_pushi 8
  k_callx RF_2F8F, 4
  k_push -10
  k_pushiw $C85D
  k_callx RF_3619, 4
  k_ldla $E56D
  k_stl -6
  k_call RF_3CFF
  k_stl -12
  k_ldl -12
  k_jumpf KOUEKI_L_BB48
  k_ldl -10
  k_ldr -6
  k_ugt
  k_jumpf KOUEKI_L_BBBA
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $C876
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_BB48:
  k_pushi 10
  k_callx RF_3F3E, 2
  k_addlib 70
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_derefb
  k_popr
  k_uge
  k_jumpf KOUEKI_L_BC36
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_push -10
  k_push -6
  k_callx RL_8962, 4
  k_stl -8
  k_pushi 1
  k_push -8
  k_pushi 1
  k_pushiw $C894
  k_callx RF_3C6D, 8
  k_stl -2
  k_ldl -10
  k_ldri 2
  k_sdiv
  k_pushl
  k_ldlba $EE76
  k_inc
  k_popr
  k_mul
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -10
  k_popr
  k_sub
  k_pushl
  k_ldl -2
  k_popr
  k_ult
  k_jumpf KOUEKI_L_BBA5
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $C8B0
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
KOUEKI_L_BBA5:
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf KOUEKI_L_BBB8
  k_call RF_60B2
  k_pushiw $C8CB
  k_callx RF_4B44, 2
  k_ldli 3
  k_return
KOUEKI_L_BBB8:
  k_ldl -2
  k_stl -10
KOUEKI_L_BBBA:
  k_pusharg 17
  k_callx KOUEKI_F_B038, 2
  k_pushl
  k_ldlarg 17
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
  k_popr
  k_sub
  k_stl -4
  k_ldla $E56D
  k_ldr -10
  k_udiv
  k_pushl
  k_push -4
  k_callx RL_8962, 4
  k_stl -4
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C904
  k_callx RF_2FB9, 4
  k_ldlarg 13
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
  k_pushib 23
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C90F
  k_callx RF_2FB9, 4
  k_pushi 1
  k_push -4
  k_pushi 1
  k_pushiw $C921
  k_callx RF_3C4E, 8
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf KOUEKI_L_BC48
  k_call RF_60B2
  k_pushiw $C922
  k_callx RF_4B44, 2
  k_ldli 3
  k_return
KOUEKI_L_BC36:
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $C8E5
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_BC48:
  k_ldlarg 17
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -17
  k_ldli 0
  k_stl -12
  k_ldli 0
  k_jump KOUEKI_L_BC79
KOUEKI_L_BC58:
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_derefb
  k_pushl
  k_ldlbf -13
  k_ldrn -17
  k_add
  k_inc
  k_derefb
  k_popr
  k_eq
  k_jumpf KOUEKI_L_BC75
  k_ldlbf -13
  k_stlbf -14
  k_ldli 1
  k_stl -12
  k_jump KOUEKI_L_BC84
KOUEKI_L_BC75:
  k_ldlbf -13
  k_inc
KOUEKI_L_BC79:
  k_stlbf -13
  k_ldlbf -13
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_BC58
KOUEKI_L_BC84:
  k_ldl -12
  k_jumpt KOUEKI_L_BCB2
  k_ldli 0
  k_jump KOUEKI_L_BCA7
KOUEKI_L_BC8C:
  k_ldlbf -13
  k_shl1
  k_ldrn -17
  k_add
  k_addli 6
  k_deref
  k_jumpt KOUEKI_L_BCA3
  k_ldlbf -13
  k_stlbf -14
  k_ldli 1
  k_stl -12
  k_jump KOUEKI_L_BCB2
KOUEKI_L_BCA3:
  k_ldlbf -13
  k_inc
KOUEKI_L_BCA7:
  k_stlbf -13
  k_ldlbf -13
  k_ldri 5
  k_ult
  k_jumpt KOUEKI_L_BC8C
KOUEKI_L_BCB2:
  k_ldlbf -14
  k_ldrn -17
  k_add
  k_inc
  k_pushl
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_derefb
  k_popstoreb
  k_push -2
  k_ldlbf -14
  k_shl1
  k_ldrn -17
  k_add
  k_addli 6
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldl -2
  k_ldr -10
  k_mul
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_ldl -2
  k_ldr -10
  k_mul
  k_ldriw $03E8
  k_ugt
  k_jumpf KOUEKI_L_BD28
  k_ldl -2
  k_ldr -10
  k_mul
  k_ldriw $03E8
  k_udiv
  k_pushl
  k_pushi 10
  k_callx RL_8962, 4
  k_stlbf -15
  k_ldlbf -15
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_popr
  k_add
  k_ldrib 100
  k_ugt
  k_jumpf KOUEKI_L_BD17
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_pushl
  k_ldlib 100
  k_jump KOUEKI_L_BD27
KOUEKI_L_BD17:
  k_pushbf -15
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_popr
  k_pushl
  k_derefb
  k_add
KOUEKI_L_BD27:
  k_popstoreb
KOUEKI_L_BD28:
  k_ldli 0
  k_return
KOUEKI_F_BD2A:
  k_func 40
  k_ldli 0
  k_stl -16
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
  k_pushl
  k_pusharg 11
  k_callx KOUEKI_F_B038, 2
  k_popr
  k_eq
  k_jumpt KOUEKI_L_BD6D
  k_pusharg 11
  k_callx KOUEKI_F_B5FA, 2
  k_ldri 5
  k_eq
  k_jumpf KOUEKI_L_BD7E
  k_leal -36
  k_pushl
  k_leal -10
  k_pushl
  k_pusharg 11
  k_callx KOUEKI_F_B6A0, 6
  k_stl -12
  k_jumpt KOUEKI_L_BD7E
KOUEKI_L_BD6D:
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C949
  k_callx RF_4B44, 2
  k_ldliw $00FF
  k_return
KOUEKI_L_BD7E:
  k_call $9675
  k_pushi 0
  k_pushi 0
  k_pushib 17
  k_pushib 30
  k_pushi 3
  k_pushi 1
  k_callx RF_4F65, 12
  k_pushiw $20F9
  k_pushi 1
  k_pushib 28
  k_pushi 6
  k_pushi 2
  k_pushi 3
  k_callx $960C, 12
  k_pushiw $20FA
  k_pushi 12
  k_pushi 1
  k_pushi 7
  k_pushib 21
  k_pushi 3
  k_callx $960C, 12
  k_pushi 4
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $C95C
  k_callx RF_2FB9, 4
  k_ldli 1
  k_stln -40
KOUEKI_L_BDB8:
  k_ldli 0
  k_stln -38
  k_ldln -40
  k_jumpf KOUEKI_L_BDCD
  k_leal -36
  k_pushl
  k_leal -10
  k_pushl
  k_callx KOUEKI_F_B8DA, 4
  k_stl -12
KOUEKI_L_BDCD:
  k_ldli 1
  k_stln -40
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C972
  k_callx RF_2FB9, 4
  k_push -16
  k_pusharg 11
  k_leal -36
  k_pushl
  k_leal -10
  k_pushl
  k_push -12
  k_callx KOUEKI_F_B7BC, 10
  k_pusharg 11
  k_leal -36
  k_pushl
  k_leal -10
  k_pushl
  k_ldl -12
  k_dec
  k_pushl
  k_callx KOUEKI_F_B9C3, 8
  k_stl -14
  k_ldl -14
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_BE4B
  k_pusharg 11
  k_leal -36
  k_pushl
  k_leal -10
  k_pushl
  k_push -14
  k_callx KOUEKI_F_BA98, 8
  k_stln -38
  k_ldln -38
  k_ldri 3
  k_eq
  k_jumpf KOUEKI_L_BE25
  k_ldli 0
  k_stln -38
  k_stln -40
KOUEKI_L_BE25:
  k_pusharg 11
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_pusharg 11
  k_callx RF_4565, 2
  k_popr
  k_eq
  k_jumpf KOUEKI_L_BE4B
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C991
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
KOUEKI_L_BE4B:
  k_ldl -14
  k_ldriw $00FF
  k_eq
  k_jumpt KOUEKI_L_BE58
  k_ldln -38
  k_jumpf KOUEKI_L_BDB8
KOUEKI_L_BE58:
  k_call $9675
  k_ldln -38
  k_return
KOUEKI_F_BE5E:
  k_func 24
  k_pusharg 11
  k_ldli 0
  k_popstoreb
  k_ldli 0
  k_stl -24
  k_leal -8
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stlbf -1
  k_ldli 1
  k_stl -22
  k_ldli 0
  k_stl -20
  k_ldli 0
  k_jump KOUEKI_L_BECD
KOUEKI_L_BE7C:
  k_leal -8
  k_pushl
  k_ldlbf -2
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
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_leal -8
  k_pushl
  k_ldlbf -2
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx KOUEKI_F_B038, 2
  k_popr
  k_lt
  k_jumpf KOUEKI_L_BEC9
  k_leal -8
  k_pushl
  k_ldlbf -2
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx KOUEKI_F_B5FA, 2
  k_ldri 5
  k_ule
  k_jumpf KOUEKI_L_BEC9
  k_ldli 0
  k_stl -22
  k_jump KOUEKI_L_BEDC
KOUEKI_L_BEC9:
  k_ldlbf -2
  k_inc
KOUEKI_L_BECD:
  k_stlbf -2
  k_ldlbf -1
  k_pushl
  k_ldlbf -2
  k_popr
  k_ult
  k_jumpt KOUEKI_L_BE7C
KOUEKI_L_BEDC:
  k_ldl -22
  k_jumpf KOUEKI_L_BEEF
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C9A9
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_BEEF:
  k_ldla $E56D
  k_jumpt KOUEKI_L_BF04
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $C9C8
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_BF04:
  k_ldli 0
  k_stl -22
  k_ldliw $00F0
  k_stlba $EF65
  k_pushib 18
  k_pushib 30
  k_pushi 2
  k_pushi 1
  k_callx $97B0, 8
KOUEKI_L_BF16:
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C9E8
  k_callx RF_2FB9, 4
  k_ldl -24
  k_jumpt KOUEKI_L_BF4E
  k_call $9675
  k_pushi 0
  k_leal -8
  k_pushl
  k_ldlbf -1
  k_pushl
  k_callx KOUEKI_F_B0A8, 6
  k_ldli 1
  k_stl -24
KOUEKI_L_BF4E:
  k_ldlbf -1
  k_pushl
  k_pushi 2
  k_pushi 8
  k_pushi 6
  k_callx RF_490C, 8
  k_stlbf -3
  k_ldlbf -3
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_BF91
  k_pusharg 11
  k_leal -8
  k_pushl
  k_ldlbf -3
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx KOUEKI_F_BD2A, 4
  k_stl -22
  k_ldl -22
  k_ldriw $00FF
  k_eq
  k_jumpf KOUEKI_L_BF8F
  k_ldli 0
  k_stl -22
  k_pushiw $2000
  k_pushib 17
  k_pushib 22
  k_pushi 3
  k_pushi 5
  k_pushi 3
  k_callx RF_604A, 12
KOUEKI_L_BF8F:
  k_ldli 0
  k_stl -24
KOUEKI_L_BF91:
  k_ldlbf -3
  k_ldriw $00FF
  k_eq
  k_jumpt KOUEKI_L_BF9F
  k_ldl -22
  k_jumpf KOUEKI_L_BF16
KOUEKI_L_BF9F:
  k_ldl -22
  k_jumpf KOUEKI_L_BFD3
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_ldrib 90
  k_ult
  k_jumpf KOUEKI_L_BFC6
  k_ldlarg 11
  k_derefb
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_popr
  k_pushl
  k_derefb
  k_add
  k_jump KOUEKI_L_BFD2
KOUEKI_L_BFC6:
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_pushl
  k_ldlib 100
KOUEKI_L_BFD2:
  k_popstoreb
KOUEKI_L_BFD3:
  k_call $9675
  k_call $97BE
  k_ldli 0
  k_return
KOUEKI_F_BFDB:
  k_func 2
  k_ldli 0
  k_stl -2
KOUEKI_L_BFE2:
  k_ldlbf 13
  k_pushl
  k_pusharg 11
  k_callx RL_884E, 2
  k_popr
  k_eq
  k_jumpf KOUEKI_L_BFF2
  k_ldl -2
  k_return
KOUEKI_L_BFF2:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_ult
  k_jumpt KOUEKI_L_BFE2
  k_ldliw $00FF
  k_return
KOUEKI_F_C002:
  k_func 32
  k_ldlba $EF69
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -4
  k_ldl -4
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stl -16
  k_ldl -4
  k_addli 2
  k_pushl
  k_callx RL_884E, 2
  k_stl -18
  k_push -4
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_ldriw $1864
  k_add
  k_stl -2
  k_ldl -2
  k_stl -8
  k_ldl -2
  k_addli 9
  k_stl -10
  k_ldl -2
  k_addlib 18
  k_stl -20
  k_ldl -2
  k_addlib 36
  k_stl -22
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -6
  k_ldl -6
  k_deref
  k_stln -28
  k_ldl -6
  k_addli 12
  k_deref
  k_stln -30
  k_ldl -6
  k_addli 11
  k_derefb
  k_addlib 50
  k_stl -24
  k_ldlarg 13
  k_jumpf KOUEKI_L_C093
  k_call $9675
  k_pushi 0
  k_pushi 0
  k_pushib 17
  k_pushib 22
  k_pushi 3
  k_pushi 5
  k_callx RF_4F65, 12
  k_pushi 4
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $CA58
  k_callx RF_2FB9, 4
  k_pushi 5
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $CA6D
  k_callx RF_2FB9, 4
  k_pushiw $20F9
  k_pushi 1
  k_pushib 20
  k_pushi 6
  k_pushi 6
  k_pushi 3
  k_callx $960C, 12
  k_jump KOUEKI_L_C0A0
KOUEKI_L_C093:
  k_pushiw $2000
  k_pushi 12
  k_pushib 20
  k_pushi 7
  k_pushi 6
  k_pushi 3
  k_callx RF_604A, 12
KOUEKI_L_C0A0:
  k_ldli 0
  k_jump KOUEKI_L_C1E6
KOUEKI_L_C0A4:
  k_pushi 1
  k_pushiw $CA82
  k_callx RF_2FB9, 4
  k_ldl -12
  k_shl1
  k_addli 8
  k_pushl
  k_pushi 6
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_ldriw $CA15
  k_add
  k_derefb
  k_ldr -12
  k_add
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 11
  k_ldriw $CA15
  k_add
  k_derefb
  k_ldr -12
  k_add
  k_pushl
  k_push -10
  k_callx KOUEKI_F_BFDB, 4
  k_stl -14
  k_ldl -12
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 16
  k_callx RF_2F8F, 4
  k_ldl -8
  k_ldr -14
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stln -32
  k_ldl -14
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_C12B
  k_ldln -32
  k_ldrib 50
  k_mul
  k_ldrn -28
  k_le
  k_jumpf KOUEKI_L_C12B
  k_ldl -24
  k_long $25
  k_long $14
  k_ldl -14
  k_shl1
  k_ldr -20
  k_add
  k_pushl
  k_callx RL_8898, 2
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_pushl
  k_pushiw $CA86
KOUEKI_L_C124:
  k_callx RF_3619, 4
  k_jump KOUEKI_L_C177
KOUEKI_L_C12B:
  k_ldl -16
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_C16F
  k_ldlarg 11
  k_ldriw $CA15
  k_add
  k_derefb
  k_ldr -12
  k_add
  k_ldr -16
  k_eq
  k_jumpf KOUEKI_L_C16F
  k_ldl -18
  k_ldrib 50
  k_mul
  k_ldrn -28
  k_le
  k_jumpf KOUEKI_L_C168
  k_ldl -24
  k_long $25
  k_long $14
  k_ldln -30
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_pushl
  k_pushiw $CA8A
  k_jump KOUEKI_L_C124
KOUEKI_L_C168:
  k_pushi 1
  k_pushiw $CA8E
  k_jump KOUEKI_L_C173
KOUEKI_L_C16F:
  k_pushi 1
  k_pushiw $CA93
KOUEKI_L_C173:
  k_callx RF_2FB9, 4
KOUEKI_L_C177:
  k_ldl -12
  k_shl1
  k_addli 7
  k_pushl
  k_pushib 22
  k_callx RF_2F8F, 4
  k_ldl -24
  k_long $25
  k_long $14
  k_ldlarg 11
  k_ldriw $CA15
  k_add
  k_derefb
  k_ldr -12
  k_add
  k_shl1
  k_ldr -22
  k_add
  k_pushl
  k_callx RL_8898, 2
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stln -26
  k_ldlarg 11
  k_ldriw $CA15
  k_add
  k_derefb
  k_ldr -12
  k_add
  k_ldr -16
  k_eq
  k_jumpf KOUEKI_L_C1DB
  k_ldl -18
  k_ldrib 50
  k_mul
  k_ldrn -28
  k_ule
  k_jumpf KOUEKI_L_C1DB
  k_ldl -24
  k_long $25
  k_long $14
  k_ldln -30
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_ldri 2
  k_sdiv
  k_inc
  k_stln -26
KOUEKI_L_C1DB:
  k_pushn -26
  k_pushiw $CA98
  k_callx RF_3619, 4
  k_ldl -12
  k_inc
KOUEKI_L_C1E6:
  k_stl -12
  k_ldlarg 11
  k_ldriw $CA1B
  k_add
  k_derefb
  k_pushl
  k_ldl -12
  k_popr
  k_ult
  k_jumpt KOUEKI_L_C0A4
  k_pushib 17
  k_pushi 12
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_shl1
  k_ldriw $CA09
  k_add
  k_deref
  k_pushl
  k_pushiw $CA9C
  k_callx RF_3619, 4
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf KOUEKI_L_C217
  k_pushiw $CA9F
  k_callx RF_3619, 2
KOUEKI_L_C217:
  k_return
KOUEKI_F_C218:
  k_func 6
  k_ldlarg 11
  k_inc
  k_stl -4
  k_ldln 25
  k_jumpf KOUEKI_L_C255
  k_ldli 0
  k_jump KOUEKI_L_C24D
KOUEKI_L_C229:
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
KOUEKI_L_C24D:
  k_stl -2
  k_ldl -2
  k_ldrn 21
  k_ult
  k_jumpt KOUEKI_L_C229
KOUEKI_L_C255:
  k_pushi 1
  k_pushn 23
  k_pusharg 17
  k_pusharg 15
  k_ldlarg 13
  k_inc
  k_pushl
  k_pusharg 11
  k_pushn 21
  k_pushiw $CAA7
  k_callx RF_3787, 16
  k_stl -6
  k_ldl -6
  k_ldrib -1
  k_eq
  k_jumpf KOUEKI_L_C275
  k_ldliw $00FF
  k_jump KOUEKI_L_C277
KOUEKI_L_C275:
  k_ldl -6
  k_dec
KOUEKI_L_C277:
  k_return
KOUEKI_F_C278:
  k_func 8
  k_ldli 1
  k_stl -6
  k_stl -4
  k_stl -2
KOUEKI_L_C281:
  k_ldl -6
  k_jumpf KOUEKI_L_C298
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $CAD8
  k_callx RF_2FB9, 4
KOUEKI_L_C298:
  k_push -6
  k_pushi 2
  k_pushi 6
  k_pushiw $CAA8
  k_pushi 2
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx KOUEKI_F_C218, 16
  k_stl -8
  k_ldli 0
  k_stl -6
  k_ldl -8
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_C2D0
  k_ldliw $00F0
  k_stlba $EF65
  k_ldl -2
  k_jumpf KOUEKI_L_C2C8
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_ldli 0
  k_stl -2
KOUEKI_L_C2C8:
  k_push -4
  k_push -8
  k_callx KOUEKI_F_C002, 4
  k_ldli 0
  k_stl -4
KOUEKI_L_C2D0:
  k_ldl -8
  k_ldriw $00FF
  k_ne
  k_jumpt KOUEKI_L_C281
  k_ldl -2
  k_jumpt KOUEKI_L_C2DF
  k_call $97BE
KOUEKI_L_C2DF:
  k_ldli 0
  k_return
KOUEKI_F_C2E1:
  k_func 4
  k_ldla $EE74
  k_ldriw $C350
  k_ult
  k_jumpf KOUEKI_L_C31D
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -2
  k_ldl -2
  k_deref
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_popr
  k_add
  k_ldri 1
  k_shr
  k_pushl
  k_pushib 100
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_ldra $EE74
  k_add
  k_stl -4
  k_pushiw $C350
  k_push -4
  k_callx RL_8962, 4
  k_stla $EE74
KOUEKI_L_C31D:
  k_return
KOUEKI_F_C31E:
  k_func 4
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -2
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_stl -4
  k_ldl -2
  k_deref
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_popr
  k_add
  k_ldrib 65
  k_udiv
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_ldr -4
  k_add
  k_addli 5
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_pushl
  k_pushib 100
  k_push -4
  k_callx RL_8962, 4
  k_popstoreb
  k_return
KOUEKI_F_C35E:
  k_func 12
  k_ldla $E56D
  k_jumpt KOUEKI_L_C378
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $CAE3
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_C378:
  k_ldlba $EF69
  k_ldri 3
  k_ult
  k_jumpf KOUEKI_L_C3A4
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldlba $EF69
  k_ldri 2
  k_eq
  k_jumpf KOUEKI_L_C397
  k_ldliw $CB2F
  k_jump KOUEKI_L_C39A
KOUEKI_L_C397:
  k_ldliw $CB36
KOUEKI_L_C39A:
  k_pushl
  k_pushiw $CAF6
  k_callx RF_3619, 4
  k_ldli 0
  k_return
KOUEKI_L_C3A4:
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B6
  k_add
  k_deref
  k_ldriw $EA60
  k_eq
  k_jumpf KOUEKI_L_C3C7
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $CB3B
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_C3C7:
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $CB5B
  k_callx RF_4B44, 2
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B6
  k_add
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_stl -2
  k_ldla $E56D
  k_ldr -2
  k_ult
  k_jumpf KOUEKI_L_C3F6
  k_ldla $E56D
  k_stl -2
KOUEKI_L_C3F6:
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_push -2
  k_pushi 1
  k_pushiw $CB7B
  k_callx RF_3C4E, 8
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf KOUEKI_L_C420
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $CB94
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
KOUEKI_L_C420:
  k_push -4
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B6
  k_add
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B6
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldl -4
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_ldl -4
  k_ldriw $03E8
  k_ult
  k_jumpf KOUEKI_L_C46C
  k_ldl -4
  k_inc
  k_ldrib 20
  k_udiv
  k_stl -6
  k_pushi 1
  k_pushiw $CBBE
  k_jump KOUEKI_L_C48F
KOUEKI_L_C46C:
  k_ldl -4
  k_ldriw $270F
  k_ugt
  k_jumpf KOUEKI_L_C484
  k_ldl -4
  k_ldriw $03E8
  k_udiv
  k_addliw $0096
  k_stl -6
  k_pushi 1
  k_pushiw $CBCF
  k_jump KOUEKI_L_C48F
KOUEKI_L_C484:
  k_ldl -4
  k_ldrib 100
  k_udiv
  k_addlib 50
  k_stl -6
  k_pushi 1
  k_pushiw $CBF4
KOUEKI_L_C48F:
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_derefb
  k_ldrib 49
  k_ugt
  k_jumpf KOUEKI_L_C4BB
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_derefb
  k_jump KOUEKI_L_C4D0
KOUEKI_L_C4BB:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
KOUEKI_L_C4D0:
  k_ldri 7
  k_udiv
  k_pushl
  k_ldl -6
  k_inc
  k_popr
  k_udiv
  k_popr
  k_add
  k_stl -8
  k_ldlba $EF69
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stl -10
  k_push -8
  k_pushi 0
  k_ldlba $EF69
  k_pushl
  k_callx RF_4353, 6
  k_ldlba $EF69
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stl -12
  k_ldl -10
  k_ldr -12
  k_ne
  k_jumpf KOUEKI_L_C529
  k_ldl -12
  k_jumpt KOUEKI_L_C51A
  k_ldl -10
  k_ldri 2
  k_eq
  k_jumpt KOUEKI_L_C510
  k_ldl -10
  k_ldri 3
  k_eq
  k_jumpf KOUEKI_L_C51A
KOUEKI_L_C510:
  k_ldl -10
  k_dec
  k_pushl
  k_callx KOUEKI_F_C31E, 2
  k_jump KOUEKI_L_C529
KOUEKI_L_C51A:
  k_ldl -10
  k_ldri 1
  k_ne
  k_jumpf KOUEKI_L_C529
  k_ldl -12
  k_ldri 1
  k_eq
  k_jumpf KOUEKI_L_C529
  k_call KOUEKI_F_C2E1
KOUEKI_L_C529:
  k_ldli 1
  k_return
KOUEKI_F_C52B:
  k_func 4
  k_ldli 0
  k_stl -4
KOUEKI_L_C532:
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CC34
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 4
  k_pushiw $CC08
  k_pushi 2
  k_pushi 10
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf KOUEKI_L_C56E
  k_leal -2
  k_pushl
  k_ldlbf -1
  k_shl1
  k_ldriw $CC10
  k_add
  k_deref
  k_callptrn 2
  k_stl -4
KOUEKI_L_C56E:
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpt KOUEKI_L_C532
  k_ldl -4
  k_return
  .byte $1B, $43, $30, $00
  .byte "%3d/%3d"
  .byte $00
  .byte "Total gold: %5d"
  .byte $00, $1B
  .byte "C0Ship      Load/Max"
  .byte $00, $E0, $C5, $E7, $C5, $F0, $C5, $F7, $C5, $FF, $C5, $06, $C6, $10, $C6, $17
  .byte $C6, $1D, $C6, $24, $C6, $2A, $C6, $2F, $C6, $36, $C6, $3D, $C6, $43, $C6, $49
  .byte $C6, $4F, $C6, $56, $C6, $5F, $C6, $64, $C6, $6A, $C6, $6F, $C6, $78, $C6, $7D
  .byte $C6, $87, $C6, $8F, $C6
  .byte "Pepper"
  .byte $00
  .byte "Cinnamon"
  .byte $00
  .byte "Nutmeg"
  .byte $00
  .byte "Pimento"
  .byte $00
  .byte "Cloves"
  .byte $00
  .byte "Olive Oil"
  .byte $00
  .byte "Grapes"
  .byte $00
  .byte "Sugar"
  .byte $00
  .byte "Cheese"
  .byte $00
  .byte "Grain"
  .byte $00
  .byte "Gold"
  .byte $00
  .byte "Silver"
  .byte $00
  .byte "Quartz"
  .byte $00
  .byte "Coral"
  .byte $00
  .byte "Ivory"
  .byte $00
  .byte "Pearl"
  .byte $00
  .byte "Cotton"
  .byte $00
  .byte "Raw Silk"
  .byte $00
  .byte "Wool"
  .byte $00
  .byte "Cloth"
  .byte $00
  .byte "Silk"
  .byte $00
  .byte "Firearms"
  .byte $00
  .byte "Wood"
  .byte $00
  .byte "Porcelain"
  .byte $00
  .byte "Artwork"
  .byte $00
  .byte "Carpet"
  .byte $00, $1B, $43, $30, $00, $25, $73, $00, $25, $33, $64, $00, $25, $34, $64, $00
  .byte "No goods on that"
  .byte $0A
  .byte "vessel, Cap'n"
  .byte $00
  .byte "We have more than"
  .byte $0A
  .byte "enough gold already,"
  .byte $0A
  .byte "Captain"
  .byte $00, $1B, $43, $30, $00
  .byte "Variety    Amt Rate"
  .byte $00
  .byte "Total gold: %5d"
  .byte $00
  .byte "What can ye sell me?"
  .byte $00
  .byte "How much %s"
  .byte $0A
  .byte "will ye sell"
  .byte $0A, $00, $00, $1B, $43, $30, $00
  .byte "Total gold: %5d"
  .byte $00
  .byte "We've got a wealth"
  .byte $0A
  .byte "of gold now!"
  .byte $00
  .byte "No more goods on that"
  .byte $0A
  .byte "ship"
  .byte $00
  .byte "We 'aven't any goods"
  .byte $0A
  .byte "to sell"
  .byte $00
  .byte "We've got enough gold"
  .byte $0A
  .byte "already!"
  .byte $00
  .byte "Which ship's cargo is"
  .byte $0A
  .byte "for sale?"
  .byte $00, $1B, $43, $30, $00
  .byte "Gold:"
  .byte $00, $25, $35, $64, $00
  .byte "Types of"
  .byte $00
  .byte "cargo:%2d"
  .byte $00
  .byte "Space"
  .byte $00
  .byte "left:%3d"
  .byte $00, $25, $33, $64, $00, $25, $34, $64, $00
  .byte "There isn't enough"
  .byte $0A
  .byte "room for it"
  .byte $00, $0A, $00
  .byte " will cost ye"
  .byte $00
  .byte "%d gold here."
  .byte $0A
  .byte "Interested"
  .byte $00
  .byte "We can't buy at those"
  .byte $0A
  .byte "prices!"
  .byte $00
  .byte "Well then, what's yer"
  .byte $0A
  .byte "range"
  .byte $00
  .byte "I can't sell at that"
  .byte $0A
  .byte "price"
  .byte $00
  .byte "Hmph. Yer wasting my"
  .byte $0A
  .byte "time"
  .byte $00
  .byte "Any other goods"
  .byte $0A
  .byte "catch yer eye?"
  .byte $00, $0A
  .byte "How much "
  .byte $00
  .byte "will ye purchase"
  .byte $0A, $00, $00
  .byte "Don't waste my time"
  .byte $0A
  .byte "with yer browsing!"
  .byte $00
  .byte "That ship is full!"
  .byte $00, $1B
  .byte "C0Variety   Amt Cost"
  .byte $00
  .byte "What are ye looking"
  .byte $0A
  .byte "for today?"
  .byte $00
  .byte "The ship is at"
  .byte $0A
  .byte "capacity"
  .byte $00
  .byte "No more goods will fitin store"
  .byte $00
  .byte "We 'aven't a penny to"
  .byte $0A
  .byte "our name!"
  .byte $00
  .byte "Which ship will carry"
  .byte $0A
  .byte "the goods?"
  .byte $00, $21, $CA, $29, $CA, $31, $CA, $39, $CA, $41, $CA, $49, $CA, $00, $05, $0A
  .byte $0C, $10, $15, $05, $05, $02, $04, $05, $05
  .byte "  Spice"
  .byte $00
  .byte "   Food"
  .byte $00
  .byte "  Metal"
  .byte $00
  .byte "    Gem"
  .byte $00
  .byte "Textile"
  .byte $00
  .byte " Miscellaneous"
  .byte $00
  .byte "          Sell   Buy"
  .byte $00
  .byte "Variety    for   for"
  .byte $00, $1B, $43, $30, $00, $25, $34, $64, $00, $25, $34, $64, $00
  .byte "----"
  .byte $00
  .byte "----"
  .byte $00, $25, $34, $64, $00, $25, $73, $00
  .byte " market"
  .byte $00, $00, $B4, $CA, $BA, $CA, $BF, $CA, $C5, $CA, $CA, $CA, $D2, $CA
  .byte "Spice"
  .byte $00
  .byte "Food"
  .byte $00
  .byte "Metal"
  .byte $00
  .byte "Gems"
  .byte $00
  .byte "Textile"
  .byte $00
  .byte "Other"
  .byte $00
  .byte "Which one?"
  .byte $00
  .byte "We're out of gold!"
  .byte $00
  .byte "Ye can't invest in"
  .byte $0A
  .byte "this port without the"
  .byte $0A
  .byte "%s's approval"
  .byte $1B, $57, $00
  .byte "Sultan"
  .byte $00
  .byte "King"
  .byte $00
  .byte "I can't accept any"
  .byte $0A
  .byte "more from ye"
  .byte $00
  .byte "What! Yer going to"
  .byte $0A
  .byte "invest here?"
  .byte $00
  .byte "How much shall we"
  .byte $0A
  .byte "invest"
  .byte $00
  .byte "Oh well. Be sure to"
  .byte $0A
  .byte "invest here next time"
  .byte $00
  .byte "Thank you kindly"
  .byte $00
  .byte "Your charity will"
  .byte $0A
  .byte "never be forgotten"
  .byte $00
  .byte "Thank you very much"
  .byte $00, $18, $CC, $1D, $CC, $21, $CC, $2D, $CC, $BA, $B4, $5E, $BE, $78, $C2, $5E
  .byte $C3
  .byte "Sell"
  .byte $00, $42, $75, $79, $00
  .byte "View market"
  .byte $00
  .byte "Invest"
  .byte $00
  .byte "How can I help ye?"
  .byte $00, $00
