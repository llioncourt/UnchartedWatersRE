; overlay z_tyuuko, runs at $7E:D000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp Z_TYUUKO_F_D003
Z_TYUUKO_F_D003:
  k_func 0
  k_call Z_TYUUKO_F_D72B
  k_stla $F99A
  k_return
Z_TYUUKO_F_D00F:
  k_func 0
  k_return
Z_TYUUKO_F_D015:
  k_func 6
  k_call Z_TYUUKO_F_D00F
  k_ldlarg 11
  k_ldri 3
  k_umod
  k_ldri 9
  k_mul
  k_addli 3
  k_stl -2
  k_ldlarg 11
  k_ldri 3
  k_udiv
  k_ldri 7
  k_mul
  k_addli 7
  k_stl -4
  k_ldlarg 11
  k_addli 5
  k_pushl
  k_callx RF_40A5, 2
  k_stl -6
  k_pusharg 11
  k_ldlarg 11
  k_addli 5
  k_pushl
  k_push -4
  k_push -2
  k_callx RF_2380, 8
  k_ldl -4
  k_addli 5
  k_pushl
  k_push -2
  k_callx RF_2F8F, 4
  k_push -6
  k_callx RF_40DE, 2
  k_return
Z_TYUUKO_F_D04B:
  k_func 2
  k_ldlib -1
  k_stla $EF66
  k_call $9662
  k_ldli 0
  k_jump Z_TYUUKO_L_D063
Z_TYUUKO_L_D05C:
  k_push -2
  k_callx Z_TYUUKO_F_D015, 2
  k_ldl -2
  k_inc
Z_TYUUKO_L_D063:
  k_stl -2
  k_ldlarg 11
  k_inc
  k_pushl
  k_ldl -2
  k_popr
  k_ult
  k_jumpt Z_TYUUKO_L_D05C
  k_return
Z_TYUUKO_F_D06E:
  k_func 4
  k_pusharg 11
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
  k_stl -2
  k_pusharg 11
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_ldri 10
  k_mul
  k_stl -4
  k_ldl -2
  k_ldr -4
  k_add
  k_addlib 20
  k_return
Z_TYUUKO_F_D09D:
  k_func 0
  k_ldlbf 11
  k_pushl
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
  k_ldlbf 11
  k_pushl
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
  k_ldlbf 11
  k_pushl
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
  k_return
Z_TYUUKO_F_D0F9:
  k_func 2
  k_ldlbf 11
  k_pushl
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
  k_ldlbf 11
  k_pushl
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
  k_ldlbf 11
  k_pushl
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
  k_ldri 2
  k_shr
  k_stl -2
  k_ldl -2
  k_ldrib 100
  k_gt
  k_jumpf Z_TYUUKO_L_D157
  k_ldlib 100
  k_jump Z_TYUUKO_L_D158
Z_TYUUKO_L_D157:
  k_ldl -2
Z_TYUUKO_L_D158:
  k_return
Z_TYUUKO_F_D159:
  k_func 3
  k_ldlbf 11
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stlbf -3
  k_ldlbf -3
  k_ldri 5
  k_udiv
  k_ldrib 50
  k_mul
  k_pushl
  k_ldlbf -3
  k_pushl
  k_ldlbf -3
  k_ldri 1
  k_and
  k_popr
  k_mul
  k_ldrib 50
  k_mul
  k_pushl
  k_ldlbf -3
  k_addli 2
  k_ldri 2
  k_sdiv
  k_ldriw $012C
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_addliw $FF38
  k_stl -2
  k_ldl -2
  k_return
Z_TYUUKO_F_D1A0:
  k_func 0
  k_ldlbf 11
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_return
Z_TYUUKO_F_D1B5:
  k_func 0
  k_ldlbf 11
  k_pushl
  k_callx RF_40A5, 2
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_return
Z_TYUUKO_F_D1C9:
  k_func 0
  k_ldlbf 11
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_return
Z_TYUUKO_F_D1DE:
  k_func 0
  k_call $9662
  k_call $B015
  k_pushi 0
  k_ldlbf 11
  k_pushl
  k_pushi 7
  k_pushi 3
  k_callx RF_2380, 8
  k_pushi 8
  k_pushi 11
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_addlib -5
  k_shl1
  k_ldriw Z_TYUUKO_D_D740
  k_add
  k_deref
  k_pushl
  k_pushiw Z_TYUUKO_D_D778
  k_callx RF_3608, 4
  k_pushi 14
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D1B5, 2
  k_pushl
  k_pushiw Z_TYUUKO_D_D77B
  k_callx RF_3608, 4
  k_pushib 16
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D159, 2
  k_pushl
  k_pushiw Z_TYUUKO_D_D785
  k_callx RF_3608, 4
  k_pushi 12
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D1A0, 2
  k_pushl
  k_pushiw Z_TYUUKO_D_D794
  k_callx RF_3608, 4
  k_pushi 12
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D0F9, 2
  k_pushl
  k_pushiw Z_TYUUKO_D_D79E
  k_callx RF_3608, 4
  k_pushi 14
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D09D, 2
  k_pushl
  k_pushiw Z_TYUUKO_D_D7AE
  k_callx RF_3608, 4
  k_pushi 10
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D06E, 2
  k_pushl
  k_pushiw Z_TYUUKO_D_D7BE
  k_callx RF_3608, 4
  k_pushib 16
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D1C9, 2
  k_pushl
  k_pushiw Z_TYUUKO_D_D7CE
  k_callx RF_3608, 4
  k_pushib 18
  k_pushib 19
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw Z_TYUUKO_D_D7D8
  k_callx RF_2FB9, 4
  k_pusha $E56D
  k_pushiw Z_TYUUKO_D_D7DE
  k_callx RF_3608, 4
  k_return
Z_TYUUKO_F_D2C4:
  k_func 21
  k_ldli 0
  k_stl -2
Z_TYUUKO_L_D2CB:
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stln -17
  k_ldln -17
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf Z_TYUUKO_L_D2E7
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt Z_TYUUKO_L_D2CB
Z_TYUUKO_L_D2E7:
  k_ldl -2
  k_stlbf -3
  k_pushi 5
  k_callx RF_3F3E, 2
  k_addli 5
  k_stlbf -15
  k_pushn -17
  k_ldlbf -15
  k_pushl
  k_ldlbf 13
  k_pushl
  k_callx Z_TYUUKO_F_D06E, 2
  k_popr
  k_sub
  k_popstoreb
  k_ldln -17
  k_inc
  k_pushl
  k_ldlbf -15
  k_pushl
  k_ldlbf 13
  k_pushl
  k_callx Z_TYUUKO_F_D09D, 2
  k_popr
  k_sub
  k_popstoreb
  k_ldln -17
  k_addli 2
  k_pushl
  k_ldlbf -15
  k_pushl
  k_ldlbf 13
  k_pushl
  k_callx Z_TYUUKO_F_D0F9, 2
  k_popr
  k_sub
  k_popstoreb
  k_ldln -17
  k_addli 3
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldln -17
  k_addli 4
  k_pushl
  k_ldli 0
  k_popstore
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stlbf -4
  k_ldli 0
  k_stl -2
Z_TYUUKO_L_D345:
  k_leal -14
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_pushl
  k_ldl -2
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt Z_TYUUKO_L_D345
  k_ldli 0
  k_jump Z_TYUUKO_L_D37A
Z_TYUUKO_L_D35C:
  k_leal -14
  k_pushl
  k_leal -9
  k_pushl
  k_ldl -2
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
  k_popr
  k_add
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -2
  k_inc
Z_TYUUKO_L_D37A:
  k_stl -2
  k_ldlbf -4
  k_pushl
  k_ldl -2
  k_popr
  k_ult
  k_jumpt Z_TYUUKO_L_D35C
  k_ldli 0
  k_stl -2
Z_TYUUKO_L_D387:
  k_leal -14
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf Z_TYUUKO_L_D3A4
  k_leal -14
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_stlbf -4
  k_jump Z_TYUUKO_L_D3AD
Z_TYUUKO_L_D3A4:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt Z_TYUUKO_L_D387
Z_TYUUKO_L_D3AD:
  k_ldln -17
  k_addli 6
  k_pushl
  k_ldli 0
  k_popstoreb
  k_pushib 64
  k_ldln -17
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_pushiw $00F0
  k_ldln -17
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_pushbf -4
  k_ldln -17
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldlbf -4
  k_pushl
  k_callx RF_40A5, 2
  k_stln -19
  k_ldlbf 13
  k_pushl
  k_callx RF_40A5, 2
  k_stln -21
  k_ldln -19
  k_addli 15
  k_pushl
  k_ldln -21
  k_addli 15
  k_pushl
  k_callx RL_8898, 2
  k_popstore
  k_ldln -19
  k_addlib 17
  k_pushl
  k_ldln -21
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldln -19
  k_addlib 18
  k_pushl
  k_ldln -21
  k_addlib 18
  k_pushl
  k_callx RL_8898, 2
  k_popstore
  k_ldln -19
  k_addlib 20
  k_pushl
  k_ldln -21
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_pushib 24
  k_pushi 0
  k_ldlbf -3
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldlarg 11
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw Z_TYUUKO_D_D7E2
  k_callx RF_4B44, 2
  k_pushi 3
  k_callx RF_3D5C, 2
  k_pushi 1
  k_callx RF_3D5C, 2
Z_TYUUKO_L_D45A:
  k_pushib 25
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw Z_TYUUKO_D_D808
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw Z_TYUUKO_D_D81F
  k_callx RF_2FB9, 4
Z_TYUUKO_L_D471:
  k_pushi 1
  k_pushn -19
  k_pushi 7
  k_callx RF_6557, 6
  k_jumpf Z_TYUUKO_L_D471
  k_pushib 25
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw Z_TYUUKO_D_D823
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf Z_TYUUKO_L_D49C
  k_pushib 30
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump Z_TYUUKO_L_D4A8
Z_TYUUKO_L_D49C:
  k_pushib 30
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 1
  k_jumpt Z_TYUUKO_L_D45A
Z_TYUUKO_L_D4A8:
  k_pushi 3
  k_callx RF_3D5C, 2
  k_ldlbf -3
  k_addli 5
  k_return
Z_TYUUKO_F_D4B2:
  k_func 17
  k_ldli 0
  k_stlbf -1
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_6080
  k_pushi 1
  k_callx RF_609A, 2
  k_pushi 0
  k_pushiw Z_TYUUKO_D_D9B7
  k_callx RF_2FB9, 4
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlbf 11
  k_shl1
  k_ldriw Z_TYUUKO_D_D833
  k_add
  k_deref
  k_pushl
  k_pushiw Z_TYUUKO_D_D9BB
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw Z_TYUUKO_D_D9C4
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf Z_TYUUKO_L_D5C7
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_callx Z_TYUUKO_F_D1DE, 2
  k_pusharg 13
  k_ldli 1
  k_popstore
  k_call RF_6080
  k_call RF_60B2
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stln -9
  k_ldln -9
  k_ldri 7
  k_mul
  k_ldri 2
  k_sdiv
  k_inc
  k_pushl
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 3
  k_and
  k_addli 2
  k_popr
  k_mul
  k_ldri 2
  k_sdiv
  k_ldriw $02BC
  k_mul
  k_stln -3
  k_ldln -9
  k_ldri 2
  k_sdiv
  k_ldri 6
  k_mul
  k_inc
  k_pushl
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_inc
  k_popr
  k_mul
  k_ldriw $012C
  k_mul
  k_stln -5
  k_ldln -3
  k_ldrn -5
  k_add
  k_ldrib 100
  k_sdiv
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_addlib 40
  k_popr
  k_mul
  k_stln -7
  k_pushn -7
  k_pushiw Z_TYUUKO_D_D9D9
  k_callx RF_3619, 4
  k_ldla $E56D
  k_stln -15
  k_call RF_3CFF
  k_jumpf Z_TYUUKO_L_D5E3
  k_ldln -15
  k_ldrn -7
  k_ult
  k_jumpf Z_TYUUKO_L_D5D3
  k_call RF_60EE
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw Z_TYUUKO_D_DA0B
  k_callx RF_4B44, 2
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
Z_TYUUKO_L_D5C7:
  k_call RF_60B2
  k_pushiw Z_TYUUKO_D_DA4F
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
Z_TYUUKO_L_D5D3:
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_pushn -7
  k_callx Z_TYUUKO_F_D2C4, 4
  k_stln -17
  k_ldln -17
  k_return
Z_TYUUKO_L_D5E3:
  k_ldlba $EE76
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt Z_TYUUKO_L_D5C7
  k_call RF_60B2
  k_pushn -15
  k_pushn -7
  k_callx RL_8962, 4
  k_stln -13
  k_pushi 1
  k_pushn -13
  k_pushi 1
  k_pushiw Z_TYUUKO_D_DA1E
  k_callx RF_3C4E, 8
  k_stln -11
  k_ldln -11
  k_ldriw $0E0A
  k_eq
  k_jumpf Z_TYUUKO_L_D619
  k_ldli 1
  k_stlbf -1
  k_ldli 0
  k_stln -7
Z_TYUUKO_L_D619:
  k_ldln -11
  k_ldrib -1
  k_ne
  k_jumpf Z_TYUUKO_L_D5C7
  k_ldln -7
  k_ldri 10
  k_sdiv
  k_pushl
  k_callx RF_3F3E, 2
  k_pushl
  k_ldln -7
  k_ldri 2
  k_sdiv
  k_pushl
  k_ldln -7
  k_ldrib 20
  k_sdiv
  k_pushl
  k_ldlba $EE76
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_popr
  k_mul
  k_popr
  k_add
  k_popr
  k_sub
  k_stln -7
  k_ldln -11
  k_ldrn -7
  k_ult
  k_jumpf Z_TYUUKO_L_D659
  k_call RF_60B2
  k_pushiw Z_TYUUKO_D_DA3A
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
Z_TYUUKO_L_D659:
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_pushn -11
  k_callx Z_TYUUKO_F_D2C4, 4
  k_stln -17
  k_ldlbf -1
  k_jumpf Z_TYUUKO_L_D672
  k_ldliw $EA60
  k_stla $E56D
Z_TYUUKO_L_D672:
  k_ldln -17
  k_return
Z_TYUUKO_F_D675:
  k_func 6
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B8
  k_add
  k_deref
  k_addlib -100
  k_ldriw $00A0
  k_sdiv
  k_stlbf -2
  k_ldlbf -2
  k_ldri 5
  k_ult
  k_jumpf Z_TYUUKO_L_D6B7
  k_pushib 20
  k_callx RF_3F3E, 2
  k_jumpt Z_TYUUKO_L_D6B7
  k_pushi 1
  k_callx RF_609A, 2
  k_pushiw Z_TYUUKO_D_DA6C
  k_callx RF_4B44, 2
  k_ldlbf -2
  k_inc
  k_stlbf -2
Z_TYUUKO_L_D6B7:
  k_ldli 1
  k_stl -6
  k_ldli 0
  k_stl -4
  k_call $B027
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
Z_TYUUKO_L_D6C4:
  k_ldl -6
  k_jumpf Z_TYUUKO_L_D6D5
  k_call $B015
  k_ldlbf -2
  k_pushl
  k_callx Z_TYUUKO_F_D04B, 2
  k_ldli 0
  k_stl -6
Z_TYUUKO_L_D6D5:
  k_call RF_60B2
  k_pushi 1
  k_pushiw Z_TYUUKO_D_DA9B
  k_callx RF_2FB9, 4
  k_ldlbf -2
  k_inc
  k_pushl
  k_callx $968B, 2
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_ne
  k_jumpf Z_TYUUKO_L_D706
  k_leal -6
  k_pushl
  k_ldlbf -1
  k_pushl
  k_callx Z_TYUUKO_F_D4B2, 4
  k_stl -4
  k_jump Z_TYUUKO_L_D71B
Z_TYUUKO_L_D706:
  k_pushi 2
  k_callx RF_609A, 2
  k_call RF_60B2
  k_pushiw Z_TYUUKO_D_DAB3
  k_callx RF_4B44, 2
  k_call $9662
  k_call $B015
Z_TYUUKO_L_D71B:
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpt Z_TYUUKO_L_D729
  k_ldl -4
  k_jumpf Z_TYUUKO_L_D6C4
Z_TYUUKO_L_D729:
  k_ldl -4
  k_return
Z_TYUUKO_F_D72B:
  k_func 2
  k_call Z_TYUUKO_F_D675
  k_stl -2
  k_ldl -2
  k_ldri 1
  k_eq
  k_jumpf Z_TYUUKO_L_D73D
  k_call $9675
Z_TYUUKO_L_D73D:
  k_ldl -2
  k_return
  .byte $00
Z_TYUUKO_D_D740:
  .word Z_TYUUKO_D_D74C, Z_TYUUKO_D_D752, Z_TYUUKO_D_D75A, Z_TYUUKO_D_D764, Z_TYUUKO_D_D768, Z_TYUUKO_D_D770
Z_TYUUKO_D_D74C:
  .byte "Latin", $00
Z_TYUUKO_D_D752:
  .byte "Redonda", $00
Z_TYUUKO_D_D75A:
  .byte "Bergantin", $00
Z_TYUUKO_D_D764:
  .byte "Nao", $00
Z_TYUUKO_D_D768:
  .byte "Carrack", $00
Z_TYUUKO_D_D770:
  .byte "Galleon", $00
Z_TYUUKO_D_D778:
  .byte "%s", $00
Z_TYUUKO_D_D77B:
  .byte "Crew: %3d", $00
Z_TYUUKO_D_D785:
  .byte "Capacity:  %4d", $00
Z_TYUUKO_D_D794:
  .byte "Cargo:%3d", $00
Z_TYUUKO_D_D79E:
  .byte "Power:      %3d", $00
Z_TYUUKO_D_D7AE:
  .byte "Handling:   %3d", $00
Z_TYUUKO_D_D7BE:
  .byte "Durability: %3d", $00
Z_TYUUKO_D_D7CE:
  .byte "Arms: %3d", $00
Z_TYUUKO_D_D7D8:
  .byte "Gold:", $00
Z_TYUUKO_D_D7DE:
  .byte "%5d", $00
Z_TYUUKO_D_D7E2:
  .byte "All right, she's", $0A, "yours! Name yer ship", $00
Z_TYUUKO_D_D808:
  .byte "                      ", $00
Z_TYUUKO_D_D81F:
  .byte $1B
  .byte "C2", $00
Z_TYUUKO_D_D823:
  .byte "Is this name OK", $00
Z_TYUUKO_D_D833:
  .word Z_TYUUKO_D_D83F, Z_TYUUKO_D_D881, Z_TYUUKO_D_D8BD, Z_TYUUKO_D_D8FD, Z_TYUUKO_D_D937, Z_TYUUKO_D_D978
Z_TYUUKO_D_D83F:
  .byte "small", $0A, "craft with 3-point", $0A, "sails. She's graceful", $0A, "on the inland seas"
  .byte $00
Z_TYUUKO_D_D881:
  .byte "small", $0A, "craft rigged with", $0A, "4-point sails. She's", $0A, "a speedy ship!"
  .byte $00
Z_TYUUKO_D_D8BD:
  .byte $0A, "small craft but stows", $0A, "more than ye think.", $0A, "It's built for trade"
  .byte $00
Z_TYUUKO_D_D8FD:
  .byte "mid-sized", $0A, "merchant ship. All", $0A, "the explorers buy", $0A, "this model"
  .byte $00
Z_TYUUKO_D_D937:
  .byte "large", $0A, "merchant ship. It's", $0A, "well-armed and built", $0A, "for the deep seas"
  .byte $00
Z_TYUUKO_D_D978:
  .byte "big", $0A, "warship. She's hard", $0A, "to handle, but can", $0A, "stand up to pirates"
  .byte $00
Z_TYUUKO_D_D9B7:
  .byte $0A, "A ", $00
Z_TYUUKO_D_D9BB:
  .byte " is a %s", $00
Z_TYUUKO_D_D9C4:
  .byte "Will ye have a look", $0A, $00
Z_TYUUKO_D_D9D9:
  .byte "I'll sell this vessel", $0A, "for %d gold. Will", $0A, "ye buy it", $00
Z_TYUUKO_D_DA0B:
  .byte "We can't afford it", $00
Z_TYUUKO_D_DA1E:
  .byte "Then name yer price,", $0A, "matey", $0A, $00
Z_TYUUKO_D_DA3A:
  .byte "No good land-lubber!", $00
Z_TYUUKO_D_DA4F:
  .byte "No? Then choose", $0A, "another ship", $00
Z_TYUUKO_D_DA6C:
  .byte "There's a beauty in", $0A, "store for ye today,", $0A, "matey!", $00
Z_TYUUKO_D_DA9B:
  .byte "Which ship will ye", $0A, "buy?", $00
Z_TYUUKO_D_DAB3:
  .byte "Just looking, eh?", $00
  .byte $00
