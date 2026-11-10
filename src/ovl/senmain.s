; overlay senmain, runs at $7E:A500
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp SENMAIN_F_A503
; calls 1
SENMAIN_F_A503:
  k_func 0
  k_ldlba $F16A
  k_pushl
  k_callx SENMAIN_F_ADF4, 2
  k_return
; calls 1
SENMAIN_F_A511:
  k_func 0
  k_call $97B7
  k_pusharg 11
  k_callx SENMAIN_F_A805, 2
  k_return
SENMAIN_F_A51F:
  k_func 0
  k_return
SENMAIN_F_A525:
  k_func 2
  k_ldlarg 17
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A53E
  k_ldli 0
  k_stl -2
  k_ldlarg 17
  k_ldra $F44E
  k_eq
  k_jumpf SENMAIN_L_A54A
  k_ldli 1
  k_jump SENMAIN_L_A549
SENMAIN_L_A53E:
  k_ldli 2
  k_stl -2
  k_ldlarg 17
  k_ldra $F450
  k_eq
  k_jumpf SENMAIN_L_A54A
  k_ldli 3
SENMAIN_L_A549:
  k_stl -2
SENMAIN_L_A54A:
  k_pusharg 15
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_callx $9662, 8
  k_return
; sys: tilemap_write
SENMAIN_F_A553:
  k_func 0
  k_pushi 0
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_return
; calls 2
SENMAIN_F_A564:
  k_func 10
  k_ldlarg 15
  k_ldriw $03C0
  k_eq
  k_stl -10
  k_ldla $F304
  k_shl1
  k_inc
  k_stl -2
  k_ldla $F308
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_A586
  k_ldli 3
  k_jump SENMAIN_L_A587
SENMAIN_L_A586:
  k_ldli 2
SENMAIN_L_A587:
  k_popr
  k_add
  k_stl -4
  k_push -4
  k_push -2
  k_callx SENMAIN_F_A553, 4
  k_pusharg 11
  k_pusharg 13
  k_push -4
  k_push -2
  k_callx SENMAIN_F_A525, 8
  k_ldlarg 13
  k_ldri 6
  k_mul
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_A5A8
  k_ldli 2
  k_jump SENMAIN_L_A5A9
SENMAIN_L_A5A8:
  k_ldli 1
SENMAIN_L_A5A9:
  k_shl1
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F308
  k_add
  k_stl -8
  k_ldlarg 13
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F304
  k_add
  k_stl -6
  k_ldl -6
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_A5EC
  k_ldl -6
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_A5EC
  k_ldl -8
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_A5EC
  k_ldl -8
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_A5EC
  k_ldl -8
  k_ldri 15
  k_mul
  k_ldr -6
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_ldriw $0080
  k_ugt
  k_jumpf SENMAIN_L_A5EE
SENMAIN_L_A5EC:
  k_ldli 0
  k_return
SENMAIN_L_A5EE:
  k_push -4
  k_push -2
  k_callx SENMAIN_F_A553, 4
  k_pusharg 11
  k_pusharg 13
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -6
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_A603
  k_ldli 3
  k_jump SENMAIN_L_A604
SENMAIN_L_A603:
  k_ldli 2
SENMAIN_L_A604:
  k_popr
  k_add
  k_pushl
  k_ldl -6
  k_shl1
  k_inc
  k_pushl
  k_callx SENMAIN_F_A525, 8
  k_ldl -8
  k_stla $F308
  k_ldl -6
  k_stla $F304
  k_ldl -8
  k_ldri 15
  k_mul
  k_ldr -6
  k_add
  k_stla $F440
  k_ldli 1
  k_return
; sys: memset_long, tilemap_copy | vars: g_fh_cbmap0 | calls 2
SENMAIN_F_A621:
  k_func 14
  k_ldlarg 17
  k_ldri 2
  k_ult
  k_jumpf SENMAIN_L_A648
  k_ldlarg 15
  k_ldrib 100
  k_eq
  k_jumpf SENMAIN_L_A659
  k_pusha g_fh_cbmap0
  k_ldlarg 17
  k_shl1
  k_ldriw SENMAIN_D_CA9A
  k_add
  k_deref
  k_pushl
  k_pushi 1
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
SENMAIN_L_A648:
  k_ldlarg 15
  k_ldrib 99
  k_ugt
  k_jumpf SENMAIN_L_A659
  k_ldli 10
  k_swap
  k_ldlarg 15
  k_udiv
  k_stlarg 15
  k_ldli 2
  k_swap
  k_ldlarg 17
  k_add
  k_stlarg 17
SENMAIN_L_A659:
  k_pushi 4
  k_pushi 0
  k_leal -4
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_pushi 2
  k_pushiw $00FF
  k_leal -10
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_ldli 2
  k_jump SENMAIN_L_A68E
SENMAIN_L_A67B:
  k_leal -11
  k_pushl
  k_ldl -14
  k_popr
  k_add
  k_pushl
  k_ldlarg 15
  k_ldri 10
  k_umod
  k_popstoreb
  k_ldli 10
  k_swap
  k_ldlarg 15
  k_udiv
  k_stlarg 15
  k_ldl -14
  k_dec
SENMAIN_L_A68E:
  k_stl -14
  k_ldlarg 15
  k_jumpf SENMAIN_L_A699
  k_ldl -14
  k_ldri 0
  k_gt
  k_jumpt SENMAIN_L_A67B
SENMAIN_L_A699:
  k_leal -4
  k_stl -6
  k_ldli 0
  k_stl -14
SENMAIN_L_A69F:
  k_leal -10
  k_pushl
  k_ldl -14
  k_popr
  k_add
  k_derefb
  k_stl -12
  k_ldl -12
  k_ldriw $00FF
  k_eq
  k_jumpt SENMAIN_L_A6CA
  k_ldlarg 17
  k_shl1
  k_ldriw SENMAIN_D_CA8E
  k_add
  k_deref
  k_stl -8
  k_ldl -12
  k_shl1
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_pushi 2
  k_push -6
  k_pushib 126
  k_push -8
  k_pusha g_fh_cbmap0
  k_callx RF_3FC8, 10
SENMAIN_L_A6CA:
  k_ldl -6
  k_addli 2
  k_stl -6
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -14
  k_ldri 2
  k_lt
  k_jumpt SENMAIN_L_A69F
  k_pushib 126
  k_leal -4
  k_pushl
  k_pushi 1
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_pushi 6
  k_callx syscall, 16  ; sys 6 tilemap_copy
  k_return
; vars: g_ships | calls 1
SENMAIN_F_A6E7:
  k_func 14
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_A6FF
  k_ldl -2
  k_derefb
  k_jumpt SENMAIN_L_A700
SENMAIN_L_A6FF:
  k_return
SENMAIN_L_A700:
  k_ldlarg 11
  k_ldri 5
  k_umod
  k_pushl
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A70E
  k_ldli 0
  k_jump SENMAIN_L_A70F
SENMAIN_L_A70E:
  k_ldli 5
SENMAIN_L_A70F:
  k_popr
  k_add
  k_stl -14
  k_ldlarg 13
  k_jumpf SENMAIN_L_A724
  k_ldla $F440
  k_ldri 15
  k_smod
  k_stl -4
  k_ldla $F440
  k_ldri 15
  k_sdiv
  k_jump SENMAIN_L_A732
SENMAIN_L_A724:
  k_ldl -14
  k_ldriw $F42C
  k_add
  k_derefb
  k_stl -12
  k_ldl -12
  k_ldri 15
  k_umod
  k_stl -4
  k_ldl -12
  k_ldri 15
  k_udiv
SENMAIN_L_A732:
  k_stl -6
  k_ldl -4
  k_shl1
  k_inc
  k_stl -8
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -4
  k_ldri 1
  k_and
  k_jumpf SENMAIN_L_A744
  k_ldli 3
  k_jump SENMAIN_L_A745
SENMAIN_L_A744:
  k_ldli 2
SENMAIN_L_A745:
  k_popr
  k_add
  k_stl -10
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A752
  k_ldli 0
  k_jump SENMAIN_L_A753
SENMAIN_L_A752:
  k_ldli 1
SENMAIN_L_A753:
  k_pushl
  k_ldl -2
  k_derefb
  k_pushl
  k_push -10
  k_push -8
  k_callx SENMAIN_F_A621, 8
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A767
  k_ldli 2
  k_jump SENMAIN_L_A768
SENMAIN_L_A767:
  k_ldli 3
SENMAIN_L_A768:
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_pushl
  k_ldl -10
  k_inc
  k_pushl
  k_push -8
  k_callx SENMAIN_F_A621, 8
  k_return
; vars: g_fh_cbmap0 | calls 1
SENMAIN_F_A776:
  k_func 0
  k_pusha g_fh_cbmap0
  k_pushiw $18B0
  k_pushi 2
  k_pushi 2
  k_pusharg 13
  k_pusharg 11
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
; vars: g_ships | calls 2
SENMAIN_F_A78B:
  k_func 14
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -14
  k_ldl -14
  k_derefb
  k_jumpt SENMAIN_L_A79E
  k_return
SENMAIN_L_A79E:
  k_ldlarg 11
  k_ldri 5
  k_umod
  k_pushl
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A7AC
  k_ldli 0
  k_jump SENMAIN_L_A7AD
SENMAIN_L_A7AC:
  k_ldli 5
SENMAIN_L_A7AD:
  k_popr
  k_add
  k_stl -12
  k_ldlarg 13
  k_jumpf SENMAIN_L_A7C2
  k_ldla $F440
  k_ldri 15
  k_smod
  k_stl -2
  k_ldla $F440
  k_ldri 15
  k_sdiv
  k_jump SENMAIN_L_A7D0
SENMAIN_L_A7C2:
  k_ldl -12
  k_ldriw $F42C
  k_add
  k_derefb
  k_stl -10
  k_ldl -10
  k_ldri 15
  k_umod
  k_stl -2
  k_ldl -10
  k_ldri 15
  k_udiv
SENMAIN_L_A7D0:
  k_stl -4
  k_ldl -2
  k_shl1
  k_inc
  k_stl -6
  k_ldl -4
  k_shl1
  k_pushl
  k_ldl -2
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_A7E2
  k_ldli 3
  k_jump SENMAIN_L_A7E3
SENMAIN_L_A7E2:
  k_ldli 2
SENMAIN_L_A7E3:
  k_popr
  k_add
  k_stl -8
  k_ldl -14
  k_addli 4
  k_deref
  k_jumpt SENMAIN_L_A7F6
  k_pusharg 11
  k_push -8
  k_push -6
  k_callx SENMAIN_F_A776, 6
  k_jump SENMAIN_L_A804
SENMAIN_L_A7F6:
  k_pusharg 11
  k_ldl -12
  k_ldriw $F436
  k_add
  k_derefb
  k_pushl
  k_push -8
  k_push -6
  k_callx SENMAIN_F_A525, 8
SENMAIN_L_A804:
  k_return
; sys: wait_frames | calls 2
SENMAIN_F_A805:
  k_func 0
  k_pushi 0
  k_pusharg 11
  k_callx SENMAIN_F_A6E7, 4
  k_pushib 24
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_pushi 0
  k_pusharg 11
  k_callx SENMAIN_F_A78B, 4
  k_return
; calls 3
SENMAIN_F_A81F:
  k_func 0
  k_pushi 1
  k_pusharg 11
  k_callx SENMAIN_F_A6E7, 4
  k_pusharg 13
  k_callx SENMAIN_F_A805, 2
  k_pushi 1
  k_pusharg 11
  k_callx SENMAIN_F_A78B, 4
  k_return
; vars: g_cargo
SENMAIN_F_A836:
  k_func 8
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A845
  k_ldlarg 11
  k_jump SENMAIN_L_A846
SENMAIN_L_A845:
  k_ldlarg 13
SENMAIN_L_A846:
  k_stl -6
  k_ldl -6
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -4
  k_ldl -4
  k_derefb
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stl -2
  k_ldl -2
  k_inc
  k_derefb
  k_stlba $F442
  k_ldl -2
  k_addli 2
  k_derefb
  k_stlba $F444
  k_ldl -2
  k_addli 4
  k_derefb
  k_stlba $F446
  k_ldl -2
  k_addli 5
  k_derefb
  k_stlba $F448
  k_ldl -4
  k_addlib 22
  k_derefb
  k_stlba $F44A
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_stlba $F44C
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A88E
  k_ldlarg 13
  k_jump SENMAIN_L_A88F
SENMAIN_L_A88E:
  k_ldlarg 11
SENMAIN_L_A88F:
  k_stl -6
  k_ldl -6
  k_ldra $F450
  k_eq
  k_jumpf SENMAIN_L_A89D
  k_ldlib 75
  k_jump SENMAIN_L_A89F
SENMAIN_L_A89D:
  k_ldlib 65
SENMAIN_L_A89F:
  k_stl -8
  k_ldl -8
  k_stlba $F443
  k_ldl -8
  k_stlba $F445
  k_ldl -8
  k_stlba $F447
  k_ldl -8
  k_stlba $F449
  k_ldlib 80
  k_stlba $F44B
  k_ldl -6
  k_ldri 5
  k_udiv
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_stlba $F44D
  k_return
; vars: g_cargo | calls 2
SENMAIN_F_A8C5:
  k_func 6
  k_ldli 1
  k_stl -6
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A8D4
  k_ldli 0
  k_stl -6
SENMAIN_L_A8D4:
  k_pushi 3
  k_callx rand, 2
  k_pushl
  k_ldl -6
  k_ldriw $F44C
  k_add
  k_derefb
  k_ldri 5
  k_sdiv
  k_inc
  k_pushl
  k_ldl -6
  k_ldriw $F446
  k_add
  k_derefb
  k_pushl
  k_ldl -6
  k_ldriw $F444
  k_add
  k_derefb
  k_pushl
  k_ldl -6
  k_ldriw $F448
  k_add
  k_derefb
  k_shl1
  k_popr
  k_add
  k_popr
  k_add
  k_popr
  k_mul
  k_ldrib 40
  k_sdiv
  k_popr
  k_add
  k_stl -2
  k_ldl -6
  k_jumpt SENMAIN_L_A91F
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_jumpt SENMAIN_L_A927
  k_pushi 2
  k_callx item_best_power, 2
  k_ldr -2
  k_mul
  k_jump SENMAIN_L_A921
SENMAIN_L_A91F:
  k_ldl -2
  k_shl1
SENMAIN_L_A921:
  k_ldri 8
  k_sdiv
  k_swap
  k_ldl -2
  k_add
  k_stl -2
SENMAIN_L_A927:
  k_ldl -6
  k_ldriw $F44A
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_popr
  k_mul
  k_ldriw $0096
  k_sdiv
  k_stl -4
  k_ldl -2
  k_long $25
  k_long $14
  k_ldl -4
  k_long $25
  k_long $15
  k_long $01
  k_longd $19, $00000064
  k_long $02
  k_longd $19, $00000001
  k_long $03
  k_long $27
  k_return
; vars: g_ships, g_cargo | calls 2
SENMAIN_F_A95C:
  k_func 8
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_pusharg 11
  k_callx SENMAIN_F_A8C5, 2
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_addli 4
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_A9CF
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpt SENMAIN_L_A9CF
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stl -6
  k_ldl -6
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_ldrib 50
  k_ne
  k_jumpf SENMAIN_L_A9CF
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_addlib -4
  k_stl -4
  k_ldl -4
  k_ldr -4
  k_mul
  k_ldrib 100
  k_mul
  k_stl -8
  k_ldl -6
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_deref
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_ldl -6
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_pushl
  k_pushiw $EA60
  k_push -8
  k_callx RL_8962, 4
  k_popstore
SENMAIN_L_A9CF:
  k_return
; calls 3
SENMAIN_F_A9D0:
  k_func 0
  k_pusharg 13
  k_pusharg 11
  k_callx SENMAIN_F_A836, 4
  k_pusharg 13
  k_pusharg 11
  k_callx SENMAIN_F_A95C, 4
  k_pusharg 11
  k_pusharg 13
  k_callx SENMAIN_F_A95C, 4
  k_pusharg 13
  k_pusharg 11
  k_callx SENMAIN_F_A81F, 4
  k_return
; vars: g_ships, g_cargo | calls 6
SENMAIN_F_A9EE:
  k_func 18
  k_pusharg 13
  k_pusharg 11
  k_callx SENMAIN_F_A836, 4
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_AA03
  k_ldli 0
  k_jump SENMAIN_L_AA04
SENMAIN_L_AA03:
  k_ldli 1
SENMAIN_L_AA04:
  k_stl -16
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -18
  k_ldl -16
  k_ldriw $F442
  k_add
  k_derefb
  k_pushl
  k_ldl -16
  k_ldriw $F446
  k_add
  k_derefb
  k_shl1
  k_popr
  k_add
  k_stl -2
  k_ldl -2
  k_ldri 15
  k_sdiv
  k_pushl
  k_pushi 5
  k_callx rand, 2
  k_pushl
  k_ldl -16
  k_ldriw $F44C
  k_add
  k_derefb
  k_ldri 5
  k_sdiv
  k_inc
  k_ldr -2
  k_mul
  k_ldrib 40
  k_sdiv
  k_popr
  k_add
  k_popr
  k_add
  k_stl -4
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stl -6
  k_ldl -16
  k_jumpt SENMAIN_L_AA60
  k_ldl -6
  k_jumpt SENMAIN_L_AA60
  k_pushib 100
  k_pushi 3
  k_callx item_best_power, 2
  k_ldr -4
  k_mul
  k_ldri 3
  k_shr
  k_ldr -4
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stl -4
SENMAIN_L_AA60:
  k_ldl -16
  k_jumpf SENMAIN_L_AA72
  k_pushib 100
  k_ldl -4
  k_shl1
  k_ldri 3
  k_shr
  k_ldr -4
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stl -4
SENMAIN_L_AA72:
  k_pushi 3
  k_callx rand, 2
  k_pushl
  k_ldl -16
  k_ldriw $F44A
  k_add
  k_derefb
  k_pushl
  k_ldl -18
  k_addli 4
  k_deref
  k_pushl
  k_ldl -18
  k_addli 3
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_ldri 1
  k_shr
  k_popr
  k_mul
  k_ldrib 100
  k_udiv
  k_ldr -4
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_add
  k_stl -8
  k_ldl -18
  k_addli 6
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_ldri 3
  k_eq
  k_jumpf SENMAIN_L_AAAB
  k_ldli 2
  k_swap
  k_ldl -8
  k_mul
  k_stl -8
SENMAIN_L_AAAB:
  k_ldl -16
  k_jumpf SENMAIN_L_AACA
  k_ldlarg 13
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_jumpt SENMAIN_L_AACA
  k_ldl -8
  k_ldri 10
  k_sdiv
  k_pushl
  k_pushi 1
  k_callx item_best_power, 2
  k_popr
  k_mul
  k_swap
  k_ldl -8
  k_sub
  k_stl -8
SENMAIN_L_AACA:
  k_ldl -16
  k_jumpt SENMAIN_L_AAD6
  k_ldl -8
  k_ldri 10
  k_sdiv
  k_shl1
  k_swap
  k_ldl -8
  k_sub
  k_stl -8
SENMAIN_L_AAD6:
  k_ldl -8
  k_ldri 2
  k_sdiv
  k_stl -12
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -18
  k_push -8
  k_ldl -18
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -18
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_pushi 3
  k_callx rand, 2
  k_ldr -12
  k_add
  k_pushl
  k_ldl -18
  k_addli 4
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -18
  k_addli 4
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_pushi 3
  k_callx rand, 2
  k_ldr -12
  k_add
  k_pushl
  k_ldl -18
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -18
  k_addli 2
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_pushi 3
  k_callx rand, 2
  k_ldr -12
  k_add
  k_pushl
  k_ldl -18
  k_inc
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -18
  k_inc
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_pusharg 13
  k_callx SENMAIN_F_A805, 2
  k_ldl -18
  k_derefb
  k_jumpt SENMAIN_L_AB7F
  k_ldla $F308
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_AB54
  k_ldli 3
  k_jump SENMAIN_L_AB55
SENMAIN_L_AB54:
  k_ldli 2
SENMAIN_L_AB55:
  k_popr
  k_add
  k_pushl
  k_ldla $F304
  k_shl1
  k_inc
  k_pushl
  k_callx SENMAIN_F_A553, 4
  k_ldlarg 13
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_AB7F
  k_pushiw $00FE
  k_ldlarg 13
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
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
SENMAIN_L_AB7F:
  k_ldl -18
  k_derefb
  k_jumpf SENMAIN_L_AB8A
  k_ldl -18
  k_addli 4
  k_deref
  k_jumpt SENMAIN_L_ABCC
SENMAIN_L_AB8A:
  k_ldl -16
  k_jumpt SENMAIN_L_ABCC
  k_ldl -6
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_ldrib 50
  k_ne
  k_jumpf SENMAIN_L_ABCC
  k_ldl -18
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_addlib -4
  k_stl -10
  k_ldl -10
  k_ldr -10
  k_mul
  k_ldrib 100
  k_mul
  k_stl -14
  k_ldl -6
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_deref
  k_ldr -14
  k_add
  k_stl -14
  k_ldl -6
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_pushl
  k_longd $18, $0000EA60
  k_long $14
  k_push -14
  k_callx RL_8962, 6
  k_popstore
SENMAIN_L_ABCC:
  k_return
; vars: g_ships
SENMAIN_F_ABCD:
  k_func 2
  k_ldla $F44E
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_ABE7
  k_ldl -2
  k_derefb
  k_jumpt SENMAIN_L_ABED
SENMAIN_L_ABE7:
  k_ldli 5
  k_stlba $F300
  k_ldli 1
  k_return
SENMAIN_L_ABED:
  k_ldla $F450
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_AC02
  k_ldl -2
  k_derefb
  k_jumpt SENMAIN_L_AC08
SENMAIN_L_AC02:
  k_ldli 4
  k_stlba $F300
  k_ldli 1
  k_return
SENMAIN_L_AC08:
  k_ldli 0
  k_return
SENMAIN_F_AC0A:
  k_func 0
  k_ldlarg 11
  k_ldrib 16
  k_uge
  k_jumpf SENMAIN_L_AC18
  k_ldli 0
  k_return
SENMAIN_L_AC18:
  k_ldlarg 11
  k_dec
  k_ldri 5
  k_umod
  k_ldri 2
  k_ule
  k_jumpf SENMAIN_L_AC25
  k_ldli 2
  k_jump SENMAIN_L_AC26
SENMAIN_L_AC25:
  k_ldli 1
SENMAIN_L_AC26:
  k_return
; vars: g_ships | calls 5
SENMAIN_F_AC27:
  k_func 16
  k_ldlba $F41E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx SENMAIN_F_AC0A, 2
  k_stl -14
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENMAIN_L_ACFC
SENMAIN_L_AC43:
  k_call SENMAIN_F_ABCD
  k_jumpf SENMAIN_L_AC4B
  k_ldli 0
  k_return
SENMAIN_L_AC4B:
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -16
  k_ldl -16
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_ACF9
  k_ldl -16
  k_derefb
  k_jumpf SENMAIN_L_ACF9
  k_ldl -2
  k_derefb
  k_ldri 5
  k_umod
  k_addli 5
  k_stl -12
  k_ldl -12
  k_ldriw $F42C
  k_add
  k_stl -6
  k_ldl -6
  k_derefb
  k_stla $F440
  k_ldl -6
  k_derefb
  k_ldri 15
  k_umod
  k_stla $F304
  k_ldl -6
  k_derefb
  k_ldri 15
  k_udiv
  k_stla $F308
  k_ldl -2
  k_derefb
  k_ldra $F450
  k_eq
  k_jumpf SENMAIN_L_ACC7
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_ldrib 20
  k_le
  k_jumpt SENMAIN_L_ACA5
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_ldrib 20
  k_le
  k_jumpf SENMAIN_L_ACC7
SENMAIN_L_ACA5:
  k_ldla $F304
  k_jumpf SENMAIN_L_ACC1
  k_ldla $F308
  k_jumpf SENMAIN_L_ACC1
  k_ldla $F304
  k_ldri 14
  k_eq
  k_jumpt SENMAIN_L_ACC1
  k_ldla $F308
  k_ldri 8
  k_eq
  k_jumpf SENMAIN_L_ACC7
SENMAIN_L_ACC1:
  k_ldli 2
  k_stlba $F300
  k_ldli 0
  k_return
SENMAIN_L_ACC7:
  k_ldl -2
  k_derefb
  k_pushl
  k_push -14
  k_callx SENMAIN_F_C92B, 4
  k_stl -10
  k_ldl -2
  k_derefb
  k_pushl
  k_ldl -10
  k_ldri 15
  k_udiv
  k_pushl
  k_ldl -10
  k_ldri 15
  k_umod
  k_pushl
  k_callx SENMAIN_F_C627, 6
  k_ldl -2
  k_derefb
  k_pushl
  k_callx SENMAIN_F_C264, 2
  k_push -6
  k_ldla $F308
  k_ldri 15
  k_mul
  k_ldra $F304
  k_add
  k_popstoreb
  k_call SENMAIN_F_ABCD
  k_jumpf SENMAIN_L_ACF9
  k_ldli 0
  k_return
SENMAIN_L_ACF9:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_ACFC:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_AC43
  k_ldli 1
  k_return
; vars: g_ships | calls 2
SENMAIN_F_AD04:
  k_func 12
  k_ldli 1
  k_stl -2
  k_ldliw $F41E
  k_stl -4
  k_ldra $F428
  k_add
  k_stl -6
  k_jump SENMAIN_L_AD72
SENMAIN_L_AD17:
  k_call SENMAIN_F_ABCD
  k_jumpf SENMAIN_L_AD22
SENMAIN_L_AD1D:
  k_ldli 0
  k_stl -2
  k_jump SENMAIN_L_AD78
SENMAIN_L_AD22:
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -12
  k_ldl -12
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_AD6F
  k_ldl -12
  k_derefb
  k_jumpf SENMAIN_L_AD6F
  k_ldl -4
  k_derefb
  k_ldri 5
  k_umod
  k_stl -10
  k_ldl -10
  k_ldriw $F42C
  k_add
  k_stl -8
  k_ldl -8
  k_derefb
  k_stla $F440
  k_ldl -8
  k_derefb
  k_ldri 15
  k_umod
  k_stla $F304
  k_ldl -8
  k_derefb
  k_ldri 15
  k_udiv
  k_stla $F308
  k_ldl -4
  k_derefb
  k_pushl
  k_callx SENMAIN_F_BCAE, 2
  k_jumpt SENMAIN_L_AD1D
  k_push -8
  k_ldla $F308
  k_ldri 15
  k_mul
  k_ldra $F304
  k_add
  k_popstoreb
  k_call SENMAIN_F_ABCD
  k_jumpt SENMAIN_L_AD1D
SENMAIN_L_AD6F:
  k_ldl -4
  k_inc
  k_stl -4
SENMAIN_L_AD72:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt SENMAIN_L_AD17
SENMAIN_L_AD78:
  k_call $97F5
  k_ldl -2
  k_return
; calls 3
SENMAIN_F_AD7D:
  k_func 0
  k_pushiw $F41E
  k_pusharg 11
  k_callx RL_8502, 4
  k_stla $F428
  k_pushiw $F423
  k_pusharg 13
  k_callx RL_8502, 4
  k_stla $F42A
  k_ldlarg 11
  k_jumpf SENMAIN_L_ADA0
  k_call SENMAIN_F_AC27
  k_return
SENMAIN_L_ADA0:
  k_call SENMAIN_F_AD04
  k_return
; calls 1
SENMAIN_F_ADA4:
  k_func 0
  k_ldlba $EA8E
  k_shl1
  k_pushl
  k_ldlib 35
  k_popr
  k_sub
  k_jump SENMAIN_L_ADE6
SENMAIN_L_ADB5:
  k_pusha $F30E
  k_pushi 2
  k_pushib 22
  k_pushi 10
  k_callx $9994, 8
  k_pusha $F30E
  k_callx $9A93, 2
  k_pusharg 13
  k_pusharg 11
  k_callx SENMAIN_F_AD7D, 4
  k_jumpt SENMAIN_L_ADD1
  k_return
SENMAIN_L_ADD1:
  k_pusharg 11
  k_pusharg 13
  k_callx SENMAIN_F_AD7D, 4
  k_jumpt SENMAIN_L_ADDB
  k_return
SENMAIN_L_ADDB:
  k_ldlba $EA8E
  k_inc
  k_stlba $EA8E
  k_ldla $F30E
  k_dec
SENMAIN_L_ADE6:
  k_stla $F30E
  k_ldla $F30E
  k_jumpt SENMAIN_L_ADB5
  k_ldli 1
  k_stlba $F300
  k_return
; calls 2
SENMAIN_F_ADF4:
  k_func 0
  k_ldlarg 11
  k_jumpt SENMAIN_L_AE07
  k_pushi 10
  k_callx rand, 2
  k_ldri 7
  k_ult
  k_jumpf SENMAIN_L_AE0F
SENMAIN_L_AE07:
  k_ldlba $F197
  k_pushl
  k_pusharg 11
  k_jump SENMAIN_L_AE14
SENMAIN_L_AE0F:
  k_pusharg 11
  k_ldlba $F197
  k_pushl
SENMAIN_L_AE14:
  k_callx SENMAIN_F_ADA4, 4
  k_return
; vars: g_cargo | calls 1
SENMAIN_F_AE19:
  k_func 0
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_ldri 5
  k_udiv
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_ldra $F30C
  k_mul
  k_ldrib 50
  k_udiv
  k_popr
  k_add
  k_addli 6
  k_pushl
  k_pushib 20
  k_callx RL_8962, 4
  k_return
; sys: metasprite_set
SENMAIN_F_AE4B:
  k_func 3
  k_ldlarg 11
  k_ldri 3
  k_shl
  k_stlarg 11
  k_ldlarg 13
  k_ldri 3
  k_shl
  k_dec
  k_stlarg 13
  k_ldliw $370C
  k_stl -2
  k_pushib 126
  k_pushi 2
  k_leal -2
  k_pushl
  k_pushi 1
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_ldla $F572
  k_addlib 23
  k_pushl
  k_pushi 9
  k_callx syscall, 18  ; sys 9 metasprite_set
  k_ldla $F572
  k_inc
  k_stla $F572
  k_return
; sys: sprites_hide
SENMAIN_F_AE7B:
  k_func 0
  k_ldla $F572
  k_jumpf SENMAIN_L_AE91
  k_pusha $F572
  k_pushib 23
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
SENMAIN_L_AE91:
  k_ldli 0
  k_stla $F572
  k_return
; sys: pad_read
SENMAIN_F_AE96:
  k_func 0
SENMAIN_L_AE9B:
  k_pushi 0
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_ldriw $4000
  k_ne
  k_jumpf SENMAIN_L_AEB5
  k_pushi 1
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_ldriw $4000
  k_ne
  k_jumpt SENMAIN_L_AE9B
SENMAIN_L_AEB5:
  k_pushi 0
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_jumpt SENMAIN_L_AEB5
  k_pushi 1
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_jumpt SENMAIN_L_AEB5
  k_return
; calls 3
SENMAIN_F_AEC8:
  k_func 4
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENMAIN_L_AEE8
SENMAIN_L_AED9:
  k_ldl -2
  k_derefb
  k_ldrarg 11
  k_eq
  k_pushl
  k_ldl -2
  k_derefb
  k_pushl
  k_callx SENMAIN_F_A6E7, 4
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_AEE8:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_AED9
  k_ldliw $F423
  k_stl -2
  k_ldra $F42A
  k_add
  k_stl -4
  k_jump SENMAIN_L_AF09
SENMAIN_L_AEFA:
  k_ldl -2
  k_derefb
  k_ldrarg 11
  k_eq
  k_pushl
  k_ldl -2
  k_derefb
  k_pushl
  k_callx SENMAIN_F_A6E7, 4
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_AF09:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_AEFA
  k_call SENMAIN_F_AE96
  k_ldliw $F423
  k_stl -2
  k_ldra $F42A
  k_add
  k_stl -4
  k_jump SENMAIN_L_AF2D
SENMAIN_L_AF1E:
  k_ldl -2
  k_derefb
  k_ldrarg 11
  k_eq
  k_pushl
  k_ldl -2
  k_derefb
  k_pushl
  k_callx SENMAIN_F_A78B, 4
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_AF2D:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_AF1E
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENMAIN_L_AF4E
SENMAIN_L_AF3F:
  k_ldl -2
  k_derefb
  k_ldrarg 11
  k_eq
  k_pushl
  k_ldl -2
  k_derefb
  k_pushl
  k_callx SENMAIN_F_A78B, 4
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_AF4E:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_AF3F
  k_return
; sys: sprite_move, sprites_hide
SENMAIN_F_AF55:
  k_func 2
  k_ldlarg 11
  k_jumpf SENMAIN_L_AF64
  k_ldliw $0120
  k_jump SENMAIN_L_AF67
SENMAIN_L_AF64:
  k_ldliw $010E
SENMAIN_L_AF67:
  k_addliw $3600
  k_stl -2
  k_pushi 0
  k_pushi 2
  k_push -2
  k_pusha $F30A
  k_pusha $F306
  k_pushib 21
  k_pushi 10
  k_callx syscall, 14  ; sys 10 sprite_move
  k_pushi 1
  k_pushib 21
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_return
; sys: sprite_move
SENMAIN_F_AF85:
  k_func 2
  k_ldlarg 11
  k_ldri 3
  k_shl
  k_stla $F306
  k_ldlarg 13
  k_ldri 3
  k_shl
  k_dec
  k_stla $F30A
  k_ldlarg 15
  k_jumpf SENMAIN_L_AFA1
  k_ldliw $0120
  k_jump SENMAIN_L_AFA4
SENMAIN_L_AFA1:
  k_ldliw $010E
SENMAIN_L_AFA4:
  k_addliw $3600
  k_stl -2
  k_pushi 1
  k_pushi 2
  k_push -2
  k_pusha $F30A
  k_pusha $F306
  k_pushib 21
  k_pushi 10
  k_callx syscall, 14  ; sys 10 sprite_move
  k_return
; sys: sprite_move, sprites_hide
SENMAIN_F_AFB9:
  k_func 2
  k_ldliw RL_370E
  k_stl -2
  k_pushi 0
  k_pushi 2
  k_push -2
  k_pusha $F30A
  k_pusha $F306
  k_pushib 21
  k_pushi 10
  k_callx syscall, 14  ; sys 10 sprite_move
  k_pushi 1
  k_pushib 21
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_return
; calls 5
SENMAIN_F_AFDC:
  k_func 2
SENMAIN_L_AFE1:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt SENMAIN_L_AFE1
  k_call $97F5
  k_ldli 0
  k_stl -2
SENMAIN_L_AFEE:
  k_pusharg 13
  k_ldla $F308
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B000
  k_ldli 3
  k_jump SENMAIN_L_B001
SENMAIN_L_B000:
  k_ldli 2
SENMAIN_L_B001:
  k_popr
  k_add
  k_pushl
  k_ldla $F304
  k_shl1
  k_inc
  k_pushl
  k_callx SENMAIN_F_AF85, 6
  k_pushi 6
  k_push -2
  k_callx RF_3D91, 4
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -2
  k_switchn 7
    .word $8000, SENMAIN_L_B043
    .word $0080, SENMAIN_L_B04C
    .word $0100, SENMAIN_L_B08A
    .word $0200, SENMAIN_L_B07A
    .word $0400, SENMAIN_L_B06B
    .word $0800, SENMAIN_L_B05B
    .word $4000, SENMAIN_L_B03B
    .word SENMAIN_L_AFEE
SENMAIN_L_B03B:
  k_pusharg 11
  k_callx SENMAIN_F_AEC8, 2
  k_jump SENMAIN_L_AFEE
SENMAIN_L_B043:
  k_pusharg 13
  k_callx SENMAIN_F_AF55, 2
  k_ldliw $00F0
  k_return
SENMAIN_L_B04C:
  k_pusharg 13
  k_callx SENMAIN_F_AF55, 2
  k_ldla $F308
  k_ldri 15
  k_mul
  k_ldra $F304
  k_add
  k_return
SENMAIN_L_B05B:
  k_ldla $F308
  k_jumpf SENMAIN_L_AFEE
  k_ldla $F308
  k_dec
SENMAIN_L_B065:
  k_stla $F308
  k_jump SENMAIN_L_AFEE
SENMAIN_L_B06B:
  k_ldla $F308
  k_ldri 8
  k_lt
  k_jumpf SENMAIN_L_AFEE
  k_ldla $F308
  k_inc
  k_jump SENMAIN_L_B065
SENMAIN_L_B07A:
  k_ldla $F304
  k_jumpf SENMAIN_L_AFEE
  k_ldla $F304
  k_dec
SENMAIN_L_B084:
  k_stla $F304
  k_jump SENMAIN_L_AFEE
SENMAIN_L_B08A:
  k_ldla $F304
  k_ldri 14
  k_lt
  k_jumpf SENMAIN_L_AFEE
  k_ldla $F304
  k_inc
  k_jump SENMAIN_L_B084
  .byte $D6, $EE, $AF, $CF
; calls 1
SENMAIN_F_B09D:
  k_func 0
  k_ldlarg 11
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_B0E4
  k_ldlarg 11
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_B0E4
  k_ldlarg 13
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_B0E4
  k_ldlarg 13
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_B0E4
  k_ldlarg 13
  k_shl1
  k_pushl
  k_ldlarg 11
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B0C7
  k_ldli 3
  k_jump SENMAIN_L_B0C8
SENMAIN_L_B0C7:
  k_ldli 2
SENMAIN_L_B0C8:
  k_popr
  k_add
  k_pushl
  k_ldlarg 11
  k_shl1
  k_inc
  k_pushl
  k_callx SENMAIN_F_AE4B, 4
  k_pushiw $00FF
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_ldriw $F310
  k_add
  k_popr
  k_pushl
  k_derefb
  k_xor
  k_popstoreb
SENMAIN_L_B0E4:
  k_return
; vars: g_ships
SENMAIN_F_B0E5:
  k_func 8
  k_ldla $F308
  k_ldri 15
  k_mul
  k_ldra $F304
  k_add
  k_stl -8
  k_ldliw $F423
  k_stl -4
  k_ldra $F42A
  k_add
  k_stl -6
  k_jump SENMAIN_L_B128
SENMAIN_L_B100:
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -4
  k_derefb
  k_ldri 5
  k_umod
  k_ldriw $F431
  k_add
  k_derefb
  k_ldr -8
  k_eq
  k_jumpf SENMAIN_L_B125
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_B125
  k_ldl -2
  k_derefb
  k_jumpf SENMAIN_L_B125
  k_ldl -4
  k_derefb
  k_return
SENMAIN_L_B125:
  k_ldl -4
  k_inc
  k_stl -4
SENMAIN_L_B128:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt SENMAIN_L_B100
  k_ldlba $F423
  k_return
; calls 1
SENMAIN_F_B132:
  k_func 4
  k_ldli 1
  k_stl -4
  k_ldlarg 11
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B141
  k_ldli 2
  k_stl -4
SENMAIN_L_B141:
  k_ldli 0
  k_stla $F572
  k_ldli 0
  k_stl -2
SENMAIN_L_B147:
  k_ldl -4
  k_shl1
  k_pushl
  k_ldl -2
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -2
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_pushl
  k_callx SENMAIN_F_B09D, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_B147
  k_return
; vars: g_cargo | calls 9
SENMAIN_F_B170:
  k_func 12
  k_ldla $F304
  k_stl -8
  k_ldla $F308
  k_stl -10
  k_push -10
  k_push -8
  k_callx SENMAIN_F_B132, 4
SENMAIN_L_B183:
  k_call $9793
  k_pushi 1
  k_pushiw SENMAIN_D_CAA6
  k_callx RF_2FB9, 4
  k_pushi 1
  k_pusharg 11
  k_callx SENMAIN_F_AFDC, 4
  k_stl -2
  k_ldl -2
  k_ldriw $00F0
  k_ne
  k_jumpf SENMAIN_L_B1A6
  k_ldl -2
  k_ldriw $F310
  k_add
  k_derefb
  k_jumpt SENMAIN_L_B183
SENMAIN_L_B1A6:
  k_push -10
  k_push -8
  k_callx SENMAIN_F_B132, 4
  k_call SENMAIN_F_AE7B
  k_ldl -2
  k_ldriw $00F0
  k_eq
  k_jumpf SENMAIN_L_B1C1
  k_ldl -8
  k_stla $F304
  k_ldl -10
  k_stla $F308
  k_ldli 0
  k_return
SENMAIN_L_B1C1:
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_ldrib 50
  k_ne
  k_jumpf SENMAIN_L_B1F9
  k_ldl -4
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_deref
  k_addli 2
  k_stl -12
  k_ldl -4
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_pushl
  k_longd $18, $0000EA60
  k_long $14
  k_push -12
  k_callx RL_8962, 6
  k_popstore
SENMAIN_L_B1F9:
  k_call SENMAIN_F_B0E5
  k_stl -6
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A81F, 4
  k_call SENMAIN_F_A51F
  k_pushi 0
  k_push -6
  k_pusharg 11
  k_callx $98AE, 6
  k_call $9E32
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A9D0, 4
  k_pushi 0
  k_push -6
  k_pusharg 11
  k_callx $9AB7, 6
  k_ldl -8
  k_stla $F304
  k_ldl -10
  k_stla $F308
  k_ldli 1
  k_return
; calls 1
SENMAIN_F_B227:
  k_func 10
  k_ldlarg 11
  k_ldri 5
  k_umod
  k_pushl
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_B23A
  k_ldli 0
  k_jump SENMAIN_L_B23B
SENMAIN_L_B23A:
  k_ldli 5
SENMAIN_L_B23B:
  k_popr
  k_add
  k_ldriw $F436
  k_add
  k_derefb
  k_ldri 3
  k_umod
  k_stl -8
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_ldri 1
  k_and
  k_jumpf SENMAIN_L_B25A
  k_ldli 6
  k_jump SENMAIN_L_B25B
SENMAIN_L_B25A:
  k_ldli 14
SENMAIN_L_B25B:
  k_stl -10
  k_ldli 0
  k_stla $F572
  k_ldli 1
  k_stl -6
  k_ldlarg 13
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B26A
  k_ldli 2
  k_stl -6
SENMAIN_L_B26A:
  k_ldl -8
  k_ldri 14
  k_mul
  k_ldriw SENMAIN_D_CA54
  k_add
  k_stl -2
  k_ldr -10
  k_add
  k_stl -4
  k_jump SENMAIN_L_B29C
SENMAIN_L_B278:
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_ldrarg 15
  k_add
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_ldrarg 13
  k_add
  k_pushl
  k_callx SENMAIN_F_B09D, 4
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_B29C:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_B278
  k_return
; vars: g_cargo | calls 9
SENMAIN_F_B2A3:
  k_func 12
  k_ldla $F304
  k_stl -8
  k_ldla $F308
  k_stl -10
  k_push -10
  k_push -8
  k_pusharg 11
  k_callx SENMAIN_F_B227, 6
SENMAIN_L_B2B7:
  k_call $9793
  k_pushi 0
  k_pushiw SENMAIN_D_CAB8
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pusharg 11
  k_callx SENMAIN_F_AFDC, 4
  k_stl -2
  k_ldl -2
  k_ldriw $00F0
  k_ne
  k_jumpf SENMAIN_L_B2DA
  k_ldl -2
  k_ldriw $F310
  k_add
  k_derefb
  k_jumpt SENMAIN_L_B2B7
SENMAIN_L_B2DA:
  k_push -10
  k_push -8
  k_pusharg 11
  k_callx SENMAIN_F_B227, 6
  k_pushi 0
  k_callx SENMAIN_F_AF55, 2
  k_call SENMAIN_F_AE7B
  k_ldl -2
  k_ldriw $00F0
  k_eq
  k_jumpf SENMAIN_L_B2FB
  k_ldl -8
  k_stla $F304
  k_ldl -10
  k_stla $F308
  k_ldli 0
  k_return
SENMAIN_L_B2FB:
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_ldrib 50
  k_ne
  k_jumpf SENMAIN_L_B333
  k_ldl -4
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_deref
  k_addli 2
  k_stl -12
  k_ldl -4
  k_ldri 10
  k_mul
  k_ldriw $EAC6
  k_add
  k_pushl
  k_longd $18, $0000EA60
  k_long $14
  k_push -12
  k_callx RL_8962, 6
  k_popstore
SENMAIN_L_B333:
  k_call SENMAIN_F_B0E5
  k_stl -6
  k_push -6
  k_callx SENMAIN_F_A511, 2
  k_pushi 1
  k_push -6
  k_pusharg 11
  k_callx $98AE, 6
  k_call $9B3A
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A9EE, 4
  k_pushi 1
  k_push -6
  k_pusharg 11
  k_callx $9AB7, 6
  k_ldl -8
  k_stla $F304
  k_ldl -10
  k_stla $F308
  k_ldli 1
  k_return
; calls 4
SENMAIN_F_B35D:
  k_func 0
  k_call SENMAIN_F_C425
  k_jumpf SENMAIN_L_B36E
  k_pusharg 11
  k_callx SENMAIN_F_B170, 2
  k_return
SENMAIN_L_B36E:
  k_pusharg 11
  k_callx SENMAIN_F_C3A1, 2
  k_jumpf SENMAIN_L_B37C
  k_pusharg 11
  k_callx SENMAIN_F_B2A3, 2
  k_return
SENMAIN_L_B37C:
  k_ldli 0
  k_return
; sys: metasprite_set
SENMAIN_F_B37E:
  k_func 4
  k_ldli 8
  k_swap
  k_ldlarg 11
  k_mul
  k_stlarg 11
  k_ldlarg 13
  k_ldri 3
  k_shl
  k_dec
  k_stlarg 13
  k_ldlarg 15
  k_shl1
  k_addliw $3700
  k_stl -2
  k_pushib 126
  k_pushi 2
  k_leal -2
  k_pushl
  k_pushi 1
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_pushib 22
  k_pushi 9
  k_callx syscall, 18  ; sys 9 metasprite_set
  k_return
; sys: sprites_hide | calls 4
SENMAIN_F_B3A6:
  k_func 8
  k_ldlarg 11
  k_stla $F574
  k_ldla $F304
  k_shl1
  k_inc
  k_stl -2
  k_ldla $F308
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B3C6
  k_ldli 3
  k_jump SENMAIN_L_B3C7
SENMAIN_L_B3C6:
  k_ldli 2
SENMAIN_L_B3C7:
  k_popr
  k_add
  k_stl -4
SENMAIN_L_B3CA:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt SENMAIN_L_B3CA
  k_ldli 0
  k_stl -8
SENMAIN_L_B3D4:
  k_pusha $F574
  k_push -4
  k_push -2
  k_callx SENMAIN_F_B37E, 6
SENMAIN_L_B3DD:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt SENMAIN_L_B3DD
  k_pushi 6
  k_push -8
  k_callx RF_3D91, 4
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -8
  k_switchn 13
    .word $8000, SENMAIN_L_B4A5
    .word $0010, SENMAIN_L_B432
    .word $0020, SENMAIN_L_B448
    .word $0080, SENMAIN_L_B4B2
    .word $0100, SENMAIN_L_B45F
    .word $0200, SENMAIN_L_B480
    .word $0400, SENMAIN_L_B45B
    .word $0500, SENMAIN_L_B478
    .word $0600, SENMAIN_L_B498
    .word $0800, SENMAIN_L_B441
    .word $0900, SENMAIN_L_B47C
    .word $0A00, SENMAIN_L_B457
    .word $4000, SENMAIN_L_B42A
    .word SENMAIN_L_B3D4
SENMAIN_L_B42A:
  k_pusharg 13
  k_callx SENMAIN_F_AEC8, 2
  k_jump SENMAIN_L_B3D4
SENMAIN_L_B432:
  k_ldla $F574
  k_inc
  k_stla $F574
  k_ldla $F574
  k_ldri 5
  k_gt
  k_jumpf SENMAIN_L_B3D4
SENMAIN_L_B441:
  k_ldli 0
SENMAIN_L_B442:
  k_stla $F574
  k_jump SENMAIN_L_B3D4
SENMAIN_L_B448:
  k_ldla $F574
  k_dec
  k_stla $F574
  k_ldla $F574
  k_ldri 0
  k_lt
  k_jumpf SENMAIN_L_B3D4
SENMAIN_L_B457:
  k_ldli 5
  k_jump SENMAIN_L_B442
SENMAIN_L_B45B:
  k_ldli 3
  k_jump SENMAIN_L_B442
SENMAIN_L_B45F:
  k_ldla $F574
  k_ldri 3
  k_gt
  k_jumpf SENMAIN_L_B470
  k_ldli 3
  k_swap
  k_ldla $F574
  k_sub
  k_jump SENMAIN_L_B442
SENMAIN_L_B470:
  k_ldla $F574
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B47C
SENMAIN_L_B478:
  k_ldli 2
  k_jump SENMAIN_L_B442
SENMAIN_L_B47C:
  k_ldli 1
  k_jump SENMAIN_L_B442
SENMAIN_L_B480:
  k_ldla $F574
  k_ldri 3
  k_ge
  k_pushl
  k_ldla $F574
  k_ldri 0
  k_eq
  k_popr
  k_or
  k_jumpf SENMAIN_L_B49C
  k_ldla $F574
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B457
SENMAIN_L_B498:
  k_ldli 4
  k_jump SENMAIN_L_B442
SENMAIN_L_B49C:
  k_ldli 3
  k_swap
  k_ldla $F574
  k_add
  k_jump SENMAIN_L_B442
SENMAIN_L_B4A5:
  k_pushi 1
  k_pushib 22
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_ldliw $00FF
  k_return
SENMAIN_L_B4B2:
  k_ldli 5
  k_stl -6
SENMAIN_L_B4B4:
  k_ldlarg 11
  k_ldr -6
  k_add
  k_ldri 6
  k_umod
  k_ldra $F574
  k_eq
  k_jumpf SENMAIN_L_B4CD
  k_pushi 1
  k_pushib 22
  k_pushib 58
  k_callx syscall, 6  ; sys 58 sprites_hide
  k_ldl -6
  k_addlib -5
  k_return
SENMAIN_L_B4CD:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 8
  k_ult
  k_jumpt SENMAIN_L_B4B4
  k_jump SENMAIN_L_B3D4
; vars: g_ships | calls 1
SENMAIN_F_B4D9:
  k_func 20
  k_ldli 0
  k_stla $F572
  k_ldli 1
  k_stl -8
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B4EE
  k_ldli 2
  k_stl -8
SENMAIN_L_B4EE:
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -20
  k_ldl -20
  k_inc
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_ldrib 25
  k_udiv
  k_inc
  k_stl -12
  k_ldl -20
  k_addli 2
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_stl -14
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_stl -2
  k_jump SENMAIN_L_B5A7
SENMAIN_L_B513:
  k_ldl -4
  k_ldri 1
  k_ne
  k_jumpf SENMAIN_L_B51D
  k_ldl -12
  k_jump SENMAIN_L_B51E
SENMAIN_L_B51D:
  k_ldli 0
SENMAIN_L_B51E:
  k_stl -6
  k_ldlarg 11
  k_ldriw $F436
  k_add
  k_derefb
  k_ldr -4
  k_add
  k_addli 5
  k_ldri 6
  k_umod
  k_stl -10
  k_ldl -10
  k_ldriw $F452
  k_add
  k_derefb
  k_ldr -14
  k_mul
  k_ldrib 60
  k_udiv
  k_inc
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldlarg 13
  k_ldr -6
  k_uge
  k_jumpf SENMAIN_L_B5A4
  k_ldl -10
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F304
  k_add
  k_stl -16
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -10
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F308
  k_add
  k_stl -18
  k_ldl -16
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_B5A4
  k_ldl -16
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_B5A4
  k_ldl -18
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_B5A4
  k_ldl -18
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_B5A4
  k_ldl -18
  k_ldri 15
  k_mul
  k_ldr -16
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_ldriw $0080
  k_ule
  k_jumpf SENMAIN_L_B5A4
  k_ldl -18
  k_shl1
  k_pushl
  k_ldl -16
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B596
  k_ldli 3
  k_jump SENMAIN_L_B597
SENMAIN_L_B596:
  k_ldli 2
SENMAIN_L_B597:
  k_popr
  k_add
  k_pushl
  k_ldl -16
  k_shl1
  k_inc
  k_pushl
  k_callx SENMAIN_F_AE4B, 4
  k_ldli 1
  k_stl -2
SENMAIN_L_B5A4:
  k_ldl -4
  k_inc
  k_stl -4
SENMAIN_L_B5A7:
  k_ldl -4
  k_ldri 3
  k_ult
  k_jumpt SENMAIN_L_B513
  k_ldl -2
  k_return
; vars: g_ships | calls 9
SENMAIN_F_B5AF:
  k_func 14
  k_pusharg 11
  k_callx SENMAIN_F_AE19, 2
  k_stla $F458
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -14
  k_ldl -14
  k_inc
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_ldrib 25
  k_udiv
  k_inc
  k_stl -10
  k_ldl -14
  k_addli 2
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_stl -12
  k_call $97F5
  k_call $9793
  k_ldli 0
  k_stl -2
SENMAIN_L_B5E2:
  k_ldla $F458
  k_jumpt SENMAIN_L_B5EF
  k_jump SENMAIN_L_B687
SENMAIN_L_B5EB:
  k_ldli 1
  k_jump SENMAIN_L_B693
SENMAIN_L_B5EF:
  k_pushib 26
  k_pushi 13
  k_callx RF_2F8F, 4
  k_pusha $F458
  k_pushiw SENMAIN_D_CACC
  k_callx RF_3619, 4
  k_pusha $F458
  k_pusharg 11
  k_callx SENMAIN_F_B4D9, 4
  k_jumpt SENMAIN_L_B60F
  k_ldl -2
  k_jumpt SENMAIN_L_B687
SENMAIN_L_B60F:
  k_pusharg 11
  k_ldlarg 11
  k_ldriw $F436
  k_add
  k_derefb
  k_pushl
  k_callx SENMAIN_F_B3A6, 4
  k_stl -4
  k_call SENMAIN_F_AE7B
  k_pusha $F458
  k_pusharg 11
  k_callx SENMAIN_F_B4D9, 4
  k_call SENMAIN_F_AE7B
  k_ldl -4
  k_ldriw $00FF
  k_eq
  k_jumpt SENMAIN_L_B687
  k_ldli 1
  k_stl -2
  k_ldl -4
  k_ldri 1
  k_ne
  k_jumpf SENMAIN_L_B63E
  k_ldl -10
  k_jump SENMAIN_L_B63F
SENMAIN_L_B63E:
  k_ldli 0
SENMAIN_L_B63F:
  k_stl -8
  k_ldlarg 11
  k_ldriw $F436
  k_add
  k_derefb
  k_ldr -4
  k_add
  k_addli 5
  k_ldri 6
  k_umod
  k_stl -6
  k_ldl -6
  k_ldriw $F452
  k_add
  k_derefb
  k_ldr -12
  k_mul
  k_ldrib 60
  k_udiv
  k_inc
  k_swap
  k_ldl -8
  k_add
  k_stl -8
  k_ldl -8
  k_ldra $F458
  k_ule
  k_jumpf SENMAIN_L_B5E2
  k_ldl -8
  k_swap
  k_ldla $F458
  k_sub
  k_stla $F458
  k_ldlarg 11
  k_ldriw $F436
  k_add
  k_pushl
  k_ldl -6
  k_popstoreb
  k_pushiw $03C0
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A564, 6
  k_jumpf SENMAIN_L_B687
  k_call SENMAIN_F_C425
  k_jumpf SENMAIN_L_B5E2
SENMAIN_L_B687:
  k_call $97B7
  k_pusharg 11
  k_callx SENMAIN_F_B35D, 2
  k_jumpt SENMAIN_L_B5EB
  k_ldl -2
SENMAIN_L_B693:
  k_return
SENMAIN_F_B694:
  k_func 0
  k_ldli 1
  k_return
; sys: pad_read, tilemap_write, wait_frames
SENMAIN_F_B69B:
  k_func 0
  k_jump SENMAIN_L_B6D6
SENMAIN_L_B6A3:
  k_pushi 1
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_jumpt SENMAIN_L_B6DF
  k_pushi 0
  k_pushiw $00E4
  k_pushi 1
  k_pushi 1
  k_pushib 27
  k_pushib 21
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushi 3
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_pushi 0
  k_pushi 0
  k_pushi 1
  k_pushi 1
  k_pushib 27
  k_pushib 21
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushi 3
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
SENMAIN_L_B6D6:
  k_pushi 0
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_jumpf SENMAIN_L_B6A3
SENMAIN_L_B6DF:
  k_pushi 0
  k_pushi 0
  k_pushi 1
  k_pushi 1
  k_pushib 27
  k_pushib 21
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
SENMAIN_L_B6EC:
  k_pushi 0
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_jumpt SENMAIN_L_B6EC
  k_pushi 1
  k_pushi 15
  k_callx syscall, 4  ; sys 15 pad_read
  k_jumpt SENMAIN_L_B6EC
  k_return
; sys: window_shape, color_math | vars: g_fh_cbmap0 | calls 2
SENMAIN_F_B6FF:
  k_func 0
  k_pushi 0
  k_callx $96B7, 2
  k_pusha g_fh_cbmap0
  k_pushiw $0D70
  k_pushi 4
  k_pushib 19
  k_pushib 22
  k_pushi 12
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pushib 32
  k_pushiw $00CD
  k_pushiw $00F5
  k_pushiw $00B3
  k_pushib 99
  k_pushib 38
  k_callx syscall, 14  ; sys 38 window_shape
  k_pushib 71
  k_pushib 82
  k_pushib 32
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushi 1
  k_pushiw SENMAIN_D_CAD9
  k_callx RF_2FB9, 4
  k_return
; sys: tilemap_write, color_math, window_off
SENMAIN_F_B743:
  k_func 0
  k_pushi 0
  k_pushi 4
  k_pushib 19
  k_pushib 22
  k_pushi 12
  k_pushi 1
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_pushiw $00E0
  k_pushi 0
  k_pushib 48
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
  k_pushi 1
  k_callx $96B7, 2
  k_return
; calls 2
SENMAIN_F_B76D:
  k_func 0
  k_pushib 20
  k_pushib 20
  k_pushi 1
  k_pushi 6
  k_callx RF_4D8B, 8
  k_call SENMAIN_F_B6FF
  k_return
; sys: window_shape, color_math | vars: g_fh_cbmap0 | calls 2
SENMAIN_F_B780:
  k_func 2
  k_ldlbf 11
  k_jumpf SENMAIN_L_B78F
  k_ldli 1
  k_jump SENMAIN_L_B790
SENMAIN_L_B78F:
  k_ldli 8
SENMAIN_L_B790:
  k_stlbf -1
  k_ldlbf 11
  k_jumpf SENMAIN_L_B79E
  k_ldlib 20
  k_jump SENMAIN_L_B79F
SENMAIN_L_B79E:
  k_ldli 13
SENMAIN_L_B79F:
  k_stlbf -2
  k_pushib 20
  k_pushib 20
  k_pushi 1
  k_pushi 6
  k_callx RF_4D41, 8
  k_pushi 1
  k_pushib 32
  k_ldlbf -2
  k_pushl
  k_ldlbf -1
  k_popr
  k_add
  k_ldri 3
  k_shl
  k_addlib -2
  k_pushl
  k_pushiw $00CE
  k_ldlbf -1
  k_ldri 3
  k_shl
  k_addli 2
  k_pushl
  k_pushib 50
  k_pushib 38
  k_callx syscall, 14  ; sys 38 window_shape
  k_pushi 0
  k_pushib 82
  k_pushib 32
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pusha g_fh_cbmap0
  k_ldlbf 11
  k_shl1
  k_ldriw SENMAIN_D_CAE0
  k_add
  k_deref
  k_pushl
  k_ldlbf -2
  k_pushl
  k_pushib 20
  k_ldlbf -1
  k_pushl
  k_pushi 6
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
; sys: color_math, window_off, tilemap_write | vars: g_ships, g_cargo, g_player_name_ptr | calls 15
SENMAIN_F_B7F8:
  k_func 14
  k_ldli 0
  k_stl -14
  k_pushi 1
  k_ldla $F308
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_B811
  k_ldli 3
  k_jump SENMAIN_L_B812
SENMAIN_L_B811:
  k_ldli 2
SENMAIN_L_B812:
  k_popr
  k_add
  k_pushl
  k_ldla $F304
  k_shl1
  k_inc
  k_pushl
  k_callx SENMAIN_F_AF85, 6
  k_ldlarg 11
  k_ldra $F428
  k_uge
  k_jumpf SENMAIN_L_B832
  k_ldlarg 11
  k_ldra $F428
  k_sub
  k_ldriw $F423
  k_jump SENMAIN_L_B836
SENMAIN_L_B832:
  k_ldlarg 11
  k_ldriw $F41E
SENMAIN_L_B836:
  k_add
  k_derefb
  k_stl -6
  k_ldl -6
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_B84C
  k_ldl -2
  k_derefb
  k_jumpt SENMAIN_L_B850
SENMAIN_L_B84C:
  k_call SENMAIN_F_AFB9
  k_return
SENMAIN_L_B850:
  k_ldl -6
  k_ldri 5
  k_udiv
  k_stl -12
  k_call SENMAIN_F_AFB9
  k_call $9793
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_pushib 48
  k_callx syscall, 8  ; sys 48 color_math
  k_pushib 39
  k_callx syscall, 2  ; sys 39 window_off
  k_pushi 0
  k_pushi 4
  k_pushib 19
  k_pushib 22
  k_pushi 12
  k_pushi 1
  k_pushi 5
  k_callx syscall, 14  ; sys 5 tilemap_write
  k_ldl -6
  k_ldri 5
  k_ult
  k_jumpt SENMAIN_L_B885
  k_ldl -6
  k_ldra $F450
  k_eq
  k_jumpf SENMAIN_L_B887
SENMAIN_L_B885:
  k_ldli 1
  k_stl -14
SENMAIN_L_B887:
  k_push -14
  k_callx SENMAIN_F_B780, 2
  k_ldl -6
  k_ldri 5
  k_ult
  k_jumpt SENMAIN_L_B89A
  k_ldl -6
  k_ldra $F450
  k_eq
  k_jumpf SENMAIN_L_B8EE
SENMAIN_L_B89A:
  k_ldl -6
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_B8AC
  k_ldl -6
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_jump SENMAIN_L_B8B1
SENMAIN_L_B8AC:
  k_ldl -6
  k_ldri 5
  k_udiv
  k_addlib 20
SENMAIN_L_B8B1:
  k_stl -10
  k_ldl -10
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_stl -4
  k_pushi 0
  k_push -10
  k_pushi 3
  k_pushi 8
  k_callx RF_4E29, 8
  k_pushi 4
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldl -4
  k_deref
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 7
  k_pushi 14
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw SENMAIN_D_CAE4
  k_callx RF_2FB9, 4
  k_pushi 8
  k_pushi 14
  k_callx RF_2F8F, 4
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_pushiw SENMAIN_D_CAEB
  k_callx RF_3608, 4
SENMAIN_L_B8EE:
  k_pushi 10
  k_pushi 7
  k_callx RF_2F8F, 4
  k_ldl -12
  k_jumpf SENMAIN_L_B903
  k_pushi 10
  k_pushi 7
  k_callx RF_2F8F, 4
  k_push -12
  k_callx $9773, 2
SENMAIN_L_B903:
  k_ldla $F44E
  k_ldr -6
  k_eq
  k_jumpt SENMAIN_L_B913
  k_ldla $F450
  k_ldr -6
  k_eq
  k_jumpf SENMAIN_L_B921
SENMAIN_L_B913:
  k_pushi 10
  k_pushi 15
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw SENMAIN_D_CAF5
  k_callx RF_2FB9, 4
SENMAIN_L_B921:
  k_pushi 11
  k_pushi 7
  k_callx RF_2F8F, 4
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 13
  k_pushi 7
  k_callx RF_2F8F, 4
  k_ldl -2
  k_addli 4
  k_deref
  k_pushl
  k_pushiw SENMAIN_D_CB00
  k_callx RF_3608, 4
  k_pushi 14
  k_pushi 7
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw SENMAIN_D_CB09
  k_callx RF_2FB9, 4
  k_pushi 14
  k_pushi 13
  k_callx RF_2F8F, 4
  k_ldl -2
  k_addli 6
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_stl -8
  k_ldl -8
  k_shl1
  k_ldriw $1C33
  k_add
  k_pushl
  k_callx RL_8875, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldl -8
  k_jumpf SENMAIN_L_B982
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_pushiw SENMAIN_D_CB10
  k_callx RF_3608, 4
SENMAIN_L_B982:
  k_pushib 16
  k_pushi 7
  k_callx RF_2F8F, 4
  k_push -6
  k_callx SENMAIN_F_AE19, 2
  k_pushl
  k_pushiw SENMAIN_D_CB19
  k_callx RF_3608, 4
  k_pushib 17
  k_pushi 7
  k_callx RF_2F8F, 4
  k_ldl -2
  k_derefb
  k_pushl
  k_pushiw SENMAIN_D_CB26
  k_callx RF_3608, 4
  k_pushib 18
  k_pushi 7
  k_callx RF_2F8F, 4
  k_ldl -2
  k_inc
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_ldrib 25
  k_udiv
  k_inc
  k_pushl
  k_pushiw SENMAIN_D_CB35
  k_callx RF_3608, 4
  k_call $9793
  k_pushi 1
  k_pushiw SENMAIN_D_CB47
  k_callx RF_2FB9, 4
SENMAIN_L_B9CD:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt SENMAIN_L_B9CD
  k_call RF_472D
  k_ldl -6
  k_ldri 5
  k_ult
  k_jumpt SENMAIN_L_B9E6
  k_ldl -6
  k_ldra $F450
  k_eq
  k_jumpf SENMAIN_L_B9E9
SENMAIN_L_B9E6:
  k_call RF_4DD8
SENMAIN_L_B9E9:
  k_call SENMAIN_F_B76D
  k_return
; calls 3
SENMAIN_F_B9ED:
  k_func 10
  k_ldla $F304
  k_stl -8
  k_ldla $F308
  k_stl -10
SENMAIN_L_B9FA:
  k_call $9793
  k_call $97F5
  k_pushi 1
  k_pushiw SENMAIN_D_CB54
  k_callx RF_2FB9, 4
  k_pushi 0
  k_pusharg 11
  k_callx SENMAIN_F_AFDC, 4
  k_stl -4
  k_ldla $F428
  k_ldra $F42A
  k_add
  k_stl -6
  k_ldli 0
  k_jump SENMAIN_L_BA4C
SENMAIN_L_BA1B:
  k_ldl -2
  k_ldra $F428
  k_ult
  k_jumpf SENMAIN_L_BA2F
  k_ldl -2
  k_ldriw $F41E
  k_add
  k_derefb
  k_ldriw $F42C
  k_jump SENMAIN_L_BA3E
SENMAIN_L_BA2F:
  k_ldl -2
  k_ldra $F428
  k_sub
  k_ldriw $F423
  k_add
  k_derefb
  k_ldri 5
  k_umod
  k_ldriw $F431
SENMAIN_L_BA3E:
  k_add
  k_derefb
  k_ldr -4
  k_eq
  k_jumpf SENMAIN_L_BA4A
  k_push -2
  k_callx SENMAIN_F_B7F8, 2
SENMAIN_L_BA4A:
  k_ldl -2
  k_inc
SENMAIN_L_BA4C:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt SENMAIN_L_BA1B
  k_ldl -4
  k_ldriw $00F0
  k_ne
  k_jumpt SENMAIN_L_B9FA
  k_ldl -8
  k_stla $F304
  k_ldl -10
  k_stla $F308
  k_ldli 0
  k_return
SENMAIN_F_BA65:
  k_func 0
  k_ldli 3
  k_stlba $F300
  k_ldli 1
  k_stla $F570
  k_ldli 1
  k_return
; vars: g_cargo, g_fh_cbmap0 | calls 4
SENMAIN_F_BA74:
  k_func 12
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_stl -8
  k_jump SENMAIN_L_BB08
SENMAIN_L_BA80:
  k_ldli 0
  k_stl -2
  k_ldl -6
  k_ldri 3
  k_ult
  k_jumpf SENMAIN_L_BA8A
  k_ldli 1
  k_stl -2
SENMAIN_L_BA8A:
  k_ldl -6
  k_ldri 4
  k_eq
  k_jumpf SENMAIN_L_BA9E
  k_pusharg 11
  k_callx SENMAIN_F_C3A1, 2
  k_jumpf SENMAIN_L_BA9E
  k_ldl -4
  k_jumpt SENMAIN_L_BA9E
  k_ldli 1
  k_stl -2
SENMAIN_L_BA9E:
  k_ldl -6
  k_ldri 3
  k_eq
  k_jumpf SENMAIN_L_BAAE
  k_call SENMAIN_F_C425
  k_jumpf SENMAIN_L_BAAE
  k_ldli 1
  k_stl -4
  k_ldli 1
  k_stl -2
SENMAIN_L_BAAE:
  k_ldl -6
  k_ldri 5
  k_eq
  k_jumpf SENMAIN_L_BADE
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_jumpt SENMAIN_L_BADE
  k_ldla $F304
  k_jumpf SENMAIN_L_BADC
  k_ldla $F308
  k_jumpf SENMAIN_L_BADC
  k_ldla $F304
  k_ldri 14
  k_eq
  k_jumpt SENMAIN_L_BADC
  k_ldla $F308
  k_ldri 8
  k_eq
  k_jumpf SENMAIN_L_BADE
SENMAIN_L_BADC:
  k_ldli 1
  k_stl -2
SENMAIN_L_BADE:
  k_ldl -2
  k_jumpf SENMAIN_L_BB06
  k_ldl -8
  k_ldri 3
  k_mul
  k_addli 13
  k_stl -10
  k_pusha g_fh_cbmap0
  k_ldl -6
  k_ldri 3
  k_shl
  k_ldriw $0468
  k_add
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pushib 23
  k_push -10
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldl -8
  k_inc
  k_stl -8
  k_dec
  k_shl1
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -6
  k_popstore
SENMAIN_L_BB06:
  k_ldl -6
  k_inc
SENMAIN_L_BB08:
  k_stl -6
  k_ldl -6
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_BA80
  k_call $9793
  k_pushi 1
  k_pushiw SENMAIN_D_CB67
  k_callx RF_2FB9, 4
  k_ldl -8
  k_return
; vars: g_fh_cbmap0 | calls 1
SENMAIN_F_BB1C:
  k_func 2
  k_ldlarg 11
  k_ldrarg 13
  k_ne
  k_jumpf SENMAIN_L_BB45
  k_ldlarg 11
  k_ldri 3
  k_mul
  k_addli 13
  k_stl -2
  k_pusha g_fh_cbmap0
  k_ldlarg 11
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_ldri 3
  k_shl
  k_ldriw $0468
  k_add
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pushib 23
  k_push -2
  k_pushi 1
  k_callx RF_3DF1, 14
SENMAIN_L_BB45:
  k_ldlarg 13
  k_ldri 3
  k_mul
  k_addli 13
  k_stl -2
  k_pusha g_fh_cbmap0
  k_ldlarg 13
  k_shl1
  k_ldrarg 15
  k_add
  k_deref
  k_ldri 3
  k_shl
  k_ldriw $0438
  k_add
  k_pushl
  k_pushi 2
  k_pushi 2
  k_pushib 23
  k_push -2
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
; calls 3
SENMAIN_F_BB64:
  k_func 10
  k_ldli 0
  k_stl -8
  k_stl -2
  k_stl -6
SENMAIN_L_BB6D:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt SENMAIN_L_BB6D
SENMAIN_L_BB75:
  k_pusharg 13
  k_push -2
  k_push -8
  k_callx SENMAIN_F_BB1C, 6
  k_ldl -2
  k_stl -10
  k_pushi 6
  k_push -6
  k_callx RF_3D91, 4
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -6
  k_switchn 5
    .word $8000, SENMAIN_L_BBA5
    .word $0080, SENMAIN_L_BBA3
    .word $0100, SENMAIN_L_BBC4
    .word $0200, SENMAIN_L_BBB3
    .word $4000, SENMAIN_L_BBA8
    .word SENMAIN_L_BB75
SENMAIN_L_BBA3:
  k_ldl -10
  k_return
SENMAIN_L_BBA5:
  k_ldlib -1
  k_return
SENMAIN_L_BBA8:
  k_pushi 0
  k_callx RF_362A, 2
  k_jumpt SENMAIN_L_BBA8
  k_ldlib -2
  k_return
SENMAIN_L_BBB3:
  k_ldl -2
  k_stl -8
  k_ldl -2
  k_dec
  k_stl -2
  k_ldl -2
  k_ldri 0
  k_lt
  k_jumpf SENMAIN_L_BB75
  k_ldlarg 11
  k_dec
SENMAIN_L_BBC0:
  k_stl -2
  k_jump SENMAIN_L_BB75
SENMAIN_L_BBC4:
  k_ldl -2
  k_stl -8
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_uge
  k_jumpf SENMAIN_L_BB75
  k_ldli 0
  k_jump SENMAIN_L_BBC0
; calls 2
SENMAIN_F_BBD3:
  k_func 2
  k_jump SENMAIN_L_BBE0
SENMAIN_L_BBDB:
  k_pusharg 13
  k_callx SENMAIN_F_AEC8, 2
SENMAIN_L_BBE0:
  k_pusharg 15
  k_pusharg 11
  k_callx SENMAIN_F_BB64, 4
  k_stl -2
  k_ldl -2
  k_ldrib -2
  k_eq
  k_jumpt SENMAIN_L_BBDB
  k_ldl -2
  k_ldrib -1
  k_eq
  k_jumpf SENMAIN_L_BBFB
  k_ldliw $00FF
  k_jump SENMAIN_L_BBFC
SENMAIN_L_BBFB:
  k_ldl -2
SENMAIN_L_BBFC:
  k_return
; vars: g_ships | calls 1
SENMAIN_F_BBFD:
  k_func 8
  k_pusharg 11
  k_callx SENMAIN_F_C2D3, 2
  k_ldliw $F423
  k_stl -2
  k_ldra $F42A
  k_add
  k_stl -4
  k_jump SENMAIN_L_BC4E
SENMAIN_L_BC13:
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -6
  k_ldl -6
  k_derefb
  k_jumpf SENMAIN_L_BC4B
  k_ldl -2
  k_derefb
  k_ldri 5
  k_umod
  k_ldriw $F431
  k_add
  k_derefb
  k_stl -8
  k_ldl -8
  k_ldri 15
  k_umod
  k_pushl
  k_ldl -8
  k_ldri 15
  k_udiv
  k_ldri 15
  k_mul
  k_popr
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_ldl -6
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_BC47
  k_ldliw $00FF
  k_jump SENMAIN_L_BC4A
SENMAIN_L_BC47:
  k_ldliw $0088
SENMAIN_L_BC4A:
  k_popstoreb
SENMAIN_L_BC4B:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_BC4E:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_BC13
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENMAIN_L_BC8A
SENMAIN_L_BC60:
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_jumpf SENMAIN_L_BC87
  k_ldl -2
  k_derefb
  k_ldriw $F42C
  k_add
  k_derefb
  k_stl -8
  k_ldl -8
  k_ldri 15
  k_umod
  k_pushl
  k_ldl -8
  k_ldri 15
  k_udiv
  k_ldri 15
  k_mul
  k_popr
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
SENMAIN_L_BC87:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_BC8A:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_BC60
  k_ldlarg 11
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_umod
  k_pushl
  k_ldlarg 11
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_udiv
  k_ldri 15
  k_mul
  k_popr
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_derefb
  k_dec
  k_popstoreb
  k_return
; sys: memset_long | calls 5
SENMAIN_F_BCAE:
  k_func 18
  k_ldli 0
  k_stla $F570
  k_call SENMAIN_F_B6FF
SENMAIN_L_BCBA:
  k_call $97B7
  k_pushiw $0087
  k_pushiw $0080
  k_pushiw $F310
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_pusharg 11
  k_callx SENMAIN_F_BBFD, 2
  k_leal -12
  k_pushl
  k_pusharg 11
  k_callx SENMAIN_F_BA74, 4
  k_stl -18
  k_leal -12
  k_pushl
  k_pusharg 11
  k_push -18
  k_callx SENMAIN_F_BBD3, 6
  k_stl -16
  k_ldl -16
  k_ldriw $00FF
  k_eq
  k_jumpt SENMAIN_L_BD05
  k_pusharg 11
  k_leal -12
  k_pushl
  k_ldl -16
  k_shl1
  k_popr
  k_add
  k_deref
  k_shl1
  k_ldriw SENMAIN_D_CB75
  k_add
  k_deref
  k_callptrn 2
  k_jumpf SENMAIN_L_BCBA
SENMAIN_L_BD05:
  k_call SENMAIN_F_B743
  k_call $9793
  k_ldla $F570
  k_return
; vars: g_ships
SENMAIN_F_BD0F:
  k_func 8
  k_ldla $F304
  k_swap
  k_ldlarg 11
  k_add
  k_stlarg 11
  k_ldla $F308
  k_swap
  k_ldlarg 13
  k_add
  k_stlarg 13
  k_ldlarg 11
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_BD78
  k_ldlarg 11
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_BD78
  k_ldlarg 13
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_BD78
  k_ldlarg 13
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_BD78
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_stl -8
  k_ldliw $F423
  k_stl -4
  k_ldra $F42A
  k_add
  k_stl -6
  k_jump SENMAIN_L_BD72
SENMAIN_L_BD4C:
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_BD6F
  k_ldl -2
  k_derefb
  k_jumpf SENMAIN_L_BD6F
  k_ldl -4
  k_derefb
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldr -8
  k_eq
  k_jumpf SENMAIN_L_BD6F
  k_ldl -4
  k_derefb
  k_return
SENMAIN_L_BD6F:
  k_ldl -4
  k_inc
  k_stl -4
SENMAIN_L_BD72:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt SENMAIN_L_BD4C
SENMAIN_L_BD78:
  k_ldliw $00FF
  k_return
SENMAIN_F_BD7C:
  k_func 6
  k_ldlarg 13
  k_stl -2
  k_ldrarg 11
  k_add
  k_stl -4
  k_jump SENMAIN_L_BDAC
SENMAIN_L_BD89:
  k_ldl -2
  k_derefb
  k_ldriw $F42C
  k_add
  k_derefb
  k_stl -6
  k_ldl -6
  k_ldri 15
  k_umod
  k_stla $F304
  k_ldl -6
  k_ldri 15
  k_udiv
  k_stla $F308
  k_ldl -2
  k_derefb
  k_ldra $F44E
  k_eq
  k_jumpf SENMAIN_L_BDA9
  k_ldl -2
  k_derefb
  k_return
SENMAIN_L_BDA9:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_BDAC:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_BD89
  k_ldl -2
  k_dec
  k_derefb
  k_return
; calls 2
SENMAIN_F_BDB6:
  k_func 13
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_BDC7
  k_ldli 2
  k_jump SENMAIN_L_BDC8
SENMAIN_L_BDC7:
  k_ldli 1
SENMAIN_L_BDC8:
  k_stln -9
  k_ldli 0
  k_stln -11
  k_ldli 0
  k_jump SENMAIN_L_BE0D
SENMAIN_L_BDD1:
  k_ldln -9
  k_shl1
  k_pushl
  k_ldln -7
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_pushl
  k_ldln -7
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_pushl
  k_callx SENMAIN_F_BD0F, 4
  k_stln -13
  k_ldln -13
  k_ldriw $00FF
  k_ne
  k_jumpf SENMAIN_L_BE0A
  k_leal -5
  k_pushl
  k_ldln -11
  k_inc
  k_stln -11
  k_dec
  k_popr
  k_add
  k_pushl
  k_ldln -13
  k_popstoreb
SENMAIN_L_BE0A:
  k_ldln -7
  k_inc
SENMAIN_L_BE0D:
  k_stln -7
  k_ldln -7
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_BDD1
  k_leal -5
  k_pushl
  k_pushn -11
  k_callx SENMAIN_F_BD7C, 4
  k_return
; calls 2
SENMAIN_F_BE21:
  k_func 19
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_BE32
  k_ldli 2
  k_jump SENMAIN_L_BE33
SENMAIN_L_BE32:
  k_ldli 1
SENMAIN_L_BE33:
  k_stln -13
  k_ldlarg 11
  k_ldri 5
  k_umod
  k_ldriw $F43B
  k_add
  k_derefb
  k_ldri 3
  k_umod
  k_stln -15
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_ldri 1
  k_and
  k_jumpf SENMAIN_L_BE56
  k_ldli 6
  k_jump SENMAIN_L_BE57
SENMAIN_L_BE56:
  k_ldli 14
SENMAIN_L_BE57:
  k_stln -19
  k_ldli 0
  k_stln -17
  k_ldln -15
  k_ldri 14
  k_mul
  k_ldriw SENMAIN_D_CA54
  k_add
  k_stl -2
  k_ldrn -19
  k_add
  k_stl -4
  k_jump SENMAIN_L_BEA8
SENMAIN_L_BE6C:
  k_ldln -13
  k_shl1
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_pushl
  k_callx SENMAIN_F_BD0F, 4
  k_stln -11
  k_ldln -11
  k_ldriw $00FF
  k_ne
  k_jumpf SENMAIN_L_BEA5
  k_leal -9
  k_pushl
  k_ldln -17
  k_inc
  k_stln -17
  k_dec
  k_popr
  k_add
  k_pushl
  k_ldln -11
  k_popstoreb
SENMAIN_L_BEA5:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_BEA8:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_BE6C
  k_leal -9
  k_pushl
  k_pushn -17
  k_callx SENMAIN_F_BD7C, 4
  k_return
; calls 4
SENMAIN_F_BEB9:
  k_func 6
  k_ldla $F304
  k_stl -2
  k_ldla $F308
  k_stl -4
  k_call SENMAIN_F_BDB6
  k_stl -6
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A81F, 4
  k_call SENMAIN_F_A51F
  k_pushi 0
  k_push -6
  k_pusharg 11
  k_callx $98AE, 6
  k_call $9E32
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A9D0, 4
  k_pushi 0
  k_push -6
  k_pusharg 11
  k_callx $9AB7, 6
  k_ldl -2
  k_stla $F304
  k_ldl -4
  k_stla $F308
  k_return
; calls 3
SENMAIN_F_BEF3:
  k_func 6
  k_ldla $F304
  k_stl -2
  k_ldla $F308
  k_stl -4
  k_pusharg 11
  k_callx SENMAIN_F_BE21, 2
  k_stl -6
  k_push -6
  k_callx SENMAIN_F_A511, 2
  k_pushi 1
  k_push -6
  k_pusharg 11
  k_callx $98AE, 6
  k_call $9B3A
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A9EE, 4
  k_pushi 1
  k_push -6
  k_pusharg 11
  k_callx $9AB7, 6
  k_ldl -2
  k_stla $F304
  k_ldl -4
  k_stla $F308
  k_return
; vars: g_ships | calls 4
SENMAIN_F_BF2B:
  k_func 0
  k_call SENMAIN_F_C425
  k_jumpf SENMAIN_L_BF58
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_ldrib 20
  k_le
  k_jumpt SENMAIN_L_BF57
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_ldrib 20
  k_le
  k_jumpt SENMAIN_L_BF57
  k_pusharg 11
  k_callx SENMAIN_F_BEB9, 2
SENMAIN_L_BF57:
  k_return
SENMAIN_L_BF58:
  k_pusharg 11
  k_callx SENMAIN_F_C3A1, 2
  k_jumpf SENMAIN_L_BF65
  k_pusharg 11
  k_callx SENMAIN_F_BEF3, 2
SENMAIN_L_BF65:
  k_return
; vars: g_ships
SENMAIN_F_BF66:
  k_func 14
  k_ldliw $F423
  k_stl -2
  k_ldra $F42A
  k_add
  k_stl -4
  k_jump SENMAIN_L_C010
SENMAIN_L_BF77:
  k_ldl -2
  k_derefb
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_umod
  k_stl -8
  k_ldl -2
  k_derefb
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_udiv
  k_stl -10
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_jumpf SENMAIN_L_C00D
  k_ldl -10
  k_ldri 15
  k_mul
  k_ldr -8
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_ldliw $0085
  k_popstoreb
  k_ldla $F4E2
  k_jumpf SENMAIN_L_C00D
  k_ldli 0
  k_stl -6
SENMAIN_L_BFAD:
  k_ldl -6
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldr -8
  k_add
  k_stl -12
  k_ldl -6
  k_ldri 6
  k_mul
  k_pushl
  k_ldl -8
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_BFC6
  k_ldli 2
  k_jump SENMAIN_L_BFC7
SENMAIN_L_BFC6:
  k_ldli 1
SENMAIN_L_BFC7:
  k_shl1
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldr -10
  k_add
  k_stl -14
  k_ldl -12
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C004
  k_ldl -12
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C004
  k_ldl -14
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C004
  k_ldl -14
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_C004
  k_ldl -14
  k_ldri 15
  k_mul
  k_ldr -12
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_jumpf SENMAIN_L_C004
  k_ldl -14
  k_ldri 15
  k_mul
  k_ldr -12
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_derefb
  k_dec
  k_popstoreb
SENMAIN_L_C004:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_BFAD
SENMAIN_L_C00D:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C010:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_BF77
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENMAIN_L_C04F
SENMAIN_L_C022:
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_jumpf SENMAIN_L_C04C
  k_ldl -2
  k_derefb
  k_ldri 5
  k_umod
  k_ldriw $F431
  k_add
  k_derefb
  k_stl -6
  k_ldl -6
  k_ldri 15
  k_umod
  k_pushl
  k_ldl -6
  k_ldri 15
  k_udiv
  k_ldri 15
  k_mul
  k_popr
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_ldliw $0085
  k_popstoreb
SENMAIN_L_C04C:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C04F:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C022
  k_return
SENMAIN_F_C056:
  k_func 8
  k_ldli 0
  k_stl -2
SENMAIN_L_C05D:
  k_ldl -2
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F304
  k_add
  k_stl -6
  k_ldl -2
  k_ldri 6
  k_mul
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C07A
  k_ldli 2
  k_jump SENMAIN_L_C07B
SENMAIN_L_C07A:
  k_ldli 1
SENMAIN_L_C07B:
  k_shl1
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F308
  k_add
  k_stl -8
  k_ldl -8
  k_ldri 15
  k_mul
  k_ldr -6
  k_add
  k_stl -4
  k_ldl -6
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C0B7
  k_ldl -6
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C0B7
  k_ldl -8
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C0B7
  k_ldl -8
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_C0B7
  k_ldla $F44E
  k_ldri 5
  k_umod
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldr -4
  k_eq
  k_jumpf SENMAIN_L_C0B7
  k_ldli 1
  k_return
SENMAIN_L_C0B7:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_C05D
  k_ldli 0
  k_return
SENMAIN_F_C0C2:
  k_func 14
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_stl -14
  k_ldl -14
  k_jumpf SENMAIN_L_C162
  k_ldlarg 11
  k_ldri 5
  k_umod
  k_ldriw $F43B
  k_add
  k_derefb
  k_ldri 3
  k_umod
  k_stl -10
  k_ldl -14
  k_ldri 1
  k_and
  k_jumpf SENMAIN_L_C0ED
  k_ldli 6
  k_jump SENMAIN_L_C0EE
SENMAIN_L_C0ED:
  k_ldli 14
SENMAIN_L_C0EE:
  k_stl -14
  k_ldl -10
  k_ldri 14
  k_mul
  k_ldriw SENMAIN_D_CA54
  k_add
  k_stl -2
  k_ldr -14
  k_add
  k_stl -4
  k_jump SENMAIN_L_C15C
SENMAIN_L_C0FD:
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_ldra $F304
  k_add
  k_stl -6
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C117
  k_ldli 2
  k_jump SENMAIN_L_C118
SENMAIN_L_C117:
  k_ldli 1
SENMAIN_L_C118:
  k_shl1
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_ldra $F308
  k_add
  k_stl -8
  k_ldl -8
  k_ldri 15
  k_mul
  k_ldr -6
  k_add
  k_stl -12
  k_ldl -6
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C159
  k_ldl -6
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C159
  k_ldl -8
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C159
  k_ldl -8
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_C159
  k_ldla $F44E
  k_ldri 5
  k_umod
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldr -12
  k_eq
  k_jumpf SENMAIN_L_C159
  k_ldli 1
  k_return
SENMAIN_L_C159:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C15C:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C0FD
SENMAIN_L_C162:
  k_ldli 0
  k_return
; vars: g_ships | calls 2
SENMAIN_F_C164:
  k_func 18
  k_ldlarg 11
  k_ldri 5
  k_umod
  k_ldriw $F43B
  k_add
  k_stl -2
  k_ldliw $0080
  k_stl -10
  k_ldli 5
  k_stl -4
  k_stl -8
  k_jump SENMAIN_L_C1FD
SENMAIN_L_C17B:
  k_ldl -2
  k_derefb
  k_ldr -4
  k_add
  k_ldri 6
  k_umod
  k_stl -6
  k_ldl -6
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F304
  k_add
  k_stl -14
  k_ldl -6
  k_ldri 6
  k_mul
  k_pushl
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C19F
  k_ldli 2
  k_jump SENMAIN_L_C1A0
SENMAIN_L_C19F:
  k_ldli 1
SENMAIN_L_C1A0:
  k_shl1
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_ldra $F308
  k_add
  k_stl -16
  k_ldl -14
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C1FA
  k_ldl -14
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C1FA
  k_ldl -16
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C1FA
  k_ldl -16
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_C1FA
  k_ldl -16
  k_ldri 15
  k_mul
  k_ldr -14
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_pushl
  k_ldl -10
  k_popr
  k_uge
  k_jumpf SENMAIN_L_C1FA
  k_ldl -16
  k_ldri 15
  k_mul
  k_ldr -14
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_ldr -10
  k_eq
  k_jumpf SENMAIN_L_C1ED
  k_pushi 2
  k_callx rand, 2
  k_jumpt SENMAIN_L_C1FA
SENMAIN_L_C1ED:
  k_ldl -4
  k_stl -8
  k_ldl -16
  k_ldri 15
  k_mul
  k_ldr -14
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_stl -10
SENMAIN_L_C1FA:
  k_ldl -4
  k_inc
  k_stl -4
SENMAIN_L_C1FD:
  k_ldl -4
  k_ldri 8
  k_ult
  k_jumpt SENMAIN_L_C17B
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -18
  k_ldl -8
  k_addlib -5
  k_ldri 1
  k_ne
  k_jumpf SENMAIN_L_C222
  k_ldl -18
  k_inc
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_ldrib 25
  k_udiv
  k_inc
  k_jump SENMAIN_L_C223
SENMAIN_L_C222:
  k_ldli 0
SENMAIN_L_C223:
  k_stl -12
  k_ldl -2
  k_derefb
  k_ldr -8
  k_add
  k_ldri 6
  k_umod
  k_stl -6
  k_ldl -6
  k_ldriw $F452
  k_add
  k_derefb
  k_pushl
  k_ldl -18
  k_addli 2
  k_derefb
  k_pushl
  k_ldlib 100
  k_popr
  k_sub
  k_popr
  k_mul
  k_ldrib 60
  k_udiv
  k_inc
  k_swap
  k_ldl -12
  k_add
  k_stl -12
  k_ldl -12
  k_ldra $F458
  k_ule
  k_jumpf SENMAIN_L_C262
  k_ldl -12
  k_swap
  k_ldla $F458
  k_sub
  k_stla $F458
  k_push -2
  k_ldl -6
  k_popstoreb
  k_pushiw $0840
  k_push -6
  k_pusharg 11
  k_callx SENMAIN_F_A564, 6
  k_return
SENMAIN_L_C262:
  k_ldli 0
  k_return
; calls 7
SENMAIN_F_C264:
  k_func 2
  k_call SENMAIN_F_BF66
  k_ldlarg 11
  k_ldri 5
  k_udiv
  k_addlib 20
  k_ldri 7
  k_mul
  k_ldriw $E446
  k_add
  k_derefb
  k_ldri 5
  k_udiv
  k_pushl
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB94
  k_add
  k_derefb
  k_ldra $F30C
  k_mul
  k_ldrib 50
  k_udiv
  k_popr
  k_add
  k_addli 6
  k_pushl
  k_pushib 20
  k_callx RL_8962, 4
  k_stla $F458
SENMAIN_L_C297:
  k_ldla $F458
  k_jumpt SENMAIN_L_C2A3
SENMAIN_L_C29D:
  k_pusharg 11
  k_callx SENMAIN_F_BF2B, 2
  k_return
SENMAIN_L_C2A3:
  k_ldla $F308
  k_ldri 15
  k_mul
  k_ldra $F304
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_jumpf SENMAIN_L_C29D
  k_pusharg 11
  k_callx SENMAIN_F_C0C2, 2
  k_jumpt SENMAIN_L_C29D
  k_call SENMAIN_F_C056
  k_jumpt SENMAIN_L_C29D
  k_pusharg 11
  k_callx SENMAIN_F_C164, 2
  k_jumpf SENMAIN_L_C29D
  k_call SENMAIN_F_C425
  k_jumpf SENMAIN_L_C297
  k_jump SENMAIN_L_C29D
; calls 2
SENMAIN_F_C2D3:
  k_func 8
  k_pusharg 11
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_ldri 1
  k_and
  k_stl -8
  k_ldliw $F310
  k_stl -6
  k_ldliw $F397
  k_stl -2
  k_addliw $0087
  k_stl -4
  k_jump SENMAIN_L_C31E
SENMAIN_L_C2FA:
  k_ldl -2
  k_derefb
  k_ldri 3
  k_eq
  k_jumpt SENMAIN_L_C313
  k_ldl -2
  k_derefb
  k_ldri 4
  k_eq
  k_jumpt SENMAIN_L_C313
  k_ldl -2
  k_derefb
  k_ldri 2
  k_eq
  k_jumpf SENMAIN_L_C318
  k_ldl -8
  k_jumpf SENMAIN_L_C318
SENMAIN_L_C313:
  k_ldl -6
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
SENMAIN_L_C318:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C31E:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C2FA
  k_return
; vars: g_ships
SENMAIN_F_C325:
  k_func 10
  k_ldla $F304
  k_swap
  k_ldlarg 11
  k_add
  k_stlarg 11
  k_ldla $F308
  k_swap
  k_ldlarg 13
  k_add
  k_stlarg 13
  k_ldlarg 11
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C350
  k_ldlarg 11
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C350
  k_ldlarg 13
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C350
  k_ldlarg 13
  k_ldri 9
  k_lt
  k_jumpt SENMAIN_L_C352
SENMAIN_L_C350:
  k_ldli 0
  k_return
SENMAIN_L_C352:
  k_ldli 5
  k_stl -10
  k_ldlba $F423
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_C35E
  k_ldli 0
  k_stl -10
SENMAIN_L_C35E:
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_stl -8
  k_ldliw $F423
  k_stl -4
  k_ldra $F42A
  k_add
  k_stl -6
  k_jump SENMAIN_L_C399
SENMAIN_L_C370:
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_C396
  k_ldl -2
  k_derefb
  k_jumpf SENMAIN_L_C396
  k_ldl -4
  k_derefb
  k_ldri 5
  k_umod
  k_ldr -10
  k_add
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldr -8
  k_eq
  k_jumpf SENMAIN_L_C396
  k_ldli 1
  k_return
SENMAIN_L_C396:
  k_ldl -4
  k_inc
  k_stl -4
SENMAIN_L_C399:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt SENMAIN_L_C370
  k_ldli 0
  k_return
; calls 1
SENMAIN_F_C3A1:
  k_func 10
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_stl -10
  k_ldl -10
  k_jumpf SENMAIN_L_C423
  k_ldlarg 11
  k_ldri 5
  k_umod
  k_pushl
  k_ldlarg 11
  k_ldri 5
  k_ult
  k_jumpf SENMAIN_L_C3C5
  k_ldli 0
  k_jump SENMAIN_L_C3C6
SENMAIN_L_C3C5:
  k_ldli 5
SENMAIN_L_C3C6:
  k_popr
  k_add
  k_ldriw $F436
  k_add
  k_derefb
  k_ldri 3
  k_umod
  k_stl -6
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C3DC
  k_ldli 2
  k_jump SENMAIN_L_C3DD
SENMAIN_L_C3DC:
  k_ldli 1
SENMAIN_L_C3DD:
  k_stl -8
  k_ldl -10
  k_ldri 1
  k_and
  k_jumpf SENMAIN_L_C3E8
  k_ldli 6
  k_jump SENMAIN_L_C3E9
SENMAIN_L_C3E8:
  k_ldli 14
SENMAIN_L_C3E9:
  k_stl -10
  k_ldl -6
  k_ldri 14
  k_mul
  k_ldriw SENMAIN_D_CA54
  k_add
  k_stl -2
  k_ldr -10
  k_add
  k_stl -4
  k_jump SENMAIN_L_C41D
SENMAIN_L_C3F8:
  k_ldl -8
  k_shl1
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C9A0
  k_add
  k_deref
  k_pushl
  k_callx SENMAIN_F_C325, 4
  k_jumpf SENMAIN_L_C41A
  k_ldli 1
  k_return
SENMAIN_L_C41A:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C41D:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C3F8
SENMAIN_L_C423:
  k_ldli 0
  k_return
; calls 1
SENMAIN_F_C425:
  k_func 4
  k_ldla $F304
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C436
  k_ldli 2
  k_jump SENMAIN_L_C437
SENMAIN_L_C436:
  k_ldli 1
SENMAIN_L_C437:
  k_stl -4
  k_ldli 0
  k_stl -2
SENMAIN_L_C43A:
  k_ldl -4
  k_shl1
  k_pushl
  k_ldl -2
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_pushl
  k_ldl -2
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_C97C
  k_add
  k_deref
  k_pushl
  k_callx SENMAIN_F_C325, 4
  k_jumpf SENMAIN_L_C45A
  k_ldli 1
  k_return
SENMAIN_L_C45A:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_C43A
  k_ldli 0
  k_return
; calls 2
SENMAIN_F_C465:
  k_func 8
  k_pusharg 11
  k_callx RF_40A5, 2
  k_addlib 20
  k_pushl
  k_callx RL_884E, 2
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_ldri 1
  k_and
  k_stl -8
  k_ldliw $F310
  k_stl -6
  k_ldliw $F397
  k_stl -2
  k_addliw $0087
  k_stl -4
  k_jump SENMAIN_L_C4B0
SENMAIN_L_C48C:
  k_ldl -2
  k_derefb
  k_ldri 3
  k_eq
  k_jumpt SENMAIN_L_C4A5
  k_ldl -2
  k_derefb
  k_ldri 4
  k_eq
  k_jumpt SENMAIN_L_C4A5
  k_ldl -2
  k_derefb
  k_ldri 2
  k_eq
  k_jumpf SENMAIN_L_C4AA
  k_ldl -8
  k_jumpf SENMAIN_L_C4AA
SENMAIN_L_C4A5:
  k_ldl -6
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
SENMAIN_L_C4AA:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C4B0:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C48C
  k_return
SENMAIN_F_C4B7:
  k_func 2
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_ldriw $F45A
  k_add
  k_derefb
  k_ldrarg 15
  k_add
  k_addli 5
  k_ldri 6
  k_umod
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_mul
  k_pushl
  k_ldlarg 11
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C4DA
  k_ldli 2
  k_jump SENMAIN_L_C4DB
SENMAIN_L_C4DA:
  k_ldli 1
SENMAIN_L_C4DB:
  k_shl1
  k_popr
  k_add
  k_ldriw SENMAIN_D_CB82
  k_add
  k_deref
  k_ldrarg 13
  k_add
  k_stlarg 13
  k_ldl -2
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_CB82
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_stlarg 11
  k_ldlarg 11
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C509
  k_ldlarg 11
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C509
  k_ldlarg 13
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C509
  k_ldlarg 13
  k_ldri 9
  k_lt
  k_jumpt SENMAIN_L_C50D
SENMAIN_L_C509:
  k_ldliw $00FF
  k_return
SENMAIN_L_C50D:
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_ldriw $F45A
  k_add
  k_derefb
  k_ldriw $0080
  k_eq
  k_jumpf SENMAIN_L_C52A
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_ldriw $F45A
  k_add
  k_pushl
  k_ldl -2
  k_popstoreb
SENMAIN_L_C52A:
  k_ldlarg 11
  k_stla $F56C
  k_ldlarg 13
  k_stla $F56E
  k_ldla $F56E
  k_ldri 15
  k_mul
  k_ldra $F56C
  k_add
  k_ldriw $F397
  k_add
  k_derefb
  k_return
; vars: g_ships | calls 1
SENMAIN_F_C541:
  k_func 14
  k_pusharg 11
  k_callx SENMAIN_F_C465, 2
  k_ldliw $F423
  k_stl -2
  k_ldra $F42A
  k_add
  k_stl -4
  k_jump SENMAIN_L_C5E2
SENMAIN_L_C557:
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_jumpf SENMAIN_L_C5DF
  k_ldl -2
  k_derefb
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_umod
  k_stl -8
  k_ldl -2
  k_derefb
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_udiv
  k_stl -10
  k_ldl -10
  k_ldri 15
  k_mul
  k_ldr -8
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
  k_ldla $F4E2
  k_jumpf SENMAIN_L_C5DF
  k_ldli 0
  k_stl -6
SENMAIN_L_C58C:
  k_ldl -6
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_CB82
  k_add
  k_deref
  k_ldr -8
  k_add
  k_stl -12
  k_ldl -6
  k_ldri 6
  k_mul
  k_pushl
  k_ldl -8
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C5A5
  k_ldli 2
  k_jump SENMAIN_L_C5A6
SENMAIN_L_C5A5:
  k_ldli 1
SENMAIN_L_C5A6:
  k_shl1
  k_popr
  k_add
  k_ldriw SENMAIN_D_CB82
  k_add
  k_deref
  k_ldr -10
  k_add
  k_stl -14
  k_ldl -12
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C5D6
  k_ldl -12
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C5D6
  k_ldl -14
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C5D6
  k_ldl -14
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_C5D6
  k_ldl -14
  k_ldri 15
  k_mul
  k_ldr -12
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
SENMAIN_L_C5D6:
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_C58C
SENMAIN_L_C5DF:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C5E2:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C557
  k_ldliw $F41E
  k_stl -2
  k_ldra $F428
  k_add
  k_stl -4
  k_jump SENMAIN_L_C620
SENMAIN_L_C5F4:
  k_ldl -2
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_jumpf SENMAIN_L_C61D
  k_ldl -2
  k_derefb
  k_ldri 5
  k_umod
  k_ldriw $F431
  k_add
  k_derefb
  k_stl -6
  k_ldl -6
  k_ldri 15
  k_umod
  k_pushl
  k_ldl -6
  k_ldri 15
  k_udiv
  k_ldri 15
  k_mul
  k_popr
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
SENMAIN_L_C61D:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C620:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C5F4
  k_return
; sys: memset_long | calls 2
SENMAIN_F_C627:
  k_func 20
  k_pushiw $0087
  k_pushiw $0080
  k_pushiw $F310
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_pusharg 15
  k_callx SENMAIN_F_C541, 2
  k_ldla $F308
  k_ldri 15
  k_mul
  k_ldra $F304
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_ldliw $0080
  k_popstoreb
  k_ldliw $F4E4
  k_stl -4
  k_ldliw $F4E5
  k_stl -6
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_ldriw $F310
  k_add
  k_pushl
  k_ldli 0
  k_popstoreb
  k_pushi 1
  k_pusharg 13
  k_pusharg 11
  k_callx SENMAIN_F_C4B7, 6
  k_push -4
  k_ldla $F56E
  k_ldri 15
  k_mul
  k_ldra $F56C
  k_add
  k_popstoreb
  k_ldl -4
  k_derefb
  k_ldriw $F310
  k_add
  k_derefb
  k_ldriw $0080
  k_ugt
  k_jumpf SENMAIN_L_C689
  k_return
SENMAIN_L_C689:
  k_ldl -4
  k_derefb
  k_ldriw $F310
  k_add
  k_pushl
  k_ldli 1
  k_popstoreb
SENMAIN_L_C692:
  k_ldl -4
  k_ldr -6
  k_ne
  k_jumpf SENMAIN_L_C72D
  k_ldl -4
  k_derefb
  k_ldri 15
  k_umod
  k_stl -18
  k_ldl -4
  k_derefb
  k_ldri 15
  k_udiv
  k_stl -20
  k_ldl -4
  k_derefb
  k_ldriw $F310
  k_add
  k_derefb
  k_stl -12
  k_ldli 0
  k_stl -14
SENMAIN_L_C6AC:
  k_push -14
  k_push -20
  k_push -18
  k_callx SENMAIN_F_C4B7, 6
  k_ldriw $00FF
  k_ne
  k_jumpf SENMAIN_L_C70C
  k_ldla $F56E
  k_ldri 15
  k_mul
  k_ldra $F56C
  k_add
  k_stl -16
  k_ldl -16
  k_ldriw $F310
  k_add
  k_stl -2
  k_derefb
  k_ldriw $0080
  k_eq
  k_jumpf SENMAIN_L_C70C
  k_push -2
  k_ldl -12
  k_inc
  k_popstoreb
  k_ldl -6
  k_stl -10
  k_ldl -6
SENMAIN_L_C6D9:
  k_dec
  k_stl -8
  k_ldl -8
  k_ldriw $F4E4
  k_ult
  k_jumpf SENMAIN_L_C6E7
  k_ldliw $F56A
  k_stl -8
SENMAIN_L_C6E7:
  k_push -10
  k_ldl -8
  k_derefb
  k_popstoreb
  k_ldl -8
  k_derefb
  k_ldriw $F310
  k_add
  k_derefb
  k_pushl
  k_ldl -2
  k_derefb
  k_popr
  k_uge
  k_jumpf SENMAIN_L_C727
  k_push -10
  k_ldl -16
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
  k_ldl -6
  k_ldriw $F56B
  k_uge
  k_jumpf SENMAIN_L_C70C
  k_ldliw $F4E4
  k_stl -6
SENMAIN_L_C70C:
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -14
  k_ldri 3
  k_ult
  k_jumpt SENMAIN_L_C6AC
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldriw $F56B
  k_uge
  k_jumpf SENMAIN_L_C692
  k_ldliw $F4E4
  k_stl -4
  k_jump SENMAIN_L_C692
SENMAIN_L_C727:
  k_ldl -8
  k_stl -10
  k_ldl -8
  k_jump SENMAIN_L_C6D9
SENMAIN_L_C72D:
  k_return
; calls 1
SENMAIN_F_C72E:
  k_func 8
  k_ldlarg 11
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C73D
  k_ldli 2
  k_jump SENMAIN_L_C73E
SENMAIN_L_C73D:
  k_ldli 1
SENMAIN_L_C73E:
  k_stl -4
  k_ldli 0
  k_jump SENMAIN_L_C78C
SENMAIN_L_C743:
  k_ldl -2
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_CB82
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_stl -6
  k_ldl -4
  k_shl1
  k_pushl
  k_ldl -2
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_CB82
  k_add
  k_deref
  k_ldrarg 13
  k_add
  k_stl -8
  k_ldl -6
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C776
  k_ldl -6
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C776
  k_ldl -8
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C776
  k_ldl -8
  k_ldri 9
  k_lt
  k_jumpt SENMAIN_L_C77E
SENMAIN_L_C776:
  k_pushi 2
  k_callx rand, 2
  k_jumpt SENMAIN_L_C78A
SENMAIN_L_C77E:
  k_ldlarg 13
  k_ldri 15
  k_mul
  k_ldrarg 11
  k_add
  k_ldriw $F45A
  k_add
  k_pushl
  k_ldl -2
  k_popstoreb
SENMAIN_L_C78A:
  k_ldl -2
  k_inc
SENMAIN_L_C78C:
  k_stl -2
  k_ldl -2
  k_ldri 6
  k_ult
  k_jumpt SENMAIN_L_C743
  k_return
; sys: memset_long | vars: g_ships | calls 3
SENMAIN_F_C794:
  k_func 20
  k_pushiw $0087
  k_pushiw $0080
  k_pushiw $F45A
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_pushiw $0087
  k_pushiw $0080
  k_pushiw $F310
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_ldli 0
  k_stla $F4E2
  k_pusharg 13
  k_callx SENMAIN_F_C541, 2
  k_ldli 1
  k_stla $F4E2
  k_ldlarg 13
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -6
  k_ldl -6
  k_addli 4
  k_deref
  k_ldrib 20
  k_le
  k_jumpt SENMAIN_L_C801
  k_ldl -6
  k_derefb
  k_ldrib 20
  k_le
  k_jumpt SENMAIN_L_C801
  k_ldla $F450
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_ldrib 20
  k_le
  k_jumpt SENMAIN_L_C801
  k_ldla $F450
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_derefb
  k_ldrib 20
  k_le
  k_jumpf SENMAIN_L_C84A
SENMAIN_L_C801:
  k_ldlarg 13
  k_ldra $F450
  k_ne
  k_jumpf SENMAIN_L_C822
  k_ldla $F450
  k_ldri 5
  k_umod
  k_ldriw $F431
  k_add
  k_derefb
  k_stl -10
  k_ldl -10
  k_ldri 15
  k_sdiv
  k_pushl
  k_ldl -10
  k_ldri 15
  k_smod
  k_pushl
  k_callx SENMAIN_F_C72E, 4
  k_ldl -10
  k_return
SENMAIN_L_C822:
  k_ldla $F304
  k_ldri 7
  k_lt
  k_jumpf SENMAIN_L_C82E
  k_ldli 0
  k_jump SENMAIN_L_C82F
SENMAIN_L_C82E:
  k_ldli 14
SENMAIN_L_C82F:
  k_stl -14
  k_ldla $F308
  k_ldri 4
  k_lt
  k_jumpf SENMAIN_L_C83C
  k_ldli 0
  k_jump SENMAIN_L_C83D
SENMAIN_L_C83C:
  k_ldli 8
SENMAIN_L_C83D:
  k_stl -16
  k_push -16
  k_push -14
  k_callx SENMAIN_F_C72E, 4
  k_ldl -16
  k_ldri 15
  k_mul
  k_ldr -14
  k_add
  k_return
SENMAIN_L_C84A:
  k_ldlarg 11
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_smod
  k_stl -14
  k_ldlarg 11
  k_ldriw $F42C
  k_add
  k_derefb
  k_ldri 15
  k_sdiv
  k_stl -16
  k_ldl -6
  k_addli 6
  k_derefb
  k_ldri 4
  k_shr
  k_ldri 3
  k_and
  k_stl -8
  k_pushi 10
  k_callx rand, 2
  k_jumpf SENMAIN_L_C91A
  k_ldl -8
  k_jumpf SENMAIN_L_C91A
  k_ldl -8
  k_ldri 1
  k_and
  k_jumpf SENMAIN_L_C87A
  k_ldli 6
  k_jump SENMAIN_L_C87C
SENMAIN_L_C87A:
  k_ldlib 16
SENMAIN_L_C87C:
  k_stl -8
  k_ldlarg 11
  k_ldriw $F436
  k_add
  k_derefb
  k_ldri 3
  k_umod
  k_stl -12
  k_ldl -12
  k_ldri 4
  k_shl
  k_ldriw SENMAIN_D_CC5A
  k_add
  k_stl -2
  k_ldr -8
  k_add
  k_stl -4
  k_jump SENMAIN_L_C914
SENMAIN_L_C894:
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_ldriw SENMAIN_D_CBA6
  k_add
  k_deref
  k_ldr -14
  k_add
  k_stl -18
  k_ldl -14
  k_ldri 2
  k_smod
  k_jumpf SENMAIN_L_C8AA
  k_ldli 2
  k_jump SENMAIN_L_C8AB
SENMAIN_L_C8AA:
  k_ldli 1
SENMAIN_L_C8AB:
  k_shl1
  k_pushl
  k_ldl -2
  k_derefb
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw SENMAIN_D_CBA6
  k_add
  k_deref
  k_ldr -16
  k_add
  k_stl -20
  k_pushi 3
  k_callx rand, 2
  k_jumpt SENMAIN_L_C911
  k_ldl -18
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C911
  k_ldl -18
  k_ldri 15
  k_lt
  k_jumpf SENMAIN_L_C911
  k_ldl -20
  k_ldri 0
  k_ge
  k_jumpf SENMAIN_L_C911
  k_ldl -20
  k_ldri 9
  k_lt
  k_jumpf SENMAIN_L_C911
  k_ldl -20
  k_ldri 15
  k_mul
  k_ldr -18
  k_add
  k_ldriw $F310
  k_add
  k_derefb
  k_ldriw $0080
  k_ule
  k_jumpf SENMAIN_L_C911
  k_ldl -20
  k_ldri 15
  k_mul
  k_ldr -18
  k_add
  k_ldriw $F45A
  k_add
  k_pushl
  k_pushi 2
  k_callx rand, 2
  k_pushl
  k_pushi 2
  k_callx rand, 2
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_ldr -12
  k_add
  k_inc
  k_ldri 6
  k_umod
  k_popstoreb
  k_ldl -20
  k_ldri 15
  k_mul
  k_ldr -18
  k_add
  k_return
SENMAIN_L_C911:
  k_ldl -2
  k_inc
  k_stl -2
SENMAIN_L_C914:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt SENMAIN_L_C894
SENMAIN_L_C91A:
  k_ldli 0
  k_stla $F4E2
  k_push -16
  k_push -14
  k_callx SENMAIN_F_C72E, 4
  k_ldlarg 11
  k_ldriw $F42C
  k_add
  k_derefb
  k_return
; vars: g_ships | calls 1
SENMAIN_F_C92B:
  k_func 12
  k_ldla $F44E
  k_stl -10
  k_ldlarg 11
  k_ldri 2
  k_eq
  k_jumpf SENMAIN_L_C974
  k_ldlib 100
  k_stl -8
  k_ldliw $F423
  k_stl -4
  k_ldra $F42A
  k_add
  k_stl -6
  k_jump SENMAIN_L_C96E
SENMAIN_L_C949:
  k_ldl -4
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_ldl -2
  k_derefb
  k_stl -12
  k_ldl -8
  k_ldr -12
  k_ugt
  k_jumpf SENMAIN_L_C96B
  k_ldl -2
  k_addli 4
  k_deref
  k_jumpf SENMAIN_L_C96B
  k_ldl -12
  k_jumpf SENMAIN_L_C96B
  k_ldl -2
  k_derefb
  k_stl -8
  k_ldl -4
  k_derefb
  k_stl -10
SENMAIN_L_C96B:
  k_ldl -4
  k_inc
  k_stl -4
SENMAIN_L_C96E:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt SENMAIN_L_C949
SENMAIN_L_C974:
  k_pusharg 13
  k_push -10
  k_callx SENMAIN_F_C794, 4
  k_return
  .byte $00
SENMAIN_D_C97C:
  .byte $00, $00, $FF, $FF, $FF, $FF, $01, $00, $FF, $FF, $00, $00, $01, $00, $00, $00
  .byte $01, $00, $00, $00, $01, $00, $01, $00, $FF, $FF, $00, $00, $01, $00, $FF, $FF
  .byte $FF, $FF, $00, $00
SENMAIN_D_C9A0:
  .byte $00, $00, $FE, $FF, $FE, $FF, $01, $00, $FE, $FF, $FF, $FF, $02, $00, $FF, $FF
  .byte $FF, $FF, $02, $00, $00, $00, $00, $00, $02, $00, $01, $00, $01, $00, $01, $00
  .byte $01, $00, $02, $00, $00, $00, $02, $00, $02, $00, $FF, $FF, $01, $00, $02, $00
  .byte $FE, $FF, $01, $00, $01, $00, $FE, $FF, $00, $00, $00, $00, $FE, $FF, $FF, $FF
  .byte $FF, $FF, $FF, $FF, $FE, $FF, $FF, $FF, $00, $00, $FD, $FF, $FD, $FF, $01, $00
  .byte $FD, $FF, $FE, $FF, $02, $00, $FE, $FF, $FE, $FF, $03, $00, $FE, $FF, $FF, $FF
  .byte $03, $00, $FF, $FF, $00, $00, $03, $00, $00, $00, $01, $00, $03, $00, $01, $00
  .byte $02, $00, $02, $00, $02, $00, $02, $00, $01, $00, $02, $00, $03, $00, $00, $00
  .byte $03, $00, $03, $00, $FF, $FF, $02, $00, $03, $00, $FE, $FF, $02, $00, $02, $00
  .byte $FD, $FF, $01, $00, $02, $00, $FD, $FF, $00, $00, $01, $00, $FD, $FF, $FF, $FF
  .byte $00, $00, $FD, $FF, $FE, $FF, $FF, $FF, $FE, $FF, $FE, $FF, $FE, $FF, $FF, $FF
  .byte $FD, $FF, $FE, $FF
SENMAIN_D_CA54:
  .byte $02, $03, $04, $08, $09, $0A, $0F, $10, $11, $12, $18, $19, $1A, $1B, $04, $05
  .byte $06, $0A, $0B, $00, $12, $13, $14, $15, $1B, $1C, $1D, $0C, $00, $01, $02, $06
  .byte $07, $08, $0C, $0D, $0E, $0F, $15, $16, $17, $18, $00, $E0, $03, $00, $00, $E0
  .byte $03, $08, $08, $E0, $03, $00, $08, $E0, $03, $08
SENMAIN_D_CA8E:
  .byte $58, $05, $70, $05, $88, $05, $B0, $05, $9C, $05, $C4, $05
SENMAIN_D_CA9A:
  .byte $6C, $05, $84, $05, $00, $00, $00, $00, $00, $00, $00, $00
SENMAIN_D_CAA6:
  .byte "Board which ship?", $00
SENMAIN_D_CAB8:
  .byte "Fire on which", $0A, "ship?", $00
SENMAIN_D_CACC:
  .byte "Mobility:%2d", $00
SENMAIN_D_CAD9:
  .byte $1B
  .byte "R-", $1B, "E>", $00
SENMAIN_D_CAE0:
  .byte "p", $11, "P", $0E
SENMAIN_D_CAE4:
  .byte "Battle", $00
SENMAIN_D_CAEB:
  .byte "level:%2d", $00
SENMAIN_D_CAF5:
  .byte "(flagship)", $00
SENMAIN_D_CB00:
  .byte "Crew:%2d", $00
SENMAIN_D_CB09:
  .byte "Arms: ", $00
SENMAIN_D_CB10:
  .byte $0A, "%d guns", $00
SENMAIN_D_CB19:
  .byte "Mobility:%3d", $00
SENMAIN_D_CB26:
  .byte "Durability:%3d", $00
SENMAIN_D_CB35:
  .byte "Tacking power:%2d", $00
SENMAIN_D_CB47:
  .byte "Press button", $00
SENMAIN_D_CB54:
  .byte "View which vessel?", $00
SENMAIN_D_CB67:
  .byte "Your orders ?", $00
SENMAIN_D_CB75:
  .word SENMAIN_F_B5AF, SENMAIN_F_B694, SENMAIN_F_B9ED, SENMAIN_F_B170, SENMAIN_F_B2A3, SENMAIN_F_BA65
  .byte $00
SENMAIN_D_CB82:
  .byte $00, $00, $FF, $FF, $FF, $FF, $01, $00, $FF, $FF, $00, $00, $01, $00, $00, $00
  .byte $01, $00, $00, $00, $01, $00, $01, $00, $FF, $FF, $00, $00, $01, $00, $FF, $FF
  .byte $FF, $FF, $00, $00
SENMAIN_D_CBA6:
  .byte $00, $00, $FE, $FF, $FE, $FF, $01, $00, $FE, $FF, $FF, $FF, $02, $00, $FF, $FF
  .byte $FF, $FF, $02, $00, $00, $00, $00, $00, $02, $00, $01, $00, $01, $00, $01, $00
  .byte $01, $00, $02, $00, $00, $00, $02, $00, $02, $00, $FF, $FF, $01, $00, $02, $00
  .byte $FE, $FF, $01, $00, $01, $00, $FE, $FF, $00, $00, $00, $00, $FE, $FF, $FF, $FF
  .byte $FF, $FF, $FF, $FF, $FE, $FF, $FF, $FF, $00, $00, $FD, $FF, $FD, $FF, $01, $00
  .byte $FD, $FF, $FE, $FF, $02, $00, $FE, $FF, $FE, $FF, $03, $00, $FE, $FF, $FF, $FF
  .byte $03, $00, $FF, $FF, $00, $00, $03, $00, $00, $00, $01, $00, $03, $00, $01, $00
  .byte $02, $00, $02, $00, $02, $00, $02, $00, $01, $00, $02, $00, $03, $00, $00, $00
  .byte $03, $00, $03, $00, $FF, $FF, $02, $00, $03, $00, $FE, $FF, $02, $00, $02, $00
  .byte $FD, $FF, $01, $00, $02, $00, $FD, $FF, $00, $00, $01, $00, $FD, $FF, $FF, $FF
  .byte $00, $00, $FD, $FF, $FE, $FF, $FF, $FF, $FE, $FF, $FE, $FF, $FE, $FF, $FF, $FF
  .byte $FD, $FF, $FE, $FF
SENMAIN_D_CC5A:
  .byte $0B, $00, $01, $05, $06, $07, $1C, $1D, $0C, $0D, $0E, $13, $14, $15, $16, $17
  .byte $01, $02, $03, $07, $08, $09, $0D, $0E, $0F, $10, $11, $16, $17, $18, $19, $1A
  .byte $03, $04, $05, $09, $0A, $0B, $10, $11, $12, $13, $14, $19, $1A, $1B, $1C, $1D
