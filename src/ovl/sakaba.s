; overlay sakaba, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp SAKABA_F_B003
SAKABA_F_B003:
  k_func 0
  k_call SAKABA_F_B0CA
  k_stla $F9A6
  k_return
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
SAKABA_F_B080:
  k_func 4
  k_ldli 0
  k_stla $F9A8
  k_ldlarg 11
  k_shl1
  k_ldriw $B1B0
  k_add
  k_deref
  k_pushl
  k_pushib 24
  k_callx RL_21BE, 4
  k_stl -2
  k_ldliw $2700
  k_stl -4
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_push -2
  k_pushib 26
  k_callx RL_21BE, 10
  k_push -4
  k_pushiw $B800
  k_push -2
  k_pushib 27
  k_callx RL_21BE, 8
  k_push -2
  k_pushib 25
  k_callx RL_21BE, 4
  k_ldlarg 13
  k_jumpf SAKABA_L_B0C6
  k_ldliw $B800
  k_callptr
SAKABA_L_B0C6:
  k_ldla $F9A8
  k_return
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
  k_pushiw $B297
  k_callx RF_4B44, 2
  k_ldlba $EF69
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
  k_ldriw $B200
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
  k_pushiw $B2B4
  k_callx RF_4B44, 2
  k_call RF_6080
  k_pushi 3
  k_pushi 6
  k_pushiw $B1F4
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
  .byte $00, $BE, $B1, $C5, $B1, $CD, $B1, $D5, $B1, $DC, $B1, $E3, $B1, $EC, $B1
  .byte "s_nori"
  .byte $00
  .byte "s_nsaso"
  .byte $00
  .byte "s_nwaka"
  .byte $00
  .byte "s_sake"
  .byte $00
  .byte "s_onna"
  .byte $00
  .byte "s_tobaku"
  .byte $00
  .byte "s_ibent"
  .byte $00, $0A, $B2, $0F, $B2, $1A, $B2, $25, $B2, $2C, $B2, $30, $B2, $37, $B2, $40
  .byte $B2, $49, $B2, $61, $B2, $7F, $B2
  .byte "Crew"
  .byte $00
  .byte "Find mates"
  .byte $00
  .byte "Quit mates"
  .byte $00
  .byte "Gossip"
  .byte $00, $54, $69, $70, $00
  .byte "Gamble"
  .byte $00
  .byte "Hi there"
  .byte $00
  .byte "Welcome!"
  .byte $00
  .byte "Oh, you came after"
  .byte $0A
  .byte "all!"
  .byte $00
  .byte "Tell me about your"
  .byte $0A
  .byte "adventures"
  .byte $00
  .byte "I'm so happy to see"
  .byte $0A, $79, $6F, $75, $00
  .byte "Make yerself at home,"
  .byte $0A
  .byte "friend"
  .byte $00
  .byte "What shall we do,"
  .byte $0A
  .byte "Captain?"
  .byte $00, $00
