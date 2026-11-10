; overlay hantei, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp HANTEI_F_B003
; calls 1
HANTEI_F_B003:
  k_func 0
  k_call HANTEI_F_B6E9
  k_stla $F9A6
  k_return
; vars: g_port_flags
HANTEI_F_B00F:
  k_func 0
  k_ldlbf 11
  k_ldriw g_port_flags
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_return
HANTEI_F_B01F:
  k_func 1
  k_ldlbf 13
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9B
  k_popr
  k_shr
  k_stlbf -1
  k_ldlbf -1
  k_pushl
  k_ldlbf 11
  k_pushl
  k_ldli 8
  k_popr
  k_shr
  k_popr
  k_and
  k_jumpf HANTEI_L_B046
  k_ldli 0
  k_jump HANTEI_L_B047
HANTEI_L_B046:
  k_ldli 1
HANTEI_L_B047:
  k_return
; vars: g_princess, g_king_mission, g_port
HANTEI_F_B048:
  k_func 0
  k_ldlba g_princess
  k_ldri 8
  k_and
  k_jumpf HANTEI_L_B075
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf HANTEI_L_B075
  k_ldlba g_king_mission+2
  k_ldri 1
  k_eq
  k_jumpf HANTEI_L_B075
  k_ldlba g_port
  k_pushl
  k_ldlba g_king_mission+3
  k_popr
  k_eq
  k_jumpf HANTEI_L_B075
  k_ldli 0
  k_jump HANTEI_L_B076
HANTEI_L_B075:
  k_ldli 1
HANTEI_L_B076:
  k_return
HANTEI_F_B077:
  k_func 1
  k_ldlbf 13
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9D
  k_popr
  k_shr
  k_stlbf -1
  k_ldlbf -1
  k_pushl
  k_ldlbf 11
  k_pushl
  k_ldli 8
  k_popr
  k_shr
  k_popr
  k_and
  k_return
; sys: metasprite_set
HANTEI_F_B098:
  k_func 8
  k_ldli 1
  k_stla $F9AE
  k_ldli 15
  k_stla $F302
  k_ldli 13
  k_stla $F304
  k_pushi 1
  k_pushi 0
  k_pushi 2
  k_callx $9C39, 6
  k_ldliw $F9B2
  k_stl -8
  k_ldliw $00A0
  k_stl -4
  k_ldlib 127
  k_stl -6
  k_pushib 126
  k_pushi 0
  k_ldl -8
  k_addlib 36
  k_pushl
  k_pushi 3
  k_pushi 2
  k_push -6
  k_push -4
  k_ldl -8
  k_addliw $0090
  k_deref
  k_pushl
  k_pushi 9
  k_callx syscall, 18  ; sys 9 metasprite_set
  k_return
; vars: g_relations, g_title
HANTEI_F_B0D2:
  k_func 7
  k_ldlbf 15
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stln -5
  k_ldliw g_relations
  k_stl -2
  k_ldlbf 13
  k_pushl
  k_ldlbf 11
  k_shl1
  k_shl1
  k_popr
  k_add
  k_ldriw HANTEI_D_B856
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_stlbf -3
  k_ldlbf -3
  k_pushl
  k_ldlbf 13
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_popr
  k_ugt
  k_jumpf HANTEI_L_B138
  k_ldlba g_title
  k_inc
  k_pushl
  k_ldlbf 13
  k_ldrn -5
  k_add
  k_derefb
  k_pushl
  k_ldlbf -3
  k_pushl
  k_ldlbf 13
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_popr
  k_sub
  k_popr
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_jump HANTEI_L_B139
HANTEI_L_B138:
  k_ldli 0
HANTEI_L_B139:
  k_stln -7
  k_ldln -7
  k_return
; vars: g_relations
HANTEI_F_B13E:
  k_func 7
  k_ldlbf 15
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stl -4
  k_ldliw g_relations
  k_stl -2
  k_ldlbf 13
  k_pushl
  k_ldlbf 11
  k_shl1
  k_shl1
  k_popr
  k_add
  k_ldriw HANTEI_D_B866
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_stlbf -5
  k_ldlbf -5
  k_ldrib 50
  k_ult
  k_jumpf HANTEI_L_B190
  k_ldlbf 13
  k_ldr -4
  k_add
  k_derefb
  k_pushl
  k_ldlbf 13
  k_ldr -4
  k_add
  k_derefb
  k_pushl
  k_ldlbf -5
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_popr
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_sdiv
  k_jump HANTEI_L_B191
HANTEI_L_B190:
  k_ldli 0
HANTEI_L_B191:
  k_stln -7
  k_ldln -7
  k_return
; vars: g_player_gold | calls 7
HANTEI_F_B196:
  k_func 6
  k_pushi 3
  k_callx rand, 2
  k_addli 3
  k_ldriw $01F4
  k_mul
  k_stl -4
  k_ldla g_player_gold
  k_jumpt HANTEI_L_B1BF
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pusha HANTEI_D_B7BE
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_return
HANTEI_L_B1BF:
  k_call RF_60EE
  k_call RF_60B2
  k_pusha g_player_gold
  k_pushi 1
  k_pusha HANTEI_D_B7C0
  k_callx RF_3C4E, 6
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf HANTEI_L_B1DA
  k_ldli 0
  k_return
HANTEI_L_B1DA:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_ldl -2
  k_ldr -4
  k_ugt
  k_jumpf HANTEI_L_B20C
  k_pushi 4
  k_callx rand, 2
  k_jumpf HANTEI_L_B20C
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_B876
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldl -2
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_ldli 1
  k_return
HANTEI_L_B20C:
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_B8A8
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 10
  k_return
; calls 7
HANTEI_F_B21C:
  k_func 3
  k_ldli 0
  k_stln -3
HANTEI_L_B224:
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pusha HANTEI_D_B7C4
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw HANTEI_D_B8E4
  k_pushi 1
  k_pushi 8
  k_pushib 25
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf HANTEI_L_B224
  k_ldlbf -1
  k_jumpt HANTEI_L_B26F
  k_ldlbf 11
  k_pushl
  k_callx HANTEI_F_B196, 2
  k_stln -3
  k_ldln -3
  k_jumpf HANTEI_L_B224
  k_ldln -3
  k_ldri 10
  k_eq
  k_jumpf HANTEI_L_B26C
  k_ldli 0
  k_stln -3
HANTEI_L_B26C:
  k_ldln -3
  k_return
HANTEI_L_B26F:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_ldlarg 13
  k_jumpf HANTEI_L_B288
  k_pushi 1
  k_pushiw HANTEI_D_B8F3
  k_jump HANTEI_L_B28C
HANTEI_L_B288:
  k_pushi 1
  k_pushiw HANTEI_D_B929
HANTEI_L_B28C:
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_return
; sys: sprites_hide, memset_long | calls 10
HANTEI_F_B295:
  k_func 0
  k_call HANTEI_F_B098
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pusha HANTEI_D_B7C2
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_B946
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pusharg 13
  k_ldlbf 11
  k_pushl
  k_callx HANTEI_F_B21C, 4
  k_jumpf HANTEI_L_B31E
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_B982
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_B9AF
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 6
  k_pushib 16
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_ldliw $00FF
  k_stlba $FB84
  k_pushiw $01CE
  k_pushi 0
  k_pushiw $F9B2
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_ldli 2
  k_stla $F308
  k_ldli 0
  k_return
HANTEI_L_B31E:
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw HANTEI_D_B9D2
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
; sys: memset_long | calls 1
HANTEI_F_B332:
  k_func 7
  k_leal -7
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stlbf -1
  k_ldli 0
  k_jump HANTEI_L_B367
HANTEI_L_B347:
  k_pushi 10
  k_pushi 0
  k_leal -7
  k_pushl
  k_ldlbf -2
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9AC
  k_add
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_ldlbf -2
  k_inc
HANTEI_L_B367:
  k_stlbf -2
  k_ldlbf -1
  k_pushl
  k_ldlbf -2
  k_popr
  k_ult
  k_jumpt HANTEI_L_B347
  k_return
; vars: g_player_gold | calls 5
HANTEI_F_B377:
  k_func 0
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_B9F0
  k_callx RF_2FB9, 4
  k_ldli 10
  k_swap
  k_ldla g_player_gold
  k_udiv
  k_stla g_player_gold
  k_call HANTEI_F_B332
  k_call RF_472D
  k_return
; vars: g_hero_stats | calls 9
HANTEI_F_B39F:
  k_func 2
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BA12
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushib 120
  k_callx rand, 2
  k_pushl
  k_ldlba g_hero_stats+4
  k_pushl
  k_ldlba $E446
  k_shl1
  k_popr
  k_add
  k_popr
  k_ugt
  k_jumpf HANTEI_L_B3E6
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BA3A
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump HANTEI_L_B41C
HANTEI_L_B3E6:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BA47
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 0
  k_pushiw HANTEI_D_BA61
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call HANTEI_F_B377
HANTEI_L_B41C:
  k_ldli 1
  k_return
; vars: g_player_gold | calls 9
HANTEI_F_B41E:
  k_func 6
  k_ldlba $FB81
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stl -6
  k_ldlba $FB80
  k_ldr -6
  k_add
  k_derefb
  k_pushl
  k_ldlba $FB80
  k_shl1
  k_shl1
  k_ldriw $EEC0
  k_add
  k_derefb
  k_popr
  k_mul
  k_ldri 5
  k_udiv
  k_stl -4
  k_push -4
  k_callx rand, 2
  k_ldr -4
  k_add
  k_addlib 100
  k_stl -4
  k_ldla g_player_gold
  k_jumpt HANTEI_L_B47B
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BA98
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_BAB3
  k_jump HANTEI_L_B4C9
HANTEI_L_B47B:
  k_call RF_60EE
  k_call RF_60B2
  k_pushi 1
  k_pusha g_player_gold
  k_pushi 1
  k_pushiw HANTEI_D_BAE8
  k_callx RF_3C4E, 8
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf HANTEI_L_B497
  k_ldli 0
  k_return
HANTEI_L_B497:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_ldl -2
  k_ldr -4
  k_ugt
  k_jumpf HANTEI_L_B4C2
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_BB01
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldl -2
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_jump HANTEI_L_B4D3
HANTEI_L_B4C2:
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_BB19
HANTEI_L_B4C9:
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call HANTEI_F_B377
HANTEI_L_B4D3:
  k_ldli 1
  k_return
; calls 6
HANTEI_F_B4D5:
  k_func 0
  k_pushi 3
  k_callx rand, 2
  k_jumpt HANTEI_L_B4FE
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_BB42
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump HANTEI_L_B51A
HANTEI_L_B4FE:
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_pushi 1
  k_pushiw HANTEI_D_BB7C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call HANTEI_F_B377
HANTEI_L_B51A:
  k_ldli 1
  k_return
; vars: g_player_name_ptr | calls 14
HANTEI_F_B51C:
  k_func 3
  k_pushi 1
  k_pushib 18
  k_callx RF_21EA, 4
  k_call HANTEI_F_B098
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BBEE
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushi 1
  k_pusha $F9A0
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_call RF_60B2
  k_ldla $F18A
  k_inc
  k_stla $F18A
  k_pusha g_player_name_ptr
  k_callx RF_40DE, 2
  k_ldlbf 11
  k_shl1
  k_ldriw HANTEI_D_BBB1
  k_add
  k_deref
  k_pushl
  k_pushiw HANTEI_D_BC26
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldli 0
  k_stln -3
HANTEI_L_B578:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BC52
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw HANTEI_D_BBB7
  k_pushi 2
  k_pushi 6
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf HANTEI_L_B5B4
  k_ldlbf 11
  k_pushl
  k_ldlbf -1
  k_shl1
  k_ldriw HANTEI_D_BBBD
  k_add
  k_deref
  k_callptrn 2
  k_stln -3
HANTEI_L_B5B4:
  k_ldln -3
  k_jumpf HANTEI_L_B578
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw HANTEI_D_BC64
  k_callx RF_4B44, 2
  k_call RF_2281
  k_return
; vars: g_player_items, g_princess, g_port | calls 8
HANTEI_F_B5CF:
  k_func 8
  k_call RF_60EE
  k_ldla g_player_items
  k_ldri 7
  k_and
  k_stl -2
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf HANTEI_L_B5FF
  k_ldla $EF52
  k_derefb
  k_ldri 9
  k_ne
  k_jumpf HANTEI_L_B5FF
  k_ldla $EF52
  k_derefb
  k_ldri 8
  k_ne
  k_jumpf HANTEI_L_B5FF
  k_pushi 3
  k_callx rand, 2
  k_jumpf HANTEI_L_B608
HANTEI_L_B5FF:
  k_pushib 20
  k_callx rand, 2
  k_jumpt HANTEI_L_B62C
HANTEI_L_B608:
  k_ldlba g_port
  k_ldrib 50
  k_ult
  k_jumpf HANTEI_L_B62C
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushi 2
  k_callx rand, 2
  k_jumpf HANTEI_L_B625
  k_ldliw HANTEI_D_BC9F
  k_jump HANTEI_L_B628
HANTEI_L_B625:
  k_ldliw HANTEI_D_BCDC
HANTEI_L_B628:
  k_pushl
  k_jump HANTEI_L_B6E4
HANTEI_L_B62C:
  k_ldlba g_port
  k_jumpt HANTEI_L_B64C
  k_ldlba $E442
  k_jumpt HANTEI_L_B64C
  k_pushi 10
  k_callx rand, 2
  k_jumpt HANTEI_L_B64C
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw HANTEI_D_BD0C
  k_jump HANTEI_L_B6E4
HANTEI_L_B64C:
  k_ldlba g_port
  k_pushl
  k_callx HANTEI_F_B00F, 2
  k_stlbf -3
  k_ldlbf -3
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B01F, 4
  k_pushl
  k_ldlbf -3
  k_ldri 1
  k_ugt
  k_popr
  k_and
  k_jumpf HANTEI_L_B68D
  k_pushi 2
  k_callx rand, 2
  k_jumpf HANTEI_L_B68D
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushi 2
  k_callx rand, 2
  k_jumpf HANTEI_L_B687
  k_ldliw HANTEI_D_BD5F
  k_jump HANTEI_L_B628
HANTEI_L_B687:
  k_ldliw HANTEI_D_BD8A
  k_jump HANTEI_L_B628
HANTEI_L_B68D:
  k_ldlba $E447
  k_ldri 5
  k_ult
  k_jumpf HANTEI_L_B6DB
  k_pushi 12
  k_callx rand, 2
  k_jumpt HANTEI_L_B6DB
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BDAC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 3
  k_callx rand, 2
  k_switchn 3
    .word $0000, HANTEI_L_B6C6
    .word $0001, HANTEI_L_B6CD
    .word $0002, HANTEI_L_B6D4
    .word HANTEI_L_B6E8
HANTEI_L_B6C6:
  k_pushi 1
  k_pushiw HANTEI_D_BDDC
  k_jump HANTEI_L_B6E4
HANTEI_L_B6CD:
  k_pushi 1
  k_pushiw HANTEI_D_BE15
  k_jump HANTEI_L_B6E4
HANTEI_L_B6D4:
  k_pushi 1
  k_pushiw HANTEI_D_BE4E
  k_jump HANTEI_L_B6E4
HANTEI_L_B6DB:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 1
  k_pushiw HANTEI_D_BE8A
HANTEI_L_B6E4:
  k_callx RF_2FB9, 4
HANTEI_L_B6E8:
  k_return
; vars: g_fleets | calls 10
HANTEI_F_B6E9:
  k_func 10
  k_ldliw g_fleets
  k_stl -10
  k_ldl -10
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -10
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -10
  k_inc
  k_derefb
  k_pushl
  k_ldl -10
  k_derefb
  k_pushl
  k_callx $8747, 8
  k_stlbf -6
  k_stlba $FB81
  k_ldli 0
  k_stl -8
  k_ldlbf -6
  k_pushl
  k_callx HANTEI_F_B00F, 2
  k_stlbf -5
  k_ldlbf -5
  k_ldri 2
  k_eq
  k_jumpf HANTEI_L_B726
  k_ldliw $141C
  k_jump HANTEI_L_B731
HANTEI_L_B726:
  k_ldlbf -5
  k_ldri 3
  k_eq
  k_jumpf HANTEI_L_B734
  k_ldliw $1870
HANTEI_L_B731:
  k_stla $F9A0
HANTEI_L_B734:
  k_ldlbf -5
  k_dec
  k_stlba $FB80
  k_ldlbf -5
  k_ldri 1
  k_ugt
  k_jumpf HANTEI_L_B7B4
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B01F, 4
  k_jumpf HANTEI_L_B7B4
  k_ldlbf -6
  k_pushl
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B0D2, 6
  k_stl -2
  k_pushiw $012C
  k_callx rand, 2
  k_ldr -2
  k_uge
  k_jumpf HANTEI_L_B7A9
  k_call HANTEI_F_B048
  k_jumpf HANTEI_L_B7B4
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B077, 4
  k_jumpf HANTEI_L_B7A5
  k_ldlbf -6
  k_pushl
  k_ldlbf -5
  k_dec
  k_pushl
  k_pushi 0
  k_callx HANTEI_F_B13E, 6
  k_stl -4
  k_pushib 100
  k_callx rand, 2
  k_ldr -4
  k_ult
  k_jumpf HANTEI_L_B7B4
  k_pushi 0
HANTEI_L_B799:
  k_ldlbf -5
  k_dec
  k_pushl
  k_callx HANTEI_F_B295, 4
  k_jump HANTEI_L_B7B3
HANTEI_L_B7A5:
  k_pushi 1
  k_jump HANTEI_L_B799
HANTEI_L_B7A9:
  k_ldlbf -5
  k_dec
  k_pushl
  k_callx HANTEI_F_B51C, 2
  k_ldli 1
HANTEI_L_B7B3:
  k_stl -8
HANTEI_L_B7B4:
  k_ldl -8
  k_jumpt HANTEI_L_B7BB
  k_call HANTEI_F_B5CF
HANTEI_L_B7BB:
  k_ldl -8
  k_return
  .byte $00
HANTEI_D_B7BE:
  .word HANTEI_D_B7C6
HANTEI_D_B7C0:
  .word HANTEI_D_B7E9
HANTEI_D_B7C2:
  .word HANTEI_D_B802
HANTEI_D_B7C4:
  .word HANTEI_D_B83A
HANTEI_D_B7C6:
  .byte "We don't have any goldfor a bribe!", $00
HANTEI_D_B7E9:
  .byte "How much'll we give", $0A, "them", $00
HANTEI_D_B802:
  .byte "Cap'n, some gruff", $0A, "looking officers are", $0A, "heading our way!", $00
HANTEI_D_B83A:
  .byte "What should we do,", $0A, "Captain?", $00
HANTEI_D_B856:
  .byte $FF, $00, $02, $03, $00, $FF, $01, $04, $02, $01, $FF, $05, $03, $04, $05, $FF
HANTEI_D_B866:
  .byte $FF, $00, $02, $03, $00, $FF, $01, $04, $02, $01, $FF, $05, $03, $04, $05, $FF
HANTEI_D_B876:
  .byte "Hmm. I'll let you get", $0A, "away with it just", $0A, "this once", $00
HANTEI_D_B8A8:
  .byte "What's this money?", $0A, "Did ye think ye could", $0A, "bribe us? Get out!", $00
HANTEI_D_B8E4:
  .word HANTEI_D_B8E8, HANTEI_D_B8EE
HANTEI_D_B8E8:
  .byte "Bribe", $00
HANTEI_D_B8EE:
  .byte "Sail", $00
HANTEI_D_B8F3:
  .byte "Don't worry, you'll", $0A, "be able to return", $0A, "sooner or later", $00
HANTEI_D_B929:
  .byte "Sorry, I'm just", $0A, "doing my job", $00
HANTEI_D_B946:
  .byte "All Portuguese are", $0A, "prohibited here. You", $0A, "must leave at once!", $00
HANTEI_D_B982:
  .byte "It doesn't look like", $0A, "we're very welcome", $0A, "here", $00
HANTEI_D_B9AF:
  .byte "Well, let's get to", $0A, "work right away", $00
HANTEI_D_B9D2:
  .byte "It's no use. We have", $0A, "to leave", $00
HANTEI_D_B9F0:
  .byte "Confound it! You'll", $0A, "pay for this!", $00
HANTEI_D_BA12:
  .byte "These officers look", $0A, "like trouble to me!", $00
HANTEI_D_BA3A:
  .byte "We got away!", $00
HANTEI_D_BA47:
  .byte "Blast!  We're", $0A, "surrounded!", $00
HANTEI_D_BA61:
  .byte $0A, "It's no use", $0A, "struggling!", $0A, "We're confiscating", $0A, "your goods", $00
HANTEI_D_BA98:
  .byte "We've no gold for a", $0A, "bribe!", $00
HANTEI_D_BAB3:
  .byte "We'll show that", $0A, "Portuguese fool by", $0A, "seizing his goods", $00
HANTEI_D_BAE8:
  .byte "How much'll we give", $0A, "them", $00
HANTEI_D_BB01:
  .byte "Ha ha ha!", $0A, "Much obliged!", $00
HANTEI_D_BB19:
  .byte "Trying to bribe us,", $0A, "eh? Seize his", $0A, "goods!", $00
HANTEI_D_BB42:
  .byte "Well, he's an honest", $0A, "scoundrel. I'll let", $0A, "you go this time", $00
HANTEI_D_BB7C:
  .byte "We'll show that", $0A, "Portuguese fool and", $0A, "seize his goods!", $00
HANTEI_D_BBB1:
  .word HANTEI_D_BBC3, HANTEI_D_BBCC, HANTEI_D_BBD2
HANTEI_D_BBB7:
  .word HANTEI_D_BBD9, HANTEI_D_BBDE, HANTEI_D_BBE4
HANTEI_D_BBBD:
  .word HANTEI_F_B39F, HANTEI_F_B41E, HANTEI_F_B4D5
HANTEI_D_BBC3:
  .byte "Portugal", $00
HANTEI_D_BBCC:
  .byte "Spain", $00
HANTEI_D_BBD2:
  .byte "Turkey", $00
HANTEI_D_BBD9:
  .byte "Flee", $00
HANTEI_D_BBDE:
  .byte "Bribe", $00
HANTEI_D_BBE4:
  .byte "Surrender", $00
HANTEI_D_BBEE:
  .byte "Cap'n, some gruff", $0A, "looking officers are", $0A, "heading our way!", $00
HANTEI_D_BC26:
  .byte ", you are", $0A, $0A, "under arrest in the", $0A, $0A, "name of %s!", $00
HANTEI_D_BC52:
  .byte "What shall we do?", $00
HANTEI_D_BC64:
  .byte "There's trouble in", $0A, "store for us here.", $0A, "We'd better set sail", $00
HANTEI_D_BC9F:
  .byte "How about a stop at", $0A, "the inn? We might hearsome useful gossip", $00
HANTEI_D_BCDC:
  .byte "It'd be nice to stop", $0A, "at the inn once in a", $0A, "while", $00
HANTEI_D_BD0C:
  .byte $0A, "Cap'n, I hear the", $0A, "Princess is a beauty.", $0A, "I'd love to set my"
  .byte $0A, "eyes on her just once!", $00
HANTEI_D_BD5F:
  .byte "Captain, this is a", $0A, "suspicious looking", $0A, "port", $00
HANTEI_D_BD8A:
  .byte "Cap'n, this port looksa bit tough", $00
HANTEI_D_BDAC:
  .byte "Cap'n, have ye heard", $0A, "of the troubles out atsea?", $00
HANTEI_D_BDDC:
  .byte "We're likely to get", $0A, "tossed about if we", $0A, "sail into a storm", $00
HANTEI_D_BE15:
  .byte "I've heard of ships", $0A, "being swallowed up in", $0A, "certain waters", $00
HANTEI_D_BE4E:
  .byte "If the rudder gets", $0A, "tangled in seaweed", $0A, "we'll have to fix 'er", $00
HANTEI_D_BE8A:
  .byte "Where to, Captain?", $00
  .byte $00
