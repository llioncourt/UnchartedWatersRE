; overlay z_sinzou, runs at $7E:D000
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp Z_SINZOU_F_D003
; calls 1
Z_SINZOU_F_D003:
  k_func 0
  k_call Z_SINZOU_F_D759
  k_stla $F99A
  k_return
; calls 1
Z_SINZOU_F_D00F:
  k_func 0
  k_pusharg 15
  k_pushi 0
  k_pushiw $00FF
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_callx face_block_load, 12
  k_return
Z_SINZOU_F_D021:
  k_func 0
  k_return
; calls 4
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
  k_ldriw Z_SINZOU_D_D810
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
; calls 3
Z_SINZOU_F_D085:
  k_func 0
  k_pushi 10
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D071, 2
  k_pushl
  k_pushiw Z_SINZOU_D_D857
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
; calls 3
Z_SINZOU_F_D0CA:
  k_func 0
  k_pushi 14
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D09E, 2
  k_pushl
  k_pushiw Z_SINZOU_D_D867
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
; calls 3
Z_SINZOU_F_D111:
  k_func 0
  k_pushi 12
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D0E3, 2
  k_pushl
  k_pushiw Z_SINZOU_D_D877
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
; calls 3
Z_SINZOU_F_D151:
  k_func 0
  k_pushib 16
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_callx Z_SINZOU_F_D12A, 2
  k_pushl
  k_pushiw Z_SINZOU_D_D887
  k_callx RF_3608, 4
  k_return
; calls 2
Z_SINZOU_F_D16B:
  k_func 0
  k_pushi 12
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_pushiw Z_SINZOU_D_D896
  k_callx RF_3608, 4
  k_return
; calls 2
Z_SINZOU_F_D17F:
  k_func 0
  k_pushi 14
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_pushiw Z_SINZOU_D_D8A0
  k_callx RF_3608, 4
  k_return
; calls 2
Z_SINZOU_F_D193:
  k_func 0
  k_pushib 16
  k_pushi 3
  k_callx RF_2F8F, 4
  k_pusharg 11
  k_pushiw Z_SINZOU_D_D8AA
  k_callx RF_3608, 4
  k_return
; calls 4
Z_SINZOU_F_D1A8:
  k_func 2
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushi 1
  k_pushiw Z_SINZOU_D_D8B4
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_stl -2
  k_ldl -2
  k_return
; sys: memset_long, wait_frames | vars: g_ships, g_cargo | calls 13
Z_SINZOU_F_D1C4:
  k_func 18
  k_ldli 0
  k_stl -2
Z_SINZOU_L_D1CB:
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw g_ships
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
  k_ldriw g_cargo
  k_add
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw Z_SINZOU_D_D8CF
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
  k_pushiw Z_SINZOU_D_D8FD
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushiw Z_SINZOU_D_D914
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
  k_pushiw Z_SINZOU_D_D918
  k_callx RF_2FB9, 4
  k_call RF_3CFF
  k_jumpf Z_SINZOU_L_D354
  k_pushib 30
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_jump Z_SINZOU_L_D360
Z_SINZOU_L_D354:
  k_pushib 30
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_ldli 1
  k_jumpt Z_SINZOU_L_D313
Z_SINZOU_L_D360:
  k_pushi 3
  k_callx RF_3D5C, 2
  k_ldlbf -3
  k_addli 5
  k_return
; calls 9
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
  k_pushiw Z_SINZOU_D_D928
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
  k_pushiw Z_SINZOU_D_D959
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
; vars: g_player_gold, g_title | calls 22
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
  k_pusha g_player_gold
  k_pushiw Z_SINZOU_D_D9B5
  k_callx RF_3608, 4
Z_SINZOU_L_D45A:
  k_call RF_60B2
  k_pushi 1
  k_pushiw Z_SINZOU_D_D9BE
  k_callx RF_2FB9, 4
  k_pushi 2
  k_pushi 4
  k_pushiw Z_SINZOU_D_D975
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
  k_pushiw Z_SINZOU_D_D9D1
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
  k_ldliw Z_SINZOU_D_D97D
  k_jump Z_SINZOU_L_D4EF
Z_SINZOU_L_D4EC:
  k_ldliw Z_SINZOU_D_D97F
Z_SINZOU_L_D4EF:
  k_stln -3
  k_call RF_6080
  k_call RF_60B2
  k_pushi 1
  k_pushiw Z_SINZOU_D_D9DB
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
  k_pushiw Z_SINZOU_D_D9EB
  k_callx RF_2FB9, 4
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw Z_SINZOU_D_DA27
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pushi 2
  k_pushiw Z_SINZOU_D_D983
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
  k_callx face_block_load, 12
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
  k_pushiw Z_SINZOU_D_DA47
  k_callx RF_3619, 4
  k_call Z_SINZOU_F_D1A8
  k_jumpf Z_SINZOU_L_D4C7
  k_call RF_60B2
  k_longw $0C, $FFEF
  k_long $27
  k_pushl
  k_pushiw Z_SINZOU_D_DA51
  k_callx RF_3619, 4
  k_ldla g_player_gold
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
  k_pushiw Z_SINZOU_D_DA7E
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
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_ldln -13
  k_return
Z_SINZOU_L_D651:
  k_ldlba g_title
  k_inc
  k_pushl
  k_callx rand, 2
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
  k_pushiw Z_SINZOU_D_DA91
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
  k_callx rand, 2
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
  k_ldlba g_title
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
  k_pushiw Z_SINZOU_D_DAA6
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
  k_ldla g_player_gold
  k_sub
  k_stla g_player_gold
  k_ldln -13
  k_return
Z_SINZOU_L_D6FB:
  k_ldli 0
  k_return
; calls 8
Z_SINZOU_F_D6FD:
  k_func 2
  k_call RF_60B2
  k_ldlbf 11
  k_shl1
  k_ldriw Z_SINZOU_D_DAD5
  k_add
  k_deref
  k_pushl
  k_pushiw Z_SINZOU_D_DCA0
  k_callx RF_3608, 4
  k_ldla $F18A
  k_dec
  k_stla $F18A
  k_call RF_472D
  k_call RF_60B2
  k_pushi 1
  k_pushiw Z_SINZOU_D_DCA4
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
  k_pushiw Z_SINZOU_D_DCBD
  k_callx RF_4B44, 2
  k_ldli 0
  k_return
; sys: memset_long | vars: g_port | calls 7
Z_SINZOU_F_D759:
  k_func 20
  k_pushi 1
  k_pushi 5
  k_callx RF_60CE, 4
  k_call RF_60B2
  k_pushiw Z_SINZOU_D_DCD9
  k_callx RF_4B44, 2
  k_ldlba g_port
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
  k_callx syscall, 10  ; sys 36 memset_long
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
  k_pushiw Z_SINZOU_D_DD04
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
  k_ldlba g_port
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
  k_pushiw Z_SINZOU_D_DD14
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
  .byte $00
Z_SINZOU_D_D810:
  .word Z_SINZOU_D_D81C, Z_SINZOU_D_D825, Z_SINZOU_D_D832, Z_SINZOU_D_D837, Z_SINZOU_D_D840, Z_SINZOU_D_D849
Z_SINZOU_D_D81C:
  .byte $0A, "Caravel", $00
Z_SINZOU_D_D825:
  .byte "Bergan-", $0A, " tin", $00
Z_SINZOU_D_D832:
  .byte $0A, "Nao", $00
Z_SINZOU_D_D837:
  .byte $0A, "Carrack", $00
Z_SINZOU_D_D840:
  .byte $0A, "Galleon", $00
Z_SINZOU_D_D849:
  .byte "Heavy", $0A, "Galleon", $00
Z_SINZOU_D_D857:
  .byte "Durability: %3d", $00
Z_SINZOU_D_D867:
  .byte "Handling:   %3d", $00
Z_SINZOU_D_D877:
  .byte "Power:      %3d", $00
Z_SINZOU_D_D887:
  .byte "Capacity:  %4d", $00
Z_SINZOU_D_D896:
  .byte "Cargo:%3d", $00
Z_SINZOU_D_D8A0:
  .byte "Crew: %3d", $00
Z_SINZOU_D_D8AA:
  .byte "Arms: %3d", $00
Z_SINZOU_D_D8B4:
  .byte "Is this OK", $00
  .byte $0F, $16, "00", $0F, $12, $22, "1", $0F, $1A, "7", $12, $0F, $18, "(8"
Z_SINZOU_D_D8CF:
  .byte "All right, she's", $0A, "yours! Name your", $0A, "ship, matey", $00
Z_SINZOU_D_D8FD:
  .byte "                      ", $00
Z_SINZOU_D_D914:
  .byte $1B
  .byte "C2", $00
Z_SINZOU_D_D918:
  .byte "Is this name OK", $00
Z_SINZOU_D_D928:
  .byte "All right, how many", $0A, "gun placements will", $0A, "you need", $00
Z_SINZOU_D_D959:
  .byte "How many bunks for", $0A, "the crew", $00
Z_SINZOU_D_D975:
  .word Z_SINZOU_D_D987, Z_SINZOU_D_D98C, Z_SINZOU_D_D992, Z_SINZOU_D_D996
Z_SINZOU_D_D97D:
  .byte $9F, $D9
Z_SINZOU_D_D97F:
  .byte $A1, $D9, $A3, $D9
Z_SINZOU_D_D983:
  .word Z_SINZOU_D_D9A5, Z_SINZOU_D_D9AD
Z_SINZOU_D_D987:
  .byte "Teak", $00
Z_SINZOU_D_D98C:
  .byte "Beach", $00
Z_SINZOU_D_D992:
  .byte "Oak", $00
Z_SINZOU_D_D996:
  .byte "Mahogany", $00
  .byte $31, $00, $32, $00, $33, $00
Z_SINZOU_D_D9A5:
  .byte "3-point", $00
Z_SINZOU_D_D9AD:
  .byte "4-point", $00
Z_SINZOU_D_D9B5:
  .byte "Gold:%5d", $00
Z_SINZOU_D_D9BE:
  .byte "What kind of hull?", $00
Z_SINZOU_D_D9D1:
  .byte "Cost: %5d", $00
Z_SINZOU_D_D9DB:
  .byte "How many masts?", $00
Z_SINZOU_D_D9EB:
  .byte "3-point sails are for", $0A, "tacking, 4-point sailsare for running", $00
Z_SINZOU_D_DA27:
  .byte "Which type of sails", $0A, "do ye want?", $00
Z_SINZOU_D_DA47:
  .byte "Cost: %5d", $00
Z_SINZOU_D_DA51:
  .byte "All this would cost", $0A, "ye %d gold. Is it", $0A, "a deal", $00
Z_SINZOU_D_DA7E:
  .byte "We can't afford it", $00
Z_SINZOU_D_DA91:
  .byte "Then name yer price", $0A, $00
Z_SINZOU_D_DAA6:
  .byte "You don't know one", $0A, "ship from another!", $0A, "Get out!", $00
Z_SINZOU_D_DAD5:
  .word Z_SINZOU_D_DAE1, Z_SINZOU_D_DB34, Z_SINZOU_D_DB7F, Z_SINZOU_D_DBCA, Z_SINZOU_D_DC16, Z_SINZOU_D_DC57
Z_SINZOU_D_DAE1:
  .byte "This one's small with", $0A, "a shallow hull. It's", $0A, "fast, but may not farewell on open seas"
  .byte $00
Z_SINZOU_D_DB34:
  .byte "This small craft has", $0A, "a deep hull. It's goodfor trading over shortdistances"
  .byte $00
Z_SINZOU_D_DB7F:
  .byte "This mid-sized craft", $0A, "is easy to handle. Ye", $0A, "can't go wrong with"
  .byte $0A, "one o'these", $00
Z_SINZOU_D_DBCA:
  .byte "This model's a large", $0A, "merchant ship. But shecan be converted into", $0A
  .byte "a warship!", $00
Z_SINZOU_D_DC16:
  .byte "If ye want to build a", $0A, "large warship, ye'd", $0A, "best choose this", $0A
  .byte "model", $00
Z_SINZOU_D_DC57:
  .byte "It's hard to find a", $0A, "port where ye can", $0A, "build power ships", $0A, "like this, matey"
  .byte $00
Z_SINZOU_D_DCA0:
  .byte $0A, "%s", $00
Z_SINZOU_D_DCA4:
  .byte "Shall I build one for", $0A, "ye", $00
Z_SINZOU_D_DCBD:
  .byte "No? Then choose", $0A, "another one", $00
Z_SINZOU_D_DCD9:
  .byte "Ye want to build? Now", $0A, "that makes me happy!", $00
Z_SINZOU_D_DD04:
  .byte "Choose yer hull", $00
Z_SINZOU_D_DD14:
  .byte "Cold feet, eh?", $00
  .byte $00
