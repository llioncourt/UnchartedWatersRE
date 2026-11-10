; overlay mdisp1, runs at $7E:B000
.p816
.smart -
.include "kvm.inc"
.include "root_syms.inc"

.segment "CODE"

  jmp MDISP1_F_B003
MDISP1_F_B003:
  k_func 0
  k_ldla $F9AA
  k_jumpf MDISP1_L_B017
  k_ldlba $EF69
  k_pushl
  k_callx MDISP1_F_B2CF, 2
  k_return
MDISP1_L_B017:
  k_ldla $F9AC
  k_ldri 2
  k_eq
  k_jumpf MDISP1_L_B02D
  k_ldlba $EF69
  k_pushl
  k_callx MDISP1_F_B2CF, 2
  k_pushi 1
  k_callx MDISP1_F_BA88, 2
  k_return
MDISP1_L_B02D:
  k_ldla $F9AC
  k_ldri 1
  k_eq
  k_jumpf MDISP1_L_B03B
  k_pushi 0
  k_callx MDISP1_F_BA88, 2
  k_return
MDISP1_L_B03B:
  k_call MDISP1_F_B5CC
  k_return
MDISP1_F_B03F:
  k_func 2
  k_ldlba $EF69
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -2
  k_pusha $F280
  k_pushiw $8478
  k_pushib 27
  k_pushib 30
  k_pushi 1
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8478
  k_pushib 27
  k_pushib 30
  k_pushib 33
  k_pushi 1
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pushi 1
  k_pushiw MDISP1_D_BB1A
  k_callx RF_2FB9, 4
  k_pushi 3
  k_pushib 16
  k_callx RF_2F8F, 4
  k_push -2
  k_callx RF_40DE, 2
  k_call RF_4A99
  k_call RF_4AC6
  k_call RF_4AF7
  k_pushi 1
  k_pushiw MDISP1_D_BB1E
  k_callx RF_2FB9, 4
  k_return
MDISP1_F_B098:
  k_func 2
  k_pushi 0
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 1
  k_pushi 0
  k_callx RF_3E7E, 4
  k_pushi 0
  k_ldlarg 11
  k_ldri 5
  k_shl
  k_ldriw RL_2790
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 32
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_pushi 0
  k_ldlarg 11
  k_ldri 5
  k_shl
  k_ldriw $2890
  k_add
  k_long $26
  k_long $14
  k_pusha $F282
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushib 32
  k_pushib 96
  k_pusha $F282
  k_pushib 29
  k_callx RL_21BE, 8
  k_pushi 1
  k_pushi 1
  k_pushi 1
  k_callx RF_3EC3, 6
  k_pushi 1
  k_pushi 4
  k_pushi 1
  k_callx RF_3EC3, 6
  k_return
MDISP1_F_B0FC:
  k_func 0
  k_ldlarg 11
  k_ldri 0
  k_ugt
  k_jumpf MDISP1_L_B10A
  k_ldlarg 11
  k_dec
  k_stlarg 11
MDISP1_L_B10A:
  k_pusha $F280
  k_ldlarg 11
  k_shl1
  k_pushl
  k_ldlarg 13
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
  k_ldriw MDISP1_D_BB2F
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB2E
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB23
  k_add
  k_derefb
  k_dec
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB22
  k_add
  k_derefb
  k_pushl
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_ldlarg 11
  k_shl1
  k_pushl
  k_ldlarg 13
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_ldriw $AD22
  k_add
  k_deref
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB2F
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB2E
  k_add
  k_derefb
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB23
  k_add
  k_derefb
  k_addlib 31
  k_pushl
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB22
  k_add
  k_derefb
  k_pushl
  k_pushi 2
  k_callx RF_3DF1, 14
  k_return
MDISP1_F_B17A:
  k_func 5
  k_call $97F5
  k_pusha $F280
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB3A
  k_add
  k_deref
  k_pushl
  k_pushi 15
  k_pushib 28
  k_pushi 5
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_ldlarg 11
  k_shl1
  k_ldriw MDISP1_D_BB4A
  k_add
  k_deref
  k_pushl
  k_pushi 15
  k_pushib 28
  k_pushib 37
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_ldlba $EF69
  k_ldriw $EE78
  k_add
  k_derefb
  k_stlbf -1
  k_ldli 0
  k_stlba $EF68
  k_ldli 0
  k_jump MDISP1_L_B215
MDISP1_L_B1C0:
  k_ldlba $EF69
  k_ldrib 50
  k_ult
  k_jumpf MDISP1_L_B1FF
  k_ldln -3
  k_ldri 1
  k_eq
  k_jumpf MDISP1_L_B1E3
  k_ldlbf -1
  k_ldri 4
  k_jump MDISP1_L_B1DC
MDISP1_L_B1D7:
  k_ldlbf -1
  k_ldrib 16
MDISP1_L_B1DC:
  k_and
  k_jumpf MDISP1_L_B212
  k_jump MDISP1_L_B1F8
MDISP1_L_B1E3:
  k_ldln -3
  k_ldri 2
  k_eq
  k_jumpt MDISP1_L_B1D7
  k_ldln -3
  k_ldri 0
  k_ugt
  k_jumpf MDISP1_L_B1FF
  k_ldln -3
  k_ldri 7
  k_ult
  k_jumpf MDISP1_L_B1FF
MDISP1_L_B1F8:
  k_pusharg 11
  k_pushn -3
  k_callx MDISP1_F_B0FC, 4
MDISP1_L_B1FF:
  k_ldln -3
  k_ldri 8
  k_ult
  k_jumpf MDISP1_L_B212
  k_ldli 1
  k_ldrn -3
  k_shl
  k_swap
  k_ldlba $EF68
  k_or
  k_stlba $EF68
MDISP1_L_B212:
  k_ldln -3
  k_inc
MDISP1_L_B215:
  k_stln -3
  k_ldln -3
  k_ldri 9
  k_ult
  k_jumpt MDISP1_L_B1C0
  k_return
MDISP1_F_B21F:
  k_func 4
  k_pusha $F280
  k_pushiw $82F0
  k_pushi 7
  k_pushib 28
  k_pushib 20
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $82F0
  k_pushi 7
  k_pushib 28
  k_pushib 52
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8248
  k_pushi 2
  k_pushib 18
  k_pushib 18
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8248
  k_pushi 2
  k_pushib 18
  k_pushib 50
  k_pushi 2
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $82C8
  k_pushi 2
  k_pushi 10
  k_pushib 20
  k_pushib 20
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $82C8
  k_pushi 2
  k_pushi 10
  k_pushib 52
  k_pushib 20
  k_pushi 2
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw $8ACC
  k_pushi 2
  k_pushi 4
  k_pushib 18
  k_pushib 16
  k_pushi 1
  k_callx RF_3DF1, 14
  k_pusha $F280
  k_pushiw RD_8AEC
  k_pushi 2
  k_pushi 3
  k_pushib 18
  k_pushi 13
  k_pushi 1
  k_callx RF_3DF1, 14
  k_return
MDISP1_F_B2AC:
  k_func 0
  k_pushi 0
  k_ldln 21
  k_long $26
  k_long $14
  k_pushn 23
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushn 23
  k_pushn 19
  k_pusharg 17
  k_pusharg 15
  k_pusharg 13
  k_pusharg 11
  k_pushib 30
  k_callx RL_21BE, 14
  k_return
MDISP1_F_B2CF:
  k_func 21
  k_pushib 22
  k_pushiw $96FB
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_ldli 0
  k_jump MDISP1_L_B2FA
MDISP1_L_B2E4:
  k_ldlbf -1
  k_ldrib 24
  k_mul
  k_ldriw $E9A6
  k_add
  k_stln -21
  k_ldln -21
  k_derefb
  k_jumpf MDISP1_L_B305
  k_ldlbf -1
  k_inc
MDISP1_L_B2FA:
  k_stlbf -1
  k_ldlbf -1
  k_ldri 5
  k_ult
  k_jumpt MDISP1_L_B2E4
MDISP1_L_B305:
  k_ldlbf -1
  k_pushl
  k_callx RF_40A5, 2
  k_stln -19
  k_ldln -19
  k_addlib 20
  k_derefb
  k_stlbf -1
  k_ldlbf -1
  k_ldri 5
  k_shr
  k_ldri 7
  k_and
  k_stln -3
  k_ldlbf -1
  k_ldri 4
  k_shr
  k_ldri 1
  k_and
  k_stln -5
  k_ldlbf -1
  k_ldri 2
  k_shr
  k_ldri 3
  k_and
  k_stln -7
  k_ldln -7
  k_shl1
  k_pushl
  k_ldln -5
  k_ldri 6
  k_mul
  k_pushl
  k_ldln -3
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_ldriw MDISP1_D_BB66
  k_add
  k_deref
  k_stln -9
  k_ldln -3
  k_shl1
  k_ldriw MDISP1_D_BB5B
  k_add
  k_derefb
  k_pushl
  k_ldln -3
  k_shl1
  k_ldriw MDISP1_D_BB5A
  k_add
  k_derefb
  k_popr
  k_mul
  k_stln -13
  k_ldln -3
  k_shl1
  k_ldriw MDISP1_D_BB5A
  k_add
  k_derefb
  k_stlba $FB82
  k_ldln -3
  k_shl1
  k_ldriw MDISP1_D_BB5B
  k_add
  k_derefb
  k_stlba $FB83
  k_ldla $F9AC
  k_ldri 2
  k_eq
  k_jumpf MDISP1_L_B37E
  k_return
MDISP1_L_B37E:
  k_pushi 1
  k_pushib 127
  k_ldln -9
  k_ldri 5
  k_shl
  k_pushl
  k_pushn -13
  k_pushiw $03B0
  k_pushi 11
  k_callx RL_21BE, 12
  k_ldla $F9AA
  k_jumpf MDISP1_L_B397
  k_return
MDISP1_L_B397:
  k_pusha $F280
  k_pushiw RD_8B04
  k_ldln -3
  k_shl1
  k_ldriw MDISP1_D_BB5B
  k_add
  k_derefb
  k_pushl
  k_ldln -3
  k_shl1
  k_ldriw MDISP1_D_BB5A
  k_add
  k_derefb
  k_pushl
  k_pushib 20
  k_pushi 5
  k_pushi 1
  k_callx MDISP1_F_B2AC, 14
  k_ldlbf 11
  k_ldrib 50
  k_ult
  k_jumpf MDISP1_L_B58C
  k_ldlbf 11
  k_ldri 11
  k_eq
  k_jumpt MDISP1_L_B3D8
  k_ldlbf 11
  k_ldri 5
  k_eq
  k_jumpt MDISP1_L_B3D8
  k_ldlbf 11
  k_ldri 4
  k_eq
  k_jumpf MDISP1_L_B4A9
MDISP1_L_B3D8:
  k_ldli 0
MDISP1_L_B3D9:
  k_stln -3
MDISP1_L_B3DB:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_stln -5
  k_ldln -5
  k_shl1
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BC62
  k_add
  k_deref
  k_stln -9
  k_ldln -9
  k_ldriw $0400
  k_ult
  k_jumpf MDISP1_L_B58C
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BC08
  k_add
  k_derefb
  k_pushl
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BBAE
  k_add
  k_derefb
  k_popr
  k_mul
  k_stln -13
  k_pushi 1
  k_pushib 127
  k_ldln -9
  k_ldri 5
  k_shl
  k_pushl
  k_pushn -13
  k_pushiw $0158
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw RD_8BC4
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BC08
  k_add
  k_derefb
  k_pushl
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BBAE
  k_add
  k_derefb
  k_pushl
  k_pushib 21
  k_pushi 15
  k_pushi 1
  k_callx MDISP1_F_B2AC, 14
  k_ldln -5
  k_shl1
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BC64
  k_add
  k_deref
  k_stln -11
  k_ldln -11
  k_ldriw $0400
  k_ult
  k_jumpf MDISP1_L_B58C
  k_ldln -11
  k_ldrn -9
  k_eq
  k_jumpf MDISP1_L_B528
  k_pusha $F280
  k_pushiw RD_8BC4
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BC08
  k_add
  k_derefb
  k_pushl
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BBAE
  k_jump MDISP1_L_B580
MDISP1_L_B4A9:
  k_ldlbf 11
  k_ldrib 47
  k_eq
  k_jumpf MDISP1_L_B4B6
  k_ldli 13
  k_jump MDISP1_L_B3D9
MDISP1_L_B4B6:
  k_ldlbf 11
  k_ldri 14
  k_mul
  k_ldriw $E6B4
  k_add
  k_stln -17
  k_ldla $F99C
  k_switch 0, 8, MDISP1_L_B3DB
    .word MDISP1_L_B4DB, MDISP1_L_B4FD, MDISP1_L_B509, MDISP1_L_B514, MDISP1_L_B518, MDISP1_L_B51C, MDISP1_L_B520, MDISP1_L_B524
MDISP1_L_B4DB:
  k_ldli 1
  k_stln -3
  k_ldln -17
  k_deref
  k_ldriw $012C
  k_ge
  k_jumpf MDISP1_L_B4ED
  k_ldln -3
  k_inc
  k_stln -3
MDISP1_L_B4ED:
  k_ldln -17
  k_deref
  k_ldriw $0320
MDISP1_L_B4F3:
  k_ge
  k_jumpf MDISP1_L_B3DB
  k_ldln -3
  k_inc
  k_jump MDISP1_L_B3D9
MDISP1_L_B4FD:
  k_ldli 4
MDISP1_L_B4FE:
  k_stln -3
  k_ldln -17
  k_deref
  k_ldriw $012C
  k_jump MDISP1_L_B4F3
MDISP1_L_B509:
  k_ldli 6
  k_stln -3
  k_ldln -17
  k_deref
  k_ldrib 100
  k_jump MDISP1_L_B4F3
MDISP1_L_B514:
  k_ldli 8
  k_jump MDISP1_L_B3D9
MDISP1_L_B518:
  k_ldli 9
  k_jump MDISP1_L_B3D9
MDISP1_L_B51C:
  k_ldli 10
  k_jump MDISP1_L_B4FE
MDISP1_L_B520:
  k_ldli 12
  k_jump MDISP1_L_B3D9
MDISP1_L_B524:
  k_ldli 14
  k_jump MDISP1_L_B3D9
MDISP1_L_B528:
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BC09
  k_add
  k_derefb
  k_pushl
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BBAF
  k_add
  k_derefb
  k_popr
  k_mul
  k_stln -15
  k_pushi 1
  k_pushib 127
  k_ldln -11
  k_ldri 5
  k_shl
  k_pushl
  k_pushn -15
  k_pushiw $0182
  k_pushi 11
  k_callx RL_21BE, 12
  k_pusha $F280
  k_pushiw RD_8C18
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BC09
  k_add
  k_derefb
  k_pushl
  k_ldln -5
  k_shl1
  k_pushl
  k_ldln -3
  k_ldri 6
  k_mul
  k_popr
  k_add
  k_ldriw MDISP1_D_BBAF
MDISP1_L_B580:
  k_add
  k_derefb
  k_pushl
  k_pushib 20
  k_pushib 23
  k_pushi 1
  k_callx MDISP1_F_B2AC, 14
MDISP1_L_B58C:
  k_return
MDISP1_F_B58D:
  k_func 0
  k_pushib 17
  k_pushiw $8000
  k_pushib 60
  k_pushiw $00F0
  k_pushi 13
  k_callx RL_21BE, 10
  k_ldlba $FB84
  k_ldriw $00FF
  k_ne
  k_jumpf MDISP1_L_B5CB
  k_pushib 17
  k_ldlbf 11
  k_shl1
  k_shl1
  k_ldriw MDISP1_D_BD16
  k_add
  k_deref
  k_pushl
  k_ldlbf 11
  k_shl1
  k_shl1
  k_ldriw MDISP1_D_BD18
  k_add
  k_deref
  k_pushl
  k_pushiw $012C
  k_pushi 13
  k_callx RL_21BE, 10
MDISP1_L_B5CB:
  k_return
MDISP1_F_B5CC:
  k_func 0
  k_ldlba $EF6A
  k_ldri 1
  k_ne
  k_jumpf MDISP1_L_B5E1
  k_ldli 1
  k_stlba $EF6A
  k_ldli 0
  k_stla $EF6B
MDISP1_L_B5E1:
  k_pushi 0
  k_pushib 37
  k_callx RL_21BE, 4
  k_call RF_3D7C
  k_ldlba $E565
  k_pushl
  k_callx $9762, 2
  k_pushi 1
  k_pushib 22
  k_pushiw RD_8B6D
  k_pushib 32
  k_pushib 119
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushib 22
  k_pushiw $8000
  k_pushi 0
  k_pushib 76
  k_callx RL_21BE, 8
  k_pushi 2
  k_pushib 127
  k_pushi 0
  k_pushiw $00BD
  k_pushiw $0097
  k_pushi 11
  k_callx RL_21BE, 12
  k_pushi 2
  k_pushib 127
  k_pushiw $17A0
  k_pushi 11
  k_pushiw $03A5
  k_pushi 11
  k_callx RL_21BE, 12
  k_ldlba $FB84
  k_pushl
  k_callx MDISP1_F_B58D, 2
  k_call MDISP1_F_B03F
  k_pusha $F99C
  k_callx MDISP1_F_B17A, 2
  k_call MDISP1_F_B21F
  k_ldlba $EF69
  k_pushl
  k_callx MDISP1_F_B2CF, 2
  k_pushi 1
  k_callx $9825, 2
  k_pusha $F99C
  k_callx MDISP1_F_B098, 2
  k_pushi 1
  k_callx RF_4F2A, 2
  k_return
MDISP1_F_B65B:
  k_func 21
  k_ldli 0
  k_jump MDISP1_L_B749
MDISP1_L_B664:
  k_ldl -2
  k_ldriw MDISP1_D_BD2A
  k_add
  k_derefb
  k_ldriw $009A
  k_mul
  k_ldriw $F9B2
  k_add
  k_stl -20
  k_ldl -20
  k_addliw $0098
  k_pushl
  k_ldli 2
  k_popstore
  k_ldl -20
  k_addliw $0096
  k_deref
  k_switchn 3
    .word $0001, MDISP1_L_B690
    .word $0002, MDISP1_L_B6A4
    .word $0003, MDISP1_L_B6A8
    .word MDISP1_L_B692
MDISP1_L_B690:
  k_ldli 4
MDISP1_L_B691:
  k_stl -18
MDISP1_L_B692:
  k_ldl -2
  k_switchn 3
    .word $0000, MDISP1_L_B6AC
    .word $0001, MDISP1_L_B6B5
    .word $0002, MDISP1_L_B6B9
    .word MDISP1_L_B6AE
MDISP1_L_B6A4:
  k_ldli 6
  k_jump MDISP1_L_B691
MDISP1_L_B6A8:
  k_ldli 3
  k_jump MDISP1_L_B691
MDISP1_L_B6AC:
  k_ldli 9
MDISP1_L_B6AD:
  k_stl -10
MDISP1_L_B6AE:
  k_ldli 2
  k_stl -6
  k_ldli 14
  k_stl -8
  k_jump MDISP1_L_B6FD
MDISP1_L_B6B5:
  k_ldli 6
  k_jump MDISP1_L_B6AD
MDISP1_L_B6B9:
  k_ldli 3
  k_jump MDISP1_L_B6AD
MDISP1_L_B6BD:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_ldriw MDISP1_D_BD2D
  k_add
  k_derefb
  k_stlbf -21
  k_pushib 126
  k_pushi 0
  k_ldl -20
  k_addliw $0098
  k_deref
  k_pushl
  k_ldlbf -21
  k_popr
  k_add
  k_ldri 12
  k_mul
  k_ldr -20
  k_add
  k_pushl
  k_pushi 3
  k_pushi 2
  k_ldl -8
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_ldl -6
  k_ldri 3
  k_shl
  k_pushl
  k_ldl -20
  k_addliw $0090
  k_deref
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
  k_push -18
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -6
  k_inc
  k_stl -6
MDISP1_L_B6FD:
  k_ldl -10
  k_inc
  k_pushl
  k_ldl -6
  k_popr
  k_ult
  k_jumpt MDISP1_L_B6BD
  k_ldl -20
  k_addliw $0098
  k_pushl
  k_ldli 0
  k_popstore
  k_pushib 126
  k_pushi 0
  k_ldl -20
  k_addliw $0098
  k_deref
  k_ldri 12
  k_mul
  k_ldr -20
  k_add
  k_pushl
  k_pushi 3
  k_pushi 2
  k_ldl -8
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_ldl -6
  k_dec
  k_ldri 3
  k_shl
  k_pushl
  k_ldl -20
  k_addliw $0090
  k_deref
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldl -20
  k_addliw $0092
  k_pushl
  k_ldl -6
  k_dec
  k_popstore
  k_ldl -20
  k_addliw $0094
  k_pushl
  k_ldl -8
  k_popstore
  k_pushi 4
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
MDISP1_L_B749:
  k_stl -2
  k_ldl -2
  k_ldrarg 11
  k_ult
  k_jumpt MDISP1_L_B664
  k_return
MDISP1_F_B751:
  k_func 1
  k_ldlbf 11
  k_ldriw $EE78
  k_add
  k_derefb
  k_ldri 3
  k_and
  k_stlbf -1
  k_ldlbf -1
  k_switch 0, 4, MDISP1_L_B77B
    .word MDISP1_L_B775, MDISP1_L_B777, MDISP1_L_B779, MDISP1_L_B779
MDISP1_L_B775:
  k_ldli 2
  k_return
MDISP1_L_B777:
  k_ldli 3
  k_return
MDISP1_L_B779:
  k_ldli 1
  k_return
MDISP1_L_B77B:
  k_return
MDISP1_F_B77C:
  k_func 145
  k_ldlba $FB82
  k_stl -14
  k_ldlba $FB83
  k_stl -18
  k_pushib 126
  k_leal -140
  k_pushl
  k_pushi 9
  k_pushi 1
  k_pushib 19
  k_pushi 1
  k_pushi 2
  k_callx RF_5375, 14
  k_ldli 0
  k_stl -2
MDISP1_L_B79B:
  k_pushiw $2000
  k_leal -140
  k_pushl
  k_ldl -2
  k_shl1
  k_popr
  k_add
  k_popr
  k_pushl
  k_deref
  k_or
  k_popstore
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -2
  k_ldri 9
  k_lt
  k_jumpt MDISP1_L_B79B
  k_pushi 0
  k_pushi 6
  k_pushi 2
  k_callx RF_3EC3, 6
  k_pushib 126
  k_leal -140
  k_pushl
  k_pushi 9
  k_pushi 1
  k_pushib 19
  k_pushi 1
  k_pushi 1
  k_callx RF_532F, 14
  k_pushib 126
  k_pushiw MDISP1_D_BD30
  k_pushi 9
  k_pushi 2
  k_pushib 19
  k_pushi 0
  k_pushi 2
  k_callx RF_532F, 14
  k_pushib 96
  k_pushi 0
  k_leal -122
  k_pushl
  k_pushib 126
  k_pushib 36
  k_callx RL_21BE, 10
  k_ldli 0
  k_stl -10
  k_stl -8
  k_jump MDISP1_L_B838
MDISP1_L_B7EF:
  k_ldli 0
  k_stl -12
  k_ldl -10
  k_jump MDISP1_L_B82B
MDISP1_L_B7F5:
  k_pushi 0
  k_ldl -2
  k_shl1
  k_ldriw RD_8B64
  k_add
  k_long $26
  k_long $14
  k_pusha $F280
  k_pushib 26
  k_callx RL_21BE, 10
  k_pushi 2
  k_leal -122
  k_pushl
  k_ldl -12
  k_shl1
  k_pushl
  k_ldl -8
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_popr
  k_add
  k_pushl
  k_pushib 126
  k_pusha $F280
  k_pushib 28
  k_callx RL_21BE, 10
  k_ldl -12
  k_inc
  k_stl -12
  k_ldl -14
  k_swap
  k_ldl -2
  k_add
MDISP1_L_B82B:
  k_stl -2
  k_ldl -12
  k_ldr -18
  k_lt
  k_jumpt MDISP1_L_B7F5
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -10
  k_inc
  k_stl -10
MDISP1_L_B838:
  k_ldl -8
  k_ldr -14
  k_lt
  k_jumpt MDISP1_L_B7EF
  k_ldlib 34
  k_stl -22
  k_ldli 5
  k_stl -8
  k_ldli 0
  k_stl -2
  k_jump MDISP1_L_B86F
MDISP1_L_B848:
  k_pushib 126
  k_pushi 0
  k_leal -122
  k_pushl
  k_ldl -2
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_pushl
  k_push -18
  k_pushi 1
  k_pushiw $009F
  k_ldl -8
  k_ldri 3
  k_shl
  k_pushl
  k_push -22
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldl -2
  k_inc
  k_stl -2
  k_ldl -18
  k_swap
  k_ldl -22
  k_add
  k_stl -22
  k_ldl -8
  k_inc
  k_stl -8
MDISP1_L_B86F:
  k_ldl -2
  k_ldr -14
  k_lt
  k_jumpt MDISP1_L_B848
  k_pushi 0
  k_push -18
  k_push -14
  k_pushib 20
  k_pushi 5
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pusha $F280
  k_pushiw RD_8AF8
  k_pushi 2
  k_pushi 3
  k_pushiw $008F
  k_pushib 104
  k_pushib 82
  k_callx RF_3E5A, 14
  k_pushi 0
  k_pushi 2
  k_pushi 3
  k_pushib 18
  k_pushi 13
  k_pushi 1
  k_pushi 5
  k_callx RL_21BE, 14
  k_pushi 1
  k_pusha $F306
  k_pushi 3
  k_callx $9C39, 6
  k_ldla $F9AE
  k_jumpt MDISP1_L_B8CA
  k_ldlba $FB84
  k_ldriw $00FF
  k_ne
  k_jumpf MDISP1_L_B8CA
  k_ldlba $EF69
  k_pushl
  k_callx MDISP1_F_B751, 2
  k_stl -20
  k_push -20
  k_callx MDISP1_F_B65B, 2
  k_jump MDISP1_L_B8D2
MDISP1_L_B8CA:
  k_pushib 45
  k_pushib 16
  k_callx RL_21BE, 4
MDISP1_L_B8D2:
  k_pushi 8
  k_pushib 16
  k_callx RL_21BE, 4
  k_call $9FA9
  k_ldli 0
  k_stl -4
  k_ldli 0
  k_stl -6
  k_ldlib 104
  k_stl -8
  k_ldliw $0090
  k_stl -12
  k_jump MDISP1_L_B9AD
MDISP1_L_B8EA:
  k_pusha $F280
  k_pushiw RD_8AF8
  k_pushi 2
  k_pushi 3
  k_pushi 2
  k_callx RF_3F3E, 2
  k_ldr -12
  k_add
  k_dec
  k_pushl
  k_push -8
  k_pushib 82
  k_callx RF_3E5A, 14
  k_ldl -4
  k_ldri 3
  k_smod
  k_jumpt MDISP1_L_B98F
  k_ldla $F9AE
  k_jumpt MDISP1_L_B98F
  k_ldlba $FB84
  k_ldriw $00FF
  k_ne
  k_jumpf MDISP1_L_B98F
  k_ldl -6
  k_inc
  k_stl -6
  k_dec
  k_ldriw MDISP1_D_BD57
  k_add
  k_derefb
  k_stlbf -145
  k_ldl -6
  k_ldri 2
  k_gt
  k_jumpf MDISP1_L_B92C
  k_ldli 0
  k_stl -6
MDISP1_L_B92C:
  k_ldli 0
  k_jump MDISP1_L_B985
MDISP1_L_B930:
  k_ldl -2
  k_ldriw MDISP1_D_BD54
  k_add
  k_derefb
  k_ldriw $009A
  k_mul
  k_ldriw $F9B2
  k_add
  k_stlf -142
  k_pushib 126
  k_pushi 0
  k_ldlf -142
  k_addliw $0098
  k_deref
  k_pushl
  k_ldlbf -145
  k_popr
  k_add
  k_ldri 12
  k_mul
  k_ldrf -142
  k_add
  k_pushl
  k_pushi 3
  k_pushi 2
  k_ldlf -142
  k_addliw $0094
  k_deref
  k_ldri 3
  k_shl
  k_dec
  k_pushl
  k_ldlf -142
  k_addliw $0092
  k_deref
  k_ldri 3
  k_shl
  k_pushl
  k_ldlf -142
  k_addliw $0090
  k_deref
  k_pushl
  k_pushi 9
  k_callx RL_21BE, 18
  k_pushi 1
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -2
  k_inc
MDISP1_L_B985:
  k_stl -2
  k_ldl -2
  k_ldr -20
  k_lt
  k_jumpt MDISP1_L_B930
  k_jump MDISP1_L_B996
MDISP1_L_B98F:
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
MDISP1_L_B996:
  k_ldl -8
  k_ldri 3
  k_smod
  k_jumpt MDISP1_L_B9A7
  k_ldl -12
  k_ldriw $00B0
  k_lt
  k_jumpf MDISP1_L_B9A7
  k_ldl -12
  k_inc
  k_stl -12
MDISP1_L_B9A7:
  k_ldl -8
  k_dec
  k_stl -8
  k_ldl -4
  k_inc
  k_stl -4
MDISP1_L_B9AD:
  k_ldl -8
  k_ldrib 56
  k_gt
  k_jumpt MDISP1_L_B8EA
  k_pushi 15
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 6
  k_pushib 82
  k_pushib 58
  k_callx RL_21BE, 6
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldlib 34
  k_stl -24
  k_ldl -14
  k_addli 5
  k_ldri 3
  k_shl
  k_stln -26
  k_ldli 0
  k_stl -4
  k_jump MDISP1_L_BA6E
MDISP1_L_B9D9:
  k_pushi 3
  k_callx RF_3F3E, 2
  k_stl -20
  k_ldl -4
  k_jumpf MDISP1_L_B9E7
  k_ldl -24
  k_jump MDISP1_L_B9E9
MDISP1_L_B9E7:
  k_ldlib 34
MDISP1_L_B9E9:
  k_stl -22
  k_ldl -14
  k_ldr -4
  k_sub
  k_stl -16
  k_ldli 0
  k_stl -8
  k_jump MDISP1_L_BA24
MDISP1_L_B9F3:
  k_ldl -8
  k_ldr -4
  k_add
  k_stl -10
  k_pushib 126
  k_pushi 0
  k_leal -122
  k_pushl
  k_ldl -10
  k_ldri 12
  k_mul
  k_popr
  k_add
  k_pushl
  k_push -18
  k_pushi 1
  k_ldl -20
  k_addliw $009F
  k_pushl
  k_ldl -16
  k_ldr -8
  k_sub
  k_ldri 3
  k_shl
  k_pushl
  k_ldln -26
  k_popr
  k_sub
  k_pushl
  k_push -22
  k_pushi 9
  k_callx RL_21BE, 18
  k_ldl -8
  k_inc
  k_stl -8
  k_ldl -18
  k_swap
  k_ldl -22
  k_add
  k_stl -22
MDISP1_L_BA24:
  k_ldl -8
  k_ldr -16
  k_lt
  k_jumpt MDISP1_L_B9F3
  k_ldl -4
  k_ldri 2
  k_gt
  k_jumpf MDISP1_L_BA34
  k_ldli 3
  k_jump MDISP1_L_BA35
MDISP1_L_BA34:
  k_ldli 5
MDISP1_L_BA35:
  k_pushl
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -14
  k_ldri 3
  k_shl
  k_pushl
  k_ldln -26
  k_popr
  k_sub
  k_ldrib 16
  k_lt
  k_jumpf MDISP1_L_BA61
  k_ldln -26
  k_ldri 8
  k_smod
  k_jumpt MDISP1_L_BA61
  k_push -18
  k_push -24
  k_pushib 58
  k_callx RL_21BE, 6
  k_ldl -18
  k_swap
  k_ldl -24
  k_add
  k_stl -24
  k_ldl -4
  k_inc
  k_stl -4
MDISP1_L_BA61:
  k_ldln -26
  k_ldrib 16
  k_lt
  k_jumpt MDISP1_L_BA74
  k_ldln -26
  k_dec
  k_stln -26
MDISP1_L_BA6E:
  k_ldl -4
  k_ldr -14
  k_lt
  k_jumpt MDISP1_L_B9D9
MDISP1_L_BA74:
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_ldl -14
  k_ldr -18
  k_mul
  k_pushl
  k_pushib 34
  k_pushib 58
  k_callx RL_21BE, 6
  k_return
MDISP1_F_BA88:
  k_func 2
  k_ldlba $EF69
  k_ldrib 19
  k_mul
  k_ldriw $0FD8
  k_add
  k_stl -2
  k_pushi 0
  k_pushi 0
  k_pushi 5
  k_pushib 20
  k_pushi 11
  k_pushi 6
  k_callx RF_4F65, 12
  k_ldlarg 11
  k_jumpf MDISP1_L_BAF4
  k_pushi 12
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 0
  k_pushiw MDISP1_D_BD5A
  k_callx RF_2FB9, 4
  k_push -2
  k_callx RF_40DE, 2
  k_pushi 0
  k_pushiw MDISP1_D_BD68
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_pushiw $2000
  k_pushi 5
  k_pushib 20
  k_pushi 11
  k_pushi 6
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_call $978F
  k_call MDISP1_F_B77C
  k_pushi 2
  k_pushib 16
  k_callx RL_21BE, 4
  k_pushi 0
  k_callx $9825, 2
  k_ldliw $00FF
  k_stlba $F294
  k_stlba $F291
  k_stlba $F290
  k_return
MDISP1_L_BAF4:
  k_pushi 12
  k_pushi 8
  k_callx RF_2F8F, 4
  k_pushi 1
  k_pushiw MDISP1_D_BD6C
  k_callx RF_2FB9, 4
  k_pushi 1
  k_callx RF_3DDF, 2
  k_pushiw $2000
  k_pushi 5
  k_pushib 20
  k_pushi 11
  k_pushi 6
  k_pushi 3
  k_pushi 5
  k_callx RL_21BE, 14
  k_call $978F
  k_return
  .byte $00
MDISP1_D_BB1A:
  .byte $1B
  .byte "C2", $00
MDISP1_D_BB1E:
  .byte $1B
  .byte "C0", $00
MDISP1_D_BB22:
  .byte $02
MDISP1_D_BB23:
  .byte $06, $17, $06, $02, $0C, $10, $06, $09, $06, $18, $0E
MDISP1_D_BB2E:
  .byte $07
MDISP1_D_BB2F:
  .byte $04, $07, $05, $07, $04, $07, $04, $07, $04, $06, $06
MDISP1_D_BB3A:
  .byte $C2
  .byte "!x&X/"
  .byte $E8, $2A, $C8
  .byte "388^A"
  .byte $EE, $3C
MDISP1_D_BB4A:
  .byte $DA, $C4, $90, $C9, $70, $D2, $00, $CE, $E0, $D6, $30, $E4, $C0, $DF, $50, $DB
MDISP1_D_BB5A:
  .byte $04
MDISP1_D_BB5B:
  .byte $04, $04, $05, $06, $05, $06, $05, $07, $06, $08, $06
MDISP1_D_BB66:
  .byte $00, $00, $10, $00, $00, $04, $20, $00, $30, $00, $00, $04, $40, $00, $54, $00
  .byte $00, $04, $68, $00, $7C, $00, $00, $04, $90, $00, $AE, $00, $CC, $00, $EA, $00
  .byte $08, $01, $26, $01, $44, $01, $62, $01, $80, $01, $9E, $01, $BC, $01, $DA, $01
  .byte $00, $04, $F8, $01, $22, $02, $00, $04, $4C, $02, $76, $02, $00, $04, $A0, $02
  .byte $D0, $02, $00, $04, $00, $03, $30, $03
MDISP1_D_BBAE:
  .byte $06
MDISP1_D_BBAF:
  .byte $06, $06, $04, $06, $06, $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $06
  .byte $06, $06, $06, $07, $06, $07, $07, $04, $04, $04, $04, $04, $04, $06, $06, $06
  .byte $06, $06, $06, $06, $FF, $06, $FF, $FF, $FF, $06, $FF, $06, $FF, $07, $FF, $06
  .byte $FF, $07, $FF, $FF, $FF, $06, $FF, $07, $FF, $FF, $FF, $04, $04, $04, $06, $06
  .byte $06, $06, $06, $06, $06, $06, $06, $04, $04, $06, $04, $07, $04, $05, $05, $06
  .byte $05, $07, $05, $07, $FF, $FF, $FF, $FF, $FF
MDISP1_D_BC08:
  .byte $05
MDISP1_D_BC09:
  .byte $05, $05, $05, $05, $05, $04, $04, $04, $05, $05, $05, $05, $05, $05, $05, $05
  .byte $05, $05, $05, $06, $05, $06, $06, $04, $04, $04, $05, $05, $05, $05, $05, $05
  .byte $05, $05, $05, $05, $FF, $05, $FF, $FF, $FF, $05, $FF, $05, $FF, $06, $FF, $05
  .byte $FF, $06, $FF, $FF, $FF, $05, $FF, $06, $FF, $FF, $FF, $05, $05, $05, $05, $05
  .byte $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $06, $05, $05, $05, $05
  .byte $05, $06, $05, $06, $FF, $FF, $FF, $FF, $FF
MDISP1_D_BC62:
  .byte $74, $03
MDISP1_D_BC64:
  .byte $74, $03, $74, $03, $54, $00, $74, $03, $AE, $00, $10, $00, $10, $00, $10, $00
  .byte $54, $00, $54, $00, $54, $00, $54, $00, $54, $00, $68, $00, $AE, $00, $AE, $00
  .byte $AE, $00, $DA, $01, $DA, $01, $76, $02, $DA, $01, $76, $02, $76, $02, $00, $00
  .byte $00, $00, $00, $00, $54, $00, $54, $00, $54, $00, $EA, $00, $EA, $00, $EA, $00
  .byte $BC, $01, $BC, $01, $BC, $01, $26, $01, $00, $04, $DA, $01, $00, $04, $00, $04
  .byte $00, $04, $26, $01, $00, $04, $DA, $01, $00, $04, $76, $02, $00, $04, $DA, $01
  .byte $00, $04, $76, $02, $00, $04, $00, $04, $00, $04, $DA, $01, $00, $04, $76, $02
  .byte $00, $04, $00, $04, $00, $04, $54, $00, $54, $00, $54, $00, $AE, $00, $AE, $00
  .byte $AE, $00, $26, $01, $26, $01, $26, $01, $DA, $01, $DA, $01, $DA, $01, $60, $03
  .byte $60, $03, $DA, $01, $60, $03, $76, $02, $60, $03, $92, $03, $92, $03, $DA, $01
  .byte $92, $03, $76, $02, $92, $03, $76, $02, $00, $04, $00, $04, $00, $04, $00, $04
  .byte $00, $04
MDISP1_D_BD16:
  .byte $80, $87
MDISP1_D_BD18:
  .byte $AB, $00, $E0, $9C, $B4, $00, $60, $B3, $A6, $00, $20, $C8, $95, $00, $C0, $DA
  .byte $3C, $00
MDISP1_D_BD2A:
  .byte $02, $00, $01
MDISP1_D_BD2D:
  .byte $00
  .byte $04, $08
MDISP1_D_BD30:
  .byte $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8"
  .byte $09, "8", $09, "8", $09, "8", $09, "8", $09, "8", $09, "8"
MDISP1_D_BD54:
  .byte $02, $00
  .byte $01
MDISP1_D_BD57:
  .byte $00
  .byte $04, $08
MDISP1_D_BD5A:
  .byte "Now leaving", $0A, $0A, $00
MDISP1_D_BD68:
  .byte "...", $00
MDISP1_D_BD6C:
  .byte "The next day...", $00
