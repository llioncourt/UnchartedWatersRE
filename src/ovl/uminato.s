; overlay uminato, runs at $7E:9600
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp UMINATO_F_9603
UMINATO_F_9603:
  k_func 0
  k_call UMINATO_F_A961
  k_return
UMINATO_F_960C:
  k_func 6
  k_ldlarg 15
  k_ldrn 19
  k_add
  k_stl -6
  k_ldlarg 15
  k_jump UMINATO_L_963A
UMINATO_L_961A:
  k_ldl -6
  k_ldr -2
  k_sub
  k_ldri 3
  k_ugt
  k_jumpf UMINATO_L_9626
  k_ldli 3
  k_jump UMINATO_L_9629
UMINATO_L_9626:
  k_ldl -6
  k_ldr -2
  k_sub
UMINATO_L_9629:
  k_stl -4
  k_pushn 21
  k_push -4
  k_pusharg 17
  k_push -2
  k_pusharg 13
  k_pusharg 11
  k_pushi 5
  k_callx RL_21BE, 14
  k_ldli 3
  k_swap
  k_ldl -2
  k_add
UMINATO_L_963A:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt UMINATO_L_961A
  k_return
UMINATO_F_9642:
  k_func 0
  k_pushiw $2000
  k_pushi 6
  k_pushib 23
  k_pushib 21
  k_pushi 8
  k_pushi 3
  k_callx RF_604A, 12
  k_pushi 0
  k_pushi 8
  k_pushib 25
  k_pushib 20
  k_pushi 7
  k_pushi 1
  k_callx RF_604A, 12
  k_return
UMINATO_F_9662:
  k_func 0
  k_pushiw $2000
  k_pushi 14
  k_pushib 30
  k_pushi 6
  k_pushi 1
  k_pushi 3
  k_callx RF_604A, 12
  k_return
UMINATO_F_9675:
  k_func 0
  k_pushiw $2000
  k_pushi 6
  k_pushib 32
  k_pushi 0
  k_pushi 0
  k_pushi 3
  k_callx RF_604A, 12
  k_call UMINATO_F_9662
  k_return
UMINATO_F_968B:
  k_func 6
  k_ldli 0
  k_stl -6
  k_stl -4
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -6
  k_addli 12
  k_ldri 3
  k_shl
  k_addlib -5
  k_pushl
  k_ldl -4
  k_addli 2
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_pushi 0
  k_callx RF_3E5A, 14
UMINATO_L_96AD:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -2
  k_pushi 12
  k_push -2
  k_callx RF_3D91, 4
  k_ldl -2
  k_switchn 4
    .word $0100, UMINATO_L_9722
    .word $0200, UMINATO_L_974A
    .word $0400, UMINATO_L_96CF
    .word $0800, UMINATO_L_96CF
    .word UMINATO_L_96D5
UMINATO_L_96CF:
  k_ldl -6
  k_jumpf UMINATO_L_9714
  k_ldli 0
UMINATO_L_96D4:
  k_stl -6
UMINATO_L_96D5:
  k_pusha $F282
  k_pushiw $26CC
  k_pushi 2
  k_pushi 1
  k_ldl -6
  k_ldri 7
  k_mul
  k_addli 12
  k_ldri 3
  k_shl
  k_addlib -5
  k_pushl
  k_ldl -4
  k_ldri 9
  k_mul
  k_addli 2
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_pushi 0
  k_callx RF_3E5A, 14
  k_ldl -2
  k_ldriw $0080
  k_eq
  k_jumpt UMINATO_L_9703
  k_ldl -2
  k_ldriw $8000
  k_eq
  k_jumpf UMINATO_L_96AD
UMINATO_L_9703:
  k_pushi 8
  k_callx RL_21BE, 2
  k_ldl -2
  k_ldriw $8000
  k_eq
  k_jumpf UMINATO_L_975C
  k_ldliw $00FF
  k_return
UMINATO_L_9714:
  k_ldl -4
  k_addli 3
  k_ldrarg 11
  k_ult
  k_jumpf UMINATO_L_96D5
  k_ldli 1
  k_jump UMINATO_L_96D4
  .byte $D6, $D5, $96
UMINATO_L_9722:
  k_ldl -4
  k_ldri 2
  k_ne
  k_jumpf UMINATO_L_9738
  k_ldl -6
  k_ldri 3
  k_mul
  k_ldr -4
  k_add
  k_inc
  k_ldrarg 11
  k_ult
  k_jumpf UMINATO_L_9738
  k_ldl -4
  k_inc
  k_jump UMINATO_L_9746
UMINATO_L_9738:
  k_ldli 0
  k_jump UMINATO_L_9746
UMINATO_L_973C:
  k_ldl -4
  k_dec
  k_jump UMINATO_L_9746
UMINATO_L_9741:
  k_ldl -6
  k_jumpt UMINATO_L_9754
  k_ldli 2
UMINATO_L_9746:
  k_stl -4
  k_jump UMINATO_L_96D5
UMINATO_L_974A:
  k_ldl -4
  k_jumpt UMINATO_L_973C
  k_ldlarg 11
  k_ldri 3
  k_ugt
  k_jumpt UMINATO_L_9741
UMINATO_L_9754:
  k_ldlarg 11
  k_dec
  k_ldri 3
  k_umod
  k_stl -4
  k_jump UMINATO_L_96D5
UMINATO_L_975C:
  k_ldl -6
  k_ldri 3
  k_mul
  k_ldr -4
  k_add
  k_return
UMINATO_F_9762:
  k_func 0
  k_ldlba $EF69
  k_jumpt UMINATO_L_9772
  k_pushi 1
  k_pushi 15
  k_jump UMINATO_L_978A
UMINATO_L_9772:
  k_ldlbf 11
  k_ldri 11
  k_ugt
  k_jumpf UMINATO_L_9788
  k_ldlbf 11
  k_ldrib 31
  k_ult
  k_jumpf UMINATO_L_9788
  k_pushi 1
  k_pushi 9
  k_jump UMINATO_L_978A
UMINATO_L_9788:
  k_pushi 1
  k_pushi 8
UMINATO_L_978A:
  k_callx RF_21EA, 4
  k_return
UMINATO_F_978F:
  k_func 0
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushib 39
  k_callx RL_21BE, 2
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx RL_21BE, 6
  k_return
UMINATO_F_97B0:
  k_func 0
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_callx RF_4D41, 8
  k_return
UMINATO_F_97BE:
  k_func 2
  k_ldli 1
  k_stl -2
  k_call UMINATO_F_978F
  k_call RF_4D8B
  k_stl -2
  k_return
UMINATO_F_97CD:
  k_func 4
  k_ldlib -1
  k_stla $F295
  k_ldlarg 11
  k_jumpf UMINATO_L_97E9
  k_pushi 3
  k_pushi 8
  k_pushib 31
  k_pushib 20
  k_pushi 1
  k_callx RF_4B55, 10
  k_jump UMINATO_L_97F4
UMINATO_L_97E9:
  k_pushi 3
  k_pushi 8
  k_pushib 31
  k_pushib 20
  k_pushi 1
  k_callx RF_4C4B, 10
UMINATO_L_97F4:
  k_return
UMINATO_F_97F5:
  k_func 2
  k_pushi 2
  k_ldla $F99C
  k_ldri 6
  k_mul
  k_ldriw $AB58
  k_add
  k_deref
  k_pushl
  k_ldla $F99C
  k_ldri 6
  k_mul
  k_ldriw $AB56
  k_add
  k_deref
  k_pushl
  k_ldla $F99C
  k_ldri 6
  k_mul
  k_ldriw $AB54
  k_add
  k_deref
  k_pushl
  k_pushiw $01A0
  k_pushi 11
  k_callx RL_21BE, 12
  k_return
UMINATO_F_9825:
  k_func 0
  k_pushib 22
  k_pushiw $8B6D
  k_pushi 0
  k_pushib 20
  k_pushi 4
  k_pusharg 11
  k_pushib 119
  k_pushi 2
  k_pushi 0
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8BED
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushib 123
  k_pushi 2
  k_pushi 1
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8C6D
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushib 127
  k_pushi 2
  k_pushi 2
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8CED
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0083
  k_pushi 2
  k_pushi 3
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8D6D
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0087
  k_pushi 2
  k_pushi 4
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8DED
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $008B
  k_pushi 2
  k_pushi 5
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8E6D
  k_pushi 0
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $008F
  k_pushi 2
  k_pushi 6
  k_pushib 55
  k_callx RL_21BE, 20
  k_pushib 22
  k_pushiw $8EED
  k_pushiw $00FF
  k_pushi 0
  k_pushi 0
  k_pusharg 11
  k_pushiw $0093
  k_pushi 2
  k_pushi 7
  k_pushib 55
  k_callx RL_21BE, 20
  k_return
UMINATO_F_98CB:
  k_func 16
  k_ldlarg 11
  k_addli 2
  k_stl -2
  k_ldlarg 15
  k_addli 2
  k_stl -6
  k_ldlarg 13
  k_addli 3
  k_stl -4
  k_ldlarg 17
  k_addli 3
  k_stl -8
  k_ldlarg 13
  k_jump UMINATO_L_9917
UMINATO_L_98E0:
  k_ldlarg 11
  k_jump UMINATO_L_990E
UMINATO_L_98E4:
  k_ldlarg 17
  k_jump UMINATO_L_9905
UMINATO_L_98E8:
  k_ldlarg 15
  k_jump UMINATO_L_98FC
UMINATO_L_98EC:
  k_ldl -12
  k_ldr -16
  k_eq
  k_jumpf UMINATO_L_98FA
  k_ldl -10
  k_ldr -14
  k_eq
  k_jumpf UMINATO_L_98FA
  k_ldli 0
  k_return
UMINATO_L_98FA:
  k_ldl -14
  k_inc
UMINATO_L_98FC:
  k_stl -14
  k_ldl -14
  k_ldr -6
  k_lt
  k_jumpt UMINATO_L_98EC
  k_ldl -16
  k_inc
UMINATO_L_9905:
  k_stl -16
  k_ldl -16
  k_ldr -8
  k_lt
  k_jumpt UMINATO_L_98E8
  k_ldl -10
  k_inc
UMINATO_L_990E:
  k_stl -10
  k_ldl -10
  k_ldr -2
  k_lt
  k_jumpt UMINATO_L_98E4
  k_ldl -12
  k_inc
UMINATO_L_9917:
  k_stl -12
  k_ldl -12
  k_ldr -4
  k_lt
  k_jumpt UMINATO_L_98E0
  k_ldli 1
  k_return
UMINATO_F_9920:
  k_func 12
  k_ldlarg 11
  k_dec
  k_stl -10
  k_ldlarg 13
  k_addlib -2
  k_stl -12
  k_ldl -10
  k_addli 2
  k_stl -6
  k_ldl -12
  k_addli 4
  k_stl -8
  k_ldl -12
  k_jump UMINATO_L_995B
UMINATO_L_9936:
  k_ldl -10
  k_jump UMINATO_L_9952
UMINATO_L_993A:
  k_ldl -2
  k_shl1
  k_pushl
  k_ldl -4
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_ldrib 96
  k_eq
  k_jumpf UMINATO_L_9950
  k_ldli 0
  k_return
UMINATO_L_9950:
  k_ldl -2
  k_inc
UMINATO_L_9952:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt UMINATO_L_993A
  k_ldl -4
  k_inc
UMINATO_L_995B:
  k_stl -4
  k_ldl -4
  k_ldr -8
  k_ult
  k_jumpt UMINATO_L_9936
  k_ldli 1
  k_return
UMINATO_F_9964:
  k_func 14
  k_ldlarg 11
  k_stl -8
  k_ldlarg 13
  k_stl -10
  k_ldla $F302
  k_stl -4
  k_ldla $F304
  k_dec
  k_stl -6
  k_push -6
  k_push -4
  k_push -10
  k_push -8
  k_callx UMINATO_F_98CB, 8
  k_jumpt UMINATO_L_9983
  k_ldli 0
  k_return
UMINATO_L_9983:
  k_ldli 0
  k_jump UMINATO_L_99AC
UMINATO_L_9987:
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_ldriw $F9B2
  k_add
  k_stl -12
  k_ldl -12
  k_addliw $0092
  k_deref
  k_stl -4
  k_ldl -12
  k_addliw $0094
  k_deref
  k_stl -6
  k_push -6
  k_push -4
  k_push -10
  k_push -8
  k_callx UMINATO_F_98CB, 8
  k_jumpt UMINATO_L_99AA
  k_ldli 0
  k_return
UMINATO_L_99AA:
  k_ldl -2
  k_inc
UMINATO_L_99AC:
  k_stl -2
  k_ldl -2
  k_ldrarg 15
  k_ult
  k_jumpt UMINATO_L_9987
  k_ldli 1
  k_return
UMINATO_F_99B5:
  k_func 12
  k_pushiw $01CE
  k_pushi 0
  k_pushiw $F9B2
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldlba $FB84
  k_ldriw $00FF
  k_eq
  k_jumpf UMINATO_L_99D4
  k_return
UMINATO_L_99D4:
  k_ldli 0
  k_stl -2
UMINATO_L_99D6:
  k_ldli 0
  k_stl -4
UMINATO_L_99D8:
  k_pushi 0
  k_ldl -4
  k_shl1
  k_pushl
  k_ldl -2
  k_ldrib 24
  k_mul
  k_pushl
  k_ldlba $FB84
  k_ldrib 72
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_ldriw $AB9C
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 12
  k_ldl -4
  k_ldri 12
  k_mul
  k_pushl
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_popr
  k_add
  k_ldriw $F9B2
  k_add
  k_pushl
  k_pushib 126
  k_pusha $F280
  k_pushib 28
  k_callx RL_21BE, 10
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 12
  k_ult
  k_jumpt UMINATO_L_99D8
  k_pushi 14
  k_callx RF_3F3E, 2
  k_addli 6
  k_stl -8
  k_pushi 6
  k_callx RF_3F3E, 2
  k_addli 5
  k_stl -10
  k_push -2
  k_push -10
  k_push -8
  k_callx UMINATO_F_9964, 6
  k_jumpf UMINATO_L_9A8B
  k_push -10
  k_push -8
  k_callx UMINATO_F_9920, 4
  k_jumpf UMINATO_L_9A8B
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_ldriw $FA44
  k_add
  k_pushl
  k_ldl -8
  k_popstore
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_ldriw $FA46
  k_add
  k_pushl
  k_ldl -10
  k_popstore
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_ldriw $FA42
  k_add
  k_pushl
  k_ldl -2
  k_ldri 6
  k_mul
  k_addlib 16
  k_popstore
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_ldriw $FA48
  k_add
  k_pushl
  k_ldl -2
  k_inc
  k_popstore
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_ldriw $FA4A
  k_add
  k_pushl
  k_pushi 4
  k_callx RF_3F3E, 2
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
UMINATO_L_9A8B:
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt UMINATO_L_99D6
  k_return
UMINATO_F_9A92:
  k_func 12
  k_ldlarg 13
  k_ldriw $00FF
  k_ult
  k_jumpf UMINATO_L_9B6D
  k_ldlarg 15
  k_ldriw $00FF
  k_ult
  k_jumpf UMINATO_L_9B6D
  k_ldln 21
  k_jumpt UMINATO_L_9B04
  k_ldlarg 13
  k_stl -2
  k_ldlarg 15
  k_stl -4
  k_ldl -2
  k_addli 2
  k_stl -10
  k_ldl -4
  k_addli 3
  k_stl -12
  k_ldl -4
  k_jump UMINATO_L_9AFA
UMINATO_L_9ABA:
  k_ldl -2
  k_jump UMINATO_L_9AF1
UMINATO_L_9ABE:
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_ldrib 32
  k_eq
  k_jumpf UMINATO_L_9AEF
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_pushl
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F652
  k_add
  k_deref
  k_popstore
UMINATO_L_9AEF:
  k_ldl -6
  k_inc
UMINATO_L_9AF1:
  k_stl -6
  k_ldl -6
  k_ldr -10
  k_ult
  k_jumpt UMINATO_L_9ABE
  k_ldl -8
  k_inc
UMINATO_L_9AFA:
  k_stl -8
  k_ldl -8
  k_ldr -12
  k_ult
  k_jumpt UMINATO_L_9ABA
  k_jump UMINATO_L_9B6D
UMINATO_L_9B04:
  k_ldlarg 13
  k_stl -2
  k_ldlarg 15
  k_stl -4
  k_ldl -2
  k_addli 2
  k_stl -10
  k_ldl -4
  k_addli 3
  k_stl -12
  k_ldl -4
  k_jump UMINATO_L_9B66
UMINATO_L_9B12:
  k_ldl -2
  k_jump UMINATO_L_9B5D
UMINATO_L_9B16:
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_ldrib 48
  k_uge
  k_jumpf UMINATO_L_9B5B
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_ldrib 80
  k_ule
  k_jumpf UMINATO_L_9B5B
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_pushl
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F652
  k_add
  k_deref
  k_popstore
UMINATO_L_9B5B:
  k_ldl -6
  k_inc
UMINATO_L_9B5D:
  k_stl -6
  k_ldl -6
  k_ldr -10
  k_ult
  k_jumpt UMINATO_L_9B16
  k_ldl -8
  k_inc
UMINATO_L_9B66:
  k_stl -8
  k_ldl -8
  k_ldr -12
  k_ult
  k_jumpt UMINATO_L_9B12
UMINATO_L_9B6D:
  k_ldln 21
  k_jumpt UMINATO_L_9BBA
  k_ldlarg 17
  k_stl -2
  k_ldln 19
  k_stl -4
  k_ldl -2
  k_addli 2
  k_stl -10
  k_ldl -4
  k_addli 3
  k_stl -12
  k_ldl -4
  k_jump UMINATO_L_9BB2
UMINATO_L_9B81:
  k_ldl -2
  k_jump UMINATO_L_9BA9
UMINATO_L_9B85:
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_jumpt UMINATO_L_9BA7
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_pushl
  k_ldlib 32
  k_popstore
UMINATO_L_9BA7:
  k_ldl -6
  k_inc
UMINATO_L_9BA9:
  k_stl -6
  k_ldl -6
  k_ldr -10
  k_ult
  k_jumpt UMINATO_L_9B85
  k_ldl -8
  k_inc
UMINATO_L_9BB2:
  k_stl -8
  k_ldl -8
  k_ldr -12
  k_ult
  k_jumpt UMINATO_L_9B81
  k_return
UMINATO_L_9BBA:
  k_ldln 21
  k_jumpf UMINATO_L_9C38
  k_ldlarg 17
  k_stl -2
  k_ldln 19
  k_stl -4
  k_ldl -2
  k_addli 2
  k_stl -10
  k_ldl -4
  k_addli 3
  k_stl -12
  k_ldl -4
  k_jump UMINATO_L_9C31
UMINATO_L_9BCE:
  k_ldl -2
  k_jump UMINATO_L_9C28
UMINATO_L_9BD2:
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_jumpt UMINATO_L_9C26
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_pushl
  k_ldlib 64
  k_popstore
  k_ldl -8
  k_ldr -4
  k_sub
  k_jumpt UMINATO_L_9C0D
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_pushl
  k_ldlib 48
  k_jump UMINATO_L_9C25
UMINATO_L_9C0D:
  k_ldl -8
  k_ldr -4
  k_sub
  k_ldri 2
  k_eq
  k_jumpf UMINATO_L_9C26
  k_ldl -6
  k_shl1
  k_pushl
  k_ldl -8
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_pushl
  k_ldlib 80
UMINATO_L_9C25:
  k_popstore
UMINATO_L_9C26:
  k_ldl -6
  k_inc
UMINATO_L_9C28:
  k_stl -6
  k_ldl -6
  k_ldr -10
  k_ult
  k_jumpt UMINATO_L_9BD2
  k_ldl -8
  k_inc
UMINATO_L_9C31:
  k_stl -8
  k_ldl -8
  k_ldr -12
  k_ult
  k_jumpt UMINATO_L_9BCE
UMINATO_L_9C38:
  k_return
UMINATO_F_9C39:
  k_func 10
  k_ldla $F302
  k_addli 2
  k_ldri 3
  k_shl
  k_addlib -8
  k_stl -6
  k_ldla $F304
  k_addli 4
  k_ldri 3
  k_shl
  k_addlib -9
  k_stl -8
  k_pushi 0
  k_ldla $F306
  k_shl1
  k_pushl
  k_ldlarg 11
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw $AB84
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushi 0
  k_pushi 3
  k_pushi 2
  k_push -8
  k_push -6
  k_pushi 10
  k_pushib 31
  k_callx RL_21BE, 16
  k_pushi 0
  k_pusha $F304
  k_pusha $F302
  k_pushiw $00FF
  k_pushiw $00FF
  k_pusharg 11
  k_callx UMINATO_F_9A92, 12
  k_ldlarg 15
  k_jumpf UMINATO_L_9C93
  k_return
UMINATO_L_9C93:
  k_ldlba $FB84
  k_ldriw $00FF
  k_eq
  k_jumpf UMINATO_L_9C9E
  k_return
UMINATO_L_9C9E:
  k_ldli 0
  k_stl -2
UMINATO_L_9CA0:
  k_ldl -2
  k_ldriw $009A
  k_mul
  k_ldriw $F9B2
  k_add
  k_stl -10
  k_pushi 3
  k_callx RF_3F3E, 2
  k_ldriw $ACBC
  k_add
  k_derefb
  k_stl -4
  k_ldl -10
  k_addliw $0092
  k_deref
  k_addli 2
  k_ldri 3
  k_shl
  k_addlib -8
  k_stl -6
  k_ldl -10
  k_addliw $0094
  k_deref
  k_addli 5
  k_ldri 3
  k_shl
  k_addlib -9
  k_stl -8
  k_ldl -10
  k_addliw $0096
  k_deref
  k_pushl
  k_ldl -10
  k_addliw $0094
  k_deref
  k_pushl
  k_ldl -10
  k_addliw $0092
  k_deref
  k_pushl
  k_pushiw $00FF
  k_pushiw $00FF
  k_ldl -10
  k_addliw $0098
  k_deref
  k_pushl
  k_callx UMINATO_F_9A92, 12
  k_pushib 126
  k_pushi 0
  k_ldl -10
  k_addliw $0098
  k_deref
  k_ldr -4
  k_add
  k_ldri 12
  k_mul
  k_ldr -10
  k_add
  k_pushl
  k_pushi 3
  k_pushi 2
  k_push -8
  k_push -6
  k_ldl -10
  k_addliw $0090
  k_deref
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 3
  k_ult
  k_jumpt UMINATO_L_9CA0
  k_return
UMINATO_F_9D15:
  k_func 12
  k_ldlarg 11
  k_ldri 6
  k_ugt
  k_jumpf UMINATO_L_9E33
  k_ldlarg 11
  k_ldrib 20
  k_ult
  k_jumpf UMINATO_L_9E33
  k_ldlarg 13
  k_ldri 5
  k_ugt
  k_jumpf UMINATO_L_9E33
  k_ldlarg 13
  k_ldri 10
  k_ult
  k_jumpf UMINATO_L_9E33
  k_ldlarg 15
  k_switch 0, 4, UMINATO_L_9D7D
    .word UMINATO_L_9D7F, UMINATO_L_9D43, UMINATO_L_9DBB, UMINATO_L_9DF7
UMINATO_L_9D43:
  k_ldlarg 11
  k_dec
  k_stl -10
  k_ldlarg 13
  k_addlib -2
  k_stl -12
  k_ldl -10
  k_addli 3
  k_stl -6
  k_ldl -12
  k_addli 3
  k_stl -8
  k_ldl -12
  k_jump UMINATO_L_9D76
UMINATO_L_9D54:
  k_ldl -10
  k_jump UMINATO_L_9D6D
UMINATO_L_9D58:
  k_ldl -2
  k_shl1
  k_pushl
  k_ldl -4
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_jumpf UMINATO_L_9D6B
  k_ldli 0
  k_return
UMINATO_L_9D6B:
  k_ldl -2
  k_inc
UMINATO_L_9D6D:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt UMINATO_L_9D58
  k_ldl -4
  k_inc
UMINATO_L_9D76:
  k_stl -4
  k_ldl -4
  k_ldr -8
  k_ult
  k_jumpt UMINATO_L_9D54
UMINATO_L_9D7D:
  k_ldli 1
  k_return
UMINATO_L_9D7F:
  k_ldlarg 11
  k_dec
  k_stl -10
  k_ldlarg 13
  k_addli 2
  k_stl -12
  k_ldl -10
  k_addli 3
  k_stl -6
  k_ldl -12
  k_addli 3
  k_stl -8
  k_ldl -12
  k_jump UMINATO_L_9DB1
UMINATO_L_9D8F:
  k_ldl -10
  k_jump UMINATO_L_9DA8
UMINATO_L_9D93:
  k_ldl -2
  k_shl1
  k_pushl
  k_ldl -4
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_jumpf UMINATO_L_9DA6
  k_ldli 0
  k_return
UMINATO_L_9DA6:
  k_ldl -2
  k_inc
UMINATO_L_9DA8:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt UMINATO_L_9D93
  k_ldl -4
  k_inc
UMINATO_L_9DB1:
  k_stl -4
  k_ldl -4
  k_ldr -8
  k_ult
  k_jumpt UMINATO_L_9D8F
  k_jump UMINATO_L_9D7D
UMINATO_L_9DBB:
  k_ldlarg 11
  k_inc
  k_stl -10
  k_ldlarg 13
  k_dec
  k_stl -12
  k_ldl -10
  k_addli 2
  k_stl -6
  k_ldl -12
  k_addli 5
  k_stl -8
  k_ldl -12
  k_jump UMINATO_L_9DED
UMINATO_L_9DCB:
  k_ldl -10
  k_jump UMINATO_L_9DE4
UMINATO_L_9DCF:
  k_ldl -2
  k_shl1
  k_pushl
  k_ldl -4
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_jumpf UMINATO_L_9DE2
  k_ldli 0
  k_return
UMINATO_L_9DE2:
  k_ldl -2
  k_inc
UMINATO_L_9DE4:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt UMINATO_L_9DCF
  k_ldl -4
  k_inc
UMINATO_L_9DED:
  k_stl -4
  k_ldl -4
  k_ldr -8
  k_ult
  k_jumpt UMINATO_L_9DCB
  k_jump UMINATO_L_9D7D
UMINATO_L_9DF7:
  k_ldlarg 11
  k_dec
  k_stl -10
  k_ldlarg 13
  k_dec
  k_stl -12
  k_ldl -10
  k_addli 2
  k_stl -6
  k_ldl -12
  k_addli 5
  k_stl -8
  k_ldl -12
  k_jump UMINATO_L_9E29
UMINATO_L_9E07:
  k_ldl -10
  k_jump UMINATO_L_9E20
UMINATO_L_9E0B:
  k_ldl -2
  k_shl1
  k_pushl
  k_ldl -4
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_jumpf UMINATO_L_9E1E
  k_ldli 0
  k_return
UMINATO_L_9E1E:
  k_ldl -2
  k_inc
UMINATO_L_9E20:
  k_stl -2
  k_ldl -2
  k_ldr -6
  k_ult
  k_jumpt UMINATO_L_9E0B
  k_ldl -4
  k_inc
UMINATO_L_9E29:
  k_stl -4
  k_ldl -4
  k_ldr -8
  k_ult
  k_jumpt UMINATO_L_9E07
  k_jump UMINATO_L_9D7D
UMINATO_L_9E33:
  k_ldli 0
  k_return
UMINATO_F_9E35:
  k_func 17
  k_ldlba $FB84
  k_ldriw $00FF
  k_eq
  k_jumpf UMINATO_L_9E4C
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_return
UMINATO_L_9E4C:
  k_ldlarg 11
  k_addliw $0096
  k_deref
  k_switchn 3
    .word $0001, UMINATO_L_9E62
    .word $0002, UMINATO_L_9E9F
    .word $0003, UMINATO_L_9EB2
    .word UMINATO_L_9EC3
UMINATO_L_9E62:
  k_pusharg 13
  k_pushi 2
  k_callx RF_3F3E, 2
UMINATO_L_9E68:
  k_popstore
  k_pushi 4
UMINATO_L_9E6A:
  k_callx RF_3F3E, 2
  k_jumpt UMINATO_L_9E75
  k_ldli 1
  k_jump UMINATO_L_9E76
UMINATO_L_9E75:
  k_ldli 0
UMINATO_L_9E76:
  k_stln -17
  k_ldlarg 13
  k_deref
  k_jumpf UMINATO_L_9F44
  k_ldlarg 11
  k_addliw $0092
  k_deref
  k_stln -11
  k_ldlarg 11
  k_addliw $0094
  k_deref
  k_stln -13
  k_ldlarg 11
  k_addliw $0098
  k_deref
  k_switch 0, 4, UMINATO_L_9F0F
    .word UMINATO_L_9EC4, UMINATO_L_9EFE, UMINATO_L_9F04, UMINATO_L_9F0A
UMINATO_L_9E9F:
  k_pusharg 13
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt UMINATO_L_9EAC
  k_ldli 1
  k_jump UMINATO_L_9EAD
UMINATO_L_9EAC:
  k_ldli 0
UMINATO_L_9EAD:
  k_popstore
  k_pushi 6
  k_jump UMINATO_L_9E6A
UMINATO_L_9EB2:
  k_pusharg 13
  k_pushi 3
  k_callx RF_3F3E, 2
  k_jumpt UMINATO_L_9EBF
  k_ldli 1
  k_jump UMINATO_L_9E68
UMINATO_L_9EBF:
  k_ldli 0
  k_jump UMINATO_L_9E68
UMINATO_L_9EC3:
  k_return
UMINATO_L_9EC4:
  k_ldln -13
  k_inc
UMINATO_L_9EC7:
  k_stln -13
  k_jump UMINATO_L_9F0F
UMINATO_L_9ECC:
  k_ldlarg 11
  k_addliw $0096
  k_deref
  k_pushl
  k_pushn -13
  k_pushn -11
  k_ldlarg 11
  k_addliw $0094
  k_deref
  k_pushl
  k_ldlarg 11
  k_addliw $0092
  k_deref
  k_pushl
  k_ldlarg 11
  k_addliw $0098
  k_deref
  k_pushl
  k_callx UMINATO_F_9A92, 12
  k_ldlarg 11
  k_addliw $0092
  k_pushl
  k_ldln -11
  k_popstore
  k_ldlarg 11
  k_addliw $0094
  k_pushl
  k_ldln -13
  k_jump UMINATO_L_9F53
UMINATO_L_9EFE:
  k_ldln -13
  k_dec
  k_jump UMINATO_L_9EC7
UMINATO_L_9F04:
  k_ldln -11
  k_inc
  k_jump UMINATO_L_9F0D
UMINATO_L_9F0A:
  k_ldln -11
  k_dec
UMINATO_L_9F0D:
  k_stln -11
UMINATO_L_9F0F:
  k_ldlarg 11
  k_addliw $0098
  k_deref
  k_pushl
  k_pushn -13
  k_pushn -11
  k_callx UMINATO_F_9D15, 6
  k_jumpt UMINATO_L_9ECC
  k_pusharg 13
  k_ldli 0
  k_popstore
UMINATO_L_9F23:
  k_ldln -17
  k_jumpf UMINATO_L_9F54
  k_pushi 4
  k_callx RF_3F3E, 2
  k_stln -15
  k_ldlarg 11
  k_addliw $0098
  k_deref
  k_ldrn -15
  k_ne
  k_jumpf UMINATO_L_9F23
  k_ldlarg 11
  k_addliw $0098
  k_pushl
  k_ldln -15
  k_jump UMINATO_L_9F53
UMINATO_L_9F44:
  k_ldln -17
  k_jumpf UMINATO_L_9F54
  k_ldlarg 11
  k_addliw $0098
  k_pushl
  k_pushi 4
  k_callx RF_3F3E, 2
UMINATO_L_9F53:
  k_popstore
UMINATO_L_9F54:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_ldriw $ACBF
  k_add
  k_derefb
  k_stlbf -1
  k_ldlarg 11
  k_addliw $0092
  k_deref
  k_addli 2
  k_ldri 3
  k_shl
  k_addlib -8
  k_stln -3
  k_ldlarg 11
  k_addliw $0094
  k_deref
  k_addli 5
  k_ldri 3
  k_shl
  k_addlib -9
  k_stln -5
  k_pushib 126
  k_pushi 0
  k_ldlarg 11
  k_addliw $0098
  k_deref
  k_pushl
  k_ldlbf -1
  k_popr
  k_add
  k_ldri 12
  k_mul
  k_ldrarg 11
  k_add
  k_pushl
  k_pushi 3
  k_pushi 2
  k_pushn -5
  k_pushn -3
  k_ldlarg 11
  k_addliw $0090
  k_deref
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldlarg 15
  k_jumpf UMINATO_L_9FA8
  k_pushi 3
  k_pushib 16
  k_callx RL_21BE, 4
UMINATO_L_9FA8:
  k_return
UMINATO_F_9FA9:
  k_func 0
  k_pushi 6
  k_pushi 10
  k_pushib 58
  k_callx RL_21BE, 6
  k_return
UMINATO_F_9FB7:
  k_func 0
  k_pushib 18
  k_pushib 16
  k_pushib 58
  k_callx RL_21BE, 6
  k_return
UMINATO_F_9FC7:
  k_func 6
  k_ldla $F302
  k_addli 2
  k_ldri 3
  k_shl
  k_addlib -8
  k_stl -2
  k_ldla $F304
  k_addli 4
  k_ldri 3
  k_shl
  k_addlib -9
  k_stl -4
  k_ldlarg 11
  k_switchn 8
    .word $0100, UMINATO_L_A084
    .word $0200, UMINATO_L_A0BC
    .word $0400, UMINATO_L_A004
    .word $0500, UMINATO_L_A084
    .word $0600, UMINATO_L_A0BC
    .word $0800, UMINATO_L_A04D
    .word $0900, UMINATO_L_A084
    .word $0A00, UMINATO_L_A0BC
    .word UMINATO_L_A03A
UMINATO_L_A004:
  k_pushi 0
  k_ldlarg 15
  k_shl1
  k_ldriw $AB84
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldl -4
  k_addlib -7
  k_jump UMINATO_L_A031
UMINATO_L_A01F:
  k_pusha $F280
  k_pushi 0
  k_pushi 3
  k_pushi 2
  k_push -6
  k_push -2
  k_pushn 21
  k_pushib 31
  k_callx RL_21BE, 16
  k_ldl -6
  k_inc
UMINATO_L_A031:
  k_stl -6
  k_ldl -6
  k_ldr -4
  k_ule
  k_jumpt UMINATO_L_A01F
  k_ldli 0
UMINATO_L_A039:
  k_stlarg 13
UMINATO_L_A03A:
  k_pushi 0
  k_pusha $F304
  k_pusha $F302
  k_pushn 19
  k_pusharg 17
  k_pusharg 13
  k_callx UMINATO_F_9A92, 12
  k_ldlarg 13
  k_ldri 3
  k_and
  k_return
UMINATO_L_A04D:
  k_pushi 0
  k_ldlarg 15
  k_shl1
  k_ldriw $AB8A
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldl -4
  k_addli 7
  k_jump UMINATO_L_A079
UMINATO_L_A067:
  k_pusha $F280
  k_pushi 0
  k_pushi 3
  k_pushi 2
  k_push -6
  k_push -2
  k_pushn 21
  k_pushib 31
  k_callx RL_21BE, 16
  k_ldl -6
  k_dec
UMINATO_L_A079:
  k_stl -6
  k_ldl -6
  k_ldr -4
  k_uge
  k_jumpt UMINATO_L_A067
  k_ldli 1
  k_jump UMINATO_L_A039
UMINATO_L_A084:
  k_pushi 0
  k_ldlarg 15
  k_shl1
  k_ldriw $AB90
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldl -2
  k_addlib -7
  k_jump UMINATO_L_A0B1
UMINATO_L_A09F:
  k_pusha $F280
  k_pushi 0
  k_pushi 3
  k_pushi 2
  k_push -4
  k_push -6
  k_pushn 21
  k_pushib 31
  k_callx RL_21BE, 16
  k_ldl -6
  k_inc
UMINATO_L_A0B1:
  k_stl -6
  k_ldl -6
  k_ldr -2
  k_ule
  k_jumpt UMINATO_L_A09F
  k_ldli 2
  k_jump UMINATO_L_A039
UMINATO_L_A0BC:
  k_pushi 0
  k_ldlarg 15
  k_shl1
  k_ldriw $AB96
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldl -2
  k_addli 7
  k_jump UMINATO_L_A0E8
UMINATO_L_A0D6:
  k_pusha $F280
  k_pushi 0
  k_pushi 3
  k_pushi 2
  k_push -4
  k_push -6
  k_pushn 21
  k_pushib 31
  k_callx RL_21BE, 16
  k_ldl -6
  k_dec
UMINATO_L_A0E8:
  k_stl -6
  k_ldl -6
  k_ldr -2
  k_uge
  k_jumpt UMINATO_L_A0D6
  k_ldli 3
  k_jump UMINATO_L_A039
UMINATO_F_A0F3:
  k_func 0
  k_ldlarg 11
  k_ldri 1
  k_ge
  k_jumpf UMINATO_L_A106
  k_ldlarg 11
  k_ldri 6
  k_le
  k_jumpf UMINATO_L_A106
  k_ldli 1
  k_return
UMINATO_L_A106:
  k_ldli 0
  k_return
UMINATO_F_A108:
  k_func 22
  k_ldla $F302
  k_addli 2
  k_ldri 3
  k_shl
  k_addlib -8
  k_stl -6
  k_ldla $F304
  k_addli 4
  k_ldri 3
  k_shl
  k_addlib -9
  k_stl -8
  k_ldli 0
  k_stl -12
UMINATO_L_A121:
  k_leal -22
  k_pushl
  k_ldl -12
  k_shl1
  k_popr
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -12
  k_ldri 3
  k_ult
  k_jumpt UMINATO_L_A121
  k_ldli 0
  k_stl -14
  k_ldliw $0100
UMINATO_L_A13A:
  k_stl -4
  k_ldl -4
  k_jumpt UMINATO_L_A1C3
UMINATO_L_A13F:
  k_ldl -4
  k_jumpf UMINATO_L_A1BB
  k_pushib 32
  k_callx RF_3F3E, 2
  k_stl -12
  k_ldl -12
  k_ldri 15
  k_and
  k_jumpt UMINATO_L_A161
  k_ldliw $FA4C
  k_stl -16
  k_pushi 0
  k_leal -20
  k_pushl
  k_push -16
  k_callx UMINATO_F_9E35, 6
  k_ldl -14
  k_inc
  k_stl -14
UMINATO_L_A161:
  k_ldl -12
  k_ldri 7
  k_and
  k_jumpt UMINATO_L_A178
  k_ldliw $FAE6
  k_stl -16
  k_pushi 0
  k_leal -18
  k_pushl
  k_push -16
  k_callx UMINATO_F_9E35, 6
  k_ldl -14
  k_inc
  k_stl -14
UMINATO_L_A178:
  k_ldl -12
  k_ldri 3
  k_and
  k_jumpt UMINATO_L_A18F
  k_ldliw $F9B2
  k_stl -16
  k_pushi 0
  k_leal -22
  k_pushl
  k_push -16
  k_callx UMINATO_F_9E35, 6
  k_ldl -14
  k_inc
  k_stl -14
UMINATO_L_A18F:
  k_pushi 0
  k_ldla $F306
  k_shl1
  k_pushl
  k_ldlarg 11
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw $AB84
  k_add
  k_deref
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pusha $F280
  k_pushi 0
  k_pushi 3
  k_pushi 2
  k_push -8
  k_push -6
  k_pusharg 15
  k_pushib 31
  k_callx RL_21BE, 16
UMINATO_L_A1BB:
  k_ldl -14
  k_jumpt UMINATO_L_A20F
  k_pushi 2
  k_jump UMINATO_L_A216
UMINATO_L_A1C3:
  k_pushi 0
  k_callx RF_362A, 2
  k_stl -2
  k_ldl -2
  k_jumpt UMINATO_L_A13F
  k_ldl -4
  k_ldrib 16
  k_smod
  k_jumpt UMINATO_L_A1E2
  k_ldliw $FA4C
  k_stl -16
  k_pushi 1
  k_leal -20
  k_pushl
  k_push -16
  k_callx UMINATO_F_9E35, 6
UMINATO_L_A1E2:
  k_ldl -4
  k_ldri 8
  k_smod
  k_jumpt UMINATO_L_A1F6
  k_ldliw $FAE6
  k_stl -16
  k_pushi 1
  k_leal -18
  k_pushl
  k_push -16
  k_callx UMINATO_F_9E35, 6
UMINATO_L_A1F6:
  k_ldl -4
  k_ldri 4
  k_smod
  k_jumpt UMINATO_L_A20A
  k_ldliw $F9B2
  k_stl -16
  k_pushi 1
  k_leal -22
  k_pushl
  k_push -16
  k_callx UMINATO_F_9E35, 6
UMINATO_L_A20A:
  k_ldl -4
  k_dec
  k_jump UMINATO_L_A13A
UMINATO_L_A20F:
  k_ldl -14
  k_ldri 1
  k_eq
  k_jumpf UMINATO_L_A21C
  k_pushi 1
UMINATO_L_A216:
  k_pushib 16
  k_callx RL_21BE, 4
UMINATO_L_A21C:
  k_ldl -2
  k_return
UMINATO_F_A21E:
  k_func 18
  k_ldli 0
  k_stl -4
  k_ldla $F308
  k_stl -2
  k_ldli 10
  k_stl -12
UMINATO_L_A22B:
  k_ldla $F302
  k_stl -8
  k_ldla $F304
  k_stl -10
  k_push -12
  k_push -4
  k_push -2
  k_callx UMINATO_F_A108, 6
  k_stl -4
  k_ldli 10
  k_stl -12
  k_ldl -4
  k_switchn 9
    .word $0100, UMINATO_L_A377
    .word $0200, UMINATO_L_A404
    .word $0400, UMINATO_L_A2FB
    .word $0500, UMINATO_L_A377
    .word $0600, UMINATO_L_A404
    .word $0800, UMINATO_L_A267
    .word $0900, UMINATO_L_A377
    .word $0A00, UMINATO_L_A404
    .word $2000, UMINATO_L_A48C
    .word UMINATO_L_A22B
UMINATO_L_A267:
  k_ldla $F306
  k_inc
  k_stla $F306
  k_ldla $F306
  k_ldri 2
  k_ugt
  k_jumpf UMINATO_L_A27A
  k_ldli 0
  k_stla $F306
UMINATO_L_A27A:
  k_ldli 1
  k_stl -2
  k_ldla $F304
  k_dec
  k_ldri 2
  k_ult
  k_jumpt UMINATO_L_A22B
  k_ldla $F302
  k_shl1
  k_pushl
  k_ldla $F304
  k_dec
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -14
  k_ldla $F302
  k_shl1
  k_pushl
  k_ldla $F304
  k_dec
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -16
  k_ldla $F302
  k_inc
  k_shl1
  k_pushl
  k_ldla $F304
  k_dec
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -18
  k_ldl -14
  k_ldri 15
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -16
  k_ldrib 64
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -18
  k_ldrib 64
  k_eq
  k_jumpt UMINATO_L_A22B
  k_push -14
  k_callx UMINATO_F_A0F3, 2
  k_jumpf UMINATO_L_A2E4
  k_ldli 0
  k_stla $F308
  k_ldl -14
  k_return
UMINATO_L_A2E4:
  k_ldla $F304
  k_dec
UMINATO_L_A2E8:
  k_stla $F304
UMINATO_L_A2EB:
  k_push -12
  k_push -10
  k_push -8
  k_pusha $F306
  k_push -2
  k_push -4
  k_callx UMINATO_F_9FC7, 12
  k_stl -2
  k_jump UMINATO_L_A22B
UMINATO_L_A2FB:
  k_ldla $F306
  k_inc
  k_stla $F306
  k_ldla $F306
  k_ldri 2
  k_ugt
  k_jumpf UMINATO_L_A30E
  k_ldli 0
  k_stla $F306
UMINATO_L_A30E:
  k_ldli 0
  k_stl -2
  k_ldla $F304
  k_inc
  k_ldri 14
  k_ugt
  k_jumpt UMINATO_L_A22B
  k_ldla $F302
  k_shl1
  k_pushl
  k_ldla $F304
  k_inc
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -14
  k_ldla $F302
  k_shl1
  k_pushl
  k_ldla $F304
  k_addli 2
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -16
  k_ldla $F302
  k_inc
  k_shl1
  k_pushl
  k_ldla $F304
  k_addli 2
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -18
  k_ldl -14
  k_ldri 15
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -14
  k_ldri 7
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -16
  k_ldrib 48
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -18
  k_ldrib 48
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldla $F304
  k_inc
  k_jump UMINATO_L_A2E8
UMINATO_L_A377:
  k_ldla $F306
  k_inc
  k_stla $F306
  k_ldla $F306
  k_ldri 2
  k_ugt
  k_jumpf UMINATO_L_A38A
  k_ldli 0
  k_stla $F306
UMINATO_L_A38A:
  k_ldli 2
  k_stl -2
  k_ldla $F302
  k_inc
  k_ldrib 26
  k_ugt
  k_jumpt UMINATO_L_A22B
  k_ldla $F302
  k_inc
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -14
  k_ldla $F302
  k_addli 2
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -16
  k_ldla $F302
  k_addli 2
  k_shl1
  k_pushl
  k_ldla $F304
  k_inc
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -18
  k_ldl -14
  k_ldri 15
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -16
  k_ldrib 48
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -16
  k_ldrib 64
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -18
  k_ldrib 48
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -14
  k_ldri 6
  k_eq
  k_jumpf UMINATO_L_A3FA
  k_ldli 3
  k_stla $F308
  k_ldl -14
  k_return
UMINATO_L_A3FA:
  k_ldla $F302
  k_inc
UMINATO_L_A3FE:
  k_stla $F302
  k_jump UMINATO_L_A2EB
UMINATO_L_A404:
  k_ldla $F306
  k_inc
  k_stla $F306
  k_ldla $F306
  k_ldri 2
  k_ugt
  k_jumpf UMINATO_L_A417
  k_ldli 0
  k_stla $F306
UMINATO_L_A417:
  k_ldli 3
  k_stl -2
  k_ldla $F302
  k_ldri 1
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldla $F302
  k_dec
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -14
  k_ldla $F302
  k_dec
  k_shl1
  k_pushl
  k_ldla $F304
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -16
  k_ldla $F302
  k_dec
  k_shl1
  k_pushl
  k_ldla $F304
  k_inc
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_deref
  k_stl -18
  k_ldl -14
  k_ldri 15
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -16
  k_ldrib 48
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -16
  k_ldrib 64
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -18
  k_ldrib 48
  k_eq
  k_jumpt UMINATO_L_A22B
  k_ldl -14
  k_ldri 7
  k_eq
  k_jumpf UMINATO_L_A485
  k_ldli 2
  k_stla $F308
  k_ldl -14
  k_return
UMINATO_L_A485:
  k_ldla $F302
  k_dec
  k_jump UMINATO_L_A3FE
UMINATO_L_A48C:
  k_ldli 1
  k_swap
  k_ldlba $EF68
  k_or
  k_stlba $EF68
  k_ldl -2
  k_stla $F308
  k_ldli 0
  k_return
UMINATO_F_A49B:
  k_func 0
  k_ldlarg 11
  k_jumpf UMINATO_L_A4B2
  k_pushi 3
  k_pushib 27
  k_pushib 31
  k_pushi 1
  k_pushi 1
  k_callx RF_4B55, 10
  k_jump UMINATO_L_A4BD
UMINATO_L_A4B2:
  k_pushi 3
  k_pushib 27
  k_pushib 31
  k_pushi 1
  k_pushi 1
  k_callx RF_4C4B, 10
UMINATO_L_A4BD:
  k_return
UMINATO_F_A4BE:
  k_func 2
  k_ldlarg 13
  k_jumpf UMINATO_L_A4F8
  k_pushiw $00E0
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_ldli 0
  k_stl -2
UMINATO_L_A4D7:
  k_ldl -2
  k_ldriw $00E0
  k_or
  k_pushl
  k_ldlbf 11
  k_pushl
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_ult
  k_jumpt UMINATO_L_A4D7
UMINATO_L_A4F8:
  k_return
UMINATO_F_A4F9:
  k_func 0
  k_pushi 1
  k_callx UMINATO_F_A49B, 2
  k_pusha $F280
  k_pushiw $8478
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 1
  k_callx RF_3DF1, 14
  k_ldlarg 11
  k_ldri 6
  k_eq
  k_jumpf UMINATO_L_A547
  k_pusha $F280
  k_pushiw $8ACC
  k_pushi 2
  k_pushi 4
  k_pushib 18
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8AEC
  k_pushi 2
  k_pushi 3
  k_pushib 18
  k_pushi 13
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pusha $F306
  k_pushi 3
  k_callx UMINATO_F_9C39, 6
  k_jump UMINATO_L_A591
UMINATO_L_A547:
  k_pusha $F280
  k_pushiw $8ADC
  k_pushi 2
  k_pushi 4
  k_pushib 18
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_ldlarg 11
  k_shl1
  k_pushl
  k_ldla $F99C
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_ldriw $ACC2
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $AD91
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $AD90
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $AD83
  k_add
  k_derefb
  k_dec
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw $AD82
  k_add
  k_derefb
  k_pushl
  k_pushi 1
  k_callx RF_3DF1, 14
UMINATO_L_A591:
  k_pushi 1
  k_pushiw $0092
  k_callx UMINATO_F_A4BE, 4
  k_call UMINATO_F_9FB7
  k_pushib 116
  k_pushi 2
  k_pushib 75
  k_callx RL_21BE, 6
  k_pushiw $00E0
  k_pushi 0
  k_pushi 0
  k_pushib 48
  k_callx RL_21BE, 8
  k_return
UMINATO_F_A5B1:
  k_func 0
  k_pushib 113
  k_pushi 2
  k_pushib 75
  k_callx RL_21BE, 6
  k_pushi 0
  k_callx UMINATO_F_A49B, 2
  k_pushiw $00FF
  k_pushi 3
  k_pushib 56
  k_callx RL_21BE, 6
  k_return
UMINATO_F_A5CF:
  k_func 4
  k_ldli 0
  k_stl -2
UMINATO_L_A5D6:
  k_ldli 0
  k_stl -4
UMINATO_L_A5D8:
  k_ldl -4
  k_shl1
  k_pushl
  k_ldl -2
  k_ldrib 56
  k_mul
  k_popr
  k_add
  k_ldriw $F30A
  k_add
  k_pushl
  k_ldli 0
  k_popstore
  k_ldl -4
  k_inc
  k_stl -4
  k_ldl -4
  k_ldri 7
  k_ult
  k_jumpt UMINATO_L_A5D8
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 4
  k_ult
  k_jumpt UMINATO_L_A5D6
  k_return
UMINATO_F_A5FB:
  k_func 2
  k_ldlib 23
  k_stl -2
UMINATO_L_A603:
  k_ldl -2
  k_shl1
  k_ldriw $F3EA
  k_add
  k_pushl
  k_ldli 2
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldrib 26
  k_ult
  k_jumpt UMINATO_L_A603
  k_return
UMINATO_F_A617:
  k_func 2
  k_ldlba $EF69
  k_ldrib 50
  k_ult
  k_jumpf UMINATO_L_A666
  k_pushi 0
  k_ldliw $2990
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushiw $0348
  k_pushiw $F30A
  k_pushib 126
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
  k_ldlba $EF69
  k_ldriw $EE78
  k_add
  k_derefb
  k_stl -2
  k_ldl -2
  k_ldri 4
  k_and
  k_jumpt UMINATO_L_A659
  k_call UMINATO_F_A5CF
UMINATO_L_A659:
  k_ldl -2
  k_ldrib 16
  k_and
  k_jumpf UMINATO_L_A688
  k_call UMINATO_F_A5FB
  k_jump UMINATO_L_A688
UMINATO_L_A666:
  k_pushi 0
  k_ldliw $2CD8
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushiw $0348
  k_pushiw $F30A
  k_pushib 126
  k_pusha $F282
  k_pushib 28
  k_callx RL_21BE, 10
UMINATO_L_A688:
  k_pushiw $0348
  k_pushiw $F652
  k_pushiw $F30A
  k_callx RL_88F4, 6
  k_return
UMINATO_F_A696:
  k_func 0
  k_pushi 1
  k_pushiw $AD9E
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_call RF_4AC6
  k_call RF_4AF7
  k_pushi 1
  k_pushiw $ADA2
  k_callx RF_2FB9, 4
  k_return
UMINATO_F_A6B5:
  k_func 5
  k_ldlba $EF69
  k_ldriw $EE78
  k_add
  k_derefb
  k_stlbf -1
  k_ldli 0
  k_stlba $EF68
  k_ldli 0
  k_jump UMINATO_L_A712
UMINATO_L_A6CD:
  k_ldlba $EF69
  k_ldrib 50
  k_ult
  k_jumpf UMINATO_L_A71C
  k_ldln -3
  k_ldri 1
  k_eq
  k_jumpf UMINATO_L_A6E5
  k_ldlbf -1
  k_ldri 4
  k_and
  k_jumpf UMINATO_L_A70F
UMINATO_L_A6E5:
  k_ldln -3
  k_ldri 2
  k_eq
  k_jumpf UMINATO_L_A6F5
  k_ldlbf -1
  k_ldrib 16
  k_and
  k_jumpt UMINATO_L_A6FC
UMINATO_L_A6F5:
  k_ldln -3
  k_ldri 2
  k_eq
  k_jump UMINATO_L_A720
UMINATO_L_A6FC:
  k_ldln -3
  k_ldri 8
  k_ult
  k_jumpf UMINATO_L_A70F
  k_ldli 1
  k_ldrn -3
  k_shl
  k_swap
  k_ldlba $EF68
  k_or
  k_stlba $EF68
UMINATO_L_A70F:
  k_ldln -3
  k_inc
UMINATO_L_A712:
  k_stln -3
  k_ldln -3
  k_ldri 9
  k_ult
  k_jumpt UMINATO_L_A6CD
  k_return
UMINATO_L_A71C:
  k_ldln -3
  k_ldri 6
  k_ult
UMINATO_L_A720:
  k_jumpf UMINATO_L_A6FC
  k_jump UMINATO_L_A70F
UMINATO_F_A726:
  k_func 0
  k_ldlarg 11
  k_shl1
  k_ldriw $ADA6
  k_add
  k_deref
  k_pushl
  k_pushib 24
  k_callx RL_21BE, 4
  k_stla $F9A4
  k_pushi 0
  k_longd $18, $00000000
  k_long $14
  k_pusha $F9A4
  k_pushib 26
  k_callx RL_21BE, 10
  k_ldlarg 11
  k_shl1
  k_ldriw $ADF8
  k_add
  k_deref
  k_pushl
  k_pushiw $B000
  k_pusha $F9A4
  k_pushib 27
  k_callx RL_21BE, 8
  k_pusha $F9A4
  k_pushib 25
  k_callx RL_21BE, 4
  k_ldlarg 13
  k_jumpf UMINATO_L_A773
  k_ldliw $B000
  k_callptr
UMINATO_L_A773:
  k_return
UMINATO_F_A774:
  k_func 0
  k_ldli 0
  k_stla $F9A6
  k_ldlarg 15
  k_stla $F9A2
  k_pusharg 13
  k_pusharg 11
  k_callx UMINATO_F_A726, 4
  k_ldli 0
  k_stla $F9A2
  k_ldla $F9A6
  k_return
UMINATO_F_A78F:
  k_func 0
  k_ldlarg 11
  k_jumpf UMINATO_L_A79C
  k_ldli 2
  k_jump UMINATO_L_A7A1
UMINATO_L_A79C:
  k_ldlarg 11
  k_jumpt UMINATO_L_A7A4
  k_ldli 1
UMINATO_L_A7A1:
  k_stla $F9AC
UMINATO_L_A7A4:
  k_pushi 1
  k_pushi 1
  k_callx UMINATO_F_A726, 4
  k_ldli 0
  k_stla $F9AC
  k_return
UMINATO_F_A7AF:
  k_func 6
  k_ldli 0
  k_stl -4
  k_ldlarg 11
  k_ldri 14
  k_ne
  k_jumpf UMINATO_L_A7D7
  k_ldli 1
  k_stl -4
  k_ldlarg 11
  k_ldrib 39
  k_eq
  k_jumpf UMINATO_L_A7C9
  k_pushi 3
  k_jump UMINATO_L_A7D3
UMINATO_L_A7C9:
  k_ldla $F300
  k_jumpf UMINATO_L_A7D7
  k_ldlarg 11
  k_addlib -15
  k_pushl
UMINATO_L_A7D3:
  k_callx UMINATO_F_A4F9, 2
UMINATO_L_A7D7:
  k_ldlarg 11
  k_switchn 9
    .word $000E, UMINATO_L_A801
    .word $000F, UMINATO_L_A830
    .word $0010, UMINATO_L_A83B
    .word $0011, UMINATO_L_A841
    .word $0012, UMINATO_L_A846
    .word $0013, UMINATO_L_A84C
    .word $0014, UMINATO_L_A86C
    .word $0015, UMINATO_L_A81E
    .word $0027, UMINATO_L_A887
    .word UMINATO_L_A808
UMINATO_L_A801:
  k_call RF_2E13
  k_stl -2
  k_call UMINATO_F_978F
UMINATO_L_A808:
  k_ldlba $EF65
  k_ldriw $00F0
  k_eq
  k_jumpf UMINATO_L_A896
  k_call UMINATO_F_A5B1
  k_call UMINATO_F_A696
  k_ldli 1
  k_stlba $EF65
  k_ldl -2
  k_return
UMINATO_L_A81E:
  k_pushib 21
  k_pushi 1
  k_pushi 2
  k_callx UMINATO_F_A774, 6
  k_stl -2
  k_ldl -2
  k_jumpf UMINATO_L_A808
  k_call UMINATO_F_A5B1
  k_ldl -2
  k_return
UMINATO_L_A830:
  k_pushi 15
UMINATO_L_A831:
  k_pushi 1
  k_pushi 3
UMINATO_L_A833:
  k_callx UMINATO_F_A774, 6
UMINATO_L_A837:
  k_stl -2
  k_jump UMINATO_L_A808
UMINATO_L_A83B:
  k_pushi 0
  k_pushi 1
  k_pushi 4
  k_jump UMINATO_L_A833
UMINATO_L_A841:
  k_pushib 17
  k_jump UMINATO_L_A831
UMINATO_L_A846:
  k_pushi 0
  k_pushi 1
  k_pushi 5
  k_jump UMINATO_L_A833
UMINATO_L_A84C:
  k_pushi 0
  k_pushi 1
  k_pushi 6
  k_callx UMINATO_F_A774, 6
  k_stl -2
  k_ldlba $F196
  k_jumpf UMINATO_L_A808
  k_pushi 1
  k_pushi 7
  k_callx UMINATO_F_A726, 4
  k_ldli 0
  k_stlba $F196
  k_ldli 0
  k_stla $F99E
  k_ldli 1
  k_jump UMINATO_L_A837
UMINATO_L_A86C:
  k_pushi 0
  k_pushi 1
  k_pushi 8
  k_callx UMINATO_F_A774, 6
  k_stl -2
  k_ldla $F9AA
  k_jumpf UMINATO_L_A808
  k_pushi 1
  k_pushi 1
  k_callx UMINATO_F_A726, 4
  k_ldli 0
  k_stla $F9AA
  k_jump UMINATO_L_A808
UMINATO_L_A887:
  k_pushib 39
  k_pushi 1
  k_pushi 3
  k_callx UMINATO_F_A774, 6
  k_stl -2
  k_ldl -2
  k_jumpt UMINATO_L_A808
  k_ldl -2
  k_return
UMINATO_L_A896:
  k_ldl -4
  k_jumpf UMINATO_L_A89D
  k_call UMINATO_F_A5B1
UMINATO_L_A89D:
  k_ldl -2
  k_return
UMINATO_F_A89F:
  k_func 4
  k_ldlbf 11
  k_ldrib 50
  k_uge
  k_jumpf UMINATO_L_A8B8
  k_ldlbf 11
  k_ldriw $ADD8
  k_add
  k_derefb
  k_stl -2
  k_ldl -2
  k_return
UMINATO_L_A8B8:
  k_ldlbf 11
  k_ldri 2
  k_eq
  k_jumpt UMINATO_L_A8C8
  k_ldlbf 11
  k_ldri 12
  k_eq
  k_jumpf UMINATO_L_A8CA
UMINATO_L_A8C8:
  k_ldli 5
  k_return
UMINATO_L_A8CA:
  k_ldlbf 11
  k_ldri 5
  k_mul
  k_ldriw $150A
  k_add
  k_stl -4
  k_push -4
  k_callx RL_884E, 2
  k_stl -2
  k_ldl -2
  k_return
UMINATO_F_A8DC:
  k_func 1
  k_ldlbf 11
  k_ldrib 50
  k_uge
  k_jumpf UMINATO_L_A8F0
  k_ldliw $00FF
  k_jump UMINATO_L_A912
UMINATO_L_A8F0:
  k_ldlarg 13
  k_ldri 6
  k_eq
  k_jumpf UMINATO_L_A907
  k_ldlbf 11
  k_ldrib 47
  k_eq
  k_jumpf UMINATO_L_A903
  k_ldli 3
  k_jump UMINATO_L_A912
UMINATO_L_A903:
  k_ldli 2
  k_jump UMINATO_L_A912
UMINATO_L_A907:
  k_ldlarg 13
  k_ldri 5
  k_eq
  k_jumpf UMINATO_L_A911
  k_ldli 1
  k_jump UMINATO_L_A912
UMINATO_L_A911:
  k_ldli 0
UMINATO_L_A912:
  k_stlbf -1
  k_ldlbf -1
  k_return
UMINATO_F_A919:
  k_func 0
  k_ldli 0
  k_stla $F306
  k_ldli 1
  k_stla $F300
  k_ldli 0
  k_stla $F9B0
  k_stla $F9AE
  k_stla $F9AC
  k_stla $F9AA
  k_stla $F9A8
  k_stla $F9A6
  k_ldli 0
  k_stla $F99E
  k_stla $F99A
  k_ldli 0
  k_stla $F9A2
  k_ldli 0
  k_stla $F9A4
  k_ldli 0
  k_stlba $FB81
  k_stlba $FB80
  k_ldli 0
  k_stla $F9A0
  k_ldli 0
  k_stlba $FB83
  k_stlba $FB82
  k_ldliw $00FF
  k_stlba $FB84
  k_return
UMINATO_F_A961:
  k_func 10
  k_call UMINATO_F_A919
  k_ldlba $F28D
  k_jumpt UMINATO_L_A983
  k_ldlib 17
  k_stla $F302
  k_ldli 13
  k_stla $F304
  k_ldli 2
  k_stla $F308
  k_ldli 1
  k_stlba $F28D
  k_jump UMINATO_L_A98F
UMINATO_L_A983:
  k_ldli 3
  k_stla $F302
  k_ldli 11
  k_stla $F304
  k_ldli 0
  k_stla $F308
UMINATO_L_A98F:
  k_ldli 1
  k_stl -10
  k_ldliw $E564
  k_stl -8
  k_ldl -8
  k_addli 3
  k_derefb
  k_pushl
  k_ldl -8
  k_addli 2
  k_derefb
  k_pushl
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_ldl -8
  k_derefb
  k_pushl
  k_callx $8747, 8
  k_stlba $EF69
  k_ldlba $EF69
  k_pushl
  k_callx UMINATO_F_A89F, 2
  k_stla $F99C
  k_pusha $F99C
  k_ldlba $EF69
  k_pushl
  k_callx UMINATO_F_A8DC, 4
  k_stlba $FB84
  k_call UMINATO_F_A617
  k_call UMINATO_F_99B5
  k_pushi 1
  k_pushiw $AEFA
  k_callx RF_2FB9, 4
  k_ldliw $8000
  k_stla $F16B
  k_ldlba $EF65
  k_jumpt UMINATO_L_A9EB
  k_pushi 1
  k_pushi 1
  k_callx UMINATO_F_A726, 4
  k_ldli 1
  k_stlba $EF65
  k_jump UMINATO_L_AA1B
UMINATO_L_A9EB:
  k_ldlba $EF65
  k_ldriw $00F0
  k_eq
  k_jumpf UMINATO_L_A9FF
  k_ldli 1
  k_stlba $EF65
  k_call UMINATO_F_A696
  k_jump UMINATO_L_AA1B
UMINATO_L_A9FF:
  k_call UMINATO_F_A6B5
  k_pushi 1
  k_pushiw $AF04
  k_callx RF_2FB9, 4
  k_call RF_4A99
  k_call RF_4AC6
  k_call RF_4AF7
  k_pushi 1
  k_pushiw $AF08
  k_callx RF_2FB9, 4
UMINATO_L_AA1B:
  k_ldliw $00FF
  k_stlba $F168
  k_stlba $F167
  k_stlba $F166
  k_stlba $F165
  k_ldli 0
  k_stlba $F196
  k_pushi 1
  k_callx UMINATO_F_97CD, 2
  k_ldlba $EF69
  k_ldrib 50
  k_ult
  k_jumpf UMINATO_L_AA58
  k_pushi 0
  k_pushi 1
  k_pushi 0
  k_callx UMINATO_F_A774, 6
  k_jumpf UMINATO_L_AA6C
  k_pushi 0
  k_callx UMINATO_F_97CD, 2
  k_pushi 2
  k_pushi 1
  k_pushi 2
  k_callx UMINATO_F_A774, 6
  k_pushi 1
  k_callx UMINATO_F_A78F, 2
  k_return
UMINATO_L_AA58:
  k_call RF_60EE
  k_pushi 1
  k_pushi 5
  k_callx RF_3F3E, 2
  k_shl1
  k_ldriw $AE1E
  k_add
  k_deref
  k_pushl
  k_callx RF_2FB9, 4
UMINATO_L_AA6C:
  k_ldla $F9AE
  k_jumpf UMINATO_L_AA76
  k_ldli 0
  k_stla $F9AE
UMINATO_L_AA76:
  k_pushi 0
  k_pusha $F306
  k_pusha $F308
  k_callx UMINATO_F_9C39, 6
  k_pushi 1
  k_pushiw $AF0C
  k_callx RF_2FB9, 4
  k_pushi 0
  k_callx UMINATO_F_97CD, 2
  k_ldli 0
  k_stl -6
UMINATO_L_AA90:
  k_call UMINATO_F_A21E
  k_stl -4
  k_ldl -4
  k_ldri 0
  k_gt
  k_jumpf UMINATO_L_AAA3
  k_ldl -4
  k_ldri 7
  k_lt
  k_jumpf UMINATO_L_AAA3
  k_call UMINATO_F_9FA9
UMINATO_L_AAA3:
  k_ldl -4
  k_ldri 8
  k_eq
  k_jumpt UMINATO_L_AAB5
  k_ldli 1
  k_ldr -4
  k_shl
  k_pushl
  k_ldlba $EF68
  k_popr
  k_and
  k_jumpf UMINATO_L_AAE7
UMINATO_L_AAB5:
  k_pushi 1
  k_callx UMINATO_F_97CD, 2
  k_ldl -4
  k_ldri 4
  k_eq
  k_jumpf UMINATO_L_AADF
  k_pushib 39
  k_callx UMINATO_F_A7AF, 2
  k_stl -6
  k_ldl -6
  k_jumpt UMINATO_L_AAD7
  k_ldli 0
  k_stla $F300
  k_ldl -4
  k_addli 14
  k_pushl
  k_callx UMINATO_F_A7AF, 2
  k_stl -6
UMINATO_L_AAD7:
  k_ldli 1
  k_stla $F300
  k_ldli 0
  k_jump UMINATO_L_AAE6
UMINATO_L_AADF:
  k_ldl -4
  k_addli 14
  k_pushl
  k_callx UMINATO_F_A7AF, 2
UMINATO_L_AAE6:
  k_stl -6
UMINATO_L_AAE7:
  k_pushi 0
  k_callx UMINATO_F_97CD, 2
  k_ldlba $F169
  k_jumpf UMINATO_L_AAF3
  k_return
UMINATO_L_AAF3:
  k_ldl -10
  k_jumpf UMINATO_L_AB05
  k_ldlba $F196
  k_jumpt UMINATO_L_AB05
  k_ldl -8
  k_inc
  k_derefb
  k_pushl
  k_callx UMINATO_F_9762, 2
UMINATO_L_AB05:
  k_ldl -6
  k_jumpt UMINATO_L_AB2D
  k_pushi 0
  k_pusha $F306
  k_pusha $F308
  k_callx UMINATO_F_9C39, 6
  k_pushi 1
  k_callx UMINATO_F_97CD, 2
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx UMINATO_F_A774, 6
  k_pushi 1
  k_pushiw $AF0F
  k_callx RF_2FB9, 4
  k_pushi 0
  k_callx UMINATO_F_97CD, 2
UMINATO_L_AB2D:
  k_ldl -6
  k_jumpf UMINATO_L_AA90
  k_ldl -8
  k_addli 15
  k_derefb
  k_ldri 2
  k_and
  k_jumpf UMINATO_L_AB43
  k_ldlba $F196
  k_jumpt UMINATO_L_AB43
  k_pushi 0
  k_jump UMINATO_L_AB4A
UMINATO_L_AB43:
  k_ldl -4
  k_ldri 7
  k_eq
  k_jumpf UMINATO_L_AB4E
  k_pushi 1
UMINATO_L_AB4A:
  k_callx UMINATO_F_A78F, 2
UMINATO_L_AB4E:
  k_ldli 0
  k_stlba $EA8E
  k_return
  .byte $00, $C1, $01, $00, $80, $12, $00, $94, $01, $20, $B8, $12, $00, $F7, $01, $00
  .byte $80, $13, $00, $8F, $01, $E0, $BE, $13, $00, $01, $02, $00, $80, $14, $00, $61
  .byte $01, $20, $C0, $14, $00, $9A, $01, $00, $80, $15, $00, $B3, $01, $40, $B3, $15
  .byte $00, $B8, $81, $C4, $81, $D0, $81, $DC, $81, $E8, $81, $F4, $81, $00, $82, $0C
  .byte $82, $18, $82, $24, $82, $30, $82, $3C, $82, $68, $7A, $8C, $7A, $B0, $7A, $D4
  .byte $7A, $74, $7A, $98, $7A, $BC, $7A, $E0, $7A, $80, $7A, $A4, $7A, $C8, $7A, $EC
  .byte $7A, $F8, $7A, $1C
  .byte "{@{d{"
  .byte $04
  .byte "{({L{p{"
  .byte $10
  .byte "{4{X{|{"
  .byte $88, $7B, $AC, $7B, $D0, $7B, $F4, $7B, $94, $7B, $B8, $7B, $DC, $7B, $00, $7C
  .byte $A0, $7B, $C4, $7B, $E8, $7B, $0C, $7C, $18
  .byte "|<|`|"
  .byte $84
  .byte "|$|H|l|"
  .byte $90
  .byte "|0|T|x|"
  .byte $9C, $7C, $A8, $7C, $CC, $7C, $F0, $7C, $14, $7D, $B4, $7C, $D8, $7C, $FC, $7C
  .byte $20, $7D, $C0, $7C, $E4, $7C, $08
  .byte "},}8}\}"
  .byte $80, $7D, $A4
  .byte "}D}h}"
  .byte $8C, $7D, $B0
  .byte "}P}t}"
  .byte $98, $7D, $BC, $7D, $C8, $7D, $EC, $7D, $10, $7E, $34, $7E, $D4, $7D, $F8, $7D
  .byte $1C, $7E, $40, $7E, $E0, $7D, $04
  .byte "~(~L~X~|~"
  .byte $A0, $7E, $C4, $7E, $64, $7E, $88, $7E, $AC, $7E, $D0, $7E, $70, $7E, $94, $7E
  .byte $B8, $7E, $DC, $7E, $E8, $7E, $0C, $7F, $30, $7F, $54, $7F, $F4, $7E, $18, $7F
  .byte $3C, $7F, $60, $7F, $00, $7F, $24, $7F, $48, $7F, $6C, $7F, $78, $7F, $9C, $7F
  .byte $C0, $7F, $E4, $7F, $84, $7F, $A8, $7F, $CC, $7F, $F0, $7F, $90, $7F, $B4, $7F
  .byte $D8, $7F, $FC, $7F, $08, $80, $2C, $80, $50, $80, $74, $80, $14, $80, $38, $80
  .byte $5C, $80, $80, $80, $20, $80, $44, $80, $68, $80, $8C, $80, $98, $80, $BC, $80
  .byte $E0, $80, $04, $81, $A4, $80, $C8, $80, $EC, $80, $10, $81, $B0, $80, $D4, $80
  .byte $F8, $80, $1C, $81, $00, $04, $08, $00, $04, $08, $0A, $25, $32, $26, $B2
  .byte "%z%B%"
  .byte $EA, $25, $C0, $29, $00, $00
  .byte "h*0*"
  .byte $F8, $29, $A0, $2A, $A0, $32, $00, $00, $48, $33, $10, $33, $D8, $32, $80, $33
  .byte $30, $2E, $00, $00, $D8, $2E, $A0, $2E, $68, $2E, $10, $2F, $10, $37, $00, $00
  .byte $B8, $37, $80, $37, $48, $37, $F0, $37, $80, $3B, $A8, $3C, $28, $3C, $F0, $3B
  .byte $B8, $3B, $60, $3C, $A6, $44, $00, $00, $4E, $45, $16, $45, $DE, $44, $86, $45
  .byte $36, $40, $00, $00, $DE, $40, $A6, $40, $6E, $40, $16, $41, $22, $C8, $4A, $C9
  .byte $CA, $C8, $92, $C8, $5A, $C8, $02, $C9, $D8, $CC, $00, $00, $80, $CD, $48, $CD
  .byte $10, $CD, $B8, $CD, $B8, $D5, $00, $00, $60, $D6, $28, $D6, $F0, $D5, $98, $D6
  .byte $48, $D1, $00, $00, $F0, $D1, $B8, $D1, $80, $D1, $28, $D2, $28, $DA, $00, $00
  .byte $D0, $DA, $98, $DA, $60, $DA, $08, $DB, $78, $E7, $A0, $E8, $20, $E8, $E8, $E7
  .byte $B0, $E7, $58, $E8, $08, $E3, $00, $00, $B0, $E3, $78, $E3, $40, $E3, $E8, $E3
  .byte $98, $DE, $00, $00, $40, $DF, $08, $DF, $D0, $DE, $78, $DF, $02, $06, $17, $06
  .byte $02, $0C, $10, $06, $09, $06, $18, $0E, $10, $13, $07, $04, $07, $05, $07, $04
  .byte $07, $04, $07, $04, $06, $06, $04, $02, $1B, $43, $32, $00, $1B, $43, $30, $00
  .byte $B8, $AD, $BF, $AD, $C6, $AD, $CF, $AD, $D6, $AD, $DC, $AD, $E3, $AD, $EA, $AD
  .byte $F1, $AD
  .byte "hantei"
  .byte $00
  .byte "mdisp1"
  .byte $00
  .byte "uminato2"
  .byte $00
  .byte "um_sub"
  .byte $00
  .byte "oukyu"
  .byte $00
  .byte "koueki"
  .byte $00
  .byte "sakaba"
  .byte $00
  .byte "s_card"
  .byte $00
  .byte "zousen"
  .byte $00, $00, $2F, $00, $2F, $00, $2F, $00, $2F, $00, $2F, $00, $2F, $00, $08, $00
  .byte $08, $00, $20, $04, $04, $06, $07, $07, $04, $04, $04, $04, $03, $02, $02, $01
  .byte $07, $07, $06, $01, $04, $03, $04, $28, $AE, $43, $AE, $6F, $AE, $9B, $AE, $C1
  .byte $AE
  .byte "Blimey! This port's"
  .byte $0A
  .byte "empty!"
  .byte $00
  .byte "There's no inn here."
  .byte $0A
  .byte "What a waste of a"
  .byte $0A
  .byte "port"
  .byte $00
  .byte "It looks like we can"
  .byte $0A
  .byte "only get supplies"
  .byte $0A
  .byte "here"
  .byte $00
  .byte "Cap'n, this port"
  .byte $0A
  .byte "isn't worth our time"
  .byte $00
  .byte "There's nothing here!"
  .byte $0A
  .byte "Let's get our"
  .byte $0A
  .byte "supplies and move on"
  .byte $00, $1B, $52, $28, $1B, $45, $3D, $1B, $43, $32, $00, $1B, $43, $32, $00, $1B
  .byte $43, $30, $00, $1B, $57, $00, $1B, $57, $00
