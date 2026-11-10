; overlay s_sake, runs at $7E:B800
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp S_SAKE_F_B803
S_SAKE_F_B803:
  k_func 0
  k_call S_SAKE_F_C5CC
  k_stla $F9A8
  k_return
S_SAKE_F_B80F:
  k_func 14
  k_ldli 0
  k_stl -14
  k_ldli 0
  k_stl -8
  k_stl -6
  k_jump S_SAKE_L_B895
S_SAKE_L_B81C:
  k_ldl -8
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -2
  k_ldl -8
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stl -4
  k_ldl -4
  k_addli 11
  k_derefb
  k_addlib 50
  k_stl -10
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
  k_stl -12
  k_ldl -10
  k_long $25
  k_long $14
  k_ldl -12
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_long $27
  k_stl -12
  k_ldl -2
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_ldrarg 11
  k_eq
  k_jumpf S_SAKE_L_B888
  k_ldl -10
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
  k_stl -12
S_SAKE_L_B888:
  k_ldl -12
  k_ldr -14
  k_gt
  k_jumpf S_SAKE_L_B892
  k_ldl -12
  k_stl -14
  k_ldl -8
  k_stl -6
S_SAKE_L_B892:
  k_ldl -8
  k_inc
  k_stl -8
S_SAKE_L_B895:
  k_ldl -8
  k_ldrib 27
  k_ult
  k_jumpt S_SAKE_L_B81C
  k_ldl -6
  k_return
S_SAKE_F_B89E:
  k_func 19
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -17
  k_ldli 0
  k_stln -11
  k_ldli 0
  k_jump S_SAKE_L_B8F9
S_SAKE_L_B8B5:
  k_leal -9
  k_pushl
  k_ldln -13
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stl -2
  k_ldl -2
  k_inc
  k_stl -4
  k_ldl -2
  k_addli 6
  k_stln -19
  k_ldli 0
  k_stln -15
S_SAKE_L_B8D0:
  k_ldln -15
  k_shl1
  k_ldrn -19
  k_add
  k_deref
  k_jumpf S_SAKE_L_B8EA
  k_ldlarg 11
  k_ldrn -11
  k_add
  k_pushl
  k_ldl -4
  k_ldrn -15
  k_add
  k_derefb
  k_popstoreb
  k_ldln -11
  k_inc
  k_stln -11
S_SAKE_L_B8EA:
  k_ldln -15
  k_inc
  k_stln -15
  k_ldln -15
  k_ldri 5
  k_ult
  k_jumpt S_SAKE_L_B8D0
  k_ldln -13
  k_inc
S_SAKE_L_B8F9:
  k_stln -13
  k_ldln -13
  k_ldrn -17
  k_ult
  k_jumpt S_SAKE_L_B8B5
  k_ldln -11
  k_return
S_SAKE_F_B906:
  k_func 2
  k_pusharg 11
  k_callx RF_464C, 2
  k_stl -2
  k_pushi 1
  k_push -2
  k_pushib 21
  k_pushi 2
  k_callx RF_4E29, 8
  k_return
S_SAKE_F_B91B:
  k_func 6
  k_ldliw $150A
  k_stl -2
  k_ldli 0
  k_stl -4
S_SAKE_L_B926:
  k_ldl -2
  k_addli 3
  k_pushl
  k_callx RL_884E, 2
  k_stl -6
  k_ldl -6
  k_ldrarg 11
  k_eq
  k_jumpf S_SAKE_L_B936
  k_ldl -4
  k_return
S_SAKE_L_B936:
  k_ldl -2
  k_addli 5
  k_stl -2
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldrib 50
  k_ult
  k_jumpt S_SAKE_L_B926
  k_ldli 0
  k_return
S_SAKE_F_B945:
  k_func 0
  k_ldlba $EF61
  k_ldri 8
  k_and
  k_return
S_SAKE_F_B950:
  k_func 0
  k_ldlba $EF61
  k_ldri 2
  k_and
  k_return
S_SAKE_F_B95B:
  k_func 0
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_return
S_SAKE_F_B966:
  k_func 0
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_eq
  k_return
S_SAKE_F_B975:
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
  k_jumpf S_SAKE_L_B9C0
  k_ldl -8
  k_ldrarg 13
  k_eq
  k_jumpf S_SAKE_L_B9C0
  k_ldl -14
  k_ldr -12
  k_le
  k_jumpf S_SAKE_L_B9C0
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF54
  k_popr
  k_ne
  k_jumpf S_SAKE_L_B9C0
  k_ldli 1
  k_return
S_SAKE_L_B9C0:
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
S_SAKE_L_B9D4:
  k_push -2
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_stl -14
  k_ldl -14
  k_ldriw $00FF
  k_eq
  k_jumpt S_SAKE_L_BA08
  k_push -4
  k_callx RL_884E, 2
  k_stl -10
  k_ldl -10
  k_ldrarg 13
  k_eq
  k_jumpf S_SAKE_L_B9F9
  k_ldl -14
  k_ldr -12
  k_le
  k_jumpf S_SAKE_L_B9F9
  k_ldli 1
  k_return
S_SAKE_L_B9F9:
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
  k_jumpt S_SAKE_L_B9D4
S_SAKE_L_BA08:
  k_ldli 0
  k_return
S_SAKE_F_BA0A:
  k_func 0
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_SAKE_L_BA2D
  k_pushi 0
  k_pushiw S_SAKE_D_C680
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_C689
  k_jump S_SAKE_L_BA40
S_SAKE_L_BA2D:
  k_pushi 0
  k_pushiw S_SAKE_D_C698
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_C6B4
S_SAKE_L_BA40:
  k_callx RF_2FB9, 4
  k_return
S_SAKE_F_BA45:
  k_func 10
  k_ldlarg 13
  k_ldrib 18
  k_udiv
  k_stl -2
  k_ldl -2
  k_jumpf S_SAKE_L_BA5B
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_addlib -90
  k_jump S_SAKE_L_BA63
S_SAKE_L_BA5B:
  k_ldlarg 13
  k_ldri 5
  k_mul
  k_pushl
  k_ldlib 90
  k_popr
  k_sub
S_SAKE_L_BA63:
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
  k_jumpf S_SAKE_L_BA7B
  k_ldlib 72
  k_ldr -10
  k_sub
  k_jump S_SAKE_L_BA7C
S_SAKE_L_BA7B:
  k_ldl -10
S_SAKE_L_BA7C:
  k_ldri 5
  k_mul
  k_stl -8
  k_push -8
  k_ldl -4
  k_shl1
  k_ldriw S_SAKE_D_C6BB
  k_add
  k_deref
  k_pushl
  k_push -6
  k_ldl -2
  k_shl1
  k_ldriw S_SAKE_D_C6B7
  k_add
  k_deref
  k_pushl
  k_pushiw S_SAKE_D_C6C7
  k_callx RF_3608, 10
  k_return
S_SAKE_F_BA99:
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
  k_pushiw S_SAKE_D_C6D5
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
  k_callx S_SAKE_F_BA45, 4
  k_return
S_SAKE_F_BACA:
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
  k_jumpf S_SAKE_L_BAF0
  k_pushi 0
  k_pushiw S_SAKE_D_C6DA
  k_jump S_SAKE_L_BAF4
S_SAKE_L_BAF0:
  k_pushi 0
  k_pushiw S_SAKE_D_C6E0
S_SAKE_L_BAF4:
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
S_SAKE_F_BB09:
  k_func 8
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_C6E7
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
  k_pushi 0
  k_pushiw S_SAKE_D_C6E9
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
  k_jumpf S_SAKE_L_BBAB
  k_ldl -4
  k_addli 5
  k_derefb
  k_stl -2
  k_ldl -4
  k_addli 4
  k_derefb
  k_jumpf S_SAKE_L_BB90
  k_ldlba $EF69
  k_ldr -2
  k_eq
  k_jumpf S_SAKE_L_BB5F
  k_pushi 0
  k_pushiw S_SAKE_D_C6F2
S_SAKE_L_BB58:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_BBC6
S_SAKE_L_BB5F:
  k_ldl -2
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -6
  k_pushi 0
  k_pushiw S_SAKE_D_C70E
  k_callx RF_2FB9, 4
  k_push -6
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_C724
  k_callx RF_2FB9, 4
  k_ldl -6
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -6
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_jump S_SAKE_L_BBC1
S_SAKE_L_BB90:
  k_ldl -2
  k_jumpt S_SAKE_L_BB9B
  k_pushi 0
  k_pushiw S_SAKE_D_C729
  k_jump S_SAKE_L_BB58
S_SAKE_L_BB9B:
  k_pushi 0
  k_pushiw S_SAKE_D_C742
  k_callx RF_2FB9, 4
  k_push -2
  k_callx S_SAKE_F_BACA, 2
  k_jump S_SAKE_L_BBC6
S_SAKE_L_BBAB:
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E564
  k_add
  k_stl -8
  k_pushi 0
  k_pushiw S_SAKE_D_C74E
  k_callx RF_2FB9, 4
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldl -8
  k_derefb
S_SAKE_L_BBC1:
  k_pushl
  k_callx S_SAKE_F_BA45, 4
S_SAKE_L_BBC6:
  k_return
S_SAKE_F_BBC7:
  k_func 6
  k_pusharg 11
  k_ldlba $EF69
  k_pushl
  k_callx S_SAKE_F_B975, 4
  k_jumpf S_SAKE_L_BBF3
  k_ldlba $EF54
  k_pushl
  k_ldlba $EF69
  k_popr
  k_ne
  k_jumpf S_SAKE_L_BBF3
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_SAKE_D_C76B
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
S_SAKE_L_BBF3:
  k_ldli 0
  k_stl -2
S_SAKE_L_BBF5:
  k_ldlba $EF69
  k_pushl
  k_pushib 19
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_stl -4
  k_pushi 9
  k_push -4
  k_callx RL_8962, 4
  k_swap
  k_ldl -4
  k_sub
  k_stl -4
  k_ldl -4
  k_ldrib 50
  k_ugt
  k_jumpf S_SAKE_L_BC16
  k_ldlib 50
  k_stl -4
S_SAKE_L_BC16:
  k_ldlba $EF69
  k_ldr -4
  k_eq
  k_jumpt S_SAKE_L_BBF5
  k_pusharg 11
  k_push -4
  k_callx S_SAKE_F_B975, 4
  k_jumpf S_SAKE_L_BC4A
  k_ldlba $EF54
  k_ldr -4
  k_ne
  k_jumpf S_SAKE_L_BC4A
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_C792
  k_callx RF_2FB9, 4
  k_push -4
  k_callx S_SAKE_F_BA99, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_return
S_SAKE_L_BC4A:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 20
  k_ult
  k_jumpt S_SAKE_L_BBF5
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_SAKE_D_C7BC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_return
S_SAKE_F_BC63:
  k_func 2
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_BCB2
  k_call S_SAKE_F_B945
  k_jumpt S_SAKE_L_BCB2
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_ldlba $EF55
  k_jumpt S_SAKE_L_BC92
  k_pushi 0
  k_pushiw S_SAKE_D_C7DC
  k_jump S_SAKE_L_BC8B
S_SAKE_L_BC87:
  k_pushi 0
  k_pushiw S_SAKE_D_C803
S_SAKE_L_BC8B:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_BCA8
S_SAKE_L_BC92:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_BC87
  k_pushi 0
  k_pushiw S_SAKE_D_C82A
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_pushl
  k_callx S_SAKE_F_BA99, 2
S_SAKE_L_BCA8:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_BCB2:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_BD00
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_BD00
  k_ldlba $EF57
  k_pushl
  k_callx $B00F, 2
  k_jumpt S_SAKE_L_BD00
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_C847
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
  k_pushiw S_SAKE_D_C86E
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_ldlba $EF57
  k_pushl
  k_callx S_SAKE_F_BBC7, 2
S_SAKE_L_BD00:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_BD5C
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_BD5C
  k_ldlba $EF57
  k_pushl
  k_callx $B00F, 2
  k_jumpf S_SAKE_L_BD5C
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_ldlba $EF55
  k_jumpt S_SAKE_L_BD35
  k_pushi 0
  k_pushiw S_SAKE_D_C87A
  k_jump S_SAKE_L_BD2E
S_SAKE_L_BD2A:
  k_pushi 0
  k_pushiw S_SAKE_D_C896
S_SAKE_L_BD2E:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_BD52
S_SAKE_L_BD35:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_BD2A
  k_pushi 0
  k_pushiw S_SAKE_D_C8BE
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
S_SAKE_L_BD52:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_BD5C:
  k_return
S_SAKE_F_BD5D:
  k_func 24
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_BDAC
  k_call S_SAKE_F_B945
  k_jumpt S_SAKE_L_BDAC
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_ldlba $EF55
  k_jumpt S_SAKE_L_BD8C
  k_pushi 0
  k_pushiw S_SAKE_D_C92F
  k_jump S_SAKE_L_BD85
S_SAKE_L_BD81:
  k_pushi 0
  k_pushiw S_SAKE_D_C956
S_SAKE_L_BD85:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_BDA2
S_SAKE_L_BD8C:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_BD81
  k_pushi 0
  k_pushiw S_SAKE_D_C97E
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_pushl
  k_callx S_SAKE_F_BA99, 2
S_SAKE_L_BDA2:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_BDAC:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C125
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C125
  k_ldla $E571
  k_ldriw $8000
  k_and
  k_jumpt S_SAKE_L_C125
  k_ldla $EF52
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_SAKE_L_BE6A
  k_ldlba $EF5C
  k_jumpf S_SAKE_L_BDDC
  k_ldlba $EF5C
  k_pushl
  k_callx S_SAKE_F_BB09, 2
  k_jump S_SAKE_L_C11B
S_SAKE_L_BDDC:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_SAKE_D_C99B
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_ldliw $E564
  k_stl -22
  k_ldl -22
  k_derefb
  k_pushl
  k_ldlba $EF5D
  k_popr
  k_eq
  k_jumpf S_SAKE_L_BE13
  k_ldl -22
  k_inc
  k_derefb
  k_pushl
  k_ldlba $EF5E
  k_popr
  k_eq
  k_jumpf S_SAKE_L_BE13
  k_pushi 1
  k_pushiw S_SAKE_D_C9C4
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C122
S_SAKE_L_BE13:
  k_ldl -22
  k_derefb
  k_stl -12
  k_ldl -22
  k_inc
  k_derefb
  k_stl -14
  k_ldlba $EF5D
  k_stl -8
  k_ldlba $EF5E
  k_stl -10
  k_ldlib 31
  k_ldr -12
  k_sub
  k_stl -18
  k_ldl -18
  k_swap
  k_ldl -12
  k_add
  k_stl -12
  k_ldl -8
  k_ldr -18
  k_add
  k_stl -16
  k_ldl -16
  k_ldri 0
  k_lt
  k_jumpf S_SAKE_L_BE3C
  k_ldl -8
  k_ldr -18
  k_add
  k_addlib 71
  k_stl -16
S_SAKE_L_BE3C:
  k_ldl -16
  k_stl -8
  k_ldl -10
  k_ldr -14
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_pushl
  k_ldl -8
  k_ldr -12
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_inc
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_ldriw S_SAKE_D_C8E9
  k_add
  k_derefb
  k_shl1
  k_ldriw S_SAKE_D_C8D8
  k_add
  k_deref
  k_pushl
  k_pushiw S_SAKE_D_C9E8
  k_callx RF_3619, 4
  k_jump S_SAKE_L_C122
S_SAKE_L_BE6A:
  k_ldla $EF52
  k_derefb
  k_ldri 3
  k_eq
  k_jumpf S_SAKE_L_BECE
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CA08
  k_callx RF_2FB9, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CA21
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_derefb
  k_jumpf S_SAKE_L_BEB1
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_SAKE_L_BEBD
S_SAKE_L_BEB1:
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
S_SAKE_L_BEBD:
  k_stl -2
  k_push -2
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CA24
S_SAKE_L_BEC7:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C11B
S_SAKE_L_BECE:
  k_ldla $EF52
  k_derefb
  k_jumpf S_SAKE_L_BEF2
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx S_SAKE_F_B91B, 2
  k_stl -6
  k_ldla $EF52
  k_inc
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_SAKE_L_BF0B
S_SAKE_L_BEF2:
  k_ldla $EF52
  k_inc
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E971
  k_add
  k_derefb
  k_stl -6
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
S_SAKE_L_BF0B:
  k_stl -2
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CA43
  k_callx RF_2FB9, 4
  k_push -2
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CA5D
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_ldla $EF52
  k_derefb
  k_jumpf S_SAKE_L_BF4E
  k_ldlba $EF69
  k_ldr -6
  k_eq
  k_jumpf S_SAKE_L_BF47
  k_pushi 0
  k_pushiw S_SAKE_D_CA63
  k_jump S_SAKE_L_BEC7
S_SAKE_L_BF47:
  k_pushi 0
  k_pushiw S_SAKE_D_CAA8
  k_jump S_SAKE_L_C112
S_SAKE_L_BF4E:
  k_ldlba $EF69
  k_ldr -6
  k_eq
  k_jumpf S_SAKE_L_C10E
  k_pushiw S_SAKE_D_CAD4
  k_callx RF_4B44, 2
  k_pushi 0
  k_ldla $EF52
  k_inc
  k_derefb
  k_pushl
  k_callx RF_60CE, 4
  k_ldla $EF52
  k_inc
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_derefb
  k_jumpf S_SAKE_L_C033
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_SAKE_D_CAFC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_SAKE_L_BFDD
  k_ldlba $EF5C
  k_jumpf S_SAKE_L_BFC6
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CB33
  k_callx RF_2FB9, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CB39
  k_callx RF_2FB9, 4
  k_ldlba $EF5C
  k_pushl
  k_callx S_SAKE_F_BACA, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CB45
S_SAKE_L_BFBF:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C014
S_SAKE_L_BFC6:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CB61
S_SAKE_L_BFCD:
  k_callx RF_2FB9, 4
  k_ldli 4
  k_swap
  k_ldlba $EF61
  k_or
  k_stlba $EF61
  k_jump S_SAKE_L_C014
S_SAKE_L_BFDD:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CBAB
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_jumpf S_SAKE_L_C002
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_SAKE_L_C00E
S_SAKE_L_C002:
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
S_SAKE_L_C00E:
  k_stl -4
  k_push -4
  k_callx RF_40DE, 2
S_SAKE_L_C014:
  k_pushiw $00FD
  k_ldla $EF52
  k_inc
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_ldli 2
  k_swap
  k_ldla $EF52
  k_add
  k_stla $EF52
  k_jump S_SAKE_L_C11B
S_SAKE_L_C033:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_SAKE_D_CBDC
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_ldri 9
  k_eq
  k_jumpf S_SAKE_L_C0D0
  k_ldlba $EF5C
  k_jumpf S_SAKE_L_C07E
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CC08
  k_callx RF_2FB9, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CC0E
  k_callx RF_2FB9, 4
  k_ldlba $EF5C
  k_pushl
  k_callx S_SAKE_F_BACA, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CC1A
  k_jump S_SAKE_L_BFBF
S_SAKE_L_C07E:
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf S_SAKE_L_C0C6
  k_pushi 5
  k_callx RF_3F3E, 2
  k_inc
  k_ldrib 100
  k_mul
  k_pushl
  k_pusha $E56D
  k_callx RL_8962, 4
  k_stl -20
  k_call RF_60B2
  k_push -20
  k_pushiw S_SAKE_D_CC36
  k_callx RF_3619, 4
  k_call RF_3CFF
  k_jumpf S_SAKE_L_C0BC
  k_call RF_60B2
  k_ldl -20
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_pushi 0
  k_pushiw S_SAKE_D_CC68
  k_jump S_SAKE_L_BFCD
S_SAKE_L_C0BC:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CC8D
  k_jump S_SAKE_L_BEC7
S_SAKE_L_C0C6:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CCA5
  k_jump S_SAKE_L_BEC7
S_SAKE_L_C0D0:
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CCF0
  k_callx RF_2FB9, 4
  k_ldla $EF52
  k_addli 2
  k_derefb
  k_jumpf S_SAKE_L_C0F5
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_shl1
  k_ldriw $000C
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_jump S_SAKE_L_C101
S_SAKE_L_C0F5:
  k_ldla $EF52
  k_addli 3
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E444
  k_add
  k_deref
S_SAKE_L_C101:
  k_stl -4
  k_push -4
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CD0D
  k_jump S_SAKE_L_BFBF
S_SAKE_L_C10E:
  k_pushi 0
  k_pushiw S_SAKE_D_CD1A
S_SAKE_L_C112:
  k_callx RF_2FB9, 4
  k_push -6
  k_callx S_SAKE_F_BA99, 2
S_SAKE_L_C11B:
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_SAKE_L_C122:
  k_call RF_472D
S_SAKE_L_C125:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C184
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C184
  k_ldla $E571
  k_ldriw $8000
  k_and
  k_jumpf S_SAKE_L_C184
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_ldlba $EF55
  k_jumpt S_SAKE_L_C14E
  k_pushi 0
  k_pushiw S_SAKE_D_CD41
  k_jump S_SAKE_L_C176
S_SAKE_L_C14E:
  k_call S_SAKE_F_B966
  k_jumpf S_SAKE_L_C15B
  k_pushi 0
  k_pushiw S_SAKE_D_CD5D
  k_jump S_SAKE_L_C176
S_SAKE_L_C15B:
  k_pushi 0
  k_pushiw S_SAKE_D_CD7F
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CD94
S_SAKE_L_C176:
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C184:
  k_return
S_SAKE_F_C185:
  k_func 0
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C1D4
  k_call S_SAKE_F_B945
  k_jumpt S_SAKE_L_C1D4
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_ldlba $EF55
  k_jumpt S_SAKE_L_C1B4
  k_pushi 0
  k_pushiw S_SAKE_D_CDA7
  k_jump S_SAKE_L_C1AD
S_SAKE_L_C1A9:
  k_pushi 0
  k_pushiw S_SAKE_D_CDC3
S_SAKE_L_C1AD:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C1CA
S_SAKE_L_C1B4:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_C1A9
  k_pushi 0
  k_pushiw S_SAKE_D_CDE5
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_pushl
  k_callx S_SAKE_F_BA99, 2
S_SAKE_L_C1CA:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C1D4:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C1F8
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C1F8
  k_call S_SAKE_F_B950
  k_jumpt S_SAKE_L_C1F8
  k_ldlba $EF57
  k_pushl
  k_callx S_SAKE_F_BB09, 2
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C1F8:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C253
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C253
  k_call S_SAKE_F_B950
  k_jumpf S_SAKE_L_C253
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_ldlba $EF55
  k_jumpt S_SAKE_L_C21D
  k_pushi 0
  k_pushiw S_SAKE_D_CE02
  k_jump S_SAKE_L_C245
S_SAKE_L_C21D:
  k_call S_SAKE_F_B966
  k_jumpf S_SAKE_L_C22A
  k_pushi 0
  k_pushiw S_SAKE_D_CE1C
  k_jump S_SAKE_L_C245
S_SAKE_L_C22A:
  k_pushi 0
  k_pushiw S_SAKE_D_CE3E
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CE51
S_SAKE_L_C245:
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C253:
  k_return
S_SAKE_F_C254:
  k_func 0
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C27D
  k_call S_SAKE_F_B945
  k_jumpt S_SAKE_L_C27D
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_pushi 0
  k_pushiw S_SAKE_D_CE67
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C27D:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C2DD
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C2DD
  k_call S_SAKE_F_B950
  k_jumpt S_SAKE_L_C2DD
  k_ldla $EF52
  k_derefb
  k_ldri 3
  k_eq
  k_jumpf S_SAKE_L_C2CB
  k_ldla $EF52
  k_inc
  k_stla $EF52
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_SAKE_D_CE8F
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CEC9
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_pushl
  k_callx S_SAKE_F_BACA, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CEE3
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C2D3
S_SAKE_L_C2CB:
  k_ldlba $EF57
  k_pushl
  k_callx S_SAKE_F_BB09, 2
S_SAKE_L_C2D3:
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C2DD:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C307
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C307
  k_call S_SAKE_F_B950
  k_jumpf S_SAKE_L_C307
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_pushi 0
  k_pushiw S_SAKE_D_CEF3
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C307:
  k_return
S_SAKE_F_C308:
  k_func 0
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C331
  k_call S_SAKE_F_B945
  k_jumpt S_SAKE_L_C331
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_pushi 0
  k_pushiw S_SAKE_D_CF0F
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C331:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C38C
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C38C
  k_call S_SAKE_F_B950
  k_jumpt S_SAKE_L_C38C
  k_call RF_60B2
  k_ldlba $EF69
  k_pushl
  k_ldlba $EF57
  k_popr
  k_ne
  k_jumpf S_SAKE_L_C37E
  k_pushi 0
  k_pushiw S_SAKE_D_CF37
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
  k_pushiw S_SAKE_D_CF53
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_jump S_SAKE_L_C389
S_SAKE_L_C37E:
  k_call RF_60B2
  k_pushi 1
  k_pushiw S_SAKE_D_CF71
  k_callx RF_2FB9, 4
S_SAKE_L_C389:
  k_call RF_472D
S_SAKE_L_C38C:
  k_call S_SAKE_F_B95B
  k_jumpf S_SAKE_L_C3B6
  k_call S_SAKE_F_B945
  k_jumpf S_SAKE_L_C3B6
  k_call S_SAKE_F_B950
  k_jumpf S_SAKE_L_C3B6
  k_call RF_60B2
  k_call S_SAKE_F_BA0A
  k_pushi 0
  k_pushiw S_SAKE_D_CF99
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
S_SAKE_L_C3B6:
  k_return
S_SAKE_F_C3B7:
  k_func 0
  k_pushi 3
  k_callx RF_3F3E, 2
  k_pushl
  k_callx S_SAKE_F_B906, 2
  k_ldlba $EF56
  k_switch 0, 5, S_SAKE_L_C3DD
    .word S_SAKE_L_C3DA, S_SAKE_L_C3DE, S_SAKE_L_C3E4, S_SAKE_L_C3EA, S_SAKE_L_C3F0
S_SAKE_L_C3DA:
  k_call S_SAKE_F_BC63
S_SAKE_L_C3DD:
  k_return
S_SAKE_L_C3DE:
  k_call S_SAKE_F_C308
  k_jump S_SAKE_L_C3DD
S_SAKE_L_C3E4:
  k_call S_SAKE_F_C185
  k_jump S_SAKE_L_C3DD
S_SAKE_L_C3EA:
  k_call S_SAKE_F_BD5D
  k_jump S_SAKE_L_C3DD
S_SAKE_L_C3F0:
  k_call S_SAKE_F_C254
  k_jump S_SAKE_L_C3DD
S_SAKE_F_C3F6:
  k_func 39
  k_pushi 10
  k_callx RF_3F3E, 2
  k_jumpt S_SAKE_L_C47C
  k_pushi 3
  k_callx RF_3F3E, 2
  k_pushl
  k_callx S_SAKE_F_B906, 2
  k_leal -27
  k_pushl
  k_callx S_SAKE_F_B89E, 2
  k_stln -35
  k_ldln -35
  k_jumpf S_SAKE_L_C42C
  k_leal -27
  k_pushl
  k_pushn -35
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_derefb
  k_jump S_SAKE_L_C432
S_SAKE_L_C42C:
  k_pushib 26
  k_callx RF_3F3E, 2
S_SAKE_L_C432:
  k_stln -29
  k_pushn -29
  k_callx S_SAKE_F_B80F, 2
  k_stln -31
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -37
  k_call RF_60B2
  k_pushi 0
  k_pushiw S_SAKE_D_CFC0
  k_callx RF_2FB9, 4
  k_pushn -31
  k_callx S_SAKE_F_BA99, 2
  k_pushi 0
  k_pushiw S_SAKE_D_CFC9
  k_callx RF_2FB9, 4
  k_ldln -29
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
  k_return
S_SAKE_L_C47C:
  k_pushi 6
  k_callx RF_3F3E, 2
  k_jumpf S_SAKE_L_C578
  k_pushi 3
  k_callx RF_3F3E, 2
  k_pushl
  k_callx S_SAKE_F_B906, 2
S_SAKE_L_C48E:
  k_ldlba $EF69
  k_pushl
  k_pushi 5
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_addlib -2
  k_stln -31
  k_ldlba $EF69
  k_ldrn -31
  k_eq
  k_jumpt S_SAKE_L_C4B5
  k_ldln -31
  k_ldri 0
  k_uge
  k_jumpf S_SAKE_L_C48E
  k_ldln -31
  k_ldrib 50
  k_ult
  k_jumpf S_SAKE_L_C48E
S_SAKE_L_C4B5:
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -2
  k_call RF_60B2
  k_ldln -31
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stln -39
  k_ldln -31
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpf S_SAKE_L_C535
  k_ldln -39
  k_inc
  k_pushl
  k_callx RL_884E, 2
  k_stln -33
  k_pushi 0
  k_pushiw S_SAKE_D_CFE8
  k_callx RF_2FB9, 4
  k_push -2
  k_callx RF_40DE, 2
  k_ldln -33
  k_ldriw $00FF
  k_eq
  k_jumpf S_SAKE_L_C503
  k_pushi 0
  k_pushiw S_SAKE_D_CFFD
S_SAKE_L_C4FC:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C5AF
S_SAKE_L_C503:
  k_ldln -31
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_pushl
  k_ldln -39
  k_addli 2
  k_pushl
  k_callx RL_884E, 2
  k_ldrib 50
  k_mul
  k_popr
  k_le
  k_jumpf S_SAKE_L_C52E
  k_pushi 0
  k_pushiw S_SAKE_D_D021
  k_callx RF_2FB9, 4
  k_ldln -33
  k_shl1
  k_ldriw $1B49
  k_jump S_SAKE_L_C5A4
S_SAKE_L_C52E:
  k_pushi 0
  k_pushiw S_SAKE_D_D03A
  k_jump S_SAKE_L_C4FC
S_SAKE_L_C535:
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -37
  k_pushi 0
  k_pushiw S_SAKE_D_D069
  k_callx RF_2FB9, 4
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw S_SAKE_D_D084
  k_callx RF_2FB9, 4
  k_ldln -37
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldln -37
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx S_SAKE_F_BA45, 4
  k_jump S_SAKE_L_C5AF
S_SAKE_L_C578:
  k_pushi 3
  k_callx S_SAKE_F_B906, 2
  k_ldlba $EECD
  k_stln -29
  k_call RF_60B2
  k_ldln -29
  k_switch 0, 4, S_SAKE_L_C5C5
    .word S_SAKE_L_C596, S_SAKE_L_C596, S_SAKE_L_C596, S_SAKE_L_C5BA
S_SAKE_L_C596:
  k_pushi 0
  k_pushiw S_SAKE_D_D08A
  k_callx RF_2FB9, 4
  k_ldln -29
  k_shl1
  k_ldriw $1B24
S_SAKE_L_C5A4:
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
S_SAKE_L_C5AF:
  k_ldla $F18A
  k_dec
  k_stla $F18A
S_SAKE_L_C5B6:
  k_call RF_472D
  k_return
S_SAKE_L_C5BA:
  k_pushi 1
  k_pushiw S_SAKE_D_D0C1
S_SAKE_L_C5BE:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C5B6
S_SAKE_L_C5C5:
  k_pushi 1
  k_pushiw S_SAKE_D_D0F0
  k_jump S_SAKE_L_C5BE
S_SAKE_F_C5CC:
  k_func 4
  k_ldla $E56D
  k_ldrib 100
  k_ult
  k_jumpf S_SAKE_L_C5E9
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw S_SAKE_D_D11C
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_SAKE_L_C5E9:
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw S_SAKE_D_D13A
  k_callx RF_4B44, 2
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_deref
  k_stl -4
  k_ldl -4
  k_ldriw $012C
  k_sdiv
  k_inc
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_addlib 50
  k_ldri 10
  k_sdiv
  k_popr
  k_mul
  k_stl -2
  k_pushi 1
  k_pushi 7
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_push -2
  k_pushiw S_SAKE_D_D165
  k_callx RF_3619, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_ldl -2
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_call RF_60EE
  k_ldl -4
  k_addliw $012C
  k_pushl
  k_pushiw $03E8
  k_callx RF_3F3E, 2
  k_popr
  k_ugt
  k_jumpf S_SAKE_L_C65B
  k_call RF_60B2
  k_pushiw S_SAKE_D_D1A1
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
S_SAKE_L_C65B:
  k_call RF_60B2
  k_pushiw S_SAKE_D_D1C9
  k_callx RF_4B44, 2
  k_ldlba $EF61
  k_ldri 1
  k_and
  k_jumpf S_SAKE_L_C67B
  k_pushi 4
  k_callx RF_3F3E, 2
  k_jumpf S_SAKE_L_C67B
  k_call S_SAKE_F_C3B7
  k_jump S_SAKE_L_C67E
S_SAKE_L_C67B:
  k_call S_SAKE_F_C3F6
S_SAKE_L_C67E:
  k_ldli 1
  k_return
S_SAKE_D_C680:
  .byte $0A, "You're ", $00
S_SAKE_D_C689:
  .byte ",", $0A, "aren't you?", $0A, $00
S_SAKE_D_C698:
  .byte $0A, "Are you the one they", $0A, "call ", $00
S_SAKE_D_C6B4:
  .byte "?", $0A, $00
S_SAKE_D_C6B7:
  .byte $BF, $C6, $C1, $C6
S_SAKE_D_C6BB:
  .byte $C3, $C6, $C5, $C6, $4E, $00, $53, $00, $45, $00, $57, $00
S_SAKE_D_C6C7:
  .byte "%s %d"
  .byte $DF
  .byte " %s %d"
  .byte $DF, $00
S_SAKE_D_C6D5:
  .byte $0A, "at ", $00
S_SAKE_D_C6DA:
  .byte $0A, "the ", $00
S_SAKE_D_C6E0:
  .byte $0A, "from ", $00
S_SAKE_D_C6E7:
  .byte $0A, $00
S_SAKE_D_C6E9:
  .byte "?  He's", $0A, $00
S_SAKE_D_C6F2:
  .byte $0A, "on his way here,", $0A, $0A, "m'thinks", $00
S_SAKE_D_C70E:
  .byte "probably sailing", $0A, "for ", $00
S_SAKE_D_C724:
  .byte $0A, "at ", $00
S_SAKE_D_C729:
  .byte $0A, "seeking out your", $0A, $0A, "ship!", $00
S_SAKE_D_C742:
  .byte "out to get", $0A, $00
S_SAKE_D_C74E:
  .byte $0A, "been prowling around", $0A, $0A, "near ", $00
S_SAKE_D_C76B:
  .byte "That's the specialty", $0A, "of this here port", $00
S_SAKE_D_C792:
  .byte $0A, "If that's the case,", $0A, "it can be bought", $0A, "in ", $00
S_SAKE_D_C7BC:
  .byte "You won't find that", $0A, "around here", $00
S_SAKE_D_C7DC:
  .byte "The King of Portugal", $0A, "is looking for ye", $00
S_SAKE_D_C803:
  .byte "The head trader here", $0A, "is looking for ye", $00
S_SAKE_D_C82A:
  .byte "Someone's looking for", $0A, "ye in ", $00
S_SAKE_D_C847:
  .byte $0A, "You want to know", $0A, $0A, "where you can buy", $0A, $0A, $00
S_SAKE_D_C86E:
  .byte ", don't ye?", $00
S_SAKE_D_C87A:
  .byte "The King is waiting", $0A, "for you", $00
S_SAKE_D_C896:
  .byte "The head trader here", $0A, "is waiting for you", $00
S_SAKE_D_C8BE:
  .byte "Be careful on yer way", $0A, "to ", $00
S_SAKE_D_C8D8:
  .word S_SAKE_D_C8F1, S_SAKE_D_C8F7, S_SAKE_D_C901, S_SAKE_D_C906, S_SAKE_D_C910, S_SAKE_D_C916, S_SAKE_D_C920, S_SAKE_D_C925
  .byte $07
S_SAKE_D_C8E9:
  .byte $06, $05, $00, $FF, $04, $01, $02
  .byte $03
S_SAKE_D_C8F1:
  .byte "north", $00
S_SAKE_D_C8F7:
  .byte "northeast", $00
S_SAKE_D_C901:
  .byte "east", $00
S_SAKE_D_C906:
  .byte "southeast", $00
S_SAKE_D_C910:
  .byte "south", $00
S_SAKE_D_C916:
  .byte "southwest", $00
S_SAKE_D_C920:
  .byte "west", $00
S_SAKE_D_C925:
  .byte "northwest", $00
S_SAKE_D_C92F:
  .byte "The King of Portugal", $0A, "is looking for ye", $00
S_SAKE_D_C956:
  .byte "The guild master here", $0A, "is looking for ye", $00
S_SAKE_D_C97E:
  .byte "Someone's looking for", $0A, "ye in ", $00
S_SAKE_D_C99B:
  .byte "Are ye searching for", $0A, "a place on yer map?", $00
S_SAKE_D_C9C4:
  .byte "That looks like a map", $0A, "of this area!", $00
S_SAKE_D_C9E8:
  .byte "My guess is it's more", $0A, "to the %s", $00
S_SAKE_D_CA08:
  .byte $0A, "You're looking for", $0A, "the ", $00
S_SAKE_D_CA21:
  .byte "?", $0A, $00
S_SAKE_D_CA24:
  .byte " may know", $0A, "something about that", $00
S_SAKE_D_CA43:
  .byte $0A, "So, ye want to talk", $0A, $0A, "to ", $00
S_SAKE_D_CA5D:
  .byte ", eh?", $00
S_SAKE_D_CA63:
  .byte $0A, "Well, she's right", $0A, "over there. Hurry up", $0A, "with yer business,", $0A
  .byte "won't ye?", $00
S_SAKE_D_CAA8:
  .byte $0A, "In that case, you'd", $0A, "better get yerself", $0A, "to ", $00
S_SAKE_D_CAD4:
  .byte "He's out back. I'll", $0A, "call him out for ye", $00
S_SAKE_D_CAFC:
  .byte "It's been a long", $0A, "time, Cap'n. What do", $0A, "you need me for?", $00
S_SAKE_D_CB33:
  .byte $0A, "The ", $00
S_SAKE_D_CB39:
  .byte "?", $0A, "They say ", $00
S_SAKE_D_CB45:
  .byte " has it", $0A, "on one of his ships", $00
S_SAKE_D_CB61:
  .byte $0A, "You're looking for", $0A, "this map? If that's", $0A, "what you need I'll", $0A
  .byte "give it to you", $00
S_SAKE_D_CBAB:
  .byte $0A, "Sorry, but the person", $0A, $0A, "you need to talk to", $0A, $0A, "is ", $00
S_SAKE_D_CBDC:
  .byte "So you're the rat", $0A, "who's looking for", $0A, "me, eh?", $00
S_SAKE_D_CC08:
  .byte $0A, "The ", $00
S_SAKE_D_CC0E:
  .byte "?", $0A, "They say ", $00
S_SAKE_D_CC1A:
  .byte " has it", $0A, "on one of his ships", $00
S_SAKE_D_CC36:
  .byte "I'll sell ye this map", $0A, "for %d gold. Will ye", $0A, "buy it", $00
S_SAKE_D_CC68:
  .byte $0A, "You're sure to find", $0A, $0A, "it. Good luck!", $00
S_SAKE_D_CC8D:
  .byte $0A, "Ye confounded", $0A, $0A, "rascal!", $00
S_SAKE_D_CCA5:
  .byte $0A, "Ye need a map? Ye", $0A, "won't get one so", $0A, "easily from me. Come", $0A
  .byte "back another time", $00
S_SAKE_D_CCF0:
  .byte $0A, "Sorry, you'll have to", $0A, $0A, "ask ", $00
S_SAKE_D_CD0D:
  .byte " about", $0A, $0A, "that", $00
S_SAKE_D_CD1A:
  .byte $0A, "He's been hanging", $0A, "around the port", $0A, "of ", $00
S_SAKE_D_CD41:
  .byte "The King is waiting", $0A, "for you", $00
S_SAKE_D_CD5D:
  .byte "The guild master is", $0A, "expecting you", $00
S_SAKE_D_CD7F:
  .byte "The guild master in", $0A, $00
S_SAKE_D_CD94:
  .byte " is", $0A, "looking for ye", $00
S_SAKE_D_CDA7:
  .byte "The King is looking", $0A, "for you", $00
S_SAKE_D_CDC3:
  .byte "The inn master is", $0A, "looking for you", $00
S_SAKE_D_CDE5:
  .byte "Someone's looking for", $0A, "ye in ", $00
S_SAKE_D_CE02:
  .byte "The King is expecting", $0A, "you", $00
S_SAKE_D_CE1C:
  .byte "The inn master is", $0A, "waiting for you", $00
S_SAKE_D_CE3E:
  .byte "The inn master in", $0A, $00
S_SAKE_D_CE51:
  .byte " is", $0A, "worried about you", $00
S_SAKE_D_CE67:
  .byte "The King of Portugal", $0A, "is looking for you", $00
S_SAKE_D_CE8F:
  .byte "Are you the brave soulwho's going to rescue", $0A, "the princess?", $00
S_SAKE_D_CEC9:
  .byte $0A, "Well, rumor has it", $0A, "that ", $00
S_SAKE_D_CEE3:
  .byte " stole", $0A, "her away", $00
S_SAKE_D_CEF3:
  .byte "The King is waiting", $0A, "for you", $00
S_SAKE_D_CF0F:
  .byte "The King of Portugal", $0A, "is looking for you", $00
S_SAKE_D_CF37:
  .byte $0A, "I hear you're heading", $0A, "for ", $00
S_SAKE_D_CF53:
  .byte ".", $0A, "Steady on matey, be", $0A, "careful", $00
S_SAKE_D_CF71:
  .byte "Hmm, so you're going", $0A, "to the palace, eh?", $00
S_SAKE_D_CF99:
  .byte "The King of Portugal", $0A, "is waiting for ye", $00
S_SAKE_D_CFC0:
  .byte $0A, "I hear ", $00
S_SAKE_D_CFC9:
  .byte " will", $0A, "pay ye a fine price", $0A, "for ", $00
S_SAKE_D_CFE8:
  .byte $0A, "The marketplace in", $0A, $00
S_SAKE_D_CFFD:
  .byte " doesn't", $0A, "have anything worth", $0A, "buying", $00
S_SAKE_D_D021:
  .byte " is a", $0A, "good place to buy", $0A, $00
S_SAKE_D_D03A:
  .byte " is in a", $0A, "miserable way. Be sureto invest there", $00
S_SAKE_D_D069:
  .byte $0A, "You'll find the port", $0A, $0A, "of ", $00
S_SAKE_D_D084:
  .byte " at", $0A, $0A, $00
S_SAKE_D_D08A:
  .byte $0A, "I've got news for ye.", $0A, $0A, "We're out to get", $0A, $0A, "anyone from ", $00
S_SAKE_D_D0C1:
  .byte "Let me warn ye. Yer", $0A, "not well liked around", $0A, "here", $00
S_SAKE_D_D0F0:
  .byte "Ha ha ha! We don't", $0A, "keep ties with any", $0A, "port!", $00
S_SAKE_D_D11C:
  .byte "We can't afford to", $0A, "stay here!", $00
S_SAKE_D_D13A:
  .byte "Let's stay a while", $0A, "and find out what's", $0A, "new", $00
S_SAKE_D_D165:
  .byte "You'll have to order", $0A, "something. That'll be", $0A, "%d gold pieces", $1B, "W"
  .byte $00
S_SAKE_D_D1A1:
  .byte "There doesn't seem to", $0A, "be much happening", $00
S_SAKE_D_D1C9:
  .byte "Say, that fellow's", $0A, "trying to tell us", $0A, "something", $00
