; overlay s_card, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_CARD_F_B003
S_CARD_F_B003:
  k_func 0
  k_call S_CARD_F_B04D
  k_return
S_CARD_F_B00C:
  k_func 2
  k_ldlarg 11
  k_shl1
  k_ldriw S_CARD_D_B222
  k_add
  k_deref
  k_pushl
  k_pushib 24
  k_callx RL_21BE, 4
  k_stl -2
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_push -2
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushiw $2200
  k_pushiw $B800
  k_push -2
  k_pushib 27
  k_callx RL_21BE, 8
  k_push -2
  k_pushib 25
  k_callx RL_21BE, 4
  k_ldlarg 13
  k_jumpf S_CARD_L_B04C
  k_ldliw $B800
  k_callptr
S_CARD_L_B04C:
  k_return
S_CARD_F_B04D:
  k_func 0
  k_pushi 1
  k_callx RF_4F48, 2
  k_call RF_4DD8
  k_call $9642
  k_pushi 6
  k_pushib 27
  k_pushib 30
  k_pushi 2
  k_pushi 1
  k_callx RF_4B55, 10
  k_call RF_3D7C
  k_call $978F
  k_pushi 0
  k_callx $9825, 2
  k_pushib 22
  k_pushiw $CCE7
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushib 127
  k_pushi 0
  k_pushiw $0194
  k_pushiw $01A0
  k_pushi 11
  k_callx RL_21BE, 12
  k_ldla $F99E
  k_switchn 2
    .word $0021, S_CARD_L_B09E
    .word $0022, S_CARD_L_B0FF
    .word S_CARD_L_B0A4
S_CARD_L_B09E:
  k_pushi 1
  k_pushi 0
S_CARD_L_B0A0:
  k_callx S_CARD_F_B00C, 4
S_CARD_L_B0A4:
  k_pushi 1
  k_callx RF_4F48, 2
  k_ldlba $F294
  k_ldrib 32
  k_eq
  k_jumpf S_CARD_L_B0B8
  k_ldliw $00FF
  k_stlba $F294
S_CARD_L_B0B8:
  k_pushi 8
  k_callx RL_21BE, 2
  k_call RF_4DD8
  k_call RF_3D7C
  k_call $97F5
  k_pushi 0
  k_ldliw $2750
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 64
  k_pushib 48
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_call $978F
  k_pushi 6
  k_pushib 27
  k_pushib 30
  k_pushi 2
  k_pushi 1
  k_callx RF_4C4B, 10
  k_pushi 1
  k_callx $9825, 2
  k_pushi 15
  k_pushib 37
  k_callx RL_21BE, 4
  k_return
S_CARD_L_B0FF:
  k_pushi 1
  k_pushi 1
  k_jump S_CARD_L_B0A0
S_CARD_F_B104:
  k_func 5
  k_ldli 0
  k_stln -5
S_CARD_L_B10C:
  k_pushib 52
  k_callx RF_3F3E, 2
  k_stlbf -2
  k_pushib 52
  k_callx RF_3F3E, 2
  k_stlbf -3
  k_ldlbf -2
  k_ldrarg 11
  k_add
  k_derefb
  k_stlbf -1
  k_ldlbf -2
  k_ldrarg 11
  k_add
  k_pushl
  k_ldlbf -3
  k_ldrarg 11
  k_add
  k_derefb
  k_popstoreb
  k_ldlbf -3
  k_ldrarg 11
  k_add
  k_pushl
  k_ldlbf -1
  k_popstoreb
  k_ldln -5
  k_inc
  k_stln -5
  k_ldln -5
  k_ldrib 104
  k_ult
  k_jumpt S_CARD_L_B10C
  k_return
S_CARD_F_B14C:
  k_func 0
  k_pusha $F280
  k_pushiw $7374
  k_pushi 3
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
S_CARD_F_B161:
  k_func 0
  k_pushi 0
  k_ldliw $2710
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 64
  k_pushib 48
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_pushi 0
  k_ldliw $2710
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushiw $00A0
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_return
S_CARD_F_B1A4:
  k_func 0
  k_pusha $F280
  k_pushiw $6C5C
  k_pushib 28
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_call S_CARD_F_B161
  k_pushi 1
  k_callx RF_4F2A, 2
  k_return
S_CARD_F_B1C3:
  k_func 0
  k_pusha $F280
  k_ldlarg 17
  k_shl1
  k_ldriw S_CARD_D_B230
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_ldlarg 15
  k_shl1
  k_pushl
  k_ldlarg 17
  k_ldriw S_CARD_D_B274
  k_add
  k_derefb
  k_ldrib 26
  k_mul
  k_popr
  k_add
  k_ldriw S_CARD_D_B240
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 2
  k_ldlarg 13
  k_inc
  k_pushl
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_ldlarg 17
  k_shl1
  k_ldriw S_CARD_D_B238
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 2
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 0
  k_pushi 1
  k_pushi 2
  k_ldlarg 13
  k_dec
  k_pushl
  k_pusharg 11
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_return
S_CARD_D_B222:
  .word S_CARD_D_B226, S_CARD_D_B22B
S_CARD_D_B226:
  .byte "s_pk", $00
S_CARD_D_B22B:
  .byte "s_bj", $00
S_CARD_D_B230:
  .byte "ls\sTsds"
S_CARD_D_B238:
  .byte "ps`sXshs"
S_CARD_D_B240:
  .byte $EC, $72, $F0, $72, $F4, $72, $F8, $72, $FC, $72, $00
  .byte "s", $04, "s", $08, "s", $0C, "s", $10, "s", $14, "s", $18, "s", $1C, "s s$s(s,s0s4s8s<s@sDsHsLsPs"
S_CARD_D_B274:
  .byte $00
  .byte $01, $01, $00
