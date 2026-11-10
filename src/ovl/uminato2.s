; overlay uminato2, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp UMINATO2_F_B003
; calls 3
UMINATO2_F_B003:
  k_func 0
  k_ldla $F9A2
  k_switchn 3
    .word $0015, UMINATO2_L_B01C
    .word $0002, UMINATO2_L_B023
    .word $0001, UMINATO2_L_B02A
    .word UMINATO2_L_B022
UMINATO2_L_B01C:
  k_call UMINATO2_F_B6FE
UMINATO2_L_B01F:
  k_stla $F9A6
UMINATO2_L_B022:
  k_return
UMINATO2_L_B023:
  k_call UMINATO2_F_B741
UMINATO2_L_B026:
  k_ldli 0
  k_jump UMINATO2_L_B01F
UMINATO2_L_B02A:
  k_call UMINATO2_F_B784
  k_jump UMINATO2_L_B026
UMINATO2_F_B030:
  k_func 0
  k_return
; calls 1
UMINATO2_F_B036:
  k_func 0
  k_pushi 1
  k_pushi 9
  k_callx RF_60CE, 4
  k_return
; vars: g_fh_cbmap0, g_cargo | calls 11
UMINATO2_F_B042:
  k_func 41
  k_ldli 0
  k_stln -17
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -19
  k_pushi 0
  k_pushi 1
  k_pushi 14
  k_pushib 20
  k_pushi 6
  k_pushi 6
  k_callx RF_4F65, 12
  k_pushi 7
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UMINATO2_D_B8D2
  k_callx RF_2FB9, 4
  k_call UMINATO2_F_B030
  k_pushi 1
  k_pushi 7
  k_pushi 15
  k_callx RF_4B2A, 6
  k_pushi 0
  k_pushi 7
  k_pushib 19
  k_callx RF_4B2A, 6
  k_pusha g_fh_cbmap0
  k_pushiw $45E6
  k_pushi 2
  k_pushi 2
  k_pushi 7
  k_pushib 22
  k_pushi 3
  k_callx RF_3DF1, 14
  k_ldli 0
  k_jump UMINATO2_L_B0B9
UMINATO2_L_B094:
  k_leal -15
  k_pushl
  k_ldln -21
  k_shl1
  k_popr
  k_add
  k_pushl
  k_leal -5
  k_pushl
  k_ldln -21
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
  k_popstore
  k_ldln -21
  k_inc
UMINATO2_L_B0B9:
  k_stln -21
  k_ldln -21
  k_ldrn -19
  k_ult
  k_jumpt UMINATO2_L_B094
  k_ldli 0
  k_stln -31
  k_ldli 0
  k_stln -33
  k_ldli 0
  k_stln -35
  k_ldli 0
  k_jump UMINATO2_L_B189
UMINATO2_L_B0D0:
  k_leal -5
  k_pushl
  k_ldln -21
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stln -41
  k_ldln -21
  k_shl1
  k_addli 10
  k_pushl
  k_pushi 7
  k_callx RF_2F8F, 4
  k_leal -15
  k_pushl
  k_ldln -21
  k_shl1
  k_popr
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldln -21
  k_shl1
  k_addli 9
  k_pushl
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldln -41
  k_addlib 18
  k_deref
  k_stln -23
  k_ldln -23
  k_swap
  k_ldln -33
  k_add
  k_stln -33
  k_ldln -23
  k_ldri 10
  k_sdiv
  k_pushl
  k_pushiw UMINATO2_D_B8CE
  k_callx RF_3619, 4
  k_ldln -21
  k_shl1
  k_addli 9
  k_pushl
  k_pushib 18
  k_callx RF_2F8F, 4
  k_ldln -41
  k_addlib 16
  k_deref
  k_stln -25
  k_ldln -25
  k_swap
  k_ldln -35
  k_add
  k_stln -35
  k_ldln -25
  k_ldri 10
  k_sdiv
  k_pushl
  k_pushiw UMINATO2_D_B8CE
  k_callx RF_3619, 4
  k_ldln -21
  k_shl1
  k_addli 9
  k_pushl
  k_pushib 22
  k_callx RF_2F8F, 4
  k_leal -5
  k_pushl
  k_ldln -21
  k_popr
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_stln -27
  k_ldln -27
  k_swap
  k_ldln -31
  k_add
  k_stln -31
  k_ldln -27
  k_ldri 5
  k_lt
  k_jumpf UMINATO2_L_B17D
  k_ldli 1
  k_stln -17
  k_pushn -27
  k_pushiw UMINATO2_D_B8D7
  k_jump UMINATO2_L_B182
UMINATO2_L_B17D:
  k_pushn -27
  k_pushiw UMINATO2_D_B8CE
UMINATO2_L_B182:
  k_callx RF_3619, 4
  k_ldln -21
  k_inc
UMINATO2_L_B189:
  k_stln -21
  k_ldln -21
  k_ldrn -19
  k_ult
  k_jumpt UMINATO2_L_B0D0
  k_ldln -31
  k_ldri 2
  k_sdiv
  k_inc
  k_pushl
  k_ldln -33
  k_popr
  k_sdiv
  k_stln -37
  k_ldln -31
  k_ldri 2
  k_sdiv
  k_inc
  k_pushl
  k_ldln -35
  k_popr
  k_sdiv
  k_stln -39
  k_pushn -39
  k_pushn -37
  k_callx RL_8962, 4
  k_stln -29
  k_ldln -17
  k_jumpf UMINATO2_L_B1BE
  k_ldli 0
  k_jump UMINATO2_L_B1C7
UMINATO2_L_B1BE:
  k_pushiw $03E8
  k_pushn -29
  k_callx RL_8962, 4
UMINATO2_L_B1C7:
  k_return
; sys: oam_hide_all | calls 9
UMINATO2_F_B1C8:
  k_func 2
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_pushi 8
  k_callx syscall, 2  ; sys 8 oam_hide_all
  k_call UMINATO2_F_B042
  k_stl -2
  k_ldliw $00F0
  k_stlba $EF65
  k_call RF_60EE
  k_call RF_60B2
  k_ldl -2
  k_jumpt UMINATO2_L_B1FB
  k_pushi 1
  k_pushiw UMINATO2_D_B8E2
  k_callx RF_2FB9, 4
  k_jump UMINATO2_L_B229
UMINATO2_L_B1FB:
  k_ldl -2
  k_ldri 10
  k_lt
  k_jumpf UMINATO2_L_B207
  k_pushiw UMINATO2_D_B91B
  k_jump UMINATO2_L_B20A
UMINATO2_L_B207:
  k_pushiw UMINATO2_D_B93C
UMINATO2_L_B20A:
  k_callx RF_4B44, 2
  k_call RF_60B2
  k_ldl -2
  k_ldri 1
  k_eq
  k_jumpf UMINATO2_L_B21D
  k_ldliw UMINATO2_D_B97F
  k_jump UMINATO2_L_B220
UMINATO2_L_B21D:
  k_ldliw UMINATO2_D_B980
UMINATO2_L_B220:
  k_pushl
  k_push -2
  k_pushiw UMINATO2_D_B95F
  k_callx RF_3619, 6
UMINATO2_L_B229:
  k_call RF_3CFF
  k_jumpf UMINATO2_L_B244
  k_call $97BE
  k_call UMINATO2_F_B036
  k_call RF_60B2
  k_pushiw UMINATO2_D_B982
  k_callx RF_4B44, 2
  k_call UMINATO2_F_B741
  k_ldli 1
  k_return
UMINATO2_L_B244:
  k_call $97BE
  k_ldli 0
  k_return
; sys: oam_hide_all | vars: g_ships | calls 8
UMINATO2_F_B249:
  k_func 24
  k_call UMINATO2_F_B036
  k_call RF_60B2
  k_pushiw UMINATO2_D_B993
  k_callx RF_4B44, 2
  k_ldli 0
  k_stl -22
  k_stl -20
  k_ldli 0
  k_stlbf -1
  k_stlbf -3
  k_jump UMINATO2_L_B2B6
UMINATO2_L_B268:
  k_ldlbf -1
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -24
  k_ldl -24
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf UMINATO2_L_B2AF
  k_leal -8
  k_pushl
  k_ldlbf -3
  k_popr
  k_add
  k_pushl
  k_ldlbf -1
  k_popstoreb
  k_ldlbf -3
  k_inc
  k_stlbf -3
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_swap
  k_ldl -20
  k_add
  k_stl -20
  k_ldlbf -1
  k_pushl
  k_callx RF_4565, 2
  k_swap
  k_ldl -22
  k_add
  k_stl -22
UMINATO2_L_B2AF:
  k_ldlbf -1
  k_inc
  k_stlbf -1
UMINATO2_L_B2B6:
  k_ldlbf -1
  k_ldri 5
  k_ult
  k_jumpt UMINATO2_L_B268
  k_pushib 18
  k_pushib 30
  k_pushi 2
  k_pushi 1
  k_callx $97B0, 8
  k_pushi 8
  k_callx syscall, 2  ; sys 8 oam_hide_all
  k_call UMINATO2_F_B030
  k_pushi 6
  k_pushi 1
  k_leal -8
  k_pushl
  k_ldlbf -3
  k_pushl
  k_callx RF_6995, 8
  k_call $97BE
  k_ldli 0
  k_return
; vars: g_player_gold | calls 13
UMINATO2_F_B2E3:
  k_func 8
  k_ldla g_player_gold
  k_ldrn 19
  k_udiv
  k_stl -2
  k_pusharg 13
  k_callx RF_4565, 2
  k_pushl
  k_pusharg 13
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_popr
  k_sub
  k_stl -4
  k_ldl -2
  k_ldr -4
  k_ugt
  k_jumpf UMINATO2_L_B30C
  k_ldl -4
  k_stl -2
UMINATO2_L_B30C:
  k_ldl -2
  k_jumpt UMINATO2_L_B31F
  k_call UMINATO2_F_B036
  k_call RF_60B2
  k_pushiw UMINATO2_D_B9C1
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UMINATO2_L_B31F:
  k_call RF_60B2
  k_pusharg 15
  k_pushiw UMINATO2_D_B9DA
  k_callx RF_3619, 4
  k_pushi 1
  k_push -2
  k_pushi 0
  k_pushiw UMINATO2_D_B9FA
  k_callx RF_3C4E, 8
  k_stl -8
  k_ldl -8
  k_ldrib -1
  k_eq
  k_jumpt UMINATO2_L_B340
  k_ldl -8
  k_jumpt UMINATO2_L_B342
UMINATO2_L_B340:
  k_ldli 0
  k_return
UMINATO2_L_B342:
  k_call RF_60B2
  k_ldln 19
  k_ldr -8
  k_mul
  k_stl -6
  k_push -6
  k_pushiw UMINATO2_D_B9FB
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpt UMINATO2_L_B35A
  k_ldli 0
  k_return
UMINATO2_L_B35A:
  k_push -8
  k_pusharg 13
  k_ldln 23
  k_callptrn 4
  k_pushi 6
  k_pushi 1
  k_pusharg 11
  k_pusharg 13
  k_pusharg 17
  k_callx RF_6883, 10
  k_ldl -6
  k_swap
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_pushi 1
  k_pushiw UMINATO2_D_BA2A
  k_callx RF_2FB9, 4
  k_pushi 12
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushiw UMINATO2_D_BA2E
  k_callx RF_3619, 2
  k_pushi 14
  k_pushib 25
  k_callx RF_2F8F, 4
  k_pusha g_player_gold
  k_pushiw UMINATO2_D_BA34
  k_callx RF_3608, 4
  k_ldli 1
  k_return
; sys: oam_hide_all | vars: g_player_gold | calls 14
UMINATO2_F_B39B:
  k_func 27
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -21
  k_call RF_60B2
  k_pusharg 17
  k_pusharg 13
  k_pusharg 15
  k_pushiw UMINATO2_D_BA38
  k_callx RF_3619, 8
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldla g_player_gold
  k_ldrarg 13
  k_ult
  k_jumpf UMINATO2_L_B3D4
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw UMINATO2_D_BA57
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UMINATO2_L_B3D4:
  k_ldli 0
  k_stln -27
  k_pushi 8
  k_callx syscall, 2  ; sys 8 oam_hide_all
  k_pushib 18
  k_pushib 30
  k_pushi 2
  k_pushi 1
  k_callx $97B0, 8
  k_call $9662
  k_call UMINATO2_F_B030
  k_pushi 6
  k_pushi 1
  k_pusharg 11
  k_callx RF_6701, 6
  k_pushi 1
  k_pushiw UMINATO2_D_BA73
  k_callx RF_2FB9, 4
  k_pushi 9
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw UMINATO2_D_BA77
  k_callx RF_2FB9, 4
  k_pushi 10
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pusharg 13
  k_pushiw UMINATO2_D_BA7E
  k_callx RF_3608, 4
  k_pushi 11
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pusharg 17
  k_pushiw UMINATO2_D_BA85
  k_callx RF_3608, 4
  k_pushi 13
  k_pushib 22
  k_callx RF_2F8F, 4
  k_pushiw UMINATO2_D_BA88
  k_callx RF_3608, 2
  k_pushi 14
  k_pushib 25
  k_callx RF_2F8F, 4
  k_pusha g_player_gold
  k_pushiw UMINATO2_D_BA8E
  k_callx RF_3608, 4
UMINATO2_L_B447:
  k_call UMINATO2_F_B036
  k_call RF_60B2
  k_pushi 1
  k_pushiw UMINATO2_D_BA92
  k_callx RF_2FB9, 4
  k_pushn -21
  k_pushi 2
  k_pushi 10
  k_pushi 2
  k_callx RF_490C, 8
  k_stl -4
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpf UMINATO2_L_B482
  k_pushn 23
  k_pushn 19
  k_pusharg 13
  k_pusharg 11
  k_pusharg 17
  k_leal -9
  k_pushl
  k_ldl -4
  k_popr
  k_add
  k_derefb
  k_pushl
  k_push -4
  k_callx UMINATO2_F_B2E3, 14
  k_swap
  k_ldln -27
  k_or
  k_stln -27
UMINATO2_L_B482:
  k_ldl -4
  k_ldriw $00FF
  k_eq
  k_jumpt UMINATO2_L_B492
  k_ldla g_player_gold
  k_ldrarg 13
  k_ult
  k_jumpf UMINATO2_L_B447
UMINATO2_L_B492:
  k_ldla g_player_gold
  k_ldrarg 13
  k_ult
  k_jumpf UMINATO2_L_B4A7
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw UMINATO2_D_BAA6
  k_callx RF_4B44, 2
UMINATO2_L_B4A7:
  k_call $9662
  k_call $97BE
  k_ldln -27
  k_return
UMINATO2_F_B4B0:
  k_func 4
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_jump UMINATO2_L_B4CF
UMINATO2_L_B4BB:
  k_ldlarg 13
  k_ldr -2
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9B6
  k_add
  k_deref
  k_ldri 10
  k_sdiv
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -2
  k_inc
UMINATO2_L_B4CF:
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_ult
  k_jumpt UMINATO2_L_B4BB
  k_ldl -4
  k_return
UMINATO2_F_B4D8:
  k_func 0
  k_ldlarg 13
  k_ldri 10
  k_mul
  k_pushl
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9B6
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_return
UMINATO2_F_B4EF:
  k_func 0
  k_return
; vars: g_port | calls 1
UMINATO2_F_B4F5:
  k_func 2
  k_ldlba g_port
  k_ldrib 49
  k_ugt
  k_jumpf UMINATO2_L_B508
  k_ldlib 50
  k_jump UMINATO2_L_B512
UMINATO2_L_B508:
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
UMINATO2_L_B512:
  k_stl -2
  k_ldl -2
  k_addlib 50
  k_ldri 5
  k_sdiv
  k_stl -2
  k_pushiw UMINATO2_F_B4D8
  k_pushiw UMINATO2_F_B4B0
  k_pushiw UMINATO2_F_B4EF
  k_pushiw UMINATO2_D_BAC5
  k_pushiw UMINATO2_D_BAC0
  k_push -2
  k_pushi 0
  k_callx UMINATO2_F_B39B, 14
  k_return
UMINATO2_F_B52F:
  k_func 0
  k_return
UMINATO2_F_B535:
  k_func 3
  k_ldli 0
  k_stln -3
  k_ldli 0
  k_jump UMINATO2_L_B559
UMINATO2_L_B541:
  k_ldlbf -1
  k_ldrarg 13
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9BA
  k_add
  k_deref
  k_swap
  k_ldln -3
  k_add
  k_stln -3
  k_ldlbf -1
  k_inc
UMINATO2_L_B559:
  k_stlbf -1
  k_ldlbf -1
  k_ldrarg 11
  k_ult
  k_jumpt UMINATO2_L_B541
  k_ldln -3
  k_return
UMINATO2_F_B567:
  k_func 0
  k_pusharg 13
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw $E9BA
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_return
; vars: g_port | calls 1
UMINATO2_F_B57B:
  k_func 2
  k_ldlba g_port
  k_ldrib 49
  k_ugt
  k_jumpf UMINATO2_L_B58E
  k_ldlib 50
  k_jump UMINATO2_L_B598
UMINATO2_L_B58E:
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
UMINATO2_L_B598:
  k_stl -2
  k_ldl -2
  k_addlib 50
  k_ldri 3
  k_sdiv
  k_stl -2
  k_pushiw UMINATO2_F_B567
  k_pushiw UMINATO2_F_B535
  k_pushiw UMINATO2_F_B52F
  k_pushiw UMINATO2_D_BAD3
  k_pushiw UMINATO2_D_BACC
  k_push -2
  k_pushi 2
  k_callx UMINATO2_F_B39B, 14
  k_return
; calls 10
UMINATO2_F_B5B5:
  k_func 17
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -11
  k_ldli 0
  k_stln -15
  k_stln -13
  k_ldli 0
  k_jump UMINATO2_L_B5FD
UMINATO2_L_B5CE:
  k_leal -9
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_4565, 2
  k_swap
  k_ldln -15
  k_add
  k_stln -15
  k_leal -9
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_swap
  k_ldln -13
  k_add
  k_stln -13
  k_ldl -2
  k_inc
UMINATO2_L_B5FD:
  k_stl -2
  k_ldl -2
  k_ldrn -11
  k_ult
  k_jumpt UMINATO2_L_B5CE
  k_ldln -15
  k_ldrn -13
  k_eq
  k_jumpf UMINATO2_L_B61C
  k_call UMINATO2_F_B036
  k_call RF_60B2
  k_pushiw UMINATO2_D_BAF6
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
UMINATO2_L_B61C:
  k_ldli 0
  k_stln -17
UMINATO2_L_B61F:
  k_call UMINATO2_F_B036
  k_call RF_60B2
  k_pushi 1
  k_pushiw UMINATO2_D_BB0A
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw UMINATO2_D_BAD8
  k_pushi 2
  k_pushi 8
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -4
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpf UMINATO2_L_B65B
  k_ldliw $00F0
  k_stlba $EF65
  k_ldl -4
  k_shl1
  k_ldriw UMINATO2_D_BADE
  k_add
  k_deref
  k_callptr
  k_swap
  k_ldln -17
  k_or
  k_stln -17
  k_call RF_2980
UMINATO2_L_B65B:
  k_ldl -4
  k_ldriw $00FF
  k_ne
  k_jumpt UMINATO2_L_B61F
  k_ldli 0
  k_return
; sys: oam_hide_all | calls 7
UMINATO2_F_B665:
  k_func 62
  k_call RF_60EE
  k_pushi 1
  k_pushiw UMINATO2_D_BB31
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw UMINATO2_D_BB20
  k_pushi 1
  k_pushi 6
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stln -60
  k_ldln -60
  k_ldriw $00FF
  k_ne
  k_jumpf UMINATO2_L_B6CF
  k_pushib 18
  k_pushib 28
  k_pushi 2
  k_pushi 2
  k_callx $97B0, 8
  k_pushi 8
  k_callx syscall, 2  ; sys 8 oam_hide_all
  k_ldln -60
  k_switchn 2
    .word $0000, UMINATO2_L_B6AC
    .word $0001, UMINATO2_L_B6D4
    .word UMINATO2_L_B6B5
UMINATO2_L_B6AC:
  k_pushi 7
  k_pushi 9
  k_pushiw $00FF
  k_callx RF_6C1E, 6
UMINATO2_L_B6B5:
  k_ldliw $00F0
  k_stlba $EF65
  k_call $9675
  k_pushiw $2000
  k_pushi 8
  k_pushib 25
  k_pushib 20
  k_pushi 7
  k_pushi 3
  k_callx RF_604A, 12
  k_call $97BE
UMINATO2_L_B6CF:
  k_call RF_2980
  k_ldli 0
  k_return
UMINATO2_L_B6D4:
  k_call $9675
  k_ldli 0
  k_stln -62
UMINATO2_L_B6DA:
  k_leal -58
  k_pushl
  k_ldln -62
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_ldln -62
  k_inc
  k_stln -62
  k_ldln -62
  k_ldrib 29
  k_ult
  k_jumpt UMINATO2_L_B6DA
  k_leal -58
  k_pushl
  k_callx RF_7B51, 2
  k_jump UMINATO2_L_B6B5
; calls 4
UMINATO2_F_B6FE:
  k_func 4
  k_ldli 0
  k_stl -4
UMINATO2_L_B705:
  k_call UMINATO2_F_B036
  k_call RF_60B2
  k_pushi 1
  k_pushiw UMINATO2_D_BB6A
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 3
  k_pushiw UMINATO2_D_BB48
  k_pushi 2
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpf UMINATO2_L_B733
  k_ldl -2
  k_shl1
  k_ldriw UMINATO2_D_BB4E
  k_add
  k_deref
  k_callptr
  k_stl -4
UMINATO2_L_B733:
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpt UMINATO2_L_B73F
  k_ldl -4
  k_jumpf UMINATO2_L_B705
UMINATO2_L_B73F:
  k_ldl -4
  k_return
; vars: g_fleets
UMINATO2_F_B741:
  k_func 0
  k_ldli 0
  k_stlba $EF65
  k_ldliw $00FD
  k_swap
  k_ldlba g_fleets+15
  k_and
  k_stlba g_fleets+15
  k_ldli 1
  k_swap
  k_ldlba g_fleets+15
  k_or
  k_stlba g_fleets+15
  k_ldli 0
  k_stlba $F28D
  k_return
; calls 1
UMINATO2_F_B763:
  k_func 0
  k_pushi 2
  k_pushiw UMINATO2_D_BB82
  k_pushi 2
  k_pushi 2
  k_pushi 1
  k_callx RF_4783, 10
  k_ldri 0
  k_eq
  k_return
; calls 1
UMINATO2_F_B776:
  k_func 0
  k_pusharg 11
  k_pushiw UMINATO2_D_BB8D
  k_callx RF_3619, 4
  k_return
; vars: g_portrait, g_player_items, g_player_gold, g_princess, g_port | calls 6
UMINATO2_F_B784:
  k_func 8
  k_ldlib -1
  k_stla g_portrait
  k_call RF_60EE
  k_pushib 90
  k_callx RF_3F3E, 2
  k_jumpt UMINATO2_L_B7A7
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UMINATO2_D_BB99
  k_callx UMINATO2_F_B776, 2
  k_return
UMINATO2_L_B7A7:
  k_ldla g_player_items
  k_ldri 7
  k_and
  k_stl -2
  k_ldl -2
  k_ldri 1
  k_and
  k_jumpt UMINATO2_L_B7D1
  k_ldlba $E447
  k_ldri 5
  k_ult
  k_jumpf UMINATO2_L_B7D1
  k_pushib 40
  k_callx RF_3F3E, 2
  k_jumpt UMINATO2_L_B7D1
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UMINATO2_D_BBCA
  k_callx UMINATO2_F_B776, 2
  k_return
UMINATO2_L_B7D1:
  k_ldl -2
  k_ldri 2
  k_and
  k_jumpt UMINATO2_L_B7F5
  k_ldlba $E447
  k_ldri 6
  k_ult
  k_jumpf UMINATO2_L_B7F5
  k_pushib 50
  k_callx RF_3F3E, 2
  k_jumpt UMINATO2_L_B7F5
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UMINATO2_D_BBFA
  k_callx UMINATO2_F_B776, 2
  k_return
UMINATO2_L_B7F5:
  k_ldl -2
  k_ldri 4
  k_and
  k_jumpt UMINATO2_L_B819
  k_ldlba $E447
  k_ldri 7
  k_ult
  k_jumpf UMINATO2_L_B819
  k_pushib 50
  k_callx RF_3F3E, 2
  k_jumpt UMINATO2_L_B819
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UMINATO2_D_BC27
  k_callx UMINATO2_F_B776, 2
  k_return
UMINATO2_L_B819:
  k_pushib 100
  k_callx RF_3F3E, 2
  k_addlib 70
  k_pushl
  k_ldla g_player_gold
  k_popr
  k_ult
  k_jumpf UMINATO2_L_B83F
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt UMINATO2_L_B83F
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UMINATO2_D_BC52
  k_callx UMINATO2_F_B776, 2
  k_return
UMINATO2_L_B83F:
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf UMINATO2_L_B861
  k_ldla $EF52
  k_derefb
  k_ldri 9
  k_ne
  k_jumpf UMINATO2_L_B861
  k_ldla $EF52
  k_derefb
  k_ldri 8
  k_ne
  k_jumpf UMINATO2_L_B861
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpf UMINATO2_L_B86A
UMINATO2_L_B861:
  k_pushib 30
  k_callx RF_3F3E, 2
  k_jumpt UMINATO2_L_B89D
UMINATO2_L_B86A:
  k_ldlba g_port
  k_ldrib 50
  k_ult
  k_jumpf UMINATO2_L_B89D
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf UMINATO2_L_B886
  k_ldliw UMINATO2_D_BC84
  k_jump UMINATO2_L_B897
UMINATO2_L_B886:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf UMINATO2_L_B894
  k_ldliw UMINATO2_D_BCA1
  k_jump UMINATO2_L_B897
UMINATO2_L_B894:
  k_ldliw UMINATO2_D_BCC8
UMINATO2_L_B897:
  k_pushl
  k_callx UMINATO2_F_B776, 2
  k_return
UMINATO2_L_B89D:
  k_leal -8
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_ldri 1
  k_eq
  k_jumpf UMINATO2_L_B8C0
  k_pushi 15
  k_callx RF_3F3E, 2
  k_jumpt UMINATO2_L_B8C0
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UMINATO2_D_BCF8
  k_callx UMINATO2_F_B776, 2
  k_return
UMINATO2_L_B8C0:
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw UMINATO2_D_BD2E
  k_callx RF_3619, 2
  k_return
  .byte $00
UMINATO2_D_B8CE:
  .byte "%3d", $00
UMINATO2_D_B8D2:
  .byte "Ship", $00
UMINATO2_D_B8D7:
  .byte $1B, $43, $31, $01
  .byte "%3d", $1B, "C0", $00
UMINATO2_D_B8E2:
  .byte "We won't get anywhere", $0A, "like this. Do ye stillwant to sail", $00
UMINATO2_D_B91B:
  .byte "We're not well", $0A, "prepared, Captain", $00
UMINATO2_D_B93C:
  .byte "Preparations are", $0A, "complete, Captain", $00
UMINATO2_D_B95F:
  .byte "We can sail for %d", $0A, "day%s. Ready", $00
UMINATO2_D_B97F:
  .byte $00
UMINATO2_D_B980:
  .byte $73, $00
UMINATO2_D_B982:
  .byte "Steady as ye go!", $00
UMINATO2_D_B993:
  .byte "You're free to load", $0A, "as much water as you", $0A, "need", $00
UMINATO2_D_B9C1:
  .byte "This ship is packed", $0A, "full", $00
UMINATO2_D_B9DA:
  .byte "How many %ss", $0A, "will you purchase", $0A, $00
UMINATO2_D_B9FA:
  .byte $00
UMINATO2_D_B9FB:
  .byte "That'll cost %d", $0A, "gold. Shall I start", $0A, "loading it", $00
UMINATO2_D_BA2A:
  .byte $1B
  .byte "C0", $00
UMINATO2_D_BA2E:
  .byte "Gold:", $00
UMINATO2_D_BA34:
  .byte "%5d", $00
UMINATO2_D_BA38:
  .byte "%s will cost ye", $0A, "%d gold per %s", $00
UMINATO2_D_BA57:
  .byte "You don't have enough", $0A, "gold!", $00
UMINATO2_D_BA73:
  .byte $1B
  .byte "C0", $00
UMINATO2_D_BA77:
  .byte "Price:", $00
UMINATO2_D_BA7E:
  .byte "%d per", $00
UMINATO2_D_BA85:
  .byte "%s", $00
UMINATO2_D_BA88:
  .byte "Gold:", $00
UMINATO2_D_BA8E:
  .byte "%5d", $00
UMINATO2_D_BA92:
  .byte "Restock which ship?", $00
UMINATO2_D_BAA6:
  .byte "That's all we can", $0A, "afford!", $00
UMINATO2_D_BAC0:
  .byte "Food", $00
UMINATO2_D_BAC5:
  .byte "barrel", $00
UMINATO2_D_BACC:
  .byte "Lumber", $00
UMINATO2_D_BAD3:
  .byte "bale", $00
UMINATO2_D_BAD8:
  .word UMINATO2_D_BAE4, UMINATO2_D_BAEA, UMINATO2_D_BAEF
UMINATO2_D_BADE:
  .word UMINATO2_F_B249, UMINATO2_F_B4F5, UMINATO2_F_B57B
UMINATO2_D_BAE4:
  .byte "Water", $00
UMINATO2_D_BAEA:
  .byte "Food", $00
UMINATO2_D_BAEF:
  .byte "Lumber", $00
UMINATO2_D_BAF6:
  .byte "All ships are full!", $00
UMINATO2_D_BB0A:
  .byte "Restock which supply?", $00
UMINATO2_D_BB20:
  .word UMINATO2_D_BB24, UMINATO2_D_BB28
UMINATO2_D_BB24:
  .byte "Men", $00
UMINATO2_D_BB28:
  .byte "Supplies", $00
UMINATO2_D_BB31:
  .byte "What will ye transfer?", $00
UMINATO2_D_BB48:
  .word UMINATO2_D_BB54, UMINATO2_D_BB59, UMINATO2_D_BB61
UMINATO2_D_BB4E:
  .word UMINATO2_F_B1C8, UMINATO2_F_B5B5, UMINATO2_F_B665
UMINATO2_D_BB54:
  .byte "Sail", $00
UMINATO2_D_BB59:
  .byte "Restock", $00
UMINATO2_D_BB61:
  .byte "Transfer", $00
UMINATO2_D_BB6A:
  .byte "What do ye want to do?", $00
  .byte $00
UMINATO2_D_BB82:
  .word UMINATO2_D_BB86, UMINATO2_D_BB8A
UMINATO2_D_BB86:
  .byte "Yes", $00
UMINATO2_D_BB8A:
  .byte "No", $00
UMINATO2_D_BB8D:
  .byte "Captain, %s", $00
UMINATO2_D_BB99:
  .byte "a figurehead", $0A, "would protect our shipfrom disaster", $00
UMINATO2_D_BBCA:
  .byte "we could", $0A, "surely use a telescopewhen we set sail", $00
UMINATO2_D_BBFA:
  .byte "a sextant", $0A, "would be useful to", $0A, "guide our quest", $00
UMINATO2_D_BC27:
  .byte "we should", $0A, "try to find a", $0A, "speculum somewhere", $00
UMINATO2_D_BC52:
  .byte "our gold is", $0A, "running low. This", $0A, "could spell trouble", $00
UMINATO2_D_BC84:
  .byte "how about a", $0A, "stop at the inn?", $00
UMINATO2_D_BCA1:
  .byte "let's catch", $0A, "the latest news at", $0A, "the inn", $00
UMINATO2_D_BCC8:
  .byte "let's go to", $0A, "the inn for a bit of", $0A, "entertainment!", $00
UMINATO2_D_BCF8:
  .byte "if we could", $0A, "only earn enough to", $0A, "buy another vessel...", $00
UMINATO2_D_BD2E:
  .byte "Where to, Captain?", $00
  .byte $00
