; overlay uarugo, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "ram.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp UARUGO_F_9603
; calls 2
UARUGO_F_9603:
  k_func 0
  k_ldlba $F16A
  k_jumpf UARUGO_L_9619
  k_ldlba $F16A
  k_pushl
  k_callx UARUGO_F_98BF, 2
  k_jump UARUGO_L_961F
UARUGO_L_9619:
  k_pushi 1
  k_pushi 0
  k_callx UARUGO_F_9ECE, 4
UARUGO_L_961F:
  k_return
; calls 1
UARUGO_F_9620:
  k_func 10
  k_ldlarg 13
  k_derefb
  k_stl -4
  k_ldlarg 13
  k_inc
  k_derefb
  k_stl -6
  k_ldlarg 11
  k_addli 7
  k_deref
  k_stl -2
  k_ldl -2
  k_jumpt UARUGO_L_9635
  k_return
UARUGO_L_9635:
  k_ldl -2
  k_derefb
  k_stl -8
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_derefb
  k_stl -10
  k_ldl -4
  k_jumpt UARUGO_L_964E
  k_ldl -8
  k_ldrib 71
  k_eq
  k_jumpf UARUGO_L_964E
  k_ldlib -1
  k_jump UARUGO_L_965B
UARUGO_L_964E:
  k_ldl -8
  k_jumpt UARUGO_L_965C
  k_ldl -4
  k_ldrib 71
  k_eq
  k_jumpf UARUGO_L_965C
  k_ldlib 72
UARUGO_L_965B:
  k_stl -8
UARUGO_L_965C:
  k_ldl -8
  k_ldr -4
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_inc
  k_stl -4
  k_ldl -10
  k_ldr -6
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_inc
  k_stl -6
  k_ldlarg 13
  k_addli 8
  k_pushl
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -4
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw UARUGO_D_B316
  k_add
  k_deref
  k_popstoreb
  k_return
UARUGO_F_9682:
  k_func 0
  k_ldlarg 13
  k_addli 2
  k_pushl
  k_ldlarg 13
  k_addli 3
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_popstoreb
  k_ldlarg 11
  k_addli 7
  k_deref
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UARUGO_L_96BF
  k_ldlarg 11
  k_addli 7
  k_deref
  k_jumpf UARUGO_L_96BF
  k_pusharg 13
  k_ldlarg 11
  k_addli 7
  k_deref
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_addli 7
  k_pushl
  k_deref
  k_inc
  k_popstore
  k_ldlarg 13
  k_inc
  k_pushl
  k_ldlarg 11
  k_addli 7
  k_deref
  k_derefb
  k_popstoreb
  k_ldlarg 11
  k_addli 7
  k_pushl
  k_deref
  k_inc
  k_jump UARUGO_L_96C3
UARUGO_L_96BF:
  k_ldlarg 11
  k_addli 7
  k_pushl
  k_ldli 0
UARUGO_L_96C3:
  k_popstore
  k_return
; vars: g_captains, g_fleets | calls 6
UARUGO_F_96C5:
  k_func 18
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -16
  k_ldl -16
  k_addli 7
  k_deref
  k_stl -14
  k_ldl -14
  k_jumpt UARUGO_L_96DD
  k_return
UARUGO_L_96DD:
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -18
  k_ldl -18
  k_derefb
  k_stl -2
  k_ldl -18
  k_inc
  k_derefb
  k_stl -4
  k_ldl -2
  k_ldri 3
  k_sdiv
  k_pushl
  k_ldlba $F165
  k_popr
  k_eq
  k_jumpf UARUGO_L_985F
  k_ldl -4
  k_ldri 3
  k_sdiv
  k_pushl
  k_ldlba $F166
  k_popr
  k_eq
  k_jumpf UARUGO_L_985F
  k_ldl -18
  k_addli 8
  k_derefb
  k_ldri 7
  k_ugt
  k_jumpf UARUGO_L_9712
  k_push -18
  k_push -16
  k_callx UARUGO_F_9620, 4
UARUGO_L_9712:
  k_ldlba $F167
  k_pushl
  k_ldl -18
  k_derefb
  k_ldri 3
  k_umod
  k_popr
  k_eq
  k_jumpf UARUGO_L_9736
  k_ldlba $F168
  k_pushl
  k_ldl -18
  k_inc
  k_derefb
  k_ldri 3
  k_umod
  k_popr
  k_eq
  k_jumpf UARUGO_L_9736
  k_pushi 0
  k_pusharg 11
  k_callx UARUGO_F_9ECE, 4
  k_jump UARUGO_L_986C
UARUGO_L_9736:
  k_ldl -18
  k_addli 8
  k_pushl
  k_ldliw $00FF
  k_popstoreb
  k_ldl -18
  k_addli 2
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpt UARUGO_L_9866
  k_ldl -18
  k_addli 3
  k_derefb
  k_ldriw $00FF
  k_eq
  k_jumpt UARUGO_L_9866
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt UARUGO_L_986C
  k_ldl -14
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UARUGO_L_986C
  k_ldl -14
  k_jumpf UARUGO_L_9770
  k_ldl -14
  k_derefb
  k_stl -10
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -14
  k_jump UARUGO_L_9775
UARUGO_L_9770:
  k_ldl -16
  k_derefb
  k_stl -10
  k_ldl -16
  k_inc
UARUGO_L_9775:
  k_derefb
  k_stl -12
  k_ldl -18
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -10
  k_ldr -2
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_popr
  k_add
  k_stl -6
  k_ldl -18
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -12
  k_ldr -4
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_popr
  k_add
  k_stl -8
  k_ldl -6
  k_ldri 0
  k_lt
  k_jumpt UARUGO_L_97AD
  k_ldl -8
  k_ldri 0
  k_lt
  k_jumpt UARUGO_L_97AD
  k_ldl -6
  k_ldri 13
  k_gt
  k_jumpt UARUGO_L_97AD
  k_ldl -8
  k_ldri 13
  k_gt
  k_jumpf UARUGO_L_9852
UARUGO_L_97AD:
  k_ldl -6
  k_ldri 0
  k_lt
  k_jumpt UARUGO_L_97B9
  k_ldl -6
  k_ldri 13
  k_gt
  k_jumpf UARUGO_L_97ED
UARUGO_L_97B9:
  k_ldl -6
  k_ldri 0
  k_lt
  k_jumpf UARUGO_L_97D6
  k_ldl -18
  k_derefb
  k_jumpf UARUGO_L_97CB
  k_ldl -18
  k_pushl
  k_derefb
  k_dec
  k_jump UARUGO_L_97CE
UARUGO_L_97CB:
  k_push -18
  k_ldlib 71
UARUGO_L_97CE:
  k_popstoreb
  k_ldl -18
  k_addli 2
UARUGO_L_97D1:
  k_pushl
  k_ldli 13
  k_jump UARUGO_L_9826
UARUGO_L_97D6:
  k_ldl -18
  k_derefb
  k_ldrib 71
  k_ult
  k_jumpf UARUGO_L_97E5
  k_ldl -18
  k_pushl
  k_derefb
  k_inc
  k_jump UARUGO_L_97E7
UARUGO_L_97E5:
  k_push -18
  k_ldli 0
UARUGO_L_97E7:
  k_popstoreb
  k_ldl -18
  k_addli 2
  k_jump UARUGO_L_9824
UARUGO_L_97ED:
  k_ldl -8
  k_ldri 0
  k_lt
  k_jumpf UARUGO_L_980C
  k_ldl -18
  k_inc
  k_derefb
  k_jumpf UARUGO_L_9801
  k_ldl -18
  k_inc
  k_pushl
  k_derefb
  k_dec
  k_jump UARUGO_L_9806
UARUGO_L_9801:
  k_ldl -18
  k_inc
  k_pushl
  k_ldlib 35
UARUGO_L_9806:
  k_popstoreb
  k_ldl -18
  k_addli 3
  k_jump UARUGO_L_97D1
UARUGO_L_980C:
  k_ldl -18
  k_inc
  k_derefb
  k_ldrib 35
  k_ult
  k_jumpf UARUGO_L_981D
  k_ldl -18
  k_inc
  k_pushl
  k_derefb
  k_inc
  k_jump UARUGO_L_9821
UARUGO_L_981D:
  k_ldl -18
  k_inc
  k_pushl
  k_ldli 0
UARUGO_L_9821:
  k_popstoreb
  k_ldl -18
  k_addli 3
UARUGO_L_9824:
  k_pushl
  k_ldli 0
UARUGO_L_9826:
  k_popstoreb
  k_ldl -18
  k_derefb
  k_ldr -10
  k_eq
  k_jumpf UARUGO_L_986C
  k_ldl -18
  k_inc
  k_derefb
  k_ldr -12
  k_eq
  k_jumpf UARUGO_L_986C
  k_ldl -16
  k_addli 7
  k_deref
  k_jumpf UARUGO_L_986C
  k_ldl -16
  k_addli 7
  k_deref
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UARUGO_L_986C
  k_pushi 2
  k_ldl -16
  k_addli 7
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
  k_jump UARUGO_L_986C
UARUGO_L_9852:
  k_ldl -18
  k_addli 2
  k_pushl
  k_ldl -6
  k_popstoreb
  k_ldl -18
  k_addli 3
  k_pushl
  k_ldl -8
  k_popstoreb
  k_jump UARUGO_L_986C
UARUGO_L_985F:
  k_ldl -18
  k_addli 8
  k_pushl
  k_ldliw $00FF
  k_popstoreb
UARUGO_L_9866:
  k_push -18
  k_push -16
  k_callx UARUGO_F_9682, 4
UARUGO_L_986C:
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_ldr -2
  k_ne
  k_jumpt UARUGO_L_988C
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_ldr -4
  k_ne
  k_jumpf UARUGO_L_98BE
UARUGO_L_988C:
  k_ldl -18
  k_derefb
  k_stl -2
  k_ldl -18
  k_inc
  k_derefb
  k_stl -4
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_ldr -2
  k_eq
  k_jumpf UARUGO_L_98BE
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_ldr -4
  k_eq
  k_jumpf UARUGO_L_98BE
  k_pusharg 11
  k_callx RF_57CD, 2
  k_push -18
  k_push -16
  k_callx UARUGO_F_9620, 4
UARUGO_L_98BE:
  k_return
; vars: g_captains, g_fleets | calls 5
UARUGO_F_98BF:
  k_func 8
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -2
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -8
  k_ldl -2
  k_addli 4
  k_derefb
  k_jumpf UARUGO_L_9918
  k_ldl -2
  k_addli 7
  k_deref
  k_jumpt UARUGO_L_9989
  k_ldl -2
  k_addli 5
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -4
  k_ldl -4
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -4
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -4
  k_addlib 16
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -4
  k_addli 15
  k_pushl
  k_callx RL_884E, 2
UARUGO_L_990F:
  k_pushl
  k_pusharg 11
  k_callx UARUGO_F_9B03, 10
  k_jump UARUGO_L_9989
UARUGO_L_9918:
  k_ldl -2
  k_addli 5
  k_derefb
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -6
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldri 8
  k_and
  k_jumpt UARUGO_L_9984
  k_ldl -2
  k_addli 7
  k_deref
  k_jumpf UARUGO_L_9957
  k_ldl -2
  k_addli 7
  k_deref
  k_jumpf UARUGO_L_9989
  k_ldl -2
  k_addli 7
  k_deref
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UARUGO_L_9989
  k_ldl -6
  k_derefb
  k_pushl
  k_ldl -2
  k_derefb
  k_popr
  k_ne
  k_jumpt UARUGO_L_9957
  k_ldl -6
  k_inc
  k_derefb
  k_pushl
  k_ldl -2
  k_inc
  k_derefb
  k_popr
  k_ne
  k_jumpf UARUGO_L_9989
UARUGO_L_9957:
  k_ldl -2
  k_addli 7
  k_deref
  k_jumpf UARUGO_L_9973
  k_pushi 5
  k_callx RF_3F3E, 2
  k_jumpf UARUGO_L_9973
  k_ldl -2
  k_addli 6
  k_derefb
  k_jumpt UARUGO_L_9989
  k_pushi 2
  k_callx RF_3F3E, 2
  k_jumpf UARUGO_L_9989
UARUGO_L_9973:
  k_ldl -6
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -6
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -6
  k_inc
  k_derefb
  k_pushl
  k_ldl -6
  k_derefb
  k_jump UARUGO_L_990F
UARUGO_L_9984:
  k_pusharg 11
  k_callx RF_46C6, 2
UARUGO_L_9989:
  k_ldl -8
  k_derefb
  k_pushl
  k_ldl -2
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A85
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldl -2
  k_inc
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A85
  k_ldl -8
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A4E
  k_ldl -8
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 3
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A4E
  k_ldl -2
  k_addli 7
  k_pushl
  k_ldli 0
  k_popstore
  k_ldl -2
  k_addli 4
  k_derefb
  k_jumpf UARUGO_L_99FB
  k_ldl -2
  k_addli 5
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -4
  k_ldl -8
  k_addli 2
  k_pushl
  k_ldl -4
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_ldl -8
  k_addli 3
  k_pushl
  k_ldl -4
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_popstoreb
  k_pushib 18
  k_ldl -8
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldl -2
  k_addli 6
  k_pushl
  k_pushi 6
  k_callx RF_3F3E, 2
  k_addli 5
UARUGO_L_99F7:
  k_popstoreb
  k_jump UARUGO_L_9A8A
UARUGO_L_99FB:
  k_ldl -2
  k_addli 5
  k_derefb
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -6
  k_ldl -6
  k_derefb
  k_pushl
  k_ldl -8
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A8A
  k_ldl -6
  k_inc
  k_derefb
  k_pushl
  k_ldl -8
  k_inc
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A8A
  k_ldl -6
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -8
  k_addli 2
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A8A
  k_ldl -6
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -8
  k_addli 3
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_9A8A
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 34
  k_and
  k_jumpt UARUGO_L_9A8A
  k_ldlba $EA8E
  k_ldri 10
  k_ult
  k_jumpf UARUGO_L_9A8A
  k_ldl -2
  k_addli 5
  k_derefb
  k_inc
  k_stlba $F197
  k_jump UARUGO_L_9A8A
UARUGO_L_9A4E:
  k_ldl -8
  k_derefb
  k_pushl
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_popr
  k_ne
  k_jumpt UARUGO_L_9A75
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_popr
  k_ne
  k_jumpf UARUGO_L_9A85
UARUGO_L_9A75:
  k_ldl -8
  k_addli 2
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_popstoreb
  k_ldl -8
  k_addli 3
  k_pushl
  k_ldl -2
  k_addli 3
  k_derefb
  k_jump UARUGO_L_99F7
UARUGO_L_9A85:
  k_pusharg 11
  k_callx UARUGO_F_96C5, 2
UARUGO_L_9A8A:
  k_return
; calls 2
UARUGO_F_9A8B:
  k_func 16
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_callx UARUGO_L_B183, 8
  k_ldli 0
  k_stl -6
  k_ldliw $00FF
  k_stl -4
UARUGO_L_9A9E:
  k_ldlarg 13
  k_ldrib 72
  k_mul
  k_ldrarg 11
  k_add
  k_ldriw $F300
  k_add
  k_derefb
  k_jumpf UARUGO_L_9AFC
  k_ldli 0
  k_stl -8
UARUGO_L_9AAE:
  k_ldlarg 11
  k_stl -14
  k_ldlarg 13
  k_stl -16
  k_push -8
  k_leal -16
  k_pushl
  k_leal -14
  k_pushl
  k_callx UARUGO_L_B0EB, 6
  k_ldl -16
  k_ldrib 72
  k_mul
  k_ldr -14
  k_add
  k_ldriw $F300
  k_add
  k_derefb
  k_stl -2
  k_ldr -4
  k_ult
  k_jumpf UARUGO_L_9AD6
  k_ldl -2
  k_stl -4
  k_ldl -14
  k_stl -10
  k_ldl -16
  k_stl -12
UARUGO_L_9AD6:
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -8
  k_ldri 8
  k_lt
  k_jumpt UARUGO_L_9AAE
  k_ldln 19
  k_inc
  k_stln 19
  k_dec
  k_pushl
  k_ldl -10
  k_stlarg 11
  k_popstoreb
  k_ldln 19
  k_inc
  k_stln 19
  k_dec
  k_pushl
  k_ldl -12
  k_stlarg 13
  k_popstoreb
  k_ldl -6
  k_inc
  k_stl -6
  k_ldrib 19
  k_ugt
  k_jumpf UARUGO_L_9A9E
UARUGO_L_9AFC:
  k_pushn 19
  k_ldliw $00FF
  k_popstoreb
  k_return
; vars: g_fleets, g_captains | calls 1
UARUGO_F_9B03:
  k_func 4
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -4
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -2
  k_ldl -4
  k_derefb
  k_ldrarg 13
  k_ne
  k_jumpt UARUGO_L_9B29
  k_ldl -4
  k_inc
  k_derefb
  k_ldrarg 15
  k_ne
  k_jumpf UARUGO_L_9B39
UARUGO_L_9B29:
  k_ldl -2
  k_addli 9
  k_pushl
  k_pusharg 15
  k_pusharg 13
  k_ldl -4
  k_inc
  k_derefb
  k_pushl
  k_ldl -4
  k_derefb
  k_pushl
  k_callx UARUGO_F_9A8B, 10
UARUGO_L_9B39:
  k_ldl -2
  k_addli 7
  k_pushl
  k_ldl -2
  k_addli 9
  k_popstore
  k_push -2
  k_ldlarg 13
  k_popstoreb
  k_ldl -2
  k_inc
  k_pushl
  k_ldlarg 15
  k_popstoreb
  k_ldl -2
  k_addli 2
  k_pushl
  k_ldlarg 17
  k_popstoreb
  k_ldl -2
  k_addli 3
  k_pushl
  k_ldln 19
  k_popstoreb
  k_return
UARUGO_F_9B53:
  k_func 7
  k_ldliw $0004
  k_stl -2
  k_addliw $0144
  k_stln -7
  k_ldliw $F300
  k_stl -4
  k_jump UARUGO_L_9B9A
UARUGO_L_9B68:
  k_ldliw $0080
  k_jump UARUGO_L_9B8E
UARUGO_L_9B6E:
  k_ldl -4
  k_inc
  k_stl -4
  k_dec
  k_pushl
  k_ldlbf -5
  k_pushl
  k_ldl -2
  k_derefb
  k_popr
  k_and
  k_jumpf UARUGO_L_9B84
  k_ldliw $00FF
  k_jump UARUGO_L_9B87
UARUGO_L_9B84:
  k_ldliw $00FE
UARUGO_L_9B87:
  k_popstoreb
  k_ldli 1
  k_swap
  k_ldlbf -5
  k_shr
UARUGO_L_9B8E:
  k_stlbf -5
  k_ldlbf -5
  k_jumpt UARUGO_L_9B6E
  k_ldl -2
  k_inc
  k_stl -2
UARUGO_L_9B9A:
  k_ldl -2
  k_ldrn -7
  k_ult
  k_jumpt UARUGO_L_9B68
  k_return
; calls 1
UARUGO_F_9BA2:
  k_func 10
  k_ldlarg 13
  k_derefb
  k_stl -4
  k_ldlarg 13
  k_inc
  k_derefb
  k_stl -6
  k_ldlarg 11
  k_addli 7
  k_deref
  k_stl -2
  k_ldl -2
  k_derefb
  k_stl -8
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_derefb
  k_stl -10
  k_ldl -4
  k_jumpt UARUGO_L_9BCB
  k_ldl -8
  k_ldrib 71
  k_eq
  k_jumpf UARUGO_L_9BCB
  k_ldlib -1
  k_jump UARUGO_L_9BD8
UARUGO_L_9BCB:
  k_ldl -8
  k_jumpt UARUGO_L_9BD9
  k_ldl -4
  k_ldrib 71
  k_eq
  k_jumpf UARUGO_L_9BD9
  k_ldlib 72
UARUGO_L_9BD8:
  k_stl -8
UARUGO_L_9BD9:
  k_ldl -8
  k_ldr -4
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_inc
  k_stl -4
  k_ldl -10
  k_ldr -6
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_inc
  k_stl -6
  k_ldlarg 13
  k_addli 8
  k_pushl
  k_ldl -4
  k_ldri 3
  k_mul
  k_ldr -6
  k_add
  k_ldriw UARUGO_D_B328
  k_add
  k_derefb
  k_popstoreb
  k_return
; vars: g_cargo
UARUGO_F_9BFC:
  k_func 8
  k_ldlarg 11
  k_ldri 5
  k_udiv
  k_stl -8
  k_jumpf UARUGO_L_9C12
  k_ldliw $00F0
  k_stl -4
  k_ldl -8
  k_addlib 20
  k_jump UARUGO_L_9C36
UARUGO_L_9C12:
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stl -8
  k_ldl -8
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stl -2
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -2
  k_inc
  k_derefb
  k_pushl
  k_ldl -2
  k_addli 2
  k_derefb
  k_shl1
  k_popr
  k_add
  k_popr
  k_add
  k_stl -4
  k_ldl -8
UARUGO_L_9C36:
  k_ldri 7
  k_mul
  k_ldriw $E447
  k_add
  k_derefb
  k_stl -6
  k_ldl -4
  k_ldr -6
  k_mul
  k_ldri 8
  k_sdiv
  k_ldr -4
  k_add
  k_ldri 8
  k_sdiv
  k_return
; vars: g_ships | calls 2
UARUGO_F_9C48:
  k_func 12
  k_ldli 5
  k_swap
  k_ldlarg 11
  k_mul
  k_stlarg 11
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -10
  k_addlib 35
  k_stl -12
  k_ldliw $00C8
  k_stl -2
  k_ldli 0
  k_stl -4
  k_jump UARUGO_L_9CA0
UARUGO_L_9C66:
  k_ldl -10
  k_addli 6
  k_derefb
  k_ldrib 64
  k_and
  k_jumpf UARUGO_L_9C9A
  k_ldl -4
  k_inc
  k_stl -4
  k_pushib 100
  k_ldl -10
  k_addli 2
  k_derefb
  k_ldri 2
  k_sdiv
  k_pushl
  k_pusharg 11
  k_callx UARUGO_F_9BFC, 2
  k_pushl
  k_ldl -10
  k_addli 2
  k_derefb
  k_ldri 2
  k_sdiv
  k_popr
  k_mul
  k_ldrib 100
  k_sdiv
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_stl -8
  k_ldl -2
  k_ldr -8
  k_ugt
  k_jumpf UARUGO_L_9C9A
  k_ldl -8
  k_stl -2
UARUGO_L_9C9A:
  k_ldlarg 11
  k_inc
  k_stlarg 11
  k_ldl -10
  k_addli 7
  k_stl -10
UARUGO_L_9CA0:
  k_ldl -10
  k_ldr -12
  k_ult
  k_jumpt UARUGO_L_9C66
  k_ldl -4
  k_jumpt UARUGO_L_9CAC
  k_ldli 0
  k_return
UARUGO_L_9CAC:
  k_ldl -2
  k_return
; sys: memset_long | vars: g_fleets, g_captains | calls 3
UARUGO_F_9CAE:
  k_func 24
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -20
  k_ldl -20
  k_derefb
  k_stl -4
  k_ldl -20
  k_inc
  k_derefb
  k_stl -6
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -24
  k_ldl -24
  k_addli 4
  k_derefb
  k_jumpt UARUGO_L_9D23
  k_ldl -24
  k_addli 5
  k_derefb
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -22
  k_ldl -22
  k_derefb
  k_pushl
  k_ldl -24
  k_derefb
  k_popr
  k_ne
  k_jumpt UARUGO_L_9D0A
  k_ldl -22
  k_inc
  k_derefb
  k_pushl
  k_ldl -24
  k_inc
  k_derefb
  k_popr
  k_ne
  k_jumpt UARUGO_L_9D0A
  k_ldl -22
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -24
  k_addli 2
  k_derefb
  k_popr
  k_ne
  k_jumpt UARUGO_L_9D0A
  k_ldl -22
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -24
  k_addli 3
  k_derefb
  k_popr
  k_ne
  k_jumpf UARUGO_L_9D23
UARUGO_L_9D0A:
  k_push -24
  k_ldl -22
  k_derefb
  k_popstoreb
  k_ldl -24
  k_inc
  k_pushl
  k_ldl -22
  k_inc
  k_derefb
  k_popstoreb
  k_ldl -24
  k_addli 2
  k_pushl
  k_ldl -22
  k_addli 2
  k_derefb
  k_popstoreb
  k_ldl -24
  k_addli 3
  k_pushl
  k_ldl -22
  k_addli 3
  k_derefb
  k_popstoreb
UARUGO_L_9D23:
  k_pushiw $0100
  k_pushiw $00FE
  k_pushiw $F300
  k_pushib 126
  k_pushib 36
  k_callx syscall, 10  ; sys 36 memset_long
  k_ldli 0
  k_stl -12
UARUGO_L_9D36:
  k_ldli 0
  k_stl -14
UARUGO_L_9D38:
  k_push -14
  k_push -12
  k_push -6
  k_push -4
  k_callx RL_8616, 8
  k_jumpt UARUGO_L_9D51
  k_ldl -14
  k_inc
  k_ldri 4
  k_shl
  k_ldr -12
  k_add
  k_ldriw $F301
  k_add
  k_pushl
  k_derefb
  k_inc
  k_popstoreb
UARUGO_L_9D51:
  k_ldl -14
  k_inc
  k_stl -14
  k_ldl -14
  k_ldri 14
  k_ult
  k_jumpt UARUGO_L_9D38
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -12
  k_ldri 14
  k_ult
  k_jumpt UARUGO_L_9D36
  k_ldl -24
  k_derefb
  k_ldr -4
  k_eq
  k_jumpf UARUGO_L_9D7E
  k_ldl -24
  k_inc
  k_derefb
  k_ldr -6
  k_eq
  k_jumpf UARUGO_L_9D7E
  k_ldl -24
  k_addli 2
  k_derefb
  k_inc
  k_stl -12
  k_ldl -24
  k_addli 3
  k_derefb
  k_inc
  k_jump UARUGO_L_9DDD
UARUGO_L_9D7E:
  k_ldl -24
  k_addli 7
  k_deref
  k_stl -2
  k_ldl -2
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UARUGO_L_9D99
  k_ldl -2
  k_jumpf UARUGO_L_9D99
  k_ldl -2
  k_inc
  k_stl -2
  k_dec
  k_derefb
  k_stl -8
  k_ldl -2
  k_jump UARUGO_L_9D9E
UARUGO_L_9D99:
  k_ldl -24
  k_derefb
  k_stl -8
  k_ldl -24
  k_inc
UARUGO_L_9D9E:
  k_derefb
  k_stl -10
  k_ldl -8
  k_ldr -4
  k_sub
  k_stl -16
  k_ldl -10
  k_ldr -6
  k_sub
  k_stl -18
  k_ldl -16
  k_ldri 0
  k_lt
  k_jumpf UARUGO_L_9DB2
  k_ldli 0
  k_jump UARUGO_L_9DC2
UARUGO_L_9DB2:
  k_ldl -16
  k_ldri 0
  k_gt
  k_jumpf UARUGO_L_9DBC
  k_ldli 15
  k_jump UARUGO_L_9DC2
UARUGO_L_9DBC:
  k_pushi 12
  k_callx RF_3F3E, 2
  k_addli 2
UARUGO_L_9DC2:
  k_stl -12
  k_ldl -18
  k_ldri 0
  k_lt
  k_jumpf UARUGO_L_9DCD
  k_ldli 0
  k_jump UARUGO_L_9DDD
UARUGO_L_9DCD:
  k_ldl -18
  k_ldri 0
  k_gt
  k_jumpf UARUGO_L_9DD7
  k_ldli 15
  k_jump UARUGO_L_9DDD
UARUGO_L_9DD7:
  k_pushi 12
  k_callx RF_3F3E, 2
  k_addli 2
UARUGO_L_9DDD:
  k_stl -14
  k_push -14
  k_push -12
  k_ldl -20
  k_addli 3
  k_derefb
  k_inc
  k_pushl
  k_ldl -20
  k_addli 2
  k_derefb
  k_inc
  k_pushl
  k_callx UARUGO_L_AF99, 8
  k_return
; vars: g_fleets | calls 3
UARUGO_F_9DEF:
  k_func 16
  k_pusharg 11
  k_callx UARUGO_F_9CAE, 2
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -16
  k_ldl -16
  k_addli 2
  k_derefb
  k_inc
  k_stla $FF60
  k_stl -8
  k_ldl -16
  k_addli 3
  k_derefb
  k_inc
  k_stla $FF62
  k_stl -10
  k_ldliw $00FF
  k_stl -14
  k_ldli 0
  k_stl -12
UARUGO_L_9E17:
  k_push -12
  k_leal -6
  k_pushl
  k_leal -4
  k_pushl
  k_callx UARUGO_L_ADDE, 6
  k_jumpf UARUGO_L_9E3F
  k_ldl -6
  k_ldri 4
  k_shl
  k_ldr -4
  k_add
  k_ldriw $F300
  k_add
  k_stl -2
  k_ldl -2
  k_derefb
  k_ldr -14
  k_ult
  k_jumpf UARUGO_L_9E3F
  k_ldl -2
  k_derefb
  k_stl -14
  k_ldl -4
  k_stl -8
  k_ldl -6
  k_stl -10
UARUGO_L_9E3F:
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -12
  k_ldri 8
  k_ult
  k_jumpt UARUGO_L_9E17
  k_ldl -8
  k_ldra $FF60
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_stla $FF60
  k_ldl -10
  k_ldra $FF62
  k_sub
  k_pushl
  k_callx RL_892B, 2
  k_stla $FF62
  k_ldl -16
  k_addli 8
  k_pushl
  k_ldla $FF60
  k_inc
  k_ldri 3
  k_mul
  k_ldra $FF62
  k_add
  k_ldriw UARUGO_D_B329
  k_add
  k_derefb
  k_popstoreb
  k_return
; calls 1
UARUGO_F_9E76:
  k_func 4
  k_pushn 19
  k_pusharg 13
  k_pusharg 11
  k_callx $8A5B, 6
  k_ldln 19
  k_jumpf UARUGO_L_9EC8
  k_ldlarg 11
  k_ldri 14
  k_mul
  k_ldrarg 13
  k_add
  k_ldriw $F1AE
  k_add
  k_derefb
  k_stl -2
  k_ldl -2
  k_ldriw $00FF
  k_eq
  k_jumpf UARUGO_L_9EA3
  k_ldln 21
  k_jumpf UARUGO_L_9EC8
  k_jump UARUGO_L_9EC2
UARUGO_L_9EA3:
  k_ldli 1
  k_stl -4
  k_jump UARUGO_L_9EB2
UARUGO_L_9EA8:
  k_ldl -4
  k_dec
UARUGO_L_9EAA:
  k_stl -4
  k_ldl -2
  k_ldriw $F199
  k_add
  k_derefb
  k_stl -2
UARUGO_L_9EB2:
  k_ldl -2
  k_jumpf UARUGO_L_9EA8
  k_ldl -2
  k_ldriw $00FF
  k_ne
  k_jumpt UARUGO_L_9EC9
  k_ldl -4
  k_jumpt UARUGO_L_9EC8
UARUGO_L_9EC2:
  k_pusharg 13
  k_pusharg 11
  k_callx RF_55DB, 4
UARUGO_L_9EC8:
  k_return
UARUGO_L_9EC9:
  k_ldl -4
  k_inc
  k_jump UARUGO_L_9EAA
; sys: wait_frames | vars: g_fleets, g_days_at_sea, g_captains, g_zone_attr | calls 18
UARUGO_F_9ECE:
  k_func 38
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -4
  k_ldlarg 13
  k_jumpf UARUGO_L_9F14
  k_ldlba $F193
  k_jumpf UARUGO_L_9EE8
  k_call UARUGO_F_A8A0
UARUGO_L_9EE8:
  k_ldlba $F192
  k_jumpf UARUGO_L_9EF1
  k_call UARUGO_F_ADC0
UARUGO_L_9EF1:
  k_ldlba $EA8E
  k_jumpt UARUGO_L_9F1E
  k_call UARUGO_F_A529
  k_ldl -4
  k_addli 15
  k_derefb
  k_ldri 1
  k_and
  k_jumpf UARUGO_L_9F1E
  k_pushiw $0096
  k_ldla g_days_at_sea
  k_inc
  k_pushl
  k_callx RL_8962, 4
  k_stla g_days_at_sea
  k_jump UARUGO_L_9F1E
UARUGO_L_9F14:
  k_ldlarg 11
  k_dec
  k_ldrib 51
  k_mul
  k_ldriw g_captains
  k_add
  k_stl -2
UARUGO_L_9F1E:
  k_ldlba $F193
  k_ldri 1
  k_eq
  k_jumpf UARUGO_L_9F35
  k_ldlarg 11
  k_jumpt UARUGO_L_9F35
  k_pushi 5
  k_callx RF_3F3E, 2
  k_jumpt UARUGO_L_9F35
  k_call UARUGO_F_AA23
UARUGO_L_9F35:
  k_ldl -4
  k_stln -30
  k_ldl -4
  k_inc
  k_stln -32
  k_ldl -4
  k_addli 2
  k_stln -26
  k_ldl -4
  k_addli 3
  k_stln -28
  k_ldl -4
  k_addli 4
  k_stln -36
  k_ldl -4
  k_addli 6
  k_stln -38
  k_ldln -30
  k_derefb
  k_stl -18
  k_ldln -32
  k_derefb
  k_stl -20
  k_ldln -26
  k_derefb
  k_stl -14
  k_ldln -28
  k_derefb
  k_stl -16
  k_ldln -36
  k_deref
  k_stl -22
  k_ldln -38
  k_deref
  k_stl -24
  k_ldlarg 13
  k_jumpf UARUGO_L_9F72
  k_ldlba $F193
  k_jumpf UARUGO_L_9F72
  k_ldli 0
  k_jump UARUGO_L_9F8D
UARUGO_L_9F72:
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_derefb
  k_ldri 1
  k_and
  k_pushl
  k_ldlba $EF83
  k_pushl
  k_pusharg 11
  k_callx UARUGO_F_9C48, 2
  k_popr
  k_mul
  k_ldrib 26
  k_sdiv
  k_popr
  k_mul
UARUGO_L_9F8D:
  k_stl -8
  k_pusharg 11
  k_callx RF_2A9E, 2
  k_stl -10
  k_ldlarg 11
  k_ldri 4
  k_shl
  k_ldriw $E573
  k_add
  k_derefb
  k_ldri 1
  k_and
  k_pushl
  k_ldlba g_zone_attr+2
  k_ldri 3
  k_shr
  k_ldri 3
  k_and
  k_popr
  k_mul
  k_stl -12
  k_ldl -4
  k_addli 8
  k_derefb
  k_ldri 7
  k_ugt
  k_jumpf UARUGO_L_9FB6
  k_pusharg 11
  k_callx UARUGO_F_9DEF, 2
UARUGO_L_9FB6:
  k_pushn -38
  k_pushn -36
  k_push -8
  k_ldl -4
  k_addli 8
  k_derefb
  k_pushl
  k_callx UARUGO_L_AE43, 8
  k_pushn -38
  k_pushn -36
  k_push -10
  k_ldlba $EF82
  k_pushl
  k_callx UARUGO_L_AE43, 8
  k_pushn -38
  k_pushn -36
  k_push -12
  k_ldlba g_zone_attr+2
  k_ldri 6
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_callx UARUGO_L_AE43, 8
  k_push -4
  k_callx UARUGO_L_AED4, 2
  k_jumpf UARUGO_L_A207
  k_ldln -28
  k_derefb
  k_pushl
  k_ldln -26
  k_derefb
  k_pushl
  k_ldln -32
  k_derefb
  k_pushl
  k_ldln -30
  k_derefb
  k_pushl
  k_callx RL_8616, 8
  k_jumpt UARUGO_L_A090
  k_ldlarg 13
  k_jumpt UARUGO_L_A07D
  k_ldl -2
  k_derefb
  k_pushl
  k_ldlba $F167
  k_pushl
  k_ldlba $F165
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_popr
  k_eq
  k_jumpf UARUGO_L_A067
  k_ldl -2
  k_inc
  k_derefb
  k_pushl
  k_ldlba $F168
  k_pushl
  k_ldlba $F166
  k_ldri 3
  k_mul
  k_popr
  k_add
  k_popr
  k_eq
  k_jumpf UARUGO_L_A067
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_ldln -26
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A067
  k_ldl -2
  k_addli 3
  k_derefb
  k_pushl
  k_ldln -28
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A067
  k_ldl -2
  k_addli 4
  k_derefb
  k_jumpf UARUGO_L_A07D
  k_pushib 18
  k_ldl -4
  k_addli 15
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldl -2
  k_addli 6
  k_pushl
  k_pushi 6
  k_callx RF_3F3E, 2
  k_addli 5
  k_popstoreb
  k_pushi 1
  k_pusharg 11
  k_push -20
  k_push -18
  k_push -16
  k_push -14
  k_callx UARUGO_F_9E76, 12
  k_return
UARUGO_L_A067:
  k_pushn -30
  k_ldl -18
  k_popstoreb
  k_pushn -32
  k_ldl -20
  k_popstoreb
  k_pushn -26
  k_ldl -14
  k_popstoreb
  k_pushn -28
  k_ldl -16
  k_popstoreb
  k_pusharg 11
  k_callx UARUGO_F_9DEF, 2
  k_return
UARUGO_L_A07D:
  k_pushn -30
  k_ldl -18
  k_popstoreb
  k_pushn -32
  k_ldl -20
  k_popstoreb
  k_pushn -26
  k_ldl -14
  k_popstoreb
  k_pushn -28
  k_ldl -16
  k_popstoreb
  k_jump UARUGO_L_A207
UARUGO_L_A090:
  k_ldln -30
  k_derefb
  k_ldr -18
  k_ne
  k_jumpt UARUGO_L_A0A0
  k_ldln -32
  k_derefb
  k_ldr -20
  k_ne
  k_jumpf UARUGO_L_A102
UARUGO_L_A0A0:
  k_ldlarg 13
  k_jumpf UARUGO_L_A0B3
  k_ldln -32
  k_derefb
  k_pushl
  k_ldln -30
  k_derefb
  k_pushl
  k_callx RF_59AF, 4
  k_jump UARUGO_L_A102
UARUGO_L_A0B3:
  k_push -16
  k_push -14
  k_push -20
  k_push -18
  k_callx RL_8616, 8
  k_pushl
  k_pusharg 11
  k_push -20
  k_push -18
  k_push -16
  k_push -14
  k_callx UARUGO_F_9E76, 12
  k_ldl -2
  k_addli 7
  k_deref
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpf UARUGO_L_A0FC
  k_ldl -2
  k_addli 7
  k_deref
  k_jumpf UARUGO_L_A0FC
  k_ldl -2
  k_addli 7
  k_deref
  k_stln -34
  k_ldln -34
  k_derefb
  k_pushl
  k_ldln -30
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A0FC
  k_ldln -34
  k_inc
  k_derefb
  k_pushl
  k_ldln -32
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A0FC
  k_pushi 2
  k_ldl -2
  k_addli 7
  k_popr
  k_pushl
  k_deref
  k_add
  k_popstore
UARUGO_L_A0FC:
  k_push -4
  k_push -2
  k_callx UARUGO_F_9BA2, 4
UARUGO_L_A102:
  k_ldln -26
  k_derefb
  k_ldr -14
  k_ne
  k_jumpt UARUGO_L_A112
  k_ldln -28
  k_derefb
  k_ldr -16
  k_ne
  k_jumpf UARUGO_L_A207
UARUGO_L_A112:
  k_ldln -30
  k_derefb
  k_ldr -18
  k_eq
  k_jumpf UARUGO_L_A207
  k_ldln -32
  k_derefb
  k_ldr -20
  k_eq
  k_jumpf UARUGO_L_A207
  k_push -16
  k_push -14
  k_push -20
  k_push -18
  k_callx RL_8616, 8
  k_pushl
  k_pusharg 11
  k_push -20
  k_push -18
  k_push -16
  k_push -14
  k_callx UARUGO_F_9E76, 12
  k_ldlarg 13
  k_jumpf UARUGO_L_A184
  k_ldln -28
  k_derefb
  k_ldr -16
  k_ne
  k_jumpf UARUGO_L_A184
  k_ldl -16
  k_ldri 7
  k_eq
  k_jumpf UARUGO_L_A161
  k_ldln -28
  k_derefb
  k_pushl
  k_ldl -16
  k_popr
  k_ult
  k_jumpf UARUGO_L_A161
  k_ldli 1
  k_stlba $F28C
  k_pushi 7
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 1
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
UARUGO_L_A161:
  k_ldl -16
  k_ldri 6
  k_eq
  k_jumpf UARUGO_L_A184
  k_ldln -28
  k_derefb
  k_pushl
  k_ldl -16
  k_popr
  k_ugt
  k_jumpf UARUGO_L_A184
  k_ldli 2
  k_stlba $F28C
  k_pushiw $01F7
  k_pushi 0
  k_callx RF_530E, 4
  k_pushi 1
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
UARUGO_L_A184:
  k_pusharg 11
  k_callx RF_57CD, 2
  k_ldlarg 13
  k_jumpf UARUGO_L_A1A3
  k_ldlba $EF81
  k_jumpf UARUGO_L_A207
  k_push -4
  k_ldln -28
  k_derefb
  k_pushl
  k_ldln -26
  k_derefb
  k_pushl
  k_callx UARUGO_F_A359, 6
  k_jump UARUGO_L_A207
UARUGO_L_A1A3:
  k_ldl -2
  k_addli 4
  k_derefb
  k_jumpt UARUGO_L_A1FA
  k_ldl -2
  k_addli 5
  k_derefb
  k_ldri 4
  k_shl
  k_ldriw g_fleets
  k_add
  k_stl -6
  k_ldl -4
  k_derefb
  k_pushl
  k_ldl -6
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A1FA
  k_ldl -4
  k_inc
  k_derefb
  k_pushl
  k_ldl -6
  k_inc
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A1FA
  k_ldl -4
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -6
  k_addli 2
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A1FA
  k_ldl -4
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -6
  k_addli 3
  k_derefb
  k_popr
  k_eq
  k_jumpf UARUGO_L_A1FA
  k_ldl -6
  k_addli 15
  k_derefb
  k_ldrib 34
  k_and
  k_jumpt UARUGO_L_A1FA
  k_ldlba $EA8E
  k_ldri 10
  k_ult
  k_jumpf UARUGO_L_A1FA
  k_ldl -2
  k_addli 5
  k_derefb
  k_inc
  k_stlba $F197
  k_return
UARUGO_L_A1FA:
  k_pushi 15
  k_callx RF_3F3E, 2
  k_jumpt UARUGO_L_A207
  k_pusharg 11
  k_callx UARUGO_F_9DEF, 2
UARUGO_L_A207:
  k_return
UARUGO_F_A208:
  k_func 6
  k_ldliw $E99C
  k_stl -2
  k_stl -4
  k_ldli 0
  k_jump UARUGO_L_A229
UARUGO_L_A216:
  k_ldl -2
  k_derefb
  k_ldrarg 11
  k_ne
  k_jumpf UARUGO_L_A224
  k_push -4
  k_ldl -2
  k_derefb
  k_popstoreb
  k_ldl -4
  k_inc
  k_stl -4
UARUGO_L_A224:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -6
  k_inc
UARUGO_L_A229:
  k_stl -6
  k_ldl -6
  k_ldri 10
  k_ult
  k_jumpf UARUGO_L_A239
  k_ldl -2
  k_derefb
  k_ldriw $00FF
  k_ne
  k_jumpt UARUGO_L_A216
UARUGO_L_A239:
  k_push -4
  k_ldliw $00FF
  k_popstoreb
  k_pushiw $00FE
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $E44A
  k_add
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_return
UARUGO_F_A24E:
  k_func 6
  k_ldliw $EF6D
  k_stl -2
  k_stl -4
  k_pushl
  k_ldlba $EF81
  k_popr
  k_add
  k_stl -6
  k_jump UARUGO_L_A273
UARUGO_L_A262:
  k_ldl -4
  k_derefb
  k_ldrarg 11
  k_ne
  k_jumpf UARUGO_L_A270
  k_push -2
  k_ldl -4
  k_derefb
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
UARUGO_L_A270:
  k_ldl -4
  k_inc
  k_stl -4
UARUGO_L_A273:
  k_ldl -4
  k_ldr -6
  k_ult
  k_jumpt UARUGO_L_A262
  k_ldlba $EF81
  k_dec
  k_stlba $EF81
  k_return
; vars: g_port_flags | calls 3
UARUGO_F_A281:
  k_func 6
  k_ldlarg 11
  k_ldri 0
  k_lt
  k_jumpt UARUGO_L_A29E
  k_ldlarg 11
  k_ldri 13
  k_gt
  k_jumpt UARUGO_L_A29E
  k_ldlarg 13
  k_ldri 0
  k_lt
  k_jumpt UARUGO_L_A29E
  k_ldlarg 13
  k_ldri 13
  k_gt
  k_jumpf UARUGO_L_A2A0
UARUGO_L_A29E:
  k_ldli 0
  k_return
UARUGO_L_A2A0:
  k_ldliw $EF6D
  k_stl -2
  k_pushl
  k_ldlba $EF81
  k_popr
  k_add
  k_stl -4
  k_jump UARUGO_L_A2FD
UARUGO_L_A2AE:
  k_ldl -2
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -6
  k_ldl -6
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_ldrarg 11
  k_eq
  k_jumpf UARUGO_L_A2FA
  k_ldl -6
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_ldrarg 13
  k_eq
  k_jumpf UARUGO_L_A2FA
  k_ldl -2
  k_derefb
  k_ldriw g_port_flags
  k_add
  k_derefb
  k_ldri 8
  k_and
  k_jumpt UARUGO_L_A2FA
  k_pushi 8
  k_ldl -2
  k_derefb
  k_ldriw g_port_flags
  k_add
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldl -2
  k_derefb
  k_pushl
  k_callx port_discovered, 2
  k_ldl -2
  k_derefb
  k_pushl
  k_callx UARUGO_F_A24E, 2
  k_ldli 1
  k_return
UARUGO_L_A2FA:
  k_ldl -2
  k_inc
  k_stl -2
UARUGO_L_A2FD:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UARUGO_L_A2AE
  k_ldli 0
  k_return
; vars: g_port_flags | calls 3
UARUGO_F_A305:
  k_func 6
  k_ldliw $EF6D
  k_stl -2
  k_pushl
  k_ldlba $EF81
  k_popr
  k_add
  k_stl -4
  k_jump UARUGO_L_A34E
UARUGO_L_A318:
  k_ldl -2
  k_derefb
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -6
  k_pushi 8
  k_ldl -2
  k_derefb
  k_ldriw g_port_flags
  k_add
  k_popr
  k_pushl
  k_derefb
  k_or
  k_popstoreb
  k_ldl -2
  k_derefb
  k_pushl
  k_callx port_discovered, 2
  k_ldl -6
  k_addlib 18
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_ldl -6
  k_addlib 17
  k_pushl
  k_callx RL_884E, 2
  k_pushl
  k_callx RF_554A, 4
  k_ldl -2
  k_inc
  k_stl -2
UARUGO_L_A34E:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UARUGO_L_A318
  k_ldli 0
  k_stlba $EF81
  k_return
; calls 4
UARUGO_F_A359:
  k_func 4
  k_ldlarg 15
  k_addli 11
  k_deref
  k_ldri 1
  k_and
  k_jumpf UARUGO_L_A36F
  k_call UARUGO_F_AC7C
  k_call UARUGO_F_A305
  k_jump UARUGO_L_A3B4
UARUGO_L_A36F:
  k_ldli 0
  k_stl -4
UARUGO_L_A371:
  k_ldl -4
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -4
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_pushl
  k_callx UARUGO_F_A281, 4
  k_jumpf UARUGO_L_A3AB
  k_call UARUGO_F_AC7C
  k_ldl -4
  k_shl1
  k_shl1
  k_ldriw $EF89
  k_add
  k_deref
  k_ldrarg 13
  k_add
  k_pushl
  k_ldl -4
  k_shl1
  k_shl1
  k_ldriw $EF87
  k_add
  k_deref
  k_ldrarg 11
  k_add
  k_pushl
  k_callx RF_554A, 4
UARUGO_L_A3AB:
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 8
  k_lt
  k_jumpt UARUGO_L_A371
UARUGO_L_A3B4:
  k_return
; vars: g_cargo | calls 2
UARUGO_F_A3B5:
  k_func 19
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -7
  k_ldli 0
  k_jump UARUGO_L_A439
UARUGO_L_A3C9:
  k_leal -6
  k_pushl
  k_ldln -7
  k_ldrn -9
  k_sub
  k_popr
  k_add
  k_derefb
  k_stln -11
  k_ldln -11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stln -19
  k_ldlarg 11
  k_jumpf UARUGO_L_A3ED
  k_ldln -19
  k_addlib 16
  k_jump UARUGO_L_A3F1
UARUGO_L_A3ED:
  k_ldln -19
  k_addlib 18
UARUGO_L_A3F1:
  k_deref
  k_stln -13
  k_stln -15
  k_ldln -13
  k_ldrarg 13
  k_ge
  k_jumpf UARUGO_L_A409
  k_ldlarg 13
  k_swap
  k_ldln -13
  k_sub
  k_stln -13
  k_ldli 0
  k_stlarg 13
  k_jump UARUGO_L_A412
UARUGO_L_A409:
  k_ldln -13
  k_swap
  k_ldlarg 13
  k_sub
  k_stlarg 13
  k_ldli 0
  k_stln -13
UARUGO_L_A412:
  k_ldlarg 11
  k_jumpf UARUGO_L_A41D
  k_ldln -19
  k_addlib 16
  k_jump UARUGO_L_A421
UARUGO_L_A41D:
  k_ldln -19
  k_addlib 18
UARUGO_L_A421:
  k_pushl
  k_ldln -13
  k_popstore
  k_ldln -15
  k_jumpf UARUGO_L_A436
  k_ldln -13
  k_jumpt UARUGO_L_A436
  k_pusharg 11
  k_pushn -11
  k_callx UARUGO_F_AC93, 4
UARUGO_L_A436:
  k_ldln -9
  k_inc
UARUGO_L_A439:
  k_stln -9
  k_ldln -9
  k_ldrn -7
  k_ult
  k_jumpt UARUGO_L_A3C9
  k_ldlarg 13
  k_return
; vars: g_cargo | calls 4
daily_supplies:
  k_func 8
  k_ldli 0
  k_stl -8
  k_ldlarg 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -4
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB96
  k_add
  k_deref
  k_ldrarg 13
  k_mul
  k_ldrib 100
  k_udiv
  k_inc
  k_stl -2
  k_ldl -4
  k_derefb
  k_jumpf UARUGO_L_A472
  k_ldl -4
  k_derefb
  k_dec
  k_shl1
  k_ldriw $E970
  k_add
  k_stl -6
UARUGO_L_A472:
  k_ldlarg 13
  k_ldrib 50
  k_uge
  k_jumpf UARUGO_L_A493
  k_ldl -4
  k_addlib 22
  k_pushl
  k_pushib 100
  k_ldlarg 13
  k_addlib -50
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -4
  k_addlib 22
  k_derefb
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_jump UARUGO_L_A4C5
UARUGO_L_A493:
  k_ldlib 50
  k_ldrarg 13
  k_sub
  k_ldri 1
  k_shr
  k_pushl
  k_ldl -4
  k_addlib 22
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -4
  k_addlib 22
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_ldl -4
  k_derefb
  k_jumpf UARUGO_L_A4C6
  k_ldlib 50
  k_ldrarg 13
  k_sub
  k_ldri 10
  k_udiv
  k_pushl
  k_ldl -6
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -6
  k_popr
  k_pushl
  k_derefb
  k_sub
UARUGO_L_A4C5:
  k_popstoreb
UARUGO_L_A4C6:
  k_ldlarg 15
  k_deref
  k_jumpf UARUGO_L_A4E8
  k_push -2
  k_ldlarg 15
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldlarg 15
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
  k_ldlarg 15
  k_deref
  k_jumpt UARUGO_L_A528
  k_pusharg 17
  k_pusharg 11
  k_callx UARUGO_F_AC93, 4
  k_jump UARUGO_L_A528
UARUGO_L_A4E8:
  k_push -2
  k_pusharg 17
  k_callx UARUGO_F_A3B5, 4
  k_jumpf UARUGO_L_A528
  k_pushi 3
  k_callx RF_3F3E, 2
  k_addlib 20
  k_pushl
  k_ldl -4
  k_addlib 22
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -4
  k_addlib 22
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_ldl -4
  k_derefb
  k_jumpf UARUGO_L_A528
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldli 5
  k_popr
  k_sub
  k_pushl
  k_ldl -6
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -6
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
UARUGO_L_A528:
  k_return
; vars: g_cargo, g_ships, g_ending | calls 11
UARUGO_F_A529:
  k_func 19
  k_call RF_5F1C
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -11
  k_leal -5
  k_stln -7
  k_ldrn -11
  k_add
  k_stln -9
  k_jump UARUGO_L_A64C
UARUGO_L_A549:
  k_ldln -7
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stln -15
  k_ldln -15
  k_derefb
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stln -17
  k_ldln -15
  k_addlib 22
  k_pushl
  k_pushib 100
  k_ldln -15
  k_addlib 22
  k_derefb
  k_pushl
  k_pushi 2
  k_callx RF_3F3E, 2
  k_pushl
  k_ldln -17
  k_addli 2
  k_derefb
  k_pushl
  k_ldln -17
  k_inc
  k_derefb
  k_shl1
  k_popr
  k_add
  k_ldrib 60
  k_sdiv
  k_popr
  k_add
  k_popr
  k_add
  k_pushl
  k_callx RL_8962, 4
  k_popstoreb
  k_pushi 0
  k_ldln -15
  k_addlib 18
  k_pushl
  k_ldlba $E99A
  k_pushl
  k_ldln -7
  k_derefb
  k_pushl
  k_callx daily_supplies, 8
  k_pushi 1
  k_ldln -15
  k_addlib 16
  k_pushl
  k_ldlba $E99B
  k_pushl
  k_ldln -7
  k_derefb
  k_pushl
  k_callx daily_supplies, 8
  k_ldln -7
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stln -19
  k_ldln -15
  k_addlib 22
  k_derefb
  k_ldrib 20
  k_ult
  k_jumpf UARUGO_L_A5EE
  k_ldln -19
  k_addli 4
  k_deref
  k_pushl
  k_ldln -15
  k_addlib 22
  k_derefb
  k_pushl
  k_ldlib 20
  k_popr
  k_sub
  k_popr
  k_mul
  k_ldrib 100
  k_udiv
  k_inc
  k_pushl
  k_ldln -19
  k_addli 4
  k_deref
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldln -19
  k_addli 4
  k_popr
  k_pushl
  k_deref
  k_sub
  k_popstore
UARUGO_L_A5EE:
  k_ldln -19
  k_addli 4
  k_deref
  k_ldri 5
  k_lt
  k_jumpf UARUGO_L_A647
  k_ldln -15
  k_derefb
  k_jumpf UARUGO_L_A639
  k_call RF_5F1C
  k_call RF_5C91
  k_pushi 0
  k_pushiw UARUGO_D_B332
  k_callx RF_2FB9, 4
  k_ldln -7
  k_derefb
  k_pushl
  k_callx UARUGO_F_AC67, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UARUGO_D_B34D
  k_callx RF_2FB9, 4
  k_call RF_5FDB
  k_ldln -15
  k_derefb
  k_pushl
  k_callx UARUGO_F_A208, 2
  k_pushiw $00BF
  k_ldln -19
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_jump UARUGO_L_A647
UARUGO_L_A639:
  k_ldlba $F193
  k_jumpf UARUGO_L_A643
  k_ldli 2
  k_jump UARUGO_L_A644
UARUGO_L_A643:
  k_ldli 1
UARUGO_L_A644:
  k_stlba g_ending
UARUGO_L_A647:
  k_ldln -7
  k_inc
  k_stln -7
UARUGO_L_A64C:
  k_ldln -7
  k_ldrn -9
  k_ult
  k_jumpt UARUGO_L_A549
  k_call RF_5FDB
  k_return
; vars: g_cargo, g_player_name_ptr | calls 1
UARUGO_F_A658:
  k_func 21
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -11
  k_ldliw $012C
  k_stln -17
  k_ldli 0
  k_stln -13
  k_stln -15
  k_leal -9
  k_stl -2
  k_ldrn -11
  k_add
  k_stl -4
  k_jump UARUGO_L_A6B5
UARUGO_L_A67D:
  k_ldl -2
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stln -19
  k_ldln -19
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_stln -21
  k_ldln -19
  k_derefb
  k_jumpf UARUGO_L_A6AD
  k_ldln -21
  k_addli 3
  k_derefb
  k_ldrn -17
  k_ult
  k_jumpf UARUGO_L_A6AD
  k_ldln -13
  k_stln -15
  k_ldln -21
  k_addli 3
  k_derefb
  k_stln -17
UARUGO_L_A6AD:
  k_ldln -13
  k_inc
  k_stln -13
  k_ldl -2
  k_inc
  k_stl -2
UARUGO_L_A6B5:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UARUGO_L_A67D
  k_leal -9
  k_pushl
  k_ldln -15
  k_popr
  k_add
  k_derefb
  k_return
; vars: g_ships | calls 7
UARUGO_F_A6C5:
  k_func 4
  k_call UARUGO_F_A658
  k_stl -2
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -4
  k_call UARUGO_F_AA84
  k_call RF_5C3E
  k_pushi 0
  k_pushiw UARUGO_D_B352
  k_callx RF_2FB9, 4
  k_push -2
  k_callx UARUGO_F_AC67, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UARUGO_D_B371
  k_callx RF_2FB9, 4
  k_call RF_5C3E
  k_pushiw UARUGO_D_B376
  k_callx RF_4B44, 2
  k_ldl -4
  k_addli 2
  k_pushl
  k_ldli 0
  k_popstoreb
  k_return
; vars: g_ships, g_cargo | calls 8
UARUGO_F_A706:
  k_func 6
  k_call UARUGO_F_A658
  k_stl -2
  k_ldl -2
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -6
  k_ldl -2
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_derefb
  k_stl -4
  k_ldl -4
  k_jumpf UARUGO_L_A757
  k_call UARUGO_F_A9EA
  k_call RF_5C3E
  k_pushi 0
  k_pushiw UARUGO_D_B39B
  k_callx RF_2FB9, 4
  k_push -2
  k_callx UARUGO_F_AC67, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UARUGO_D_B3A1
  k_callx RF_2FB9, 4
  k_push -4
  k_callx UARUGO_F_A208, 2
  k_pushiw $00BF
  k_ldl -6
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_jump UARUGO_L_A761
UARUGO_L_A757:
  k_call RF_5C3E
  k_pushiw UARUGO_D_B3C3
  k_callx RF_4B44, 2
UARUGO_L_A761:
  k_return
; sys: anim_control | calls 6
UARUGO_F_A762:
  k_func 0
  k_pushi 0
  k_pushi 0
  k_pushib 56
  k_callx syscall, 6  ; sys 56 anim_control
  k_call UARUGO_F_AA23
  k_pushi 1
  k_pushi 1
  k_callx RF_21EA, 4
  k_call RF_5C3E
  k_ldlba $F193
  k_ldri 1
  k_eq
  k_jumpf UARUGO_L_A789
  k_pushiw UARUGO_D_B3F1
  k_jump UARUGO_L_A796
UARUGO_L_A789:
  k_pushiw UARUGO_D_B40F
  k_callx RF_4B44, 2
  k_call RF_5C3E
  k_pushiw UARUGO_D_B42F
UARUGO_L_A796:
  k_callx RF_4B44, 2
  k_call RF_5FDB
  k_call UARUGO_F_ABA1
  k_ldli 1
  k_stlba $F193
  k_ldli 0
  k_stlba $F194
  k_ldli 0
  k_stlba $F195
  k_return
; vars: g_cargo, g_ships, g_ending | calls 8
UARUGO_F_A7AD:
  k_func 4
  k_ldlbf 11
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stl -4
  k_ldlbf 11
  k_ldri 7
  k_mul
  k_ldriw g_ships
  k_add
  k_stl -2
  k_pushi 3
  k_ldl -2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_pushi 3
  k_ldl -2
  k_inc
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_inc
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_pushi 3
  k_ldl -2
  k_addli 2
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldl -2
  k_addli 2
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_pushi 2
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
  k_ldl -2
  k_derefb
  k_jumpf UARUGO_L_A816
  k_ldl -2
  k_addli 4
  k_deref
  k_ldri 5
  k_lt
  k_jumpf UARUGO_L_A860
UARUGO_L_A816:
  k_ldl -4
  k_derefb
  k_jumpf UARUGO_L_A85C
  k_ldlba $F195
  k_inc
  k_stlba $F195
  k_call RF_5F1C
  k_call RF_5C91
  k_pushi 0
  k_pushiw UARUGO_D_B451
  k_callx RF_2FB9, 4
  k_ldlbf 11
  k_pushl
  k_callx UARUGO_F_AC67, 2
  k_pushl
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw UARUGO_D_B457
  k_callx RF_2FB9, 4
  k_call RF_5FDB
  k_ldl -4
  k_derefb
  k_pushl
  k_callx UARUGO_F_A208, 2
  k_pushiw $00BF
  k_ldl -2
  k_addli 6
  k_popr
  k_pushl
  k_derefb
  k_and
  k_popstoreb
  k_jump UARUGO_L_A860
UARUGO_L_A85C:
  k_ldli 2
  k_stlba g_ending
UARUGO_L_A860:
  k_return
; calls 3
UARUGO_F_A861:
  k_func 11
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -11
  k_leal -9
  k_stl -2
  k_ldrn -11
  k_add
  k_stl -4
  k_jump UARUGO_L_A899
UARUGO_L_A87C:
  k_ldl -2
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw $E9BD
  k_add
  k_derefb
  k_inc
  k_pushl
  k_callx RF_3F3E, 2
  k_jumpt UARUGO_L_A896
  k_ldl -2
  k_derefb
  k_pushl
  k_callx UARUGO_F_A7AD, 2
UARUGO_L_A896:
  k_ldl -2
  k_inc
  k_stl -2
UARUGO_L_A899:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UARUGO_L_A87C
  k_return
; vars: g_cargo, g_player_name_ptr | calls 9
UARUGO_F_A8A0:
  k_func 17
  k_ldlba $F193
  k_ldri 1
  k_eq
  k_jumpf UARUGO_L_A8BB
  k_ldlba $F194
  k_ldri 10
  k_umod
  k_jumpt UARUGO_L_A95C
  k_call UARUGO_F_A861
  k_jump UARUGO_L_A95C
UARUGO_L_A8BB:
  k_call UARUGO_F_AC01
  k_call RF_5F1C
  k_call RF_5C91
  k_ldlba $F195
  k_jumpf UARUGO_L_A8D0
  k_pushiw UARUGO_D_B473
  k_jump UARUGO_L_A8D3
UARUGO_L_A8D0:
  k_pushiw UARUGO_D_B497
UARUGO_L_A8D3:
  k_callx RF_4B44, 2
  k_call RF_5FDB
  k_leal -9
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -11
  k_leal -9
  k_stl -2
  k_ldrn -11
  k_add
  k_stl -4
  k_jump UARUGO_L_A956
UARUGO_L_A8F0:
  k_ldl -2
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stln -13
  k_ldln -13
  k_derefb
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stln -15
  k_ldln -13
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_stln -17
  k_ldln -17
  k_addli 3
  k_derefb
  k_ldrib 50
  k_ult
  k_jumpf UARUGO_L_A938
  k_ldln -15
  k_addli 8
  k_pushl
  k_ldln -15
  k_addli 8
  k_deref
  k_pushl
  k_pushib 50
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_addliw $00C8
  k_pushl
  k_pushiw $EA60
  k_callx RL_8962, 4
  k_popstore
UARUGO_L_A938:
  k_pushi 5
  k_callx RF_3F3E, 2
  k_addli 10
  k_pushl
  k_ldln -13
  k_addlib 22
  k_derefb
  k_pushl
  k_callx RL_8962, 4
  k_pushl
  k_ldln -13
  k_addlib 22
  k_popr
  k_pushl
  k_derefb
  k_sub
  k_popstoreb
  k_ldl -2
  k_inc
  k_stl -2
UARUGO_L_A956:
  k_ldl -2
  k_ldr -4
  k_ult
  k_jumpt UARUGO_L_A8F0
UARUGO_L_A95C:
  k_return
; sys: palette_dma, wait_frames
UARUGO_F_A95D:
  k_func 146
  k_ldli 0
  k_stl -2
UARUGO_L_A964:
  k_ldl -2
  k_ldri 9
  k_shl
  k_stl -6
  k_ldl -2
  k_ldri 5
  k_shl
  k_stl -8
  k_ldl -2
  k_shl1
  k_stl -10
  k_ldlarg 13
  k_stl -4
  k_ldlarg 11
  k_stl -18
  k_jump UARUGO_L_A9B9
UARUGO_L_A976:
  k_ldl -18
  k_deref
  k_ldriw $0E00
  k_and
  k_stl -12
  k_ldl -18
  k_deref
  k_ldriw $00E0
  k_and
  k_stl -14
  k_ldl -18
  k_deref
  k_ldri 14
  k_and
  k_stl -16
  k_ldl -12
  k_ldr -6
  k_ult
  k_jumpf UARUGO_L_A991
  k_ldl -6
  k_stl -12
UARUGO_L_A991:
  k_ldl -14
  k_ldr -8
  k_ult
  k_jumpf UARUGO_L_A999
  k_ldl -8
  k_stl -14
UARUGO_L_A999:
  k_ldl -16
  k_ldr -10
  k_ult
  k_jumpf UARUGO_L_A9A1
  k_ldl -10
  k_stl -16
UARUGO_L_A9A1:
  k_leal -146
  k_pushl
  k_ldl -4
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldl -12
  k_ldr -14
  k_add
  k_ldr -16
  k_add
  k_popstore
  k_ldl -4
  k_inc
  k_stl -4
  k_dec
  k_ldl -18
  k_addli 2
  k_stl -18
  k_addlib -2
UARUGO_L_A9B9:
  k_ldlarg 13
  k_ldrarg 15
  k_add
  k_pushl
  k_ldl -4
  k_popr
  k_ult
  k_jumpt UARUGO_L_A976
  k_pusharg 15
  k_pusharg 13
  k_pushib 126
  k_leal -146
  k_pushl
  k_ldlarg 13
  k_shl1
  k_popr
  k_add
  k_pushl
  k_pushi 3
  k_callx syscall, 10  ; sys 3 palette_dma
  k_ldlarg 17
  k_jumpf UARUGO_L_A9E0
  k_pusharg 17
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
UARUGO_L_A9E0:
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 8
  k_ult
  k_jumpt UARUGO_L_A964
  k_return
; sys: wait_frames | calls 3
UARUGO_F_A9EA:
  k_func 4
  k_ldlba $EA8E
  k_ldri 2
  k_shr
  k_stl -2
  k_pushi 0
  k_pushib 16
  k_pushib 32
  k_ldl -2
  k_ldri 5
  k_shl
  k_pushl
  k_ldlba $F164
  k_ldri 7
  k_shl
  k_popr
  k_add
  k_ldriw $22D0
  k_add
  k_pushl
  k_callx UARUGO_F_A95D, 8
  k_pushi 0
  k_pushi 2
  k_pushib 17
  k_callx RF_3EC3, 6
  k_pushi 3
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_push -2
  k_callx RF_5BBB, 2
  k_return
; sys: wait_frames | calls 4
UARUGO_F_AA23:
  k_func 2
  k_pushib 24
  k_callx RF_21CA, 2
  k_pushi 3
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_ldli 0
  k_stl -2
UARUGO_L_AA37:
  k_pushi 0
  k_pushi 2
  k_pushib 17
  k_callx RF_3EC3, 6
  k_pushi 0
  k_pushi 4
  k_pushib 17
  k_callx RF_3EC3, 6
  k_pushi 0
  k_pushi 2
  k_pushib 18
  k_callx RF_3EC3, 6
  k_pushi 0
  k_pushi 4
  k_pushib 18
  k_callx RF_3EC3, 6
  k_pushi 3
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_pushi 0
  k_pushi 4
  k_pushib 19
  k_callx RF_3EC3, 6
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_5BBB, 2
  k_pushi 2
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt UARUGO_L_AA37
  k_call RF_229B
  k_return
; sys: metasprite_set, wait_frames | vars: g_fleets, g_fh_cbmap0 | calls 2
UARUGO_F_AA84:
  k_func 26
  k_ldliw g_fleets
  k_stln -26
  k_ldln -26
  k_addli 2
  k_derefb
  k_shl1
  k_ldri 3
  k_shl
  k_addlib 16
  k_stl -2
  k_ldlba $F28C
  k_shl1
  k_ldriw UARUGO_D_B4B8
  k_add
  k_deref
  k_pushl
  k_ldln -26
  k_addli 3
  k_derefb
  k_shl1
  k_ldri 3
  k_shl
  k_popr
  k_add
  k_stl -4
  k_ldln -26
  k_addli 8
  k_derefb
  k_ldri 7
  k_and
  k_stl -6
  k_ldl -6
  k_ldri 2
  k_sdiv
  k_stl -8
  k_ldln -26
  k_addli 15
  k_derefb
  k_ldri 1
  k_and
  k_jumpt UARUGO_L_AAD7
  k_pushi 8
  k_leal -20
  k_pushl
  k_pushib 126
  k_pushiw RD_21BA
  k_pusha g_fh_cbmap0
  k_callx RF_3FC8, 10
  k_ldli 2
  k_stl -12
  k_ldli 0
  k_jump UARUGO_L_AAEF
UARUGO_L_AAD7:
  k_pushi 2
  k_leal -20
  k_pushl
  k_pushib 126
  k_ldl -6
  k_shl1
  k_ldriw $21AA
  k_add
  k_pushl
  k_pusha g_fh_cbmap0
  k_callx RF_3FC8, 10
  k_ldli 1
  k_stl -12
  k_ldli 2
UARUGO_L_AAEF:
  k_stl -10
  k_ldlib 16
  k_stl -24
UARUGO_L_AAF3:
  k_pushib 126
  k_push -10
  k_leal -20
  k_pushl
  k_push -12
  k_push -12
  k_ldl -24
  k_ldri 2
  k_smod
  k_jumpf UARUGO_L_AB0C
  k_ldl -8
  k_shl1
  k_ldriw UARUGO_D_B4C6
  k_add
  k_deref
  k_jump UARUGO_L_AB0D
UARUGO_L_AB0C:
  k_ldli 0
UARUGO_L_AB0D:
  k_ldr -4
  k_add
  k_pushl
  k_ldl -24
  k_ldri 2
  k_smod
  k_jumpf UARUGO_L_AB20
  k_ldl -8
  k_shl1
  k_ldriw UARUGO_D_B4BE
  k_add
  k_deref
  k_jump UARUGO_L_AB21
UARUGO_L_AB20:
  k_ldli 0
UARUGO_L_AB21:
  k_ldr -2
  k_add
  k_pushl
  k_pushib 22
  k_pushi 9
  k_callx syscall, 18  ; sys 9 metasprite_set
  k_pushi 2
  k_pushib 16
  k_callx syscall, 4  ; sys 16 wait_frames
  k_ldl -24
  k_dec
  k_stl -24
  k_ldl -24
  k_jumpt UARUGO_L_AAF3
  k_ldlba g_fleets+8
  k_pushl
  k_ldlba g_fleets+3
  k_pushl
  k_ldlba g_fleets+2
  k_pushl
  k_callx RF_55F4, 6
  k_return
; sys: sprite_anim_stream
UARUGO_F_AB4A:
  k_func 0
  k_pushib 16
  k_pushiw $EC9E
  k_pushi 0
  k_pushib 40
  k_pushi 4
  k_pusharg 11
  k_pushiw $0280
  k_pushi 2
  k_pushi 0
  k_pushib 55
  k_callx syscall, 20  ; sys 55 sprite_anim_stream
  k_pushib 16
  k_pushiw $ED1E
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0284
  k_pushi 2
  k_pushi 1
  k_pushib 55
  k_callx syscall, 20  ; sys 55 sprite_anim_stream
  k_pushib 16
  k_pushiw $ED9E
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0288
  k_pushi 2
  k_pushi 2
  k_pushib 55
  k_callx syscall, 20  ; sys 55 sprite_anim_stream
  k_pushib 16
  k_pushiw $EE1E
  k_pushi 15
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $028C
  k_pushi 2
  k_pushi 3
  k_pushib 55
  k_callx syscall, 20  ; sys 55 sprite_anim_stream
  k_return
; sys: memcpy_long, tilemap_copy | calls 2
UARUGO_F_ABA1:
  k_func 6
  k_ldliw $D800
  k_stl -6
  k_ldli 0
  k_stl -4
UARUGO_L_ABAC:
  k_ldli 0
  k_stl -2
UARUGO_L_ABAE:
  k_pushi 4
  k_push -6
  k_pushib 127
  k_ldl -4
  k_ldri 1
  k_and
  k_jumpf UARUGO_L_ABBE
  k_ldliw UARUGO_D_B4D2
  k_jump UARUGO_L_ABC1
UARUGO_L_ABBE:
  k_ldliw UARUGO_D_B4CE
UARUGO_L_ABC1:
  k_pushl
  k_pushib 126
  k_pushib 23
  k_callx syscall, 12  ; sys 23 memcpy_long
  k_ldli 4
  k_swap
  k_ldl -6
  k_add
  k_stl -6
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 15
  k_ult
  k_jumpt UARUGO_L_ABAE
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldrib 29
  k_ult
  k_jumpt UARUGO_L_ABAC
  k_pushib 127
  k_pushiw $D800
  k_pushib 28
  k_pushib 28
  k_pushi 1
  k_pushi 2
  k_pushi 2
  k_pushi 6
  k_callx syscall, 16  ; sys 6 tilemap_copy
  k_pushi 0
  k_pushi 4
  k_pushib 19
  k_callx RF_3EC3, 6
  k_pushi 1
  k_callx UARUGO_F_AB4A, 2
  k_return
; sys: anim_control | vars: g_zone_attr | calls 7
UARUGO_F_AC01:
  k_func 0
  k_call RF_5F1C
  k_pushi 0
  k_pushi 0
  k_pushib 56
  k_callx syscall, 6  ; sys 56 anim_control
  k_ldli 0
  k_stlba $F193
  k_call RF_5F56
  k_pushi 0
  k_pushi 1
  k_callx RF_3E7E, 4
  k_ldlba $EA8E
  k_ldri 5
  k_udiv
  k_pushl
  k_callx RF_5BBB, 2
  k_ldlba g_zone_attr+2
  k_ldri 6
  k_shr
  k_ldri 7
  k_and
  k_pushl
  k_ldlba g_zone_attr+2
  k_ldri 3
  k_shr
  k_ldri 3
  k_and
  k_pushl
  k_pushi 1
  k_callx RF_58B6, 6
  k_pushi 1
  k_ldlba $F274
  k_pushl
  k_callx RF_59A3, 2
  k_pushl
  k_callx RF_21EA, 4
  k_return
; calls 3
UARUGO_F_AC4C:
  k_func 0
  k_pushi 1
  k_pushiw UARUGO_D_B4D6
  k_callx RF_2FB9, 4
  k_pusharg 13
  k_callx RF_40DE, 2
  k_pusharg 11
  k_pushiw UARUGO_D_B4DE
  k_callx RF_3619, 4
  k_return
; calls 1
UARUGO_F_AC67:
  k_func 0
  k_ldlarg 11
  k_ldri 7
  k_mul
  k_ldriw $EB98
  k_add
  k_derefb
  k_ldri 15
  k_and
  k_pushl
  k_callx RF_40A5, 2
  k_return
; calls 4
UARUGO_F_AC7C:
  k_func 0
  k_call RF_5F1C
  k_call RF_5C91
  k_pushi 1
  k_pushiw UARUGO_D_B4E5
  k_callx RF_2FB9, 4
  k_call RF_5FDB
  k_return
; calls 5
UARUGO_F_AC93:
  k_func 0
  k_call RF_5C91
  k_pushi 0
  k_pushiw UARUGO_D_B50B
  k_callx RF_2FB9, 4
  k_pusharg 11
  k_callx UARUGO_F_AC67, 2
  k_pushl
  k_callx RF_40DE, 2
  k_ldlarg 13
  k_jumpf UARUGO_L_ACB7
  k_ldliw UARUGO_D_B52B
  k_jump UARUGO_L_ACBA
UARUGO_L_ACB7:
  k_ldliw UARUGO_D_B530
UARUGO_L_ACBA:
  k_pushl
  k_pushiw UARUGO_D_B511
  k_callx RF_3608, 4
  k_return
; vars: g_fame, g_port, g_ports | calls 2
UARUGO_F_ACC3:
  k_func 4
  k_ldla g_fame
  k_ldriw $C350
  k_ult
  k_jumpf UARUGO_L_ACFF
  k_ldlba g_port
  k_ldri 14
  k_mul
  k_ldriw g_ports
  k_add
  k_stl -2
  k_ldl -2
  k_deref
  k_pushl
  k_ldl -2
  k_addli 4
  k_deref
  k_popr
  k_add
  k_ldri 1
  k_shr
  k_pushl
  k_pushib 100
  k_callx RF_3F3E, 2
  k_popr
  k_add
  k_ldra g_fame
  k_add
  k_stl -4
  k_pushiw $C350
  k_push -4
  k_callx RL_8962, 4
  k_stla g_fame
UARUGO_L_ACFF:
  k_return
; vars: g_cargo, g_player_name_ptr, g_fame | calls 3
port_discovered:
  k_func 19
  k_ldlarg 11
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stln -13
  k_pushn -13
  k_callx RL_884E, 2
  k_stln -11
  k_ldlarg 11
  k_ldrib 50
  k_ult
  k_jumpf UARUGO_L_AD8B
  k_leal -5
  k_pushl
  k_pushi 0
  k_callx RL_8502, 4
  k_stln -7
  k_ldli 0
  k_jump UARUGO_L_AD81
UARUGO_L_AD2C:
  k_leal -5
  k_pushl
  k_ldln -9
  k_popr
  k_add
  k_derefb
  k_ldrib 24
  k_mul
  k_ldriw g_cargo
  k_add
  k_stln -19
  k_ldln -19
  k_derefb
  k_ldri 7
  k_mul
  k_ldriw g_player_name_ptr
  k_add
  k_stln -17
  k_ldln -19
  k_derefb
  k_ldri 10
  k_mul
  k_ldriw $EAC0
  k_add
  k_stln -15
  k_ldln -17
  k_addli 3
  k_derefb
  k_ldrib 50
  k_ult
  k_jumpf UARUGO_L_AD7E
  k_ldln -15
  k_addli 8
  k_pushl
  k_ldln -15
  k_addli 8
  k_deref
  k_pushl
  k_ldln -11
  k_inc
  k_pushl
  k_ldln -11
  k_inc
  k_popr
  k_mul
  k_ldrib 30
  k_mul
  k_popr
  k_add
  k_pushl
  k_pushiw $EA60
  k_callx RL_8962, 4
  k_popstore
UARUGO_L_AD7E:
  k_ldln -9
  k_inc
UARUGO_L_AD81:
  k_stln -9
  k_ldln -9
  k_ldrn -7
  k_ult
  k_jumpt UARUGO_L_AD2C
UARUGO_L_AD8B:
  k_ldla g_fame
  k_ldriw $C350
  k_ult
  k_jumpf UARUGO_L_ADBF
  k_ldlarg 11
  k_ldrib 50
  k_ult
  k_jumpf UARUGO_L_ADAF
  k_pushiw $C350
  k_ldln -11
  k_ldri 1
  k_shr
  k_ldrib 100
  k_mul
  k_ldra g_fame
  k_add
  k_addlib 20
  k_jump UARUGO_L_ADB7
UARUGO_L_ADAF:
  k_pushiw $C350
  k_ldla g_fame
  k_addlib 100
UARUGO_L_ADB7:
  k_pushl
  k_callx RL_8962, 4
  k_stla g_fame
UARUGO_L_ADBF:
  k_return
; calls 3
UARUGO_F_ADC0:
  k_func 0
  k_call RF_5F1C
  k_call RF_5C91
  k_ldlba $F192
  k_dec
  k_shl1
  k_ldriw UARUGO_D_B536
  k_add
  k_deref
  k_callptr
  k_ldli 0
  k_stlba $F192
  k_call RF_5FDB
  k_return
UARUGO_L_ADDE:
  php
  rep #$30
  tsc
  sta z:$0A
.i16
  ldy #$09
  lda ($0A),y
  sta z:$0C
  iny
  iny
  lda ($0A),y
  sta z:$0E
  iny
  iny
  lda ($0A),y
  sta z:$10
  ldx a:$FF60
  ldy a:$FF62
  lda z:$10
.a16
  cmp #$02
  bcc UARUGO_L_AE16
  beq UARUGO_L_AE15
  cmp #$05
  bcc UARUGO_L_AE12
  beq UARUGO_L_AE15
  cmp #$06
  beq UARUGO_L_AE15
UARUGO_L_AE12:
  dex
  bra UARUGO_L_AE16
UARUGO_L_AE15:
  inx
UARUGO_L_AE16:
  cmp #$03
  beq UARUGO_L_AE27
  cmp #$02
  beq UARUGO_L_AE27
  lsr a
  bcs UARUGO_L_AE26
  dey
  bra UARUGO_L_AE27
UARUGO_L_AE26:
  iny
UARUGO_L_AE27:
  txa
  sta ($0C)
  tya
  sta ($0E)
  cmp #$10
  bcs UARUGO_L_AE3F
  txa
  cmp #$10
  bcs UARUGO_L_AE3F
  lda #$01
  sta z:$0A
  bra UARUGO_L_AE41
UARUGO_L_AE3F:
  stz z:$0A
UARUGO_L_AE41:
  plp
  rtl
UARUGO_L_AE43:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  iny
  iny
  lda ($0A),y
  sta z:$0E
  iny
  iny
  lda ($0A),y
  sta z:$10
  iny
  iny
  lda ($0A),y
  sta z:$12
  lda ($10)
  sta z:$1A
  lda ($12)
  sta z:$1C
  lda z:$0C
  and #$03
  beq UARUGO_L_AE99
  lda z:$0C
  clc
  adc #$04
  and #$07
  lsr a
  lsr a
  asl a
  sec
  sbc #$01
  beq UARUGO_L_AE99
  bcs UARUGO_L_AE8E
  lda z:$1A
  sec
  sbc z:$0E
  sta z:$1A
  bra UARUGO_L_AE99
UARUGO_L_AE8E:
  tay
UARUGO_L_AE8F:
  lda z:$0E
  clc
  adc z:$1A
  sta z:$1A
  dey
  bne UARUGO_L_AE8F
UARUGO_L_AE99:
  lda z:$0C
  clc
  adc #$02
  sta z:$0C
  and #$03
  beq UARUGO_L_AECA
  lda z:$0C
  and #$07
  lsr a
  lsr a
  asl a
  sec
  sbc #$01
  beq UARUGO_L_AECA
  bcs UARUGO_L_AEBF
  lda z:$1C
  sec
  sbc z:$0E
  sta z:$1C
  bra UARUGO_L_AECA
UARUGO_L_AEBF:
  tay
UARUGO_L_AEC0:
  lda z:$0E
  clc
  adc z:$1C
  sta z:$1C
  dey
  bne UARUGO_L_AEC0
UARUGO_L_AECA:
  lda z:$1A
  sta ($10)
  lda z:$1C
  sta ($12)
  plp
  rtl
UARUGO_L_AED4:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  sta z:$0E
  inc a
  sta z:$10
  inc a
  sta z:$12
  inc a
  sta z:$14
  inc a
  sta z:$16
  inc a
  inc a
  sta z:$18
  lda ($16)
  bmi UARUGO_L_AF0A
  cmp #$19
  bcs UARUGO_L_AF2F
  lda ($18)
  bmi UARUGO_L_AF58
  cmp #$19
  bcs UARUGO_L_AF75
  stz z:$0A
  jmp UARUGO_L_AF97
UARUGO_L_AF0A:
  sep #$20
  lda ($12)
  beq UARUGO_L_AF15
  dec a
  sta ($12)
  bra UARUGO_L_AF26
UARUGO_L_AF15:
  lda ($0E)
  bne UARUGO_L_AF1F
.a8
  lda #$47
  sta ($0E)
  bra UARUGO_L_AF22
UARUGO_L_AF1F:
  dec a
  sta ($0E)
UARUGO_L_AF22:
  lda #$0D
  sta ($12)
UARUGO_L_AF26:
  rep #$30
.a16
  lda #$18
  sta ($16)
  bra UARUGO_L_AF92
UARUGO_L_AF2F:
  sep #$20
  lda ($12)
.a8
  cmp #$0D
  beq UARUGO_L_AF3C
  inc a
  sta ($12)
  bra UARUGO_L_AF4F
UARUGO_L_AF3C:
  lda ($0E)
  cmp #$47
  beq UARUGO_L_AF47
  inc a
  sta ($0E)
  bra UARUGO_L_AF4B
UARUGO_L_AF47:
  lda #$00
  sta ($0E)
UARUGO_L_AF4B:
  lda #$00
  sta ($12)
UARUGO_L_AF4F:
  rep #$30
.a16
  lda #$00
  sta ($16)
  bra UARUGO_L_AF92
UARUGO_L_AF58:
  sep #$20
  lda ($14)
  beq UARUGO_L_AF63
  dec a
  sta ($14)
  bra UARUGO_L_AF6C
UARUGO_L_AF63:
.a8
  lda #$0D
  sta ($14)
  lda ($10)
  dec a
  sta ($10)
UARUGO_L_AF6C:
  rep #$30
.a16
  lda #$18
  sta ($18)
  bra UARUGO_L_AF92
UARUGO_L_AF75:
  sep #$20
  lda ($14)
.a8
  cmp #$0D
  beq UARUGO_L_AF82
  inc a
  sta ($14)
  bra UARUGO_L_AF8B
UARUGO_L_AF82:
  lda #$00
  sta ($14)
  lda ($10)
  inc a
  sta ($10)
UARUGO_L_AF8B:
  rep #$30
.a16
  lda #$00
  sta ($18)
UARUGO_L_AF92:
  lda #$01
  sta z:$0A
UARUGO_L_AF97:
  plp
  rtl
UARUGO_L_AF99:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  iny
  iny
  lda ($0A),y
  sta z:$0E
  iny
  iny
  lda ($0A),y
  sta z:$10
  iny
  iny
  lda ($0A),y
  sta z:$12
  lda #$F300
  sta z:$1A
  lda #$FD20
  sta z:$14
  sta z:$18
  inc a
  sta z:$16
  lda z:$12
  asl a
  asl a
  asl a
  asl a
  clc
  adc z:$10
  and #$FF
  sep #$20
  sta ($18)
  rep #$30
  tay
  sep #$20
.a8
  lda #$00
  sta ($1A),y
  rep #$30
  lda z:$0E
  cmp z:$12
  bne UARUGO_L_AFF1
  lda z:$0C
  cmp z:$10
  bne UARUGO_L_AFF1
  jmp UARUGO_L_B0E3
UARUGO_L_AFF1:
  lda z:$0E
  asl a
  asl a
  asl a
  asl a
  clc
  adc z:$0C
  clc
  adc z:$1A
  sta z:$12
  sep #$20
  lda #$FE
  sta ($12)
  rep #$30
UARUGO_L_B007:
  sep #$20
  lda ($18)
  sta z:$0A
  stz z:$0B
  rep #$30
  inc z:$18
  lda z:$18
.a16
  cmp #$FDB0
  bcc UARUGO_L_B01E
  lda z:$14
  sta z:$18
UARUGO_L_B01E:
  ldy z:$0A
  sep #$20
  lda ($1A),y
  inc a
  sta z:$0E
  rep #$30
  lda z:$0A
  lsr a
  lsr a
  lsr a
  lsr a
  sta z:$0C
  lda z:$0A
  and #$0F
  sta z:$0A
  stz z:$10
UARUGO_L_B03A:
  rep #$30
  ldx z:$0A
  stx a:UARUGO_D_B0E5
  ldy z:$0C
  sty a:UARUGO_D_B0E7
  lda z:$10
  cmp #$02
  bcc UARUGO_L_B063
  beq UARUGO_L_B060
  cmp #$05
  bcc UARUGO_L_B05B
  beq UARUGO_L_B060
  cmp #$06
  beq UARUGO_L_B060
UARUGO_L_B05B:
  dec a:UARUGO_D_B0E5
  bra UARUGO_L_B063
UARUGO_L_B060:
  inc a:UARUGO_D_B0E5
UARUGO_L_B063:
  cmp #$03
  beq UARUGO_L_B078
  cmp #$02
  beq UARUGO_L_B078
  lsr a
  bcs UARUGO_L_B075
  dec a:UARUGO_D_B0E7
  bra UARUGO_L_B078
UARUGO_L_B075:
  inc a:UARUGO_D_B0E7
UARUGO_L_B078:
  lda a:UARUGO_D_B0E7
  cmp #$10
  bcs UARUGO_L_B0C2
  lda a:UARUGO_D_B0E5
  cmp #$10
  bcs UARUGO_L_B0C2
  lda a:UARUGO_D_B0E7
  asl a
  asl a
  asl a
  asl a
  clc
  adc a:UARUGO_D_B0E5
  tax
  clc
  adc z:$1A
  sta z:$1C
  sep #$20
  lda ($1C)
.a8
  cmp #$FE
  bne UARUGO_L_B0C2
  rep #$30
  lda z:$1C
  cmp z:$12
  beq UARUGO_L_B0D9
  sep #$20
  lda z:$0E
  sta ($1C)
  txa
  sta ($16)
  rep #$30
  inc z:$16
  lda z:$16
.a16
  cmp #$FDB0
  bcc UARUGO_L_B0C2
  lda #$FD20
  sta z:$16
UARUGO_L_B0C2:
  rep #$30
  inc z:$10
  lda z:$10
  cmp #$07
  beq UARUGO_L_B0D0
  jmp UARUGO_L_B03A
UARUGO_L_B0D0:
  lda z:$18
  cmp z:$16
  beq UARUGO_L_B0D9
  jmp UARUGO_L_B007
UARUGO_L_B0D9:
  lda z:$0A
  sta a:$FF60
  lda z:$0C
  sta a:$FF62
UARUGO_L_B0E3:
  plp
  rtl
UARUGO_D_B0E5:
  .byte $00, $00
UARUGO_D_B0E7:
  .byte $00, $00, $00, $00
UARUGO_L_B0EB:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  iny
  iny
  lda ($0A),y
  sta z:$0E
  iny
  iny
  lda ($0A),y
  asl a
  sta z:$10
  lda ($0C)
  tax
  lda ($0E)
  tay
  lda z:$10
  clc
  adc #$B163
  sta z:$12
  lda ($12)
  beq UARUGO_L_B120
  cmp #$02
  bne UARUGO_L_B11F
  dex
  bra UARUGO_L_B120
UARUGO_L_B11F:
  inx
UARUGO_L_B120:
  lda z:$12
  clc
  adc #$10
  sta z:$12
  lda ($12)
  beq UARUGO_L_B135
  cmp #$02
  bne UARUGO_L_B134
  dey
  bra UARUGO_L_B135
UARUGO_L_B134:
  iny
UARUGO_L_B135:
  txa
  bpl UARUGO_L_B13D
  ldx #$47
  bra UARUGO_L_B148
UARUGO_L_B13D:
  inc a
  cmp #$48
  bcc UARUGO_L_B148
  beq UARUGO_L_B148
  ldx #$00
UARUGO_L_B148:
  txa
  sta ($0C)
  tya
  sta ($0E)
  cmp #$00
  bcc UARUGO_L_B15F
  cmp #$24
  bcs UARUGO_L_B15F
  lda #$01
  sta z:$0A
  bra UARUGO_L_B161
UARUGO_L_B15F:
  stz z:$0A
UARUGO_L_B161:
  plp
  rtl
  .byte $02, $00, $01, $00, $02, $00, $01, $00, $00, $00, $02, $00, $01, $00, $00, $00
  .byte $02, $00, $02, $00, $01, $00, $01, $00, $02, $00, $00, $00, $00, $00, $01, $00
UARUGO_L_B183:
  php
  rep #$30
  tsc
  sta z:$0A
  ldy #$09
  lda ($0A),y
  sta z:$0C
  iny
  iny
  lda ($0A),y
  sta z:$0E
  iny
  iny
  lda ($0A),y
  sta z:$10
  iny
  iny
  lda ($0A),y
  sta z:$12
  lda #$F284
  sta z:$14
  lda ($14)
  sta z:$54
  lda #$04
  sta z:$56
  stz z:$58
  stz z:$5A
  lda #$1A
  sta z:$52
  jsl f:$00800C
  lda ($14)
  sta z:$54
  lda #$7E
  sta z:$56
  lda #$F300
  sta z:$58
  lda #$0A20
  sta z:$5A
  lda #$1C
  sta z:$52
  jsl f:$00800C
  lda z:$0E
  asl a
  asl a
  asl a
  sta z:$14
  asl a
  asl a
  asl a
  clc
  adc z:$14
  clc
  adc z:$0C
  clc
  adc #$F300
  sta z:$16
  sep #$20
.a8
  lda #$FE
  sta ($16)
  rep #$30
.a16
  lda #$FD20
  sta z:$18
  inc a
  inc a
  sta z:$1A
  lda z:$12
  asl a
  asl a
  asl a
  sta z:$14
  asl a
  asl a
  asl a
  clc
  adc z:$14
  clc
  adc z:$10
  sta ($18)
  tax
  sep #$20
  stz a:$F300,x
  rep #$30
UARUGO_L_B21A:
  lda ($18)
  sta a:$FF60
  inc z:$18
  inc z:$18
  lda #$FD20
  clc
  adc #$0240
  sta z:$14
  lda z:$18
  cmp z:$14
  bcc UARUGO_L_B237
  lda #$FD20
  sta z:$18
UARUGO_L_B237:
  lda a:$FF60
  clc
  adc #$F300
  sta a:$FF64
  sta z:$14
  sep #$20
  lda ($14)
  inc a
  sta z:$1C
  rep #$30
  ldx #$00
  lda a:$FF60
UARUGO_L_B252:
  cmp #$48
  bcc UARUGO_L_B25E
  inx
  sec
  sbc #$48
  bra UARUGO_L_B252
UARUGO_L_B25E:
  stx a:$FF62
  lda a:$FF60
UARUGO_L_B264:
  cmp #$48
  bcc UARUGO_L_B26F
  sec
  sbc #$48
  bra UARUGO_L_B264
UARUGO_L_B26F:
  sta a:$FF60
  ldx #$00
UARUGO_L_B275:
  lda a:$FF60
  bne UARUGO_L_B281
  txa
  clc
  adc #$08
  bra UARUGO_L_B28E
UARUGO_L_B281:
  cmp #$47
  bne UARUGO_L_B28D
  txa
  clc
  adc #$10
  bra UARUGO_L_B28E
UARUGO_L_B28D:
  txa
UARUGO_L_B28E:
  asl a
  tay
  lda a:UARUGO_D_B2E6,y
  clc
  adc a:$FF64
  sta z:$0C
  cmp #$F300
  bcc UARUGO_L_B2D3
  cmp #$FD20
  bcs UARUGO_L_B2D3
  sep #$20
  lda ($0C)
.a8
  cmp #$FE
  bne UARUGO_L_B2D3
  rep #$30
  lda z:$0C
  cmp z:$16
  beq UARUGO_L_B2E4
  sep #$20
  lda z:$1C
  sta ($0C)
  rep #$30
  lda z:$0C
  sec
.a16
  sbc #$F300
  sta ($1A)
  inc z:$1A
  inc z:$1A
  lda z:$1A
  cmp #$FF60
  bcc UARUGO_L_B2D3
  lda #$FD20
  sta z:$1A
UARUGO_L_B2D3:
  rep #$30
  inx
  cpx #$07
  bne UARUGO_L_B275
  lda z:$18
  cmp z:$1A
  beq UARUGO_L_B2E4
  jmp UARUGO_L_B21A
UARUGO_L_B2E4:
  plp
  rtl
UARUGO_D_B2E6:
  .byte $B7, $FF, $B9, $FF, $47, $00, $49, $00, $B8, $FF, $48, $00, $FF, $FF, $01, $00
  .byte $FF, $FF, $B9, $FF, $8F, $00, $49, $00, $B8, $FF, $48, $00, $47, $00, $01, $00
  .byte $B7, $FF, $71, $FF, $47, $00, $01, $00, $B8, $FF, $48, $00, $FF, $FF, $B9, $FF
UARUGO_D_B316:
  .byte $07, $00, $06, $00, $05, $00, $00, $00, $FF, $00, $04, $00, $01, $00, $02, $00
  .byte $03, $00
UARUGO_D_B328:
  .byte $07
UARUGO_D_B329:
  .byte $06, $05, $00, $FF, $04, $01, $02, $03, $00
UARUGO_D_B332:
  .byte $0A, "We've lost sight", $0A, $0A, "of the ", $00
UARUGO_D_B34D:
  .byte $1B, $57, $1B, $57, $00
UARUGO_D_B352:
  .byte $0A, "Something's", $0A, $0A, "wrong with the", $0A, $0A, $00
UARUGO_D_B371:
  .byte $1B, $57, $1B, $57, $00
UARUGO_D_B376:
  .byte "Blast! She's", $0A, "caught up in", $0A, "seaweed!", $1B, "W", $00
UARUGO_D_B39B:
  .byte $0A, "The ", $00
UARUGO_D_B3A1:
  .byte " has", $0A, $0A, "mysteriously", $0A, $0A, "vanished!", $1B, "W", $1B, "W", $00
UARUGO_D_B3C3:
  .byte "I've heard of", $0A, "ships vanishing", $0A, "in these waters", $00
UARUGO_D_B3F1:
  .byte "These are rough", $0A, "waves, Cap'n!", $00
UARUGO_D_B40F:
  .byte "Take to the", $0A, "helm! It's a", $0A, "storm!", $00
UARUGO_D_B42F:
  .byte "We've lost", $0A, "control of the", $0A, "rudder!", $00
UARUGO_D_B451:
  .byte $0A, "The ", $00
UARUGO_D_B457:
  .byte " is", $0A, $0A, "nowhere in", $0A, $0A, "sight!", $1B, "W", $1B, "W", $00
UARUGO_D_B473:
  .byte "There's been a", $0A, "lot of damage,", $0A, "Cap'n", $00
UARUGO_D_B497:
  .byte "Sakes alive, we", $0A, "made it through!", $00
UARUGO_D_B4B8:
  .byte $08, $00, $00, $00, $10, $00
UARUGO_D_B4BE:
  .byte $00, $00, $03, $00, $00, $00, $FD, $FF
UARUGO_D_B4C6:
  .byte $FD, $FF, $00, $00, $03, $00, $00, $00
UARUGO_D_B4CE:
  .byte $80, $12, $84, $12
UARUGO_D_B4D2:
  .byte $88, $12, $8C
  .byte $12
UARUGO_D_B4D6:
  .byte "Cap'n, ", $00
UARUGO_D_B4DE:
  .byte $25, $73, $1B, $57, $1B, $57, $00
UARUGO_D_B4E5:
  .byte "Land ho! There's", $0A, "a port in sight!", $1B, "W", $1B, "W", $00
UARUGO_D_B50B:
  .byte $0A, "The ", $00
UARUGO_D_B511:
  .byte " has", $0A, $0A, "run out of", $0A, $0A, "%s!", $1B, "W", $1B, "W", $00
UARUGO_D_B52B:
  .byte "food", $00
UARUGO_D_B530:
  .byte "water", $00
UARUGO_D_B536:
  .word UARUGO_F_A6C5, UARUGO_F_A706, UARUGO_F_A762
