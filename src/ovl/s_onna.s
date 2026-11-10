; overlay s_onna, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_ONNA_F_B803
S_ONNA_F_B803:
  k_func 0
  k_call S_ONNA_F_C297
  k_stla $F9A8
  k_return
S_ONNA_F_B80F:
  k_func 6
  k_ldliw $150A
  k_stl -2
  k_ldli 0
  k_stl -4
S_ONNA_L_B81A:
  k_ldl -2
  k_addli 3
  k_pushl
  k_callx RL_884E, 2
  k_stl -6
  k_ldl -6
  k_ldrarg 11
  k_eq
  k_jumpf S_ONNA_L_B82A
  k_ldl -4
  k_return
S_ONNA_L_B82A:
  k_ldl -2
  k_addli 5
  k_stl -2
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldrib 50
  k_ult
  k_jumpt S_ONNA_L_B81A
  k_ldli 0
  k_return
S_ONNA_F_B839:
  k_func 0
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_return
S_ONNA_F_B844:
  k_func 0
  k_ldlba $EF61
  k_ldri 2
  k_and
  k_return
S_ONNA_F_B84F:
  k_func 0
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_return
S_ONNA_F_B85A:
  k_func 0
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_return
S_ONNA_F_B869:
  k_func 18
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -18
  k_ldl -18
  k_addli 2
  k_pushl
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_stl -14
  k_ldl -18
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stl -8
  k_ldlarg 11
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_stl -12
  k_ldl -8
  k_ldriw $00FF
  k_ne
  k_jumpf S_ONNA_L_B8B4
  k_ldl -8
  k_ldrarg 13
  k_eq
  k_jumpf S_ONNA_L_B8B4
  k_ldl -14
  k_ldr -12
  k_le
  k_jumpf S_ONNA_L_B8B4
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_ne
  k_jumpf S_ONNA_L_B8B4
  k_ldli 1
  k_return
S_ONNA_L_B8B4:
  k_push -18
  k_callx RL_884E, 2
  k_ldrib 88
  k_mul
  k_ldriw $1864
  k_add
  k_stl -16
  k_ldl -16
  k_stl -2
  k_ldl -16
  k_addli 9
  k_stl -4
  k_ldli 0
  k_stl -6
S_ONNA_L_B8C8:
  k_push -2
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_stl -14
  k_ldl -14
  k_ldriw $00FF
  k_eq
  k_jumpt S_ONNA_L_B8FC
  k_push -4
  k_callx RL_884E, 2
  k_stl -10
  k_ldl -10
  k_ldrarg 13
  k_eq
  k_jumpf S_ONNA_L_B8ED
  k_ldl -14
  k_ldr -12
  k_le
  k_jumpf S_ONNA_L_B8ED
  k_ldli 1
  k_return
S_ONNA_L_B8ED:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 9
  k_ult
  k_jumpt S_ONNA_L_B8C8
S_ONNA_L_B8FC:
  k_ldli 0
  k_return
S_ONNA_F_B8FE:
  k_func 10
  k_ldlarg 13
  k_ldrib 18
  k_udiv
  k_stl -2
  k_ldl -2
  k_jumpf S_ONNA_L_B914
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_addlib -90
  k_jump S_ONNA_L_B91C
S_ONNA_L_B914:
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_pushl
  k_ldlib 90
  k_popr
  k_sub
S_ONNA_L_B91C:
  k_stl -6
  k_ldlarg 11
  k_addlib 38
  k_ldrib 72
  k_umod
  k_stl -10
  k_ldl -10
  k_ldrib 36
  k_udiv
  k_stl -4
  k_ldl -4
  k_jumpf S_ONNA_L_B934
  k_ldlib 72
  k_ldr -10
  k_sub
  k_jump S_ONNA_L_B935
S_ONNA_L_B934:
  k_ldl -10
S_ONNA_L_B935:
  k_ldri 5
  k_mul
  k_stl -8
  k_push -8
  k_ldl -4
  k_shl1
  k_ldriw $C46C
  k_add
  k_deref
  k_pushl
  k_push -6
  k_ldl -2
  k_shl1
  k_ldriw $C468
  k_add
  k_deref
  k_pushl
  k_pushiw $C478
  k_callx RF_3608, 10
  k_return
S_ONNA_F_B952:
  k_func 2
  k_ldlarg 11
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -2
  k_push -2
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C486
  k_callx RF_2FB9, 4
  k_ldl -2
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -2
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx S_ONNA_F_B8FE, 4
  k_return
S_ONNA_F_B983:
  k_func 2
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_udiv
  k_stl -2
  k_ldlarg 11
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -2
  k_ldri 3
  k_eq
  k_jumpf S_ONNA_L_B9A9
  k_pushi 0
  k_pushiw $C48C
  k_jump S_ONNA_L_B9AD
S_ONNA_L_B9A9:
  k_pushi 0
  k_pushiw $C493
S_ONNA_L_B9AD:
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_return
S_ONNA_F_B9C2:
  k_func 0
  k_pushi 1
  k_pushiw $C49B
  k_callx RF_2FB9, 4
  k_return
S_ONNA_F_B9D0:
  k_func 8
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C4C8
  k_callx RF_2FB9, 4
  k_pusharg 11
  k_callx S_ONNA_F_B983, 2
  k_pushi 0
  k_pushiw $C4E2
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C4E4
  k_callx RF_2FB9, 4
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -4
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BA5C
  k_ldl -4
  k_addli 5
  k_derefb
  k_stl -2
  k_ldl -4
  k_addli 4
  k_derefb
  k_jumpf S_ONNA_L_BA48
  k_ldlba $EF69
  k_ldr -2
  k_eq
  k_jumpf S_ONNA_L_BA38
  k_pushi 0
  k_pushiw $C4E6
  k_jump S_ONNA_L_BA31
S_ONNA_L_BA2D:
  k_pushi 0
  k_pushiw $C51E
S_ONNA_L_BA31:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BA77
S_ONNA_L_BA38:
  k_pushi 0
  k_pushiw $C506
  k_callx RF_2FB9, 4
  k_push -2
  k_callx S_ONNA_F_B952, 2
  k_jump S_ONNA_L_BA77
S_ONNA_L_BA48:
  k_ldl -2
  k_jumpf S_ONNA_L_BA2D
  k_pushi 0
  k_pushiw $C541
  k_callx RF_2FB9, 4
  k_push -2
  k_callx S_ONNA_F_B983, 2
  k_jump S_ONNA_L_BA77
S_ONNA_L_BA5C:
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -8
  k_pushi 0
  k_pushiw $C555
  k_callx RF_2FB9, 4
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldl -8
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B8FE, 4
S_ONNA_L_BA77:
  k_return
S_ONNA_F_BA78:
  k_func 4
  k_pusharg 11
  k_ldlba $EF69
  k_pushl
  k_callx S_ONNA_F_B869, 4
  k_jumpf S_ONNA_L_BAA4
  k_ldlba $EF54
  k_pushl
  k_ldlba $EF69
  k_popr
  k_ne
  k_jumpf S_ONNA_L_BAA4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C5CC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
S_ONNA_L_BAA4:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpt S_ONNA_L_BAE2
  k_ldli 0
  k_stl -4
  k_jump S_ONNA_L_BAC0
S_ONNA_L_BAB1:
  k_ldl -2
  k_ldriw $C583
  k_add
  k_derefb
  k_ldrarg 11
  k_eq
  k_jumpf S_ONNA_L_BABE
  k_ldl -2
  k_stl -4
S_ONNA_L_BABE:
  k_ldl -2
  k_inc
S_ONNA_L_BAC0:
  k_stl -2
  k_ldl -2
  k_ldri 12
  k_ult
  k_jumpt S_ONNA_L_BAB1
  k_call RF_60B2
  k_ldl -4
  k_ldriw $C577
  k_add
  k_derefb
  k_shl1
  k_ldriw $C56B
  k_add
  k_deref
  k_pushl
  k_pushiw $C5EB
  k_callx RF_3619, 4
  k_call RF_472D
  k_return
S_ONNA_L_BAE2:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C604
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
S_ONNA_F_BAF1:
  k_func 2
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_BB3C
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_BB3C
  k_call RF_60B2
  k_ldlba $EF55
  k_jumpt S_ONNA_L_BB11
  k_call S_ONNA_F_B9C2
  k_jump S_ONNA_L_BB39
S_ONNA_L_BB11:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_BB22
  k_pushi 1
  k_pushiw $C629
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BB39
S_ONNA_L_BB22:
  k_pushi 0
  k_pushiw $C65F
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_pushl
  k_callx S_ONNA_F_B952, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BB39:
  k_call RF_472D
S_ONNA_L_BB3C:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_BB8A
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_BB8A
  k_ldlba $EF57
  k_pushl
  k_callx $B00F, 2
  k_jumpt S_ONNA_L_BB8A
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C67F
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_shl1
  k_ldriw $1B49
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C6A6
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldlba $EF57
  k_pushl
  k_callx S_ONNA_F_BA78, 2
S_ONNA_L_BB8A:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_BBEB
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_BBEB
  k_ldlba $EF57
  k_pushl
  k_callx $B00F, 2
  k_jumpf S_ONNA_L_BBEB
  k_call RF_60B2
  k_ldlba $EF55
  k_jumpt S_ONNA_L_BBBC
  k_pushi 1
  k_pushiw $C6A8
  k_jump S_ONNA_L_BBB5
S_ONNA_L_BBB1:
  k_pushi 1
  k_pushiw $C6D8
S_ONNA_L_BBB5:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BBE8
S_ONNA_L_BBBC:
  k_call S_ONNA_F_B85A
  k_jumpt S_ONNA_L_BBB1
  k_pushi 0
  k_pushiw $C70E
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C72E
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BBE8:
  k_call RF_472D
S_ONNA_L_BBEB:
  k_return
S_ONNA_F_BBEC:
  k_func 0
  k_call RF_60B2
  k_ldlba $EF55
  k_jumpt S_ONNA_L_BC00
  k_call S_ONNA_F_B9C2
  k_jump S_ONNA_L_BC28
S_ONNA_L_BC00:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_BC11
  k_pushi 1
  k_pushiw $C73B
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BC28
S_ONNA_L_BC11:
  k_pushi 0
  k_pushiw $C75F
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_pushl
  k_callx S_ONNA_F_B952, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BC28:
  k_call RF_472D
  k_return
S_ONNA_F_BC2C:
  k_func 12
  k_ldla $EF52
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_ONNA_L_BC59
  k_call RF_60B2
  k_ldlba $EF5C
  k_jumpf S_ONNA_L_BC4E
  k_ldlba $EF5C
  k_pushl
  k_callx S_ONNA_F_B9D0, 2
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BC4E:
  k_pushi 0
  k_pushiw $C77F
S_ONNA_L_BC52:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BC59:
  k_ldla $EF52
  k_derefb
  k_ldri 3
  k_eq
  k_jumpf S_ONNA_L_BCDD
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BC8D
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_stl -6
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_jump S_ONNA_L_BC9C
S_ONNA_L_BC8D:
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_stl -6
  k_ldlib 99
S_ONNA_L_BC9C:
  k_stl -2
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BCAC
  k_ldlba $EF69
  k_ldr -2
  k_ne
  k_jumpf S_ONNA_L_BCD7
S_ONNA_L_BCAC:
  k_call RF_60B2
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pushiw $C7C9
  k_callx RF_3619, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C7E6
  k_callx RF_2FB9, 4
  k_push -6
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C7E8
  k_jump S_ONNA_L_BC52
S_ONNA_L_BCD7:
  k_call S_ONNA_F_BC2C
  k_jump S_ONNA_L_BFCE
S_ONNA_L_BCDD:
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BD01
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_stl -2
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_ONNA_L_BD1A
S_ONNA_L_BD01:
  k_ldla $EF52
  k_inc
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E971
  k_add
  k_derefb
  k_stl -2
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
S_ONNA_L_BD1A:
  k_stl -6
  k_ldla $EF52
  k_derefb
  k_jumpf S_ONNA_L_BF2E
  k_ldlba $EF69
  k_ldr -2
  k_eq
  k_jumpf S_ONNA_L_BECB
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldriw $E42E
  k_add
  k_derefb
  k_ldrib 90
  k_ugt
  k_jumpf S_ONNA_L_BDD2
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_ONNA_L_BD85
  k_ldlba $EF5C
  k_jumpf S_ONNA_L_BD6E
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C808
  k_callx RF_2FB9, 4
  k_ldlba $EF5C
  k_pushl
  k_callx S_ONNA_F_B983, 2
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pushiw $C80A
  k_callx RF_3608, 4
  k_jump S_ONNA_L_BDBC
S_ONNA_L_BD6E:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C817
  k_callx RF_2FB9, 4
  k_ldli 4
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_jump S_ONNA_L_BDBC
S_ONNA_L_BD85:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C860
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_jumpf S_ONNA_L_BDAA
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_ONNA_L_BDB6
S_ONNA_L_BDAA:
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
S_ONNA_L_BDB6:
  k_stl -8
  k_push -8
  k_callx RF_40DE, 2
S_ONNA_L_BDBC:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldli 2
  k_swap
  k_ldla $EF52
  k_add
  k_stla $EF52
  k_jump S_ONNA_L_BFCE
S_ONNA_L_BDD2:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C88D
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_ONNA_L_BE80
  k_ldlba $EF5C
  k_jumpf S_ONNA_L_BE14
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C8B3
  k_callx RF_2FB9, 4
  k_ldlba $EF5C
  k_pushl
  k_callx S_ONNA_F_B983, 2
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_pushiw $C8B5
  k_callx RF_3608, 4
  k_jump S_ONNA_L_BEBF
S_ONNA_L_BE14:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BE76
  k_pushi 5
  k_callx RF_3F3E, 2
  k_inc
  k_ldrib 100
  k_mul
  k_pushl
  k_pusha $E56D
  k_callx RL_8962, 4
  k_stl -10
  k_call RF_60B2
  k_push -10
  k_pushiw $C8C2
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf S_ONNA_L_BE68
  k_call RF_60B2
  k_ldl -10
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_pushi 1
  k_pushiw $C8FB
  k_callx RF_2FB9, 4
  k_ldli 4
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_ldli 2
  k_swap
  k_ldla $EF52
  k_add
  k_stla $EF52
  k_jump S_ONNA_L_BFCB
S_ONNA_L_BE68:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C915
S_ONNA_L_BE6F:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_BFCB
S_ONNA_L_BE76:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $C922
  k_jump S_ONNA_L_BE6F
S_ONNA_L_BE80:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C94D
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_jumpf S_ONNA_L_BEA5
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_ONNA_L_BEB1
S_ONNA_L_BEA5:
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
S_ONNA_L_BEB1:
  k_stl -8
  k_push -8
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C96A
  k_callx RF_2FB9, 4
S_ONNA_L_BEBF:
  k_ldli 2
  k_swap
  k_ldla $EF52
  k_add
  k_stla $EF52
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BECB:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C977
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C979
  k_callx RF_2FB9, 4
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BF13
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
S_ONNA_L_BF0C:
  k_callx RF_40DE, 2
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BF13:
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_ONNA_F_B80F, 2
  k_stl -4
  k_ldl -4
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -12
  k_pushi 0
  k_pushiw $C986
  k_jump S_ONNA_L_BFAB
S_ONNA_L_BF2E:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $C999
  k_callx RF_2FB9, 4
  k_ldlba $EF69
  k_ldr -2
  k_eq
  k_jumpf S_ONNA_L_BF64
  k_pushi 0
  k_pushiw $C9AB
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushiw $C9AD
  k_callx RF_3608, 2
  k_jump S_ONNA_L_BFC4
S_ONNA_L_BF64:
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C9C2
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_inc
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E971
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -12
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_BFA7
  k_pushi 0
  k_pushiw $C9D2
  k_callx RF_2FB9, 4
  k_push -12
  k_jump S_ONNA_L_BF0C
S_ONNA_L_BFA7:
  k_pushi 0
  k_pushiw $C9E2
S_ONNA_L_BFAB:
  k_callx RF_2FB9, 4
  k_ldl -12
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -12
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx S_ONNA_F_B8FE, 4
S_ONNA_L_BFC4:
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_BFCB:
  k_call RF_472D
S_ONNA_L_BFCE:
  k_return
S_ONNA_F_BFCF:
  k_func 0
  k_call RF_60B2
  k_ldlba $EF55
  k_jumpt S_ONNA_L_BFE8
  k_pushi 1
  k_pushiw $C9F4
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C017
S_ONNA_L_BFE8:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_BFF9
  k_pushi 0
  k_pushiw $CA0E
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C010
S_ONNA_L_BFF9:
  k_pushi 0
  k_pushiw $CA3D
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
S_ONNA_L_C010:
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_C017:
  k_call RF_472D
  k_return
S_ONNA_F_C01B:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C02F
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C02F
  k_call S_ONNA_F_BBEC
S_ONNA_L_C02F:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C048
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C048
  k_ldla $E571
  k_ldriw $8000
  k_and
  k_jumpt S_ONNA_L_C048
  k_call S_ONNA_F_BC2C
S_ONNA_L_C048:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C061
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C061
  k_ldla $E571
  k_ldriw $8000
  k_and
  k_jumpf S_ONNA_L_C061
  k_call S_ONNA_F_BFCF
S_ONNA_L_C061:
  k_return
S_ONNA_F_C062:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C0AE
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C0AE
  k_call RF_60B2
  k_ldlba $EF55
  k_jumpt S_ONNA_L_C08E
  k_pushi 1
  k_pushiw $CA63
  k_jump S_ONNA_L_C087
S_ONNA_L_C083:
  k_pushi 1
  k_pushiw $CA84
S_ONNA_L_C087:
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C0AB
S_ONNA_L_C08E:
  k_call S_ONNA_F_B85A
  k_jumpt S_ONNA_L_C083
  k_pushi 0
  k_pushiw $CAAA
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_pushl
  k_callx S_ONNA_F_B952, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_C0AB:
  k_call RF_472D
S_ONNA_L_C0AE:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C0D2
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C0D2
  k_call S_ONNA_F_B844
  k_jumpt S_ONNA_L_C0D2
  k_ldlba $EF57
  k_pushl
  k_callx S_ONNA_F_B9D0, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_ONNA_L_C0D2:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C12E
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C12E
  k_call S_ONNA_F_B844
  k_jumpf S_ONNA_L_C12E
  k_call RF_60B2
  k_ldlba $EF55
  k_jumpt S_ONNA_L_C0F8
  k_pushi 1
  k_pushiw $CACA
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C12B
S_ONNA_L_C0F8:
  k_call S_ONNA_F_B85A
  k_jumpf S_ONNA_L_C105
  k_pushi 0
  k_pushiw $CAF1
  k_jump S_ONNA_L_C120
S_ONNA_L_C105:
  k_pushi 0
  k_pushiw $CB16
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CB26
S_ONNA_L_C120:
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_ONNA_L_C12B:
  k_call RF_472D
S_ONNA_L_C12E:
  k_return
S_ONNA_F_C12F:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C14E
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C14E
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CB44
  k_callx RF_2FB9, 4
  k_call RF_472D
S_ONNA_L_C14E:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C1AE
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C1AE
  k_call S_ONNA_F_B844
  k_jumpt S_ONNA_L_C1AE
  k_ldla $EF52
  k_derefb
  k_ldri 3
  k_eq
  k_jumpf S_ONNA_L_C19C
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CB7C
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CBA3
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_pushl
  k_callx S_ONNA_F_B983, 2
  k_pushi 0
  k_pushiw $CBA5
  k_callx RF_2FB9, 4
  k_jump S_ONNA_L_C1A4
S_ONNA_L_C19C:
  k_ldlba $EF57
  k_pushl
  k_callx S_ONNA_F_B9D0, 2
S_ONNA_L_C1A4:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_ONNA_L_C1AE:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C1CE
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C1CE
  k_call S_ONNA_F_B844
  k_jumpf S_ONNA_L_C1CE
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CBAE
  k_callx RF_2FB9, 4
  k_call RF_472D
S_ONNA_L_C1CE:
  k_return
S_ONNA_F_C1CF:
  k_func 0
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C1E9
  k_call S_ONNA_F_B839
  k_jumpt S_ONNA_L_C1E9
  k_call RF_60B2
  k_call S_ONNA_F_B9C2
  k_call RF_472D
S_ONNA_L_C1E9:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C241
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C241
  k_call S_ONNA_F_B844
  k_jumpt S_ONNA_L_C241
  k_call RF_60B2
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF57
  k_popr
  k_ne
  k_jumpf S_ONNA_L_C236
  k_pushi 0
  k_pushiw $CBE5
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_shl1
  k_ldriw $1B24
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CC14
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_jump S_ONNA_L_C23E
S_ONNA_L_C236:
  k_pushi 1
  k_pushiw $CC16
  k_callx RF_2FB9, 4
S_ONNA_L_C23E:
  k_call RF_472D
S_ONNA_L_C241:
  k_call S_ONNA_F_B84F
  k_jumpf S_ONNA_L_C261
  k_call S_ONNA_F_B839
  k_jumpf S_ONNA_L_C261
  k_call S_ONNA_F_B844
  k_jumpf S_ONNA_L_C261
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CC4C
  k_callx RF_2FB9, 4
  k_call RF_472D
S_ONNA_L_C261:
  k_return
S_ONNA_F_C262:
  k_func 0
  k_ldlba $EF56
  k_switch 0, 5, S_ONNA_L_C27E
    .word S_ONNA_L_C27B, S_ONNA_L_C27F, S_ONNA_L_C285, S_ONNA_L_C28B, S_ONNA_L_C291
S_ONNA_L_C27B:
  k_call S_ONNA_F_BAF1
S_ONNA_L_C27E:
  k_return
S_ONNA_L_C27F:
  k_call S_ONNA_F_C1CF
  k_jump S_ONNA_L_C27E
S_ONNA_L_C285:
  k_call S_ONNA_F_C062
  k_jump S_ONNA_L_C27E
S_ONNA_L_C28B:
  k_call S_ONNA_F_C01B
  k_jump S_ONNA_L_C27E
S_ONNA_L_C291:
  k_call S_ONNA_F_C12F
  k_jump S_ONNA_L_C27E
S_ONNA_F_C297:
  k_func 12
  k_ldlba $EF69
  k_ldri 5
  k_mul
  k_ldriw $150D
  k_add
  k_pushl
  k_callx RL_884E, 2
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf S_ONNA_L_C2C4
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw $CDB1
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_ONNA_L_C2C4:
  k_ldl -2
  k_ldriw $E42E
  k_add
  k_derefb
  k_stl -4
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw $CDDB
  k_callx RF_2FB9, 4
  k_ldl -2
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CDE6
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldla $E56D
  k_ldri 10
  k_ult
  k_jumpf S_ONNA_L_C346
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $CE09
  k_callx RF_4B44, 2
  k_ldl -4
  k_ldrib 100
  k_ult
  k_jumpf S_ONNA_L_C319
  k_ldli 0
  k_return
S_ONNA_L_C319:
  k_pushi 2
  k_push -2
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $CE1E
  k_jump S_ONNA_L_C33F
S_ONNA_L_C328:
  k_push -4
  k_callx RF_3F3E, 2
  k_ldrib 80
  k_ugt
  k_jumpf S_ONNA_L_C34D
  k_pushi 2
  k_push -2
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $CE47
S_ONNA_L_C33F:
  k_callx RF_4B44, 2
  k_jump S_ONNA_L_C356
S_ONNA_L_C346:
  k_ldl -4
  k_ldrib 100
  k_uge
  k_jumpt S_ONNA_L_C328
S_ONNA_L_C34D:
  k_ldli 10
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
S_ONNA_L_C356:
  k_ldl -4
  k_ldrib 45
  k_udiv
  k_stl -6
  k_ldli 1
  k_stl -8
  k_ldl -6
  k_jumpf S_ONNA_L_C36E
  k_ldli 5
  k_ldr -6
  k_sub
  k_pushl
  k_ldli 1
  k_popr
  k_shl
  k_pushl
  k_callx RF_3F3E, 2
  k_stl -8
S_ONNA_L_C36E:
  k_pushi 2
  k_push -2
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_ldl -6
  k_shl1
  k_ldriw $CC7E
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldl -4
  k_ldriw $00C8
  k_ult
  k_jumpf S_ONNA_L_C3A8
  k_ldl -2
  k_ldriw $E42E
  k_add
  k_pushl
  k_pushiw $00C8
  k_pushi 5
  k_callx RF_3F3E, 2
  k_ldr -4
  k_add
  k_addli 10
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
S_ONNA_L_C3A8:
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf S_ONNA_L_C3BE
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpf S_ONNA_L_C3BE
  k_call S_ONNA_F_C262
  k_jump S_ONNA_L_C466
S_ONNA_L_C3BE:
  k_ldl -8
  k_jumpt S_ONNA_L_C466
S_ONNA_L_C3C2:
  k_pushib 20
  k_callx RF_3F3E, 2
  k_stl -10
  k_ldl -10
  k_inc
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpt S_ONNA_L_C3C2
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CE70
  k_callx RF_2FB9, 4
  k_ldl -10
  k_addlib 21
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -10
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_pushl
  k_ldl -10
  k_ldri 5
  k_udiv
  k_shl1
  k_popr
  k_add
  k_inc
  k_shl1
  k_ldriw $CC6C
  k_add
  k_deref
  k_pushl
  k_pushiw $CE79
  k_callx RF_3608, 4
  k_ldl -10
  k_ldrib 51
  k_mul
  k_ldriw $DF05
  k_add
  k_stl -12
  k_ldl -12
  k_addli 5
  k_derefb
  k_stl -10
  k_ldl -12
  k_addli 4
  k_derefb
  k_jumpt S_ONNA_L_C447
  k_ldl -10
  k_jumpf S_ONNA_L_C435
  k_ldl -10
  k_dec
  k_ldri 5
  k_umod
  k_ldri 3
  k_udiv
  k_pushl
  k_ldl -10
  k_dec
  k_ldri 5
  k_udiv
  k_shl1
  k_popr
  k_add
  k_inc
  k_jump S_ONNA_L_C436
S_ONNA_L_C435:
  k_ldli 0
S_ONNA_L_C436:
  k_shl1
  k_ldriw $CC6C
  k_add
  k_deref
  k_pushl
  k_pushiw $CE80
  k_callx RF_3608, 4
  k_jump S_ONNA_L_C45C
S_ONNA_L_C447:
  k_pushi 0
  k_pushiw $CE95
  k_callx RF_2FB9, 4
  k_ldl -10
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
S_ONNA_L_C45C:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_ONNA_L_C466:
  k_ldli 1
  k_return
  .byte $70, $C4, $72, $C4, $74, $C4, $76, $C4, $4E, $00, $53, $00, $45, $00, $57, $00
  .byte "%s %d"
  .byte $DF
  .byte " %s %d"
  .byte $DF, $00, $0A, $0A, $61, $74, $20, $00
  .byte " the"
  .byte $0A, $0A, $00
  .byte " from"
  .byte $0A, $0A, $00
  .byte "I hear the King of"
  .byte $0A
  .byte "Portugal wants to see"
  .byte $0A, $79, $6F, $75, $00, $0A
  .byte "So, you're looking"
  .byte $0A, $0A
  .byte "for "
  .byte $00, $3F, $00, $0A, $00
  .byte "He's on his way here"
  .byte $0A, $0A
  .byte "right now"
  .byte $00
  .byte "I hear he's bound"
  .byte $0A, $0A
  .byte "for "
  .byte $00
  .byte "He's on the lookout"
  .byte $0A, $0A
  .byte "for your ship"
  .byte $00
  .byte "He's hunting down"
  .byte $0A, $0A, $00
  .byte "He was last seen at"
  .byte $0A, $0A, $00, $8F, $C5, $9F, $C5, $AD, $C5, $B4, $C5, $BB, $C5, $C1, $C5, $00
  .byte $00, $00, $01, $02, $03, $03, $04, $04, $04, $04, $05, $17, $12, $09, $0D, $0E
  .byte $0C, $03, $00, $01, $02, $04, $11
  .byte "Northern Europe"
  .byte $00
  .byte "the New World"
  .byte $00
  .byte "Africa"
  .byte $00
  .byte "Arabia"
  .byte $00
  .byte "India"
  .byte $00
  .byte "the Orient"
  .byte $00
  .byte "That's sold at the"
  .byte $0A
  .byte "market here"
  .byte $00
  .byte "I hear they sell it in%s"
  .byte $00
  .byte "I might know where"
  .byte $0A
  .byte "you could find it"
  .byte $00
  .byte "The trader at the"
  .byte $0A
  .byte "marketplace here is"
  .byte $0A
  .byte "looking for you"
  .byte $00, $0A
  .byte "Someone's looking for"
  .byte $0A, $0A
  .byte "you in "
  .byte $00, $0A
  .byte "Are you looking for"
  .byte $0A, $0A
  .byte "a place to buy"
  .byte $0A, $0A, $00, $3F, $00
  .byte "Do your best to meet"
  .byte $0A
  .byte "the King's demands"
  .byte $0A
  .byte "quickly"
  .byte $00
  .byte "The trader at the"
  .byte $0A
  .byte "marketplace here is"
  .byte $0A
  .byte "looking for you"
  .byte $00, $0A
  .byte "You should take the"
  .byte $0A, $0A
  .byte "goods to "
  .byte $00, $0A, $0A
  .byte "right away"
  .byte $00
  .byte "The guild master is"
  .byte $0A
  .byte "looking for you"
  .byte $00, $0A
  .byte "Someone's looking for"
  .byte $0A, $0A
  .byte "you in "
  .byte $00, $0A
  .byte "Looking for points on"
  .byte $0A
  .byte "this map? If so, you"
  .byte $0A
  .byte "should ask one of the"
  .byte $0A
  .byte "sailors"
  .byte $00
  .byte "Are you in search of"
  .byte $0A
  .byte "the %s?"
  .byte $00, $0A, $00
  .byte " may know"
  .byte $0A, $0A
  .byte "something about that"
  .byte $00, $0A, $00
  .byte " has the"
  .byte $0A, $0A, $25, $73, $00, $0A
  .byte "I'll give you my map,"
  .byte $0A
  .byte "sweety. In return, youcan visit me again"
  .byte $0A
  .byte "sometime"
  .byte $00, $0A
  .byte "Sorry, but the person"
  .byte $0A, $0A
  .byte "you need to see is"
  .byte $0A, $0A, $00
  .byte "Are you the one who's"
  .byte $0A
  .byte "looking for me?"
  .byte $00, $0A, $00
  .byte " has the"
  .byte $0A, $0A, $25, $73, $00
  .byte "I'll sell you this mapfor %d gold. What do"
  .byte $0A
  .byte "you say, love"
  .byte $00
  .byte "I hope it serves you"
  .byte $0A
  .byte "well"
  .byte $00
  .byte "Too bad, pet"
  .byte $00
  .byte "You want my map? Hmm,"
  .byte $0A
  .byte "let me think it over"
  .byte $00, $0A
  .byte "Sorry, you'll have to"
  .byte $0A, $0A
  .byte "ask "
  .byte $00
  .byte " about"
  .byte $0A, $0A
  .byte "that"
  .byte $00, $0A, $00
  .byte "? She's in"
  .byte $0A, $0A, $00
  .byte "some port around"
  .byte $0A, $0A, $00, $0A
  .byte "As for your man"
  .byte $0A, $00, $0A, $00
  .byte ", he was"
  .byte $0A, $0A
  .byte "just here!"
  .byte $00
  .byte ", I think"
  .byte $0A
  .byte "he's "
  .byte $00
  .byte "at the port of"
  .byte $0A, $00
  .byte "somewhere around"
  .byte $0A, $00
  .byte "The King is expecting"
  .byte $0A, $79, $6F, $75, $00, $0A
  .byte "The guild master's"
  .byte $0A, $0A
  .byte "fuming that you're"
  .byte $0A, $0A
  .byte "late!"
  .byte $00, $0A
  .byte "Hurry up and sail"
  .byte $0A, $0A
  .byte "the treasure to"
  .byte $0A, $0A, $00
  .byte "The King's looking"
  .byte $0A
  .byte "for you, pet!"
  .byte $00
  .byte "The inn master's been"
  .byte $0A
  .byte "looking for you"
  .byte $00, $0A
  .byte "Someone's looking for"
  .byte $0A, $0A
  .byte "you in "
  .byte $00
  .byte "The King is expecting"
  .byte $0A
  .byte "a visit from you"
  .byte $00
  .byte "The inn master was"
  .byte $0A
  .byte "worried about you"
  .byte $00, $0A
  .byte "Hurry over to"
  .byte $0A, $00
  .byte " and"
  .byte $0A
  .byte "reassure the inn"
  .byte $0A
  .byte "master!"
  .byte $00
  .byte "Something serious has"
  .byte $0A
  .byte "happened at the palacein Portugal"
  .byte $00
  .byte "Are you planning to"
  .byte $0A
  .byte "save the princess?"
  .byte $00, $0A, $00
  .byte " has her"
  .byte $00
  .byte "We thought you were"
  .byte $0A
  .byte "dead! Go tell the Kingyou're safe!"
  .byte $00, $0A
  .byte "Won't you bring me"
  .byte $0A, $0A
  .byte "back a little gift"
  .byte $0A, $0A
  .byte "from "
  .byte $00, $3F, $00
  .byte "Please come visit me"
  .byte $0A
  .byte "on your way back from"
  .byte $0A
  .byte "the palace"
  .byte $00
  .byte "The King can't wait"
  .byte $0A
  .byte "any longer!"
  .byte $00, $88, $CC, $93, $CC, $A4, $CC, $B8, $CC, $CC, $CC, $DD, $CC, $F1, $CC, $02
  .byte $CD, $0F, $CD, $1C, $CD, $27, $CD, $37, $CD, $56, $CD, $7B, $CD
  .byte "your fleet"
  .byte $00
  .byte "Portuguese ships"
  .byte $00
  .byte "Portuguese warships"
  .byte $00
  .byte "Spanish trade ships"
  .byte $00
  .byte "Spanish warships"
  .byte $00
  .byte "Turkish trade ships"
  .byte $00
  .byte "Turkish warships"
  .byte $00
  .byte "pirate ships"
  .byte $00
  .byte "pirate ships"
  .byte $00
  .byte "Thank you!"
  .byte $00
  .byte "You're so kind!"
  .byte $00
  .byte "You won't forget me,"
  .byte $0A
  .byte "will you?"
  .byte $00
  .byte "Your adventures must"
  .byte $0A
  .byte "be so exciting!"
  .byte $00
  .byte "You'll stay with me"
  .byte $0A
  .byte "and never leave me,"
  .byte $0A
  .byte "right m'love?"
  .byte $00
  .byte "There's no sign of a"
  .byte $0A
  .byte "waitress at this inn"
  .byte $00, $0A
  .byte "I'm sure "
  .byte $00, $0A, $0A
  .byte "would appreciate 10"
  .byte $0A, $0A
  .byte "gold pieces"
  .byte $00
  .byte "You can't afford it!"
  .byte $00
  .byte "Oh, that's not"
  .byte $0A
  .byte "necessary. Thanks"
  .byte $0A
  .byte "anyway!"
  .byte $00
  .byte "Oh, that's not"
  .byte $0A
  .byte "necessary. Thanks"
  .byte $0A
  .byte "anyway!"
  .byte $00, $0A
  .byte "I hear "
  .byte $00, $27, $73, $0A, $25, $73, $0A, $00
  .byte "are in pursuit of"
  .byte $0A, $25, $73, $00
  .byte "are heading toward"
  .byte $0A, $00, $00
