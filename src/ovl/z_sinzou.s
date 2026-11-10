; overlay z_sinzou, runs at $7E:D000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp Z_SINZOU_F_D003
Z_SINZOU_F_D003:
  k_func 0
  k_call Z_SINZOU_F_D759
  k_stla $F99A
  k_return
Z_SINZOU_F_D00F:
  k_func 0
  k_pusharg 15
  k_pushi 0
  k_pushiw $00FF
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_callx RF_22A8, 12
  k_return
Z_SINZOU_F_D021:
  k_func 0
  k_return
Z_SINZOU_F_D027:
  k_func 6
  k_ldlib -1
  k_stla $EF66
  k_call Z_SINZOU_F_D021
  k_ldli 0
  k_jump Z_SINZOU_L_D069
Z_SINZOU_L_D038:
  k_ldl -2
  k_ldri 3
  k_umod
  k_ldri 9
  k_mul
  k_addli 3
  k_stl -4
  k_ldl -2
  k_ldri 3
  k_udiv
  k_ldri 7
  k_mul
  k_stl -6
  k_push -2
  k_ldl -6
  k_addli 7
  k_pushl
  k_push -4
  k_callx Z_SINZOU_F_D00F, 6
  k_ldl -6
  k_addli 11
  k_pushl
  k_push -4
  k_callx RF_2F8F, 4
  k_ldl -4
  k_stla $F18C
  k_pushi 0
  k_ldl -2
  k_shl1
  k_ldriw $D810
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
  k_ldl -2
  k_inc
Z_SINZOU_L_D069:
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_ule
  k_jumpt Z_SINZOU_L_D038
  k_return
Z_SINZOU_F_D071:
  k_func 0
  k_ldlarg 11
  k_deref
  k_ldri 10
  k_mul
  k_pushl
  k_ldlarg 11
  k_addli 6
  k_deref
  k_ldri 10
  k_mul
  k_popr
  k_add
  k_addlib 20
  k_return
Z_SINZOU_F_D085:
  k_func 0
  k_pushi 10
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D071, 2
  k_pushl
  k_pushiw $D857
  k_callx RF_3608, 4
  k_return
Z_SINZOU_F_D09E:
  k_func 0
  k_ldlarg 11
  k_addli 4
  k_deref
  k_pushl
  k_ldli 4
  k_popr
  k_sub
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_deref
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_pushl
  k_ldlarg 11
  k_addli 6
  k_deref
  k_pushl
  k_ldlib 20
  k_popr
  k_sub
  k_ldrib 100
  k_mul
  k_ldrib 20
  k_udiv
  k_popr
  k_mul
  k_ldri 10
  k_udiv
  k_popr
  k_mul
  k_ldri 2
  k_shr
  k_return
Z_SINZOU_F_D0CA:
  k_func 0
  k_pushi 14
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D09E, 2
  k_pushl
  k_pushiw $D867
  k_callx RF_3608, 4
  k_return
Z_SINZOU_F_D0E3:
  k_func 2
  k_ldlarg 11
  k_addli 4
  k_deref
  k_addli 3
  k_pushl
  k_ldlarg 11
  k_addli 6
  k_deref
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_deref
  k_ldri 10
  k_mul
  k_addlib 100
  k_popr
  k_mul
  k_ldri 10
  k_udiv
  k_popr
  k_mul
  k_ldri 2
  k_shr
  k_stl -2
  k_ldl -2
  k_ldrib 100
  k_gt
  k_jumpf Z_SINZOU_L_D10F
  k_ldlib 100
  k_stl -2
Z_SINZOU_L_D10F:
  k_ldl -2
  k_return
Z_SINZOU_F_D111:
  k_func 0
  k_pushi 12
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D0E3, 2
  k_pushl
  k_pushiw $D877
  k_callx RF_3608, 4
  k_return
Z_SINZOU_F_D12A:
  k_func 2
  k_ldlarg 11
  k_ldri 5
  k_udiv
  k_ldrib 50
  k_mul
  k_pushl
  k_ldlarg 11
  k_ldri 1
  k_and
  k_ldrarg 11
  k_mul
  k_ldrib 50
  k_mul
  k_pushl
  k_ldlarg 11
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
Z_SINZOU_F_D151:
  k_func 0
  k_pushib 16
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D12A, 2
  k_pushl
  k_pushiw $D887
  k_callx RF_3608, 4
  k_return
Z_SINZOU_F_D16B:
  k_func 0
  k_pushi 12
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_pushiw $D896
  k_callx RF_3608, 4
  k_return
Z_SINZOU_F_D17F:
  k_func 0
  k_pushi 14
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_pushiw $D8A0
  k_callx RF_3608, 4
  k_return
Z_SINZOU_F_D193:
  k_func 0
  k_pushib 16
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_pushiw $D8AA
  k_callx RF_3608, 4
  k_return
Z_SINZOU_F_D1A8:
  k_func 2
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D8B4
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_return
Z_SINZOU_F_D1C4:
  k_func 18
  k_ldli 0
  k_stl -2
Z_SINZOU_L_D1CB:
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw $EB92
  k_add
  k_stl -16
  k_ldl -16
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf Z_SINZOU_L_D1E5
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt Z_SINZOU_L_D1CB
Z_SINZOU_L_D1E5:
  k_ldl -2
  k_stlbf -3
  k_push -16
  k_pusharg 11
  k_callx Z_SINZOU_F_D071, 2
  k_popstoreb
  k_ldl -16
  k_inc
  k_pushl
  k_pusharg 11
  k_callx Z_SINZOU_F_D09E, 2
  k_popstoreb
  k_ldl -16
  k_addli 2
  k_pushl
  k_pusharg 11
  k_callx Z_SINZOU_F_D0E3, 2
  k_popstoreb
  k_ldl -16
  k_addli 3
  k_pushl
  k_ldli 0
  k_popstoreb
  k_ldl -16
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
Z_SINZOU_L_D21A:
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
  k_jumpt Z_SINZOU_L_D21A
  k_ldli 0
  k_jump Z_SINZOU_L_D24F
Z_SINZOU_L_D231:
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
Z_SINZOU_L_D24F:
  k_stl -2
  k_ldlbf -4
  k_pushl
  k_ldl -2
  k_popr
  k_ult
  k_jumpt Z_SINZOU_L_D231
  k_ldli 0
  k_stl -2
Z_SINZOU_L_D25C:
  k_leal -14
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf Z_SINZOU_L_D279
  k_leal -14
  k_pushl
  k_ldl -2
  k_popr
  k_add
  k_derefb
  k_stlbf -4
  k_jump Z_SINZOU_L_D282
Z_SINZOU_L_D279:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 5
  k_ult
  k_jumpt Z_SINZOU_L_D25C
Z_SINZOU_L_D282:
  k_ldl -16
  k_addli 6
  k_pushl
  k_ldli 0
  k_popstoreb
  k_pushib 64
  k_ldl -16
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_pushiw $00F0
  k_ldl -16
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_pushbf -4
  k_ldl -16
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldlbf -4
  k_pushl
  k_callx RF_40A5, 2
  k_stl -18
  k_ldl -18
  k_addli 15
  k_pushl
  k_ldlarg 11
  k_addli 10
  k_deref
  k_popstore
  k_ldl -18
  k_addlib 17
  k_pushl
  k_ldlarg 11
  k_addli 12
  k_deref
  k_popstoreb
  k_ldl -18
  k_addlib 18
  k_pushl
  k_ldlarg 11
  k_addli 8
  k_deref
  k_popstore
  k_ldl -18
  k_addlib 20
  k_pushl
  k_ldlarg 11
  k_deref
  k_pushl
  k_ldlarg 11
  k_addli 6
  k_deref
  k_ldri 5
  k_shl
  k_pushl
  k_ldlarg 11
  k_addli 4
  k_deref
  k_ldri 4
  k_shl
  k_pushl
  k_ldlarg 11
  k_addli 2
  k_deref
  k_shl1
  k_shl1
  k_popr
  k_or
  k_popr
  k_or
  k_popr
  k_or
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
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $D8CF
  k_callx RF_4B44, 2
  k_pushi 3
  k_callx RF_3D5C, 2
  k_pushi 1
  k_callx RF_3D5C, 2
Z_SINZOU_L_D313:
  k_pushib 25
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $D8FD
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw $D914
  k_callx RF_2FB9, 4
Z_SINZOU_L_D32A:
  k_pushi 1
  k_push -18
  k_pushi 7
  k_callx RF_6557, 6
  k_jumpf Z_SINZOU_L_D32A
  k_pushib 25
  k_pushi 6
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw $D918
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf Z_SINZOU_L_D354
  k_pushib 30
  k_pushib 16
  k_callx RL_21BE, 4
  k_jump Z_SINZOU_L_D360
Z_SINZOU_L_D354:
  k_pushib 30
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldli 1
  k_jumpt Z_SINZOU_L_D313
Z_SINZOU_L_D360:
  k_pushi 3
  k_callx RF_3D5C, 2
  k_ldlbf -3
  k_addli 5
  k_return
Z_SINZOU_F_D36A:
  k_func 8
Z_SINZOU_L_D36F:
  k_call RF_6080
  k_call RF_60B2
  k_ldlarg 11
  k_addli 6
  k_deref
  k_ldri 5
  k_udiv
  k_ldrib 40
  k_mul
  k_pushl
  k_ldlarg 11
  k_addli 6
  k_deref
  k_ldri 1
  k_shr
  k_inc
  k_ldrib 20
  k_mul
  k_popr
  k_add
  k_stl -4
  k_push -4
  k_pushi 0
  k_pushiw $D928
  k_callx RF_3C6D, 6
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf Z_SINZOU_L_D39D
  k_ldli 0
  k_return
Z_SINZOU_L_D39D:
  k_ldlarg 11
  k_addli 12
  k_pushl
  k_ldl -2
  k_popstore
  k_ldliw $01F4
  k_stl -6
  k_ldlarg 11
  k_addli 6
  k_deref
  k_pushl
  k_callx Z_SINZOU_F_D12A, 2
  k_ldr -2
  k_sub
  k_pushl
  k_ldl -6
  k_popr
  k_ugt
  k_jumpf Z_SINZOU_L_D3C2
  k_ldlarg 11
  k_addli 6
  k_deref
  k_pushl
  k_callx Z_SINZOU_F_D12A, 2
  k_ldr -2
  k_sub
  k_stl -6
Z_SINZOU_L_D3C2:
  k_call RF_6080
  k_call RF_60B2
  k_push -6
  k_pushib 20
  k_pushiw $D959
  k_callx RF_3C6D, 6
  k_stl -2
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf Z_SINZOU_L_D3DC
  k_ldli 0
  k_return
Z_SINZOU_L_D3DC:
  k_ldlarg 11
  k_addli 10
  k_pushl
  k_ldl -2
  k_popstore
  k_ldlarg 11
  k_addli 8
  k_pushl
  k_ldlarg 11
  k_addli 12
  k_deref
  k_pushl
  k_ldlarg 11
  k_addli 10
  k_deref
  k_popr
  k_add
  k_pushl
  k_ldlarg 11
  k_addli 6
  k_deref
  k_pushl
  k_callx Z_SINZOU_F_D12A, 2
  k_popr
  k_sub
  k_popstore
  k_ldlarg 11
  k_addli 8
  k_deref
  k_pushl
  k_callx Z_SINZOU_F_D16B, 2
  k_ldlarg 11
  k_addli 10
  k_deref
  k_pushl
  k_callx Z_SINZOU_F_D17F, 2
  k_ldlarg 11
  k_addli 12
  k_deref
  k_pushl
  k_callx Z_SINZOU_F_D193, 2
  k_call Z_SINZOU_F_D1A8
  k_jumpf Z_SINZOU_L_D36F
  k_pusharg 11
  k_callx Z_SINZOU_F_D1C4, 2
  k_stl -8
  k_ldl -8
  k_return
Z_SINZOU_F_D41F:
  k_func 17
  k_ldlarg 15
  k_addli 6
  k_pushl
  k_ldlbf 11
  k_popstore
  k_call RF_6080
  k_call $9662
  k_pushi 1
  k_callx $B015, 2
  k_ldlbf 11
  k_pushl
  k_pushi 6
  k_pushi 3
  k_callx Z_SINZOU_F_D00F, 6
  k_ldlarg 15
  k_addli 6
  k_deref
  k_pushl
  k_callx Z_SINZOU_F_D151, 2
  k_pushib 18
  k_pushib 19
  k_callx RF_2F8F, 4
  k_pusha $E56D
  k_pushiw $D9B5
  k_callx RF_3608, 4
Z_SINZOU_L_D45A:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D9BE
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 4
  k_pushiw $D975
  k_pushi 2
  k_pushi 7
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpf Z_SINZOU_L_D482
  k_ldli 0
  k_return
Z_SINZOU_L_D482:
  k_pusharg 15
  k_ldlbf -1
  k_popstore
  k_pusharg 15
  k_callx Z_SINZOU_F_D085, 2
  k_ldlarg 15
  k_deref
  k_addli 2
  k_pushl
  k_ldlbf 13
  k_addlib 50
  k_pushl
  k_ldlarg 15
  k_addli 6
  k_deref
  k_ldri 7
  k_mul
  k_ldri 1
  k_shr
  k_inc
  k_popr
  k_mul
  k_popr
  k_mul
  k_ldri 1
  k_shr
  k_ldri 7
  k_mul
  k_long $26
  k_longw $0E, $FFEF
  k_pushib 17
  k_pushi 3
  k_callx RF_2F8F, 4
  k_longw $0C, $FFEF
  k_long $27
  k_pushl
  k_pushiw $D9D1
  k_callx RF_3619, 4
  k_call Z_SINZOU_F_D1A8
  k_jumpf Z_SINZOU_L_D45A
Z_SINZOU_L_D4C7:
  k_ldlarg 15
  k_addli 6
  k_deref
  k_ldri 2
  k_eq
  k_jumpt Z_SINZOU_L_D4D7
  k_ldlarg 15
  k_addli 6
  k_deref
  k_ldri 3
  k_eq
  k_jumpf Z_SINZOU_L_D4DB
Z_SINZOU_L_D4D7:
  k_ldli 3
  k_jump Z_SINZOU_L_D4DC
Z_SINZOU_L_D4DB:
  k_ldli 2
Z_SINZOU_L_D4DC:
  k_stln -7
  k_ldlarg 15
  k_addli 6
  k_deref
  k_ldri 4
  k_ult
  k_jumpf Z_SINZOU_L_D4EC
  k_ldliw $D97D
  k_jump Z_SINZOU_L_D4EF
Z_SINZOU_L_D4EC:
  k_ldliw $D97F
Z_SINZOU_L_D4EF:
  k_stln -3
  k_call RF_6080
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D9DB
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushn -7
  k_pushn -3
  k_pushi 1
  k_pushi 4
  k_pushib 23
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpf Z_SINZOU_L_D51C
  k_ldli 0
  k_return
Z_SINZOU_L_D51C:
  k_ldlarg 15
  k_addli 6
  k_deref
  k_ldri 3
  k_ugt
  k_jumpf Z_SINZOU_L_D52B
  k_ldlbf -1
  k_inc
  k_stlbf -1
Z_SINZOU_L_D52B:
  k_ldlarg 15
  k_addli 2
  k_pushl
  k_ldlbf -1
  k_popstore
  k_call RF_6080
  k_call RF_60B2
  k_pushi 1
  k_pushiw $D9EB
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $DA27
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw $D983
  k_pushi 1
  k_pushi 9
  k_pushib 25
  k_pushi 8
  k_callx RF_484C, 14
  k_stlbf -1
  k_ldlbf -1
  k_ldriw $00FF
  k_eq
  k_jumpf Z_SINZOU_L_D56B
  k_ldli 0
  k_return
Z_SINZOU_L_D56B:
  k_ldlarg 15
  k_addli 4
  k_pushl
  k_ldlbf -1
  k_popstore
  k_pusharg 15
  k_callx Z_SINZOU_F_D0CA, 2
  k_pusharg 15
  k_callx Z_SINZOU_F_D111, 2
  k_pushi 0
  k_ldlarg 15
  k_addli 2
  k_deref
  k_pushl
  k_ldlarg 15
  k_addli 4
  k_deref
  k_pushl
  k_ldlarg 15
  k_addli 6
  k_deref
  k_pushl
  k_pushi 6
  k_pushi 3
  k_callx RF_22A8, 12
  k_ldlarg 15
  k_addli 2
  k_deref
  k_inc
  k_pushl
  k_ldlbf 13
  k_addlib 50
  k_pushl
  k_ldlarg 15
  k_addli 6
  k_deref
  k_ldri 1
  k_shr
  k_ldri 6
  k_mul
  k_inc
  k_popr
  k_mul
  k_popr
  k_mul
  k_ldri 3
  k_mul
  k_pushl
  k_ldlarg 15
  k_deref
  k_addli 2
  k_pushl
  k_ldlbf 13
  k_addlib 50
  k_pushl
  k_ldlarg 15
  k_addli 6
  k_deref
  k_ldri 7
  k_mul
  k_ldri 1
  k_shr
  k_inc
  k_popr
  k_mul
  k_popr
  k_mul
  k_ldri 1
  k_shr
  k_ldri 7
  k_mul
  k_popr
  k_add
  k_long $26
  k_longw $0E, $FFEF
  k_longw $0C, $FFEF
  k_longd $19, $0000EA60
  k_long $0A
  k_jumpf Z_SINZOU_L_D5E4
  k_longd $18, $0000EA60
  k_longw $0E, $FFEF
Z_SINZOU_L_D5E4:
  k_pushib 17
  k_pushi 3
  k_callx RF_2F8F, 4
  k_longw $0C, $FFEF
  k_long $27
  k_pushl
  k_pushiw $DA47
  k_callx RF_3619, 4
  k_call Z_SINZOU_F_D1A8
  k_jumpf Z_SINZOU_L_D4C7
  k_call RF_60B2
  k_longw $0C, $FFEF
  k_long $27
  k_pushl
  k_pushiw $DA51
  k_callx RF_3619, 4
  k_ldla $E56D
  k_stln -9
  k_call RF_3CFF
  k_jumpf Z_SINZOU_L_D651
  k_longw $0C, $FFEF
  k_long $27
  k_ldrn -9
  k_ugt
  k_jumpf Z_SINZOU_L_D636
  k_call RF_60EE
  k_call RF_60B2
  k_pushiw $DA7E
  k_callx RF_4B44, 2
Z_SINZOU_L_D634:
  k_ldli 0
  k_return
Z_SINZOU_L_D636:
  k_pusharg 15
  k_callx Z_SINZOU_F_D36A, 2
  k_stln -13
  k_jumpf Z_SINZOU_L_D634
  k_longw $0C, $FFEF
  k_long $27
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_ldln -13
  k_return
Z_SINZOU_L_D651:
  k_ldlba $EE76
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt Z_SINZOU_L_D6FB
  k_call RF_60B2
  k_pushn -9
  k_longw $0C, $FFEF
  k_long $27
  k_pushl
  k_callx RL_8962, 4
  k_stln -11
  k_pushi 1
  k_pushn -11
  k_pushi 1
  k_pushiw $DA91
  k_callx RF_3C4E, 8
  k_stln -5
  k_ldln -5
  k_ldrib -1
  k_ne
  k_jumpf Z_SINZOU_L_D6FB
  k_longw $0C, $FFEF
  k_long $27
  k_ldri 10
  k_udiv
  k_pushl
  k_callx RF_3F3E, 2
  k_long $26
  k_long $14
  k_longw $0C, $FFEF
  k_longd $19, $00000002
  k_long $02
  k_long $14
  k_longw $0C, $FFEF
  k_longd $19, $00000014
  k_long $02
  k_long $14
  k_ldlba $EE76
  k_pushl
  k_ldli 10
  k_popr
  k_sub
  k_long $26
  k_long $15
  k_long $01
  k_long $15
  k_long $03
  k_long $15
  k_long $04
  k_longw $0E, $FFEF
  k_longw $0C, $FFEF
  k_long $27
  k_pushl
  k_ldln -5
  k_popr
  k_ult
  k_jumpf Z_SINZOU_L_D6E4
  k_call RF_60B2
  k_pushiw $DAA6
  k_callx RF_4B44, 2
  k_ldli 1
  k_return
Z_SINZOU_L_D6E4:
  k_pusharg 15
  k_callx Z_SINZOU_F_D36A, 2
  k_stln -13
  k_jumpf Z_SINZOU_L_D6FB
  k_ldln -5
  k_swap
  k_ldla $E56D
  k_sub
  k_stla $E56D
  k_ldln -13
  k_return
Z_SINZOU_L_D6FB:
  k_ldli 0
  k_return
Z_SINZOU_F_D6FD:
  k_func 2
  k_call RF_60B2
  k_ldlbf 11
  k_shl1
  k_ldriw $DAD5
  k_add
  k_deref
  k_pushl
  k_pushiw $DCA0
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw $DCA4
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf Z_SINZOU_L_D747
  k_pusharg 17
  k_ldli 1
  k_popstore
  k_pusharg 15
  k_ldlbf 13
  k_pushl
  k_ldlbf 11
  k_pushl
  k_callx Z_SINZOU_F_D41F, 6
  k_stl -2
  k_jumpf Z_SINZOU_L_D747
  k_ldl -2
  k_return
Z_SINZOU_L_D747:
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $DCBD
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
Z_SINZOU_F_D759:
  k_func 20
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw $DCD9
  k_callx RF_4B44, 2
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6B8
  k_add
  k_deref
  k_addlib -100
  k_ldriw $00B4
  k_sdiv
  k_stlbf -1
  k_ldli 1
  k_stl -20
  k_ldli 0
  k_stl -18
  k_call $B027
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
Z_SINZOU_L_D78E:
  k_pushi 8
  k_pushi 0
  k_leal -16
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldl -20
  k_jumpf Z_SINZOU_L_D7B0
  k_call $9662
  k_call $B015
  k_ldlbf -1
  k_pushl
  k_callx Z_SINZOU_F_D027, 2
  k_ldli 0
  k_stl -20
Z_SINZOU_L_D7B0:
  k_call RF_60B2
  k_pushi 1
  k_pushiw $DD04
  k_callx RF_2FB9, 4
  k_ldlbf -1
  k_inc
  k_pushl
  k_callx $968B, 2
  k_stlbf -2
  k_ldlbf -2
  k_ldriw $00FF
  k_ne
  k_jumpf Z_SINZOU_L_D7F0
  k_leal -20
  k_pushl
  k_leal -16
  k_pushl
  k_ldlba $EF69
  k_ldri 14
  k_mul
  k_ldriw $E6BF
  k_add
  k_derefb
  k_pushl
  k_ldlbf -2
  k_pushl
  k_callx Z_SINZOU_F_D6FD, 8
  k_stl -18
  k_jump Z_SINZOU_L_D7FF
Z_SINZOU_L_D7F0:
  k_pushi 2
  k_callx RF_609A, 2
  k_pushiw $DD14
  k_callx RF_4B44, 2
  k_call $9662
Z_SINZOU_L_D7FF:
  k_ldlbf -2
  k_ldriw $00FF
  k_eq
  k_jumpt Z_SINZOU_L_D80D
  k_ldl -18
  k_jumpf Z_SINZOU_L_D78E
Z_SINZOU_L_D80D:
  k_ldl -18
  k_return
  .byte $00, $1C, $D8, $25, $D8, $32, $D8, $37, $D8, $40, $D8, $49, $D8, $0A
  .byte "Caravel"
  .byte $00
  .byte "Bergan-"
  .byte $0A
  .byte " tin"
  .byte $00, $0A, $4E, $61, $6F, $00, $0A
  .byte "Carrack"
  .byte $00, $0A
  .byte "Galleon"
  .byte $00
  .byte "Heavy"
  .byte $0A
  .byte "Galleon"
  .byte $00
  .byte "Durability: %3d"
  .byte $00
  .byte "Handling:   %3d"
  .byte $00
  .byte "Power:      %3d"
  .byte $00
  .byte "Capacity:  %4d"
  .byte $00
  .byte "Cargo:%3d"
  .byte $00
  .byte "Crew: %3d"
  .byte $00
  .byte "Arms: %3d"
  .byte $00
  .byte "Is this OK"
  .byte $00, $0F, $16, $30, $30, $0F, $12, $22, $31, $0F, $1A, $37, $12, $0F, $18
  .byte "(8All right, she's"
  .byte $0A
  .byte "yours! Name your"
  .byte $0A
  .byte "ship, matey"
  .byte $00
  .byte "                      "
  .byte $00, $1B, $43, $32, $00
  .byte "Is this name OK"
  .byte $00
  .byte "All right, how many"
  .byte $0A
  .byte "gun placements will"
  .byte $0A
  .byte "you need"
  .byte $00
  .byte "How many bunks for"
  .byte $0A
  .byte "the crew"
  .byte $00, $87, $D9, $8C, $D9, $92, $D9, $96, $D9, $9F, $D9, $A1, $D9, $A3, $D9, $A5
  .byte $D9, $AD, $D9
  .byte "Teak"
  .byte $00
  .byte "Beach"
  .byte $00, $4F, $61, $6B, $00
  .byte "Mahogany"
  .byte $00, $31, $00, $32, $00, $33, $00
  .byte "3-point"
  .byte $00
  .byte "4-point"
  .byte $00
  .byte "Gold:%5d"
  .byte $00
  .byte "What kind of hull?"
  .byte $00
  .byte "Cost: %5d"
  .byte $00
  .byte "How many masts?"
  .byte $00
  .byte "3-point sails are for"
  .byte $0A
  .byte "tacking, 4-point sailsare for running"
  .byte $00
  .byte "Which type of sails"
  .byte $0A
  .byte "do ye want?"
  .byte $00
  .byte "Cost: %5d"
  .byte $00
  .byte "All this would cost"
  .byte $0A
  .byte "ye %d gold. Is it"
  .byte $0A
  .byte "a deal"
  .byte $00
  .byte "We can't afford it"
  .byte $00
  .byte "Then name yer price"
  .byte $0A, $00
  .byte "You don't know one"
  .byte $0A
  .byte "ship from another!"
  .byte $0A
  .byte "Get out!"
  .byte $00, $E1, $DA, $34, $DB, $7F, $DB, $CA, $DB, $16, $DC, $57, $DC
  .byte "This one's small with"
  .byte $0A
  .byte "a shallow hull. It's"
  .byte $0A
  .byte "fast, but may not farewell on open seas"
  .byte $00
  .byte "This small craft has"
  .byte $0A
  .byte "a deep hull. It's goodfor trading over shortdist"
  .byte "ances"
  .byte $00
  .byte "This mid-sized craft"
  .byte $0A
  .byte "is easy to handle. Ye"
  .byte $0A
  .byte "can't go wrong with"
  .byte $0A
  .byte "one o'these"
  .byte $00
  .byte "This model's a large"
  .byte $0A
  .byte "merchant ship. But shecan be converted into"
  .byte $0A
  .byte "a warship!"
  .byte $00
  .byte "If ye want to build a"
  .byte $0A
  .byte "large warship, ye'd"
  .byte $0A
  .byte "best choose this"
  .byte $0A
  .byte "model"
  .byte $00
  .byte "It's hard to find a"
  .byte $0A
  .byte "port where ye can"
  .byte $0A
  .byte "build power ships"
  .byte $0A
  .byte "like this, matey"
  .byte $00, $0A, $25, $73, $00
  .byte "Shall I build one for"
  .byte $0A, $79, $65, $00
  .byte "No? Then choose"
  .byte $0A
  .byte "another one"
  .byte $00
  .byte "Ye want to build? Now"
  .byte $0A
  .byte "that makes me happy!"
  .byte $00
  .byte "Choose yer hull"
  .byte $00
  .byte "Cold feet, eh?"
  .byte $00, $00
