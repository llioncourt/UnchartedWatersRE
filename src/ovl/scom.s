; overlay scom, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp SCOM_F_9603
; calls 1
SCOM_F_9603:
  k_func 0
  k_ldlba $F198
  k_pushl
  k_callx SCOM_F_9955, 2
  k_return
SCOM_F_9611:
  k_func 6
  k_ldli 0
  k_stl -6
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_stl -2
  k_jump SCOM_L_964D
SCOM_L_961F:
  k_ldlarg 13
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_addlib -5
  k_stl -4
  k_ldl -4
  k_ldri 2
  k_smod
  k_pushl
  k_ldli 3
  k_popr
  k_sub
  k_pushl
  k_ldl -4
  k_ldri 2
  k_shr
  k_pushl
  k_ldl -4
  k_ldri 1
  k_shr
  k_popr
  k_add
  k_ldrib 20
  k_mul
  k_addli 10
  k_ldri 3
  k_mul
  k_popr
  k_sdiv
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldlarg 13
  k_inc
  k_stlarg 13
SCOM_L_964D:
  k_ldlarg 13
  k_ldr -2
  k_ult
  k_jumpt SCOM_L_961F
  k_ldl -6
  k_ldri 5
  k_sdiv
  k_return
; vars: g_ships
SCOM_F_9657:
  k_func 12
  k_ldli 0
  k_stl -6
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_jump SCOM_L_96BE
SCOM_L_9664:
  k_ldl -2
  k_derefb
  k_stl -4
  k_ldl -4
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -10
  k_ldl -10
  k_derefb
  k_ldrarg 15
  k_ule
  k_jumpf SCOM_L_96AF
  k_ldl -4
  k_addlib -5
  k_ldri 3
  k_mul
  k_ldriw $E302
  k_add
  k_stl -12
  k_ldl -12
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf SCOM_L_96A7
  k_ldlarg 17
  k_ldr -6
  k_add
  k_pushl
  k_ldl -12
  k_derefb
  k_popstoreb
  k_ldl -6
  k_shl1
  k_ldrn 19
  k_add
  k_pushl
  k_ldl -12
  k_inc
  k_deref
  k_popstore
  k_ldl -6
  k_inc
  k_stl -6
  k_pushiw $00BF
  k_ldl -10
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
SCOM_L_96A7:
  k_ldl -10
  k_derefb
  k_swap
  k_ldlarg 15
  k_sub
  k_jump SCOM_L_96B8
SCOM_L_96AF:
  k_ldlarg 15
  k_pushl
  k_ldl -10
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_ldli 0
SCOM_L_96B8:
  k_stlarg 15
  k_ldlarg 15
  k_jumpf SCOM_L_96C6
  k_ldl -2
SCOM_L_96BE:
  k_dec
  k_stl -2
  k_ldl -2
  k_ldrarg 13
  k_uge
  k_jumpt SCOM_L_9664
SCOM_L_96C6:
  k_ldl -6
  k_return
; vars: g_fleets
SCOM_F_96C8:
  k_func 2
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -2
  k_ldlarg 13
  k_jumpf SCOM_L_96E6
  k_pusharg 11
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_callx $8A5B, 6
SCOM_L_96E6:
  k_pushi 8
  k_ldl -2
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_pushi 1
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_return
; calls 3
SCOM_F_96FE:
  k_func 4
  k_ldlarg 15
  k_jumpf SCOM_L_9761
  k_ldlarg 13
  k_ldrarg 11
  k_add
  k_stl -2
  k_jump SCOM_L_975B
SCOM_L_970E:
  k_ldlarg 13
  k_derefb
  k_addlib -5
  k_ldri 3
  k_mul
  k_ldriw $E302
  k_add
  k_stl -4
  k_ldl -4
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpf SCOM_L_9754
  k_push -4
  k_ldlarg 17
  k_ldrarg 15
  k_add
  k_dec
  k_derefb
  k_popstoreb
  k_ldl -4
  k_inc
  k_pushl
  k_ldlarg 13
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
  k_ldlarg 15
  k_dec
  k_shl1
  k_ldrn 19
  k_add
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_popstore
  k_ldlarg 15
  k_dec
  k_stlarg 15
SCOM_L_9754:
  k_ldlarg 15
  k_jumpf SCOM_L_9761
  k_ldlarg 13
  k_inc
  k_stlarg 13
SCOM_L_975B:
  k_ldlarg 13
  k_ldr -2
  k_ult
  k_jumpt SCOM_L_970E
SCOM_L_9761:
  k_return
; vars: g_fleets, g_player_gold | calls 1
SCOM_F_9762:
  k_func 2
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -2
  k_ldlarg 13
  k_ldri 4
  k_shl
  k_ldriw g_player_gold
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_addli 9
  k_deref
  k_pushl
  k_ldliw $EA60
  k_popr
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_addli 9
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_return
; vars: g_player_name_ptr, g_ships | calls 3
SCOM_F_978F:
  k_func 6
  k_pushi 3
  k_callx rand, 2
  k_jumpt SCOM_L_97B6
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_stl -6
  k_ldl -6
  k_addli 2
  k_pushl
  k_pushiw $00C8
  k_ldl -6
  k_addli 2
  k_derefb
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
SCOM_L_97B6:
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF09
  k_add
  k_derefb
  k_jumpf SCOM_L_97C9
  k_ldlarg 13
  k_ldri 3
  k_ult
  k_jumpf SCOM_L_97CF
SCOM_L_97C9:
  k_pusharg 11
  k_callx RF_46C6, 2
  k_return
SCOM_L_97CF:
  k_ldlarg 15
  k_ldrarg 13
  k_add
  k_stl -2
  k_jump SCOM_L_97EE
SCOM_L_97D6:
  k_ldlarg 15
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_ldrib 20
  k_ult
  k_jumpf SCOM_L_97EB
  k_pusharg 11
  k_callx RF_46C6, 2
  k_return
SCOM_L_97EB:
  k_ldlarg 15
  k_inc
  k_stlarg 15
SCOM_L_97EE:
  k_ldlarg 15
  k_ldr -2
  k_ult
  k_jumpt SCOM_L_97D6
  k_return
; calls 7
SCOM_F_97F5:
  k_func 66
  k_leal -5
  k_pushl
  k_pusharg 11
  k_callx RL_8502, 4
  k_stln -32
  k_leal -10
  k_pushl
  k_pusharg 13
  k_callx RL_8502, 4
  k_stln -34
  k_leal -5
  k_pushl
  k_pushn -32
  k_callx SCOM_F_9611, 4
  k_stln -44
  k_leal -10
  k_pushl
  k_pushn -34
  k_callx SCOM_F_9611, 4
  k_stln -46
  k_leal -56
  k_pushl
  k_leal -15
  k_pushl
  k_pushn -44
  k_leal -10
  k_pushl
  k_pushn -34
  k_callx SCOM_F_9657, 10
  k_stln -40
  k_leal -66
  k_pushl
  k_leal -20
  k_pushl
  k_pushn -46
  k_leal -5
  k_pushl
  k_pushn -32
  k_callx SCOM_F_9657, 10
  k_stln -42
  k_leal -25
  k_pushl
  k_pusharg 11
  k_callx RL_8502, 4
  k_stln -36
  k_leal -30
  k_pushl
  k_pusharg 13
  k_callx RL_8502, 4
  k_stln -38
  k_ldln -36
  k_jumpt SCOM_L_9878
  k_pusharg 15
  k_pusharg 11
  k_callx SCOM_F_96C8, 4
  k_jump SCOM_L_98A2
SCOM_L_9878:
  k_leal -25
  k_pushl
  k_pushn -36
  k_pusharg 11
  k_callx SCOM_F_978F, 6
  k_leal -56
  k_pushl
  k_leal -15
  k_pushl
  k_pushn -40
  k_leal -25
  k_pushl
  k_pushn -36
  k_callx SCOM_F_96FE, 10
  k_ldln -38
  k_jumpt SCOM_L_98A2
  k_pusharg 13
  k_pusharg 11
  k_callx SCOM_F_9762, 4
SCOM_L_98A2:
  k_ldln -38
  k_jumpt SCOM_L_98B0
  k_pusharg 15
  k_pusharg 13
  k_callx SCOM_F_96C8, 4
  k_jump SCOM_L_98DA
SCOM_L_98B0:
  k_leal -30
  k_pushl
  k_pushn -38
  k_pusharg 13
  k_callx SCOM_F_978F, 6
  k_leal -66
  k_pushl
  k_leal -20
  k_pushl
  k_pushn -42
  k_leal -30
  k_pushl
  k_pushn -38
  k_callx SCOM_F_96FE, 10
  k_ldln -36
  k_jumpt SCOM_L_98DA
  k_pusharg 11
  k_pusharg 13
  k_callx SCOM_F_9762, 4
SCOM_L_98DA:
  k_return
; sys: sprite_move, sprites_hide | calls 2
SCOM_F_98DB:
  k_func 4
  k_ldl -2
  k_shl1
  k_addli 2
  k_ldri 3
  k_shl
  k_stl -2
  k_ldl -4
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
  k_stl -4
  k_pushi 0
  k_pushi 2
  k_pushiw $3B80
  k_push -4
  k_push -2
  k_pushi 10
  k_pushi 10
  k_callx syscall, 14  ; sys 10 sprite_move
  k_pushi 1
  k_pushi 10
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_pushi 1
  k_pushi 1
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 1
  k_pushi 0
  k_callx RF_3EC3, 6
  k_return
; sys: palette_dma, sprite_move
SCOM_F_991B:
  k_func 0
  k_pushib 32
  k_pushiw $00D0
  k_pushib 126
  k_pushiw SCOM_D_9A14
  k_pushi 3
  k_callx syscall, 10  ; sys 3 palette_dma
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
  k_pushi 1
  k_pushi 2
  k_pushiw $3B80
  k_pusharg 13
  k_pusharg 11
  k_pushi 10
  k_pushi 10
  k_callx syscall, 14  ; sys 10 sprite_move
  k_return
; sys: wait_frames | vars: g_princess, g_king_mission, g_fleets, g_captains | calls 6
SCOM_F_9955:
  k_func 16
  k_ldlba $F197
  k_stl -2
  k_ldlba g_princess
  k_ldri 1
  k_and
  k_jumpf SCOM_L_999C
  k_ldlba g_king_mission+2
  k_ldri 1
  k_ugt
  k_jumpf SCOM_L_999C
  k_ldlba g_king_mission+2
  k_ldri 3
  k_eq
  k_jumpf SCOM_L_997C
  k_ldlba g_king_mission+8
  k_jump SCOM_L_997F
SCOM_L_997C:
  k_ldlba g_king_mission+3
SCOM_L_997F:
  k_stl -6
  k_ldl -2
  k_ldr -6
  k_eq
  k_jumpt SCOM_L_998E
  k_ldlbf 11
  k_ldr -6
  k_eq
  k_jumpf SCOM_L_999C
SCOM_L_998E:
  k_push -2
  k_callx RF_46C6, 2
  k_ldlbf 11
  k_pushl
  k_callx RF_46C6, 2
  k_return
SCOM_L_999C:
  k_ldlbf 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -8
  k_ldl -2
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -10
  k_ldlbf 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -12
  k_ldl -2
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -14
  k_ldli 0
  k_stl -16
  k_ldlba $EF6A
  k_jumpt SCOM_L_99F7
  k_ldl -8
  k_derefb
  k_pushl
  k_ldlba g_fleets
  k_popr
  k_eq
  k_jumpf SCOM_L_99F7
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldlba g_fleets+1
  k_popr
  k_eq
  k_jumpf SCOM_L_99F7
  k_ldli 1
  k_stl -16
  k_pushib 25
  k_callx RF_21CA, 2
  k_ldl -8
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -8
  k_addli 2
  k_derefb
  k_pushl
  k_callx SCOM_F_991B, 4
SCOM_L_99F7:
  k_push -16
  k_ldlbf 11
  k_pushl
  k_push -2
  k_callx SCOM_F_97F5, 6
  k_ldl -16
  k_jumpf SCOM_L_9A13
  k_pushib 30
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_call SCOM_F_98DB
  k_call RF_229B
SCOM_L_9A13:
  k_return
SCOM_D_9A14:
  .word $0000, $0842, $0891, $29D7, $4F3D, $02BF, $66EE, $7FFF  ; BGR555
  .word $4EF9, $777D, $01C0, $1AEA, $23F3, $12E4, $4E73, $1B7F  ; BGR555
