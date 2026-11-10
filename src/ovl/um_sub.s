; overlay um_sub, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp UM_SUB_F_B003
; calls 3
UM_SUB_F_B003:
  k_func 0
  k_ldla $F9A2
  k_switchn 3
    .word $0027, UM_SUB_L_B01C
    .word $0011, UM_SUB_L_B023
    .word $000F, UM_SUB_L_B029
    .word UM_SUB_L_B022
UM_SUB_L_B01C:
  k_call merchant_order_delivered
UM_SUB_L_B01F:
  k_stla $F9A6
UM_SUB_L_B022:
  k_return
UM_SUB_L_B023:
  k_call UM_SUB_F_BBB4
  k_jump UM_SUB_L_B01F
UM_SUB_L_B029:
  k_call wanted_item_delivered
  k_jump UM_SUB_L_B01F
; vars: g_cargo | calls 1
UM_SUB_F_B02F:
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
  k_jump UM_SUB_L_B095
UM_SUB_L_B04F:
  k_ldln -7
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
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
  k_jump UM_SUB_L_B088
UM_SUB_L_B06D:
  k_ldln -11
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf UM_SUB_L_B07E
  k_ldln -17
  k_deref
  k_swap
  k_ldln -19
  k_add
  k_stln -19
UM_SUB_L_B07E:
  k_ldln -17
  k_addli 2
  k_stln -17
  k_ldln -11
  k_inc
  k_stln -11
UM_SUB_L_B088:
  k_ldln -11
  k_ldrn -13
  k_ult
  k_jumpt UM_SUB_L_B06D
  k_ldln -7
  k_inc
  k_stln -7
UM_SUB_L_B095:
  k_ldln -7
  k_ldrn -9
  k_ult
  k_jumpt UM_SUB_L_B04F
  k_ldln -19
  k_return
; vars: g_king_mission, g_port, g_ports | calls 2
UM_SUB_F_B0A0:
  k_func 10
  k_ldlba g_king_mission+3
  k_stl -6
  k_ldlba g_port
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -8
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
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
  k_jumpf UM_SUB_L_B119
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
UM_SUB_L_B119:
  k_ldl -4
  k_return
; vars: g_cargo | calls 2
UM_SUB_F_B11B:
  k_func 23
  k_leal -7
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -17
  k_leal -7
  k_stln -9
  k_ldrn -17
  k_add
  k_stln -11
  k_jump UM_SUB_L_B194
UM_SUB_L_B138:
  k_ldln -9
  k_derefb
  k_stln -19
  k_ldln -19
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stln -23
  k_ldln -23
  k_inc
  k_stln -13
  k_ldln -23
  k_addli 6
  k_stln -21
  k_ldln -13
  k_addli 5
  k_stln -15
  k_jump UM_SUB_L_B187
UM_SUB_L_B15A:
  k_ldln -13
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf UM_SUB_L_B17D
  k_ldlarg 13
  k_jumpf UM_SUB_L_B17D
  k_pusharg 13
  k_ldln -21
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_stl -2
  k_push -2
  k_ldln -21
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
UM_SUB_L_B17D:
  k_ldln -21
  k_addli 2
  k_stln -21
  k_ldln -13
  k_inc
  k_stln -13
UM_SUB_L_B187:
  k_ldln -13
  k_ldrn -15
  k_ult
  k_jumpt UM_SUB_L_B15A
  k_ldln -9
  k_inc
  k_stln -9
UM_SUB_L_B194:
  k_ldln -9
  k_ldrn -11
  k_ult
  k_jumpt UM_SUB_L_B138
  k_return
; vars: g_princess, g_port, g_king_mission, g_player_gold, g_palace_savings, g_fame | calls 18
merchant_order_delivered:
  k_func 8
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf UM_SUB_L_B300
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf UM_SUB_L_B300
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf UM_SUB_L_B300
  k_ldlba g_king_mission+1
  k_ldri 1
  k_eq
  k_jumpf UM_SUB_L_B300
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_jumpf UM_SUB_L_B300
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_C6BA
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_ldra g_king_mission+4
  k_ult
  k_jumpf UM_SUB_L_B22C
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C6F1
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C70D
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_pushl
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B11B, 4
  k_jump UM_SUB_L_B2FA
UM_SUB_L_B22C:
  k_call RF_60B2
  k_pusha g_king_mission+4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B11B, 4
  k_pushi 1
  k_pushiw UM_SUB_D_C740
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldla g_king_mission+6
  k_long $26
  k_long $14
  k_ldla g_player_gold
  k_long $26
  k_long $15
  k_long $03
  k_longw $0E, $FFF8
  k_longw $0C, $FFF8
  k_longd $19, $0000EE48
  k_long $0A
  k_jumpf UM_SUB_L_B2AB
  k_pushiw $2710
  k_longw $0C, $FFF8
  k_longd $19, $FFFF15A0
  k_long $03
  k_longd $19, $000003E8
  k_long $02
  k_long $27
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldliw $EA60
  k_stla g_player_gold
  k_call RF_60B2
  k_pushi 0
  k_pushiw UM_SUB_D_C76A
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_jump UM_SUB_L_B2C2
UM_SUB_L_B2AB:
  k_pusha g_king_mission+6
  k_ldliw $EA60
  k_ldra g_player_gold
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_player_gold
  k_add
  k_stla g_player_gold
UM_SUB_L_B2C2:
  k_ldla g_fame
  k_ldriw $C350
  k_ult
  k_jumpf UM_SUB_L_B2EC
  k_ldlba g_title
  k_ldri 1
  k_shr
  k_ldrib 100
  k_mul
  k_addliw $0096
  k_pushl
  k_ldliw $C350
  k_ldra g_fame
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_fame
  k_add
  k_stla g_fame
UM_SUB_L_B2EC:
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C7B2
  k_callx RF_2FB9, 4
  k_call RF_472D
UM_SUB_L_B2FA:
  k_ldli 0
  k_stlba g_princess
  k_ldli 1
  k_return
UM_SUB_L_B300:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf UM_SUB_L_B3B9
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf UM_SUB_L_B3B9
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf UM_SUB_L_B3B9
  k_ldlba g_king_mission+1
  k_ldri 1
  k_eq
  k_jumpf UM_SUB_L_B3B9
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_C7E4
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf UM_SUB_L_B354
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C816
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump UM_SUB_L_B3B7
UM_SUB_L_B354:
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C835
  k_callx RF_2FB9, 4
  k_ldla g_player_gold
  k_ldra g_king_mission+6
  k_ult
  k_jumpf UM_SUB_L_B37E
  k_ldli 0
  k_stla g_player_gold
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C85D
  k_callx RF_2FB9, 4
  k_jump UM_SUB_L_B389
UM_SUB_L_B37E:
  k_ldla g_king_mission+6
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
UM_SUB_L_B389:
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C88A
  k_callx RF_2FB9, 4
  k_pushi 10
  k_callx rand, 2
  k_ldri 5
  k_mul
  k_addlib 50
  k_pushl
  k_pusha g_fame
  k_callx RL_8962, 4
  k_swap
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_call RF_472D
  k_ldli 0
  k_stlba g_princess
UM_SUB_L_B3B7:
  k_ldli 1
  k_return
UM_SUB_L_B3B9:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpt UM_SUB_L_B6A5
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf UM_SUB_L_B6A5
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf UM_SUB_L_B6A5
  k_ldlba g_king_mission+1
  k_ldri 1
  k_eq
  k_jumpf UM_SUB_L_B6A5
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_call UM_SUB_F_B0A0
  k_stl -4
  k_pushi 1
  k_pushi 6
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_C8AC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw UM_SUB_D_C8DE
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
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
  k_call RF_60B2
  k_ldlba g_title
  k_inc
  k_ldriw $07D0
  k_mul
  k_ldr -4
  k_udiv
  k_pushl
  k_pushi 5
  k_callx rand, 2
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
  k_stla g_king_mission+4
  k_ldl -2
  k_ldr -4
  k_mul
  k_stla g_king_mission+6
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_jumpf UM_SUB_L_B5CD
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_pushl
  k_pushiw UM_SUB_D_C90A
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_push -2
  k_pushiw UM_SUB_D_C92B
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C958
  k_callx RF_2FB9, 4
  k_ldl -4
  k_long $26
  k_long $14
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_long $26
  k_long $15
  k_long $01
  k_longw $0E, $FFF8
  k_longw $0C, $FFF8
  k_longd $19, $00007530
  k_long $0A
  k_jumpf UM_SUB_L_B4DB
  k_longw $0C, $FFF8
  k_longd $19, $000003E8
  k_long $02
  k_long $14
  k_pushiw UM_SUB_D_C973
  k_callx RF_3619, 6
  k_jump UM_SUB_L_B4ED
UM_SUB_L_B4DB:
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_ldr -4
  k_mul
  k_pushl
  k_pushiw UM_SUB_D_C979
  k_callx RF_3619, 4
UM_SUB_L_B4ED:
  k_pushi 1
  k_pushiw UM_SUB_D_C97C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_ldla g_king_mission+6
  k_shl1
  k_pushl
  k_push -2
  k_pushiw UM_SUB_D_C99B
  k_callx RF_3619, 6
  k_call RF_3CFF
  k_jumpf UM_SUB_L_B5C3
  k_call RF_60B2
  k_pusha g_king_mission+6
  k_pushiw UM_SUB_D_C9C5
  k_callx RF_3619, 4
  k_ldla g_king_mission+6
  k_long $26
  k_long $14
  k_ldla g_player_gold
  k_long $26
  k_long $15
  k_long $03
  k_long $1A
  k_longw $0C, $FFF8
  k_long $03
  k_longw $0E, $FFF8
  k_call RF_472D
  k_longw $0C, $FFF8
  k_longd $19, $0000EE48
  k_long $0A
  k_jumpf UM_SUB_L_B57B
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_C9E6
  k_callx RF_2FB9, 4
  k_pushiw $2710
  k_longw $0C, $FFF8
  k_longd $19, $FFFF15A0
  k_long $03
  k_long $27
  k_ldriw $03E8
  k_udiv
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldliw $EA60
  k_jump UM_SUB_L_B5A6
UM_SUB_L_B57B:
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_CA1C
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_ldr -4
  k_mul
  k_ldra g_king_mission+6
  k_add
  k_pushl
  k_ldliw $EA60
  k_ldra g_player_gold
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_player_gold
  k_add
UM_SUB_L_B5A6:
  k_stla g_player_gold
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B02F, 2
  k_pushl
  k_ldlba g_king_mission+3
  k_pushl
  k_callx UM_SUB_F_B11B, 4
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_jump UM_SUB_L_B69D
UM_SUB_L_B5C3:
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_CA45
  k_jump UM_SUB_L_B698
UM_SUB_L_B5CD:
  k_push -2
  k_pushiw UM_SUB_D_CA64
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_ldla g_king_mission+6
  k_shl1
  k_pushl
  k_pushiw UM_SUB_D_CA88
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf UM_SUB_L_B691
  k_call RF_60B2
  k_pusha g_king_mission+6
  k_pushiw UM_SUB_D_CAA2
  k_callx RF_3619, 4
  k_call RF_472D
  k_ldla g_king_mission+6
  k_long $26
  k_long $14
  k_ldla g_player_gold
  k_long $26
  k_long $15
  k_long $03
  k_longw $0E, $FFF8
  k_longw $0C, $FFF8
  k_longd $19, $0000EE48
  k_long $0A
  k_jumpf UM_SUB_L_B663
  k_pushiw $2710
  k_longw $0C, $FFF8
  k_longd $19, $FFFF15A0
  k_long $03
  k_longd $19, $000003E8
  k_long $02
  k_long $27
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldliw $EA60
  k_stla g_player_gold
  k_call RF_60B2
  k_pushi 0
  k_pushiw UM_SUB_D_CACB
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_jump UM_SUB_L_B67A
UM_SUB_L_B663:
  k_pusha g_king_mission+6
  k_ldliw $EA60
  k_ldra g_player_gold
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_player_gold
  k_add
  k_stla g_player_gold
UM_SUB_L_B67A:
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_CB13
  k_callx RF_2FB9, 4
  k_jump UM_SUB_L_B6A0
UM_SUB_L_B691:
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_CB3C
UM_SUB_L_B698:
  k_callx RF_2FB9, 4
  k_ldli 0
UM_SUB_L_B69D:
  k_stlba g_princess
UM_SUB_L_B6A0:
  k_call RF_472D
  k_ldli 1
  k_return
UM_SUB_L_B6A5:
  k_ldli 0
  k_return
UM_SUB_F_B6A7:
  k_func 0
  k_return
; vars: g_portrait | calls 1
UM_SUB_F_B6AD:
  k_func 0
  k_ldlib -1
  k_stla g_portrait
  k_pushiw $2000
  k_pushi 8
  k_pushib 30
  k_pushib 20
  k_pushi 2
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 0
  k_pushi 8
  k_pushib 30
  k_pushib 20
  k_pushi 2
  k_pushi 1
  k_callx RF_604A, 12
  k_return
; calls 1
UM_SUB_F_B6D2:
  k_func 0
  k_pushi 0
  k_pushi 2
  k_pushib 28
  k_pushib 18
  k_pushi 2
  k_pushi 1
  k_callx RF_604A, 12
  k_return
; calls 1
UM_SUB_F_B6E4:
  k_func 0
  k_pushiw $2000
  k_pushib 22
  k_pushib 30
  k_pushi 6
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_return
; vars: g_port, g_ports, g_port_flags | calls 9
UM_SUB_F_B6F8:
  k_func 7
  k_pushi 1
  k_pushiw UM_SUB_D_CBAB
  k_callx RF_2FB9, 4
  k_ldliw $00F0
  k_stlba $EF65
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stln -5
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stln -7
  k_ldln -7
  k_addli 11
  k_derefb
  k_stlbf -3
  k_ldlib -1
  k_stla $EF66
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_callx $97B0, 8
  k_call $9662
  k_pushi 0
  k_pushi 14
  k_pushib 30
  k_pushi 5
  k_pushi 1
  k_pushi 1
  k_callx RF_604A, 12
  k_call UM_SUB_F_B6D2
  k_pushi 1
  k_pushi 5
  k_pushi 1
  k_callx RF_50AB, 6
  k_pushi 7
  k_pushi 2
  k_callx RF_2F8F, 4
  k_ldln -7
  k_deref
  k_pushl
  k_pushiw UM_SUB_D_CBAF
  k_callx RF_3608, 4
  k_pushi 8
  k_pushi 2
  k_callx RF_2F8F, 4
  k_ldln -7
  k_addli 2
  k_deref
  k_pushl
  k_pushiw UM_SUB_D_CBC3
  k_callx RF_3608, 4
  k_pushi 10
  k_pushi 2
  k_callx RF_2F8F, 4
  k_ldln -7
  k_addli 4
  k_deref
  k_pushl
  k_pushiw UM_SUB_D_CBDC
  k_callx RF_3608, 4
  k_pushi 11
  k_pushi 2
  k_callx RF_2F8F, 4
  k_ldln -7
  k_addli 6
  k_deref
  k_pushl
  k_pushiw UM_SUB_D_CBF2
  k_callx RF_3608, 4
  k_pushi 14
  k_pushi 2
  k_callx RF_2F8F, 4
  k_pushiw UM_SUB_D_CC0D
  k_callx RF_3608, 2
  k_ldli 0
  k_jump UM_SUB_L_B7FF
UM_SUB_L_B7A7:
  k_ldlbf -1
  k_addli 15
  k_pushl
  k_pushi 2
  k_callx RF_2F8F, 4
  k_ldlbf -1
  k_ldri 1
  k_eq
  k_jumpf UM_SUB_L_B7C0
  k_pushi 0
  k_pushiw UM_SUB_D_CC16
  k_jump UM_SUB_L_B7CC
UM_SUB_L_B7C0:
  k_ldlbf -1
  k_ldri 2
  k_eq
  k_jumpf UM_SUB_L_B7D0
  k_pushi 0
  k_pushiw UM_SUB_D_CC19
UM_SUB_L_B7CC:
  k_callx RF_2FB9, 4
UM_SUB_L_B7D0:
  k_ldlbf -1
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlbf -1
  k_addli 15
  k_pushl
  k_pushi 11
  k_callx RF_2F8F, 4
  k_ldlbf -1
  k_ldrn -5
  k_add
  k_derefb
  k_pushl
  k_pushiw UM_SUB_D_CC1B
  k_callx RF_3608, 4
  k_ldlbf -1
  k_inc
UM_SUB_L_B7FF:
  k_stlbf -1
  k_ldlbf -1
  k_ldri 3
  k_ult
  k_jumpt UM_SUB_L_B7A7
  k_ldlba g_port
  k_ldriw g_port_flags
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stlbf -2
  k_pushib 17
  k_pushib 19
  k_callx RF_2F8F, 4
  k_ldlbf -3
  k_addlib 50
  k_pushl
  k_pushiw UM_SUB_D_CC1F
  k_callx RF_3608, 4
  k_pushi 14
  k_ldlib 19
  k_stla $F18C
  k_pushl
  k_callx RF_2F8F, 4
  k_ldlbf -2
  k_shl1
  k_ldriw UM_SUB_D_CB5C
  k_add
  k_deref
  k_pushl
  k_pushiw UM_SUB_D_CC2C
  k_callx RF_3608, 4
  k_call RF_2F18
  k_call $9662
  k_pushi 1
  k_pushiw UM_SUB_D_CC2F
  k_callx RF_2FB9, 4
  k_call $97BE
  k_ldli 0
  k_return
; calls 5
UM_SUB_F_B85B:
  k_func 6
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
  k_pushi 0
  k_pushi 0
  k_ldl -2
  k_shl1
  k_addli 2
  k_pushl
  k_pushib 26
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4F65, 12
  k_ldli 0
  k_jump UM_SUB_L_B895
UM_SUB_L_B87C:
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
UM_SUB_L_B895:
  k_stl -4
  k_ldl -4
  k_ldr -2
  k_ult
  k_jumpt UM_SUB_L_B87C
  k_jump UM_SUB_L_B8BB
UM_SUB_L_B89F:
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
UM_SUB_L_B8BB:
  k_ldl -4
  k_ldrarg 15
  k_ult
  k_jumpt UM_SUB_L_B89F
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
  k_pushiw UM_SUB_D_CC33
  k_callx RF_3787, 16
  k_stl -6
  k_call RF_4D8B
  k_ldl -6
  k_ldrib -1
  k_eq
  k_jumpf UM_SUB_L_B8E4
  k_ldliw $00FF
  k_jump UM_SUB_L_B8E6
UM_SUB_L_B8E4:
  k_ldl -6
  k_dec
UM_SUB_L_B8E6:
  k_return
; vars: g_player_name_ptr | calls 4
UM_SUB_F_B8E7:
  k_func 26
  k_ldli 0
  k_stl -24
  k_ldliw $E99C
  k_jump UM_SUB_L_B915
UM_SUB_L_B8F4:
  k_ldl -2
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_B91C
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
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_popstore
  k_ldl -24
  k_inc
  k_stl -24
  k_ldl -2
  k_inc
UM_SUB_L_B915:
  k_stl -2
  k_ldl -24
  k_ldri 10
  k_ult
  k_jumpt UM_SUB_L_B8F4
UM_SUB_L_B91C:
  k_call RF_60EE
  k_ldl -24
  k_jumpt UM_SUB_L_B92C
  k_pushiw UM_SUB_D_CC34
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UM_SUB_L_B92C:
  k_pushi 1
  k_pushiw UM_SUB_D_CC52
  k_callx RF_2FB9, 4
  k_leal -22
  k_pushl
  k_push -24
  k_pushi 6
  k_pushi 2
  k_callx UM_SUB_F_B85B, 8
  k_stln -26
  k_ldln -26
  k_ldriw $00FF
  k_eq
  k_jumpf UM_SUB_L_B950
  k_call $978F
  k_ldln -26
  k_return
UM_SUB_L_B950:
  k_ldln -26
  k_ldriw $E99C
  k_add
  k_derefb
  k_return
; calls 10
UM_SUB_F_B958:
  k_func 4
  k_ldliw $00F0
  k_stlba $EF65
UM_SUB_L_B963:
  k_call $978F
  k_pushiw $2000
  k_pushi 13
  k_pushib 28
  k_pushi 5
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_call RF_60EE
  k_pushi 1
  k_pushiw UM_SUB_D_CC71
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw UM_SUB_D_CC5E
  k_pushi 0
  k_pushi 10
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_BA52
  k_ldl -2
  k_ldri 1
  k_eq
  k_jumpf UM_SUB_L_BA16
UM_SUB_L_B99B:
  k_call UM_SUB_F_B8E7
  k_stl -4
  k_ldl -4
  k_jumpt UM_SUB_L_B9B6
  k_call $978F
  k_pushiw $2000
  k_pushi 13
  k_pushib 28
  k_pushi 5
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_jump UM_SUB_L_BA52
UM_SUB_L_B9B6:
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_BA0B
  k_call UM_SUB_F_B6AD
  k_call $978F
  k_pushiw $2000
  k_pushi 13
  k_pushib 28
  k_pushi 5
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_pushib 20
  k_pushib 32
  k_pushi 5
  k_pushi 0
  k_callx $97B0, 8
  k_call $9662
  k_call UM_SUB_F_B6D2
  k_pushiw $2000
  k_pushib 20
  k_pushib 28
  k_pushi 5
  k_pushi 2
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 0
  k_pushib 20
  k_pushib 30
  k_pushi 5
  k_pushi 1
  k_pushi 1
  k_callx RF_604A, 12
  k_push -4
  k_pushi 5
  k_pushi 1
  k_callx RF_2682, 6
  k_call UM_SUB_F_B6E4
  k_call RF_4DD8
  k_call $97BE
UM_SUB_L_BA0B:
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpt UM_SUB_L_B99B
  k_jump UM_SUB_L_BA52
UM_SUB_L_BA16:
  k_call UM_SUB_F_B6AD
  k_pushib 20
  k_pushib 30
  k_pushi 5
  k_pushi 1
  k_callx $97B0, 8
  k_call $9662
  k_call UM_SUB_F_B6D2
  k_pushiw $2000
  k_pushi 13
  k_pushib 28
  k_pushi 5
  k_pushi 2
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 0
  k_pushib 20
  k_pushib 30
  k_pushi 5
  k_pushi 1
  k_pushi 1
  k_callx RF_604A, 12
  k_push -2
  k_pushi 5
  k_pushi 1
  k_callx RF_2682, 6
  k_call UM_SUB_F_B6E4
  k_call RF_4DD8
  k_call $97BE
UM_SUB_L_BA52:
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpt UM_SUB_L_B963
  k_call $978F
  k_pushiw $2000
  k_pushi 13
  k_pushib 20
  k_pushi 5
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_ldli 0
  k_return
; vars: g_ships | calls 5
UM_SUB_F_BA6C:
  k_func 27
  k_leal -17
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -27
  k_leal -12
  k_stln -23
  k_leal -17
  k_stln -19
  k_ldrn -27
  k_add
  k_stln -21
  k_jump UM_SUB_L_BAB5
UM_SUB_L_BA8E:
  k_ldln -19
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_pushn -19
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_popstoreb
  k_pushn -23
  k_ldln -19
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_popstore
  k_ldln -23
  k_addli 2
  k_stln -23
  k_ldln -19
  k_inc
  k_stln -19
UM_SUB_L_BAB5:
  k_ldln -19
  k_ldrn -21
  k_ult
  k_jumpt UM_SUB_L_BA8E
  k_call RF_60EE
  k_pushi 1
  k_pushiw UM_SUB_D_CC7C
  k_callx RF_2FB9, 4
  k_pushi 2
  k_leal -12
  k_pushl
  k_pushn -27
  k_pushi 5
  k_pushi 2
  k_callx RF_4783, 10
  k_stln -25
  k_call $978F
  k_ldln -25
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_BAEF
  k_leal -17
  k_pushl
  k_ldln -25
  k_popr
  k_add
  k_derefb
  k_jump UM_SUB_L_BAF2
UM_SUB_L_BAEF:
  k_ldliw $00FF
UM_SUB_L_BAF2:
  k_return
; calls 7
UM_SUB_F_BAF3:
  k_func 2
  k_ldliw $00F0
  k_stlba $EF65
UM_SUB_L_BAFE:
  k_call UM_SUB_F_BA6C
  k_stl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_BB51
  k_pushiw $2000
  k_pushi 13
  k_pushi 10
  k_pushi 5
  k_pushi 2
  k_pushi 3
  k_callx RF_604A, 12
  k_call UM_SUB_F_B6AD
  k_pushib 24
  k_pushib 30
  k_pushi 5
  k_pushi 1
  k_callx $97B0, 8
  k_call $9662
  k_pushiw $2000
  k_pushi 14
  k_pushib 28
  k_pushi 5
  k_pushi 2
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 0
  k_pushib 20
  k_pushib 30
  k_pushi 5
  k_pushi 1
  k_pushi 1
  k_callx RF_604A, 12
  k_call UM_SUB_F_B6D2
  k_push -2
  k_pushi 5
  k_pushi 1
  k_callx RF_2401, 6
  k_call UM_SUB_F_B6E4
  k_call RF_4DD8
  k_call $97BE
UM_SUB_L_BB51:
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpt UM_SUB_L_BAFE
  k_pushiw $2000
  k_pushi 13
  k_pushi 10
  k_pushi 5
  k_pushi 2
  k_pushi 3
  k_callx RF_604A, 12
  k_ldli 0
  k_return
; calls 5
UM_SUB_F_BB67:
  k_func 2
  k_pushi 1
  k_pushi 11
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_CC99
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw UM_SUB_D_CC88
  k_pushi 1
  k_pushi 6
  k_pushib 25
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UM_SUB_L_BB9A
  k_ldliw $00FF
  k_return
UM_SUB_L_BB9A:
  k_ldl -2
  k_jumpt UM_SUB_L_BBB2
  k_pushi 1
  k_pushi 11
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_CCB6
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UM_SUB_L_BBB2:
  k_ldli 1
  k_return
; vars: g_portrait | calls 7
UM_SUB_F_BBB4:
  k_func 4
  k_ldli 0
  k_stl -4
  k_call UM_SUB_F_BB67
  k_stl -4
  k_ldl -4
  k_ldriw $00FF
  k_eq
  k_jumpf UM_SUB_L_BBC9
  k_ldli 0
  k_return
UM_SUB_L_BBC9:
  k_ldl -4
  k_jumpf UM_SUB_L_BBE1
  k_pushi 1
  k_pushi 11
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_CCED
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
UM_SUB_L_BBE1:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_CD1B
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 3
  k_pushiw UM_SUB_D_CCD0
  k_pushi 1
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_BC11
  k_ldl -2
  k_shl1
  k_ldriw UM_SUB_D_CCD6
  k_add
  k_deref
  k_callptr
  k_stl -4
UM_SUB_L_BC11:
  k_ldlib -1
  k_stla g_portrait
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpt UM_SUB_L_BC22
  k_ldl -4
  k_jumpf UM_SUB_L_BBE1
UM_SUB_L_BC22:
  k_ldl -4
  k_return
; calls 1
UM_SUB_F_BC24:
  k_func 0
  k_pushiw $2000
  k_pushi 3
  k_pushib 26
  k_pushi 2
  k_pushi 3
  k_pushi 3
  k_callx RF_604A, 12
  k_return
; vars: g_nations, g_relations | calls 8
UM_SUB_F_BC37:
  k_func 18
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_stl -8
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw g_nations
  k_add
  k_deref
  k_stl -16
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw $EEC1
  k_add
  k_derefb
  k_stl -14
  k_ldliw g_relations
  k_stl -18
  k_ldlib -1
  k_stla $EF66
  k_pushi 0
  k_pushi 1
  k_pushi 14
  k_pushib 22
  k_pushi 6
  k_pushi 5
  k_callx RF_4F65, 12
  k_pushi 1
  k_pushiw UM_SUB_D_CD4D
  k_callx RF_2FB9, 4
  k_pushi 7
  k_pushi 11
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_shl1
  k_ldriw UM_SUB_D_CD28
  k_add
  k_deref
  k_pushl
  k_pushiw UM_SUB_D_CD51
  k_callx RF_3608, 4
  k_pushi 9
  k_pushi 9
  k_callx RF_2F8F, 4
  k_push -16
  k_pushiw UM_SUB_D_CD56
  k_callx RF_3608, 4
  k_pushi 11
  k_pushi 9
  k_callx RF_2F8F, 4
  k_push -8
  k_pushiw UM_SUB_D_CD62
  k_callx RF_3608, 4
  k_pushi 13
  k_pushi 9
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UM_SUB_D_CD70
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stl -6
  k_ldli 0
  k_stl -2
  k_ldli 0
  k_stl -4
  k_jump UM_SUB_L_BD69
UM_SUB_L_BCBB:
  k_ldl -2
  k_ldrarg 11
  k_ne
  k_jumpf UM_SUB_L_BD66
  k_ldl -4
  k_addli 14
  k_pushl
  k_pushi 11
  k_callx RF_2F8F, 4
  k_ldl -2
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -4
  k_addli 14
  k_pushl
  k_pushib 20
  k_callx RF_2F8F, 4
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldr -2
  k_add
  k_ldriw UM_SUB_D_CD2E
  k_add
  k_derefb
  k_ldr -18
  k_add
  k_derefb
  k_pushl
  k_pushiw UM_SUB_D_CD7E
  k_callx RF_3608, 4
  k_ldl -4
  k_inc
  k_stl -4
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9B
  k_popr
  k_shr
  k_stl -10
  k_ldli 8
  k_ldr -2
  k_shr
  k_ldr -10
  k_and
  k_jumpf UM_SUB_L_BD30
  k_ldl -6
  k_addlib 17
  k_pushl
  k_pushi 9
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UM_SUB_D_CD82
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -6
  k_inc
  k_stl -6
UM_SUB_L_BD30:
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9D
  k_popr
  k_shr
  k_stl -12
  k_ldli 8
  k_ldr -2
  k_shr
  k_ldr -12
  k_and
  k_jumpf UM_SUB_L_BD66
  k_ldl -6
  k_addlib 17
  k_pushl
  k_pushi 6
  k_callx RF_2F8F, 4
  k_ldl -2
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UM_SUB_D_CD8B
  k_callx RF_2FB9, 4
  k_ldl -6
  k_inc
  k_stl -6
UM_SUB_L_BD66:
  k_ldl -2
  k_inc
  k_stl -2
UM_SUB_L_BD69:
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt UM_SUB_L_BCBB
  k_call RF_60B2
  k_ldli 0
  k_ldr -14
  k_ule
  k_jumpf UM_SUB_L_BDDB
  k_ldl -14
  k_ldri 2
  k_ule
  k_jumpf UM_SUB_L_BDDB
  k_pushi 0
  k_pushiw UM_SUB_D_CD97
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UM_SUB_D_CDB2
  k_callx RF_2FB9, 4
  k_ldl -14
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_jump UM_SUB_L_BDD1
UM_SUB_L_BDB1:
  k_pushi 0
  k_pushiw UM_SUB_D_CDB9
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UM_SUB_D_CDBB
  k_callx RF_2FB9, 4
UM_SUB_L_BDD1:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_jump UM_SUB_L_BDE9
UM_SUB_L_BDDB:
  k_ldl -14
  k_ldri 4
  k_eq
  k_jumpt UM_SUB_L_BDB1
  k_pushi 1
  k_pushiw UM_SUB_D_CDDA
  k_callx RF_2FB9, 4
UM_SUB_L_BDE9:
  k_call RF_472D
  k_return
; vars: g_port, g_player_gold | calls 11
UM_SUB_F_BDED:
  k_func 4
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_add
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_ldrib 20
  k_udiv
  k_ldri 10
  k_mul
  k_addlib 50
  k_stl -4
  k_call RF_60B2
  k_pushi 0
  k_pushiw UM_SUB_D_CDF7
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UM_SUB_D_CE09
  k_callx RF_2FB9, 4
  k_pushib 25
  k_pushi 8
  k_callx RF_2F8F, 4
  k_push -4
  k_pushiw UM_SUB_D_CE14
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf UM_SUB_L_BE7F
  k_ldla g_player_gold
  k_ldr -4
  k_ult
  k_jumpf UM_SUB_L_BE5E
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_CE20
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UM_SUB_L_BE5E:
  k_ldl -4
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_call $9662
  k_pusharg 11
  k_callx UM_SUB_F_BC37, 2
  k_call $97BE
  k_jump UM_SUB_L_BE89
UM_SUB_L_BE7F:
  k_call RF_60B2
  k_pushiw UM_SUB_D_CE35
  k_callx RF_4B44, 2
UM_SUB_L_BE89:
  k_ldli 0
  k_return
; calls 5
UM_SUB_F_BE8B:
  k_func 4
  k_ldli 0
  k_stl -4
UM_SUB_L_BE92:
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_CE5D
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw UM_SUB_D_CE41
  k_pushi 2
  k_pushi 10
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_BEC8
  k_ldliw $00F0
  k_stlba $EF65
  k_push -2
  k_callx UM_SUB_F_BDED, 2
  k_stl -4
UM_SUB_L_BEC8:
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpt UM_SUB_L_BED4
  k_ldl -4
  k_jumpf UM_SUB_L_BE92
UM_SUB_L_BED4:
  k_ldl -4
  k_return
; vars: g_player_gold | calls 9
UM_SUB_F_BED6:
  k_func 6
  k_call $9662
  k_ldlib -1
  k_stla $EF66
  k_pushi 0
  k_pushi 0
  k_pushi 14
  k_pushib 24
  k_pushi 6
  k_pushi 4
  k_callx RF_4F65, 12
  k_ldli 0
  k_stl -4
  k_ldlarg 11
  k_addli 4
  k_stl -2
  k_jump UM_SUB_L_BF36
UM_SUB_L_BEF6:
  k_pusharg 11
  k_callx RL_884E, 2
  k_pushl
  k_callx RF_40C3, 2
  k_stl -6
  k_pushi 1
  k_pushiw UM_SUB_D_CE73
  k_callx RF_2FB9, 4
  k_ldl -4
  k_shl1
  k_addli 8
  k_pushl
  k_pushi 6
  k_callx RF_2F8F, 4
  k_push -6
  k_callx RF_40DE, 2
  k_ldl -4
  k_shl1
  k_addli 8
  k_pushl
  k_pushib 22
  k_callx RF_2F8F, 4
  k_ldl -6
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_pushiw UM_SUB_D_CE77
  k_callx RF_3608, 4
  k_ldl -4
  k_inc
  k_stl -4
  k_ldlarg 11
  k_inc
  k_stlarg 11
UM_SUB_L_BF36:
  k_ldlarg 11
  k_ldr -2
  k_ult
  k_jumpt UM_SUB_L_BEF6
  k_pushib 16
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusha g_player_gold
  k_pushiw UM_SUB_D_CE7B
  k_callx RF_3619, 4
  k_ldl -4
  k_return
; vars: g_player_items, g_player_gold | calls 9
UM_SUB_F_BF4F:
  k_func 2
  k_ldliw g_player_items
  k_stl -2
  k_ldlarg 15
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_ldlarg 15
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -2
  k_add
  k_deref
  k_popr
  k_and
  k_jumpf UM_SUB_L_BF7D
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_CE85
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UM_SUB_L_BF7D:
  k_call RF_60B2
  k_pushi 0
  k_pushiw UM_SUB_D_CE9A
  k_callx RF_2FB9, 4
  k_pusharg 11
  k_callx RF_40DE, 2
  k_pushib 23
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pusharg 13
  k_pushiw UM_SUB_D_CEA1
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf UM_SUB_L_BFF0
  k_ldla g_player_gold
  k_ldrarg 13
  k_ult
  k_jumpf UM_SUB_L_BFB8
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_CEBF
  k_jump UM_SUB_L_BFF6
UM_SUB_L_BFB8:
  k_ldlarg 13
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_ldlarg 15
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_ldlarg 15
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -2
  k_add
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
  k_pushib 16
  k_pushib 20
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw UM_SUB_D_CED4
  k_callx RF_2FB9, 4
  k_pusha g_player_gold
  k_pushiw UM_SUB_D_CED8
  k_callx RF_3619, 4
  k_ldli 1
  k_return
UM_SUB_L_BFF0:
  k_call RF_60B2
  k_pushiw UM_SUB_D_CEDC
UM_SUB_L_BFF6:
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
; vars: g_port | calls 9
UM_SUB_F_BFFC:
  k_func 18
  k_pushib 17
  k_pushib 28
  k_pushi 3
  k_pushi 2
  k_callx $97B0, 8
  k_ldlba g_port
  k_shl1
  k_shl1
  k_ldriw $00E9
  k_add
  k_stl -2
  k_push -2
  k_callx UM_SUB_F_BED6, 2
  k_stl -14
  k_ldli 0
  k_jump UM_SUB_L_C038
UM_SUB_L_C01F:
  k_leal -10
  k_pushl
  k_ldl -12
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldl -2
  k_ldr -12
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx RF_40C3, 2
  k_popstore
  k_ldl -12
  k_inc
UM_SUB_L_C038:
  k_stl -12
  k_ldl -12
  k_ldr -14
  k_ult
  k_jumpt UM_SUB_L_C01F
  k_ldli 0
  k_stl -18
  k_ldliw $00F0
  k_stlba $EF65
UM_SUB_L_C047:
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_CEE8
  k_callx RF_2FB9, 4
  k_push -14
  k_pushi 2
  k_pushi 8
  k_pushi 5
  k_callx RF_490C, 8
  k_stl -16
  k_ldl -16
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_C090
  k_ldl -2
  k_ldr -16
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stl -12
  k_push -12
  k_push -12
  k_callx RF_40C3, 2
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_pushl
  k_leal -10
  k_pushl
  k_ldl -16
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_callx UM_SUB_F_BF4F, 6
  k_stl -18
UM_SUB_L_C090:
  k_ldl -16
  k_ldriw $00FF
  k_eq
  k_jumpf UM_SUB_L_C047
  k_call $97BE
  k_ldl -18
  k_return
; vars: g_player_items
UM_SUB_F_C09D:
  k_func 8
  k_ldli 0
  k_stl -6
  k_ldliw g_player_items
  k_stl -2
  k_ldli 0
  k_jump UM_SUB_L_C0CB
UM_SUB_L_C0AC:
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
  k_deref
  k_popr
  k_and
  k_jumpf UM_SUB_L_C0C9
  k_ldlarg 11
  k_ldr -6
  k_add
  k_pushl
  k_ldl -4
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
UM_SUB_L_C0C9:
  k_ldl -4
  k_inc
UM_SUB_L_C0CB:
  k_stl -4
  k_ldl -4
  k_ldri 15
  k_ult
  k_jumpt UM_SUB_L_C0AC
  k_ldl -6
  k_return
; vars: g_player_items
UM_SUB_F_C0D4:
  k_func 8
  k_ldli 0
  k_stl -6
  k_ldliw g_player_items
  k_stl -2
  k_ldli 15
  k_jump UM_SUB_L_C102
UM_SUB_L_C0E3:
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
  k_deref
  k_popr
  k_and
  k_jumpf UM_SUB_L_C100
  k_ldlarg 11
  k_ldr -6
  k_add
  k_pushl
  k_ldl -4
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
UM_SUB_L_C100:
  k_ldl -4
  k_inc
UM_SUB_L_C102:
  k_stl -4
  k_ldl -4
  k_ldrib 31
  k_ult
  k_jumpt UM_SUB_L_C0E3
  k_ldl -6
  k_return
; calls 6
UM_SUB_F_C10C:
  k_func 2
  k_pushiw $2000
  k_pushib 17
  k_pushi 15
  k_pushi 2
  k_pushi 9
  k_pushi 3
  k_callx RF_604A, 12
  k_ldlarg 15
  k_jumpt UM_SUB_L_C12E
  k_pushi 0
  k_pushi 0
  k_pushib 19
  k_pushib 17
  k_pushi 1
  k_pushi 8
  k_callx RF_4F65, 12
UM_SUB_L_C12E:
  k_ldlib -1
  k_stla $EF66
  k_ldli 0
  k_jump UM_SUB_L_C157
UM_SUB_L_C137:
  k_pushi 1
  k_pushiw UM_SUB_D_CEFC
  k_callx RF_2FB9, 4
  k_ldl -2
  k_addli 4
  k_pushl
  k_pushi 10
  k_callx RF_2F8F, 4
  k_ldlarg 13
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_inc
UM_SUB_L_C157:
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_ult
  k_jumpt UM_SUB_L_C137
  k_return
; sys: oam_hide_all | vars: g_fh_fdata | calls 3
UM_SUB_F_C15F:
  k_func 6
  k_ldli 0
  k_stl -6
  k_stl -4
UM_SUB_L_C167:
  k_pusha g_fh_fdata
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -6
  k_addli 4
  k_ldri 3
  k_shl
  k_addlib -5
  k_pushl
  k_pushib 71
  k_pushi 0
  k_callx RF_3E5A, 14
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -2
  k_pushi 10
  k_push -2
  k_callx RF_3D91, 4
  k_ldl -2
  k_switchn 4
    .word $0100, UM_SUB_L_C1BF
    .word $0200, UM_SUB_L_C1BF
    .word $0400, UM_SUB_L_C1B2
    .word $0800, UM_SUB_L_C19F
    .word UM_SUB_L_C1D3
UM_SUB_L_C19F:
  k_ldl -6
  k_jumpf UM_SUB_L_C1D3
  k_ldl -6
  k_dec
  k_jump UM_SUB_L_C1AA
UM_SUB_L_C1A8:
  k_ldl -6
  k_inc
UM_SUB_L_C1AA:
  k_stl -6
  k_jump UM_SUB_L_C1D3
UM_SUB_L_C1AE:
  k_ldliw $00FF
  k_return
UM_SUB_L_C1B2:
  k_ldlarg 11
  k_dec
  k_pushl
  k_ldl -6
  k_popr
  k_ult
  k_jumpt UM_SUB_L_C1A8
  k_ldli 0
  k_jump UM_SUB_L_C1AA
UM_SUB_L_C1BF:
  k_ldl -4
  k_jumpf UM_SUB_L_C1C7
  k_ldli 0
  k_jump UM_SUB_L_C1D2
UM_SUB_L_C1C7:
  k_ldl -6
  k_shl1
  k_inc
  k_pushl
  k_ldlarg 11
  k_popr
  k_ugt
  k_jumpf UM_SUB_L_C1D3
  k_ldli 1
UM_SUB_L_C1D2:
  k_stl -4
UM_SUB_L_C1D3:
  k_ldl -2
  k_ldriw $0080
  k_eq
  k_jumpt UM_SUB_L_C1E3
  k_ldl -2
  k_ldriw $8000
  k_eq
  k_jumpf UM_SUB_L_C167
UM_SUB_L_C1E3:
  k_pushi 8
  k_callx syscall, 2  ; sys 8 oam_hide_all
  k_ldl -2
  k_ldriw $8000
  k_eq
  k_jumpt UM_SUB_L_C1AE
  k_ldl -6
  k_return
; vars: g_fleets, g_port, g_ports | calls 9
UM_SUB_F_C1F2:
  k_func 10
  k_ldliw g_fleets
  k_stl -10
  k_ldl -10
  k_addli 11
  k_stl -6
  k_ldli 0
  k_stl -2
  k_pusharg 11
  k_callx RF_40C3, 2
  k_stl -4
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $1825
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldriw $0096
  k_mul
  k_popr
  k_gt
  k_jumpf UM_SUB_L_C23A
  k_pushiw UM_SUB_D_CF00
  k_callx RF_4B44, 2
  k_jump UM_SUB_L_C281
UM_SUB_L_C23A:
  k_ldl -4
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_ldri 2
  k_sdiv
  k_stl -8
  k_push -8
  k_pushiw UM_SUB_D_CF2B
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf UM_SUB_L_C281
  k_push -8
  k_ldl -10
  k_addli 9
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -10
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldlarg 11
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_ldrib -1
  k_xor
  k_pushl
  k_ldlarg 11
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -6
  k_add
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
  k_ldli 1
  k_stl -2
UM_SUB_L_C281:
  k_ldl -2
  k_return
; calls 14
UM_SUB_F_C283:
  k_func 46
  k_ldli 0
  k_stln -46
  k_stln -44
  k_stln -42
  k_stln -38
UM_SUB_L_C291:
  k_ldlarg 11
  k_jumpf UM_SUB_L_C2A0
  k_leal -32
  k_pushl
  k_callx UM_SUB_F_C0D4, 2
  k_jump UM_SUB_L_C2A8
UM_SUB_L_C2A0:
  k_leal -32
  k_pushl
  k_callx UM_SUB_F_C09D, 2
UM_SUB_L_C2A8:
  k_stln -36
  k_ldln -36
  k_jumpt UM_SUB_L_C2CC
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_CF56
  k_callx RF_4B44, 2
  k_ldln -42
  k_jumpf UM_SUB_L_C2C9
  k_call $9675
  k_call $97BE
UM_SUB_L_C2C9:
  k_ldln -38
  k_return
UM_SUB_L_C2CC:
  k_ldln -42
  k_jumpt UM_SUB_L_C2E1
  k_pushib 19
  k_pushib 27
  k_pushi 1
  k_pushi 3
  k_callx $97B0, 8
  k_call UM_SUB_F_BC24
  k_ldli 1
  k_stln -42
UM_SUB_L_C2E1:
  k_ldln -44
  k_jumpt UM_SUB_L_C2F2
  k_pushn -46
  k_leal -32
  k_pushl
  k_pushn -36
  k_callx UM_SUB_F_C10C, 6
UM_SUB_L_C2F2:
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_CF6C
  k_callx RF_2FB9, 4
  k_pushn -36
  k_callx UM_SUB_F_C15F, 2
  k_stln -34
  k_ldln -34
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_C395
  k_leal -32
  k_pushl
  k_ldln -34
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx UM_SUB_F_C1F2, 2
  k_stln -40
  k_ldln -40
  k_jumpf UM_SUB_L_C339
  k_ldln -36
  k_dec
  k_stln -36
  k_ldli 0
  k_stln -44
  k_ldli 1
  k_stln -46
  k_jump UM_SUB_L_C340
UM_SUB_L_C339:
  k_ldln -40
  k_stln -38
  k_ldli 1
  k_stln -44
UM_SUB_L_C340:
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_ldln -36
  k_jumpt UM_SUB_L_C365
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_CF82
  k_callx RF_4B44, 2
  k_ldln -40
  k_swap
  k_ldln -38
  k_or
  k_stln -38
  k_jump UM_SUB_L_C39E
UM_SUB_L_C365:
  k_ldln -40
  k_jumpf UM_SUB_L_C38D
  k_call RF_60B2
  k_ldlarg 11
  k_jumpf UM_SUB_L_C377
  k_ldliw UM_SUB_D_CFBC
  k_jump UM_SUB_L_C37A
UM_SUB_L_C377:
  k_ldliw UM_SUB_D_CFC5
UM_SUB_L_C37A:
  k_pushl
  k_pushiw UM_SUB_D_CFA2
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpt UM_SUB_L_C38D
  k_ldliw $00FF
  k_stln -34
UM_SUB_L_C38D:
  k_ldln -40
  k_swap
  k_ldln -38
  k_or
  k_stln -38
UM_SUB_L_C395:
  k_ldln -34
  k_ldriw $00FF
  k_ne
  k_jumpt UM_SUB_L_C291
UM_SUB_L_C39E:
  k_call $9675
  k_call $97BE
  k_ldln -38
  k_return
; calls 5
UM_SUB_F_C3A7:
  k_func 3
  k_ldli 0
  k_stln -3
UM_SUB_L_C3AF:
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_CFDE
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw UM_SUB_D_CFCB
  k_pushi 1
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_C3ED
  k_ldliw $00F0
  k_stlba $EF65
  k_ldlbf -1
  k_pushl
  k_callx UM_SUB_F_C283, 2
  k_stln -3
UM_SUB_L_C3ED:
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpt UM_SUB_L_C3FC
  k_ldln -3
  k_jumpf UM_SUB_L_C3AF
UM_SUB_L_C3FC:
  k_ldln -3
  k_return
; vars: g_player_items, g_princess, g_port, g_king_mission, g_fame, g_palace_savings | calls 14
wanted_item_delivered:
  k_func 8
  k_ldliw g_player_items
  k_stl -8
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf UM_SUB_L_C4CD
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf UM_SUB_L_C4CD
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf UM_SUB_L_C4CD
  k_ldlba g_king_mission+1
  k_ldri 2
  k_eq
  k_jumpf UM_SUB_L_C4CD
  k_ldl -8
  k_addli 2
  k_deref
  k_ldriw $8000
  k_and
  k_jumpf UM_SUB_L_C4CD
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 0
  k_pushiw UM_SUB_D_D016
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UM_SUB_D_D02D
  k_callx RF_2FB9, 4
  k_ldla g_fame
  k_ldriw $C350
  k_ult
  k_jumpf UM_SUB_L_C483
  k_pushiw $07D0
  k_ldliw $C350
  k_ldra g_fame
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_fame
  k_add
  k_stla g_fame
UM_SUB_L_C483:
  k_pushiw $2710
  k_ldla g_palace_savings
  k_ldra g_king_mission+6
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_D03B
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlba g_king_mission+3
  k_ldri 15
  k_and
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_ldrib -1
  k_xor
  k_pushl
  k_ldlba g_king_mission+3
  k_ldri 4
  k_shr
  k_shl1
  k_ldr -8
  k_add
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
  k_ldli 0
  k_stlba g_princess
  k_ldli 0
  k_return
UM_SUB_L_C4CD:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf UM_SUB_L_C587
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf UM_SUB_L_C587
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf UM_SUB_L_C587
  k_ldlba g_king_mission+1
  k_ldri 2
  k_eq
  k_jumpf UM_SUB_L_C587
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_D05B
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_D07D
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf UM_SUB_L_C52F
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_D0A0
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump UM_SUB_L_C585
UM_SUB_L_C52F:
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_D0C1
  k_callx RF_2FB9, 4
  k_ldla g_palace_savings
  k_ldra g_king_mission+6
  k_ult
  k_jumpf UM_SUB_L_C559
  k_call RF_472D
  k_ldli 0
  k_stla g_palace_savings
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_D0E1
  k_callx RF_2FB9, 4
  k_jump UM_SUB_L_C564
UM_SUB_L_C559:
  k_ldla g_king_mission+6
  k_swap
  k_ldla g_palace_savings
  k_sub
  k_stla g_palace_savings
UM_SUB_L_C564:
  k_call RF_472D
  k_ldli 0
  k_stlba g_princess
  k_pushi 10
  k_callx rand, 2
  k_ldri 5
  k_mul
  k_addliw $00C8
  k_pushl
  k_pusha g_fame
  k_callx RL_8962, 4
  k_swap
  k_ldla g_fame
  k_sub
  k_stla g_fame
UM_SUB_L_C585:
  k_ldli 0
  k_return
UM_SUB_L_C587:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpt UM_SUB_L_C663
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf UM_SUB_L_C663
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf UM_SUB_L_C663
  k_ldlba g_king_mission+1
  k_ldri 2
  k_eq
  k_jumpf UM_SUB_L_C663
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_D109
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw UM_SUB_D_D13A
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UM_SUB_D_D154
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_D165
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_ldlba g_title
  k_pushl
  k_pushi 2
  k_callx rand, 2
  k_popr
  k_add
  k_inc
  k_ldrib 40
  k_mul
  k_stl -6
  k_push -6
  k_pushiw UM_SUB_D_D18F
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf UM_SUB_L_C64F
  k_call RF_60B2
  k_ldl -6
  k_ldri 1
  k_shr
  k_pushl
  k_pushiw UM_SUB_D_D1AD
  k_callx RF_3619, 4
  k_pushiw $2710
  k_ldl -6
  k_ldri 1
  k_shr
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldl -6
  k_ldri 1
  k_shr
  k_stla g_king_mission+6
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_jump UM_SUB_L_C65B
UM_SUB_L_C64F:
  k_call RF_60B2
  k_pushi 1
  k_pushiw UM_SUB_D_D1E4
  k_callx RF_2FB9, 4
  k_ldli 0
UM_SUB_L_C65B:
  k_stlba g_princess
  k_call RF_472D
  k_ldli 0
  k_return
UM_SUB_L_C663:
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw UM_SUB_D_D1F6
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw UM_SUB_D_CFE9
  k_pushi 2
  k_pushi 10
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UM_SUB_L_C696
  k_ldl -2
  k_shl1
  k_ldriw UM_SUB_D_CFEF
  k_add
  k_deref
  k_callptr
  k_stl -4
UM_SUB_L_C696:
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UM_SUB_L_C663
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UM_SUB_L_C6B8
  k_pushi 1
  k_pushi 4
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UM_SUB_D_D20C
  k_callx RF_4B44, 2
UM_SUB_L_C6B8:
  k_ldli 0
  k_return
UM_SUB_D_C6BA:
  .byte "Ye came back with the", $0A, "purchase! I'm glad I", $0A, "trusted you", $00
UM_SUB_D_C6F1:
  .byte "Huh? You didn't get", $0A, "enough!", $00
UM_SUB_D_C70D:
  .byte "I'm keeping the", $0A, "reward. I've lost", $0A, "all faith in you", $00
UM_SUB_D_C740:
  .byte "Here's the rest of thereward, as promised", $00
UM_SUB_D_C76A:
  .byte $0A, "Ye can't be carrying", $0A, "all that money", $0A, "around! I'll keep", $0A, "some here for ye"
  .byte $00
UM_SUB_D_C7B2:
  .byte "If anything else", $0A, "comes up, I'll be", $0A, "relying on you", $00
UM_SUB_D_C7E4:
  .byte "Welcome back.  What,", $0A, "no goods? Will you", $0A, "try again", $00
UM_SUB_D_C816:
  .byte "Then hurry up! I'll", $0A, "be waiting", $00
UM_SUB_D_C835:
  .byte "Ye gave up mid way?", $0A, "Hand back the gold!", $00
UM_SUB_D_C85D:
  .byte "What, ye used it all?", $0A, "Straighten up yer act!", $00
UM_SUB_D_C88A:
  .byte "I never should have", $0A, "relied on you", $00
UM_SUB_D_C8AC:
  .byte "I've been waiting for", $0A, "you-- I have a favor", $0A, "to ask", $00
UM_SUB_D_C8DE:
  .byte $0A, "I'm looking to make a", $0A, $0A, "profit by trading", $0A, $0A, $00
UM_SUB_D_C90A:
  .byte "I see you already", $0A, "have %d crates", $00
UM_SUB_D_C92B:
  .byte "I'm afraid that's not", $0A, "enough. I need %d", $0A, "more", $00
UM_SUB_D_C958:
  .byte "How about this? I'll", $0A, "give ", $00
UM_SUB_D_C973:
  .byte "%d000", $00
UM_SUB_D_C979:
  .byte "%d", $00
UM_SUB_D_C97C:
  .byte " gold for", $0A, "what ye've got there", $00
UM_SUB_D_C99B:
  .byte "Then will ye bring me", $0A, "%d more for %d", $0A, "gold", $00
UM_SUB_D_C9C5:
  .byte "Good. I'll give ye", $0A, "%d in advance", $00
UM_SUB_D_C9E6:
  .byte "I'll deposit the extragold at the palace.", $0A, "Hurry back!", $00
UM_SUB_D_CA1C:
  .byte "Bring in the new stockas soon as ye can!", $00
UM_SUB_D_CA45:
  .byte "Oh well, I'll ask ye", $0A, "next time", $00
UM_SUB_D_CA64:
  .byte "I'd like ye to get", $0A, "%d crates for me", $00
UM_SUB_D_CA88:
  .byte "Will ye do it for", $0A, "%d gold", $00
UM_SUB_D_CAA2:
  .byte "Good. I'll give ye", $0A, "%d as advance", $0A, "payment", $00
UM_SUB_D_CACB:
  .byte $0A, "Ye can't be carrying", $0A, "all that money", $0A, "around! I'll keep", $0A, "some here for ye"
  .byte $00
UM_SUB_D_CB13:
  .byte "Bring in the new stockas soon as ye can!", $00
UM_SUB_D_CB3C:
  .byte "Oh well, I'll ask ye", $0A, "next time", $00
  .byte $00
UM_SUB_D_CB5C:
  .word UM_SUB_D_CB64, UM_SUB_D_CB71, UM_SUB_D_CB86, UM_SUB_D_CB98
UM_SUB_D_CB64:
  .byte "Neutral", $0A, "port", $00
UM_SUB_D_CB71:
  .byte "Allied with Portugal", $00
UM_SUB_D_CB86:
  .byte "Allied with Spain", $00
UM_SUB_D_CB98:
  .byte "Allied with Turkey", $00
UM_SUB_D_CBAB:
  .byte $1B
  .byte "C0", $00
UM_SUB_D_CBAF:
  .byte "Economic worth: %4d", $00
UM_SUB_D_CBC3:
  .byte "Economic investment: %5d", $00
UM_SUB_D_CBDC:
  .byte "Industrial worth: %4d", $00
UM_SUB_D_CBF2:
  .byte "Industrial investment: %5d", $00
UM_SUB_D_CC0D:
  .byte "Support:", $00
UM_SUB_D_CC16:
  .byte "  ", $00
UM_SUB_D_CC19:
  .byte $20, $00
UM_SUB_D_CC1B:
  .byte "%3d", $00
UM_SUB_D_CC1F:
  .byte "Prices:%3d%%", $00
UM_SUB_D_CC2C:
  .byte "%s", $00
UM_SUB_D_CC2F:
  .byte $1B
  .byte "C2", $00
UM_SUB_D_CC33:
  .byte $00
UM_SUB_D_CC34:
  .byte "There's no one but", $0A, "me with ye", $00
UM_SUB_D_CC52:
  .byte "Which mate?", $00
UM_SUB_D_CC5E:
  .word UM_SUB_D_CC62, UM_SUB_D_CC6B
UM_SUB_D_CC62:
  .byte "Yourself", $00
UM_SUB_D_CC6B:
  .byte "Mates", $00
UM_SUB_D_CC71:
  .byte "View whom?", $00
UM_SUB_D_CC7C:
  .byte "Which ship?", $00
UM_SUB_D_CC88:
  .word UM_SUB_D_CC8C, UM_SUB_D_CC91
UM_SUB_D_CC8C:
  .byte "View", $00
UM_SUB_D_CC91:
  .byte "Lodging", $00
UM_SUB_D_CC99:
  .byte "Welcome. How may I", $0A, "help you?", $00
UM_SUB_D_CCB6:
  .byte "You may use the back", $0A, "room", $00
UM_SUB_D_CCD0:
  .word UM_SUB_D_CCDC, UM_SUB_D_CCE2, UM_SUB_D_CCE8
UM_SUB_D_CCD6:
  .word UM_SUB_F_B958, UM_SUB_F_BAF3, UM_SUB_F_B6F8
UM_SUB_D_CCDC:
  .byte "Mates", $00
UM_SUB_D_CCE2:
  .byte "Fleet", $00
UM_SUB_D_CCE8:
  .byte "Port", $00
UM_SUB_D_CCED:
  .byte "You must be very", $0A, "tired. Make yourself", $0A, "at home", $00
UM_SUB_D_CD1B:
  .byte "View which?", $00
  .byte $00
UM_SUB_D_CD28:
  .word UM_SUB_D_CD37, UM_SUB_D_CD40, UM_SUB_D_CD46
UM_SUB_D_CD2E:
  .byte $FF, $00, $02, $00, $FF, $01, $02, $01, $FF
UM_SUB_D_CD37:
  .byte "Portugal", $00
UM_SUB_D_CD40:
  .byte "Spain", $00
UM_SUB_D_CD46:
  .byte "Turkey", $00
UM_SUB_D_CD4D:
  .byte $1B
  .byte "C0", $00
UM_SUB_D_CD51:
  .byte "[%s]", $00
UM_SUB_D_CD56:
  .byte "Revenue:%5d", $00
UM_SUB_D_CD62:
  .byte "Hostility:%3d", $00
UM_SUB_D_CD70:
  .byte "Friendship to", $00
UM_SUB_D_CD7E:
  .byte "%3d", $00
UM_SUB_D_CD82:
  .byte "Ally of ", $00
UM_SUB_D_CD8B:
  .byte " prohibited", $00
UM_SUB_D_CD97:
  .byte $0A, "There's trouble", $0A, $0A, "between ", $00
UM_SUB_D_CDB2:
  .byte " and", $0A, $0A, $00
UM_SUB_D_CDB9:
  .byte $0A, $00
UM_SUB_D_CDBB:
  .byte " has sent", $0A, $0A, "warships after you!", $00
UM_SUB_D_CDDA:
  .byte "This is all I know", $0A, "right now", $00
UM_SUB_D_CDF7:
  .byte $0A, "Information on", $0A, $0A, $00
UM_SUB_D_CE09:
  .byte " will cost", $00
UM_SUB_D_CE14:
  .byte "%d gold. OK", $00
UM_SUB_D_CE20:
  .byte "We don't have enough", $00
UM_SUB_D_CE35:
  .byte "As you wish", $00
UM_SUB_D_CE41:
  .word UM_SUB_D_CE47, UM_SUB_D_CE50, UM_SUB_D_CE56
UM_SUB_D_CE47:
  .byte "Portugal", $00
UM_SUB_D_CE50:
  .byte "Spain", $00
UM_SUB_D_CE56:
  .byte "Turkey", $00
UM_SUB_D_CE5D:
  .byte "Information on which?", $00
UM_SUB_D_CE73:
  .byte $1B
  .byte "C0", $00
UM_SUB_D_CE77:
  .byte "%5d", $00
UM_SUB_D_CE7B:
  .byte "Gold: %5d", $00
UM_SUB_D_CE85:
  .byte "We already have one!", $00
UM_SUB_D_CE9A:
  .byte $0A, "That ", $00
UM_SUB_D_CEA1:
  .byte "costs %d gold.", $0A, "Want to buy it", $00
UM_SUB_D_CEBF:
  .byte "We don't have enough", $00
UM_SUB_D_CED4:
  .byte $1B
  .byte "C0", $00
UM_SUB_D_CED8:
  .byte "%5d", $00
UM_SUB_D_CEDC:
  .byte "As you wish", $00
UM_SUB_D_CEE8:
  .byte "What interests you?", $00
UM_SUB_D_CEFC:
  .byte $1B
  .byte "C0", $00
UM_SUB_D_CF00:
  .byte "We don't deal in such", $0A, "expensive goods here", $00
UM_SUB_D_CF2B:
  .byte "I'll give you %d", $0A, "gold for it. Is it a", $0A, "deal", $00
UM_SUB_D_CF56:
  .byte "We've nothing to sell", $00
UM_SUB_D_CF6C:
  .byte "What are you selling?", $00
UM_SUB_D_CF82:
  .byte "We've run out of", $0A, "things to sell", $00
UM_SUB_D_CFA2:
  .byte "Will you sell any", $0A, "more %s", $00
UM_SUB_D_CFBC:
  .byte "treasure", $00
UM_SUB_D_CFC5:
  .byte "items", $00
UM_SUB_D_CFCB:
  .word UM_SUB_D_CFCF, UM_SUB_D_CFD5
UM_SUB_D_CFCF:
  .byte "Items", $00
UM_SUB_D_CFD5:
  .byte "Treasure", $00
UM_SUB_D_CFDE:
  .byte "Which one?", $00
UM_SUB_D_CFE9:
  .word UM_SUB_D_CFF5, UM_SUB_D_CFFE, UM_SUB_D_D011
UM_SUB_D_CFEF:
  .word UM_SUB_F_BFFC, UM_SUB_F_BE8B, UM_SUB_F_C3A7
UM_SUB_D_CFF5:
  .byte "Purchase", $00
UM_SUB_D_CFFE:
  .byte "Nation Information", $00
UM_SUB_D_D011:
  .byte "Sell", $00
UM_SUB_D_D016:
  .byte $0A, "Ahh, so this is the", $0A, $0A, $00
UM_SUB_D_D02D:
  .byte "! Good", $0A, $0A, "work!", $00
UM_SUB_D_D03B:
  .byte "Now I know I can", $0A, "depend on you!", $00
UM_SUB_D_D05B:
  .byte "Back already, without", $0A, "the goods?!", $00
UM_SUB_D_D07D:
  .byte "Will ye make another", $0A, "search for me", $00
UM_SUB_D_D0A0:
  .byte "Hurry up! My", $0A, "customer can't wait", $00
UM_SUB_D_D0C1:
  .byte "No? Then give me back", $0A, "the gold!", $00
UM_SUB_D_D0E1:
  .byte "You lost my gold!", $0A, "I've had it with", $0A, "you!", $00
UM_SUB_D_D109:
  .byte "I've been waiting for", $0A, "you. I have a favor", $0A, "to ask", $00
UM_SUB_D_D13A:
  .byte $0A, "I'm trying to find", $0A, $0A, "the ", $00
UM_SUB_D_D154:
  .byte $0A, $0A, "for a customer", $00
UM_SUB_D_D165:
  .byte "I'd like you to go", $0A, "out and find it for", $0A, "me", $00
UM_SUB_D_D18F:
  .byte "Will you do it for", $0A, "%d000 gold", $00
UM_SUB_D_D1AD:
  .byte "Good! I'll deposit", $0A, "%d000 at the palace", $0A, "as down payment", $00
UM_SUB_D_D1E4:
  .byte "No? Then get out!", $00
UM_SUB_D_D1F6:
  .byte "What brings you here?", $00
UM_SUB_D_D20C:
  .byte "If you've nothing to", $0A, "do then leave!", $00
