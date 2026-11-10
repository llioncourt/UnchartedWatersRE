; overlay ucom, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp UCOM_F_9603
; calls 1
UCOM_F_9603:
  k_func 0
  k_call UCOM_F_9675
  k_return
; calls 1
UCOM_F_960C:
  k_func 0
  k_call RF_2E13
  k_return
; sys: metasprite_set
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
  k_ldriw RD_8EC0
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
  k_ldriw UCOM_D_BF42
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
  k_callx syscall, 18  ; sys 9 metasprite_set
  k_return
; sys: sprites_hide
UCOM_F_9666:
  k_func 0
  k_pushib 17
  k_pushi 0
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_return
; calls 7
UCOM_F_9675:
  k_func 2
  k_call RF_5F1C
  k_ldlba $EF81
  k_jumpf UCOM_L_9695
  k_pushi 5
  k_callx RF_3F3E, 2
  k_jumpt UCOM_L_9695
  k_call RF_5C91
  k_pushiw UCOM_D_BF87
  k_callx RF_4B44, 2
UCOM_L_9695:
  k_call RF_5F0F
UCOM_L_9698:
  k_pushi 3
  k_pushi 6
  k_pushiw UCOM_D_BF4A
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
  k_ldriw UCOM_D_BF56
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
; vars: g_fleets | calls 8
UCOM_F_96C6:
  k_func 4
  k_ldliw g_fleets
  k_stl -4
  k_call RF_5C91
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldri 1
  k_and
  k_jumpf UCOM_L_9716
  k_pushi 1
  k_pushiw UCOM_D_C006
  k_callx RF_2FB9, 4
  k_call RF_49B5
  k_stl -2
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
  k_ldriw UCOM_D_BFB8
  k_add
  k_deref
  k_pushl
  k_pushiw UCOM_D_C01E
  k_callx RF_3619, 4
UCOM_L_9714:
  k_ldl -2
  k_return
UCOM_L_9716:
  k_pushiw UCOM_D_C040
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
; sys: sprites_hide | vars: g_fleets | calls 3
UCOM_F_971F:
  k_func 2
  k_ldliw g_fleets
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
  k_pushiw UCOM_D_C05B
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
  k_pushiw UCOM_D_C072
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
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
  k_pushl
  k_callx RF_55F4, 6
  k_ldli 1
  k_return
; calls 1
UCOM_F_9773:
  k_func 2
  k_pushi 2
  k_pushi 2
  k_pushiw UCOM_D_C092
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
  k_ldriw UCOM_D_C096
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
; calls 2
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
; vars: g_days_at_sea, g_cargo, g_player_name_ptr, g_hero_stats | calls 9
UCOM_F_9874:
  k_func 27
  k_ldli 1
  k_stln -27
  k_ldla g_days_at_sea
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
  k_ldriw g_cargo
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
  k_ldriw g_player_name_ptr
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
  k_ldlba g_hero_stats
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
  k_pushiw UCOM_D_C0B0
  k_callx RF_2FB9, 4
  k_ldln -19
  k_derefb
  k_jumpf UCOM_L_9990
  k_ldln -19
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UCOM_D_C0B2
  k_jump UCOM_L_9994
UCOM_L_9990:
  k_pushi 0
  k_pushiw UCOM_D_C0B5
UCOM_L_9994:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw UCOM_D_C0C1
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
  k_stla g_days_at_sea
  k_return
; sys: sprites_hide | vars: g_fleets | calls 10
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
  k_ldliw g_fleets
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
  k_pushiw UCOM_D_C0E1
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_9A9E:
  k_pushi 0
  k_pushiw UCOM_D_C0F6
  k_callx RF_2FB9, 4
  k_ldln -74
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UCOM_D_C107
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
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_ldli 1
  k_return
UCOM_L_9B50:
  k_ldli 0
  k_return
; calls 2
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
; vars: g_fleets | calls 7
UCOM_F_9BB6:
  k_func 36
  k_ldliw g_fleets
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
; sys: sprites_hide | vars: g_fleets | calls 7
UCOM_F_9D00:
  k_func 6
  k_ldliw g_fleets
  k_stl -4
  k_call RF_5C91
  k_pushi 1
  k_pushiw UCOM_D_C109
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
  k_pushiw UCOM_D_C120
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
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
; vars: g_fleets | calls 5
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
  k_ldliw g_fleets
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
  k_pushiw UCOM_D_C14D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_9E2B:
  k_pushi 2
  k_pushi 2
  k_pushiw UCOM_D_C131
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
  k_ldriw UCOM_D_C135
  k_add
  k_deref
  k_callptr
  k_return
; sys: wait_frames | vars: g_fleets | calls 5
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
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
  k_pushl
  k_callx RF_55F4, 6
  k_pushi 1
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
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
; vars: g_fleets
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
  k_ldriw g_fleets
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
; calls 4
UCOM_F_9F47:
  k_func 10
  k_ldlarg 11
  k_ldri 1
  k_ugt
  k_jumpf UCOM_L_9FAC
  k_ldliw UCOM_D_C168
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
  k_pushiw UCOM_D_C169
  k_callx RF_3619, 4
  k_pusharg 11
  k_pushiw UCOM_D_C185
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
  k_pushiw UCOM_D_C18F
  k_callx RF_4B44, 2
UCOM_L_9FAC:
  k_ldlarg 13
  k_derefb
  k_return
; vars: g_fleets, g_hero_stats | calls 7
UCOM_F_9FAF:
  k_func 20
  k_ldliw g_fleets
  k_stl -20
  k_ldl -20
  k_addli 11
  k_deref
  k_ldri 2
  k_and
  k_jumpt UCOM_L_9FCC
  k_call RF_5C91
  k_pushiw UCOM_D_C1BE
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
  k_ldlba g_hero_stats+2
  k_addlib 60
  k_jump UCOM_L_9FF5
UCOM_L_9FE7:
  k_ldlba g_hero_stats+2
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
  k_ldriw UCOM_D_C1B2
  k_add
  k_deref
  k_pushl
  k_push -6
  k_ldl -2
  k_shl1
  k_ldriw UCOM_D_C1AE
  k_add
  k_deref
  k_pushl
  k_pushiw UCOM_D_C1D6
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
; calls 2
UCOM_F_A0B8:
  k_func 0
  k_call UCOM_F_A388
  k_call RF_5C91
  k_return
; sys: color_math, window_off, anim_control | vars: g_fleets, g_ships, g_hero_stats, g_player_items, g_player_name_ptr | calls 19
UCOM_F_A0C4:
  k_func 31
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
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
  k_ldriw UCOM_D_C1FC
  k_add
  k_deref
  k_pushl
  k_pushiw UCOM_D_C2B9
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
  k_ldriw UCOM_D_C204
  k_add
  k_deref
  k_pushl
  k_pushiw UCOM_D_C2C2
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
  k_pushiw UCOM_D_C2C5
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
  k_ldriw UCOM_D_C208
  k_add
  k_deref
  k_pushl
  k_pushiw UCOM_D_C2CF
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
  k_pushiw UCOM_D_C2DA
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
  k_ldriw g_ships
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
  k_ldlba g_hero_stats+2
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
  k_ldla g_player_items
  k_ldri 1
  k_and
  k_stln -31
  k_ldln -31
  k_shl1
  k_ldriw UCOM_D_C228
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
  k_pushiw UCOM_D_C2E0
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
  k_pushi 0
  k_pushiw UCOM_D_C2EF
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
  k_pushiw UCOM_D_C2FA
  k_callx RF_2FB9, 4
  k_jump UCOM_L_A291
UCOM_L_A27D:
  k_ldln -27
  k_addli 8
  k_derefb
  k_ldri 7
  k_and
  k_shl1
  k_ldriw UCOM_D_C218
  k_add
  k_deref
  k_pushl
  k_pushiw UCOM_D_C315
  k_callx RF_3619, 4
UCOM_L_A291:
  k_call RF_472D
UCOM_L_A294:
  k_ldln -29
  k_jumpf UCOM_L_A2A9
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_A2A9:
  k_call RF_4D8B
  k_pushiw $00E0
  k_pushi 0
  k_pushib 48
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx syscall, 6  ; sys 56 anim_control
  k_return
; calls 1
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
; vars: g_fleets | calls 1
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
  k_ldlba g_fleets
  k_pushl
  k_ldl -6
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_popr
  k_eq
  k_jumpf UCOM_L_A37D
  k_ldlba g_fleets+1
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
; sys: sprites_hide | vars: g_fleets
UCOM_F_A388:
  k_func 6
  k_ldli 0
  k_stl -6
  k_ldlba g_fleets+2
  k_stl -2
  k_ldl -2
  k_ldri 1
  k_ugt
  k_jumpf UCOM_L_A3BE
  k_ldlba g_fleets+3
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
  k_callx syscall, 6  ; sys 58 sprites_hide
UCOM_L_A3CB:
  k_ldl -6
  k_return
; sys: tilemap_clear | vars: g_fleets, g_portrait | calls 17
UCOM_F_A3CD:
  k_func 119
  k_ldli 0
  k_stl -18
  k_stl -16
  k_ldli 13
  k_stl -22
  k_stl -20
  k_ldliw g_fleets
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
  k_pushiw UCOM_D_C32B
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
  k_ldriw UCOM_D_C327
  k_add
  k_deref
  k_callptr
UCOM_L_A46A:
  k_pushiw UCOM_D_C340
  k_callx RF_4B44, 2
  k_ldln -28
  k_jumpf UCOM_L_A4C3
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F291
  k_stlba $F290
  k_ldlib -1
  k_stla g_portrait
  k_pushi 0
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx syscall, 8  ; sys 4 tilemap_clear
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
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
  k_ldriw UCOM_D_C327
  k_add
  k_deref
  k_callptr
  k_call RF_5C3E
  k_pushiw UCOM_D_C34C
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
  k_ldriw UCOM_D_C327
  k_add
  k_deref
  k_callptr
  k_pushi 0
  k_pushiw UCOM_D_C35D
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
  k_pushiw UCOM_D_C37B
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
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_A59B:
  k_ldli 0
  k_return
; vars: g_ports | calls 2
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
  k_ldriw g_ports
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
; vars: g_cargo | calls 1
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
  k_ldriw g_cargo
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
; calls 2
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
; calls 9
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
  k_pushiw UCOM_D_C380
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
  k_pushiw UCOM_D_C39F
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
  k_pushiw UCOM_D_C3A1
  k_jump UCOM_L_A790
UCOM_L_A78C:
  k_pushi 0
  k_pushiw UCOM_D_C3A6
UCOM_L_A790:
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pushiw UCOM_D_C3AA
  k_callx RF_2FB9, 4
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushiw UCOM_D_C3BB
  k_jump UCOM_L_A7F4
UCOM_L_A7B0:
  k_call RF_5C3E
  k_pushiw UCOM_D_C3BC
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
  k_pushiw UCOM_D_C3D6
  k_callx RF_2FB9, 4
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UCOM_D_C3E0
  k_callx RF_2FB9, 4
  k_pushiw UCOM_D_C3FD
  k_jump UCOM_L_A7F4
UCOM_L_A7EE:
  k_call RF_5C3E
  k_pushiw UCOM_D_C3FE
UCOM_L_A7F4:
  k_callx RF_4B44, 2
  k_return
; vars: g_captains
UCOM_F_A7F9:
  k_func 2
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
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
; calls 4
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
  k_pushiw UCOM_D_C411
  k_callx RF_2FB9, 4
  k_pushiw UCOM_D_C44B
  k_callx RF_4B44, 2
  k_jump UCOM_L_A847
UCOM_L_A83F:
  k_ldlarg 11
  k_stlba $F198
  k_ldli 1
  k_stlba $F197
UCOM_L_A847:
  k_return
; vars: g_fleets | calls 12
UCOM_F_A848:
  k_func 45
  k_ldliw g_fleets
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
  k_pushiw UCOM_D_C44C
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
  k_pushiw UCOM_D_C468
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
  k_pushiw UCOM_D_C475
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
; calls 1
UCOM_F_A97F:
  k_func 2
  k_pushi 3
  k_pushi 3
  k_pushiw UCOM_D_C486
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
  k_ldriw UCOM_D_C48C
  k_add
  k_deref
  k_callptr
  k_return
; vars: g_fleets
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
  k_ldriw g_fleets
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
; vars: g_fleets | calls 12
UCOM_F_A9F5:
  k_func 47
  k_ldliw g_fleets
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
  k_pushiw UCOM_D_C4F0
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
  k_pushiw UCOM_D_C51B
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_AA86:
  k_ldli 0
  k_stln -29
UCOM_L_AA89:
  k_call RF_5C3E
  k_pushiw UCOM_D_C536
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
  k_pushiw UCOM_D_C543
  k_callx RF_2FB9, 4
  k_ldln -43
  k_ldri 3
  k_eq
  k_jumpf UCOM_L_AB30
  k_pushi 1
  k_pushiw UCOM_D_C54F
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
  k_ldriw UCOM_D_C4B4
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
; vars: g_fleets
UCOM_F_AB82:
  k_func 2
  k_ldliw g_fleets
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
; sys: color_math, window_off, anim_control | calls 1
UCOM_F_AB9A:
  k_func 0
  k_call RF_4D8B
  k_pushiw $00E0
  k_pushi 0
  k_pushib 48
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx syscall, 6  ; sys 56 anim_control
  k_return
; vars: g_fleets | calls 8
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
  k_pushiw UCOM_D_C55E
  k_callx RF_3787, 16
  k_stl -8
  k_call UCOM_F_AB9A
  k_ldl -10
  k_jumpf UCOM_L_AC63
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
; vars: g_player_name_ptr | calls 5
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
  k_ldriw g_player_name_ptr
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
  k_pushiw UCOM_D_C55F
  k_callx RF_4B44, 2
  k_ldliw $00FF
  k_return
UCOM_L_ACBA:
  k_pushi 1
  k_pushiw UCOM_D_C57D
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
; calls 6
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
  k_pushiw UCOM_D_C589
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
; sys: tilemap_write, tilemap_clear | vars: g_fleets | calls 7
UCOM_F_AD5E:
  k_func 8
  k_call UCOM_F_AD4B
  k_stl -6
UCOM_L_AD67:
  k_pushi 2
  k_pushi 2
  k_pushiw UCOM_D_C58A
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
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx syscall, 8  ; sys 4 tilemap_clear
  k_push -4
  k_push -6
  k_pushi 1
  k_callx RF_2682, 6
  k_call RF_5F56
  k_ldl -8
  k_jumpf UCOM_L_ADCD
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx syscall, 8  ; sys 4 tilemap_clear
  k_push -2
  k_push -6
  k_pushi 1
  k_callx RF_2682, 6
  k_call RF_5F56
  k_ldl -8
  k_jumpf UCOM_L_AE1C
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
  k_pushl
  k_callx RF_55F4, 6
UCOM_L_AE1C:
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpt UCOM_L_AD67
  k_ldli 0
  k_return
; vars: g_ships | calls 7
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
  k_ldriw g_ships
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
  k_pushiw UCOM_D_C59C
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
; sys: tilemap_write, tilemap_clear | vars: g_fleets | calls 6
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
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx syscall, 8  ; sys 4 tilemap_clear
  k_push -6
  k_push -4
  k_pushi 1
  k_callx RF_2401, 6
  k_call RF_5F56
  k_ldl -8
  k_jumpf UCOM_L_AEFF
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
; vars: g_cargo | calls 12
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
  k_ldriw g_cargo
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
  k_pushiw UCOM_D_C5A8
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
  k_pushiw UCOM_D_C5BE
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
  k_pushiw UCOM_D_C5C2
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
; vars: g_fleets
UCOM_F_AFDB:
  k_func 2
  k_ldliw g_fleets
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
; calls 4
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
; vars: g_player_items
UCOM_F_B01A:
  k_func 8
  k_ldliw g_player_items
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
; vars: g_fleets
UCOM_F_B065:
  k_func 2
  k_ldliw g_fleets
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
; sys: wait_frames, tilemap_write | calls 13
UCOM_F_B07D:
  k_func 50
  k_call RF_5C91
  k_leal -50
  k_pushl
  k_callx UCOM_F_B01A, 2
  k_stl -10
  k_jumpt UCOM_L_B09A
  k_pushiw UCOM_D_C5DF
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
  k_pushiw UCOM_D_C5F7
  k_callx RF_2FB9, 4
  k_ldl -8
  k_jumpf UCOM_L_B0B3
  k_pushi 1
  k_pushiw UCOM_D_C60D
  k_callx RF_2FB9, 4
UCOM_L_B0B3:
  k_pushi 1
  k_pushiw UCOM_D_C615
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
  k_callx syscall, 4  ; sys 16 wait_frames
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
  k_callx syscall, 14  ; sys 5 tilemap_write
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
; sys: metasprite_set | vars: g_fleets
UCOM_F_B16F:
  k_func 6
  k_ldliw g_fleets
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
  k_ldriw RD_8EC0
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
  k_pushiw UCOM_D_C61C
  k_pushi 2
  k_pushi 1
  k_push -6
  k_push -4
  k_pushi 14
  k_pushi 9
  k_callx syscall, 18  ; sys 9 metasprite_set
  k_return
; sys: sprite_commit
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
  k_ldriw RD_8EC0
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
  k_pusha UCOM_D_C620
  k_push -4
  k_push -2
  k_pushi 14
  k_pushib 19
  k_callx syscall, 12  ; sys 19 sprite_commit
  k_return
; sys: oam_hide_all, tilemap_clear | calls 3
UCOM_F_B241:
  k_func 0
  k_pushi 1
  k_callx UCOM_F_B4AC, 2
  k_call UCOM_F_B16F
  k_call RF_2F18
  k_pushi 8
  k_callx syscall, 2  ; sys 8 oam_hide_all
  k_pushi 0
  k_pushi 0
  k_pushi 1
  k_pushi 4
  k_callx syscall, 8  ; sys 4 tilemap_clear
  k_return
; sys: tilemap_clear
UCOM_F_B25F:
  k_func 0
  k_pushiw $2000
  k_pushi 0
  k_pushi 3
  k_pushi 4
  k_callx syscall, 8  ; sys 4 tilemap_clear
  k_ldli 2
  k_stlba $F28F
  k_return
; vars: g_player_items, g_fleets | calls 7
navigation_item_use:
  k_func 4
  k_ldla g_player_items
  k_ldri 4
  k_and
  k_jumpt UCOM_L_B28C
  k_call RF_5C91
  k_pushiw UCOM_D_C622
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
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
  k_pushl
  k_callx RF_55F4, 6
  k_ldl -4
  k_ldri 1
  k_eq
  k_jumpf UCOM_L_B2C6
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
; sys: sprites_hide | calls 4
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
  k_callx map_open, 4
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
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_ldl -10
  k_jumpf UCOM_L_B338
  k_push -8
  k_push -6
  k_callx map_open, 4
  k_ldl -6
  k_stlba $F165
  k_ldl -8
  k_stlba $F166
UCOM_L_B338:
  k_return
; vars: g_fleets | calls 5
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
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
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
; sys: tilemap_write | calls 1
UCOM_F_B374:
  k_func 0
  k_pushi 0
  k_pushi 4
  k_pushib 30
  k_pushib 27
  k_pushi 2
  k_pushi 3
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushib 27
  k_pushi 2
  k_callx RF_2F8F, 4
  k_return
; vars: g_princess | calls 1
UCOM_F_B38E:
  k_func 4
  k_ldli 1
  k_stl -4
UCOM_L_B395:
  k_ldlba g_princess
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
  k_pushiw UCOM_D_C63A
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
  k_ldriw UCOM_D_C646
  k_add
  k_deref
  k_callptr
  k_jumpf UCOM_L_B395
UCOM_L_B3C6:
  k_ldl -4
  k_return
; sys: sprite_commit
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
  k_ldriw RD_8EC0
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
  k_pusha UCOM_D_C674
  k_pusharg 13
  k_pusharg 11
  k_pushn 19
  k_pushib 19
  k_callx syscall, 12  ; sys 19 sprite_commit
  k_return
; vars: g_port_flags | calls 3
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
  k_ldriw g_port_flags
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
; sys: tilemap_copy | vars: g_fh_cbmap0 | calls 3
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
  k_pusha g_fh_cbmap0
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
  k_ldriw UCOM_D_C6E0
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
  k_ldriw UCOM_D_C676
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
  k_callx syscall, 16  ; sys 6 tilemap_copy
  k_ldlarg 11
  k_jumpf UCOM_L_B53D
  k_call UCOM_F_B420
UCOM_L_B53D:
  k_return
; sys: color_math, window_off, anim_control | calls 11
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
  k_pushiw UCOM_D_C6F2
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
  k_pushiw UCOM_D_C700
  k_callx RF_3608, 4
  k_ldl -12
  k_addli 6
  k_pushl
  k_ldl -10
  k_addli 2
  k_pushl
  k_callx RF_2F8F, 4
  k_push -4
  k_pushiw UCOM_D_C706
  k_callx RF_3608, 4
  k_call RF_5C91
  k_pushi 1
  k_pushiw UCOM_D_C70C
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
  k_pushiw UCOM_D_C736
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
  k_pushiw UCOM_D_C73A
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
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx syscall, 6  ; sys 56 anim_control
  k_call RF_4D8B
  k_ldl -8
  k_return
; vars: g_hero_stats, g_player_name_ptr | calls 3
UCOM_F_B651:
  k_func 29
  k_ldlarg 11
  k_ldri 10
  k_mul
  k_ldriw g_hero_stats
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
  k_ldliw g_hero_stats
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
  k_ldriw g_player_name_ptr
  k_add
  k_stln -27
  k_ldliw g_player_name_ptr
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
  k_pushiw UCOM_D_C73E
  k_callx RF_4B44, 2
  k_return
; vars: g_fleets
UCOM_F_B727:
  k_func 2
  k_ldliw g_fleets
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
; sys: color_math, window_off, anim_control | vars: g_player_name_ptr, g_player_gold | calls 10
UCOM_F_B73F:
  k_func 12
  k_ldli 0
  k_stl -10
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
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
  k_pushiw UCOM_D_C753
  k_callx RF_3619, 4
  k_ldla g_player_gold
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
  k_pushiw UCOM_D_C75F
  k_callx RF_3619, 4
  k_pushi 1
  k_push -8
  k_pushi 1
  k_pushiw UCOM_D_C768
  k_callx RF_3C4E, 8
  k_stl -6
  k_ldl -6
  k_ldrib -1
  k_ne
  k_jumpf UCOM_L_B7E2
  k_ldl -6
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
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
  k_pushiw UCOM_D_C778
  k_callx RF_3619, 4
  k_ldli 1
  k_stl -10
UCOM_L_B7E2:
  k_call RF_4D8B
  k_pushiw $00E0
  k_pushi 0
  k_pushib 48
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx syscall, 6  ; sys 56 anim_control
  k_ldl -10
  k_return
; vars: g_player_gold | calls 4
UCOM_F_B803:
  k_func 4
  k_ldla g_player_gold
  k_jumpt UCOM_L_B81A
  k_call RF_5C91
  k_pushiw UCOM_D_C78F
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
; sys: sprites_hide, sprite_commit | vars: g_fh_fdata | calls 5
UCOM_F_B843:
  k_func 20
  k_ldln 19
  k_shl1
  k_ldriw UCOM_D_C7AD
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
  k_pushiw UCOM_D_C7BD
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C7C5
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 18
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C7CD
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
  k_pushiw UCOM_D_C7D5
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C7DD
  k_callx RF_2FB9, 4
  k_ldlarg 13
  k_addlib 18
  k_pushl
  k_ldlarg 11
  k_inc
  k_pushl
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C7E5
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
  k_ldriw UCOM_D_C7B1
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
  k_ldriw UCOM_D_C7B7
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
  k_ldriw RD_8EC0
  k_add
  k_deref
  k_popr
  k_add
  k_stl -20
  k_ldl -4
  k_ldri 3
  k_shl
  k_stl -18
  k_pusha g_fh_fdata
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
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_pushi 0
  k_pushiw $30E7
  k_push -20
  k_push -18
  k_push -14
  k_pushib 19
  k_callx syscall, 12  ; sys 19 sprite_commit
  k_ldl -2
  k_jumpt UCOM_L_B96B
  k_pushi 9
  k_pushi 0
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
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
  k_callx syscall, 6  ; sys 58 sprites_hide
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
; sys: tilemap_write | vars: g_player_name_ptr | calls 3
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
  k_callx syscall, 14  ; sys 5 tilemap_write
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
  k_pushiw UCOM_D_C7ED
  k_callx RF_2FB9, 4
UCOM_L_BA1A:
  k_ldlarg 17
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 17
  k_derefb
  k_jumpt UCOM_L_BA35
  k_pushi 1
  k_pushiw UCOM_D_C7F1
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
  k_callx syscall, 14  ; sys 5 tilemap_write
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
; calls 1
UCOM_F_BA6A:
  k_func 0
  k_pushi 1
  k_pusharg 11
  k_callx RF_2FB9, 4
  k_return
; calls 3
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
; sys: tilemap_write | calls 8
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
  k_pushiw UCOM_D_C7F5
  k_callx RF_2FB9, 4
  k_push -12
  k_pushib 18
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C7FA
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
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_ldl -12
  k_addli 12
  k_pushl
  k_pushib 18
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C804
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addli 13
  k_pushl
  k_pushi 11
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw UCOM_D_C80C
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 20
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C811
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 21
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C81B
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 22
  k_pushl
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UCOM_D_C824
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
; vars: g_ships, g_cargo
UCOM_F_BBA8:
  k_func 4
  k_ldlarg 17
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -4
  k_push -4
  k_ldlarg 11
  k_popstoreb
  k_ldlarg 15
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -4
  k_push -4
  k_ldlarg 13
  k_popstoreb
  k_return
; sys: sprites_hide | vars: g_ships, g_cargo | calls 7
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
  k_ldriw g_ships
  k_add
  k_stln -58
  k_ldln -58
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
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
  k_callx syscall, 6  ; sys 58 sprites_hide
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
; calls 13
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
  k_pushiw UCOM_D_C82D
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UCOM_L_BDC1:
  k_pushiw UCOM_D_C845
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
  k_pushiw UCOM_D_C85E
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
  k_pushiw UCOM_D_C873
  k_callx RF_2FB9, 4
  k_call RF_5FDB
  k_ldln -11
  k_return
; vars: g_cargo, g_ships
UCOM_F_BE1F:
  k_func 10
  k_ldliw g_cargo
  k_stl -10
  k_ldli 0
  k_stl -2
  k_stl -4
  k_ldliw g_ships
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
; vars: g_ships | calls 11
UCOM_F_BE5E:
  k_func 34
  k_call RF_5C91
  k_leal -22
  k_pushl
  k_callx UCOM_F_BE1F, 2
  k_stln -30
  k_ldln -30
  k_jumpt UCOM_L_BE7E
  k_pushiw UCOM_D_C876
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
  k_ldriw g_ships
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
  k_pushiw UCOM_D_C89B
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
  k_pushiw UCOM_D_C8B4
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
; calls 1
UCOM_F_BF17:
  k_func 4
UCOM_L_BF1C:
  k_pushi 4
  k_pushi 4
  k_pushiw UCOM_D_C8C6
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
  k_ldriw UCOM_D_C8CE
  k_add
  k_deref
  k_callptr
  k_stl -4
  k_ldl -4
  k_jumpf UCOM_L_BF1C
  k_ldli 1
  k_return
  .byte $00
UCOM_D_BF42:
  .byte "0;1;2;3;"
UCOM_D_BF4A:
  .word UCOM_D_BF64, UCOM_D_BF69, UCOM_D_BF6E, UCOM_D_BF73, UCOM_D_BF7A, UCOM_D_BF81
UCOM_D_BF56:
  .word UCOM_F_9773, UCOM_F_A97F, UCOM_F_B38E, UCOM_F_9DB7, UCOM_F_A9F5, UCOM_F_BF17, UCOM_F_960C
UCOM_D_BF64:
  .byte "Move", $00
UCOM_D_BF69:
  .byte "Look", $00
UCOM_D_BF6E:
  .byte "Info", $00
UCOM_D_BF73:
  .byte "Debark", $00
UCOM_D_BF7A:
  .byte "Battle", $00
UCOM_D_BF81:
  .byte "Order", $00
UCOM_D_BF87:
  .byte "Cap'n, a port is", $0A, "rumored to lie", $0A, "in these waters", $00
  .byte $00
UCOM_D_BFB8:
  .word UCOM_D_BFC8, UCOM_D_BFCE, UCOM_D_BFD8, UCOM_D_BFDD, UCOM_D_BFE7, UCOM_D_BFED, UCOM_D_BFF7, UCOM_D_BFFC
UCOM_D_BFC8:
  .byte "north", $00
UCOM_D_BFCE:
  .byte "northeast", $00
UCOM_D_BFD8:
  .byte "east", $00
UCOM_D_BFDD:
  .byte "southeast", $00
UCOM_D_BFE7:
  .byte "south", $00
UCOM_D_BFED:
  .byte "southwest", $00
UCOM_D_BFF7:
  .byte "west", $00
UCOM_D_BFFC:
  .byte "northwest", $00
UCOM_D_C006:
  .byte "Set the compass", $0A, "bearing", $00
UCOM_D_C01E:
  .byte "All hands aloft!", $0A, "Set to the", $0A, "%s!", $1B, "W", $00
UCOM_D_C040:
  .byte "We're anchored", $0A, "down, Cap'n", $00
UCOM_D_C05B:
  .byte "Heave to!", $0A, "Anchor down!", $00
UCOM_D_C072:
  .byte "All hands up", $0A, "anchor! We're", $0A, "off!", $00
UCOM_D_C092:
  .word UCOM_D_C09A, UCOM_D_C0A4
UCOM_D_C096:
  .word UCOM_F_96C6, UCOM_F_971F
UCOM_D_C09A:
  .byte "Direction", $00
UCOM_D_C0A4:
  .byte "Cast Anchor", $00
UCOM_D_C0B0:
  .byte $0A, $00
UCOM_D_C0B2:
  .byte "'s", $00
UCOM_D_C0B5:
  .byte "Cap'n, your", $00
UCOM_D_C0C1:
  .byte $0A, $0A, "sailing skill", $0A, $0A, "has improved", $1B, "W", $00
UCOM_D_C0E1:
  .byte "There's no port", $0A, "here", $00
UCOM_D_C0F6:
  .byte $0A, "OK to call at", $0A, $0A, $00
UCOM_D_C107:
  .byte $0A, $00
UCOM_D_C109:
  .byte "Select a", $0A, "landing point", $00
UCOM_D_C120:
  .byte "OK to go ashore", $0A, $00
UCOM_D_C131:
  .word UCOM_D_C139, UCOM_D_C143
UCOM_D_C135:
  .word UCOM_F_9A0D, UCOM_F_9D00
UCOM_D_C139:
  .byte "Port call", $00
UCOM_D_C143:
  .byte "Go ashore", $00
UCOM_D_C14D:
  .byte "We can't drop", $0A, "anchor here", $00
  .byte $00
UCOM_D_C168:
  .byte $00
UCOM_D_C169:
  .byte "There are %d", $0A, "fleets there.", $0A, $00
UCOM_D_C185:
  .byte "Which one", $00
UCOM_D_C18F:
  .byte "That fleet's", $0A, "right next to", $0A, "us!", $00
UCOM_D_C1AE:
  .byte $B6, $C1, $B8, $C1
UCOM_D_C1B2:
  .byte $BA, $C1, $BC, $C1, $4E, $00, $53, $00, $45, $00, $57, $00
UCOM_D_C1BE:
  .byte "We don't have a", $0A, "sextant", $00
UCOM_D_C1D6:
  .byte "Our present"
  .byte $0A
  .byte "position is"
  .byte $0A
  .byte "%s %d"
  .byte $DF
  .byte " %s %d"
  .byte $DF, $00
UCOM_D_C1FC:
  .word UCOM_D_C22C, UCOM_D_C237, UCOM_D_C23F, UCOM_D_C247
UCOM_D_C204:
  .word UCOM_D_C252, UCOM_D_C25E
UCOM_D_C208:
  .byte $67, $C2, $69, $C2, $6C, $C2, $6E, $C2, $71, $C2, $73, $C2, $76, $C2, $78, $C2
UCOM_D_C218:
  .word UCOM_D_C27B, UCOM_D_C281, UCOM_D_C28B, UCOM_D_C290, UCOM_D_C29A, UCOM_D_C2A0, UCOM_D_C2AA, UCOM_D_C2AF
UCOM_D_C228:
  .byte $3E, $5C, $B8, $A0
UCOM_D_C22C:
  .byte "Portuguese", $00
UCOM_D_C237:
  .byte "Spanish", $00
UCOM_D_C23F:
  .byte "Turkish", $00
UCOM_D_C247:
  .byte "Portuguese", $00
UCOM_D_C252:
  .byte "trade ships", $00
UCOM_D_C25E:
  .byte "warships", $00
  .byte $4E, $00
  .byte "NE", $00
  .byte $45, $00
  .byte "SE", $00
  .byte $53, $00
  .byte "SW", $00
  .byte $57, $00
  .byte "NW", $00
UCOM_D_C27B:
  .byte "North", $00
UCOM_D_C281:
  .byte "Northeast", $00
UCOM_D_C28B:
  .byte "East", $00
UCOM_D_C290:
  .byte "Southeast", $00
UCOM_D_C29A:
  .byte "South", $00
UCOM_D_C2A0:
  .byte "Southwest", $00
UCOM_D_C2AA:
  .byte "West", $00
UCOM_D_C2AF:
  .byte "Northwest", $00
UCOM_D_C2B9:
  .byte $1B
  .byte "R", $22, $1B, "E>%s", $00
UCOM_D_C2C2:
  .byte "%s", $00
UCOM_D_C2C5:
  .byte "Speed:%3d", $00
UCOM_D_C2CF:
  .byte "Course: %s", $00
UCOM_D_C2DA:
  .byte "Type:", $00
UCOM_D_C2E0:
  .byte $0A, "There sails", $0A, $0A, $00
UCOM_D_C2EF:
  .byte "'s", $0A, $0A, "fleet!", $00
UCOM_D_C2FA:
  .byte "They're pirates,", $0A, "they are!", $00
UCOM_D_C315:
  .byte "They're headed", $0A, "%s", $00
UCOM_D_C327:
  .word UCOM_F_A0B8, UCOM_F_A0B8
UCOM_D_C32B:
  .byte "No fleet within", $0A, "view", $00
UCOM_D_C340:
  .byte "Look where?", $00
UCOM_D_C34C:
  .byte "That's our fleet", $00
UCOM_D_C35D:
  .byte $0A, "Cap'n, that's", $0A, $0A, "the port of", $0A, $0A, $00
UCOM_D_C37B:
  .byte $1B, $57, $1B, $57, $00
UCOM_D_C380:
  .byte "I haven't a word", $0A, "to say to you", $00
UCOM_D_C39F:
  .byte $0A, $00
UCOM_D_C3A1:
  .byte " are", $00
UCOM_D_C3A6:
  .byte " is", $00
UCOM_D_C3AA:
  .byte $0A, $0A, "best sold in", $0A, $0A, $00
UCOM_D_C3BB:
  .byte $00
UCOM_D_C3BC:
  .byte "Good luck on", $0A, "your voyage!", $00
UCOM_D_C3D6:
  .byte $0A, "Back in", $0A, $00
UCOM_D_C3E0:
  .byte $0A, "there were some", $0A, "skilled men", $00
UCOM_D_C3FD:
  .byte $00
UCOM_D_C3FE:
  .byte "Beware of", $0A, "pirates!", $00
UCOM_D_C411:
  .byte $0A, "Hmm, they're a", $0A, "suspicious lot.", $0A, "They won't even", $0A, "answer us"
  .byte $00
UCOM_D_C44B:
  .byte $00
UCOM_D_C44C:
  .byte "There's not a", $0A, "fleet near us", $00
UCOM_D_C468:
  .byte "Which fleet?", $00
UCOM_D_C475:
  .byte "That's our fleet", $00
UCOM_D_C486:
  .word UCOM_D_C492, UCOM_D_C49A, UCOM_D_C4A1
UCOM_D_C48C:
  .word UCOM_F_A3CD, UCOM_F_9FAF, UCOM_F_A848
UCOM_D_C492:
  .byte "Inspect", $00
UCOM_D_C49A:
  .byte "Survey", $00
UCOM_D_C4A1:
  .byte "Negotiate", $00
  .byte $00, $B8, $C4, $C1, $C4, $C7, $C4, $CF, $C4
UCOM_D_C4B4:
  .word UCOM_D_C4D6, UCOM_D_C4E6
  .byte "Portugal", $00
  .byte "Spain", $00
  .byte "Turkish", $00
  .byte "Pirate", $00
UCOM_D_C4D6:
  .byte "merchant fleet", $0A, $00
UCOM_D_C4E6:
  .byte "warships", $0A, $00
UCOM_D_C4F0:
  .byte "We can't fight", $0A, "in the middle", $0A, "of the night!", $00
UCOM_D_C51B:
  .byte "There's no", $0A, "fleet to attack", $00
UCOM_D_C536:
  .byte "Which fleet?", $00
UCOM_D_C543:
  .byte "Attack the", $0A, $00
UCOM_D_C54F:
  .byte "pirate fleet", $0A, $00
  .byte $00
UCOM_D_C55E:
  .byte $00
UCOM_D_C55F:
  .byte "There's no one", $0A, "but me with ye", $00
UCOM_D_C57D:
  .byte "Which mate?", $00
UCOM_D_C589:
  .byte $00
UCOM_D_C58A:
  .word UCOM_D_C58E, UCOM_D_C597
UCOM_D_C58E:
  .byte "Yourself", $00
UCOM_D_C597:
  .byte "Mate", $00
UCOM_D_C59C:
  .byte "Which ship?", $00
UCOM_D_C5A8:
  .byte "No cargo on", $0A, "that ship", $00
UCOM_D_C5BE:
  .byte "%4d", $00
UCOM_D_C5C2:
  .byte $0A, "This is the", $0A, $0A, "cargo of the", $0A, $0A, $00
UCOM_D_C5DF:
  .byte "We don't have", $0A, "any items", $00
UCOM_D_C5F7:
  .byte "We have these", $0A, "items", $0A, "(", $00
UCOM_D_C60D:
  .byte "A-more ", $00
UCOM_D_C615:
  .byte "B-end)", $00
UCOM_D_C61C:
  .byte "A9B9"
UCOM_D_C620:
  .byte "C9"
UCOM_D_C622:
  .byte "There's nothing", $0A, "unusual", $00
UCOM_D_C63A:
  .word UCOM_D_C652, UCOM_D_C658, UCOM_D_C65E, UCOM_D_C663, UCOM_D_C669, UCOM_D_C66F
UCOM_D_C646:
  .word UCOM_F_AEAB, UCOM_F_AFF3, navigation_item_use, UCOM_F_AD5E, UCOM_F_B07D, UCOM_F_B339
UCOM_D_C652:
  .byte "Fleet", $00
UCOM_D_C658:
  .byte "Cargo", $00
UCOM_D_C65E:
  .byte "Land", $00
UCOM_D_C663:
  .byte "Mates", $00
UCOM_D_C669:
  .byte "Items", $00
UCOM_D_C66F:
  .byte "Map", $00
  .byte $00
UCOM_D_C674:
  .byte $40, $39
UCOM_D_C676:
  .byte $20, $11, $21, $11, $22, $11, $23, $11, $24, $11, $25, $11, $26, $11, $27, $11
  .byte $28, $11, $29, $11, $2A, $11, $2B, $11, $2C, $11, $2D, $11, $2E, $11, $2F, $11
  .byte $30, $11, $31, $11, $32, $11, $33, $11, $34, $11, $35, $11, $36, $11, $37, $11
  .byte $38, $11, $39, $11, $3A, $11, $3B, $11, $3C, $11, $3D, $11, $3E, $11, $3F, $11
  .byte $40, $11, $41, $11, $42, $11, $43, $11, $44, $11, $45, $11, $46, $11, $47, $11
  .byte $48, $11, $49, $11, $4A, $11, $4B, $11, $4C, $11, $4D, $11, $4E, $11, $4F, $11
  .byte $50, $11, $51, $11, $52, $11, $53, $11, $54, $11
UCOM_D_C6E0:
  .byte $18, $00, $1F, $00, $26, $00, $B9, $00, $C0, $00, $C7, $00, $5A, $01, $61, $01
  .byte "h", $01
UCOM_D_C6F2:
  .byte $1B, "R", $22, $1B, "E=Rations", $00
UCOM_D_C700:
  .byte $25, $33, $64, $1B, $EF, $00
UCOM_D_C706:
  .byte $25, $33, $64, $1B, $EF, $00
UCOM_D_C70C:
  .byte "Set rations to", $0A, "what (1-99)?", $0A, "(B-cancel)", $1B, "C0", $00
UCOM_D_C736:
  .byte "%2d", $00
UCOM_D_C73A:
  .byte "%2d", $00
UCOM_D_C73E:
  .byte "Thank you very", $0A, "much!", $00
UCOM_D_C753:
  .byte "Loyalty:%4d", $00
UCOM_D_C75F:
  .byte "Gold: %d", $00
UCOM_D_C768:
  .byte $0A, "Give how much", $0A, $00
UCOM_D_C778:
  .byte $1B, "R", $22, $1B, "E>", $1B, "C0Loyalty:%4d", $1B, "W", $00
UCOM_D_C78F:
  .byte "There's a limit", $0A, "to your gold!", $00
UCOM_D_C7AD:
  .byte $02, $00, $00, $00
UCOM_D_C7B1:
  .byte $03, $00, $0A, $00, $0A, $00
UCOM_D_C7B7:
  .byte $0E, $00, $02, $00, $0E, $00
UCOM_D_C7BD:
  .byte "Replace", $00
UCOM_D_C7C5:
  .byte "with   ", $00
UCOM_D_C7CD:
  .byte "whom?  ", $00
UCOM_D_C7D5:
  .byte "Choose ", $00
UCOM_D_C7DD:
  .byte "mate to", $00
UCOM_D_C7E5:
  .byte "replace", $00
UCOM_D_C7ED:
  .byte $1B
  .byte "C1", $00
UCOM_D_C7F1:
  .byte $1B
  .byte "C0", $00
UCOM_D_C7F5:
  .byte "Ship", $00
UCOM_D_C7FA:
  .byte "Navigator", $00
UCOM_D_C804:
  .byte "Sailors", $00
UCOM_D_C80C:
  .byte "Done", $00
UCOM_D_C811:
  .byte $1B, $F1
  .byte "-Select", $00
UCOM_D_C81B:
  .byte "A-Decide", $00
UCOM_D_C824:
  .byte "B-Cancel", $00
UCOM_D_C82D:
  .byte "We only have", $0A, "one vessel", $00
UCOM_D_C845:
  .byte "Replace which", $0A, "navigator?", $00
UCOM_D_C85E:
  .byte "The flagship", $0A, "is the ", $00
UCOM_D_C873:
  .byte $1B, $57, $00
UCOM_D_C876:
  .byte "Cap'n, we don't", $0A, "have a ship to", $0A, "spare", $00
UCOM_D_C89B:
  .byte "Dispose of", $0A, "which vessel?", $00
UCOM_D_C8B4:
  .byte "Dispose of the", $0A, "%s", $00
UCOM_D_C8C6:
  .word UCOM_D_C8D6, UCOM_D_C8DD, UCOM_D_C8E8, UCOM_D_C8F2
UCOM_D_C8CE:
  .word UCOM_F_B53E, UCOM_F_B803, UCOM_F_BD9E, UCOM_F_BE5E
UCOM_D_C8D6:
  .byte "Ration", $00
UCOM_D_C8DD:
  .byte "Distribute", $00
UCOM_D_C8E8:
  .byte "Personnel", $00
UCOM_D_C8F2:
  .byte "Dispose", $00
