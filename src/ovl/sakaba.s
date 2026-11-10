; overlay sakaba, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp SAKABA_F_B003
; calls 1
SAKABA_F_B003:
  k_func 0
  k_call SAKABA_F_B0CA
  k_stla $F9A6
  k_return
; vars: g_cargo | calls 1
SAKABA_F_B00F:
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
  k_jump SAKABA_L_B075
SAKABA_L_B02F:
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
  k_jump SAKABA_L_B068
SAKABA_L_B04D:
  k_ldln -11
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf SAKABA_L_B05E
  k_ldln -17
  k_deref
  k_swap
  k_ldln -19
  k_add
  k_stln -19
SAKABA_L_B05E:
  k_ldln -17
  k_addli 2
  k_stln -17
  k_ldln -11
  k_inc
  k_stln -11
SAKABA_L_B068:
  k_ldln -11
  k_ldrn -13
  k_ult
  k_jumpt SAKABA_L_B04D
  k_ldln -7
  k_inc
  k_stln -7
SAKABA_L_B075:
  k_ldln -7
  k_ldrn -9
  k_ult
  k_jumpt SAKABA_L_B02F
  k_ldln -19
  k_return
; sys: file_open, file_seek, file_read_7e, file_close
SAKABA_F_B080:
  k_func 4
  k_ldli 0
  k_stla $F9A8
  k_ldlarg 11
  k_shl1
  k_ldriw SAKABA_D_B1B0
  k_add
  k_deref
  k_pushl
  k_pushib 24
  k_callx syscall, 4  ; sys 24 file_open
  k_stl -2
  k_ldliw $2700
  k_stl -4
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_push -2
  k_pushib 26
  k_callx syscall, 10  ; sys 26 file_seek
  k_push -4
  k_pushiw $B800
  k_push -2
  k_pushib 27
  k_callx syscall, 8  ; sys 27 file_read_7e
  k_push -2
  k_pushib 25
  k_callx syscall, 4  ; sys 25 file_close
  k_ldlarg 13
  k_jumpf SAKABA_L_B0C6
  k_ldliw $B800
  k_callptr
SAKABA_L_B0C6:
  k_ldla $F9A8
  k_return
; vars: g_port | calls 12
SAKABA_F_B0CA:
  k_func 6
  k_pushi 1
  k_pushi 6
  k_callx SAKABA_F_B080, 4
  k_jumpf SAKABA_L_B0DA
  k_ldli 0
  k_return
SAKABA_L_B0DA:
  k_pushi 1
  k_pushi 7
  k_callx RF_21EA, 4
  k_ldli 0
  k_stl -6
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw SAKABA_D_B297
  k_callx RF_4B44, 2
  k_ldlba g_port
  k_ldri 5
  k_mul
  k_ldriw $150D
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stlbf -4
  k_ldlbf -4
  k_ldriw $00FF
  k_ne
  k_jumpf SAKABA_L_B135
  k_pushi 2
  k_ldlbf -4
  k_pushl
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_ldlbf -4
  k_ldriw $E42E
  k_add
  k_derefb
  k_ldrib 45
  k_udiv
  k_shl1
  k_ldriw SAKABA_D_B200
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
SAKABA_L_B135:
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw SAKABA_D_B2B4
  k_callx RF_4B44, 2
  k_call RF_6080
  k_pushi 3
  k_pushi 6
  k_pushiw SAKABA_D_B1F4
  k_pushi 2
  k_pushi 12
  k_pushib 21
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -3
  k_ldlbf -3
  k_ldriw $00FF
  k_ne
  k_jumpf SAKABA_L_B1A3
  k_ldlbf -3
  k_ldri 5
  k_eq
  k_jumpf SAKABA_L_B196
  k_ldli 0
  k_stla $F99E
  k_pushi 1
  k_pushi 5
  k_callx SAKABA_F_B080, 4
  k_stlbf -3
  k_ldlbf -3
  k_ldriw $00FF
  k_ne
  k_jumpf SAKABA_L_B18F
  k_ldli 1
  k_stl -6
  k_ldlbf -3
  k_inc
  k_stlba $F196
  k_ldli 0
  k_stl -2
  k_jump SAKABA_L_B1AD
SAKABA_L_B18F:
  k_ldli 0
  k_stlbf -3
  k_jump SAKABA_L_B1A3
SAKABA_L_B196:
  k_pushi 1
  k_ldlbf -3
  k_pushl
  k_callx SAKABA_F_B080, 4
  k_swap
  k_ldl -6
  k_or
  k_stl -6
SAKABA_L_B1A3:
  k_ldlbf -3
  k_ldriw $00FF
  k_eq
  k_jumpf SAKABA_L_B135
SAKABA_L_B1AD:
  k_ldl -6
  k_return
  .byte $00
SAKABA_D_B1B0:
  .word SAKABA_D_B1BE, SAKABA_D_B1C5, SAKABA_D_B1CD, SAKABA_D_B1D5, SAKABA_D_B1DC, SAKABA_D_B1E3, SAKABA_D_B1EC
SAKABA_D_B1BE:
  .byte "s_nori", $00
SAKABA_D_B1C5:
  .byte "s_nsaso", $00
SAKABA_D_B1CD:
  .byte "s_nwaka", $00
SAKABA_D_B1D5:
  .byte "s_sake", $00
SAKABA_D_B1DC:
  .byte "s_onna", $00
SAKABA_D_B1E3:
  .byte "s_tobaku", $00
SAKABA_D_B1EC:
  .byte "s_ibent", $00
SAKABA_D_B1F4:
  .word SAKABA_D_B20A, SAKABA_D_B20F, SAKABA_D_B21A, SAKABA_D_B225, SAKABA_D_B22C, SAKABA_D_B230
SAKABA_D_B200:
  .word SAKABA_D_B237, SAKABA_D_B240, SAKABA_D_B249, SAKABA_D_B261, SAKABA_D_B27F
SAKABA_D_B20A:
  .byte "Crew", $00
SAKABA_D_B20F:
  .byte "Find mates", $00
SAKABA_D_B21A:
  .byte "Quit mates", $00
SAKABA_D_B225:
  .byte "Gossip", $00
SAKABA_D_B22C:
  .byte "Tip", $00
SAKABA_D_B230:
  .byte "Gamble", $00
SAKABA_D_B237:
  .byte "Hi there", $00
SAKABA_D_B240:
  .byte "Welcome!", $00
SAKABA_D_B249:
  .byte "Oh, you came after", $0A, "all!", $00
SAKABA_D_B261:
  .byte "Tell me about your", $0A, "adventures", $00
SAKABA_D_B27F:
  .byte "I'm so happy to see", $0A, "you", $00
SAKABA_D_B297:
  .byte "Make yerself at home,", $0A, "friend", $00
SAKABA_D_B2B4:
  .byte "What shall we do,", $0A, "Captain?", $00
  .byte $00
