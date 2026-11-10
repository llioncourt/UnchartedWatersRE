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
  k_ldriw $D740
  k_add
  k_deref
  k_pushl
  k_pushiw $D778
  k_callx RF_3608, 4
  k_pushi 14
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D1B5, 2
  k_pushl
  k_pushiw $D77B
  k_callx RF_3608, 4
  k_pushib 16
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D159, 2
  k_pushl
  k_pushiw $D785
  k_callx RF_3608, 4
  k_pushi 12
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D1A0, 2
  k_pushl
  k_pushiw $D794
  k_callx RF_3608, 4
  k_pushi 12
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D0F9, 2
  k_pushl
  k_pushiw $D79E
  k_callx RF_3608, 4
  k_pushi 14
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D09D, 2
  k_pushl
  k_pushiw $D7AE
  k_callx RF_3608, 4
  k_pushi 10
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D06E, 2
  k_pushl
  k_pushiw $D7BE
  k_callx RF_3608, 4
  k_pushib 16
  k_pushi 3
  k_callx RF_2F8F, 4
  k_ldlbf 11
  k_pushl
  k_callx Z_TYUUKO_F_D1C9, 2
  k_pushl
  k_pushiw $D7CE
  k_callx RF_3608, 4
  k_pushib 18
  k_pushib 19
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw $D7D8
  k_callx RF_2FB9, 4
  k_pusha $E56D
  k_pushiw $D7DE
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
  k_pushiw $D7E2
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
  k_pushiw $D808
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw $D81F
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
  k_pushiw $D823
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
  k_pushiw $D9B7
  k_callx RF_2FB9, 4
  k_ldlbf 11
  k_addli 5
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlbf 11
  k_shl1
  k_ldriw $D833
  k_add
  k_deref
  k_pushl
  k_pushiw $D9BB
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D9C4
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
  k_pushiw $D9D9
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
  k_pushiw $DA0B
  k_callx RF_4B44, 2
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
Z_TYUUKO_L_D5C7:
  k_call RF_60B2
  k_pushiw $DA4F
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
  k_pushiw $DA1E
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
  k_pushiw $DA3A
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
  k_pushiw $DA6C
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
  k_pushiw $DA9B
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
  k_pushiw $DAB3
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
  .byte $00, $4C, $D7, $52, $D7, $5A, $D7, $64, $D7, $68, $D7, $70, $D7
  .byte "Latin"
  .byte $00
  .byte "Redonda"
  .byte $00
  .byte "Bergantin"
  .byte $00, $4E, $61, $6F, $00
  .byte "Carrack"
  .byte $00
  .byte "Galleon"
  .byte $00, $25, $73, $00
  .byte "Crew: %3d"
  .byte $00
  .byte "Capacity:  %4d"
  .byte $00
  .byte "Cargo:%3d"
  .byte $00
  .byte "Power:      %3d"
  .byte $00
  .byte "Handling:   %3d"
  .byte $00
  .byte "Durability: %3d"
  .byte $00
  .byte "Arms: %3d"
  .byte $00
  .byte "Gold:"
  .byte $00, $25, $35, $64, $00
  .byte "All right, she's"
  .byte $0A
  .byte "yours! Name yer ship"
  .byte $00
  .byte "                      "
  .byte $00, $1B, $43, $32, $00
  .byte "Is this name OK"
  .byte $00, $3F, $D8, $81, $D8, $BD, $D8, $FD, $D8, $37, $D9, $78, $D9
  .byte "small"
  .byte $0A
  .byte "craft with 3-point"
  .byte $0A
  .byte "sails. She's graceful"
  .byte $0A
  .byte "on the inland seas"
  .byte $00
  .byte "small"
  .byte $0A
  .byte "craft rigged with"
  .byte $0A
  .byte "4-point sails. She's"
  .byte $0A
  .byte "a speedy ship!"
  .byte $00, $0A
  .byte "small craft but stows"
  .byte $0A
  .byte "more than ye think."
  .byte $0A
  .byte "It's built for trade"
  .byte $00
  .byte "mid-sized"
  .byte $0A
  .byte "merchant ship. All"
  .byte $0A
  .byte "the explorers buy"
  .byte $0A
  .byte "this model"
  .byte $00
  .byte "large"
  .byte $0A
  .byte "merchant ship. It's"
  .byte $0A
  .byte "well-armed and built"
  .byte $0A
  .byte "for the deep seas"
  .byte $00, $62, $69, $67, $0A
  .byte "warship. She's hard"
  .byte $0A
  .byte "to handle, but can"
  .byte $0A
  .byte "stand up to pirates"
  .byte $00, $0A, $41, $20, $00
  .byte " is a %s"
  .byte $00
  .byte "Will ye have a look"
  .byte $0A, $00
  .byte "I'll sell this vessel"
  .byte $0A
  .byte "for %d gold. Will"
  .byte $0A
  .byte "ye buy it"
  .byte $00
  .byte "We can't afford it"
  .byte $00
  .byte "Then name yer price,"
  .byte $0A
  .byte "matey"
  .byte $0A, $00
  .byte "No good land-lubber!"
  .byte $00
  .byte "No? Then choose"
  .byte $0A
  .byte "another ship"
  .byte $00
  .byte "There's a beauty in"
  .byte $0A
  .byte "store for ye today,"
  .byte $0A
  .byte "matey!"
  .byte $00
  .byte "Which ship will ye"
  .byte $0A
  .byte "buy?"
  .byte $00
  .byte "Just looking, eh?"
  .byte $00, $00
