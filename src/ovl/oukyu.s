; overlay oukyu, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp OUKYU_F_B003
OUKYU_F_B003:
  k_func 0
  k_call OUKYU_F_B047
  k_stla $F9A6
  k_return
OUKYU_F_B00F:
  k_func 1
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C73D
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw $C72A
  k_pushi 1
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf OUKYU_L_B045
  k_ldlbf -1
  k_shl1
  k_ldriw $C72E
  k_add
  k_deref
  k_callptr
  k_return
OUKYU_L_B045:
  k_ldli 0
  k_return
OUKYU_F_B047:
  k_func 4
  k_ldli 0
  k_stl -4
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_ldlba $EF69
  k_jumpt OUKYU_L_B0B2
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B09E
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_B09E
  k_ldlba $EF55
  k_jumpt OUKYU_L_B09E
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw $C785
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C797
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
OUKYU_L_B09A:
  k_ldli 4
  k_jump OUKYU_L_B0E3
OUKYU_L_B09E:
  k_ldlba $EE76
  k_jumpt OUKYU_L_B09A
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $C799
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_B0B2:
  k_ldlba $EF69
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
  k_ldrib 20
  k_ugt
  k_jumpt OUKYU_L_B0D4
  k_ldlba $EE76
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt OUKYU_L_B0E2
OUKYU_L_B0D4:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $C7CA
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_B0E2:
  k_ldli 1
OUKYU_L_B0E3:
  k_stlbf -2
OUKYU_L_B0E6:
  k_pushi 1
  k_pushi 11
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C809
  k_callx RF_2FB9, 4
  k_pushi 2
  k_ldlbf -2
  k_pushl
  k_pushiw $C74F
  k_pushi 2
  k_pushi 13
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf OUKYU_L_B126
  k_ldlbf -1
  k_shl1
  k_ldriw $C757
  k_add
  k_deref
  k_callptr
  k_stl -4
OUKYU_L_B126:
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpt OUKYU_L_B134
  k_ldl -4
  k_jumpf OUKYU_L_B0E6
OUKYU_L_B134:
  k_ldlba $F169
  k_jumpf OUKYU_L_B13B
  k_return
OUKYU_L_B13B:
  k_call RF_2281
  k_ldl -4
  k_return
OUKYU_F_B140:
  k_func 21
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -15
  k_ldli 0
  k_stln -19
  k_leal -5
  k_stln -7
  k_ldrn -15
  k_add
  k_stln -9
  k_jump OUKYU_L_B1A6
OUKYU_L_B160:
  k_ldln -7
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -21
  k_ldln -21
  k_inc
  k_stln -11
  k_ldln -21
  k_addli 6
  k_stln -17
  k_ldln -11
  k_addli 5
  k_stln -13
  k_jump OUKYU_L_B199
OUKYU_L_B17E:
  k_ldln -11
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf OUKYU_L_B18F
  k_ldln -17
  k_deref
  k_swap
  k_ldln -19
  k_add
  k_stln -19
OUKYU_L_B18F:
  k_ldln -17
  k_addli 2
  k_stln -17
  k_ldln -11
  k_inc
  k_stln -11
OUKYU_L_B199:
  k_ldln -11
  k_ldrn -13
  k_ult
  k_jumpt OUKYU_L_B17E
  k_ldln -7
  k_inc
  k_stln -7
OUKYU_L_B1A6:
  k_ldln -7
  k_ldrn -9
  k_ult
  k_jumpt OUKYU_L_B160
  k_ldln -19
  k_return
OUKYU_F_B1B1:
  k_func 10
  k_ldlba $EF57
  k_stl -6
  k_ldlba $EF69
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -8
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -10
  k_ldl -10
  k_addli 11
  k_derefb
  k_addlib 50
  k_stl -2
  k_ldl -6
  k_shl1
  k_pushl
  k_push -8
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_popr
  k_add
  k_ldriw $1888
  k_add
  k_pushl
  k_callx RL_8898, 2
  k_stl -4
  k_ldl -2
  k_long $25
  k_long $14
  k_ldl -4
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stl -4
  k_ldl -8
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_ldr -6
  k_eq
  k_jumpf OUKYU_L_B22A
  k_ldl -2
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
  k_ldri 2
  k_sdiv
  k_inc
  k_stl -4
OUKYU_L_B22A:
  k_ldl -4
  k_return
OUKYU_F_B22C:
  k_func 0
  k_ldla $E444
  k_return
OUKYU_F_B235:
  k_func 0
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_return
OUKYU_F_B240:
  k_func 0
  k_ldlba $EF61
  k_ldri 2
  k_and
  k_return
OUKYU_F_B24B:
  k_func 0
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B26A
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_B26A
  k_ldlba $EF55
  k_jumpf OUKYU_L_B26E
OUKYU_L_B26A:
  k_ldli 0
  k_jump OUKYU_L_B26F
OUKYU_L_B26E:
  k_ldli 1
OUKYU_L_B26F:
  k_return
OUKYU_F_B270:
  k_func 0
  k_call OUKYU_F_B235
  k_jumpt OUKYU_L_B287
  k_call OUKYU_F_B240
  k_jumpt OUKYU_L_B287
  k_call OUKYU_F_B24B
  k_jumpt OUKYU_L_B28B
OUKYU_L_B287:
  k_ldli 0
  k_jump OUKYU_L_B28C
OUKYU_L_B28B:
  k_ldli 1
OUKYU_L_B28C:
  k_return
OUKYU_F_B28D:
  k_func 0
  k_call OUKYU_F_B235
  k_jumpf OUKYU_L_B2A4
  k_call OUKYU_F_B240
  k_jumpt OUKYU_L_B2A4
  k_call OUKYU_F_B24B
  k_jumpt OUKYU_L_B2A8
OUKYU_L_B2A4:
  k_ldli 0
  k_jump OUKYU_L_B2A9
OUKYU_L_B2A8:
  k_ldli 1
OUKYU_L_B2A9:
  k_return
OUKYU_F_B2AA:
  k_func 0
  k_call OUKYU_F_B235
  k_jumpf OUKYU_L_B2C1
  k_call OUKYU_F_B240
  k_jumpf OUKYU_L_B2C1
  k_call OUKYU_F_B24B
  k_jumpt OUKYU_L_B2C5
OUKYU_L_B2C1:
  k_ldli 0
  k_jump OUKYU_L_B2C6
OUKYU_L_B2C5:
  k_ldli 1
OUKYU_L_B2C6:
  k_return
OUKYU_F_B2C7:
  k_func 0
  k_pushi 1
  k_pushi 1
  k_callx RF_60CE, 4
  k_return
OUKYU_F_B2D3:
  k_func 2
  k_ldla $EE74
  k_stl -2
  k_call OUKYU_F_B2AA
  k_jumpf OUKYU_L_B2EA
  k_ldliw $00FF
  k_stlba $F169
  k_ldli 1
  k_return
OUKYU_L_B2EA:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_B30A
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C820
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B30A:
  k_call OUKYU_F_B270
  k_jumpf OUKYU_L_B354
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C860
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C8AC
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C8FD
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_call RF_472D
OUKYU_L_B354:
  k_ldli 1
  k_return
OUKYU_F_B356:
  k_func 4
  k_ldla $EE74
  k_stl -4
  k_ldliw $E56F
  k_stl -2
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpf OUKYU_L_B434
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B434
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_B434
  k_ldlba $EF55
  k_jumpt OUKYU_L_B434
  k_ldl -2
  k_addli 2
  k_deref
  k_ldriw $8000
  k_and
  k_jumpf OUKYU_L_B434
  k_call OUKYU_F_B2C7
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw $C917
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C92C
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldlba $EE76
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_B3DD
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C944
  k_callx RF_2FB9, 4
  k_ldli 1
  k_swap
  k_ldlba $EE76
  k_add
  k_stlba $EE76
  k_call RF_472D
OUKYU_L_B3DD:
  k_ldlba $EE76
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 3
  k_popr
  k_mul
  k_ldriw $03E8
  k_mul
  k_stla $EF5A
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C965
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushiw $2710
  k_ldla $EF5A
  k_ldriw $03E8
  k_udiv
  k_ldra $EE72
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla $EE72
  k_ldlba $EF57
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_ldrib -1
  k_xor
  k_pushl
  k_ldlba $EF57
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -2
  k_add
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
  k_ldli 0
  k_stlba $EF61
  k_ldli 1
  k_return
OUKYU_L_B434:
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpf OUKYU_L_B4B0
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B4B0
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_B4B0
  k_ldl -2
  k_addli 2
  k_deref
  k_ldriw $8000
  k_and
  k_jumpt OUKYU_L_B4B0
  k_ldlba $EF55
  k_jumpt OUKYU_L_B4B0
  k_call OUKYU_F_B2C7
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $C990
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B486
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C9C6
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B486:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C9E6
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba $EF61
  k_ldl -4
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -4
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_return
OUKYU_L_B4B0:
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpt OUKYU_L_B544
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B544
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_B544
  k_ldlba $EF55
  k_jumpt OUKYU_L_B544
  k_call OUKYU_F_B2C7
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $CA0A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CA39
  k_callx RF_2FB9, 4
  k_pushib 26
  k_pushi 8
  k_callx RF_2F8F, 4
  k_ldlba $EF57
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CA62
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CA92
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B546
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CABE
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_call RF_472D
OUKYU_L_B544:
  k_ldli 1
  k_return
OUKYU_L_B546:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CADA
  k_callx RF_2FB9, 4
  k_ldl -4
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -4
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_stlba $EF61
  k_call RF_472D
  k_ldli 0
  k_return
OUKYU_F_B570:
  k_func 1
  k_ldlbf 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlbf 11
  k_dec
  k_ldri 5
  k_udiv
  k_stlbf -1
  k_ldlbf -1
  k_ldri 3
  k_eq
  k_jumpf OUKYU_L_B59E
  k_pushi 0
  k_pushiw $CAE6
  k_jump OUKYU_L_B5A2
OUKYU_L_B59E:
  k_pushi 0
  k_pushiw $CAEC
OUKYU_L_B5A2:
  k_callx RF_2FB9, 4
  k_ldlbf -1
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_return
OUKYU_F_B5B9:
  k_func 2
  k_ldla $EE74
  k_stl -2
  k_call OUKYU_F_B2AA
  k_jumpf OUKYU_L_B635
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CAF3
  k_callx RF_2FB9, 4
  k_ldlba $EE76
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_B5F5
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CB1B
  k_callx RF_2FB9, 4
  k_ldli 1
  k_swap
  k_ldlba $EE76
  k_add
  k_stlba $EE76
OUKYU_L_B5F5:
  k_ldlba $EE76
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 3
  k_popr
  k_mul
  k_ldriw $03E8
  k_mul
  k_stla $EF5A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CB3B
  k_callx RF_2FB9, 4
  k_pushiw $2710
  k_ldla $EF5A
  k_ldriw $03E8
  k_udiv
  k_ldra $EE72
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla $EE72
  k_ldli 0
  k_stlba $EF61
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B635:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_B689
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CB66
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B65F
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CB9A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B65F:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CBCB
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba $EF61
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_return
OUKYU_L_B689:
  k_call OUKYU_F_B270
  k_jumpf OUKYU_L_B6ED
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CBE7
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CC16
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B570, 2
  k_pushi 0
  k_pushiw $CC21
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CC40
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B6EF
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CC7A
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_call RF_472D
OUKYU_L_B6ED:
  k_ldli 1
  k_return
OUKYU_L_B6EF:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CC90
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba $EF61
  k_call RF_472D
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_return
OUKYU_F_B719:
  k_func 0
  k_pushi 1
  k_ldlba $EF69
  k_inc
  k_pushl
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw $CCA5
  k_callx RF_2FB9, 4
  k_call OUKYU_F_B22C
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CCBC
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $CCD5
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CD0E
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_ldlba $EF69
  k_inc
  k_pushl
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CD3D
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldli 2
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_return
OUKYU_F_B79C:
  k_func 2
  k_ldla $EE74
  k_stl -2
  k_call OUKYU_F_B2AA
  k_jumpf OUKYU_L_B818
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CD7F
  k_callx RF_2FB9, 4
  k_ldlba $EE76
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_B7D8
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CDAB
  k_callx RF_2FB9, 4
  k_ldli 1
  k_swap
  k_ldlba $EE76
  k_add
  k_stlba $EE76
OUKYU_L_B7D8:
  k_ldlba $EE76
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 3
  k_popr
  k_mul
  k_ldriw $03E8
  k_mul
  k_stla $EF5A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CDCA
  k_callx RF_2FB9, 4
  k_pushiw $2710
  k_ldla $EF5A
  k_ldriw $03E8
  k_udiv
  k_ldra $EE72
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla $EE72
  k_ldli 0
  k_stlba $EF61
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B818:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_B86C
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CDFA
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B842
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CE33
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B842:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CE4C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba $EF61
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_return
OUKYU_L_B86C:
  k_call OUKYU_F_B270
  k_jumpf OUKYU_L_B8F1
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CE7A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CEAF
  k_callx RF_2FB9, 4
  k_pushi 0
  k_ldlba $EF57
  k_ldri 2
  k_eq
  k_jumpf OUKYU_L_B89D
  k_ldliw $CEE3
  k_jump OUKYU_L_B8A0
OUKYU_L_B89D:
  k_ldliw $CEEA
OUKYU_L_B8A0:
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw $CEEF
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CEF4
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B8F3
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CF13
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_call RF_472D
OUKYU_L_B8F1:
  k_ldli 1
  k_return
OUKYU_L_B8F3:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CF2B
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba $EF61
  k_call RF_472D
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -2
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_return
OUKYU_F_B91D:
  k_func 15
  k_leal -8
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stlbf -3
  k_ldli 0
  k_jump OUKYU_L_B9A3
OUKYU_L_B932:
  k_leal -8
  k_pushl
  k_ldlbf -9
  k_popr
  k_add
  k_derefb
  k_stlbf -11
  k_ldlbf -11
  k_ldrib 24
  k_mul
  k_ldriw $E9A7
  k_add
  k_stln -13
  k_ldlbf -11
  k_ldrib 24
  k_mul
  k_ldriw $E9AC
  k_add
  k_stln -15
  k_ldli 0
  k_jump OUKYU_L_B994
OUKYU_L_B95B:
  k_ldlbf 11
  k_pushl
  k_ldlbf -10
  k_ldrn -13
  k_add
  k_derefb
  k_popr
  k_eq
  k_jumpf OUKYU_L_B990
  k_ldlarg 13
  k_jumpf OUKYU_L_B990
  k_pusharg 13
  k_ldlbf -10
  k_shl1
  k_ldrn -15
  k_add
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_stl -2
  k_push -2
  k_ldlbf -10
  k_shl1
  k_ldrn -15
  k_add
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldl -2
  k_swap
  k_ldlarg 13
  k_sub
  k_stlarg 13
OUKYU_L_B990:
  k_ldlbf -10
  k_inc
OUKYU_L_B994:
  k_stlbf -10
  k_ldlbf -10
  k_ldri 5
  k_ult
  k_jumpt OUKYU_L_B95B
  k_ldlbf -9
  k_inc
OUKYU_L_B9A3:
  k_stlbf -9
  k_ldlbf -3
  k_pushl
  k_ldlbf -9
  k_popr
  k_ult
  k_jumpt OUKYU_L_B932
  k_return
OUKYU_F_B9B3:
  k_func 10
  k_ldla $EE74
  k_stl -6
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_BA8B
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_jumpf OUKYU_L_BA8B
  k_pushi 1
  k_pushi 1
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CF48
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_ldra $EF58
  k_ult
  k_jumpf OUKYU_L_BA3A
  k_pushi 1
  k_pushiw $CF6F
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BA10
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CFA5
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
OUKYU_L_BA10:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CFC7
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_stlba $EF61
  k_ldli 0
  k_return
OUKYU_L_BA3A:
  k_pusha $EF58
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B91D, 4
  k_pushi 1
  k_pushiw $CFF1
  k_callx RF_2FB9, 4
  k_ldlba $EE76
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_BA5E
  k_ldli 1
  k_swap
  k_ldlba $EE76
  k_add
  k_stlba $EE76
OUKYU_L_BA5E:
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D015
  k_callx RF_2FB9, 4
  k_pushiw $2710
  k_ldla $EF5A
  k_ldriw $03E8
  k_udiv
  k_ldra $EE72
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla $EE72
  k_ldli 0
  k_stlba $EF61
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_BA8B:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_BADF
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D04A
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BAB5
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D07C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_BAB5:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D08E
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_stlba $EF61
  k_ldli 0
  k_return
OUKYU_L_BADF:
  k_call OUKYU_F_B270
  k_jumpf OUKYU_L_BC48
  k_call OUKYU_F_B1B1
  k_stl -4
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D0B3
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $D0EB
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldlba $EE76
  k_inc
  k_ldriw $07D0
  k_mul
  k_ldr -4
  k_udiv
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_pushl
  k_pushi 0
  k_callx RF_4190, 2
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
  k_ldri 2
  k_sdiv
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stl -2
  k_ldl -2
  k_stla $EF58
  k_ldlba $EE76
  k_inc
  k_ldriw $07D0
  k_mul
  k_stla $EF5A
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_jumpf OUKYU_L_BC74
  k_call RF_60B2
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_pushl
  k_pushiw $D117
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_push -2
  k_pushiw $D14D
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BC4A
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D182
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D1BF
  k_callx RF_2FB9, 4
  k_ldla $E56D
  k_long $26
  k_long $14
  k_ldl -4
  k_long $26
  k_long $14
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_long $26
  k_long $15
  k_long $01
  k_long $15
  k_long $03
  k_longw $0E, $FFF6
  k_longw $0C, $FFF6
  k_longd $19, $0000EE48
  k_long $0A
  k_jumpf OUKYU_L_BC0C
  k_pushiw $2710
  k_longw $0C, $FFF6
  k_longd $19, $FFFF15A0
  k_long $03
  k_longd $19, $000003E8
  k_long $02
  k_long $27
  k_ldra $EE72
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla $EE72
  k_ldliw $EA60
  k_jump OUKYU_L_BC28
OUKYU_L_BC0C:
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_ldr -4
  k_mul
  k_pushl
  k_ldliw $EA60
  k_ldra $E56D
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla $E56D
  k_add
OUKYU_L_BC28:
  k_stla $E56D
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_pushl
  k_ldlba $EF57
  k_pushl
  k_callx OUKYU_F_B91D, 4
OUKYU_L_BC3C:
  k_ldli 8
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_call RF_472D
OUKYU_L_BC48:
  k_ldli 1
  k_return
OUKYU_L_BC4A:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D1EC
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba $EF61
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_call RF_472D
  k_ldli 0
  k_return
OUKYU_L_BC74:
  k_call RF_60B2
  k_push -2
  k_pushiw $D21A
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D23D
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BCA1
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D269
  k_callx RF_2FB9, 4
  k_jump OUKYU_L_BC3C
OUKYU_L_BCA1:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D293
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba $EF61
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -6
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_call RF_472D
  k_ldli 0
  k_return
OUKYU_F_BCCB:
  k_func 0
  k_pushiw $2000
  k_pushi 12
  k_pushib 26
  k_pushi 7
  k_pushi 3
  k_pushi 3
  k_callx RF_604A, 12
  k_ldlarg 11
  k_jumpt OUKYU_L_BCEC
  k_pushi 0
  k_pushi 0
  k_pushi 14
  k_pushib 28
  k_pushi 6
  k_pushi 2
  k_callx RF_4F65, 12
OUKYU_L_BCEC:
  k_pushi 1
  k_pushiw $D2C9
  k_callx RF_2FB9, 4
  k_pushi 7
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $D2CD
  k_callx RF_2FB9, 4
  k_pushi 8
  k_pushi 4
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $D2D5
  k_callx RF_2FB9, 4
  k_return
OUKYU_F_BD12:
  k_func 64
  k_ldli 0
  k_stln -56
  k_ldli 0
  k_stln -58
  k_jump OUKYU_L_BD49
OUKYU_L_BD20:
  k_ldln -56
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_pushl
  k_ldlba $EF69
  k_inc
  k_popr
  k_eq
  k_jumpf OUKYU_L_BD44
  k_leal -50
  k_pushl
  k_ldln -58
  k_popr
  k_add
  k_pushl
  k_ldln -56
  k_popstoreb
  k_ldln -58
  k_inc
  k_stln -58
OUKYU_L_BD44:
  k_ldln -56
  k_inc
  k_stln -56
OUKYU_L_BD49:
  k_ldln -56
  k_ldrib 50
  k_ult
  k_jumpt OUKYU_L_BD20
  k_ldln -58
  k_ldri 2
  k_shr
  k_stln -60
  k_ldli 0
  k_stln -64
  k_ldli 0
  k_jump OUKYU_L_BE1A
OUKYU_L_BD5E:
  k_leal -50
  k_pushl
  k_ldln -56
  k_popr
  k_add
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -62
  k_ldln -56
  k_ldri 3
  k_and
  k_jumpt OUKYU_L_BD7D
  k_pushn -64
  k_callx OUKYU_F_BCCB, 2
OUKYU_L_BD7D:
  k_leal -50
  k_pushl
  k_ldln -56
  k_popr
  k_add
  k_derefb
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stln -52
  k_ldln -56
  k_ldri 3
  k_and
  k_shl1
  k_addli 10
  k_pushl
  k_pushi 4
  k_callx RF_2F8F, 4
  k_pushn -62
  k_callx RF_40DE, 2
  k_ldln -56
  k_ldri 3
  k_and
  k_shl1
  k_addli 10
  k_pushl
  k_pushib 24
  k_callx RF_2F8F, 4
  k_ldlba $EF69
  k_ldrn -52
  k_add
  k_derefb
  k_pushl
  k_pushiw $D2EE
  k_callx RF_3608, 4
  k_ldln -56
  k_ldri 3
  k_and
  k_ldri 3
  k_eq
  k_jumpf OUKYU_L_BE17
  k_ldln -58
  k_ldri 2
  k_shr
  k_ldrn -60
  k_sub
  k_inc
  k_shl1
  k_shl1
  k_ldrn -58
  k_eq
  k_jumpf OUKYU_L_BDD6
  k_return
OUKYU_L_BDD6:
  k_ldln -60
  k_ldri 1
  k_uge
  k_jumpf OUKYU_L_BE17
  k_pushib 18
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $D2F2
  k_callx RF_2FB9, 4
  k_ldln -60
  k_dec
  k_stln -60
OUKYU_L_BDF1:
  k_pushi 0
  k_callx RF_362A, 2
  k_stln -54
  k_ldln -54
  k_ldriw $8000
  k_eq
  k_jumpf OUKYU_L_BE02
  k_return
OUKYU_L_BE02:
  k_ldln -54
  k_ldriw $0080
  k_eq
  k_jumpf OUKYU_L_BE0E
  k_ldli 1
  k_stln -64
OUKYU_L_BE0E:
  k_ldln -54
  k_ldriw $0080
  k_ne
  k_jumpt OUKYU_L_BDF1
OUKYU_L_BE17:
  k_ldln -56
  k_inc
OUKYU_L_BE1A:
  k_stln -56
  k_ldln -56
  k_ldrn -58
  k_ult
  k_jumpt OUKYU_L_BD5E
  k_return
OUKYU_F_BE25:
  k_func 3
  k_ldlba $EE76
  k_stlbf -1
  k_ldli 1
  k_stln -3
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpf OUKYU_L_BE5C
  k_ldlba $EF56
  k_ldri 1
  k_eq
  k_jumpf OUKYU_L_BE5C
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF57
  k_popr
  k_eq
  k_jumpf OUKYU_L_BE5C
  k_ldlba $EF61
  k_ldri 2
  k_and
  k_jumpt OUKYU_L_BE5C
  k_call OUKYU_F_B719
  k_ldli 0
  k_return
OUKYU_L_BE5C:
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_BEA3
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_BEA3
  k_ldlba $EF55
  k_jumpt OUKYU_L_BEA3
  k_ldlba $EF56
  k_ldri 4
  k_ne
  k_jumpt OUKYU_L_BE84
  k_call OUKYU_F_B2AA
  k_jumpt OUKYU_L_BE8A
OUKYU_L_BE84:
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
OUKYU_L_BE8A:
  k_ldlba $EF56
  k_shl1
  k_ldriw $D303
  k_add
  k_deref
  k_callptr
  k_stln -3
  k_ldlba $F169
  k_jumpf OUKYU_L_BE9E
  k_ldli 1
  k_return
OUKYU_L_BE9E:
  k_call RF_2281
  k_ldli 0
  k_return
OUKYU_L_BEA3:
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_BEBD
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_BEBD
  k_ldlba $EF55
  k_jumpf OUKYU_L_BF2D
OUKYU_L_BEBD:
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $D30D
  k_callx RF_4B44, 2
  k_call RF_60B2
  k_ldlbf -1
  k_ldri 5
  k_udiv
  k_jumpt OUKYU_L_BEED
  k_ldlbf -1
  k_addli 3
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt OUKYU_L_BEED
  k_pushiw $D322
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_BEED:
  k_pushiw $D35D
  k_callx RF_4B44, 2
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_pushi 1
  k_ldlba $EF69
  k_inc
  k_pushl
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 0
  k_pushiw $D37A
  k_callx RF_2FB9, 4
  k_call OUKYU_F_B22C
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $D384
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
OUKYU_L_BF2D:
  k_call RF_60B2
  k_pushiw $D38F
  k_callx RF_4B44, 2
  k_call OUKYU_F_BD12
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D3C5
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call $97BE
  k_ldliw $00F0
  k_stlba $EF65
  k_ldli 0
  k_return
OUKYU_F_BF53:
  k_func 8
  k_ldla $E56D
  k_stl -2
  k_ldliw $2710
  k_ldra $EE72
  k_le
  k_jumpf OUKYU_L_BF72
  k_call RF_60B2
  k_pushiw $D3EA
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_BF72:
  k_ldl -2
  k_ldriw $03E8
  k_ult
  k_jumpf OUKYU_L_BF8B
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $D402
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_BF8B:
  k_call RF_60B2
  k_pushiw $D41B
  k_callx RF_4B44, 2
  k_ldl -2
  k_ldriw $03E8
  k_udiv
  k_stl -6
  k_call RF_60B2
  k_push -6
  k_pushiw $D43D
  k_callx RF_3619, 4
  k_ldl -6
  k_ldri 9
  k_ugt
  k_jumpf OUKYU_L_BFB5
  k_ldli 1
  k_stl -8
  k_pushi 1
  k_pushiw $D466
  k_jump OUKYU_L_BFBB
OUKYU_L_BFB5:
  k_ldli 0
  k_stl -8
  k_pushi 1
  k_pushiw $D46C
OUKYU_L_BFBB:
  k_callx RF_2FB9, 4
  k_pushib 25
  k_ldl -8
  k_addlib 21
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_push -6
  k_pushi 1
  k_callx RF_3935, 6
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf OUKYU_L_BFDA
  k_ldli 0
  k_return
OUKYU_L_BFDA:
  k_ldl -4
  k_swap
  k_ldla $EE72
  k_add
  k_stla $EE72
  k_ldl -4
  k_ldriw $03E8
  k_mul
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_ldla $EE72
  k_ldriw $2710
  k_gt
  k_jumpf OUKYU_L_C01E
  k_call RF_60B2
  k_pushiw $D471
  k_callx RF_4B44, 2
  k_ldla $EE72
  k_addliw $D8F0
  k_stl -4
  k_ldliw $2710
  k_stla $EE72
  k_ldl -4
  k_ldriw $03E8
  k_mul
  k_swap
  k_ldla $E56D
  k_add
  k_stla $E56D
OUKYU_L_C01E:
  k_call RF_60B2
  k_pushiw $D489
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
OUKYU_F_C02A:
  k_func 8
  k_ldla $E56D
  k_stl -2
  k_ldl -2
  k_long $26
  k_longd $19, $0000E678
  k_long $2B
  k_jumpf OUKYU_L_C052
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $D4A9
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_C052:
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $D4C1
  k_callx RF_4B44, 2
  k_pusha $EE72
  k_ldl -2
  k_ldriw $03E8
  k_udiv
  k_pushl
  k_ldlib 60
  k_popr
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_stl -6
  k_ldl -6
  k_ldriw $03E8
  k_mul
  k_ldr -2
  k_add
  k_ldriw $EA60
  k_ugt
  k_jumpf OUKYU_L_C08A
  k_ldl -6
  k_dec
  k_jump OUKYU_L_C08B
OUKYU_L_C08A:
  k_ldl -6
OUKYU_L_C08B:
  k_stl -6
  k_call RF_60B2
  k_push -6
  k_pushiw $D4E5
  k_callx RF_3619, 4
  k_ldl -6
  k_ldri 9
  k_ugt
  k_jumpf OUKYU_L_C0A6
  k_ldli 1
  k_stl -8
  k_pushi 1
  k_pushiw $D50F
  k_jump OUKYU_L_C0AC
OUKYU_L_C0A6:
  k_ldli 0
  k_stl -8
  k_pushi 1
  k_pushiw $D515
OUKYU_L_C0AC:
  k_callx RF_2FB9, 4
  k_pushib 25
  k_ldl -8
  k_addlib 21
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 1
  k_push -6
  k_pushi 1
  k_callx RF_3935, 6
  k_stl -4
  k_ldl -4
  k_ldrib -1
  k_eq
  k_jumpf OUKYU_L_C0CB
  k_ldli 0
  k_return
OUKYU_L_C0CB:
  k_ldl -4
  k_swap
  k_ldla $EE72
  k_sub
  k_stla $EE72
  k_ldl -4
  k_ldriw $03E8
  k_mul
  k_swap
  k_ldla $E56D
  k_add
  k_stla $E56D
  k_ldla $EE72
  k_jumpt OUKYU_L_C0F5
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D51A
  k_callx RF_2FB9, 4
  k_jump OUKYU_L_C102
OUKYU_L_C0F5:
  k_call RF_60B2
  k_pusha $EE72
  k_pushiw $D537
  k_callx RF_3619, 4
OUKYU_L_C102:
  k_pushi 2
  k_callx RF_3DDF, 2
  k_call RF_60B2
  k_pushiw $D556
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
OUKYU_F_C113:
  k_func 6
  k_ldla $EE72
  k_stl -2
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_ldli 0
  k_stl -6
  k_ldli 0
  k_stlbf -3
  k_ldl -2
  k_jumpt OUKYU_L_C13C
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $D591
  k_callx RF_4B44, 2
  k_ldli 1
  k_jump OUKYU_L_C14F
OUKYU_L_C13C:
  k_pushi 1
  k_callx RF_609A, 2
  k_push -2
  k_pushiw $D5B3
  k_callx RF_3619, 4
  k_pushi 2
  k_callx RF_3DDF, 2
  k_ldli 2
OUKYU_L_C14F:
  k_stlbf -3
OUKYU_L_C152:
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D5D3
  k_callx RF_2FB9, 4
  k_pushi 1
  k_ldlbf -3
  k_pushl
  k_pushiw $D57C
  k_pushi 1
  k_pushi 9
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -4
  k_ldlbf -4
  k_ldriw $00FF
  k_ne
  k_jumpf OUKYU_L_C191
  k_ldlbf -4
  k_jumpt OUKYU_L_C18D
  k_call OUKYU_F_BF53
  k_jump OUKYU_L_C190
OUKYU_L_C18D:
  k_call OUKYU_F_C02A
OUKYU_L_C190:
  k_stl -6
OUKYU_L_C191:
  k_ldlbf -4
  k_ldriw $00FF
  k_eq
  k_jumpt OUKYU_L_C19F
  k_ldl -6
  k_jumpf OUKYU_L_C152
OUKYU_L_C19F:
  k_ldli 0
  k_return
OUKYU_F_C1A1:
  k_func 15
  k_ldla $EED0
  k_stl -2
  k_pushi 0
  k_callx RF_4119, 2
  k_stl -6
  k_pushi 0
  k_callx RF_4604, 2
  k_stl -8
  k_ldl -6
  k_ldr -8
  k_eq
  k_jumpf OUKYU_L_C1CD
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $D5E6
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_C1CD:
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_ldl -2
  k_ldri 10
  k_le
  k_jumpf OUKYU_L_C1E7
  k_pushiw $D602
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_C1E7:
  k_ldl -8
  k_ldr -6
  k_sub
  k_stl -10
  k_push -2
  k_push -10
  k_callx RL_8962, 4
  k_stl -4
  k_push -4
  k_pushiw $D635
  k_callx RF_3619, 4
  k_push -4
  k_pushi 1
  k_pushiw $D660
  k_callx RF_3C6D, 6
  k_stl -12
  k_ldl -12
  k_ldrib -1
  k_eq
  k_jumpf OUKYU_L_C20D
  k_ldli 0
  k_return
OUKYU_L_C20D:
  k_ldl -12
  k_swap
  k_ldla $EED0
  k_sub
  k_stla $EED0
  k_call RF_60B2
  k_pushiw $D669
  k_callx RF_4B44, 2
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $D68C
  k_callx RF_4B44, 2
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_call $9662
  k_pushi 7
  k_pushi 9
  k_push -12
  k_callx RF_6C1E, 6
  k_stln -15
  k_call $97BE
  k_ldliw $00F0
  k_stlba $EF65
  k_ldln -15
  k_ldri 1
  k_eq
  k_jumpf OUKYU_L_C255
  k_ldli 0
  k_return
OUKYU_L_C255:
  k_ldl -12
  k_swap
  k_ldla $EED0
  k_add
  k_stla $EED0
  k_ldln -15
  k_return
OUKYU_F_C261:
  k_func 8
  k_ldla $EECE
  k_stl -2
  k_ldla $E56D
  k_stl -6
  k_ldl -6
  k_ldriw $E678
  k_ugt
  k_jumpf OUKYU_L_C285
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $D6AC
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_C285:
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_ldl -2
  k_ldrib 100
  k_le
  k_jumpf OUKYU_L_C2A0
  k_pushiw $D6C9
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_C2A0:
  k_ldl -2
  k_ldriw $1770
  k_ge
  k_jumpf OUKYU_L_C2B0
  k_ldliw $EA60
  k_ldr -6
  k_sub
  k_jump OUKYU_L_C2BE
OUKYU_L_C2B0:
  k_ldl -2
  k_ldri 10
  k_mul
  k_pushl
  k_ldliw $EA60
  k_ldr -6
  k_sub
  k_pushl
  k_callx RL_8962, 4
OUKYU_L_C2BE:
  k_stl -4
  k_ldl -4
  k_ldriw $03E8
  k_udiv
  k_ldriw $03E8
  k_mul
  k_stl -4
  k_push -4
  k_pushiw $D6FB
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_push -4
  k_pushi 1
  k_pushiw $D729
  k_callx RF_3C6D, 6
  k_stl -8
  k_ldl -8
  k_ldrib -1
  k_eq
  k_jumpf OUKYU_L_C2EA
  k_ldli 0
  k_return
OUKYU_L_C2EA:
  k_ldl -8
  k_swap
  k_ldla $E56D
  k_add
  k_stla $E56D
  k_ldl -8
  k_ldri 10
  k_udiv
  k_inc
  k_swap
  k_ldla $EECE
  k_sub
  k_stla $EECE
  k_call RF_60B2
  k_pushiw $D73D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_F_C30B:
  k_func 6
  k_ldlbf 11
  k_jumpt OUKYU_L_C321
  k_ldli 0
  k_stl -2
  k_ldlib 55
  k_stl -4
  k_ldliw $009E
  k_jump OUKYU_L_C33C
OUKYU_L_C321:
  k_ldlbf 11
  k_ldri 3
  k_ult
  k_jumpf OUKYU_L_C334
  k_ldli 1
  k_stl -2
  k_ldlib 60
  k_stl -4
  k_ldliw $0088
  k_jump OUKYU_L_C33C
OUKYU_L_C334:
  k_ldli 2
  k_stl -2
  k_ldlib 63
  k_stl -4
  k_ldliw $0090
OUKYU_L_C33C:
  k_stl -6
  k_pushi 0
  k_pushi 5
  k_pushi 7
  k_pushi 5
  k_pushib 23
  k_pushi 1
  k_callx RF_604A, 12
  k_pushi 0
  k_pushi 0
  k_pushib 56
  k_callx RL_21BE, 6
  k_pushib 126
  k_ldl -2
  k_ldriw $00F7
  k_mul
  k_ldriw $D945
  k_add
  k_pushl
  k_pushib 38
  k_pushi 4
  k_pushib 73
  k_callx RL_21BE, 10
  k_call OUKYU_L_C718
  k_pushiw $00E0
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx RL_21BE, 8
  k_push -4
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx RL_21BE, 8
  k_push -6
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx RL_21BE, 8
  k_return
OUKYU_F_C38C:
  k_func 11
  k_ldlba $E442
  k_stlbf -6
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_C3D1
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf OUKYU_L_C3D1
  k_ldlba $EF55
  k_jumpt OUKYU_L_C3D1
  k_ldlba $EF56
  k_ldri 4
  k_eq
  k_jumpf OUKYU_L_C3D1
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $DC2A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_C3D1:
  k_pushib 100
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlbf -6
  k_popr
  k_ult
  k_jumpf OUKYU_L_C416
  k_ldlba $EE76
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_ldri 3
  k_ult
  k_jumpf OUKYU_L_C416
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $DC59
  k_callx RF_4B44, 2
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $DC9B
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
OUKYU_L_C416:
  k_call RF_2281
  k_pushi 1
  k_pushi 10
  k_callx RF_21EA, 4
  k_ldlbf -6
  k_ldrib 45
  k_udiv
  k_stlbf -1
  k_ldli 1
  k_stla $F9B0
  k_ldlbf -1
  k_pushl
  k_callx OUKYU_F_C30B, 2
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw $DCC3
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $DCC9
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $DCE7
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlbf -1
  k_jumpf OUKYU_L_C48F
  k_ldlbf -1
  k_pushl
  k_ldli 5
  k_popr
  k_sub
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_callx RF_3F3E, 2
  k_jump OUKYU_L_C490
OUKYU_L_C48F:
  k_ldli 1
OUKYU_L_C490:
  k_stlbf -2
  k_ldlbf -6
  k_ldrib 100
  k_ult
  k_jumpf OUKYU_L_C4AF
  k_ldlbf -6
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_ldri 10
  k_udiv
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
  k_jump OUKYU_L_C4B0
OUKYU_L_C4AF:
  k_ldli 0
OUKYU_L_C4B0:
  k_stlbf -7
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_ldlbf -1
  k_shl1
  k_ldriw $D762
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_ldlbf -1
  k_shl1
  k_ldriw $D821
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldla $E56D
  k_ldriw $0190
  k_ult
  k_jumpf OUKYU_L_C4F9
  k_ldli 2
  k_jump OUKYU_L_C4FA
OUKYU_L_C4F9:
  k_ldli 3
OUKYU_L_C4FA:
  k_stlbf -3
  k_call RF_6080
OUKYU_L_C500:
  k_pushi 3
  k_ldlbf -3
  k_pushl
  k_pushiw $D925
  k_pushi 2
  k_pushi 0
  k_pushib 21
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -4
  k_ldlbf -4
  k_ldriw $00FF
  k_eq
  k_jumpt OUKYU_L_C500
  k_ldlbf -4
  k_jumpt OUKYU_L_C579
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $DD0B
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlba $EAC3
  k_jump OUKYU_L_C56D
OUKYU_L_C540:
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $DD2C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $DD4E
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlba $EAC2
OUKYU_L_C56D:
  k_ldri 15
  k_mul
  k_ldrib 100
  k_udiv
  k_addli 5
  k_stlbf -5
  k_jump OUKYU_L_C688
OUKYU_L_C579:
  k_ldlbf -4
  k_ldri 1
  k_eq
  k_jumpt OUKYU_L_C540
  k_ldliw $E56F
  k_stln -11
  k_ldli 0
  k_stlbf -8
  k_ldli 15
  k_jump OUKYU_L_C5B1
OUKYU_L_C58E:
  k_ldlbf -9
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_ldlbf -9
  k_ldri 4
  k_shr
  k_shl1
  k_ldrn -11
  k_add
  k_deref
  k_popr
  k_and
  k_jumpf OUKYU_L_C5AD
  k_ldlbf -9
  k_stlbf -8
OUKYU_L_C5AD:
  k_ldlbf -9
  k_inc
OUKYU_L_C5B1:
  k_stlbf -9
  k_ldlbf -9
  k_ldrib 30
  k_ule
  k_jumpt OUKYU_L_C58E
  k_ldlbf -8
  k_jumpf OUKYU_L_C637
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw $DD66
  k_callx RF_2FB9, 4
  k_ldlbf -8
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $DD83
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $DD93
  k_callx RF_2FB9, 4
  k_ldlbf -3
  k_shl1
  k_ldriw $1825
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldrib 40
  k_mul
  k_stlbf -5
  k_ldlbf -8
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_ldrib -1
  k_xor
  k_pushl
  k_ldlbf -8
  k_ldri 4
  k_shr
  k_shl1
  k_ldrn -11
  k_add
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
  k_jump OUKYU_L_C685
OUKYU_L_C637:
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $DDB1
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldliw $012C
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_ldlbf -7
  k_jumpt OUKYU_L_C674
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $DDD1
  k_callx RF_2FB9, 4
  k_ldlib 20
  k_jump OUKYU_L_C682
OUKYU_L_C674:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw $DDE0
  k_callx RF_2FB9, 4
  k_ldli 0
OUKYU_L_C682:
  k_stlbf -5
OUKYU_L_C685:
  k_call RF_472D
OUKYU_L_C688:
  k_ldlbf -6
  k_ldriw $00C8
  k_ult
  k_jumpf OUKYU_L_C6AE
  k_pushiw $00C8
  k_ldlbf -5
  k_pushl
  k_ldlbf -6
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stlba $E442
OUKYU_L_C6AE:
  k_ldlbf -2
  k_jumpt OUKYU_L_C6E4
  k_ldla $EECE
  k_ldriw $1388
  k_lt
  k_jumpf OUKYU_L_C6C9
  k_ldliw $03E8
  k_swap
  k_ldla $EECE
  k_add
  k_stla $EECE
OUKYU_L_C6C9:
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 0
  k_pushiw $DE0B
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
OUKYU_L_C6E4:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $DE4C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushib 74
  k_callx RL_21BE, 2
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx RL_21BE, 6
  k_call RF_2281
  k_ldli 1
  k_return
OUKYU_L_C718:
  php
  sep #$20
.a8
  lda #$F0
  sta f:$002125
  lda #$04
  sta f:$00212B
  plp
  rtl
  .byte $00, $32, $C7, $38, $C7, $61, $C2, $A1, $C1
  .byte "Funds"
  .byte $00
  .byte "Crew"
  .byte $00
  .byte "What do you need?"
  .byte $00, $5F, $C7, $69, $C7, $75, $C7, $7D, $C7, $25, $BE, $8C, $C3, $0F, $B0, $13
  .byte $C1
  .byte "Meet King"
  .byte $00
  .byte "Secret Call"
  .byte $00
  .byte "Request"
  .byte $00
  .byte "Savings"
  .byte $00, $0A
  .byte "Announcing Sir"
  .byte $0A, $0A, $00, $21, $00
  .byte "Commoners are not"
  .byte $0A
  .byte "allowed in the palace.Get out!"
  .byte $00
  .byte "His Majesty does not"
  .byte $0A
  .byte "meet with foreigners."
  .byte $0A
  .byte "Leave here at once!"
  .byte $00
  .byte "What brings you here?"
  .byte $00, $00, $0A
  .byte "Haven't you rescued"
  .byte $0A
  .byte "the princess yet?"
  .byte $0A
  .byte "Go find her"
  .byte $0A
  .byte "immediately!"
  .byte $00, $0A
  .byte "Thank you for coming."
  .byte $0A
  .byte "Something terrible hashappened, and I need"
  .byte $0A
  .byte "your help"
  .byte $00, $0A
  .byte "The princess has been"
  .byte $0A
  .byte "kidnapped! I think"
  .byte $0A
  .byte "the villains will"
  .byte $0A
  .byte "demand a ransom soon"
  .byte $00
  .byte "You've got to rescue"
  .byte $0A
  .byte "her!"
  .byte $00, $0A
  .byte "Ah, the legendary"
  .byte $0A, $0A, $00, $21, $20, $49, $0A, $0A
  .byte "knew you'd find it"
  .byte $00
  .byte "Bestow this man with"
  .byte $0A
  .byte "a new title"
  .byte $00
  .byte "I'll deposit your"
  .byte $0A
  .byte "reward into your"
  .byte $0A
  .byte "savings"
  .byte $00
  .byte "Welcome back. What, notreasure? Will you"
  .byte $0A
  .byte "search again"
  .byte $00
  .byte "Then get going! I'll"
  .byte $0A
  .byte "be waiting"
  .byte $00
  .byte "Giving up already?"
  .byte $0A
  .byte "How unfortunate!"
  .byte $00
  .byte "Thank you for coming."
  .byte $0A
  .byte "I have a request to"
  .byte $0A
  .byte "make"
  .byte $00
  .byte "You see, I'm searchingfor the celebrated"
  .byte $00
  .byte "I thought you might"
  .byte $0A
  .byte "be able to locate it"
  .byte $0A
  .byte "for me"
  .byte $00
  .byte "I'll reward you"
  .byte $0A
  .byte "handsomely. What do"
  .byte $0A
  .byte "you say"
  .byte $00
  .byte "Good! I know you'll"
  .byte $0A
  .byte "succeed"
  .byte $00
  .byte "What a pity"
  .byte $00, $0A
  .byte "the "
  .byte $00, $0A
  .byte "from "
  .byte $00
  .byte "Well done!  At last"
  .byte $0A
  .byte "there will be peace"
  .byte $00
  .byte "Bestow this man with anew title"
  .byte $00
  .byte "I'll deposit your"
  .byte $0A
  .byte "reward into your"
  .byte $0A
  .byte "savings"
  .byte $00
  .byte "You haven't caught"
  .byte $0A
  .byte "him yet? You'll try"
  .byte $0A
  .byte "again, right"
  .byte $00
  .byte "Then hurry! The"
  .byte $0A
  .byte "commotion is troublingthe people"
  .byte $00
  .byte "No? I'm disappointed"
  .byte $0A
  .byte "in you"
  .byte $00
  .byte "I'm glad you came."
  .byte $0A
  .byte "I have something to"
  .byte $0A
  .byte "request"
  .byte $00, $0A
  .byte "You see, "
  .byte $00, $20, $69, $73, $0A
  .byte "wreaking havoc in"
  .byte $0A
  .byte "the area"
  .byte $00
  .byte "If you can stop him,"
  .byte $0A
  .byte "I'll reward you well."
  .byte $0A
  .byte "Will you do it"
  .byte $00
  .byte "Good. I wish you"
  .byte $0A
  .byte "luck"
  .byte $00
  .byte "No? I'm disappointed"
  .byte $00, $0A
  .byte "So, it's the famous"
  .byte $0A, $0A, $00
  .byte ". What"
  .byte $0A, $0A
  .byte "brings you here?"
  .byte $00
  .byte "Your Majesty, I bring"
  .byte $0A
  .byte "a letter from the"
  .byte $0A
  .byte "King of Portugal"
  .byte $00
  .byte "I hope the contents"
  .byte $0A
  .byte "will be protected"
  .byte $0A
  .byte "with you"
  .byte $00, $0A
  .byte "Yes, I understand."
  .byte $0A
  .byte "Please give my regardsto the King of"
  .byte $0A
  .byte "Portugal"
  .byte $00
  .byte "Thank you, you've"
  .byte $0A
  .byte "done an excellent"
  .byte $0A
  .byte "service"
  .byte $00
  .byte "I hereby award you a"
  .byte $0A
  .byte "new title"
  .byte $00
  .byte "Your reward will be"
  .byte $0A
  .byte "deposited into your"
  .byte $0A
  .byte "savings"
  .byte $00
  .byte "You haven't delivered"
  .byte $0A
  .byte "the letter yet? Will"
  .byte $0A
  .byte "you try again"
  .byte $00
  .byte "I'm still relying on"
  .byte $0A, $79, $6F, $75, $00
  .byte "Quitting already?"
  .byte $0A
  .byte "I thought I could"
  .byte $0A
  .byte "trust you"
  .byte $00
  .byte "Thank you for coming."
  .byte $0A
  .byte "You see, I have a"
  .byte $0A
  .byte "favor to ask"
  .byte $00, $0A
  .byte "I'd like you to"
  .byte $0A
  .byte "deliver this secret"
  .byte $0A
  .byte "letter to the "
  .byte $00
  .byte "Sultan"
  .byte $00
  .byte "King"
  .byte $00, $0A, $6F, $66, $20, $00
  .byte "Will you please do"
  .byte $0A
  .byte "this for me"
  .byte $00
  .byte "Good. Please be"
  .byte $0A
  .byte "careful"
  .byte $00
  .byte "No? I expected more"
  .byte $0A
  .byte "from you"
  .byte $00
  .byte "Well done! I knew I"
  .byte $0A
  .byte "could count on you"
  .byte $00
  .byte "Wait a minute, this"
  .byte $0A
  .byte "isn't enough! Will yougo buy more"
  .byte $00
  .byte "Well then, you'd best"
  .byte $0A
  .byte "get started"
  .byte $00
  .byte "No? You're a disgrace"
  .byte $0A
  .byte "to your family name"
  .byte $00
  .byte "I shall bestow you"
  .byte $0A
  .byte "with a new title"
  .byte $00
  .byte "Also, your reward willbe deposited into"
  .byte $0A
  .byte "your savings"
  .byte $00
  .byte "You don't have the"
  .byte $0A
  .byte "goods yet? Will you"
  .byte $0A
  .byte "look again"
  .byte $00
  .byte "On your way then!"
  .byte $00
  .byte "You're a disgrace to"
  .byte $0A
  .byte "your noble name"
  .byte $00
  .byte "I'm glad you came. I"
  .byte $0A
  .byte "have something to"
  .byte $0A
  .byte "discuss with you"
  .byte $00, $0A
  .byte "You see, I've been"
  .byte $0A, $0A
  .byte "looking all over for"
  .byte $0A, $0A, $00
  .byte "You already have"
  .byte $0A
  .byte "%d crates, but I"
  .byte $0A
  .byte "need more than that"
  .byte $00
  .byte "I'm still in need of"
  .byte $0A
  .byte "%d. Can you get the"
  .byte $0A
  .byte "rest for me"
  .byte $00
  .byte "Good. I'll take what"
  .byte $0A
  .byte "you have now and wait"
  .byte $0A
  .byte "for the new stock"
  .byte $00
  .byte "I'll reward you upon"
  .byte $0A
  .byte "your return. Good"
  .byte $0A
  .byte "luck!"
  .byte $00
  .byte "You refuse? I'll have"
  .byte $0A
  .byte "to rely on someone"
  .byte $0A
  .byte "else"
  .byte $00
  .byte "I need you to buy"
  .byte $0A
  .byte "%d crates for me"
  .byte $00
  .byte "I'll pay you grandly."
  .byte $0A
  .byte "Will you take the"
  .byte $0A, $6A, $6F, $62, $00
  .byte "Then it's settled."
  .byte $0A
  .byte "I'll be relying on"
  .byte $0A, $79, $6F, $75, $00
  .byte "You refuse? Then I"
  .byte $0A
  .byte "shall have to rely on"
  .byte $0A
  .byte "someone else"
  .byte $00, $1B, $43, $30, $00
  .byte "Support"
  .byte $00
  .byte "Port               Index"
  .byte $00, $25, $33, $64, $00
  .byte "A-more  B-cancel"
  .byte $00, $B3, $B9, $9C, $B7, $B9, $B5, $56, $B3, $D3, $B2
  .byte "Please wait a moment"
  .byte $00
  .byte "His Majesty is not"
  .byte $0A
  .byte "available. Please comeback another time"
  .byte $00
  .byte "His Majesty will see"
  .byte $0A
  .byte "you now"
  .byte $00, $0A
  .byte "Ah, Sir "
  .byte $00, $2E, $0A, $0A
  .byte "Welcome"
  .byte $00
  .byte "Let me explain to you"
  .byte $0A
  .byte "our nation's sphere ofinfluence"
  .byte $00
  .byte "I hope this was of"
  .byte $0A
  .byte "some help to you"
  .byte $00, $00
  .byte "You cannot deposit"
  .byte $0A
  .byte "more"
  .byte $00
  .byte "We've no gold to"
  .byte $0A
  .byte "deposit"
  .byte $00
  .byte "Deposits must be in"
  .byte $0A
  .byte "units of 1000"
  .byte $00
  .byte "How much will you"
  .byte $0A
  .byte "deposit"
  .byte $0A
  .byte "(1000-%d000)? "
  .byte $00
  .byte "  000"
  .byte $00
  .byte " 000"
  .byte $00
  .byte "The limit is 10"
  .byte $0A
  .byte "million"
  .byte $00
  .byte "Your money will be"
  .byte $0A
  .byte "well guarded"
  .byte $00
  .byte "We don't need more"
  .byte $0A
  .byte "gold"
  .byte $00
  .byte "Withdrawals must be inunits of 1000"
  .byte $00
  .byte "How much will you"
  .byte $0A
  .byte "withdraw"
  .byte $0A
  .byte "(1000-%d000)? "
  .byte $00
  .byte "  000"
  .byte $00
  .byte " 000"
  .byte $00
  .byte "Now you've no more"
  .byte $0A
  .byte "gold here"
  .byte $00
  .byte "%d000 gold is now"
  .byte $0A
  .byte "in your name"
  .byte $00
  .byte "Go forth for the good"
  .byte $0A
  .byte "of your nation!"
  .byte $00, $80, $D5, $88, $D5
  .byte "Deposit"
  .byte $00
  .byte "Withdraw"
  .byte $00
  .byte "There's no gold in"
  .byte $0A
  .byte "your name here"
  .byte $00
  .byte "We have %d000 gold"
  .byte $0A
  .byte "in your name"
  .byte $00
  .byte "What is your wish?"
  .byte $00
  .byte "We don't need any"
  .byte $0A
  .byte "more crew"
  .byte $00
  .byte "His Majesty hopes"
  .byte $0A
  .byte "that you will manage"
  .byte $0A
  .byte "on your own"
  .byte $00
  .byte "His Majesty can supply%d men. How many do"
  .byte $0A, $00
  .byte "you need"
  .byte $00
  .byte "Do not betray His"
  .byte $0A
  .byte "Majesty's wishes"
  .byte $00
  .byte "Captain, assign men"
  .byte $0A
  .byte "to the crew"
  .byte $00
  .byte "We don't need any"
  .byte $0A
  .byte "more gold!"
  .byte $00
  .byte "His Majesty hopes thatyou will manage on"
  .byte $0A
  .byte "your own"
  .byte $00
  .byte "His Majesty will"
  .byte $0A
  .byte "provide up to %d"
  .byte $0A
  .byte "gold pieces"
  .byte $00
  .byte "How much is needed"
  .byte $0A, $00
  .byte "Do not betray His"
  .byte $0A
  .byte "Majesty's wishes!"
  .byte $00, $00, $6C, $D7, $80, $D7, $B0, $D7, $D1, $D7, $FE, $D7
  .byte "I have faith in you"
  .byte $00
  .byte "Nothing but your safe"
  .byte $0A
  .byte "return will calm my"
  .byte $0A
  .byte "fears"
  .byte $00
  .byte "Please take care to"
  .byte $0A
  .byte "avoid danger"
  .byte $00
  .byte "Remember, you said"
  .byte $0A
  .byte "you would never"
  .byte $0A
  .byte "forget me"
  .byte $00
  .byte "I've long awaited a"
  .byte $0A
  .byte "visit from you"
  .byte $00, $2B, $D8, $5B, $D8, $8F, $D8, $C2, $D8, $E7, $D8
  .byte "I'll do my best to"
  .byte $0A
  .byte "live up to your"
  .byte $0A
  .byte "expectations"
  .byte $00
  .byte "I'll be praying for"
  .byte $0A
  .byte "your good health,"
  .byte $0A
  .byte "dear Princess"
  .byte $00
  .byte "Just put your trust inme and you will feel"
  .byte $0A
  .byte "at ease"
  .byte $00
  .byte "I've never let you outof my thoughts"
  .byte $00
  .byte "There will soon be a"
  .byte $0A
  .byte "day when I will earn arank worthy of you"
  .byte $00, $2B, $D9, $38, $D9, $40, $D9
  .byte "Profess love"
  .byte $00
  .byte "Flowers"
  .byte $00
  .byte "Gift"
  .byte $00, $35, $FF, $00, $FF, $00, $A3, $C8, $CC, $DC, $E0, $C6, $CE, $DA, $E2, $C4
  .byte $CF, $D9, $E4, $C4, $D0, $D8, $E4, $C3, $D1, $D7, $E5, $C3, $D2, $D6, $E5, $C2
  .byte $D3, $D5, $E6, $C2, $D3, $D5, $E6, $C2, $D4, $D4, $E6, $C2, $E6, $FF, $00, $C2
  .byte $E6, $FF, $00, $C2, $E6, $FF, $00, $C2, $E6, $FF, $00, $C3, $E5, $FF, $00, $C3
  .byte $E5, $FF, $00, $C4, $E4, $FF, $00, $C4, $E4, $FF, $00, $C5, $E3, $FF, $00, $C5
  .byte $E3, $FF, $00, $C6, $E2, $FF, $00, $C6, $E2, $FF, $00, $C7, $E1, $FF, $00, $C8
  .byte $E0, $FF, $00, $C9, $DF, $FF, $00, $CA, $DE, $FF, $00, $CB, $DD, $FF, $00, $CC
  .byte $DC, $FF, $00, $CD, $DB, $FF, $00, $CE, $DA, $FF, $00, $CF, $D9, $FF, $00, $D0
  .byte $D8, $FF, $00, $D1, $D7, $FF, $00, $D3, $D5, $FF, $00, $D4, $D4, $FF, $00, $FF
  .byte $00, $FF, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $2D, $FF, $00, $FF, $00, $B0, $C7, $C9
  .byte $DF, $E1, $C6, $CB, $DD, $E2, $C3, $CC, $DC, $E5, $C2, $CD, $DB, $E6, $C1, $CF
  .byte $D9, $E7, $C0, $D0, $D8, $E8, $BF, $D0, $D8, $E9, $BE, $D1, $D7, $EA, $BE, $D1
  .byte $D7, $EA, $BD, $D2, $D6, $EB, $BD, $D2, $D6, $EB, $BC, $D3, $D5, $EC, $BC, $D4
  .byte $D4, $EC, $BC, $EC, $FF, $00, $BB, $ED, $FF, $00, $BB, $ED, $FF, $00, $BC, $EC
  .byte $FF, $00, $BC, $EC, $FF, $00, $BC, $EC, $FF, $00, $BD, $EB, $FF, $00, $BD, $EB
  .byte $FF, $00, $BD, $EB, $FF, $00, $BE, $EA, $FF, $00, $BE, $EA, $FF, $00, $BE, $EA
  .byte $FF, $00, $BF, $E9, $FF, $00, $BF, $E9, $FF, $00, $C0, $E8, $FF, $00, $C0, $E8
  .byte $FF, $00, $C1, $E7, $FF, $00, $C1, $E7, $FF, $00, $C2, $E6, $FF, $00, $C3, $E5
  .byte $FF, $00, $C3, $E5, $FF, $00, $C4, $E4, $FF, $00, $C5, $E3, $FF, $00, $C6, $E2
  .byte $FF, $00, $C8, $E0, $FF, $00, $C9, $DF, $FF, $00, $CA, $DE, $FF, $00, $CB, $DD
  .byte $FF, $00, $CC, $DC, $FF, $00, $CD, $DB, $FF, $00, $CF, $D8, $FF, $00, $D1, $D6
  .byte $FF, $00, $D2, $D5, $FF, $00, $D4, $D4, $FF, $00, $FF, $00, $FF, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $27
  .byte $FF, $00, $FF, $00, $BC, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $C1, $C9, $DF
  .byte $E7, $C0, $CB, $DD, $E8, $BF, $CD, $DA, $E9, $BE, $CD, $DA, $EA, $BD, $CF, $D9
  .byte $EB, $BC, $CF, $D9, $EC, $BC, $D1, $D7, $EC, $BB, $D1, $D7, $ED, $BB, $D2, $D6
  .byte $ED, $BB, $D2, $D6, $ED, $BA, $D2, $D6, $EE, $BA, $D3, $D5, $EE, $BA, $D3, $D5
  .byte $EE, $B9, $D4, $D4, $EF, $B9, $EF, $FF, $00, $B9, $EF, $FF, $00, $B8, $F0, $FF
  .byte $00, $B8, $F0, $FF, $00, $B8, $F0, $FF, $00, $B8, $F0, $FF, $00, $B8, $F0, $FF
  .byte $00, $B8, $F0, $FF, $00, $B9, $EF, $FF, $00, $B9, $EF, $FF, $00, $B9, $EF, $FF
  .byte $00, $B9, $EF, $FF, $00, $BA, $EE, $FF, $00, $BA, $EE, $FF, $00, $BB, $ED, $FF
  .byte $00, $BB, $ED, $FF, $00, $BB, $ED, $FF, $00, $BC, $EC, $FF, $00, $BC, $EC, $FF
  .byte $00, $BC, $EC, $FF, $00, $BD, $EB, $FF, $00, $BE, $EA, $FF, $00, $BE, $EA, $FF
  .byte $00, $BF, $E9, $FF, $00, $BF, $E9, $FF, $00, $C0, $E8, $FF, $00, $C1, $E7, $FF
  .byte $00, $C2, $E6, $FF, $00, $C3, $E5, $FF, $00, $C4, $E4, $FF, $00, $C5, $E3, $FF
  .byte $00, $C6, $E2, $FF, $00, $C7, $E1, $FF, $00, $C8, $E0, $FF, $00, $CA, $DE, $FF
  .byte $00, $CB, $DD, $FF, $00, $CC, $DC, $FF, $00, $CD, $DB, $FF, $00, $D0, $D8, $FF
  .byte $00, $D2, $D6, $FF, $00, $D3, $D5, $FF, $00, $D4, $D4, $FF, $00, $D4, $D4, $FF
  .byte $00, $FF, $00, $FF, $00, $00
  .byte "The princess is gone!"
  .byte $0A
  .byte "Please, rush to her"
  .byte $0A
  .byte "aid!"
  .byte $00
  .byte "You make me suspicioushanging around here."
  .byte $0A
  .byte "Get out of the palace!"
  .byte $00
  .byte "It's a pity I couldn'tmeet the princess"
  .byte $00, $0A
  .byte "Oh, "
  .byte $00
  .byte "! I'm"
  .byte $0A, $0A
  .byte "so glad we could"
  .byte $0A, $0A
  .byte "meet"
  .byte $00
  .byte "Your words are such a"
  .byte $0A
  .byte "comfort to me"
  .byte $00
  .byte "Your kindnesses fill"
  .byte $0A
  .byte "me with joy"
  .byte $00
  .byte "I hope that you will"
  .byte $0A
  .byte "accept these"
  .byte $00
  .byte "What beautiful"
  .byte $0A
  .byte "flowers!"
  .byte $00, $0A
  .byte "I wanted to give you"
  .byte $0A, $0A
  .byte "this "
  .byte $00, $0A, $0A
  .byte "from overseas"
  .byte $00
  .byte "How lovely! Thank you"
  .byte $0A
  .byte "so much"
  .byte $00
  .byte "Please accept this"
  .byte $0A
  .byte "gift from me"
  .byte $00
  .byte "Oh, thank you!"
  .byte $00
  .byte "I could never accept"
  .byte $0A
  .byte "such a gift from you!"
  .byte $00, $0A
  .byte "I'm so grateful for"
  .byte $0A
  .byte "your care. Please"
  .byte $0A
  .byte "ask my father for"
  .byte $0A
  .byte "support"
  .byte $00
  .byte "Fare thee well!"
  .byte $00
