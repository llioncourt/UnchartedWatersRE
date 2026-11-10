SENFE_F_A503:
  // frame 0
  if ((byte)$F300) goto SENFE_L_A519
  t1 = SENFE_F_AE34((byte)$F16A)
  goto SENFE_L_A521
SENFE_L_A519:
  t2 = SENFE_F_BB60((byte)$F16A)
SENFE_L_A521:
  return

SENFE_F_A522:
  // frame 0
  if (!(a0 >= 16)) goto SENFE_L_A530
  return 0
SENFE_L_A530:
  if (!(((a0 - 1) % 5) <= 2)) goto SENFE_L_A53D
  goto SENFE_L_A53E
SENFE_L_A53D:
SENFE_L_A53E:
  return

SENFE_F_A53F:
  // frame 14
  if (!a0) goto SENFE_L_A54C
  goto SENFE_L_A54D
SENFE_L_A54C:
SENFE_L_A54D:
  v14 = L
  t1 = RL_8502(v14, $F41E)
  $F428 = t1
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENFE_L_A5EE
SENFE_L_A565:
  v12 = B[(B[v2] * 24) + g_cargo]
  if (!v12) goto SENFE_L_A5EB
  t2 = rand(130 - (B[(v12 * 10) + $EAC4]))
  if (!(t2 > (B[((v12 - 1) * 2) + $E970]))) goto SENFE_L_A5EB
  B[(B[v2] * 7) + $EB98] = (B[(B[v2] * 7) + $EB98]) & 191
  v6 = $E99C
  v8 = $E99C
  v10 = $E99C + 10
  goto SENFE_L_A5C0
SENFE_L_A5AF:
  if (!(B[v6] != v12)) goto SENFE_L_A5BD
  B[v8] = B[v6]
  v8 = v8 + 1
SENFE_L_A5BD:
  v6 = v6 + 1
SENFE_L_A5C0:
  if (!(v6 < v10)) goto SENFE_L_A5CF
  if (B[v6] != 255) goto SENFE_L_A5AF
SENFE_L_A5CF:
  B[v8] = 255
  t3 = rand(25)
  B[((v12 - 1) * 2) + $E971] = t3 + 4
  a2 = a2 + 1
  B[(a2 + 1) - 1] = v12
SENFE_L_A5EB:
  v2 = v2 + 1
SENFE_L_A5EE:
  if (v2 < v4) goto SENFE_L_A565
  return v2 < v4

SENFE_F_A5F5:
  // frame 6
  v4 = $F397
  v6 = $F397 + 135
  goto SENFE_L_A61B
SENFE_L_A605:
  t1 = rand(2)
  B[v4] = t1
  t2 = rand(30)
  if (t2) goto SENFE_L_A618
  B[v4] = 3
SENFE_L_A618:
  v4 = v4 + 1
SENFE_L_A61B:
  if (v4 < v6) goto SENFE_L_A605
  return v4 < v6

SENFE_F_A622:
  // frame 10
  v8 = 0
SENFE_L_A629:
  v6 = 0
SENFE_L_A62B:
  if (!(v8 == 1)) goto SENFE_L_A637
  if (v6 == 1) goto SENFE_L_A680
SENFE_L_A637:
  t1 = rand(10)
  if (t1) goto SENFE_L_A680
  t2 = rand(8)
  v10 = t2
  v4 = 0
SENFE_L_A647:
  v2 = 0
SENFE_L_A649:
  B[(((((v8 * 3) + v4) * 15) + (v6 * 5)) + v2) + $F397] = B[(((v10 * 15) + (v4 * 5)) + v2) + SENFE_D_BBDE]
  v2 = v2 + 1
  if (v2 < 5) goto SENFE_L_A649
  v4 = v4 + 1
  if (v4 < 3) goto SENFE_L_A647
SENFE_L_A680:
  v6 = v6 + 1
  if (v6 < 3) goto SENFE_L_A62B
  v8 = v8 + 1
  if (v8 < 3) goto SENFE_L_A629
  return v8 < 3

SENFE_F_A693:
  // frame 6
  v6 = $F310
  v2 = $F397
  v4 = $F397 + 135
  goto SENFE_L_A6C3
SENFE_L_A6A7:
  switch (B[v2]) [-2, 4, SENFE_L_A6BD]

SENFE_F_A6CA:
  // frame 8
  if (!((byte)g_month > 2)) goto SENFE_L_A6E7
  if (!((byte)g_month < 9)) goto SENFE_L_A6E7
  goto SENFE_L_A6EA
SENFE_L_A6E7:
SENFE_L_A6EA:
  $F30C = (L & 15) + 1
  if (!((byte)g_month > 2)) goto SENFE_L_A708
  if (!((byte)g_month < 9)) goto SENFE_L_A708
  goto SENFE_L_A70B
SENFE_L_A708:
SENFE_L_A70B:
  v8 = ((L & 15) * 5) / 7
  goto SENFE_L_A73C
SENFE_L_A716:
  if (!((v6 - v8) <= 3)) goto SENFE_L_A72D
  goto SENFE_L_A739
SENFE_L_A72D:
  if (!((v8 + 4) == v6)) goto SENFE_L_A738
  goto SENFE_L_A739
SENFE_L_A738:
SENFE_L_A739:
  B[(v6 % 6) + $F452] = L
SENFE_L_A73C:
  v6 = L
  if (v6 < (v8 + 6)) goto SENFE_L_A716
  v8 = (((B[(a0 << 4) + $E56C]) * 5) / 7) % 6
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENFE_L_A77E
SENFE_L_A761:
  if (!(B[v2] < 5)) goto SENFE_L_A771
  goto SENFE_L_A772
SENFE_L_A771:
SENFE_L_A772:
  B[(L + (B[v2] % 5)) + $F436] = v8
  v2 = v2 + 1
SENFE_L_A77E:
  if (v2 < v4) goto SENFE_L_A761
  return v2 < v4

SENFE_F_A785:
  // frame 12
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENFE_L_A7F6
SENFE_L_A796:
  t1 = rand(5)
  v10 = t1 + a0
  t2 = rand(3)
  v12 = t2 + a1
  v6 = ((v12 * 15) + v10) + $F310
  if (B[v6] == 1) goto SENFE_L_A7F6
  if (!(B[v6] == 255)) goto SENFE_L_A7D0
  t3 = rand(2)
  B[((v12 * 15) + v10) + $F397] = t3
SENFE_L_A7D0:
  B[v6] = 1
  if (!(B[v2] < 5)) goto SENFE_L_A7E3
  goto SENFE_L_A7E4
SENFE_L_A7E3:
SENFE_L_A7E4:
  v8 = L + (B[v2] % 5)
  B[v8 + $F42C] = (v12 * 15) + v10
  v2 = v2 + 1
SENFE_L_A7F6:
  if (v2 < v4) goto SENFE_L_A796
  return v2 < v4

SENFE_F_A7FD:
  // frame 8
  t1 = sys36_memset_long(126, $F310, 0, 135)
  t2 = SENFE_F_A5F5(a1)
  t3 = SENFE_F_A622()
  t4 = SENFE_F_A693()
  v2 = (a0 << 4) + g_fleets
  v4 = (a1 << 4) + g_fleets
  v6 = ((B[v2 + 2]) + 1) - (B[v4 + 2])
  v8 = ((B[v2 + 3]) + 1) - (B[v4 + 3])
  t5 = RL_8502(a0, $F41E)
  $F428 = t5
  t6 = SENFE_F_A6CA(a0)
  t7 = SENFE_F_A785(v6 * 5, v8 * 3)
  t8 = RL_8502(a1, $F41E)
  $F428 = t8
  t9 = SENFE_F_A6CA(a1)
  t10 = SENFE_F_A785(5, 3)
  return t10

SENFE_F_A875:
  // frame 18
  v2 = $F423
  v4 = $F41E
  v8 = $F42A
  v10 = $F428
  if (!((byte)$F41E < 5)) goto SENFE_L_A8A2
  v2 = $F41E
  v4 = $F423
  v8 = $F428
  v10 = $F42A
SENFE_L_A8A2:
  v6 = v2 + v8
  goto SENFE_L_A8C1
SENFE_L_A8A9:
  if (B[(B[v2] * 24) + g_cargo]) goto SENFE_L_A8BE
  $F44E = B[v2]
  goto SENFE_L_A8C7
SENFE_L_A8BE:
  v2 = v2 + 1
SENFE_L_A8C1:
  if (v2 < v6) goto SENFE_L_A8A9
SENFE_L_A8C7:
  v16 = 0
  v12 = 0
  v6 = v4 + v10
  goto SENFE_L_A8F1
SENFE_L_A8D1:
  v14 = ((B[(B[v4] * 7) + $EB98]) & 15) + 1
  if (!(v14 > v16)) goto SENFE_L_A8EB
  v16 = v14
  v18 = B[v4]
  v8 = v12
SENFE_L_A8EB:
  v12 = v12 + 1
  v4 = v4 + 1
SENFE_L_A8F1:
  if (v4 < v6) goto SENFE_L_A8D1
  $F450 = v18
  return v18

SENFE_F_A8FC:
  // frame 8
  v4 = 7
  v6 = 3
  v8 = 5
  v2 = SENFE_D_BC56
  if (!a0) goto SENFE_L_A91A
  v4 = 2
  v6 = 18
  v8 = 6
  v2 = SENFE_D_BC60
SENFE_L_A91A:
  t1 = RF_50D1(v4, v6, 23, 8, v8, 0)
  t2 = RF_2FB9(v2, 1)
  return t2

SENFE_F_A92C:
  // frame 6
  v2 = 8
  v4 = 4
  if (!a0) goto SENFE_L_A93E
  v2 = 3
  v4 = 19
SENFE_L_A93E:
  t1 = SENFE_F_A8FC(a0)
  t2 = RF_2F8F(v2, v4)
  t3 = RF_2FB9(a1, 1)
  return t3

SENFE_F_A950:
  // frame 2
  if (!a0) goto SENFE_L_A95D
  goto SENFE_L_A95E
SENFE_L_A95D:
SENFE_L_A95E:
  v2 = L
  if (!((byte)(g_king_mission+2) == 3)) goto SENFE_L_A96D
  return (byte)(g_king_mission+8) == v2
SENFE_L_A96D:
  return (byte)(g_king_mission+3) == v2

SENFE_F_A973:
  // frame 2
  if ((byte)a1) goto SENFE_L_A985
  goto SENFE_L_A989
SENFE_L_A985:
SENFE_L_A989:
  t1 = RF_2FB9(SENFE_D_BF46, 1)
  v2 = (a0 - 1) / 5
  if (!(v2 >= 2)) goto SENFE_L_A99F
  goto SENFE_L_A9A3
SENFE_L_A99F:
SENFE_L_A9A3:
  t2 = RF_2FB9(SENFE_D_BF4F, 0)
  t3 = RF_2FB9(W[(v2 * 2) + SENFE_D_BF1F], 0)
  return t3

SENFE_F_A9B5:
  // frame 2
  if (!a0) goto SENFE_L_A9C4
  goto SENFE_L_A9C5
SENFE_L_A9C4:
SENFE_L_A9C5:
  t1 = RF_4E29(2, 4, L + 20, 16)
  (byte)$F294 = 32
  if ((byte)g_princess & 8) goto SENFE_L_A9FC
  if (!((byte)g_princess & 1)) goto SENFE_L_A9FC
  if (!((byte)(g_king_mission+2) > 1)) goto SENFE_L_A9FC
  t2 = SENFE_F_A950(a0, a1)
  if (!t2) goto SENFE_L_A9FC
  (byte)g_princess = 0
  (byte)(g_king_mission+2) = 0
SENFE_L_A9FC:
  if (!((byte)g_princess & 8)) goto SENFE_L_AA1F
  if (((byte)g_princess & 2) == 2) goto SENFE_L_AA1F
  if ((byte)(g_king_mission+2) <= 1) goto SENFE_L_AA1F
  t3 = SENFE_F_A950(a0, a1)
  if (t3) goto SENFE_L_AADB
SENFE_L_AA1F:
  if (!a0) goto SENFE_L_AA86
  t4 = RF_430C()
  t5 = RF_4E29(25, 19, t4, 16)
  t6 = SENFE_F_A92C(1, SENFE_D_BF55)
  t7 = RF_472D()
  t8 = SENFE_F_A92C(0, SENFE_D_BF77)
  t9 = RF_2FB9(SENFE_D_BF78, 0)
  t10 = RF_40DE(W[((a0 + 20) * 7) + g_player_name_ptr])
  t11 = RF_3608(SENFE_D_BF7E, SENFE_D_BC6A)
  $F18A = $F18A - 1
  t12 = RF_472D()
  t13 = RF_4E29(25, 19, 0, 16)
SENFE_L_AA7E:
  t14 = SENFE_F_A92C(1, SENFE_D_BC6C)
SENFE_L_AA82:
  t15 = RF_472D()
  return t15
SENFE_L_AA86:
  t16 = RF_4E29(25, 19, 0, 16)
  t17 = SENFE_F_A522(a1)
  switch (t17) {3 cases}

SENFE_F_ABC7:
  // frame 0
  if (!((byte)$F294 == 255)) goto SENFE_L_AC02
  (byte)$F294 = 32
  goto SENFE_L_AC02
SENFE_L_ABDE:
  t1 = RF_4E29(25, 19, B[a0], 16)
  t2 = rand(3)
  t3 = SENFE_F_A92C(1, W[(t2 * 2) + SENFE_D_BFC3])
  t4 = RF_472D()
  a0 = a0 + 1
SENFE_L_AC02:
  if (B[a0] != 255) goto SENFE_L_ABDE
  return B[a0] != 255

SENFE_F_AC0C:
  // frame 0
  t1 = RF_3D7C()
  t2 = RF_3DF1(2, 0, 1, 32, 28, $05EC, g_fh_cbmap0)
  t3 = RF_3DF1(2, 1, 22, 30, 6, $1378, g_fh_cbmap0)
  t4 = RF_3DF1(1, 1, 22, 11, 6, $0CEC, g_fh_cbmap0)
  return t4

SENFE_F_AC47:
  // frame 2
  if (!(a3 < 5)) goto SENFE_L_AC60
  v2 = 0
  if (!(a3 == $F44E)) goto SENFE_L_AC6C
  goto SENFE_L_AC6B
SENFE_L_AC60:
  v2 = 2
  if (!(a3 == $F450)) goto SENFE_L_AC6C
SENFE_L_AC6B:
  v2 = L
SENFE_L_AC6C:
  t1 = $9662(a0, a1, v2, a2)
  return t1

SENFE_F_AC75:
  // frame 10
  v2 = a1 + a0
  goto SENFE_L_ACCA
SENFE_L_AC81:
  if (!(B[a1] < 5)) goto SENFE_L_AC91
  goto SENFE_L_AC92
SENFE_L_AC91:
SENFE_L_AC92:
  v6 = L + (B[a1] % 5)
  v4 = B[v6 + $F42C]
  v8 = v4 % 15
  v10 = v4 / 15
  if (!(v8 % 2)) goto SENFE_L_ACBB
  goto SENFE_L_ACBC
SENFE_L_ACBB:
SENFE_L_ACBC:
  t1 = SENFE_F_AC47((v8 * 2) + 1, L + (v10 * 2), B[v6 + $F436], B[a1])
  a1 = a1 + 1
SENFE_L_ACCA:
  if (a1 < v2) goto SENFE_L_AC81
  return a1 < v2

SENFE_F_ACD1:
  // frame 8
  t1 = SENFE_F_AC0C()
  v6 = 1
SENFE_L_ACDB:
  t2 = RF_3DF1(2, v6, 2, 2, 1, 4, g_fh_cbmap0)
  v6 = v6 + 4
  if (v6 < 30) goto SENFE_L_ACDB
  t3 = RF_3DF1(2, 1, 3, 30, 17, 8, g_fh_cbmap0)
  v6 = 3
SENFE_L_AD09:
  t4 = RF_3DF1(2, v6, 20, 2, 1, $0404, g_fh_cbmap0)
  v6 = v6 + 4
  if (v6 < 28) goto SENFE_L_AD09
  v8 = 0
  v6 = 0
  v2 = $F397
  v4 = $F397 + 135
  goto SENFE_L_AD60
SENFE_L_AD33:
  if (!(v6 % 2)) goto SENFE_L_AD43
  goto SENFE_L_AD44
SENFE_L_AD43:
SENFE_L_AD44:
  t5 = $9682((v6 * 2) + 1, L + (v8 * 2), B[v2])
  v6 = v6 + 1
  if (!(v6 > 14)) goto SENFE_L_AD5D
  v6 = 0
  v8 = v8 + 1
SENFE_L_AD5D:
  v2 = v2 + 1
SENFE_L_AD60:
  if (v2 < v4) goto SENFE_L_AD33
  t6 = $96B7(1)
  t7 = SENFE_F_AC75($F428, $F41E)
  t8 = SENFE_F_AC75($F42A, $F423)
  return t8

SENFE_F_AD80:
  // frame 2
  if (!a0) goto SENFE_L_AD8B
  v2 = a0
SENFE_L_AD8B:
  if (!a1) goto SENFE_L_AD91
  v2 = a1
SENFE_L_AD91:
  t1 = RF_2F8F(2, 12)
  t2 = RF_2FB9(SENFE_D_C02D, 0)
  t3 = RF_40DE(W[((v2 + 20) * 7) + g_player_name_ptr])
  t4 = RF_2FB9(SENFE_D_C038, 0)
  t5 = SENFE_F_A973(v2, 0)
  t6 = RF_2FB9(SENFE_D_C03A, 0)
  t7 = sys76_lz_decompress(0, $8000, 23)
  t8 = sys11_vram_load_tiles(160, 4, 256, 127, 1)
  t9 = RF_3DF1(1, 15, 14, 2, 2, RD_8C54, g_fh_cbmap0)
  t10 = RF_2F8F(8, 17)
  t11 = RF_2FB9(SENFE_D_C03C, 0)
  t12 = RL_8875(((byte)g_title * 2) + $1C56)
  t13 = RF_40DE(t12)
  if (!(byte)g_title) goto SENFE_L_AE1C
  goto SENFE_L_AE20
SENFE_L_AE1C:
SENFE_L_AE20:
  t14 = RF_2FB9(SENFE_D_C040, 0)
  t15 = RF_40DE(g_player_name_ptr)
  t16 = RF_2FB9(SENFE_D_C049, 0)
  return t16

SENFE_F_AE34:
  // frame 5
  t1 = sys36_memset_long(126, &v5, 255, 5)
  $F572 = 0
  $F302 = 0
  t2 = RF_3D7C()
  t3 = RF_21EA(16, 1)
  t4 = SENFE_F_A53F(a0, (byte)$F197, &v5)
  t5 = SENFE_F_A7FD(a0, (byte)$F197)
  t6 = RL_8502(a0, $F41E)
  $F428 = t6
  t7 = RL_8502((byte)$F197, $F423)
  $F42A = t7
  t8 = SENFE_F_A875()
  t9 = RF_3EC3(16, 7, 0)
  t10 = SENFE_F_AD80(a0, (byte)$F197)
  t11 = RF_4F2A(1)
  t12 = SENFE_F_A9B5(a0, (byte)$F197)
  t13 = SENFE_F_ABC7(&v5)
  t14 = RL_8502(a0, $F41E)
  $F428 = t14
  t15 = RL_8502((byte)$F197, $F423)
  $F42A = t15
  t16 = RF_4F48(1)
  t17 = RF_3D7C()
  t18 = RF_4DD8()
  t19 = RF_3E7E(2, 0)
  t20 = RF_3E7E(2, 1)
  t21 = sys11_vram_load_tiles(119, 821, $8000, 28, 2)
  t22 = sys13_vram_load_obj_tiles(256, 114, $E6A0, 28)
  t23 = SENFE_F_ACD1()
  t24 = $9A47()
  $F574 = (byte)$F436
  t25 = sys37_brightness_set(15)
  return t25

SENFE_F_AF17:
  // frame 0
  if (!((byte)$F294 == 32)) goto SENFE_L_AF2B
  (byte)$F294 = 255
SENFE_L_AF2B:
  t1 = RF_4F48(1)
  t2 = RF_4DD8()
  t3 = RF_3D7C()
  t4 = RF_3E7E(2, 0)
  t5 = RF_3EC3(22, 0, 1)
  return t5

SENFE_F_AF45:
  // frame 0
  t1 = RF_430C()
  t2 = RF_4E29(2, 4, t1, 16)
  t3 = SENFE_F_A92C(0, SENFE_D_C092)
  t4 = RF_4F2A(1)
  t5 = RF_472D()
  t6 = RF_4E29(2, 4, a1 + 20, 16)
  t7 = SENFE_F_A92C(0, SENFE_D_C094)
  t8 = RF_472D()
  return t8

SENFE_F_AF7E:
  // frame 2
  t1 = RF_4E29(2, 4, a1 + 20, 16)
  t2 = SENFE_F_A522(a1)
  v2 = t2
  t3 = SENFE_F_A92C(0, W[(v2 * 2) + SENFE_D_C04C])
  if (!(v2 == 2)) goto SENFE_L_AFC2
  if (!(((a1 - 1) / 5) == 2)) goto SENFE_L_AFB7
  goto SENFE_L_AFBA
SENFE_L_AFB7:
SENFE_L_AFBA:
  t4 = RF_3619(SENFE_D_C3B7, L)
SENFE_L_AFC2:
  t5 = RF_4F2A(1)
  t6 = RF_472D()
  t7 = RF_28CC(6)
  t8 = RF_2FB9(SENFE_D_C29C, 0)
  t9 = RF_40DE(g_player_name_ptr)
  t10 = RF_2FB9(SENFE_D_C29E, 0)
  t11 = RF_3DDF(8)
  t12 = SENFE_F_AF17()
  return t12

SENFE_F_AFEF:
  // frame 12
  v12 = 1
  v4 = g_player_name_ptr
  t1 = RF_4E29(25, 19, 0, 16)
  t2 = SENFE_F_A92C(1, SENFE_D_C096)
  t3 = RF_4F2A(1)
  t4 = RF_472D()
  (byte)$F294 = 32
  t5 = RF_430C()
  t6 = RF_4E29(2, 4, t5, 16)
  t7 = SENFE_F_A92C(0, SENFE_D_C098)
  t8 = RF_472D()
  t9 = RL_8502(a0, $F41E)
  $F428 = t9
  v8 = $F41E
  v10 = $F41E + $F428
  goto SENFE_L_B0EE
SENFE_L_B048:
  v2 = (B[v8] * 24) + g_cargo
  if (!B[v2]) goto SENFE_L_B0EB
  t10 = rand(5)
  t11 = RL_8962(B[v2 + 22], t10 + 5)
  B[v2 + 22] = (B[v2 + 22]) - t11
  v4 = (B[v2] * 7) + g_player_name_ptr
  t12 = rand(40)
  if (!(t12 > (((B[v4 + 2]) + (B[v4 + 3])) + 20))) goto SENFE_L_B0A7
  B[v4 + 6] = (B[v4 + 6]) & 254
  W[(B[v8] * 7) + $EB96] = 0
  v12 = 0
SENFE_L_B0A7:
  v6 = ((B[v2] - 1) * 2) + $E970
  t13 = rand(70)
  if (!(t13 > B[v6])) goto SENFE_L_B0D6
  t14 = rand(20)
  B[v6 + 1] = t14 + 14
  W[(B[v8] * 7) + $EB96] = 0
  v12 = 0
SENFE_L_B0D6:
  t15 = rand(5)
  t16 = RL_8962(B[v6], t15 + 5)
  B[v6] = B[v6] - t16
SENFE_L_B0EB:
  v8 = v8 + 1
SENFE_L_B0EE:
  if (v8 < v10) goto SENFE_L_B048
  if (!v12) goto SENFE_L_B0FE
  goto SENFE_L_B101
SENFE_L_B0FE:
SENFE_L_B101:
  t17 = SENFE_F_A92C(0, SENFE_D_C3F9)
  t18 = RF_472D()
  t19 = SENFE_F_AF17()
  t20 = RF_28CC(4)
  t21 = RF_2FB9(SENFE_D_C439, 0)
  t22 = RF_40DE(g_player_name_ptr)
  t23 = RF_2FB9(SENFE_D_C2A4, 0)
  t24 = RF_3DDF(8)
  t25 = SENFE_F_AF17()
  return t25

treasure_fleet_set:
  // frame 0
  if (!((byte)(g_king_mission+2) == 3)) goto SENFE_L_B144
  return (byte)(g_king_mission+8) == a0
SENFE_L_B144:
  return (byte)(g_king_mission+3) == a0

SENFE_F_B14A:
  // frame 6
  t1 = RF_4E29(2, 4, a1 + 20, 16)
  t2 = SENFE_F_A522(a1)
  v4 = t2
  t3 = SENFE_F_A92C(0, W[(v4 * 2) + SENFE_D_C08C])
  if (!(v4 == 1)) goto SENFE_L_B1AB
  t4 = RF_2FB9(SENFE_D_C45E, 0)
  v6 = (a1 - 1) / 5
  if (!(v6 < 3)) goto SENFE_L_B1A4
  t5 = RF_2FB9(SENFE_D_C478, 0)
  t6 = RF_2FB9(W[(v6 * 2) + SENFE_D_C43B], 0)
  t7 = RF_2FB9(SENFE_D_C484, 0)
SENFE_L_B1A4:
  $F18A = $F18A - 1
SENFE_L_B1AB:
  t8 = RF_4F2A(1)
  t9 = RF_472D()
  t10 = RF_28CC(3)
  t11 = RF_2FB9(SENFE_D_C2A0, 0)
  t12 = RF_40DE(g_player_name_ptr)
  t13 = RF_2FB9(SENFE_D_C2A2, 0)
  t14 = RF_3DDF(8)
  t15 = SENFE_F_AF17()
  if (!(((byte)g_princess & 10) == 8)) goto SENFE_L_B32A
  t16 = treasure_fleet_set(a1)
  if (!t16) goto SENFE_L_B32A
  v2 = g_player_name_ptr
  if (!((byte)(g_king_mission+2) == 2)) goto SENFE_L_B219
  t17 = RF_4E29(25, 19, 0, 16)
  t18 = SENFE_F_A92C(1, SENFE_D_C09A)
  (byte)g_princess = (byte)g_princess | 2
  t19 = RF_4F2A(1)
  t20 = RF_472D()
SENFE_L_B219:
  if (!((byte)(g_king_mission+2) == 3)) goto SENFE_L_B245
  t21 = RF_4E29(25, 19, 0, 16)
  t22 = SENFE_F_A92C(1, SENFE_D_C486)
  (byte)g_princess = (byte)g_princess | 2
  t23 = RF_4F2A(1)
  t24 = RF_472D()
SENFE_L_B245:
  if (!((byte)(g_king_mission+2) == 4)) goto SENFE_L_B338
  t25 = RF_4E29(25, 19, 0, 16)
  t26 = SENFE_F_A92C(1, SENFE_D_C09C)
  t27 = RF_4F2A(1)
  t28 = RF_472D()
  (byte)$F294 = 32
  t29 = RF_430C()
  t30 = RF_4E29(2, 4, t29, 16)
  t31 = SENFE_F_A92C(0, SENFE_D_C09E)
  t32 = RF_472D()
  t33 = SENFE_F_AF17()
  t34 = RF_28CC(1)
  t35 = RF_2FB9(SENFE_D_C2A8, 0)
  t36 = RF_40DE(g_player_name_ptr)
  t37 = RF_2FB9(SENFE_D_C2AA, 0)
  t38 = RF_3DDF(8)
  t39 = SENFE_F_AF17()
  t40 = RF_4E29(2, 4, 12, 17)
  t41 = SENFE_F_A92C(0, SENFE_D_C4A6)
  t42 = RF_2FB9(SENFE_D_C4A7, 0)
  t43 = RF_40DE(g_player_name_ptr)
  $F18A = $F18A - 1
  t44 = RF_2FB9(SENFE_D_C0A0, 1)
  t45 = RF_4F2A(1)
  t46 = RF_472D()
  v2 = g_player_name_ptr
  (byte)$F294 = 32
  t47 = RF_4E29(25, 19, 0, 16)
  t48 = SENFE_F_A92C(1, SENFE_D_C0A2)
  t49 = RF_472D()
  (byte)$F294 = 255
  t50 = RF_430C()
  t51 = RF_4E29(2, 4, t50, 16)
  t52 = SENFE_F_A92C(0, SENFE_D_C0A4)
  t53 = RF_472D()
  (byte)g_princess = (byte)g_princess | 2
  goto SENFE_L_B338
SENFE_L_B32A:
  W[(a1 << 4) + $E571] = (W[(a1 << 4) + $E571]) & 127
SENFE_L_B338:
  B[((a1 + 20) * 7) + $E44A] = (B[((a1 + 20) * 7) + $E44A]) & 254
  B[(a1 << 4) + $E573] = (B[(a1 << 4) + $E573]) | 8
  t54 = sys37_brightness_set(15)
  return t54

SENFE_F_B35E:
  // frame 2
  v2 = (byte)$EF6A
  (byte)$EF6A = 0
  t1 = RF_2FB9(SENFE_D_C4A9, 0)
  t2 = RF_4AC6()
  t3 = RF_2FB9(SENFE_D_C4AE, 0)
  t4 = RF_4AF7()
  t5 = RF_2FB9(SENFE_D_C4B0, 0)
  t6 = RF_4A99()
  t7 = RF_2FB9(SENFE_D_C4B3, 0)
  t8 = RF_40DE(g_player_name_ptr)
  t9 = RF_2FB9(SENFE_D_C4BF, 0)
  (byte)$EF6A = v2
  return v2

SENFE_F_B3A8:
  // frame 0
  t1 = RF_28CC(5)
  t2 = SENFE_F_B35E()
  t3 = RF_2FB9(SENFE_D_C4C2, 0)
  return t3

SENFE_F_B3BE:
  // frame 26
  t1 = sys36_memset_long(126, $F576, 0, 58)
  t2 = RL_8502(a0, $F41E)
  $F428 = t2
  v12 = $F41E
  v14 = $F41E + $F428
  goto SENFE_L_B4F0
SENFE_L_B3E8:
  v2 = (B[v12] * 7) + g_ships
  v26 = B[(B[v12] * 24) + g_cargo]
  if (!v26) goto SENFE_L_B435
  t3 = rand(60)
  if (!((B[(v26 * 10) + $EAC4]) < t3)) goto SENFE_L_B435
  v8 = ((v26 - 1) * 2) + $E970
  t4 = rand(5)
  t5 = RL_8962(B[v8], t4 + 8)
  B[v8] = B[v8] - t5
SENFE_L_B435:
  if (!(W[v2 + 4])) goto SENFE_L_B440
  if (B[v2]) goto SENFE_L_B4ED
SENFE_L_B440:
  v4 = (B[v12] * 24) + g_cargo
  $F5AA = $F5AA + ((W[v4 + 16]) / 10)
  $F5AC = $F5AC + ((W[v4 + 18]) / 10)
  $F5AE = $F5AE + (W[v4 + 20])
  v10 = v4 + 6
  v16 = v4 + 1
  v22 = 0
SENFE_L_B47A:
  if (!(W[(v22 * 2) + v10])) goto SENFE_L_B496
  W[((B[v16 + v22]) * 2) + $F576] = (W[((B[v16 + v22]) * 2) + $F576]) + (W[(v22 * 2) + v10])
SENFE_L_B496:
  v22 = v22 + 1
  if (v22 < 5) goto SENFE_L_B47A
  v18 = $E99C
  v20 = $E99C
  goto SENFE_L_B4BE
SENFE_L_B4A8:
  if (!(B[v18] != B[v4])) goto SENFE_L_B4B9
  B[v20] = B[v18]
  v20 = v20 + 1
SENFE_L_B4B9:
  v18 = v18 + 1
SENFE_L_B4BE:
  v22 = L
  if (!(v22 < 10)) goto SENFE_L_B4CE
  if (B[v18] != 255) goto SENFE_L_B4A8
SENFE_L_B4CE:
  B[v20] = 255
  B[(B[v4] * 7) + $E44A] = (B[(B[v4] * 7) + $E44A]) & 254
  B[v2 + 6] = (B[v2 + 6]) & 191
SENFE_L_B4ED:
  v12 = v12 + 1
SENFE_L_B4F0:
  if (v12 < v14) goto SENFE_L_B3E8
  t6 = RL_8502(a1, $F423)
  $F42A = t6
  v24 = 0
  v12 = $F423
  v14 = $F423 + $F42A
  goto SENFE_L_B588
SENFE_L_B50F:
  v2 = (B[v12] * 7) + g_ships
  if (!B[v2]) goto SENFE_L_B544
  if (!(W[v2 + 4])) goto SENFE_L_B544
  if ((byte)$F300 == 4) goto SENFE_L_B544
  if (!((byte)$F300 == 2)) goto SENFE_L_B585
  t7 = rand(3)
  if (t7) goto SENFE_L_B585
  if (!(B[v12] != $F450)) goto SENFE_L_B585
SENFE_L_B544:
  if (!B[v2]) goto SENFE_L_B557
  if (!(W[v2 + 4])) goto SENFE_L_B557
  if (!((byte)$F300 == 4)) goto SENFE_L_B57B
SENFE_L_B557:
  v6 = ((B[v12] - 5) * 3) + $E302
  if (!(W[v6 + 1])) goto SENFE_L_B578
  W[(B[v6] * 2) + $F576] = (W[(B[v6] * 2) + $F576]) + (W[v6 + 1])
SENFE_L_B578:
  v24 = v24 + 1
SENFE_L_B57B:
  B[v2 + 6] = (B[v2 + 6]) & 191
SENFE_L_B585:
  v12 = v12 + 1
SENFE_L_B588:
  if (v12 < v14) goto SENFE_L_B50F
  t8 = rand(50)
  $F5AA = $F5AA + ((t8 + 30) * v24)
  t9 = rand(50)
  $F5AC = $F5AC + ((t9 + 30) * v24)
  t10 = rand(3)
  $F5AE = $F5AE + ((t10 + 1) * v24)
  return $F5AE + ((t10 + 1) * v24)

SENFE_F_B5C3:
  // frame 6
  v2 = 0
SENFE_L_B5CA:
  v4 = v2
  if (!((a0 + v2) >= 15)) goto SENFE_L_B5EC
  if (!(W[a1] >= $2EE0)) goto SENFE_L_B60A
  v2 = v2 + 1
  W[a1] = W[a1] - $2EE0
  goto SENFE_L_B60A
SENFE_L_B5EC:
  v6 = ((a0 + v2) * (a0 + v2)) * 50
  if (!(W[a1] > v6)) goto SENFE_L_B60A
  W[a1] = W[a1] - v6
  v2 = v2 + 1
SENFE_L_B60A:
  if (v4 != v2) goto SENFE_L_B5CA
  if (!((a0 + v2) > 50)) goto SENFE_L_B61E
  v2 = 50 - a0
SENFE_L_B61E:
  return v2

SENFE_F_B620:
  // frame 10
  v10 = g_player_items
  v6 = (a0 << 4) + g_player_items
  v2 = 0
  v4 = 0
  goto SENFE_L_B66B
SENFE_L_B637:
  if (!((W[((v2 >> 4) * 2) + v6]) & (1 << (v2 & 15)))) goto SENFE_L_B668
  if ((W[((v2 >> 4) * 2) + v10]) & (1 << (v2 & 15))) goto SENFE_L_B668
  B[a1] = v2
  a1 = a1 + 1
  v4 = v4 + 1
SENFE_L_B668:
  v2 = v2 + 1
SENFE_L_B66B:
  if (v2 < 32) goto SENFE_L_B637
  return v4

SENFE_F_B674:
  // frame 2
SENFE_L_B679:
  t1 = RF_362A(0)
  v2 = t1
  if (!(v2 == 128)) goto SENFE_L_B6AD
  t2 = sys5_tilemap_write(3, 8, (a0 * 2) + 13, 10, 14 - (a0 * 2), $2000)
  t3 = sys5_tilemap_write(3, 19, 13, 10, 14, $2000)
  return 1
SENFE_L_B6AD:
  if (!(v2 == $8000)) goto SENFE_L_B679
  t4 = SENFE_F_AF17()
  return 0

SENFE_F_B6BA:
  // frame 18
  t1 = RF_3E7E(2, 0)
  t2 = RF_3EC3(22, 0, 1)
  t3 = RF_3EC3(15, 3, 0)
  t4 = RF_3DF1(2, 0, 0, 32, 30, RD_8D74, g_fh_cbmap0)
  t5 = RF_430C()
  t6 = RF_4E29(2, 4, t5, 16)
  t7 = SENFE_F_A92C(0, SENFE_D_C4EB)
  t8 = sys37_brightness_set(15)
  t9 = RF_4F65(2, 12, 28, 16, 1, 0)
  t10 = RF_2FB9(SENFE_D_C502, 1)
  v6 = 3
  v8 = 13
  v14 = 0
  v16 = 0
  t11 = RF_2F8F(v6 + 1, v8)
  if (!a0) goto SENFE_L_B731
  t12 = RF_3619(SENFE_D_C509, a0)
  v16 = 1
SENFE_L_B731:
  if (!a1) goto SENFE_L_B805
  t13 = RF_2F8F(v6 + 1, (v16 * 2) + v8)
  t14 = RF_2FB9(SENFE_D_C512, 1)
  v6 = v6 + 11
  if (a1 > 7) goto SENFE_L_B762
  if (!a0) goto SENFE_L_B75E
  if (a1 > 6) goto SENFE_L_B762
SENFE_L_B75E:
  goto SENFE_L_B763
SENFE_L_B762:
SENFE_L_B763:
  v18 = L
  if (!v18) goto SENFE_L_B776
  t15 = RF_2F8F(8, 6)
  t16 = RF_2FB9(SENFE_D_C51C, 1)
SENFE_L_B776:
  v2 = a2
  v4 = a2 + a1
  goto SENFE_L_B7CD
SENFE_L_B77E:
  v10 = (v14 * 11) + v6
  v12 = (v16 * 2) + v8
  t17 = RF_2F8F(v10, v12 + 1)
  t18 = RF_2FB9(SENFE_D_C532, 1)
  t19 = RF_40C3(B[v2])
  t20 = RF_40DE(t19)
  v16 = v16 + 1
  if (!(v16 > 6)) goto SENFE_L_B7CA
  v16 = 0
  v14 = v14 + 1
  if (!(v14 > 1)) goto SENFE_L_B7CA
  if (!a0) goto SENFE_L_B7BF
  v16 = 1
SENFE_L_B7BF:
  t21 = SENFE_F_B674(v16)
  if (t21) goto SENFE_L_B7C8
  return t21
SENFE_L_B7C8:
  v14 = 0
SENFE_L_B7CA:
  v2 = v2 + 1
SENFE_L_B7CD:
  if (v2 < v4) goto SENFE_L_B77E
  if (v18) goto SENFE_L_B7EC
  t22 = RF_2F8F(8, 4)
  t23 = RF_2FB9(SENFE_D_C4EB, 1)
  t24 = RF_472D()
  t25 = SENFE_F_AF17()
  return t25
SENFE_L_B7EC:
  v16 = 0
  v14 = 0
  if (!a0) goto SENFE_L_B7F5
  v16 = 1
SENFE_L_B7F5:
  t26 = SENFE_F_B674(v16)
  if (t26) goto SENFE_L_B7FE
  return t26
SENFE_L_B7FE:
  if (1) goto SENFE_L_B776
  goto SENFE_L_B819
SENFE_L_B805:
  t27 = RF_2F8F(8, 4)
  t28 = RF_2FB9(SENFE_D_C4EB, 1)
  t29 = RF_472D()
  t30 = SENFE_F_AF17()
SENFE_L_B819:
  return

SENFE_F_B81A:
  // frame 58
  v58 = 1
  t1 = SENFE_F_AF17()
  t2 = sys37_brightness_set(15)
  t3 = SENFE_F_B3BE(a0, a1)
  t4 = RL_8502(a0, $F41E)
  $F428 = t4
  v6 = $F41E
  v8 = $F41E + $F428
  goto SENFE_L_B93C
SENFE_L_B849:
  v18 = B[(B[v6] * 24) + g_cargo]
  v10 = (v18 * 7) + g_player_name_ptr
  if (!((B[v10 + 2]) < 50)) goto SENFE_L_B92F
  v12 = (v18 * 10) + $EAC0
  t5 = SENFE_F_B5C3(B[v10 + 2], v12 + 6)
  v14 = t5
  if (!v14) goto SENFE_L_B939
  t6 = rand((v14 * 2) * 2)
  t7 = RL_8962(t6 + (B[v12 + 4]), 100)
  B[v12 + 4] = t7
  t8 = rand((v14 * 2) * 2)
  t9 = RL_8962(t8 + (B[v12 + 5]), 100)
  B[v12 + 5] = t9
  if (!v58) goto SENFE_L_B8D6
  t10 = RF_430C()
  t11 = RF_4E29(2, 4, t10, 16)
  t12 = SENFE_F_A92C(0, SENFE_D_C53A)
  t13 = RF_2FB9(SENFE_D_C53B, 0)
  v58 = 0
  goto SENFE_L_B901
SENFE_L_B8D6:
  t14 = RF_604A(3, 8, 4, 21, 6, $2000)
  t15 = RF_2FB9(SENFE_D_C53D, 1)
  t16 = RF_2F8F(8, 4)
  t17 = SENFE_F_A92C(0, SENFE_D_C547)
  t18 = RF_2FB9(SENFE_D_C548, 0)
SENFE_L_B901:
  if (!v18) goto SENFE_L_B913
  t19 = RF_40DE(W[v10])
  goto SENFE_L_B917
SENFE_L_B913:
SENFE_L_B917:
  t20 = RF_2FB9(SENFE_D_C54F, 0)
  t21 = RF_2FB9(SENFE_D_C55F, 0)
  B[v10 + 2] = (B[v10 + 2]) + v14
  goto SENFE_L_B939
SENFE_L_B92F:
  W[(v18 * 10) + $EAC6] = 0
SENFE_L_B939:
  v6 = v6 + 1
SENFE_L_B93C:
  if (v6 < v8) goto SENFE_L_B849
  t22 = SENFE_F_AF17()
  if ((byte)$F300 == 2) goto SENFE_L_B955
  if (!((byte)$F300 == 4)) goto SENFE_L_BAC8
SENFE_L_B955:
  t23 = RF_28CC(3)
  t24 = SENFE_F_B35E()
  t25 = RF_2FB9(SENFE_D_C57D, 0)
  t26 = RF_3DDF(8)
  v16 = (a1 - 1) / 5
  t27 = rand(5)
  t28 = RL_8962((t27 + (B[((v16 * 2) * 2) + $EEC0])) + 10, 100)
  B[((v16 * 2) * 2) + $EEC0] = t28
  if (!v16) goto SENFE_L_B9B8
  v14 = B[v16 + SENFE_D_C536]
  t29 = rand(10)
  t30 = RL_8962(B[v14 + g_relations], t29 + 10)
  B[v14 + g_relations] = (B[v14 + g_relations]) - t30
SENFE_L_B9B8:
  if (!((byte)$F300 == 4)) goto SENFE_L_BA4B
  v2 = (a0 << 4) + g_fleets
  v4 = (a1 << 4) + g_fleets
  t31 = RL_8962(W[v4 + 9], $EA60 - (W[v2 + 9]))
  v56 = t31
  t32 = SENFE_F_B620(a1, &v50)
  v14 = t32
  W[v2 + 9] = (W[v2 + 9]) + v56
  W[v2 + 13] = (W[v2 + 13]) | (W[v4 + 13])
  W[v2 + 11] = (W[v2 + 11]) | (W[v4 + 11])
  if (v56) goto SENFE_L_BA16
  if (!v14) goto SENFE_L_BA3C
SENFE_L_BA16:
  t33 = SENFE_F_AF17()
  t34 = sys37_brightness_set(15)
  t35 = SENFE_F_B6BA(v56, v14, &v50)
  t36 = sys48_color_math(0, 0, 224)
  t37 = sys39_window_off()
SENFE_L_BA3C:
  W[v4 + 9] = 0
  W[v4 + 13] = 0
  W[v4 + 11] = 0
SENFE_L_BA4B:
  v52 = $F576
  v54 = $F576 + 58
  goto SENFE_L_BAC0
SENFE_L_BA57:
  if (!W[v52]) goto SENFE_L_BABB
  t38 = RL_8502(a0, $F41E)
  $F428 = t38
  t39 = SENFE_F_AF17()
  t40 = RF_2FB9(SENFE_D_C599, 1)
  t41 = RF_3E7E(2, 0)
  t42 = RF_3EC3(22, 0, 1)
  t43 = RF_3EC3(15, 3, 0)
  t44 = RF_3DF1(2, 0, 0, 32, 30, RD_8D74, g_fh_cbmap0)
  t45 = sys37_brightness_set(15)
  t46 = RF_7B51($F576)
  t47 = sys48_color_math(0, 0, 224)
  t48 = sys39_window_off()
  goto SENFE_L_BAC8
SENFE_L_BABB:
  v52 = v52 + 2
SENFE_L_BAC0:
  if (v52 < v54) goto SENFE_L_BA57
SENFE_L_BAC8:
  return

SENFE_F_BAC9:
  // frame 4
  v2 = a0
  v4 = a1
  if (!a0) goto SENFE_L_BADA
  v2 = a1
  v4 = a0
SENFE_L_BADA:
  switch ((byte)$F300) [-1, 5, SENFE_L_BAF4]

SENFE_F_BB60:
  // frame 0
  t1 = $96B7(0)
  t2 = SENFE_F_AF17()
  if (!((byte)$F300 == 5)) goto SENFE_L_BB7A
  goto SENFE_L_BB92
SENFE_L_BB7A:
  if (!((byte)$F300 > 1)) goto SENFE_L_BB96
  if (!((byte)$F300 & 1)) goto SENFE_L_BB8F
  goto SENFE_L_BB92
SENFE_L_BB8F:
SENFE_L_BB92:
  t3 = RF_21EA(21, 1)
SENFE_L_BB96:
  t4 = SENFE_F_BAC9(a0, (byte)$F197)
  if (!t4) goto SENFE_L_BBD8
  (byte)$EF6A = 255
  (byte)$F167 = 255
  (byte)$F168 = 255
  (byte)$F164 = 255
  if (!a0) goto SENFE_L_BBC2
  goto SENFE_L_BBC5
SENFE_L_BBC2:
SENFE_L_BBC5:
  t5 = RF_46C6(L)
  t6 = SENFE_F_AF17()
  t7 = RF_2FB9(SENFE_D_C5A0, 1)
  goto SENFE_L_BBDC
SENFE_L_BBD8:
  (byte)g_ending = 4
SENFE_L_BBDC:
  return 1
SENFE_D_BBDE:

