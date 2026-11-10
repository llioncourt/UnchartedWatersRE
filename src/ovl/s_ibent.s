; overlay s_ibent, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_IBENT_F_B803
S_IBENT_F_B803:
  k_func 0
  k_call S_IBENT_F_B85B
  k_stla $F9A8
  k_return
S_IBENT_F_B80F:
  k_func 2
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -2
  k_ldl -2
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_ldri 3
  k_ne
  k_jumpf S_IBENT_L_B843
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_shl1
  k_ldriw $BAB4
  k_add
  k_deref
  k_pushl
  k_pushiw $BAC3
  k_callx RF_3619, 4
S_IBENT_L_B843:
  k_pushi 1
  k_pushiw $BAC8
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_return
S_IBENT_F_B85B:
  k_func 0
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpf S_IBENT_L_B8EF
  k_ldlba $EF61
  k_ldri 2
  k_and
  k_jumpf S_IBENT_L_B8EF
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf S_IBENT_L_B8EF
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf S_IBENT_L_B8EF
  k_ldlba $EF55
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_B8EF
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BACA
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_pushiw $2710
  k_ldla $EF5A
  k_ldri 1
  k_shr
  k_ldra $EE72
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla $EE72
  k_ldla $EE74
  k_ldriw $C350
  k_ult
  k_jumpf S_IBENT_L_B8DB
  k_pushiw $03E8
  k_ldliw $C350
  k_ldra $EE74
  k_sub
  k_pushl
  k_callx RL_8962, 4
  k_swap
  k_ldla $EE74
  k_add
  k_stla $EE74
S_IBENT_L_B8DB:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BAFE
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldli 0
  k_stlba $EF61
  k_ldli 1
  k_return
S_IBENT_L_B8EF:
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpf S_IBENT_L_B9B7
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf S_IBENT_L_B9B7
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf S_IBENT_L_B9B7
  k_ldlba $EF55
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_B9B7
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB25
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB44
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf S_IBENT_L_B94F
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB6F
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_jump S_IBENT_L_B9B5
S_IBENT_L_B94F:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BB93
  k_callx RF_2FB9, 4
  k_ldla $EF5A
  k_ldri 1
  k_shr
  k_pushl
  k_ldla $EE72
  k_popr
  k_ult
  k_jumpf S_IBENT_L_B97D
  k_ldli 0
  k_stla $EE72
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BBB7
  k_callx RF_2FB9, 4
  k_jump S_IBENT_L_B98A
S_IBENT_L_B97D:
  k_ldla $EF5A
  k_ldri 1
  k_shr
  k_swap
  k_ldla $EE72
  k_sub
  k_stla $EE72
S_IBENT_L_B98A:
  k_call RF_472D
  k_call RF_60B2
  k_pushiw $BBEB
  k_callx RF_4B44, 2
  k_pushi 10
  k_callx RF_3F3E, 2
  k_ldri 5
  k_mul
  k_addliw $012C
  k_pushl
  k_pusha $EE74
  k_callx RL_8962, 4
  k_swap
  k_ldla $EE74
  k_sub
  k_stla $EE74
  k_ldli 0
  k_stlba $EF61
S_IBENT_L_B9B5:
  k_ldli 1
  k_return
S_IBENT_L_B9B7:
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_jumpt S_IBENT_L_BAB2
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf S_IBENT_L_BAB2
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_jumpf S_IBENT_L_BAB2
  k_ldlba $EF55
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_BAB2
  k_pushi 1
  k_pushi 4
  k_callx RF_21EA, 4
  k_pushi 5
  k_callx RF_3F3E, 2
  k_ldri 5
  k_mul
  k_addlib 100
  k_stla $EF5A
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BC0D
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $BC46
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldlba $EF57
  k_dec
  k_ldri 5
  k_udiv
  k_ldri 3
  k_eq
  k_jumpf S_IBENT_L_BA2F
  k_pushi 0
  k_pushiw $BC51
  k_jump S_IBENT_L_BA33
S_IBENT_L_BA2F:
  k_pushi 0
  k_pushiw $BC58
S_IBENT_L_BA33:
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_dec
  k_ldri 5
  k_udiv
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $BC60
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pusha $EF5A
  k_pushiw $BC76
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf S_IBENT_L_BA9E
  k_call RF_60B2
  k_ldla $EF5A
  k_ldri 1
  k_shr
  k_pushl
  k_pushiw $BCA6
  k_callx RF_3619, 4
  k_pushiw $2710
  k_ldla $EF5A
  k_ldri 1
  k_shr
  k_ldra $EE72
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stla $EE72
  k_ldli 8
  k_swap
  k_ldlba $EF61
  k_or
  k_jump S_IBENT_L_BAAA
S_IBENT_L_BA9E:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $BCE2
  k_callx RF_2FB9, 4
  k_ldli 0
S_IBENT_L_BAAA:
  k_stlba $EF61
  k_call RF_472D
  k_ldli 1
  k_return
S_IBENT_L_BAB2:
  k_ldli 0
  k_return
  .byte $B8, $BA, $BE, $BA, $BC, $AE, $B3, $BE, $DD, $00, $BE, $DD, $B6, $DD, $00, $25
  .byte $73, $C0, $B2, $00, $C9, $00
  .byte "I'm glad you came"
  .byte $0A
  .byte "through for us! We'll"
  .byte $0A
  .byte "be safe now"
  .byte $00
  .byte "I'll deposit your"
  .byte $0A
  .byte "reward at the palace"
  .byte $00
  .byte "What's become of the"
  .byte $0A
  .byte "villains?"
  .byte $00
  .byte "You didn't catch"
  .byte $0A
  .byte "them?! Will you try"
  .byte $0A
  .byte "again"
  .byte $00
  .byte "Then please hurry."
  .byte $0A
  .byte "I'm losing money"
  .byte $00
  .byte "You coward! Give me"
  .byte $0A
  .byte "back the money!"
  .byte $00
  .byte "Enough of your jokes."
  .byte $0A
  .byte "There's not enough"
  .byte $0A
  .byte "money here"
  .byte $00
  .byte "I thought you were"
  .byte $0A
  .byte "trustworthy..."
  .byte $00
  .byte "I've searched high andlow for you. I have a"
  .byte $0A
  .byte "favor to ask"
  .byte $00, $0A
  .byte "You see, "
  .byte $00, $0A, $0A
  .byte "the "
  .byte $00, $0A, $0A
  .byte "from "
  .byte $00, $20, $69, $73, $0A, $0A
  .byte "robbing me blind"
  .byte $00
  .byte "Will you take care of"
  .byte $0A
  .byte "him for %d000 gold"
  .byte $0A
  .byte "pieces"
  .byte $00
  .byte "Good! As down payment"
  .byte $0A
  .byte "I'll deposit %d000"
  .byte $0A
  .byte "gold at the palace"
  .byte $00
  .byte "You dare to call"
  .byte $0A
  .byte "yourself a sailor?"
  .byte $00
