; overlay oukyu, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp OUKYU_F_B003
; calls 1
OUKYU_F_B003:
  k_func 0
  k_call palace_enter
  k_stla $F9A6
  k_return
; calls 3
OUKYU_F_B00F:
  k_func 1
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_C73D
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw OUKYU_D_C72A
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
  k_ldriw OUKYU_D_C72E
  k_add
  k_deref
  k_callptr
  k_return
OUKYU_L_B045:
  k_ldli 0
  k_return
; vars: g_port, g_princess, g_king_mission, g_player_name_ptr, g_title, g_ending | calls 11
palace_enter:
  k_func 4
  k_ldli 0
  k_stl -4
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_ldlba g_port
  k_jumpt OUKYU_L_B0B2
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B09E
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_B09E
  k_ldlba g_king_mission+1
  k_jumpt OUKYU_L_B09E
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw OUKYU_D_C785
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw OUKYU_D_C797
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
OUKYU_L_B09A:
  k_ldli 4
  k_jump OUKYU_L_B0E3
OUKYU_L_B09E:
  k_ldlba g_title
  k_jumpt OUKYU_L_B09A
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw OUKYU_D_C799
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_B0B2:
  k_ldlba g_port
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
  k_ldlba g_title
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt OUKYU_L_B0E2
OUKYU_L_B0D4:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw OUKYU_D_C7CA
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
  k_pushiw OUKYU_D_C809
  k_callx RF_2FB9, 4
  k_pushi 2
  k_ldlbf -2
  k_pushl
  k_pushiw OUKYU_D_C74F
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
  k_ldriw OUKYU_D_C757
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
  k_ldlba g_ending
  k_jumpf OUKYU_L_B13B
  k_return
OUKYU_L_B13B:
  k_call RF_2281
  k_ldl -4
  k_return
; vars: g_cargo | calls 1
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
; vars: g_king_mission, g_port, g_ports | calls 2
OUKYU_F_B1B1:
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
; vars: g_player_name_ptr
OUKYU_F_B22C:
  k_func 0
  k_ldla g_player_name_ptr
  k_return
; vars: g_princess
OUKYU_F_B235:
  k_func 0
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_return
; vars: g_princess
OUKYU_F_B240:
  k_func 0
  k_ldlba g_princess
  k_ldri 2
  k_and
  k_return
; vars: g_princess, g_port, g_king_mission
OUKYU_F_B24B:
  k_func 0
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B26A
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_B26A
  k_ldlba g_king_mission+1
  k_jumpf OUKYU_L_B26E
OUKYU_L_B26A:
  k_ldli 0
  k_jump OUKYU_L_B26F
OUKYU_L_B26E:
  k_ldli 1
OUKYU_L_B26F:
  k_return
; calls 3
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
; calls 3
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
; calls 3
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
; calls 1
OUKYU_F_B2C7:
  k_func 0
  k_pushi 1
  k_pushi 1
  k_callx RF_60CE, 4
  k_return
; vars: g_fame, g_ending, g_princess | calls 7
palace_mission_princess:
  k_func 2
  k_ldla g_fame
  k_stl -2
  k_call OUKYU_F_B2AA
  k_jumpf OUKYU_L_B2EA
  k_ldliw $00FF
  k_stlba g_ending
  k_ldli 1
  k_return
OUKYU_L_B2EA:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_B30A
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 0
  k_pushiw OUKYU_D_C820
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
  k_pushiw OUKYU_D_C860
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw OUKYU_D_C8AC
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_C8FD
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_call RF_472D
OUKYU_L_B354:
  k_ldli 1
  k_return
; vars: g_fame, g_player_items, g_princess, g_port, g_king_mission, g_title | calls 11
OUKYU_F_B356:
  k_func 4
  k_ldla g_fame
  k_stl -4
  k_ldliw g_player_items
  k_stl -2
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf OUKYU_L_B434
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B434
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_B434
  k_ldlba g_king_mission+1
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
  k_pushiw OUKYU_D_C917
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw OUKYU_D_C92C
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldlba g_title
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_B3DD
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_C944
  k_callx RF_2FB9, 4
  k_ldli 1
  k_swap
  k_ldlba g_title
  k_add
  k_stlba g_title
  k_call RF_472D
OUKYU_L_B3DD:
  k_ldlba g_title
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 3
  k_popr
  k_mul
  k_ldriw $03E8
  k_mul
  k_stla g_king_mission+6
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_C965
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushiw $2710
  k_ldla g_king_mission+6
  k_ldriw $03E8
  k_udiv
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
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
  k_ldr -2
  k_add
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
  k_ldli 0
  k_stlba g_princess
  k_ldli 1
  k_return
OUKYU_L_B434:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf OUKYU_L_B4B0
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B4B0
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_B4B0
  k_ldl -2
  k_addli 2
  k_deref
  k_ldriw $8000
  k_and
  k_jumpt OUKYU_L_B4B0
  k_ldlba g_king_mission+1
  k_jumpt OUKYU_L_B4B0
  k_call OUKYU_F_B2C7
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw OUKYU_D_C990
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B486
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_C9C6
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B486:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_C9E6
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba g_princess
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_return
OUKYU_L_B4B0:
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpt OUKYU_L_B544
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_B544
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_B544
  k_ldlba g_king_mission+1
  k_jumpt OUKYU_L_B544
  k_call OUKYU_F_B2C7
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw OUKYU_D_CA0A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CA39
  k_callx RF_2FB9, 4
  k_pushib 26
  k_pushi 8
  k_callx RF_2F8F, 4
  k_ldlba g_king_mission+3
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
  k_pushiw OUKYU_D_CA62
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CA92
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B546
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CABE
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_call RF_472D
OUKYU_L_B544:
  k_ldli 1
  k_return
OUKYU_L_B546:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CADA
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_stlba g_princess
  k_call RF_472D
  k_ldli 0
  k_return
; vars: g_player_name_ptr | calls 3
OUKYU_F_B570:
  k_func 1
  k_ldlbf 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
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
  k_pushiw OUKYU_D_CAE6
  k_jump OUKYU_L_B5A2
OUKYU_L_B59E:
  k_pushi 0
  k_pushiw OUKYU_D_CAEC
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
; vars: g_fame, g_title, g_king_mission, g_palace_savings, g_princess | calls 11
OUKYU_F_B5B9:
  k_func 2
  k_ldla g_fame
  k_stl -2
  k_call OUKYU_F_B2AA
  k_jumpf OUKYU_L_B635
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CAF3
  k_callx RF_2FB9, 4
  k_ldlba g_title
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_B5F5
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CB1B
  k_callx RF_2FB9, 4
  k_ldli 1
  k_swap
  k_ldlba g_title
  k_add
  k_stlba g_title
OUKYU_L_B5F5:
  k_ldlba g_title
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 3
  k_popr
  k_mul
  k_ldriw $03E8
  k_mul
  k_stla g_king_mission+6
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CB3B
  k_callx RF_2FB9, 4
  k_pushiw $2710
  k_ldla g_king_mission+6
  k_ldriw $03E8
  k_udiv
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldli 0
  k_stlba g_princess
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B635:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_B689
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CB66
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B65F
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CB9A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B65F:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CBCB
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba g_princess
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_return
OUKYU_L_B689:
  k_call OUKYU_F_B270
  k_jumpf OUKYU_L_B6ED
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CBE7
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw OUKYU_D_CC16
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B570, 2
  k_pushi 0
  k_pushiw OUKYU_D_CC21
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CC40
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B6EF
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CC7A
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_call RF_472D
OUKYU_L_B6ED:
  k_ldli 1
  k_return
OUKYU_L_B6EF:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CC90
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba g_princess
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_return
; vars: g_port, g_princess | calls 7
OUKYU_F_B719:
  k_func 0
  k_pushi 1
  k_ldlba g_port
  k_inc
  k_pushl
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw OUKYU_D_CCA5
  k_callx RF_2FB9, 4
  k_call OUKYU_F_B22C
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw OUKYU_D_CCBC
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
  k_pushiw OUKYU_D_CCD5
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CD0E
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_ldlba g_port
  k_inc
  k_pushl
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 0
  k_pushiw OUKYU_D_CD3D
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldli 2
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_return
; vars: g_fame, g_title, g_king_mission, g_palace_savings, g_princess | calls 12
palace_mission_letter:
  k_func 2
  k_ldla g_fame
  k_stl -2
  k_call OUKYU_F_B2AA
  k_jumpf OUKYU_L_B818
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CD7F
  k_callx RF_2FB9, 4
  k_ldlba g_title
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_B7D8
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CDAB
  k_callx RF_2FB9, 4
  k_ldli 1
  k_swap
  k_ldlba g_title
  k_add
  k_stlba g_title
OUKYU_L_B7D8:
  k_ldlba g_title
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 3
  k_popr
  k_mul
  k_ldriw $03E8
  k_mul
  k_stla g_king_mission+6
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CDCA
  k_callx RF_2FB9, 4
  k_pushiw $2710
  k_ldla g_king_mission+6
  k_ldriw $03E8
  k_udiv
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldli 0
  k_stlba g_princess
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B818:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_B86C
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CDFA
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B842
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CE33
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_B842:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CE4C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba g_princess
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_return
OUKYU_L_B86C:
  k_call OUKYU_F_B270
  k_jumpf OUKYU_L_B8F1
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CE7A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw OUKYU_D_CEAF
  k_callx RF_2FB9, 4
  k_pushi 0
  k_ldlba g_king_mission+3
  k_ldri 2
  k_eq
  k_jumpf OUKYU_L_B89D
  k_ldliw OUKYU_D_CEE3
  k_jump OUKYU_L_B8A0
OUKYU_L_B89D:
  k_ldliw OUKYU_D_CEEA
OUKYU_L_B8A0:
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw OUKYU_D_CEEF
  k_callx RF_2FB9, 4
  k_ldlba g_king_mission+3
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
  k_pushiw OUKYU_D_CEF4
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_B8F3
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CF13
  k_callx RF_2FB9, 4
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_call RF_472D
OUKYU_L_B8F1:
  k_ldli 1
  k_return
OUKYU_L_B8F3:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CF2B
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba g_princess
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_return
; calls 2
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
; vars: g_fame, g_king_mission, g_princess, g_title, g_palace_savings, g_player_gold | calls 19
palace_mission_crates:
  k_func 10
  k_ldla g_fame
  k_stl -6
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_BA8B
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_jumpf OUKYU_L_BA8B
  k_pushi 1
  k_pushi 1
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CF48
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_ldra g_king_mission+4
  k_ult
  k_jumpf OUKYU_L_BA3A
  k_pushi 1
  k_pushiw OUKYU_D_CF6F
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BA10
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CFA5
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
OUKYU_L_BA10:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_CFC7
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_stlba g_princess
  k_ldli 0
  k_return
OUKYU_L_BA3A:
  k_pusha g_king_mission+4
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B91D, 4
  k_pushi 1
  k_pushiw OUKYU_D_CFF1
  k_callx RF_2FB9, 4
  k_ldlba g_title
  k_ldri 9
  k_ult
  k_jumpf OUKYU_L_BA5E
  k_ldli 1
  k_swap
  k_ldlba g_title
  k_add
  k_stlba g_title
OUKYU_L_BA5E:
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D015
  k_callx RF_2FB9, 4
  k_pushiw $2710
  k_ldla g_king_mission+6
  k_ldriw $03E8
  k_udiv
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldli 0
  k_stlba g_princess
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_BA8B:
  k_call OUKYU_F_B28D
  k_jumpf OUKYU_L_BADF
  k_call OUKYU_F_B2C7
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D04A
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BAB5
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D07C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 1
  k_return
OUKYU_L_BAB5:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D08E
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_ldli 0
  k_stlba g_princess
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
  k_pushiw OUKYU_D_D0B3
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw OUKYU_D_D0EB
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
  k_ldlba g_title
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
  k_stla g_king_mission+4
  k_ldlba g_title
  k_inc
  k_ldriw $07D0
  k_mul
  k_stla g_king_mission+6
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_jumpf OUKYU_L_BC74
  k_call RF_60B2
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_pushl
  k_pushiw OUKYU_D_D117
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_push -2
  k_pushiw OUKYU_D_D14D
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BC4A
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D182
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D1BF
  k_callx RF_2FB9, 4
  k_ldla g_player_gold
  k_long $26
  k_long $14
  k_ldl -4
  k_long $26
  k_long $14
  k_ldlba g_king_mission+3
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
  k_ldra g_palace_savings
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla g_palace_savings
  k_ldliw $EA60
  k_jump OUKYU_L_BC28
OUKYU_L_BC0C:
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_ldr -4
  k_mul
  k_pushl
  k_ldliw $EA60
  k_ldra g_player_gold
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla g_player_gold
  k_add
OUKYU_L_BC28:
  k_stla g_player_gold
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B140, 2
  k_pushl
  k_ldlba g_king_mission+3
  k_pushl
  k_callx OUKYU_F_B91D, 4
OUKYU_L_BC3C:
  k_ldli 8
  k_swap
  k_ldlba g_princess
  k_or
  k_stlba g_princess
  k_call RF_472D
OUKYU_L_BC48:
  k_ldli 1
  k_return
OUKYU_L_BC4A:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D1EC
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba g_princess
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_call RF_472D
  k_ldli 0
  k_return
OUKYU_L_BC74:
  k_call RF_60B2
  k_push -2
  k_pushiw OUKYU_D_D21A
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D23D
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf OUKYU_L_BCA1
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D269
  k_callx RF_2FB9, 4
  k_jump OUKYU_L_BC3C
OUKYU_L_BCA1:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D293
  k_callx RF_2FB9, 4
  k_ldli 0
  k_stlba g_princess
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
  k_ldla g_fame
  k_sub
  k_stla g_fame
  k_call RF_472D
  k_ldli 0
  k_return
; calls 4
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
  k_pushiw OUKYU_D_D2C9
  k_callx RF_2FB9, 4
  k_pushi 7
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw OUKYU_D_D2CD
  k_callx RF_2FB9, 4
  k_pushi 8
  k_pushi 4
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw OUKYU_D_D2D5
  k_callx RF_2FB9, 4
  k_return
; vars: g_port_flags, g_port | calls 6
OUKYU_F_BD12:
  k_func 64
  k_ldli 0
  k_stln -56
  k_ldli 0
  k_stln -58
  k_jump OUKYU_L_BD49
OUKYU_L_BD20:
  k_ldln -56
  k_ldriw g_port_flags
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_pushl
  k_ldlba g_port
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
  k_ldlba g_port
  k_ldrn -52
  k_add
  k_derefb
  k_pushl
  k_pushiw OUKYU_D_D2EE
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
  k_pushiw OUKYU_D_D2F2
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
; vars: g_title, g_princess, g_king_mission, g_port, g_ending | calls 13
OUKYU_F_BE25:
  k_func 3
  k_ldlba g_title
  k_stlbf -1
  k_ldli 1
  k_stln -3
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf OUKYU_L_BE5C
  k_ldlba g_king_mission+2
  k_ldri 1
  k_eq
  k_jumpf OUKYU_L_BE5C
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission+3
  k_popr
  k_eq
  k_jumpf OUKYU_L_BE5C
  k_ldlba g_princess
  k_ldri 2
  k_and
  k_jumpt OUKYU_L_BE5C
  k_call OUKYU_F_B719
  k_ldli 0
  k_return
OUKYU_L_BE5C:
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_BEA3
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_BEA3
  k_ldlba g_king_mission+1
  k_jumpt OUKYU_L_BEA3
  k_ldlba g_king_mission+2
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
  k_ldlba g_king_mission+2
  k_shl1
  k_ldriw OUKYU_D_D303
  k_add
  k_deref
  k_callptr
  k_stln -3
  k_ldlba g_ending
  k_jumpf OUKYU_L_BE9E
  k_ldli 1
  k_return
OUKYU_L_BE9E:
  k_call RF_2281
  k_ldli 0
  k_return
OUKYU_L_BEA3:
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_BEBD
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_BEBD
  k_ldlba g_king_mission+1
  k_jumpf OUKYU_L_BF2D
OUKYU_L_BEBD:
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw OUKYU_D_D30D
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
  k_pushiw OUKYU_D_D322
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_BEED:
  k_pushiw OUKYU_D_D35D
  k_callx RF_4B44, 2
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_pushi 1
  k_ldlba g_port
  k_inc
  k_pushl
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 0
  k_pushiw OUKYU_D_D37A
  k_callx RF_2FB9, 4
  k_call OUKYU_F_B22C
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw OUKYU_D_D384
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
OUKYU_L_BF2D:
  k_call RF_60B2
  k_pushiw OUKYU_D_D38F
  k_callx RF_4B44, 2
  k_call OUKYU_F_BD12
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D3C5
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call $97BE
  k_ldliw $00F0
  k_stlba $EF65
  k_ldli 0
  k_return
; vars: g_player_gold, g_palace_savings | calls 8
OUKYU_F_BF53:
  k_func 8
  k_ldla g_player_gold
  k_stl -2
  k_ldliw $2710
  k_ldra g_palace_savings
  k_le
  k_jumpf OUKYU_L_BF72
  k_call RF_60B2
  k_pushiw OUKYU_D_D3EA
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
  k_pushiw OUKYU_D_D402
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_BF8B:
  k_call RF_60B2
  k_pushiw OUKYU_D_D41B
  k_callx RF_4B44, 2
  k_ldl -2
  k_ldriw $03E8
  k_udiv
  k_stl -6
  k_call RF_60B2
  k_push -6
  k_pushiw OUKYU_D_D43D
  k_callx RF_3619, 4
  k_ldl -6
  k_ldri 9
  k_ugt
  k_jumpf OUKYU_L_BFB5
  k_ldli 1
  k_stl -8
  k_pushi 1
  k_pushiw OUKYU_D_D466
  k_jump OUKYU_L_BFBB
OUKYU_L_BFB5:
  k_ldli 0
  k_stl -8
  k_pushi 1
  k_pushiw OUKYU_D_D46C
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
  k_ldla g_palace_savings
  k_add
  k_stla g_palace_savings
  k_ldl -4
  k_ldriw $03E8
  k_mul
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_ldla g_palace_savings
  k_ldriw $2710
  k_gt
  k_jumpf OUKYU_L_C01E
  k_call RF_60B2
  k_pushiw OUKYU_D_D471
  k_callx RF_4B44, 2
  k_ldla g_palace_savings
  k_addliw OUKYU_D_D8F0
  k_stl -4
  k_ldliw $2710
  k_stla g_palace_savings
  k_ldl -4
  k_ldriw $03E8
  k_mul
  k_swap
  k_ldla g_player_gold
  k_add
  k_stla g_player_gold
OUKYU_L_C01E:
  k_call RF_60B2
  k_pushiw OUKYU_D_D489
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
; vars: g_player_gold, g_palace_savings | calls 11
OUKYU_F_C02A:
  k_func 8
  k_ldla g_player_gold
  k_stl -2
  k_ldl -2
  k_long $26
  k_longd $19, $0000E678
  k_long $2B
  k_jumpf OUKYU_L_C052
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw OUKYU_D_D4A9
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
OUKYU_L_C052:
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw OUKYU_D_D4C1
  k_callx RF_4B44, 2
  k_pusha g_palace_savings
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
  k_pushiw OUKYU_D_D4E5
  k_callx RF_3619, 4
  k_ldl -6
  k_ldri 9
  k_ugt
  k_jumpf OUKYU_L_C0A6
  k_ldli 1
  k_stl -8
  k_pushi 1
  k_pushiw OUKYU_D_D50F
  k_jump OUKYU_L_C0AC
OUKYU_L_C0A6:
  k_ldli 0
  k_stl -8
  k_pushi 1
  k_pushiw OUKYU_D_D515
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
  k_ldla g_palace_savings
  k_sub
  k_stla g_palace_savings
  k_ldl -4
  k_ldriw $03E8
  k_mul
  k_swap
  k_ldla g_player_gold
  k_add
  k_stla g_player_gold
  k_ldla g_palace_savings
  k_jumpt OUKYU_L_C0F5
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_D51A
  k_callx RF_2FB9, 4
  k_jump OUKYU_L_C102
OUKYU_L_C0F5:
  k_call RF_60B2
  k_pusha g_palace_savings
  k_pushiw OUKYU_D_D537
  k_callx RF_3619, 4
OUKYU_L_C102:
  k_pushi 2
  k_callx RF_3DDF, 2
  k_call RF_60B2
  k_pushiw OUKYU_D_D556
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
; vars: g_palace_savings | calls 10
OUKYU_F_C113:
  k_func 6
  k_ldla g_palace_savings
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
  k_pushiw OUKYU_D_D591
  k_callx RF_4B44, 2
  k_ldli 1
  k_jump OUKYU_L_C14F
OUKYU_L_C13C:
  k_pushi 1
  k_callx RF_609A, 2
  k_push -2
  k_pushiw OUKYU_D_D5B3
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
  k_pushiw OUKYU_D_D5D3
  k_callx RF_2FB9, 4
  k_pushi 1
  k_ldlbf -3
  k_pushl
  k_pushiw OUKYU_D_D57C
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
; calls 11
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
  k_pushiw OUKYU_D_D5E6
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
  k_pushiw OUKYU_D_D602
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
  k_pushiw OUKYU_D_D635
  k_callx RF_3619, 4
  k_push -4
  k_pushi 1
  k_pushiw OUKYU_D_D660
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
  k_pushiw OUKYU_D_D669
  k_callx RF_4B44, 2
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw OUKYU_D_D68C
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
; vars: g_player_gold | calls 9
OUKYU_F_C261:
  k_func 8
  k_ldla $EECE
  k_stl -2
  k_ldla g_player_gold
  k_stl -6
  k_ldl -6
  k_ldriw $E678
  k_ugt
  k_jumpf OUKYU_L_C285
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw OUKYU_D_D6AC
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
  k_pushiw OUKYU_D_D6C9
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
  k_pushiw OUKYU_D_D6FB
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_push -4
  k_pushi 1
  k_pushiw OUKYU_D_D729
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
  k_ldla g_player_gold
  k_add
  k_stla g_player_gold
  k_ldl -8
  k_ldri 10
  k_udiv
  k_inc
  k_swap
  k_ldla $EECE
  k_sub
  k_stla $EECE
  k_call RF_60B2
  k_pushiw OUKYU_D_D73D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
; sys: anim_control, hdma_effect_on, color_math | calls 2
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
  k_callx syscall, 6  ; sys 56 anim_control
  k_pushib 126
  k_ldl -2
  k_ldriw $00F7
  k_mul
  k_ldriw OUKYU_D_D945
  k_add
  k_pushl
  k_pushib 38
  k_pushi 4
  k_pushib 73
  k_callx syscall, 10  ; sys 73 hdma_effect_on
  k_call OUKYU_L_C718
  k_pushiw $00E0
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_push -4
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_push -6
  k_pushib 83
  k_pushib 32
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_return
; sys: hdma_effect_off, window_off, color_math, anim_control | vars: g_princess, g_port, g_king_mission, g_title, g_player_name_ptr, g_player_gold | calls 16
OUKYU_F_C38C:
  k_func 11
  k_ldlba $E442
  k_stlbf -6
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf OUKYU_L_C3D1
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission
  k_popr
  k_eq
  k_jumpf OUKYU_L_C3D1
  k_ldlba g_king_mission+1
  k_jumpt OUKYU_L_C3D1
  k_ldlba g_king_mission+2
  k_ldri 4
  k_eq
  k_jumpf OUKYU_L_C3D1
  k_pushi 1
  k_pushi 10
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw OUKYU_D_DC2A
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
  k_ldlba g_title
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
  k_pushiw OUKYU_D_DC59
  k_callx RF_4B44, 2
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw OUKYU_D_DC9B
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
  k_pushiw OUKYU_D_DCC3
  k_callx RF_2FB9, 4
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw OUKYU_D_DCC9
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
  k_pushiw OUKYU_D_DCE7
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
  k_ldriw OUKYU_D_D762
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
  k_ldriw OUKYU_D_D821
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldla g_player_gold
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
  k_pushiw OUKYU_D_D925
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
  k_pushiw OUKYU_D_DD0B
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlba g_hero_stats+2
  k_jump OUKYU_L_C56D
OUKYU_L_C540:
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_DD2C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw OUKYU_D_DD4E
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldlba g_hero_stats+1
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
  k_ldliw g_player_items
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
  k_pushiw OUKYU_D_DD66
  k_callx RF_2FB9, 4
  k_ldlbf -8
  k_pushl
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw OUKYU_D_DD83
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
  k_pushiw OUKYU_D_DD93
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
  k_pushiw OUKYU_D_DDB1
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldliw $012C
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_pushi 1
  k_pushi 12
  k_callx RF_60CE, 4
  k_ldlbf -7
  k_jumpt OUKYU_L_C674
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw OUKYU_D_DDD1
  k_callx RF_2FB9, 4
  k_ldlib 20
  k_jump OUKYU_L_C682
OUKYU_L_C674:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw OUKYU_D_DDE0
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
  k_pushiw OUKYU_D_DE0B
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
OUKYU_L_C6E4:
  k_call RF_60B2
  k_pushi 1
  k_pushiw OUKYU_D_DE4C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushib 74
  k_callx syscall, 2  ; sys 74 hdma_effect_off
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx syscall, 6  ; sys 56 anim_control
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
  .byte $00
OUKYU_D_C72A:
  .word OUKYU_D_C732, OUKYU_D_C738
OUKYU_D_C72E:
  .word OUKYU_F_C261, OUKYU_F_C1A1
OUKYU_D_C732:
  .byte "Funds", $00
OUKYU_D_C738:
  .byte "Crew", $00
OUKYU_D_C73D:
  .byte "What do you need?", $00
OUKYU_D_C74F:
  .word OUKYU_D_C75F, OUKYU_D_C769, OUKYU_D_C775, OUKYU_D_C77D
OUKYU_D_C757:
  .word OUKYU_F_BE25, OUKYU_F_C38C, OUKYU_F_B00F, OUKYU_F_C113
OUKYU_D_C75F:
  .byte "Meet King", $00
OUKYU_D_C769:
  .byte "Secret Call", $00
OUKYU_D_C775:
  .byte "Request", $00
OUKYU_D_C77D:
  .byte "Savings", $00
OUKYU_D_C785:
  .byte $0A, "Announcing Sir", $0A, $0A, $00
OUKYU_D_C797:
  .byte $21, $00
OUKYU_D_C799:
  .byte "Commoners are not", $0A, "allowed in the palace.Get out!", $00
OUKYU_D_C7CA:
  .byte "His Majesty does not", $0A, "meet with foreigners.", $0A, "Leave here at once!"
  .byte $00
OUKYU_D_C809:
  .byte "What brings you here?", $00
  .byte $00
OUKYU_D_C820:
  .byte $0A, "Haven't you rescued", $0A, "the princess yet?", $0A, "Go find her", $0A, "immediately!"
  .byte $00
OUKYU_D_C860:
  .byte $0A, "Thank you for coming.", $0A, "Something terrible hashappened, and I need"
  .byte $0A, "your help", $00
OUKYU_D_C8AC:
  .byte $0A, "The princess has been", $0A, "kidnapped! I think", $0A, "the villains will"
  .byte $0A, "demand a ransom soon", $00
OUKYU_D_C8FD:
  .byte "You've got to rescue", $0A, "her!", $00
OUKYU_D_C917:
  .byte $0A, "Ah, the legendary", $0A, $0A, $00
OUKYU_D_C92C:
  .byte "! I", $0A, $0A, "knew you'd find it", $00
OUKYU_D_C944:
  .byte "Bestow this man with", $0A, "a new title", $00
OUKYU_D_C965:
  .byte "I'll deposit your", $0A, "reward into your", $0A, "savings", $00
OUKYU_D_C990:
  .byte "Welcome back. What, notreasure? Will you", $0A, "search again", $00
OUKYU_D_C9C6:
  .byte "Then get going! I'll", $0A, "be waiting", $00
OUKYU_D_C9E6:
  .byte "Giving up already?", $0A, "How unfortunate!", $00
OUKYU_D_CA0A:
  .byte "Thank you for coming.", $0A, "I have a request to", $0A, "make", $00
OUKYU_D_CA39:
  .byte "You see, I'm searchingfor the celebrated", $00
OUKYU_D_CA62:
  .byte "I thought you might", $0A, "be able to locate it", $0A, "for me", $00
OUKYU_D_CA92:
  .byte "I'll reward you", $0A, "handsomely. What do", $0A, "you say", $00
OUKYU_D_CABE:
  .byte "Good! I know you'll", $0A, "succeed", $00
OUKYU_D_CADA:
  .byte "What a pity", $00
OUKYU_D_CAE6:
  .byte $0A, "the ", $00
OUKYU_D_CAEC:
  .byte $0A, "from ", $00
OUKYU_D_CAF3:
  .byte "Well done!  At last", $0A, "there will be peace", $00
OUKYU_D_CB1B:
  .byte "Bestow this man with anew title", $00
OUKYU_D_CB3B:
  .byte "I'll deposit your", $0A, "reward into your", $0A, "savings", $00
OUKYU_D_CB66:
  .byte "You haven't caught", $0A, "him yet? You'll try", $0A, "again, right", $00
OUKYU_D_CB9A:
  .byte "Then hurry! The", $0A, "commotion is troublingthe people", $00
OUKYU_D_CBCB:
  .byte "No? I'm disappointed", $0A, "in you", $00
OUKYU_D_CBE7:
  .byte "I'm glad you came.", $0A, "I have something to", $0A, "request", $00
OUKYU_D_CC16:
  .byte $0A, "You see, ", $00
OUKYU_D_CC21:
  .byte " is", $0A, "wreaking havoc in", $0A, "the area", $00
OUKYU_D_CC40:
  .byte "If you can stop him,", $0A, "I'll reward you well.", $0A, "Will you do it", $00
OUKYU_D_CC7A:
  .byte "Good. I wish you", $0A, "luck", $00
OUKYU_D_CC90:
  .byte "No? I'm disappointed", $00
OUKYU_D_CCA5:
  .byte $0A, "So, it's the famous", $0A, $0A, $00
OUKYU_D_CCBC:
  .byte ". What", $0A, $0A, "brings you here?", $00
OUKYU_D_CCD5:
  .byte "Your Majesty, I bring", $0A, "a letter from the", $0A, "King of Portugal", $00
OUKYU_D_CD0E:
  .byte "I hope the contents", $0A, "will be protected", $0A, "with you", $00
OUKYU_D_CD3D:
  .byte $0A, "Yes, I understand.", $0A, "Please give my regardsto the King of", $0A, "Portugal"
  .byte $00
OUKYU_D_CD7F:
  .byte "Thank you, you've", $0A, "done an excellent", $0A, "service", $00
OUKYU_D_CDAB:
  .byte "I hereby award you a", $0A, "new title", $00
OUKYU_D_CDCA:
  .byte "Your reward will be", $0A, "deposited into your", $0A, "savings", $00
OUKYU_D_CDFA:
  .byte "You haven't delivered", $0A, "the letter yet? Will", $0A, "you try again", $00
OUKYU_D_CE33:
  .byte "I'm still relying on", $0A, "you", $00
OUKYU_D_CE4C:
  .byte "Quitting already?", $0A, "I thought I could", $0A, "trust you", $00
OUKYU_D_CE7A:
  .byte "Thank you for coming.", $0A, "You see, I have a", $0A, "favor to ask", $00
OUKYU_D_CEAF:
  .byte $0A, "I'd like you to", $0A, "deliver this secret", $0A, "letter to the ", $00
OUKYU_D_CEE3:
  .byte "Sultan", $00
OUKYU_D_CEEA:
  .byte "King", $00
OUKYU_D_CEEF:
  .byte $0A, "of ", $00
OUKYU_D_CEF4:
  .byte "Will you please do", $0A, "this for me", $00
OUKYU_D_CF13:
  .byte "Good. Please be", $0A, "careful", $00
OUKYU_D_CF2B:
  .byte "No? I expected more", $0A, "from you", $00
OUKYU_D_CF48:
  .byte "Well done! I knew I", $0A, "could count on you", $00
OUKYU_D_CF6F:
  .byte "Wait a minute, this", $0A, "isn't enough! Will yougo buy more", $00
OUKYU_D_CFA5:
  .byte "Well then, you'd best", $0A, "get started", $00
OUKYU_D_CFC7:
  .byte "No? You're a disgrace", $0A, "to your family name", $00
OUKYU_D_CFF1:
  .byte "I shall bestow you", $0A, "with a new title", $00
OUKYU_D_D015:
  .byte "Also, your reward willbe deposited into", $0A, "your savings", $00
OUKYU_D_D04A:
  .byte "You don't have the", $0A, "goods yet? Will you", $0A, "look again", $00
OUKYU_D_D07C:
  .byte "On your way then!", $00
OUKYU_D_D08E:
  .byte "You're a disgrace to", $0A, "your noble name", $00
OUKYU_D_D0B3:
  .byte "I'm glad you came. I", $0A, "have something to", $0A, "discuss with you", $00
OUKYU_D_D0EB:
  .byte $0A, "You see, I've been", $0A, $0A, "looking all over for", $0A, $0A, $00
OUKYU_D_D117:
  .byte "You already have", $0A, "%d crates, but I", $0A, "need more than that", $00
OUKYU_D_D14D:
  .byte "I'm still in need of", $0A, "%d. Can you get the", $0A, "rest for me", $00
OUKYU_D_D182:
  .byte "Good. I'll take what", $0A, "you have now and wait", $0A, "for the new stock", $00
OUKYU_D_D1BF:
  .byte "I'll reward you upon", $0A, "your return. Good", $0A, "luck!", $00
OUKYU_D_D1EC:
  .byte "You refuse? I'll have", $0A, "to rely on someone", $0A, "else", $00
OUKYU_D_D21A:
  .byte "I need you to buy", $0A, "%d crates for me", $00
OUKYU_D_D23D:
  .byte "I'll pay you grandly.", $0A, "Will you take the", $0A, "job", $00
OUKYU_D_D269:
  .byte "Then it's settled.", $0A, "I'll be relying on", $0A, "you", $00
OUKYU_D_D293:
  .byte "You refuse? Then I", $0A, "shall have to rely on", $0A, "someone else", $00
OUKYU_D_D2C9:
  .byte $1B
  .byte "C0", $00
OUKYU_D_D2CD:
  .byte "Support", $00
OUKYU_D_D2D5:
  .byte "Port               Index", $00
OUKYU_D_D2EE:
  .byte "%3d", $00
OUKYU_D_D2F2:
  .byte "A-more  B-cancel", $00
OUKYU_D_D303:
  .word palace_mission_crates, palace_mission_letter, OUKYU_F_B5B9, OUKYU_F_B356, palace_mission_princess
OUKYU_D_D30D:
  .byte "Please wait a moment", $00
OUKYU_D_D322:
  .byte "His Majesty is not", $0A, "available. Please comeback another time", $00
OUKYU_D_D35D:
  .byte "His Majesty will see", $0A, "you now", $00
OUKYU_D_D37A:
  .byte $0A, "Ah, Sir ", $00
OUKYU_D_D384:
  .byte ".", $0A, $0A, "Welcome", $00
OUKYU_D_D38F:
  .byte "Let me explain to you", $0A, "our nation's sphere ofinfluence", $00
OUKYU_D_D3C5:
  .byte "I hope this was of", $0A, "some help to you", $00
  .byte $00
OUKYU_D_D3EA:
  .byte "You cannot deposit", $0A, "more", $00
OUKYU_D_D402:
  .byte "We've no gold to", $0A, "deposit", $00
OUKYU_D_D41B:
  .byte "Deposits must be in", $0A, "units of 1000", $00
OUKYU_D_D43D:
  .byte "How much will you", $0A, "deposit", $0A, "(1000-%d000)? ", $00
OUKYU_D_D466:
  .byte "  000", $00
OUKYU_D_D46C:
  .byte " 000", $00
OUKYU_D_D471:
  .byte "The limit is 10", $0A, "million", $00
OUKYU_D_D489:
  .byte "Your money will be", $0A, "well guarded", $00
OUKYU_D_D4A9:
  .byte "We don't need more", $0A, "gold", $00
OUKYU_D_D4C1:
  .byte "Withdrawals must be inunits of 1000", $00
OUKYU_D_D4E5:
  .byte "How much will you", $0A, "withdraw", $0A, "(1000-%d000)? ", $00
OUKYU_D_D50F:
  .byte "  000", $00
OUKYU_D_D515:
  .byte " 000", $00
OUKYU_D_D51A:
  .byte "Now you've no more", $0A, "gold here", $00
OUKYU_D_D537:
  .byte "%d000 gold is now", $0A, "in your name", $00
OUKYU_D_D556:
  .byte "Go forth for the good", $0A, "of your nation!", $00
OUKYU_D_D57C:
  .word OUKYU_D_D580, OUKYU_D_D588
OUKYU_D_D580:
  .byte "Deposit", $00
OUKYU_D_D588:
  .byte "Withdraw", $00
OUKYU_D_D591:
  .byte "There's no gold in", $0A, "your name here", $00
OUKYU_D_D5B3:
  .byte "We have %d000 gold", $0A, "in your name", $00
OUKYU_D_D5D3:
  .byte "What is your wish?", $00
OUKYU_D_D5E6:
  .byte "We don't need any", $0A, "more crew", $00
OUKYU_D_D602:
  .byte "His Majesty hopes", $0A, "that you will manage", $0A, "on your own", $00
OUKYU_D_D635:
  .byte "His Majesty can supply%d men. How many do", $0A, $00
OUKYU_D_D660:
  .byte "you need", $00
OUKYU_D_D669:
  .byte "Do not betray His", $0A, "Majesty's wishes", $00
OUKYU_D_D68C:
  .byte "Captain, assign men", $0A, "to the crew", $00
OUKYU_D_D6AC:
  .byte "We don't need any", $0A, "more gold!", $00
OUKYU_D_D6C9:
  .byte "His Majesty hopes thatyou will manage on", $0A, "your own", $00
OUKYU_D_D6FB:
  .byte "His Majesty will", $0A, "provide up to %d", $0A, "gold pieces", $00
OUKYU_D_D729:
  .byte "How much is needed", $0A, $00
OUKYU_D_D73D:
  .byte "Do not betray His", $0A, "Majesty's wishes!", $00
  .byte $00
OUKYU_D_D762:
  .word OUKYU_D_D76C, OUKYU_D_D780, OUKYU_D_D7B0, OUKYU_D_D7D1, OUKYU_D_D7FE
OUKYU_D_D76C:
  .byte "I have faith in you", $00
OUKYU_D_D780:
  .byte "Nothing but your safe", $0A, "return will calm my", $0A, "fears", $00
OUKYU_D_D7B0:
  .byte "Please take care to", $0A, "avoid danger", $00
OUKYU_D_D7D1:
  .byte "Remember, you said", $0A, "you would never", $0A, "forget me", $00
OUKYU_D_D7FE:
  .byte "I've long awaited a", $0A, "visit from you", $00
OUKYU_D_D821:
  .word OUKYU_D_D82B, OUKYU_D_D85B, OUKYU_D_D88F, OUKYU_D_D8C2, OUKYU_D_D8E7
OUKYU_D_D82B:
  .byte "I'll do my best to", $0A, "live up to your", $0A, "expectations", $00
OUKYU_D_D85B:
  .byte "I'll be praying for", $0A, "your good health,", $0A, "dear Princess", $00
OUKYU_D_D88F:
  .byte "Just put your trust inme and you will feel", $0A, "at ease", $00
OUKYU_D_D8C2:
  .byte "I've never let you outof my thoughts", $00
OUKYU_D_D8E7:
  .byte "There wil"
OUKYU_D_D8F0:
  .byte "l soon be a", $0A, "day when I will earn arank worthy of you", $00
OUKYU_D_D925:
  .word OUKYU_D_D92B, OUKYU_D_D938, OUKYU_D_D940
OUKYU_D_D92B:
  .byte "Profess love", $00
OUKYU_D_D938:
  .byte "Flowers", $00
OUKYU_D_D940:
  .byte "Gift", $00
OUKYU_D_D945:
  .byte $35, $FF, $00, $FF, $00, $A3, $C8, $CC, $DC, $E0, $C6, $CE, $DA, $E2, $C4, $CF
  .byte $D9, $E4, $C4, $D0, $D8, $E4, $C3, $D1, $D7, $E5, $C3, $D2, $D6, $E5, $C2, $D3
  .byte $D5, $E6, $C2, $D3, $D5, $E6, $C2, $D4, $D4, $E6, $C2, $E6, $FF, $00, $C2, $E6
  .byte $FF, $00, $C2, $E6, $FF, $00, $C2, $E6, $FF, $00, $C3, $E5, $FF, $00, $C3, $E5
  .byte $FF, $00, $C4, $E4, $FF, $00, $C4, $E4, $FF, $00, $C5, $E3, $FF, $00, $C5, $E3
  .byte $FF, $00, $C6, $E2, $FF, $00, $C6, $E2, $FF, $00, $C7, $E1, $FF, $00, $C8, $E0
  .byte $FF, $00, $C9, $DF, $FF, $00, $CA, $DE, $FF, $00, $CB, $DD, $FF, $00, $CC, $DC
  .byte $FF, $00, $CD, $DB, $FF, $00, $CE, $DA, $FF, $00, $CF, $D9, $FF, $00, $D0, $D8
  .byte $FF, $00, $D1, $D7, $FF, $00, $D3, $D5, $FF, $00, $D4, $D4, $FF, $00, $FF, $00
  .byte $FF
  .res 102, $00
  .byte $2D, $FF, $00, $FF, $00, $B0, $C7, $C9, $DF, $E1, $C6, $CB, $DD, $E2, $C3, $CC
  .byte $DC, $E5, $C2, $CD, $DB, $E6, $C1, $CF, $D9, $E7, $C0, $D0, $D8, $E8, $BF, $D0
  .byte $D8, $E9, $BE, $D1, $D7, $EA, $BE, $D1, $D7, $EA, $BD, $D2, $D6, $EB, $BD, $D2
  .byte $D6, $EB, $BC, $D3, $D5, $EC, $BC, $D4, $D4, $EC, $BC, $EC, $FF, $00, $BB, $ED
  .byte $FF, $00, $BB, $ED, $FF, $00, $BC, $EC, $FF, $00, $BC, $EC, $FF, $00, $BC, $EC
  .byte $FF, $00, $BD, $EB, $FF, $00, $BD, $EB, $FF, $00, $BD, $EB, $FF, $00, $BE, $EA
  .byte $FF, $00, $BE, $EA, $FF, $00, $BE, $EA, $FF, $00, $BF, $E9, $FF, $00, $BF, $E9
  .byte $FF, $00, $C0, $E8, $FF, $00, $C0, $E8, $FF, $00, $C1, $E7, $FF, $00, $C1, $E7
  .byte $FF, $00, $C2, $E6, $FF, $00, $C3, $E5, $FF, $00, $C3, $E5, $FF, $00, $C4, $E4
  .byte $FF, $00, $C5, $E3, $FF, $00, $C6, $E2, $FF, $00, $C8, $E0, $FF, $00, $C9, $DF
  .byte $FF, $00, $CA, $DE, $FF, $00, $CB, $DD, $FF, $00, $CC, $DC, $FF, $00, $CD, $DB
  .byte $FF, $00, $CF, $D8, $FF, $00, $D1, $D6, $FF, $00, $D2, $D5, $FF, $00, $D4, $D4
  .byte $FF, $00, $FF, $00, $FF
  .res 50, $00
  .byte $27, $FF, $00, $FF, $00, $BC, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $C1, $C9
  .byte $DF, $E7, $C0, $CB, $DD, $E8, $BF, $CD, $DA, $E9, $BE, $CD, $DA, $EA, $BD, $CF
  .byte $D9, $EB, $BC, $CF, $D9, $EC, $BC, $D1, $D7, $EC, $BB, $D1, $D7, $ED, $BB, $D2
  .byte $D6, $ED, $BB, $D2, $D6, $ED, $BA, $D2, $D6, $EE, $BA, $D3, $D5, $EE, $BA, $D3
  .byte $D5, $EE, $B9, $D4, $D4, $EF, $B9, $EF, $FF, $00, $B9, $EF, $FF, $00, $B8, $F0
  .byte $FF, $00, $B8, $F0, $FF, $00, $B8, $F0, $FF, $00, $B8, $F0, $FF, $00, $B8, $F0
  .byte $FF, $00, $B8, $F0, $FF, $00, $B9, $EF, $FF, $00, $B9, $EF, $FF, $00, $B9, $EF
  .byte $FF, $00, $B9, $EF, $FF, $00, $BA, $EE, $FF, $00, $BA, $EE, $FF, $00, $BB, $ED
  .byte $FF, $00, $BB, $ED, $FF, $00, $BB, $ED, $FF, $00, $BC, $EC, $FF, $00, $BC, $EC
  .byte $FF, $00, $BC, $EC, $FF, $00, $BD, $EB, $FF, $00, $BE, $EA, $FF, $00, $BE, $EA
  .byte $FF, $00, $BF, $E9, $FF, $00, $BF, $E9, $FF, $00, $C0, $E8, $FF, $00, $C1, $E7
  .byte $FF, $00, $C2, $E6, $FF, $00, $C3, $E5, $FF, $00, $C4, $E4, $FF, $00, $C5, $E3
  .byte $FF, $00, $C6, $E2, $FF, $00, $C7, $E1, $FF, $00, $C8, $E0, $FF, $00, $CA, $DE
  .byte $FF, $00, $CB, $DD, $FF, $00, $CC, $DC, $FF, $00, $CD, $DB, $FF, $00, $D0, $D8
  .byte $FF, $00, $D2, $D6, $FF, $00, $D3, $D5, $FF, $00, $D4, $D4, $FF, $00, $D4, $D4
  .byte $FF, $00, $FF, $00, $FF, $00, $00
OUKYU_D_DC2A:
  .byte "The princess is gone!", $0A, "Please, rush to her", $0A, "aid!", $00
OUKYU_D_DC59:
  .byte "You make me suspicioushanging around here.", $0A, "Get out of the palace!"
  .byte $00
OUKYU_D_DC9B:
  .byte "It's a pity I couldn'tmeet the princess", $00
OUKYU_D_DCC3:
  .byte $0A, "Oh, ", $00
OUKYU_D_DCC9:
  .byte "! I'm", $0A, $0A, "so glad we could", $0A, $0A, "meet", $00
OUKYU_D_DCE7:
  .byte "Your words are such a", $0A, "comfort to me", $00
OUKYU_D_DD0B:
  .byte "Your kindnesses fill", $0A, "me with joy", $00
OUKYU_D_DD2C:
  .byte "I hope that you will", $0A, "accept these", $00
OUKYU_D_DD4E:
  .byte "What beautiful", $0A, "flowers!", $00
OUKYU_D_DD66:
  .byte $0A, "I wanted to give you", $0A, $0A, "this ", $00
OUKYU_D_DD83:
  .byte $0A, $0A, "from overseas", $00
OUKYU_D_DD93:
  .byte "How lovely! Thank you", $0A, "so much", $00
OUKYU_D_DDB1:
  .byte "Please accept this", $0A, "gift from me", $00
OUKYU_D_DDD1:
  .byte "Oh, thank you!", $00
OUKYU_D_DDE0:
  .byte "I could never accept", $0A, "such a gift from you!", $00
OUKYU_D_DE0B:
  .byte $0A, "I'm so grateful for", $0A, "your care. Please", $0A, "ask my father for", $0A
  .byte "support", $00
OUKYU_D_DE4C:
  .byte "Fare thee well!", $00
