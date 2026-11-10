KOUEKI_F_B003:
  // frame 0
  t1 = KOUEKI_F_C52B()
  $F9A6 = t1
  return t1

KOUEKI_F_B00F:
  // frame 6
  v6 = (a0 * 24) + g_cargo
  v2 = 0
  goto KOUEKI_L_B02F
KOUEKI_L_B023:
  v2 = v2 + (W[((v4 * 2) + v6) + 6])
KOUEKI_L_B02F:
  v4 = L
  if (v4 < 5) goto KOUEKI_L_B023
  return v2

KOUEKI_F_B038:
  // frame 2
  v2 = (a0 * 24) + g_cargo
  t1 = KOUEKI_F_B00F(a0)
  return ((t1 + ((W[v2 + 16]) / 10)) + ((W[v2 + 18]) / 10)) + (W[v2 + 20])

KOUEKI_F_B065:
  // frame 0
  t1 = RF_2FB9(KOUEKI_D_C57A, 1)
  t2 = RF_2F8F(18, (a0 * 2) + 7)
  t3 = RF_40A5(a1)
  t4 = RL_8898(t3 + 18)
  t5 = RF_4565(a1)
  t6 = RF_3619(KOUEKI_D_C57E, t5, t4)
  t7 = RF_2F8F(8, 17)
  t8 = RF_3619(KOUEKI_D_C586, g_player_gold)
  return t8

KOUEKI_F_B0A8:
  // frame 12
  $EF66 = -1
  t1 = RF_604A(3, 6, 4, 20, 15, $2000)
  if (a2) goto KOUEKI_L_B0CF
  t2 = RF_4F65(5, 3, 22, 17, 0, 0)
KOUEKI_L_B0CF:
  t3 = $960C(3, 6, 6, 20, 1, $20F9)
  t4 = RF_2F8F(7, 4)
  t5 = RF_2FB9(KOUEKI_D_C596, 1)
  goto KOUEKI_L_B12D
KOUEKI_L_B0EE:
  t6 = KOUEKI_F_B065(v12, B[a1 + v12])
  t7 = RF_40A5((B[((B[a1 + v12]) * 7) + $EB98]) & 15)
  W[(v12 * 2) + (&v10)] = t7
  t8 = RF_2F8F(7, (v12 * 2) + 8)
  t9 = RF_40DE(W[(v12 * 2) + (&v10)])
KOUEKI_L_B12D:
  v12 = L
  if (v12 < a0) goto KOUEKI_L_B0EE
  return v12 < a0

KOUEKI_F_B135:
  // frame 29
  v2 = 0
  t1 = RF_604A(3, 6, 7, 20, 10, $2000)
  v27 = ((byte)g_port * 14) + g_ports
  v11 = (B[(((byte)g_port * 14) + g_ports) + 11]) + 50
  v23 = (a0 * 24) + g_cargo
  v15 = ((a0 * 24) + g_cargo) + 6
  v8 = v23 + 1
  v6 = 0
  goto KOUEKI_L_B28B
KOUEKI_L_B170:
  if (!W[v15]) goto KOUEKI_L_B281
  if (v2) goto KOUEKI_L_B1B6
  v25 = ((byte)g_port * 5) + $150A
  t2 = RL_884E(v25 + 1)
  (byte)v9 = t2
  t3 = RL_884E(v25 + 2)
  v17 = t3
  t4 = RL_884E(v25)
  v29 = (t4 * 88) + $1864
  v19 = W[v27]
  v21 = W[v27 + 12]
  v2 = 1
KOUEKI_L_B1B6:
  t5 = RF_2FB9(KOUEKI_D_C696, 1)
  t6 = RF_2F8F(7, (v6 * 2) + 7)
  t7 = RL_8898(((B[v8] * 2) + v29) + 36)
  v13 = t7
  v13 = (v13 * v11) / 100
  if (!((byte)v9 == B[v8])) goto KOUEKI_L_B223
  if (!((v17 * 50) <= v19)) goto KOUEKI_L_B223
  v13 = (((v21 * v11) / 100) / 2) + 1
KOUEKI_L_B223:
  W[(v6 * 2) + a2] = v13
  W[(v6 * 2) + a3] = W[v15]
  W[(v6 * 2) + a1] = W[(B[v8] * 2) + KOUEKI_D_C5AC]
  B[a4 + v6] = v4
  t8 = RF_3619(KOUEKI_D_C69A, W[(v6 * 2) + a1])
  t9 = RF_2F8F(18, (v6 * 2) + 7)
  t10 = RF_3619(KOUEKI_D_C69D, W[v15])
  t11 = RF_2F8F(22, (v6 * 2) + 7)
  t12 = RF_3619(KOUEKI_D_C6A1, v13)
  v6 = v6 + 1
KOUEKI_L_B281:
  v15 = v15 + 2
  v8 = v8 + 1
KOUEKI_L_B28B:
  v4 = L
  if (v4 < 5) goto KOUEKI_L_B170
  return v6

KOUEKI_F_B294:
  // frame 47
  t1 = KOUEKI_F_B00F(a0)
  if (t1) goto KOUEKI_L_B2B0
  t2 = RF_60EE()
  t3 = RF_60B2()
  t4 = RF_4B44(KOUEKI_D_C6A5)
  return 0
KOUEKI_L_B2B0:
  if (!(g_player_gold == $EA60)) goto KOUEKI_L_B2C9
  t5 = RF_60EE()
  t6 = RF_60B2()
  t7 = RF_4B44(KOUEKI_D_C6C4)
  return 0
KOUEKI_L_B2C9:
  v45 = 0
  t8 = RF_604A(3, 6, 7, 20, 10, $2000)
  t9 = RF_2FB9(KOUEKI_D_C6F3, 1)
  t10 = RF_2F8F(7, 4)
  t11 = RF_2FB9(KOUEKI_D_C6F7, 1)
  t12 = $960C(3, 6, 6, 20, 1, $20F9)
  t13 = RF_2F8F(8, 17)
  t14 = RF_3619(KOUEKI_D_C70B, g_player_gold)
  v47 = 1
KOUEKI_L_B310:
  t15 = RF_60B2()
  t16 = RF_2FB9(KOUEKI_D_C71B, 1)
  if (!v47) goto KOUEKI_L_B336
  t17 = KOUEKI_F_B135(a0, &v14, &v29, &v39, &v19)
  v2 = t17
KOUEKI_L_B336:
  t18 = RF_490C(6, 8, 2, v2)
  v4 = t18
  if (!(v4 != 255)) goto KOUEKI_L_B4A5
  if (!((((W[(v4 * 2) + (&v39)]) * (W[(v4 * 2) + (&v29)])) + g_player_gold) > 60000)) goto KOUEKI_L_B3AC
  v41 = $EA60 - g_player_gold
  if (!(v41 % (W[(v4 * 2) + (&v29)]))) goto KOUEKI_L_B3A6
  goto KOUEKI_L_B3A7
KOUEKI_L_B3A6:
KOUEKI_L_B3A7:
  goto KOUEKI_L_B3B5
KOUEKI_L_B3AC:
KOUEKI_L_B3B5:
  v41 = L
  t19 = RF_60B2()
  t20 = RF_3619(KOUEKI_D_C730, W[(v4 * 2) + (&v14)])
  t21 = RF_3C6D(KOUEKI_D_C74A, 1, v41)
  v43 = t21
  if (!(v43 != (-1))) goto KOUEKI_L_B4A1
  W[(((B[v4 + (&v19)]) * 2) + (a0 * 24)) + $E9AC] = (W[(((B[v4 + (&v19)]) * 2) + (a0 * 24)) + $E9AC]) - v43
  g_player_gold = g_player_gold + ((W[(v4 * 2) + (&v29)]) * v43)
  v45 = 1
  if (!(g_player_gold > $EA60)) goto KOUEKI_L_B421
  g_player_gold = $EA60
KOUEKI_L_B421:
  t22 = RF_2FB9(KOUEKI_D_C74B, 1)
  t23 = RF_2F8F(8, 17)
  t24 = RF_3619(KOUEKI_D_C74F, g_player_gold)
  if (!((((W[(v4 * 2) + (&v29)]) * v43) / $03E8) > 10)) goto KOUEKI_L_B454
  goto KOUEKI_L_B465
KOUEKI_L_B454:
KOUEKI_L_B465:
  B[a1] = L
  if (!(g_player_gold == $EA60)) goto KOUEKI_L_B480
  t25 = RF_60EE()
  t26 = RF_60B2()
  t27 = RF_4B44(KOUEKI_D_C75F)
  return v45
KOUEKI_L_B480:
  t28 = KOUEKI_F_B00F(a0)
  if (t28) goto KOUEKI_L_B498
  t29 = RF_60EE()
  t30 = RF_60B2()
  t31 = RF_4B44(KOUEKI_D_C77F)
  return v45
KOUEKI_L_B498:
  v45 = 0
KOUEKI_L_B49C:
  v47 = L
  goto KOUEKI_L_B4AA
KOUEKI_L_B4A1:
  goto KOUEKI_L_B49C
KOUEKI_L_B4A5:
  v45 = 255
KOUEKI_L_B4AA:
  if (v4 == 255) goto KOUEKI_L_B4B7
  if (!v45) goto KOUEKI_L_B310
KOUEKI_L_B4B7:
  return v45

KOUEKI_F_B4BA:
  // frame 31
  B[a0] = 0
  v29 = 1
  t1 = RL_8502(0, &v5)
  v17 = t1
  v23 = 0
  goto KOUEKI_L_B4EE
KOUEKI_L_B4D7:
  t2 = KOUEKI_F_B00F(B[v19 + (&v5)])
  v23 = v23 + t2
KOUEKI_L_B4EE:
  v19 = L
  if (v19 < v17) goto KOUEKI_L_B4D7
  if (v23) goto KOUEKI_L_B50E
  t3 = RF_60EE()
  t4 = RF_609A(1)
  t5 = RF_4B44(KOUEKI_D_C79A)
  return 0
KOUEKI_L_B50E:
  if (!(g_player_gold == $EA60)) goto KOUEKI_L_B529
  t6 = RF_60EE()
  t7 = RF_609A(1)
  t8 = RF_4B44(KOUEKI_D_C7B7)
  return 0
KOUEKI_L_B529:
  v31 = 0
  v27 = 0
  v25 = 0
  (byte)$EF65 = 240
  t9 = $97B0(2, 2, 28, 18)
  t10 = $9675()
KOUEKI_L_B543:
  t11 = RF_60CE(6, 1)
  t12 = RF_609A(1)
  t13 = RF_2FB9(KOUEKI_D_C7D6, 1)
  if (!v29) goto KOUEKI_L_B56D
  t14 = KOUEKI_F_B0A8(v17, &v5, v31)
  v29 = 0
  v31 = 1
KOUEKI_L_B56D:
  t15 = RF_490C(6, 8, 2, v17)
  v21 = t15
  if (!(v21 != 255)) goto KOUEKI_L_B5AE
  t16 = KOUEKI_F_B294(B[v21 + (&v5)], a0)
  v27 = t16
  if (!v27) goto KOUEKI_L_B5A6
  if (!(v27 == 255)) goto KOUEKI_L_B5A3
  v27 = 0
KOUEKI_L_B5A3:
  v29 = 1
KOUEKI_L_B5A6:
  v25 = v25 | v27
KOUEKI_L_B5AE:
  if (v21 == 255) goto KOUEKI_L_B5BC
  if (!v25) goto KOUEKI_L_B543
KOUEKI_L_B5BC:
  if (v25) goto KOUEKI_L_B5C6
  if (!B[a0]) goto KOUEKI_L_B5F4
KOUEKI_L_B5C6:
  if (!((B[((byte)g_port * 14) + $E6BF]) > 9)) goto KOUEKI_L_B5E8
  goto KOUEKI_L_B5F3
KOUEKI_L_B5E8:
KOUEKI_L_B5F3:
  B[((byte)g_port * 14) + $E6BF] = L
KOUEKI_L_B5F4:
  t17 = $97BE()
  return v25

KOUEKI_F_B5FA:
  // frame 6
  v4 = (a0 * 24) + $E9AC
  v2 = 0
  goto KOUEKI_L_B61C
KOUEKI_L_B60E:
  v4 = v4 + 2
  if (!(W[(v4 + 2) - 2])) goto KOUEKI_L_B61A
  v2 = v2 + 1
KOUEKI_L_B61A:
KOUEKI_L_B61C:
  v6 = L
  if (v6 < 5) goto KOUEKI_L_B60E
  return v2

KOUEKI_F_B625:
  // frame 14
  t1 = RL_884E(((byte)g_port * 5) + $150A)
  v4 = (t1 * 88) + $1864
  v8 = v4 + 9
  v10 = v4
  v12 = v4 + 18
  v6 = ((byte)g_port * 14) + g_ports
  v14 = W[v6]
  v2 = 0
KOUEKI_L_B658:
  t2 = RL_884E(v8)
  if (!t2) goto KOUEKI_L_B68C
  t3 = RL_884E(v10)
  if (!((t3 * 50) <= v14)) goto KOUEKI_L_B68C
  t4 = RL_8898(v12)
  return (t4 * ((B[v6 + 11]) + 50)) / 100
KOUEKI_L_B68C:
  v8 = v8 + 1
  v12 = v12 + 2
  v10 = v10 + 1
  v2 = v2 + 1
  if (v2 < 9) goto KOUEKI_L_B658
  return 0

KOUEKI_F_B6A0:
  // frame 10
  v6 = (a0 * 24) + g_cargo
  v2 = 0
KOUEKI_L_B6B0:
  if (!(W[((v2 * 2) + v6) + 6])) goto KOUEKI_L_B6DC
  t1 = KOUEKI_F_B625(B[(v6 + v2) + 1])
  W[a2] = t1
  if (!t1) goto KOUEKI_L_B6DC
  B[a1] = B[(v6 + v2) + 1]
  a1 = a1 + 1
  a2 = a2 + 2
  (byte)v3 = (byte)v3 + 1
KOUEKI_L_B6DC:
  v2 = v2 + 1
  if (v2 < 5) goto KOUEKI_L_B6B0
  v8 = ((byte)g_port * 5) + $150A
  t2 = RL_884E(v8 + 1)
  (byte)v4 = t2
  if (!(t2 != 255)) goto KOUEKI_L_B75C
  v2 = 0
KOUEKI_L_B702:
  if (!(W[((v2 * 2) + v6) + 6])) goto KOUEKI_L_B753
  if (!((B[(v6 + v2) + 1]) == (byte)v4)) goto KOUEKI_L_B753
  v10 = ((byte)g_port * 14) + g_ports
  B[a1] = (byte)v4
  a1 = a1 + 1
  W[a2] = ((W[v10 + 12]) * ((B[v10 + 11]) + 50)) / 100
  a2 = a2 + 2
  (byte)v3 = (byte)v3 + 1
KOUEKI_L_B753:
  v2 = v2 + 1
  if (v2 < 5) goto KOUEKI_L_B702
KOUEKI_L_B75C:
  return (byte)v3

KOUEKI_F_B760:
  // frame 4
  v4 = (a0 * 24) + g_cargo
  v2 = 0
KOUEKI_L_B770:
  if (!((B[(v4 + v2) + 1]) == a1)) goto KOUEKI_L_B781
  return W[((v2 * 2) + v4) + 6]
KOUEKI_L_B781:
  v2 = v2 + 1
  if (v2 < 5) goto KOUEKI_L_B770
  return 0

KOUEKI_F_B78C:
  // frame 4
  v4 = (a0 * 24) + g_cargo
  v2 = 0
KOUEKI_L_B79C:
  if (!((B[(v4 + v2) + 1]) == a1)) goto KOUEKI_L_B7B1
  if (!(W[((v2 * 2) + v4) + 6])) goto KOUEKI_L_B7B1
  return 0
KOUEKI_L_B7B1:
  v2 = v2 + 1
  if (v2 < 5) goto KOUEKI_L_B79C
  return 1

KOUEKI_F_B7BC:
  // frame 4
  t1 = RF_2FB9(KOUEKI_D_C7F6, 1)
  t2 = RF_2F8F(22, 16)
  t3 = RF_2FB9(KOUEKI_D_C7FA, 0)
  t4 = RF_2F8F(22, 17)
  t5 = RF_3608(KOUEKI_D_C800, g_player_gold)
  t6 = RF_2F8F(22, 8)
  t7 = RF_2FB9(KOUEKI_D_C804, 0)
  t8 = RF_2F8F(22, 9)
  t9 = KOUEKI_F_B5FA(a3)
  t10 = RF_3608(KOUEKI_D_C80D, t9)
  t11 = RF_2F8F(22, 12)
  t12 = RF_2FB9(KOUEKI_D_C817, 0)
  t13 = RF_2F8F(22, 13)
  t14 = KOUEKI_F_B038(a3)
  t15 = RF_40A5((B[(a3 * 7) + $EB98]) & 15)
  t16 = RL_8898(t15 + 18)
  t17 = RF_3608(KOUEKI_D_C81D, t16 - t14)
  goto KOUEKI_L_B8D2
KOUEKI_L_B851:
  t18 = RF_2F8F(3, (v2 * 2) + 8)
  t19 = KOUEKI_F_B5FA(a3)
  if (!(t19 == 5)) goto KOUEKI_L_B87A
  t20 = KOUEKI_F_B78C(a3, B[((a4 * 6) + a1) + v2])
  if (!t20) goto KOUEKI_L_B87A
  goto KOUEKI_L_B87B
KOUEKI_L_B87A:
KOUEKI_L_B87B:
  v4 = L
  t21 = RL_8875(((B[((a4 * 6) + a1) + v2]) * 2) + $1B49)
  t22 = RF_40DE(t21)
  t23 = RF_2F8F(13, (v2 * 2) + 7)
  t24 = KOUEKI_F_B760(a3, B[((a4 * 6) + a1) + v2])
  t25 = RF_3619(KOUEKI_D_C826, t24)
  t26 = RF_2F8F(17, (v2 * 2) + 7)
  t27 = RF_3619(KOUEKI_D_C82A, W[(((a4 * 6) + v2) * 2) + a2])
KOUEKI_L_B8D2:
  v2 = L
  if (v2 < a0) goto KOUEKI_L_B851
  return v2 < a0

KOUEKI_F_B8DA:
  // frame 28
  v20 = ((byte)g_port * 14) + g_ports
  v12 = (B[v20 + 11]) + 50
  v10 = W[v20]
  v22 = ((byte)g_port * 5) + $150A
  t1 = RL_884E(v22)
  v2 = (t1 * 88) + $1864
  v8 = v2
  v6 = v2 + 9
  v14 = v2 + 18
  v24 = 0
  v26 = 0
  goto KOUEKI_L_B970
KOUEKI_L_B919:
  t2 = RL_884E(v6)
  v28 = t2
  if (!(t2 != 255)) goto KOUEKI_L_B964
  t3 = RL_884E(v8)
  v16 = t3
  if (!((v16 * 50) <= v10)) goto KOUEKI_L_B964
  B[a0 + v26] = v28
  t4 = RL_8898(v14)
  W[(v26 * 2) + a1] = (t4 * v12) / 100
  v26 = v26 + 1
KOUEKI_L_B964:
  v6 = v6 + 1
  v8 = v8 + 1
  v14 = v14 + 2
  v24 = v24 + 1
KOUEKI_L_B970:
  if (v24 < 9) goto KOUEKI_L_B919
  t5 = RL_884E(v22 + 1)
  v4 = t5
  if (!(v4 != 255)) goto KOUEKI_L_B9C0
  t6 = RL_884E(v22 + 2)
  if (!((t6 * 50) <= v10)) goto KOUEKI_L_B9C0
  B[a0 + v26] = v4
  W[(v26 * 2) + a1] = ((W[v20 + 12]) * v12) / 100
  v26 = v26 + 1
KOUEKI_L_B9C0:
  return v26

KOUEKI_F_B9C3:
  // frame 18
  v16 = 225
  v14 = 0
  v10 = 0
  v8 = 0
  v2 = 2
KOUEKI_L_B9D4:
  v4 = L
KOUEKI_L_B9D5:
  t1 = RF_362A(0)
  v6 = t1
  if (v6 == 128) goto KOUEKI_L_B9EB
  if (!(v6 == $8000)) goto KOUEKI_L_B9EF
KOUEKI_L_B9EB:
  goto KOUEKI_L_B9F0
KOUEKI_L_B9EF:
KOUEKI_L_B9F0:
  if (!L) goto KOUEKI_L_BA81
  v18 = (v4 << 3) - 1
  v12 = v2 << 3
  t2 = RF_3E5A(0, v12 - 1, v18 - 4, 1, 2, $26CC, g_fh_fdata)
  t3 = RF_3D91(v6, 12)
  switch (v6) {4 cases}

KOUEKI_F_BA98:
  // frame 17
  t1 = KOUEKI_F_B5FA(a3)
  if (!(t1 == 5)) goto KOUEKI_L_BAB4
  t2 = KOUEKI_F_B78C(a3, B[a1 + a0])
  if (t2) goto KOUEKI_L_BAD5
KOUEKI_L_BAB4:
  t3 = KOUEKI_F_B038(a3)
  t4 = RF_40A5((B[(a3 * 7) + $EB98]) & 15)
  t5 = RL_8898(t4 + 18)
  if (t5 - t3) goto KOUEKI_L_BAE4
KOUEKI_L_BAD5:
  t6 = RF_60EE()
  t7 = RF_60B2()
  t8 = RF_4B44(KOUEKI_D_C82E)
  return 0
KOUEKI_L_BAE4:
  t9 = RF_60CE(6, 1)
  t10 = RF_60B2()
  v10 = W[(a0 * 2) + a2]
  t11 = RF_2FB9(KOUEKI_D_C84D, 0)
  t12 = RL_8875(((B[a1 + a0]) * 2) + $1B49)
  t13 = RF_40DE(t12)
  t14 = RF_2FB9(KOUEKI_D_C84F, 0)
  t15 = RF_2F8F(8, 23)
  t16 = RF_3619(KOUEKI_D_C85D, v10)
  v6 = g_player_gold
  t17 = RF_3CFF()
  v12 = t17
  if (!v12) goto KOUEKI_L_BB48
  if (!(v10 > v6)) goto KOUEKI_L_BBBA
  t18 = RF_60EE()
  t19 = RF_609A(1)
  t20 = RF_4B44(KOUEKI_D_C876)
  return 0
KOUEKI_L_BB48:
  t21 = rand(10)
  if (!((B[((byte)g_port * 14) + $E6BC]) >= (t21 + 70))) goto KOUEKI_L_BC36
  t22 = RF_60CE(6, 1)
  t23 = RF_609A(1)
  t24 = RL_8962(v6, v10)
  v8 = t24
  t25 = RF_3C6D(KOUEKI_D_C894, 1, v8, 1)
  v2 = t25
  if (!(v2 < (v10 - ((((byte)g_title + 1) * (v10 / 2)) / 10)))) goto KOUEKI_L_BBA5
  t26 = RF_60CE(6, 1)
  t27 = RF_60B2()
  t28 = RF_4B44(KOUEKI_D_C8B0)
  return 1
KOUEKI_L_BBA5:
  if (!(v2 == (-1))) goto KOUEKI_L_BBB8
  t29 = RF_60B2()
  t30 = RF_4B44(KOUEKI_D_C8CB)
  return 3
KOUEKI_L_BBB8:
  v10 = v2
KOUEKI_L_BBBA:
  t31 = KOUEKI_F_B038(a3)
  t32 = RF_40A5((B[(a3 * 7) + $EB98]) & 15)
  t33 = RL_8898(t32 + 18)
  v4 = t33 - t31
  t34 = RL_8962(v4, g_player_gold / v10)
  v4 = t34
  t35 = RF_60CE(6, 1)
  t36 = RF_60B2()
  t37 = RF_2FB9(KOUEKI_D_C904, 0)
  t38 = RL_8875(((B[a1 + a0]) * 2) + $1B49)
  t39 = RF_40DE(t38)
  t40 = RF_2F8F(8, 23)
  t41 = RF_2FB9(KOUEKI_D_C90F, 1)
  t42 = RF_3C4E(KOUEKI_D_C921, 1, v4, 1)
  v2 = t42
  if (!(v2 == (-1))) goto KOUEKI_L_BC48
  t43 = RF_60B2()
  t44 = RF_4B44(KOUEKI_D_C922)
  return 3
KOUEKI_L_BC36:
  t45 = RF_60CE(6, 1)
  t46 = RF_60B2()
  t47 = RF_4B44(KOUEKI_D_C8E5)
  return 0
KOUEKI_L_BC48:
  v17 = (a3 * 24) + g_cargo
  v12 = 0
  goto KOUEKI_L_BC79
KOUEKI_L_BC58:
  if (!((B[((byte)v13 + v17) + 1]) == (B[a1 + a0]))) goto KOUEKI_L_BC75
  (byte)v14 = (byte)v13
  v12 = 1
  goto KOUEKI_L_BC84
KOUEKI_L_BC75:
KOUEKI_L_BC79:
  (byte)v13 = L
  if ((byte)v13 < 5) goto KOUEKI_L_BC58
KOUEKI_L_BC84:
  if (v12) goto KOUEKI_L_BCB2
  goto KOUEKI_L_BCA7
KOUEKI_L_BC8C:
  if (W[(((byte)v13 * 2) + v17) + 6]) goto KOUEKI_L_BCA3
  (byte)v14 = (byte)v13
  v12 = 1
  goto KOUEKI_L_BCB2
KOUEKI_L_BCA3:
KOUEKI_L_BCA7:
  (byte)v13 = L
  if ((byte)v13 < 5) goto KOUEKI_L_BC8C
KOUEKI_L_BCB2:
  B[((byte)v14 + v17) + 1] = B[a1 + a0]
  W[(((byte)v14 * 2) + v17) + 6] = (W[(((byte)v14 * 2) + v17) + 6]) + v2
  g_player_gold = g_player_gold - (v2 * v10)
  if (!((v2 * v10) > $03E8)) goto KOUEKI_L_BD28
  t48 = RL_8962(10, (v2 * v10) / $03E8)
  (byte)v15 = t48
  if (!(((B[((byte)g_port * 14) + $E6BF]) + (byte)v15) > 100)) goto KOUEKI_L_BD17
  goto KOUEKI_L_BD27
KOUEKI_L_BD17:
KOUEKI_L_BD27:
  B[((byte)g_port * 14) + $E6BF] = L
KOUEKI_L_BD28:
  return 0

KOUEKI_F_BD2A:
  // frame 40
  v16 = 0
  t1 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t2 = RL_8898(t1 + 18)
  t3 = KOUEKI_F_B038(a0)
  if (t3 == t2) goto KOUEKI_L_BD6D
  t4 = KOUEKI_F_B5FA(a0)
  if (!(t4 == 5)) goto KOUEKI_L_BD7E
  t5 = KOUEKI_F_B6A0(a0, &v10, &v36)
  v12 = t5
  if (t5) goto KOUEKI_L_BD7E
KOUEKI_L_BD6D:
  t6 = RF_60EE()
  t7 = RF_60B2()
  t8 = RF_4B44(KOUEKI_D_C949)
  return 255
KOUEKI_L_BD7E:
  t9 = $9675()
  t10 = RF_4F65(1, 3, 30, 17, 0, 0)
  t11 = $960C(3, 2, 6, 28, 1, $20F9)
  t12 = $960C(3, 21, 7, 1, 12, $20FA)
  t13 = RF_2F8F(3, 4)
  t14 = RF_2FB9(KOUEKI_D_C95C, 1)
  v40 = 1
KOUEKI_L_BDB8:
  v38 = 0
  if (!v40) goto KOUEKI_L_BDCD
  t15 = KOUEKI_F_B8DA(&v10, &v36)
  v12 = t15
KOUEKI_L_BDCD:
  v40 = 1
  t16 = RF_60CE(6, 1)
  t17 = RF_60B2()
  t18 = RF_2FB9(KOUEKI_D_C972, 1)
  t19 = KOUEKI_F_B7BC(v12, &v10, &v36, a0, v16)
  t20 = KOUEKI_F_B9C3(v12 - 1, &v10, &v36, a0)
  v14 = t20
  if (!(v14 != 255)) goto KOUEKI_L_BE4B
  t21 = KOUEKI_F_BA98(v14, &v10, &v36, a0)
  v38 = t21
  if (!(v38 == 3)) goto KOUEKI_L_BE25
  v38 = 0
  v40 = 0
KOUEKI_L_BE25:
  t22 = RF_40A5(a0)
  t23 = RL_8898(t22 + 18)
  t24 = RF_4565(a0)
  if (!(t24 == t23)) goto KOUEKI_L_BE4B
  t25 = RF_60EE()
  t26 = RF_60B2()
  t27 = RF_4B44(KOUEKI_D_C991)
  return 1
KOUEKI_L_BE4B:
  if (v14 == 255) goto KOUEKI_L_BE58
  if (!v38) goto KOUEKI_L_BDB8
KOUEKI_L_BE58:
  t28 = $9675()
  return v38

KOUEKI_F_BE5E:
  // frame 24
  B[a0] = 0
  v24 = 0
  t1 = RL_8502(0, &v8)
  (byte)v1 = t1
  v22 = 1
  v20 = 0
  goto KOUEKI_L_BECD
KOUEKI_L_BE7C:
  t2 = RF_40A5((B[((B[(byte)v2 + (&v8)]) * 7) + $EB98]) & 15)
  t3 = RL_8898(t2 + 18)
  t4 = KOUEKI_F_B038(B[(byte)v2 + (&v8)])
  if (!(t4 < t3)) goto KOUEKI_L_BEC9
  t5 = KOUEKI_F_B5FA(B[(byte)v2 + (&v8)])
  if (!(t5 <= 5)) goto KOUEKI_L_BEC9
  v22 = 0
  goto KOUEKI_L_BEDC
KOUEKI_L_BEC9:
KOUEKI_L_BECD:
  (byte)v2 = L
  if ((byte)v2 < (byte)v1) goto KOUEKI_L_BE7C
KOUEKI_L_BEDC:
  if (!v22) goto KOUEKI_L_BEEF
  t6 = RF_60EE()
  t7 = RF_60B2()
  t8 = RF_4B44(KOUEKI_D_C9A9)
  return 0
KOUEKI_L_BEEF:
  if (g_player_gold) goto KOUEKI_L_BF04
  t9 = RF_60EE()
  t10 = RF_60B2()
  t11 = RF_4B44(KOUEKI_D_C9C8)
  return 0
KOUEKI_L_BF04:
  v22 = 0
  (byte)$EF65 = 240
  t12 = $97B0(1, 2, 30, 18)
KOUEKI_L_BF16:
  t13 = sys48_color_math(0, 0, 224)
  t14 = sys39_window_off()
  t15 = RF_60CE(6, 1)
  t16 = RF_60B2()
  t17 = RF_2FB9(KOUEKI_D_C9E8, 1)
  if (v24) goto KOUEKI_L_BF4E
  t18 = $9675()
  t19 = KOUEKI_F_B0A8((byte)v1, &v8, 0)
  v24 = 1
KOUEKI_L_BF4E:
  t20 = RF_490C(6, 8, 2, (byte)v1)
  (byte)v3 = t20
  if (!((byte)v3 != 255)) goto KOUEKI_L_BF91
  t21 = KOUEKI_F_BD2A(B[(byte)v3 + (&v8)], a0)
  v22 = t21
  if (!(v22 == 255)) goto KOUEKI_L_BF8F
  v22 = 0
  t22 = RF_604A(3, 5, 3, 22, 17, $2000)
KOUEKI_L_BF8F:
  v24 = 0
KOUEKI_L_BF91:
  if ((byte)v3 == 255) goto KOUEKI_L_BF9F
  if (!v22) goto KOUEKI_L_BF16
KOUEKI_L_BF9F:
  if (!v22) goto KOUEKI_L_BFD3
  if (!((B[((byte)g_port * 14) + $E6BF]) < 90)) goto KOUEKI_L_BFC6
  goto KOUEKI_L_BFD2
KOUEKI_L_BFC6:
KOUEKI_L_BFD2:
  B[((byte)g_port * 14) + $E6BF] = L
KOUEKI_L_BFD3:
  t23 = $9675()
  t24 = $97BE()
  return 0

KOUEKI_F_BFDB:
  // frame 2
  v2 = 0
KOUEKI_L_BFE2:
  t1 = RL_884E(a0)
  if (!(t1 == (byte)a1)) goto KOUEKI_L_BFF2
  return v2
KOUEKI_L_BFF2:
  a0 = a0 + 1
  v2 = v2 + 1
  if (v2 < 9) goto KOUEKI_L_BFE2
  return 255

KOUEKI_F_C002:
  // frame 32
  v4 = ((byte)g_port * 5) + $150A
  t1 = RL_884E(v4 + 1)
  v16 = t1
  t2 = RL_884E(v4 + 2)
  v18 = t2
  t3 = RL_884E(v4)
  v2 = (t3 * 88) + $1864
  v8 = v2
  v10 = v2 + 9
  v20 = v2 + 18
  v22 = v2 + 36
  v6 = ((byte)g_port * 14) + g_ports
  v28 = W[v6]
  v30 = W[v6 + 12]
  v24 = (B[v6 + 11]) + 50
  if (!a1) goto KOUEKI_L_C093
  t4 = $9675()
  t5 = RF_4F65(5, 3, 22, 17, 0, 0)
  t6 = RF_2F8F(6, 4)
  t7 = RF_2FB9(KOUEKI_D_CA58, 0)
  t8 = RF_2F8F(6, 5)
  t9 = RF_2FB9(KOUEKI_D_CA6D, 0)
  t10 = $960C(3, 6, 6, 20, 1, $20F9)
  goto KOUEKI_L_C0A0
KOUEKI_L_C093:
  t11 = RF_604A(3, 6, 7, 20, 12, $2000)
KOUEKI_L_C0A0:
  goto KOUEKI_L_C1E6
KOUEKI_L_C0A4:
  t12 = RF_2FB9(KOUEKI_D_CA82, 1)
  t13 = RF_2F8F(6, (v12 * 2) + 8)
  t14 = RL_8875((((B[a0 + KOUEKI_D_CA15]) + v12) * 2) + $1B49)
  t15 = RF_40DE(t14)
  t16 = KOUEKI_F_BFDB(v10, (B[a0 + KOUEKI_D_CA15]) + v12)
  v14 = t16
  t17 = RF_2F8F(16, (v12 * 2) + 7)
  t18 = RL_884E(v8 + v14)
  v32 = t18
  if (!(v14 != 255)) goto KOUEKI_L_C12B
  if (!((v32 * 50) <= v28)) goto KOUEKI_L_C12B
  t19 = RL_8898((v14 * 2) + v20)
KOUEKI_L_C124:
  t20 = RF_3619(KOUEKI_D_CA86, (t19 * v24) / 100)
  goto KOUEKI_L_C177
KOUEKI_L_C12B:
  if (!(v16 != 255)) goto KOUEKI_L_C16F
  if (!(((B[a0 + KOUEKI_D_CA15]) + v12) == v16)) goto KOUEKI_L_C16F
  if (!((v18 * 50) <= v28)) goto KOUEKI_L_C168
  goto KOUEKI_L_C124
KOUEKI_L_C168:
  goto KOUEKI_L_C173
KOUEKI_L_C16F:
KOUEKI_L_C173:
  t21 = RF_2FB9(KOUEKI_D_CA93, 1)
KOUEKI_L_C177:
  t22 = RF_2F8F(22, (v12 * 2) + 7)
  t23 = RL_8898((((B[a0 + KOUEKI_D_CA15]) + v12) * 2) + v22)
  v26 = (t23 * v24) / 100
  if (!(((B[a0 + KOUEKI_D_CA15]) + v12) == v16)) goto KOUEKI_L_C1DB
  if (!((v18 * 50) <= v28)) goto KOUEKI_L_C1DB
  v26 = (((v30 * v24) / 100) / 2) + 1
KOUEKI_L_C1DB:
  t24 = RF_3619(KOUEKI_D_CA98, v26)
KOUEKI_L_C1E6:
  v12 = L
  if (v12 < (B[a0 + KOUEKI_D_CA1B])) goto KOUEKI_L_C0A4
  t25 = RF_2F8F(12, 17)
  t26 = RF_3619(KOUEKI_D_CA9C, W[(a0 * 2) + KOUEKI_D_CA09])
  if (!(a0 < 5)) goto KOUEKI_L_C217
  t27 = RF_3619(KOUEKI_D_CA9F)
KOUEKI_L_C217:
  return

KOUEKI_F_C218:
  // frame 6
  v4 = a0 + 1
  if (!a7) goto KOUEKI_L_C255
  goto KOUEKI_L_C24D
KOUEKI_L_C229:
  t1 = RF_2F8F(((v2 / a6) * a2) + v4, ((v2 % a6) * a3) + a1)
  t2 = RF_2FB9(W[(v2 * 2) + a4], 1)
KOUEKI_L_C24D:
  v2 = L
  if (v2 < a5) goto KOUEKI_L_C229
KOUEKI_L_C255:
  t3 = RF_3787(KOUEKI_D_CAA7, a5, a0, a1 + 1, a2, a3, a6, 1)
  v6 = t3
  if (!(v6 == (-1))) goto KOUEKI_L_C275
  goto KOUEKI_L_C277
KOUEKI_L_C275:
KOUEKI_L_C277:
  return

KOUEKI_F_C278:
  // frame 8
  v6 = 1
  v4 = 1
  v2 = 1
KOUEKI_L_C281:
  if (!v6) goto KOUEKI_L_C298
  t1 = RF_60CE(6, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(KOUEKI_D_CAD8, 1)
KOUEKI_L_C298:
  t4 = KOUEKI_F_C218(8, 23, 7, 2, KOUEKI_D_CAA8, 6, 2, v6)
  v8 = t4
  v6 = 0
  if (!(v8 != 255)) goto KOUEKI_L_C2D0
  (byte)$EF65 = 240
  if (!v2) goto KOUEKI_L_C2C8
  t5 = $97B0(2, 2, 28, 18)
  v2 = 0
KOUEKI_L_C2C8:
  t6 = KOUEKI_F_C002(v8, v4)
  v4 = 0
KOUEKI_L_C2D0:
  if (v8 != 255) goto KOUEKI_L_C281
  if (v2) goto KOUEKI_L_C2DF
  t7 = $97BE()
KOUEKI_L_C2DF:
  return 0

port_alliance_check:
  // frame 4
  if (!(g_fame < $C350)) goto KOUEKI_L_C31D
  v2 = ((byte)g_port * 14) + g_ports
  t1 = rand(100)
  v4 = (t1 + (((W[v2 + 4]) + W[v2]) >> 1)) + g_fame
  t2 = RL_8962(v4, $C350)
  g_fame = t2
KOUEKI_L_C31D:
  return

KOUEKI_F_C31E:
  // frame 4
  v2 = ((byte)g_port * 14) + g_ports
  v4 = B[((a0 * 2) * 2) + $EEC0]
  t1 = rand(3)
  v4 = ((t1 + (((W[v2 + 4]) + W[v2]) / 65)) + v4) + 5
  t2 = RL_8962(v4, 100)
  B[((a0 * 2) * 2) + $EEC0] = t2
  return t2

KOUEKI_F_C35E:
  // frame 12
  if (g_player_gold) goto KOUEKI_L_C378
  t1 = RF_60EE()
  t2 = RF_60B2()
  t3 = RF_4B44(KOUEKI_D_CAE3)
  return 0
KOUEKI_L_C378:
  if (!((byte)g_port < 3)) goto KOUEKI_L_C3A4
  t4 = RF_60CE(6, 1)
  t5 = RF_60B2()
  if (!((byte)g_port == 2)) goto KOUEKI_L_C397
  goto KOUEKI_L_C39A
KOUEKI_L_C397:
KOUEKI_L_C39A:
  t6 = RF_3619(KOUEKI_D_CAF6, L)
  return 0
KOUEKI_L_C3A4:
  if (!((W[((byte)g_port * 14) + $E6B6]) == $EA60)) goto KOUEKI_L_C3C7
  t7 = RF_60CE(6, 1)
  t8 = RF_60B2()
  t9 = RF_4B44(KOUEKI_D_CB3B)
  return 0
KOUEKI_L_C3C7:
  t10 = RF_60CE(6, 1)
  t11 = RF_609A(1)
  t12 = RF_4B44(KOUEKI_D_CB5B)
  v2 = $EA60 - (W[((byte)g_port * 14) + $E6B6])
  if (!(g_player_gold < v2)) goto KOUEKI_L_C3F6
  v2 = g_player_gold
KOUEKI_L_C3F6:
  t13 = RF_60EE()
  t14 = RF_60B2()
  t15 = RF_3C4E(KOUEKI_D_CB7B, 1, v2, 1)
  v4 = t15
  if (!(v4 == (-1))) goto KOUEKI_L_C420
  t16 = RF_60CE(6, 1)
  t17 = RF_60B2()
  t18 = RF_4B44(KOUEKI_D_CB94)
  return 0
KOUEKI_L_C420:
  t19 = RL_8962($EA60 - (W[((byte)g_port * 14) + $E6B6]), v4)
  W[((byte)g_port * 14) + $E6B6] = (W[((byte)g_port * 14) + $E6B6]) + t19
  g_player_gold = g_player_gold - v4
  t20 = RF_60CE(6, 1)
  t21 = RF_60B2()
  if (!(v4 < $03E8)) goto KOUEKI_L_C46C
  v6 = (v4 + 1) / 20
  goto KOUEKI_L_C48F
KOUEKI_L_C46C:
  if (!(v4 > $270F)) goto KOUEKI_L_C484
  v6 = (v4 / $03E8) + 150
  goto KOUEKI_L_C48F
KOUEKI_L_C484:
  v6 = (v4 / 100) + 50
KOUEKI_L_C48F:
  t22 = RF_2FB9(KOUEKI_D_CBF4, 1)
  t23 = RF_3DDF(1)
  if (!((B[((byte)g_port * 14) + $E6BC]) > 49)) goto KOUEKI_L_C4BB
  t24 = rand(2)
  goto KOUEKI_L_C4D0
KOUEKI_L_C4BB:
  t25 = rand(2)
KOUEKI_L_C4D0:
  v8 = ((v6 + 1) / (L / 7)) + t25
  v10 = (B[(byte)g_port + g_port_flags]) & 3
  t26 = port_owner_update((byte)g_port, 0, v8)
  v12 = (B[(byte)g_port + g_port_flags]) & 3
  if (!(v10 != v12)) goto KOUEKI_L_C529
  if (v12) goto KOUEKI_L_C51A
  if (v10 == 2) goto KOUEKI_L_C510
  if (!(v10 == 3)) goto KOUEKI_L_C51A
KOUEKI_L_C510:
  t27 = KOUEKI_F_C31E(v10 - 1)
  goto KOUEKI_L_C529
KOUEKI_L_C51A:
  if (!(v10 != 1)) goto KOUEKI_L_C529
  if (!(v12 == 1)) goto KOUEKI_L_C529
  t28 = port_alliance_check()
KOUEKI_L_C529:
  return 1

KOUEKI_F_C52B:
  // frame 4
  v4 = 0
KOUEKI_L_C532:
  t1 = RF_60CE(6, 1)
  t2 = RF_60B2()
  t3 = RF_2FB9(KOUEKI_D_CC34, 1)
  t4 = RF_484C(8, 23, 10, 2, KOUEKI_D_CC08, 4, 2)
  (byte)v1 = t4
  if (!((byte)v1 != 255)) goto KOUEKI_L_C56E
  t5 = (*(W[((byte)v1 * 2) + KOUEKI_D_CC10]))(2)
  v4 = t5
KOUEKI_L_C56E:
  if ((byte)v1 != 255) goto KOUEKI_L_C532
  return v4
KOUEKI_D_C57A:

