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
  k_pushiw $C680
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C689
  k_jump S_SAKE_L_BA40
S_SAKE_L_BA2D:
  k_pushi 0
  k_pushiw $C698
  k_callx RF_2FB9, 4
  k_pusha $E444
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C6B4
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
  k_ldriw $C6BB
  k_add
  k_deref
  k_pushl
  k_push -6
  k_ldl -2
  k_shl1
  k_ldriw $C6B7
  k_add
  k_deref
  k_pushl
  k_pushiw $C6C7
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
  k_pushiw $C6D5
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
  k_pushiw $C6DA
  k_jump S_SAKE_L_BAF4
S_SAKE_L_BAF0:
  k_pushi 0
  k_pushiw $C6E0
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
  k_pushiw $C6E7
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
  k_pushiw $C6E9
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
  k_pushiw $C6F2
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
  k_pushiw $C70E
  k_callx RF_2FB9, 4
  k_push -6
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $C724
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
  k_pushiw $C729
  k_jump S_SAKE_L_BB58
S_SAKE_L_BB9B:
  k_pushi 0
  k_pushiw $C742
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
  k_pushiw $C74E
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
  k_pushiw $C76B
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
  k_pushiw $C792
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
  k_pushiw $C7BC
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
  k_pushiw $C7DC
  k_jump S_SAKE_L_BC8B
S_SAKE_L_BC87:
  k_pushi 0
  k_pushiw $C803
S_SAKE_L_BC8B:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_BCA8
S_SAKE_L_BC92:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_BC87
  k_pushi 0
  k_pushiw $C82A
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
  k_pushiw $C847
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
  k_pushiw $C86E
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
  k_pushiw $C87A
  k_jump S_SAKE_L_BD2E
S_SAKE_L_BD2A:
  k_pushi 0
  k_pushiw $C896
S_SAKE_L_BD2E:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_BD52
S_SAKE_L_BD35:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_BD2A
  k_pushi 0
  k_pushiw $C8BE
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
  k_pushiw $C92F
  k_jump S_SAKE_L_BD85
S_SAKE_L_BD81:
  k_pushi 0
  k_pushiw $C956
S_SAKE_L_BD85:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_BDA2
S_SAKE_L_BD8C:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_BD81
  k_pushi 0
  k_pushiw $C97E
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
  k_pushiw $C99B
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
  k_pushiw $C9C4
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
  k_ldriw $C8E9
  k_add
  k_derefb
  k_shl1
  k_ldriw $C8D8
  k_add
  k_deref
  k_pushl
  k_pushiw $C9E8
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
  k_pushiw $CA08
  k_callx RF_2FB9, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CA21
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
  k_pushiw $CA24
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
  k_pushiw $CA43
  k_callx RF_2FB9, 4
  k_push -2
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CA5D
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
  k_pushiw $CA63
  k_jump S_SAKE_L_BEC7
S_SAKE_L_BF47:
  k_pushi 0
  k_pushiw $CAA8
  k_jump S_SAKE_L_C112
S_SAKE_L_BF4E:
  k_ldlba $EF69
  k_ldr -6
  k_eq
  k_jumpf S_SAKE_L_C10E
  k_pushiw $CAD4
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
  k_pushiw $CAFC
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
  k_pushiw $CB33
  k_callx RF_2FB9, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CB39
  k_callx RF_2FB9, 4
  k_ldlba $EF5C
  k_pushl
  k_callx S_SAKE_F_BACA, 2
  k_pushi 0
  k_pushiw $CB45
S_SAKE_L_BFBF:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C014
S_SAKE_L_BFC6:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CB61
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
  k_pushiw $CBAB
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
  k_pushiw $CBDC
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
  k_pushiw $CC08
  k_callx RF_2FB9, 4
  k_pushib 31
  k_callx RF_40C3, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CC0E
  k_callx RF_2FB9, 4
  k_ldlba $EF5C
  k_pushl
  k_callx S_SAKE_F_BACA, 2
  k_pushi 0
  k_pushiw $CC1A
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
  k_pushiw $CC36
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
  k_pushiw $CC68
  k_jump S_SAKE_L_BFCD
S_SAKE_L_C0BC:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CC8D
  k_jump S_SAKE_L_BEC7
S_SAKE_L_C0C6:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CCA5
  k_jump S_SAKE_L_BEC7
S_SAKE_L_C0D0:
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CCF0
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
  k_pushiw $CD0D
  k_jump S_SAKE_L_BFBF
S_SAKE_L_C10E:
  k_pushi 0
  k_pushiw $CD1A
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
  k_pushiw $CD41
  k_jump S_SAKE_L_C176
S_SAKE_L_C14E:
  k_call S_SAKE_F_B966
  k_jumpf S_SAKE_L_C15B
  k_pushi 0
  k_pushiw $CD5D
  k_jump S_SAKE_L_C176
S_SAKE_L_C15B:
  k_pushi 0
  k_pushiw $CD7F
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CD94
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
  k_pushiw $CDA7
  k_jump S_SAKE_L_C1AD
S_SAKE_L_C1A9:
  k_pushi 0
  k_pushiw $CDC3
S_SAKE_L_C1AD:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C1CA
S_SAKE_L_C1B4:
  k_call S_SAKE_F_B966
  k_jumpt S_SAKE_L_C1A9
  k_pushi 0
  k_pushiw $CDE5
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
  k_pushiw $CE02
  k_jump S_SAKE_L_C245
S_SAKE_L_C21D:
  k_call S_SAKE_F_B966
  k_jumpf S_SAKE_L_C22A
  k_pushi 0
  k_pushiw $CE1C
  k_jump S_SAKE_L_C245
S_SAKE_L_C22A:
  k_pushi 0
  k_pushiw $CE3E
  k_callx RF_2FB9, 4
  k_ldlba $EF54
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $CE51
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
  k_pushiw $CE67
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
  k_pushiw $CE8F
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 0
  k_pushiw $CEC9
  k_callx RF_2FB9, 4
  k_ldlba $EF57
  k_pushl
  k_callx S_SAKE_F_BACA, 2
  k_pushi 0
  k_pushiw $CEE3
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
  k_pushiw $CEF3
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
  k_pushiw $CF0F
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
  k_pushiw $CF37
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
  k_pushiw $CF53
  k_callx RF_2FB9, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_jump S_SAKE_L_C389
S_SAKE_L_C37E:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $CF71
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
  k_pushiw $CF99
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
  k_pushiw $CFC0
  k_callx RF_2FB9, 4
  k_pushn -31
  k_callx S_SAKE_F_BA99, 2
  k_pushi 0
  k_pushiw $CFC9
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
  k_pushiw $CFE8
  k_callx RF_2FB9, 4
  k_push -2
  k_callx RF_40DE, 2
  k_ldln -33
  k_ldriw $00FF
  k_eq
  k_jumpf S_SAKE_L_C503
  k_pushi 0
  k_pushiw $CFFD
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
  k_pushiw $D021
  k_callx RF_2FB9, 4
  k_ldln -33
  k_shl1
  k_ldriw $1B49
  k_jump S_SAKE_L_C5A4
S_SAKE_L_C52E:
  k_pushi 0
  k_pushiw $D03A
  k_jump S_SAKE_L_C4FC
S_SAKE_L_C535:
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stln -37
  k_pushi 0
  k_pushiw $D069
  k_callx RF_2FB9, 4
  k_ldln -31
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw $D084
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
  k_pushiw $D08A
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
  k_pushiw $D0C1
S_SAKE_L_C5BE:
  k_callx RF_2FB9, 4
  k_jump S_SAKE_L_C5B6
S_SAKE_L_C5C5:
  k_pushi 1
  k_pushiw $D0F0
  k_jump S_SAKE_L_C5BE
S_SAKE_F_C5CC:
  k_func 4
  k_ldla $E56D
  k_ldrib 100
  k_ult
  k_jumpf S_SAKE_L_C5E9
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $D11C
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
S_SAKE_L_C5E9:
  k_pushi 0
  k_pushi 0
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $D13A
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
  k_pushiw $D165
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
  k_pushiw $D1A1
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
S_SAKE_L_C65B:
  k_call RF_60B2
  k_pushiw $D1C9
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
  .byte $0A
  .byte "You're "
  .byte $00, $2C, $0A
  .byte "aren't you?"
  .byte $0A, $00, $0A
  .byte "Are you the one they"
  .byte $0A
  .byte "call "
  .byte $00, $3F, $0A, $00, $BF, $C6, $C1, $C6, $C3, $C6, $C5, $C6, $4E, $00, $53, $00
  .byte $45, $00, $57, $00
  .byte "%s %d"
  .byte $DF
  .byte " %s %d"
  .byte $DF, $00, $0A, $61, $74, $20, $00, $0A
  .byte "the "
  .byte $00, $0A
  .byte "from "
  .byte $00, $0A, $00
  .byte "?  He's"
  .byte $0A, $00, $0A
  .byte "on his way here,"
  .byte $0A, $0A
  .byte "m'thinks"
  .byte $00
  .byte "probably sailing"
  .byte $0A
  .byte "for "
  .byte $00, $0A, $61, $74, $20, $00, $0A
  .byte "seeking out your"
  .byte $0A, $0A
  .byte "ship!"
  .byte $00
  .byte "out to get"
  .byte $0A, $00, $0A
  .byte "been prowling around"
  .byte $0A, $0A
  .byte "near "
  .byte $00
  .byte "That's the specialty"
  .byte $0A
  .byte "of this here port"
  .byte $00, $0A
  .byte "If that's the case,"
  .byte $0A
  .byte "it can be bought"
  .byte $0A, $69, $6E, $20, $00
  .byte "You won't find that"
  .byte $0A
  .byte "around here"
  .byte $00
  .byte "The King of Portugal"
  .byte $0A
  .byte "is looking for ye"
  .byte $00
  .byte "The head trader here"
  .byte $0A
  .byte "is looking for ye"
  .byte $00
  .byte "Someone's looking for"
  .byte $0A
  .byte "ye in "
  .byte $00, $0A
  .byte "You want to know"
  .byte $0A, $0A
  .byte "where you can buy"
  .byte $0A, $0A, $00
  .byte ", don't ye?"
  .byte $00
  .byte "The King is waiting"
  .byte $0A
  .byte "for you"
  .byte $00
  .byte "The head trader here"
  .byte $0A
  .byte "is waiting for you"
  .byte $00
  .byte "Be careful on yer way"
  .byte $0A, $74, $6F, $20, $00, $F1, $C8, $F7, $C8, $01, $C9, $06, $C9, $10, $C9, $16
  .byte $C9, $20, $C9, $25, $C9, $07, $06, $05, $00, $FF, $04, $01, $02, $03
  .byte "north"
  .byte $00
  .byte "northeast"
  .byte $00
  .byte "east"
  .byte $00
  .byte "southeast"
  .byte $00
  .byte "south"
  .byte $00
  .byte "southwest"
  .byte $00
  .byte "west"
  .byte $00
  .byte "northwest"
  .byte $00
  .byte "The King of Portugal"
  .byte $0A
  .byte "is looking for ye"
  .byte $00
  .byte "The guild master here"
  .byte $0A
  .byte "is looking for ye"
  .byte $00
  .byte "Someone's looking for"
  .byte $0A
  .byte "ye in "
  .byte $00
  .byte "Are ye searching for"
  .byte $0A
  .byte "a place on yer map?"
  .byte $00
  .byte "That looks like a map"
  .byte $0A
  .byte "of this area!"
  .byte $00
  .byte "My guess is it's more"
  .byte $0A
  .byte "to the %s"
  .byte $00, $0A
  .byte "You're looking for"
  .byte $0A
  .byte "the "
  .byte $00, $3F, $0A, $00
  .byte " may know"
  .byte $0A
  .byte "something about that"
  .byte $00, $0A
  .byte "So, ye want to talk"
  .byte $0A, $0A, $74, $6F, $20, $00
  .byte ", eh?"
  .byte $00, $0A
  .byte "Well, she's right"
  .byte $0A
  .byte "over there. Hurry up"
  .byte $0A
  .byte "with yer business,"
  .byte $0A
  .byte "won't ye?"
  .byte $00, $0A
  .byte "In that case, you'd"
  .byte $0A
  .byte "better get yerself"
  .byte $0A, $74, $6F, $20, $00
  .byte "He's out back. I'll"
  .byte $0A
  .byte "call him out for ye"
  .byte $00
  .byte "It's been a long"
  .byte $0A
  .byte "time, Cap'n. What do"
  .byte $0A
  .byte "you need me for?"
  .byte $00, $0A
  .byte "The "
  .byte $00, $3F, $0A
  .byte "They say "
  .byte $00
  .byte " has it"
  .byte $0A
  .byte "on one of his ships"
  .byte $00, $0A
  .byte "You're looking for"
  .byte $0A
  .byte "this map? If that's"
  .byte $0A
  .byte "what you need I'll"
  .byte $0A
  .byte "give it to you"
  .byte $00, $0A
  .byte "Sorry, but the person"
  .byte $0A, $0A
  .byte "you need to talk to"
  .byte $0A, $0A, $69, $73, $20, $00
  .byte "So you're the rat"
  .byte $0A
  .byte "who's looking for"
  .byte $0A
  .byte "me, eh?"
  .byte $00, $0A
  .byte "The "
  .byte $00, $3F, $0A
  .byte "They say "
  .byte $00
  .byte " has it"
  .byte $0A
  .byte "on one of his ships"
  .byte $00
  .byte "I'll sell ye this map"
  .byte $0A
  .byte "for %d gold. Will ye"
  .byte $0A
  .byte "buy it"
  .byte $00, $0A
  .byte "You're sure to find"
  .byte $0A, $0A
  .byte "it. Good luck!"
  .byte $00, $0A
  .byte "Ye confounded"
  .byte $0A, $0A
  .byte "rascal!"
  .byte $00, $0A
  .byte "Ye need a map? Ye"
  .byte $0A
  .byte "won't get one so"
  .byte $0A
  .byte "easily from me. Come"
  .byte $0A
  .byte "back another time"
  .byte $00, $0A
  .byte "Sorry, you'll have to"
  .byte $0A, $0A
  .byte "ask "
  .byte $00
  .byte " about"
  .byte $0A, $0A
  .byte "that"
  .byte $00, $0A
  .byte "He's been hanging"
  .byte $0A
  .byte "around the port"
  .byte $0A, $6F, $66, $20, $00
  .byte "The King is waiting"
  .byte $0A
  .byte "for you"
  .byte $00
  .byte "The guild master is"
  .byte $0A
  .byte "expecting you"
  .byte $00
  .byte "The guild master in"
  .byte $0A, $00, $20, $69, $73, $0A
  .byte "looking for ye"
  .byte $00
  .byte "The King is looking"
  .byte $0A
  .byte "for you"
  .byte $00
  .byte "The inn master is"
  .byte $0A
  .byte "looking for you"
  .byte $00
  .byte "Someone's looking for"
  .byte $0A
  .byte "ye in "
  .byte $00
  .byte "The King is expecting"
  .byte $0A, $79, $6F, $75, $00
  .byte "The inn master is"
  .byte $0A
  .byte "waiting for you"
  .byte $00
  .byte "The inn master in"
  .byte $0A, $00, $20, $69, $73, $0A
  .byte "worried about you"
  .byte $00
  .byte "The King of Portugal"
  .byte $0A
  .byte "is looking for you"
  .byte $00
  .byte "Are you the brave soulwho's going to rescue"
  .byte $0A
  .byte "the princess?"
  .byte $00, $0A
  .byte "Well, rumor has it"
  .byte $0A
  .byte "that "
  .byte $00
  .byte " stole"
  .byte $0A
  .byte "her away"
  .byte $00
  .byte "The King is waiting"
  .byte $0A
  .byte "for you"
  .byte $00
  .byte "The King of Portugal"
  .byte $0A
  .byte "is looking for you"
  .byte $00, $0A
  .byte "I hear you're heading"
  .byte $0A
  .byte "for "
  .byte $00, $2E, $0A
  .byte "Steady on matey, be"
  .byte $0A
  .byte "careful"
  .byte $00
  .byte "Hmm, so you're going"
  .byte $0A
  .byte "to the palace, eh?"
  .byte $00
  .byte "The King of Portugal"
  .byte $0A
  .byte "is waiting for ye"
  .byte $00, $0A
  .byte "I hear "
  .byte $00
  .byte " will"
  .byte $0A
  .byte "pay ye a fine price"
  .byte $0A
  .byte "for "
  .byte $00, $0A
  .byte "The marketplace in"
  .byte $0A, $00
  .byte " doesn't"
  .byte $0A
  .byte "have anything worth"
  .byte $0A
  .byte "buying"
  .byte $00
  .byte " is a"
  .byte $0A
  .byte "good place to buy"
  .byte $0A, $00
  .byte " is in a"
  .byte $0A
  .byte "miserable way. Be sureto invest there"
  .byte $00, $0A
  .byte "You'll find the port"
  .byte $0A, $0A, $6F, $66, $20, $00, $20, $61, $74, $0A, $0A, $00, $0A
  .byte "I've got news for ye."
  .byte $0A, $0A
  .byte "We're out to get"
  .byte $0A, $0A
  .byte "anyone from "
  .byte $00
  .byte "Let me warn ye. Yer"
  .byte $0A
  .byte "not well liked around"
  .byte $0A
  .byte "here"
  .byte $00
  .byte "Ha ha ha! We don't"
  .byte $0A
  .byte "keep ties with any"
  .byte $0A
  .byte "port!"
  .byte $00
  .byte "We can't afford to"
  .byte $0A
  .byte "stay here!"
  .byte $00
  .byte "Let's stay a while"
  .byte $0A
  .byte "and find out what's"
  .byte $0A, $6E, $65, $77, $00
  .byte "You'll have to order"
  .byte $0A
  .byte "something. That'll be"
  .byte $0A
  .byte "%d gold pieces"
  .byte $1B, $57, $00
  .byte "There doesn't seem to"
  .byte $0A
  .byte "be much happening"
  .byte $00
  .byte "Say, that fellow's"
  .byte $0A
  .byte "trying to tell us"
  .byte $0A
  .byte "something"
  .byte $00
