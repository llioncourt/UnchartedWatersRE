; overlay maituki, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp MAITUKI_F_9603
; calls 1
MAITUKI_F_9603:
  k_func 0
  k_call MAITUKI_F_A26C
  k_return
; vars: g_nations | calls 2
MAITUKI_F_960C:
  k_func 2
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw g_nations
  k_add
  k_stl -2
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 2
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_addli 2
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_return
; vars: g_fleets, g_player_name_ptr, g_captains | calls 5
MAITUKI_F_9631:
  k_func 10
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -6
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt MAITUKI_L_9647
  k_return
MAITUKI_L_9647:
  k_pushiw $00F7
  k_ldl -6
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_stl -2
  k_ldliw g_player_name_ptr
  k_stl -4
  k_push -2
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_pushl
  k_callx MAITUKI_F_A27E, 4
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
  k_ldriw $00D4
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -8
  k_push -6
  k_ldl -8
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -6
  k_inc
  k_pushl
  k_ldl -8
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -6
  k_addli 2
  k_pushl
  k_ldl -8
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -6
  k_addli 3
  k_pushl
  k_ldl -8
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -2
  k_addli 4
  k_pushl
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_464C, 2
  k_popstore
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF09
  k_add
  k_pushl
  k_ldli 4
  k_popstoreb
  k_ldl -6
  k_addli 11
  k_pushl
  k_ldli 0
  k_popstore
  k_pushiw $8000
  k_ldl -6
  k_addli 13
  k_popr
  k_pushl
  k_deref
  k_and
  k_popstore
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -10
  k_ldl -10
  k_addli 5
  k_pushl
  k_ldlarg 11
  k_ldriw $00D4
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -10
  k_addli 4
  k_pushl
  k_ldli 4
  k_popstoreb
  k_ldl -10
  k_addli 7
  k_pushl
  k_ldli 0
  k_popstore
  k_return
; vars: g_ships, g_ports | calls 5
MAITUKI_F_971F:
  k_func 20
  k_ldlarg 11
  k_ldrib 35
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -4
  k_addlib 35
  k_stl -6
  k_jump MAITUKI_L_973F
MAITUKI_L_9733:
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf MAITUKI_L_9745
  k_ldl -4
  k_addli 7
  k_stl -4
MAITUKI_L_973F:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt MAITUKI_L_9733
MAITUKI_L_9745:
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_shl1
  k_ldriw $0005
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -10
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 7
  k_stl -2
  k_ldl -4
  k_addli 6
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -4
  k_addli 6
  k_pushl
  k_ldl -2
  k_ldrib 80
  k_or
  k_popstoreb
  k_push -2
  k_callx RF_40A5, 2
  k_stl -8
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stl -12
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_stl -14
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stl -16
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stl -18
  k_push -4
  k_ldl -14
  k_ldri 10
  k_mul
  k_pushl
  k_ldl -12
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_popstoreb
  k_ldl -4
  k_inc
  k_pushl
  k_ldli 4
  k_ldr -18
  k_sub
  k_pushl
  k_ldli 10
  k_ldr -16
  k_sub
  k_pushl
  k_ldlib 20
  k_ldr -12
  k_sub
  k_ldrib 100
  k_mul
  k_ldrib 20
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -4
  k_addli 2
  k_pushl
  k_ldl -18
  k_addli 3
  k_pushl
  k_ldli 10
  k_ldr -12
  k_sub
  k_pushl
  k_ldl -16
  k_ldri 10
  k_mul
  k_addlib 100
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -4
  k_addli 2
  k_pushl
  k_pushib 100
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -4
  k_addli 3
  k_pushl
  k_ldl -8
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -8
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_stl -20
  k_ldl -4
  k_addli 4
  k_pushl
  k_ldl -20
  k_ldri 2
  k_sdiv
  k_pushl
  k_ldl -10
  k_deref
  k_ldriw $00FA
  k_sdiv
  k_pushl
  k_ldl -20
  k_ldri 8
  k_sdiv
  k_popr
  k_mul
  k_popr
  k_add
  k_popstore
  k_return
; vars: g_nations | calls 3
MAITUKI_F_9832:
  k_func 18
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw g_nations
  k_add
  k_stl -18
  k_ldl -18
  k_deref
  k_ldrib 100
  k_udiv
  k_inc
  k_stl -4
  k_ldl -4
  k_jumpt MAITUKI_L_984B
  k_return
MAITUKI_L_984B:
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_inc
  k_stlarg 11
  k_ldli 0
  k_stl -6
  k_ldli 0
  k_jump MAITUKI_L_9879
MAITUKI_L_9856:
  k_leal -9
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_pushl
  k_leal -14
  k_pushl
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_callx RL_8502, 4
  k_popstoreb
  k_leal -9
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -2
  k_inc
MAITUKI_L_9879:
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt MAITUKI_L_9856
  k_ldl -6
  k_ldri 15
  k_eq
  k_jumpf MAITUKI_L_9887
  k_return
MAITUKI_L_9887:
  k_leal -9
  k_stl -16
  k_ldli 0
  k_jump MAITUKI_L_98C8
MAITUKI_L_988F:
  k_ldl -16
  k_derefb
  k_ldri 5
  k_ult
  k_jumpf MAITUKI_L_98C3
  k_ldl -16
  k_derefb
  k_jumpt MAITUKI_L_98A3
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_callx MAITUKI_F_9631, 2
MAITUKI_L_98A3:
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_callx MAITUKI_F_971F, 2
  k_push -16
  k_leal -14
  k_pushl
  k_ldlarg 11
  k_ldr -2
  k_add
  k_pushl
  k_callx RL_8502, 4
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -4
  k_dec
  k_stl -4
  k_ldl -4
  k_jumpf MAITUKI_L_98CF
MAITUKI_L_98C3:
  k_ldl -16
  k_inc
  k_stl -16
  k_ldl -2
  k_inc
MAITUKI_L_98C8:
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt MAITUKI_L_988F
MAITUKI_L_98CF:
  k_ldl -6
  k_ldri 15
  k_ult
  k_jumpf MAITUKI_L_98D9
  k_ldl -4
  k_jumpt MAITUKI_L_9887
MAITUKI_L_98D9:
  k_return
; vars: g_ships, g_ports | calls 5
MAITUKI_F_98DA:
  k_func 12
  k_ldlarg 11
  k_ldrib 35
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -4
  k_addlib 35
  k_stl -6
  k_jump MAITUKI_L_98FA
MAITUKI_L_98EE:
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf MAITUKI_L_9900
  k_ldl -4
  k_addli 7
  k_stl -4
MAITUKI_L_98FA:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt MAITUKI_L_98EE
MAITUKI_L_9900:
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_shl1
  k_ldriw $0005
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -10
  k_pushi 2
  k_callx RF_3F3E, 2
  k_addli 9
  k_stl -2
  k_ldl -4
  k_addli 6
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -4
  k_addli 6
  k_pushl
  k_ldl -2
  k_ldrib 64
  k_or
  k_popstoreb
  k_pushi 2
  k_callx RF_3F3E, 2
  k_addli 2
  k_ldri 4
  k_shl
  k_pushl
  k_ldl -4
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_push -2
  k_callx RF_40A5, 2
  k_stl -8
  k_push -4
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_ldri 10
  k_mul
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_popstoreb
  k_ldl -4
  k_inc
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_pushl
  k_ldli 4
  k_popr
  k_sub
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_ldlib 20
  k_popr
  k_sub
  k_ldrib 100
  k_mul
  k_ldrib 20
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -4
  k_addli 2
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_addli 3
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_ldri 10
  k_mul
  k_addlib 100
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -4
  k_addli 2
  k_pushl
  k_pushib 100
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -4
  k_addli 3
  k_pushl
  k_ldl -8
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -8
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_stl -12
  k_ldl -4
  k_addli 4
  k_pushl
  k_ldl -12
  k_ldri 2
  k_sdiv
  k_pushl
  k_ldl -10
  k_deref
  k_ldriw $00FA
  k_sdiv
  k_pushl
  k_ldl -12
  k_ldri 8
  k_sdiv
  k_popr
  k_mul
  k_popr
  k_add
  k_popstore
  k_return
; vars: g_nations | calls 3
MAITUKI_F_9A39:
  k_func 16
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw g_nations
  k_add
  k_stl -16
  k_ldl -16
  k_deref
  k_ldriw $0096
  k_udiv
  k_inc
  k_stl -2
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_addli 4
  k_stlarg 11
  k_ldl -2
  k_jumpt MAITUKI_L_9A58
  k_return
MAITUKI_L_9A58:
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_jump MAITUKI_L_9A81
MAITUKI_L_9A5E:
  k_leal -9
  k_pushl
  k_ldl -6
  k_popr
  k_add
  k_pushl
  k_leal -14
  k_pushl
  k_ldlarg 11
  k_ldr -6
  k_add
  k_pushl
  k_callx RL_8502, 4
  k_popstoreb
  k_leal -9
  k_pushl
  k_ldl -6
  k_popr
  k_add
  k_derefb
  k_swap
  k_ldl -4
  k_add
  k_stl -4
  k_ldl -6
  k_inc
MAITUKI_L_9A81:
  k_stl -6
  k_ldl -6
  k_ldri 2
  k_ult
  k_jumpt MAITUKI_L_9A5E
  k_ldl -4
  k_ldri 10
  k_eq
  k_jumpf MAITUKI_L_9A8F
  k_return
MAITUKI_L_9A8F:
  k_ldli 0
  k_stl -6
MAITUKI_L_9A91:
  k_leal -9
  k_pushl
  k_ldl -6
  k_popr
  k_add
  k_derefb
  k_ldri 5
  k_ult
  k_jumpf MAITUKI_L_9AD8
  k_leal -9
  k_pushl
  k_ldl -6
  k_popr
  k_add
  k_derefb
  k_jumpt MAITUKI_L_9AB1
  k_ldlarg 11
  k_ldr -6
  k_add
  k_pushl
  k_callx MAITUKI_F_9631, 2
MAITUKI_L_9AB1:
  k_ldlarg 11
  k_ldr -6
  k_add
  k_pushl
  k_callx MAITUKI_F_98DA, 2
  k_leal -9
  k_pushl
  k_ldl -6
  k_popr
  k_add
  k_pushl
  k_leal -14
  k_pushl
  k_ldlarg 11
  k_ldr -6
  k_add
  k_pushl
  k_callx RL_8502, 4
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_jumpf MAITUKI_L_9AE1
MAITUKI_L_9AD8:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 2
  k_ult
  k_jumpt MAITUKI_L_9A91
MAITUKI_L_9AE1:
  k_ldl -4
  k_ldri 10
  k_ult
  k_jumpf MAITUKI_L_9AEB
  k_ldl -2
  k_jumpt MAITUKI_L_9A8F
MAITUKI_L_9AEB:
  k_return
; vars: g_ships | calls 5
MAITUKI_F_9AEC:
  k_func 8
  k_ldlarg 11
  k_ldrib 35
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -4
  k_addlib 35
  k_stl -6
  k_jump MAITUKI_L_9B0C
MAITUKI_L_9B00:
  k_ldl -4
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf MAITUKI_L_9B12
  k_ldl -4
  k_addli 7
  k_stl -4
MAITUKI_L_9B0C:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt MAITUKI_L_9B00
MAITUKI_L_9B12:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 8
  k_stl -2
  k_ldl -4
  k_addli 6
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -4
  k_addli 6
  k_pushl
  k_ldl -2
  k_ldrib 64
  k_or
  k_popstoreb
  k_pushi 2
  k_callx RF_3F3E, 2
  k_addli 2
  k_ldri 4
  k_shl
  k_pushl
  k_ldl -4
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_push -2
  k_callx RF_40A5, 2
  k_stl -8
  k_push -4
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_ldri 10
  k_mul
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_popstoreb
  k_ldl -4
  k_inc
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_pushl
  k_ldli 4
  k_popr
  k_sub
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_ldlib 20
  k_popr
  k_sub
  k_ldrib 100
  k_mul
  k_ldrib 20
  k_sdiv
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -4
  k_addli 2
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_addli 3
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_pushl
  k_push -2
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_ldri 10
  k_mul
  k_addlib 100
  k_popr
  k_mul
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_popstoreb
  k_ldl -4
  k_addli 2
  k_pushl
  k_pushib 100
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldl -4
  k_addli 3
  k_pushl
  k_ldl -8
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -4
  k_addli 4
  k_pushl
  k_ldl -8
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_popstore
  k_return
; vars: g_nations | calls 3
MAITUKI_F_9C23:
  k_func 20
  k_ldli 3
  k_stl -4
  k_ldl -4
  k_shl1
  k_shl1
  k_ldriw g_nations
  k_add
  k_stl -20
  k_ldli 5
  k_stl -6
  k_ldl -4
  k_ldri 5
  k_mul
  k_inc
  k_stl -4
  k_ldli 0
  k_stl -8
  k_ldli 0
  k_jump MAITUKI_L_9C62
MAITUKI_L_9C3F:
  k_leal -18
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_pushl
  k_leal -13
  k_pushl
  k_ldl -4
  k_ldr -2
  k_add
  k_pushl
  k_callx RL_8502, 4
  k_popstoreb
  k_leal -18
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_ldl -2
  k_inc
MAITUKI_L_9C62:
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt MAITUKI_L_9C3F
  k_ldl -8
  k_ldrib 25
  k_eq
  k_jumpf MAITUKI_L_9C71
  k_return
MAITUKI_L_9C71:
  k_ldli 0
  k_stl -2
MAITUKI_L_9C73:
  k_leal -18
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldri 5
  k_ult
  k_jumpf MAITUKI_L_9CBA
  k_leal -18
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_jumpt MAITUKI_L_9C93
  k_ldl -4
  k_ldr -2
  k_add
  k_pushl
  k_callx MAITUKI_F_9631, 2
MAITUKI_L_9C93:
  k_ldl -4
  k_ldr -2
  k_add
  k_pushl
  k_callx MAITUKI_F_9AEC, 2
  k_leal -18
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_pushl
  k_leal -13
  k_pushl
  k_ldl -4
  k_ldr -2
  k_add
  k_pushl
  k_callx RL_8502, 4
  k_popstoreb
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -6
  k_dec
  k_stl -6
  k_ldl -6
  k_jumpf MAITUKI_L_9CC3
MAITUKI_L_9CBA:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt MAITUKI_L_9C73
MAITUKI_L_9CC3:
  k_ldl -8
  k_ldrib 25
  k_ult
  k_jumpf MAITUKI_L_9CCE
  k_ldl -6
  k_jumpt MAITUKI_L_9C71
MAITUKI_L_9CCE:
  k_return
; vars: g_nations, g_relations | calls 2
MAITUKI_F_9CCF:
  k_func 19
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw g_nations
  k_add
  k_stln -17
  k_pushib 100
  k_callx RF_3F3E, 2
  k_pushl
  k_ldln -17
  k_addli 2
  k_derefb
  k_popr
  k_ugt
  k_jumpf MAITUKI_L_9CF4
  k_ldln -17
  k_addli 3
  k_pushl
  k_ldli 4
MAITUKI_L_9CF2:
  k_popstoreb
MAITUKI_L_9CF3:
  k_return
MAITUKI_L_9CF4:
  k_ldli 8
  k_ldrarg 11
  k_shr
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9B
  k_popr
  k_shr
  k_popr
  k_or
  k_ldri 1
  k_shr
  k_ldri 15
  k_and
  k_stln -7
  k_ldli 0
  k_stln -11
  k_stln -9
  k_jump MAITUKI_L_9D36
MAITUKI_L_9D11:
  k_leal -3
  k_pushl
  k_ldli 2
  k_ldrn -11
  k_sub
  k_popr
  k_add
  k_pushl
  k_ldln -7
  k_ldri 1
  k_and
  k_popstoreb
  k_ldln -7
  k_ldri 1
  k_and
  k_swap
  k_ldln -9
  k_add
  k_stln -9
  k_ldln -7
  k_ldri 1
  k_shr
  k_stln -7
  k_ldln -11
  k_inc
  k_stln -11
MAITUKI_L_9D36:
  k_ldln -11
  k_ldri 3
  k_ult
  k_jumpt MAITUKI_L_9D11
  k_ldliw g_relations
  k_stln -5
  k_ldln -9
  k_switchn 2
    .word $0003, MAITUKI_L_9D51
    .word $0002, MAITUKI_L_9D59
    .word MAITUKI_L_9DA7
MAITUKI_L_9D51:
  k_ldln -17
  k_addli 3
  k_pushl
  k_ldli 3
  k_jump MAITUKI_L_9CF2
MAITUKI_L_9D59:
  k_ldli 1
  k_stln -19
  k_ldli 0
  k_jump MAITUKI_L_9D91
MAITUKI_L_9D60:
  k_leal -3
  k_pushl
  k_ldln -11
  k_popr
  k_add
  k_derefb
  k_jumpt MAITUKI_L_9D8E
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrn -11
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldrn -5
  k_add
  k_derefb
  k_ldrib 51
  k_ult
  k_jumpf MAITUKI_L_9D8E
  k_ldln -17
  k_addli 3
  k_pushl
  k_ldln -11
  k_popstoreb
  k_ldli 0
  k_stln -19
  k_jump MAITUKI_L_9D9A
MAITUKI_L_9D8E:
  k_ldln -11
  k_inc
MAITUKI_L_9D91:
  k_stln -11
  k_ldln -11
  k_ldri 3
  k_ult
  k_jumpt MAITUKI_L_9D60
MAITUKI_L_9D9A:
  k_ldln -19
  k_jumpf MAITUKI_L_9CF3
MAITUKI_L_9D9F:
  k_ldln -17
  k_addli 3
  k_pushl
MAITUKI_L_9DA3:
  k_ldli 5
  k_jump MAITUKI_L_9CF2
MAITUKI_L_9DA7:
  k_ldliw $00C8
  k_stln -13
  k_ldli 0
  k_stln -11
  k_stln -15
  k_jump MAITUKI_L_9DEC
MAITUKI_L_9DB4:
  k_ldln -11
  k_ldrarg 11
  k_ne
  k_jumpf MAITUKI_L_9DE7
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrn -11
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldrn -5
  k_add
  k_derefb
  k_pushl
  k_ldln -13
  k_popr
  k_ugt
  k_jumpf MAITUKI_L_9DE7
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrn -11
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldrn -5
  k_add
  k_derefb
  k_stln -13
  k_ldln -11
  k_stln -15
MAITUKI_L_9DE7:
  k_ldln -11
  k_inc
  k_stln -11
MAITUKI_L_9DEC:
  k_ldln -11
  k_ldri 4
  k_ult
  k_jumpt MAITUKI_L_9DB4
  k_ldlarg 11
  k_shl1
  k_ldriw $0004
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldli 4
  k_popr
  k_sub
  k_shl1
  k_shl1
  k_addlib 30
  k_pushl
  k_ldln -13
  k_popr
  k_ult
  k_jumpf MAITUKI_L_9E17
  k_ldln -17
  k_addli 3
  k_pushl
  k_ldln -15
  k_jump MAITUKI_L_9CF2
MAITUKI_L_9E17:
  k_ldlarg 11
  k_ldri 3
  k_ne
  k_jumpt MAITUKI_L_9D9F
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stln -11
  k_ldln -17
  k_addli 3
  k_pushl
  k_ldln -11
  k_ldri 3
  k_eq
  k_jumpt MAITUKI_L_9DA3
  k_ldln -11
  k_jump MAITUKI_L_9CF2
; calls 4
MAITUKI_F_9E34:
  k_func 0
  k_ldlarg 11
  k_ldri 3
  k_eq
  k_jumpf MAITUKI_L_9E45
  k_call MAITUKI_F_9C23
  k_jump MAITUKI_L_9E4F
MAITUKI_L_9E45:
  k_pusharg 11
  k_callx MAITUKI_F_9832, 2
  k_pusharg 11
  k_callx MAITUKI_F_9A39, 2
MAITUKI_L_9E4F:
  k_pusharg 11
  k_callx MAITUKI_F_9CCF, 2
  k_return
; vars: g_title, g_nations | calls 3
MAITUKI_F_9E55:
  k_func 0
  k_ldlba g_title
  k_pushl
  k_ldla g_nations
  k_ldrib 50
  k_udiv
  k_pushl
  k_pushi 15
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_popr
  k_mul
  k_swap
  k_ldla $EECE
  k_add
  k_stla $EECE
  k_pushiw $2710
  k_pusha $EECE
  k_callx RL_8962, 4
  k_stla $EECE
  k_ldlba g_title
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_pushl
  k_pushiw $0005
  k_callx RL_884E, 2
  k_ldri 14
  k_mul
  k_ldriw $E6B6
  k_add
  k_deref
  k_ldrib 50
  k_udiv
  k_popr
  k_add
  k_popr
  k_mul
  k_swap
  k_ldla $EED0
  k_add
  k_stla $EED0
  k_pushiw $03E8
  k_pusha $EED0
  k_callx RL_8962, 4
  k_stla $EED0
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlba g_title
  k_pushl
  k_ldli 9
  k_popr
  k_sub
  k_popr
  k_add
  k_pushl
  k_ldlba $E442
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldlba $E442
  k_sub
  k_stlba $E442
  k_return
; vars: g_ports, g_nations | calls 1
MAITUKI_F_9ED8:
  k_func 2
  k_ldlarg 11
  k_shl1
  k_ldriw $0005
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -2
  k_ldl -2
  k_deref
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldriw g_nations
  k_add
  k_deref
  k_ldrib 50
  k_udiv
  k_popr
  k_add
  k_popr
  k_add
  k_return
; vars: g_relations, g_port_flags | calls 5
MAITUKI_F_9F06:
  k_func 14
  k_ldliw g_relations
  k_stl -2
  k_ldliw $EA95
  k_stl -6
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_ldrib 40
  k_ult
  k_jumpf MAITUKI_L_A12F
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9B
  k_popr
  k_shr
  k_popr
  k_and
  k_jumpf MAITUKI_L_9F71
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_popr
  k_shl
  k_ldrib -1
  k_xor
  k_swap
  k_ldla $EA9B
  k_and
  k_stla $EA9B
  k_ldlarg 13
  k_shl1
  k_shl1
  k_pushl
  k_ldli 8
  k_ldrarg 11
  k_shr
  k_popr
  k_shl
  k_ldrib -1
  k_xor
  k_swap
  k_ldla $EA9B
  k_and
  k_stla $EA9B
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 6
  k_jump MAITUKI_L_A224
MAITUKI_L_9F71:
  k_pusharg 11
  k_callx MAITUKI_F_9ED8, 2
  k_stl -12
  k_pusharg 13
  k_callx MAITUKI_F_9ED8, 2
  k_stl -14
  k_ldl -12
  k_ldr -14
  k_gt
  k_jumpf MAITUKI_L_A0E4
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9D
  k_popr
  k_shr
  k_popr
  k_and
  k_jumpf MAITUKI_L_A05D
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_pusharg 13
  k_callx MAITUKI_F_A2CC, 2
  k_stl -8
  k_ldl -14
  k_ldri 3
  k_mul
  k_ldri 2
  k_sdiv
  k_pushl
  k_ldl -12
  k_popr
  k_gt
  k_jumpf MAITUKI_L_A225
  k_pushib 100
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $0004
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_popr
  k_ult
  k_jumpf MAITUKI_L_A225
  k_ldl -8
  k_jumpf MAITUKI_L_A225
  k_ldl -8
  k_ldri 14
  k_mul
  k_ldriw $E6BC
  k_add
  k_stl -4
  k_ldli 0
  k_stl -10
MAITUKI_L_9FED:
  k_ldl -4
  k_ldr -10
  k_add
  k_pushl
  k_ldl -10
  k_ldrarg 11
  k_eq
  k_jumpf MAITUKI_L_9FFC
  k_ldlib 80
  k_jump MAITUKI_L_9FFD
MAITUKI_L_9FFC:
  k_ldli 0
MAITUKI_L_9FFD:
  k_popstoreb
  k_ldl -10
  k_inc
  k_stl -10
  k_ldl -10
  k_ldri 3
  k_ult
  k_jumpt MAITUKI_L_9FED
  k_pushiw $00FC
  k_ldl -8
  k_ldriw g_port_flags
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldlarg 11
  k_inc
  k_pushl
  k_ldl -8
  k_ldriw g_port_flags
  k_add
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_pushl
  k_pushib 100
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_addli 3
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 4
  k_jump MAITUKI_L_A224
MAITUKI_L_A05D:
  k_pushib 100
  k_callx RF_3F3E, 2
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $0004
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_mul
  k_popr
  k_add
  k_popr
  k_ult
  k_jumpf MAITUKI_L_A0D3
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_popr
  k_shl
  k_swap
  k_ldla $EA9D
  k_or
  k_stla $EA9D
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addli 2
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 2
  k_jump MAITUKI_L_A224
MAITUKI_L_A0D3:
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 0
  k_jump MAITUKI_L_A224
MAITUKI_L_A0E4:
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 1
  k_popstoreb
  k_ldl -12
  k_shl1
  k_ldr -14
  k_gt
  k_jumpf MAITUKI_L_A102
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt MAITUKI_L_A0D3
MAITUKI_L_A102:
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_pushl
  k_pushib 100
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_jump MAITUKI_L_A224
MAITUKI_L_A12F:
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9D
  k_popr
  k_shr
  k_popr
  k_and
  k_jumpf MAITUKI_L_A166
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_popr
  k_shl
  k_ldrib -1
  k_xor
  k_swap
  k_ldla $EA9D
  k_and
  k_stla $EA9D
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 3
  k_jump MAITUKI_L_A224
MAITUKI_L_A166:
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_ldrib 60
  k_ult
  k_jumpf MAITUKI_L_A1CB
  k_ldlarg 11
  k_shl1
  k_ldriw $0004
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_pushi 7
  k_callx RF_3F3E, 2
  k_popr
  k_ult
  k_jumpt MAITUKI_L_A0D3
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_pushl
  k_pushib 100
  k_ldlarg 11
  k_shl1
  k_shl1
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A61E
  k_add
  k_derefb
  k_ldr -2
  k_add
  k_derefb
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 1
  k_jump MAITUKI_L_A224
MAITUKI_L_A1CB:
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_pushl
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldla $EA9B
  k_popr
  k_shr
  k_popr
  k_and
  k_jumpt MAITUKI_L_A225
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpt MAITUKI_L_A225
  k_ldlarg 11
  k_shl1
  k_shl1
  k_pushl
  k_ldli 8
  k_ldrarg 13
  k_shr
  k_popr
  k_shl
  k_swap
  k_ldla $EA9B
  k_or
  k_stla $EA9B
  k_ldlarg 13
  k_shl1
  k_shl1
  k_pushl
  k_ldli 8
  k_ldrarg 11
  k_shr
  k_popr
  k_shl
  k_swap
  k_ldla $EA9B
  k_or
  k_stla $EA9B
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw MAITUKI_D_A62E
  k_add
  k_derefb
  k_ldr -6
  k_add
  k_pushl
  k_ldli 5
MAITUKI_L_A224:
  k_popstoreb
MAITUKI_L_A225:
  k_return
; calls 1
MAITUKI_F_A226:
  k_func 2
  k_ldli 0
  k_stl -2
MAITUKI_L_A22D:
  k_ldlarg 11
  k_ldr -2
  k_ne
  k_jumpf MAITUKI_L_A239
  k_push -2
  k_pusharg 11
  k_callx MAITUKI_F_9F06, 4
MAITUKI_L_A239:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt MAITUKI_L_A22D
  k_return
; calls 4
MAITUKI_F_A243:
  k_func 2
  k_ldli 0
  k_stl -2
MAITUKI_L_A24A:
  k_push -2
  k_callx MAITUKI_F_960C, 2
  k_ldl -2
  k_ldri 3
  k_ne
  k_jumpf MAITUKI_L_A25A
  k_push -2
  k_callx MAITUKI_F_A226, 2
MAITUKI_L_A25A:
  k_push -2
  k_callx MAITUKI_F_9E34, 2
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 4
  k_ult
  k_jumpt MAITUKI_L_A24A
  k_call MAITUKI_F_9E55
  k_return
; calls 4
MAITUKI_F_A26C:
  k_func 0
  k_call monthly_index_recovery
  k_call MAITUKI_F_A243
  k_call MAITUKI_F_A5A2
  k_call MAITUKI_F_A5EF
  k_return
; vars: g_player_name_ptr | calls 2
MAITUKI_F_A27E:
  k_func 10
  k_ldlarg 11
  k_jumpf MAITUKI_L_A28A
  k_ldlarg 11
  k_dec
  k_stlarg 11
MAITUKI_L_A28A:
  k_ldliw g_player_name_ptr
  k_stl -4
  k_addliw $011F
  k_stl -6
MAITUKI_L_A292:
  k_ldli 0
  k_stl -10
  k_ldlarg 11
  k_shl1
  k_ldriw MAITUKI_D_A638
  k_add
  k_deref
  k_pushl
  k_pushib 90
  k_callx RF_3F3E, 2
  k_shl1
  k_popr
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_stl -2
  k_ldl -4
  k_jump MAITUKI_L_A2BD
MAITUKI_L_A2AF:
  k_ldl -8
  k_deref
  k_ldr -2
  k_eq
  k_jumpf MAITUKI_L_A2BB
  k_ldli 1
  k_stl -10
  k_jump MAITUKI_L_A2C4
MAITUKI_L_A2BB:
  k_ldl -8
  k_addli 7
MAITUKI_L_A2BD:
  k_stl -8
  k_ldl -8
  k_ldr -6
  k_ult
  k_jumpt MAITUKI_L_A2AF
MAITUKI_L_A2C4:
  k_ldl -10
  k_jumpt MAITUKI_L_A292
  k_pusharg 13
  k_ldl -2
  k_popstore
  k_return
; vars: g_port_flags
MAITUKI_F_A2CC:
  k_func 6
  k_ldli 0
  k_stl -6
  k_ldli 3
  k_jump MAITUKI_L_A2EB
MAITUKI_L_A2D7:
  k_ldl -2
  k_ldriw g_port_flags
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_ldrarg 11
  k_eq
  k_jumpf MAITUKI_L_A2E9
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -2
  k_stl -4
MAITUKI_L_A2E9:
  k_ldl -2
  k_inc
MAITUKI_L_A2EB:
  k_stl -2
  k_ldl -2
  k_ldrib 50
  k_ult
  k_jumpt MAITUKI_L_A2D7
  k_ldl -6
  k_jumpf MAITUKI_L_A2FB
  k_ldl -4
  k_jump MAITUKI_L_A2FC
MAITUKI_L_A2FB:
  k_ldli 0
MAITUKI_L_A2FC:
  k_return
; calls 1
MAITUKI_F_A2FD:
  k_func 11
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_inc
  k_stln -11
  k_ldln -11
  k_stln -9
  k_ldli 5
  k_swap
  k_ldln -11
  k_add
  k_stln -11
  k_ldli 0
  k_stln -7
  k_jump MAITUKI_L_A32E
MAITUKI_L_A319:
  k_leal -5
  k_pushl
  k_pushn -9
  k_callx RL_8502, 4
  k_swap
  k_ldln -7
  k_add
  k_stln -7
  k_ldln -9
  k_inc
  k_stln -9
MAITUKI_L_A32E:
  k_ldln -9
  k_ldrn -11
  k_ult
  k_jumpt MAITUKI_L_A319
  k_ldln -7
  k_return
; vars: g_ports | calls 2
MAITUKI_F_A339:
  k_func 6
  k_ldlarg 11
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -6
  k_ldl -6
  k_addli 2
  k_deref
  k_stl -2
  k_ldl -6
  k_addli 6
  k_deref
  k_stl -4
  k_ldl -2
  k_ldriw $03E8
  k_ugt
  k_jumpf MAITUKI_L_A381
  k_push -6
  k_ldl -6
  k_deref
  k_pushl
  k_ldl -2
  k_ldriw $03E8
  k_udiv
  k_shl1
  k_shl1
  k_pushl
  k_pushi 10
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_popr
  k_add
  k_popstore
  k_push -6
  k_pushiw $03E8
  k_ldl -6
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_popstore
  k_ldl -6
  k_addli 2
  k_pushl
  k_ldl -2
  k_ldriw $03E8
  k_umod
  k_popstore
MAITUKI_L_A381:
  k_ldl -4
  k_ldriw $03E8
  k_ugt
  k_jumpf MAITUKI_L_A3BA
  k_ldl -6
  k_addli 4
  k_pushl
  k_ldl -6
  k_addli 4
  k_deref
  k_pushl
  k_ldl -4
  k_ldriw $03E8
  k_udiv
  k_shl1
  k_shl1
  k_pushl
  k_pushi 10
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_popr
  k_add
  k_popstore
  k_ldl -6
  k_addli 4
  k_pushl
  k_pushiw $03E8
  k_ldl -6
  k_addli 4
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_popstore
  k_ldl -6
  k_addli 6
  k_pushl
  k_ldl -4
  k_ldriw $03E8
  k_umod
  k_popstore
MAITUKI_L_A3BA:
  k_return
; sys: memset_long | vars: g_ports, g_port_flags, g_nations | calls 5
monthly_index_recovery:
  k_func 158
  k_pushib 64
  k_pushi 0
  k_leal -78
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_pushib 64
  k_pushi 0
  k_leal -142
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_ldliw g_ports
  k_stlf -154
  k_ldliw $150A
  k_stlf -156
  k_ldli 0
  k_stl -6
  k_ldliw g_port_flags
  k_stl -2
  k_addlib 50
  k_stl -4
  k_jump MAITUKI_L_A4AB
MAITUKI_L_A3F6:
  k_ldl -2
  k_derefb
  k_ldri 3
  k_and
  k_stl -12
  k_ldlf -156
  k_addli 4
  k_pushl
  k_callx RL_884E, 2
  k_stl -14
  k_push -6
  k_callx MAITUKI_F_A339, 2
  k_ldlf -154
  k_deref
  k_pushl
  k_pushf -156
  k_callx RL_884E, 2
  k_inc
  k_popr
  k_mul
  k_ldri 4
  k_sdiv
  k_pushl
  k_leal -78
  k_pushl
  k_ldl -14
  k_shl1
  k_pushl
  k_ldl -12
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldlf -154
  k_addli 4
  k_deref
  k_pushl
  k_leal -142
  k_pushl
  k_ldl -14
  k_shl1
  k_pushl
  k_ldl -12
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldlf -154
  k_addli 11
  k_derefb
  k_ldrib 50
  k_ugt
  k_jumpf MAITUKI_L_A45D
  k_ldlf -154
  k_addli 11
  k_derefb
  k_addlib -50
  k_jump MAITUKI_L_A467
MAITUKI_L_A45D:
  k_ldlf -154
  k_addli 11
  k_derefb
  k_pushl
  k_ldlib 50
  k_popr
  k_sub
MAITUKI_L_A467:
  k_stl -10
  k_ldl -10
  k_ldri 5
  k_ugt
  k_jumpf MAITUKI_L_A472
  k_ldli 5
  k_jump MAITUKI_L_A473
MAITUKI_L_A472:
  k_ldl -10
MAITUKI_L_A473:
  k_pushl
  k_callx RF_3F3E, 2
  k_swap
  k_ldl -10
  k_sub
  k_stl -10
  k_ldlf -154
  k_addli 11
  k_pushl
  k_ldlf -154
  k_addli 11
  k_derefb
  k_ldrib 50
  k_ugt
  k_jumpf MAITUKI_L_A492
  k_ldl -10
  k_addlib 50
  k_jump MAITUKI_L_A496
MAITUKI_L_A492:
  k_ldlib 50
  k_ldr -10
  k_sub
MAITUKI_L_A496:
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
  k_ldlf -154
  k_addli 14
  k_stlf -154
  k_ldlf -156
  k_addli 5
  k_stlf -156
  k_ldl -2
  k_inc
  k_stl -2
MAITUKI_L_A4AB:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt MAITUKI_L_A3F6
  k_pushi 6
  k_pushi 0
  k_leal -148
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_ldli 1
  k_stl -6
  k_leal -148
  k_stlf -150
  k_addli 6
  k_stlf -152
  k_jump MAITUKI_L_A54C
MAITUKI_L_A4CE:
  k_ldli 0
  k_jump MAITUKI_L_A4EC
MAITUKI_L_A4D2:
  k_leal -78
  k_pushl
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -6
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldlf -150
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_ldl -8
  k_inc
MAITUKI_L_A4EC:
  k_stl -8
  k_ldl -8
  k_ldri 5
  k_ult
  k_jumpf MAITUKI_L_A509
  k_leal -142
  k_pushl
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -6
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_deref
  k_ldriw $012B
  k_ugt
  k_jumpt MAITUKI_L_A4D2
MAITUKI_L_A509:
  k_ldli 5
  k_stl -8
MAITUKI_L_A50B:
  k_leal -142
  k_pushl
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -6
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_deref
  k_ldriw $012B
  k_ugt
  k_jumpf MAITUKI_L_A539
  k_leal -78
  k_pushl
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -6
  k_ldri 4
  k_shl
  k_popr
  k_add
  k_popr
  k_add
  k_deref
  k_pushl
  k_ldlf -150
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
MAITUKI_L_A539:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -8
  k_ldri 7
  k_ult
  k_jumpt MAITUKI_L_A50B
  k_ldl -6
  k_inc
  k_stl -6
  k_ldlf -150
  k_addli 2
  k_stlf -150
MAITUKI_L_A54C:
  k_ldlf -150
  k_ldrf -152
  k_ult
  k_jumpt MAITUKI_L_A4CE
  k_ldli 0
  k_stl -6
  k_ldliw g_nations
  k_stlf -158
  k_leal -148
  k_stlf -150
  k_addli 6
  k_stlf -152
  k_jump MAITUKI_L_A597
MAITUKI_L_A56B:
  k_pushf -158
  k_pushiw $C350
  k_ldlf -150
  k_deref
  k_ldrib 25
  k_udiv
  k_pushl
  k_push -6
  k_callx MAITUKI_F_A2FD, 2
  k_popr
  k_mul
  k_pushl
  k_callx RL_8962, 4
  k_popstore
  k_ldlf -158
  k_addli 4
  k_stlf -158
  k_ldl -6
  k_inc
  k_stl -6
  k_ldlf -150
  k_addli 2
  k_stlf -150
MAITUKI_L_A597:
  k_ldlf -150
  k_ldrf -152
  k_ult
  k_jumpt MAITUKI_L_A56B
  k_return
; calls 1
MAITUKI_F_A5A2:
  k_func 6
  k_ldliw $E970
  k_stl -4
  k_addlib 20
  k_stl -6
  k_jump MAITUKI_L_A5E8
MAITUKI_L_A5B1:
  k_ldl -4
  k_inc
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf MAITUKI_L_A5E5
  k_ldl -4
  k_inc
  k_derefb
  k_pushl
  k_pushi 3
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 0
  k_lt
  k_jumpf MAITUKI_L_A5D3
  k_ldlib 49
  k_jump MAITUKI_L_A5DF
MAITUKI_L_A5D3:
  k_ldl -2
  k_ldrib 49
  k_gt
  k_jumpf MAITUKI_L_A5DE
  k_ldli 0
  k_jump MAITUKI_L_A5DF
MAITUKI_L_A5DE:
  k_ldl -2
MAITUKI_L_A5DF:
  k_stl -2
  k_ldl -4
  k_inc
  k_pushl
  k_ldl -2
  k_popstoreb
MAITUKI_L_A5E5:
  k_ldl -4
  k_addli 2
  k_stl -4
MAITUKI_L_A5E8:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt MAITUKI_L_A5B1
  k_return
; calls 2
MAITUKI_F_A5EF:
  k_func 4
  k_ldliw $E42E
  k_stl -2
  k_addlib 20
  k_stl -4
  k_jump MAITUKI_L_A616
MAITUKI_L_A5FE:
  k_ldl -2
  k_derefb
  k_pushl
  k_pushi 4
  k_callx RF_3F3E, 2
  k_addli 5
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
MAITUKI_L_A616:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt MAITUKI_L_A5FE
  k_return
  .byte $00
MAITUKI_D_A61E:
  .byte $FF, $00, $02, $03, $00, $FF, $01, $04, $02, $01, $FF, $05, $03, $04, $05, $FF
MAITUKI_D_A62E:
  .byte $FF, $00, $01, $02, $FF, $03, $04, $05, $FF, $00
MAITUKI_D_A638:
  .byte $FF, $04, $79, $08, $88, $0B
