MAITUKI_F_9603:
  // frame 0
  t1 = MAITUKI_F_A26C()
  return t1

MAITUKI_F_960C:
  // frame 2
  v2 = ((a0 * 2) * 2) + g_nations
  t1 = rand(3)
  t2 = RL_8962(B[v2 + 2], t1 + 2)
  B[v2 + 2] = (B[v2 + 2]) - t2
  return (B[v2 + 2]) - t2

MAITUKI_F_9631:
  // frame 10
  v6 = (a0 << 4) + g_fleets
  if ((B[v6 + 15]) & 8) goto MAITUKI_L_9647
  return (B[v6 + 15]) & 8
MAITUKI_L_9647:
  B[v6 + 15] = (B[v6 + 15]) & 247
  v2 = ((a0 + 20) * 7) + g_player_name_ptr
  v4 = g_player_name_ptr
  t1 = MAITUKI_F_A27E((a0 - 1) / 5, v2)
  t2 = rand(5)
  t3 = RL_8962(t2 + (B[v4 + 2]), 50)
  B[v2 + 2] = t3
  t4 = rand(5)
  t5 = RL_8962(t4 + (B[v4 + 3]), 50)
  B[v2 + 3] = t5
  t6 = RL_884E(a0 + 212)
  v8 = (t6 * 19) + $0FD8
  t7 = RL_884E(v8 + 15)
  B[v6] = t7
  t8 = RL_884E(v8 + 16)
  B[v6 + 1] = t8
  t9 = RL_884E(v8 + 17)
  B[v6 + 2] = t9
  t10 = RL_884E(v8 + 18)
  B[v6 + 3] = t10
  t11 = RF_464C((a0 - 1) / 5)
  W[v2 + 4] = t11
  B[((a0 - 1) * 51) + $DF09] = 4
  W[v6 + 11] = 0
  W[v6 + 13] = (W[v6 + 13]) & $8000
  v10 = ((a0 - 1) * 51) + g_captains
  t12 = RL_884E(a0 + 212)
  B[v10 + 5] = t12
  B[v10 + 4] = 4
  W[v10 + 7] = 0
  return 0

MAITUKI_F_971F:
  // frame 20
  v4 = (a0 * 35) + g_ships
  v6 = ((a0 * 35) + g_ships) + 35
  goto MAITUKI_L_973F
MAITUKI_L_9733:
  if (!((B[v4 + 6]) & 64)) goto MAITUKI_L_9745
  v4 = v4 + 7
MAITUKI_L_973F:
  if (v4 < v6) goto MAITUKI_L_9733
MAITUKI_L_9745:
  t1 = RL_884E((((a0 - 1) / 5) * 2) + 5)
  v10 = (t1 * 14) + g_ports
  t2 = rand(3)
  v2 = t2 + 7
  B[v4 + 6] = 0
  B[v4 + 6] = v2 | 80
  t3 = RF_40A5(v2)
  v8 = t3
  t4 = RF_40A5(v2)
  t5 = RL_884E(t4 + 20)
  v12 = (t5 >> 5) & 7
  t6 = RF_40A5(v2)
  t7 = RL_884E(t6 + 20)
  v14 = t7 & 3
  t8 = RF_40A5(v2)
  t9 = RL_884E(t8 + 20)
  v16 = (t9 >> 2) & 3
  t10 = RF_40A5(v2)
  t11 = RL_884E(t10 + 20)
  v18 = (t11 >> 4) & 1
  B[v4] = ((v12 * 10) + (v14 * 10)) + 20
  B[v4 + 1] = ((((((20 - v12) * 100) / 20) * (10 - v16)) / 10) * (4 - v18)) / 4
  B[v4 + 2] = (((((v16 * 10) + 100) * (10 - v12)) / 10) * (v18 + 3)) / 4
  t12 = RL_8962(B[v4 + 2], 100)
  B[v4 + 2] = t12
  t13 = RL_884E(v8 + 17)
  B[v4 + 3] = t13
  t14 = RL_8898(v8 + 15)
  v20 = t14
  W[v4 + 4] = ((v20 / 8) * (W[v10] / 250)) + (v20 / 2)
  return ((v20 / 8) * (W[v10] / 250)) + (v20 / 2)

MAITUKI_F_9832:
  // frame 18
  v18 = ((a0 * 2) * 2) + g_nations
  v4 = (W[v18] / 100) + 1
  if (v4) goto MAITUKI_L_984B
  return v4
MAITUKI_L_984B:
  a0 = (a0 * 5) + 1
  v6 = 0
  goto MAITUKI_L_9879
MAITUKI_L_9856:
  t1 = RL_8502(a0 + v2, &v14)
  B[v2 + (&v9)] = t1
  v6 = v6 + (B[v2 + (&v9)])
MAITUKI_L_9879:
  v2 = L
  if (v2 < 3) goto MAITUKI_L_9856
  if (!(v6 == 15)) goto MAITUKI_L_9887
  return v6 == 15
MAITUKI_L_9887:
  v16 = &v9
  goto MAITUKI_L_98C8
MAITUKI_L_988F:
  if (!(B[v16] < 5)) goto MAITUKI_L_98C3
  if (B[v16]) goto MAITUKI_L_98A3
  t2 = MAITUKI_F_9631(a0 + v2)
MAITUKI_L_98A3:
  t3 = MAITUKI_F_971F(a0 + v2)
  t4 = RL_8502(a0 + v2, &v14)
  B[v16] = t4
  v6 = v6 + 1
  v4 = v4 - 1
  if (!v4) goto MAITUKI_L_98CF
MAITUKI_L_98C3:
  v16 = v16 + 1
MAITUKI_L_98C8:
  v2 = L
  if (v2 < 3) goto MAITUKI_L_988F
MAITUKI_L_98CF:
  if (!(v6 < 15)) goto MAITUKI_L_98D9
  if (v4) goto MAITUKI_L_9887
MAITUKI_L_98D9:
  return

MAITUKI_F_98DA:
  // frame 12
  v4 = (a0 * 35) + g_ships
  v6 = ((a0 * 35) + g_ships) + 35
  goto MAITUKI_L_98FA
MAITUKI_L_98EE:
  if (!((B[v4 + 6]) & 64)) goto MAITUKI_L_9900
  v4 = v4 + 7
MAITUKI_L_98FA:
  if (v4 < v6) goto MAITUKI_L_98EE
MAITUKI_L_9900:
  t1 = RL_884E((((a0 - 1) / 5) * 2) + 5)
  v10 = (t1 * 14) + g_ports
  t2 = rand(2)
  v2 = t2 + 9
  B[v4 + 6] = 0
  B[v4 + 6] = v2 | 64
  t3 = rand(2)
  B[v4 + 6] = (B[v4 + 6]) | ((t3 + 2) << 4)
  t4 = RF_40A5(v2)
  v8 = t4
  t5 = RF_40A5(v2)
  t6 = RL_884E(t5 + 20)
  t7 = RF_40A5(v2)
  t8 = RL_884E(t7 + 20)
  B[v4] = ((((t8 >> 5) & 7) * 10) + ((t6 & 3) * 10)) + 20
  t9 = RF_40A5(v2)
  t10 = RL_884E(t9 + 20)
  t11 = RF_40A5(v2)
  t12 = RL_884E(t11 + 20)
  t13 = RF_40A5(v2)
  t14 = RL_884E(t13 + 20)
  B[v4 + 1] = ((((((20 - ((t14 >> 5) & 7)) * 100) / 20) * (10 - ((t12 >> 2) & 3))) / 10) * (4 - ((t10 >> 4) & 1))) / 4
  t15 = RF_40A5(v2)
  t16 = RL_884E(t15 + 20)
  t17 = RF_40A5(v2)
  t18 = RL_884E(t17 + 20)
  t19 = RF_40A5(v2)
  t20 = RL_884E(t19 + 20)
  B[v4 + 2] = (((((((t20 >> 2) & 3) * 10) + 100) * (10 - ((t18 >> 5) & 7))) / 10) * (((t16 >> 4) & 1) + 3)) / 4
  t21 = RL_8962(B[v4 + 2], 100)
  B[v4 + 2] = t21
  t22 = RL_884E(v8 + 17)
  B[v4 + 3] = t22
  t23 = RL_8898(v8 + 15)
  v12 = t23
  W[v4 + 4] = ((v12 / 8) * (W[v10] / 250)) + (v12 / 2)
  return ((v12 / 8) * (W[v10] / 250)) + (v12 / 2)

MAITUKI_F_9A39:
  // frame 16
  v16 = ((a0 * 2) * 2) + g_nations
  v2 = (W[v16] / 150) + 1
  a0 = (a0 * 5) + 4
  if (v2) goto MAITUKI_L_9A58
  return v2
MAITUKI_L_9A58:
  v4 = 0
  goto MAITUKI_L_9A81
MAITUKI_L_9A5E:
  t1 = RL_8502(a0 + v6, &v14)
  B[v6 + (&v9)] = t1
  v4 = v4 + (B[v6 + (&v9)])
MAITUKI_L_9A81:
  v6 = L
  if (v6 < 2) goto MAITUKI_L_9A5E
  if (!(v4 == 10)) goto MAITUKI_L_9A8F
  return v4 == 10
MAITUKI_L_9A8F:
  v6 = 0
MAITUKI_L_9A91:
  if (!((B[v6 + (&v9)]) < 5)) goto MAITUKI_L_9AD8
  if (B[v6 + (&v9)]) goto MAITUKI_L_9AB1
  t2 = MAITUKI_F_9631(a0 + v6)
MAITUKI_L_9AB1:
  t3 = MAITUKI_F_98DA(a0 + v6)
  t4 = RL_8502(a0 + v6, &v14)
  B[v6 + (&v9)] = t4
  v4 = v4 + 1
  v2 = v2 - 1
  if (!v2) goto MAITUKI_L_9AE1
MAITUKI_L_9AD8:
  v6 = v6 + 1
  if (v6 < 2) goto MAITUKI_L_9A91
MAITUKI_L_9AE1:
  if (!(v4 < 10)) goto MAITUKI_L_9AEB
  if (v2) goto MAITUKI_L_9A8F
MAITUKI_L_9AEB:
  return

MAITUKI_F_9AEC:
  // frame 8
  v4 = (a0 * 35) + g_ships
  v6 = ((a0 * 35) + g_ships) + 35
  goto MAITUKI_L_9B0C
MAITUKI_L_9B00:
  if (!((B[v4 + 6]) & 64)) goto MAITUKI_L_9B12
  v4 = v4 + 7
MAITUKI_L_9B0C:
  if (v4 < v6) goto MAITUKI_L_9B00
MAITUKI_L_9B12:
  t1 = rand(3)
  v2 = t1 + 8
  B[v4 + 6] = 0
  B[v4 + 6] = v2 | 64
  t2 = rand(2)
  B[v4 + 6] = (B[v4 + 6]) | ((t2 + 2) << 4)
  t3 = RF_40A5(v2)
  v8 = t3
  t4 = RF_40A5(v2)
  t5 = RL_884E(t4 + 20)
  t6 = RF_40A5(v2)
  t7 = RL_884E(t6 + 20)
  B[v4] = ((((t7 >> 5) & 7) * 10) + ((t5 & 3) * 10)) + 20
  t8 = RF_40A5(v2)
  t9 = RL_884E(t8 + 20)
  t10 = RF_40A5(v2)
  t11 = RL_884E(t10 + 20)
  t12 = RF_40A5(v2)
  t13 = RL_884E(t12 + 20)
  B[v4 + 1] = ((((((20 - ((t13 >> 5) & 7)) * 100) / 20) * (10 - ((t11 >> 2) & 3))) / 10) * (4 - ((t9 >> 4) & 1))) / 4
  t14 = RF_40A5(v2)
  t15 = RL_884E(t14 + 20)
  t16 = RF_40A5(v2)
  t17 = RL_884E(t16 + 20)
  t18 = RF_40A5(v2)
  t19 = RL_884E(t18 + 20)
  B[v4 + 2] = (((((((t19 >> 2) & 3) * 10) + 100) * (10 - ((t17 >> 5) & 7))) / 10) * (((t15 >> 4) & 1) + 3)) / 4
  t20 = RL_8962(B[v4 + 2], 100)
  B[v4 + 2] = t20
  t21 = RL_884E(v8 + 17)
  B[v4 + 3] = t21
  t22 = RL_8898(v8 + 15)
  W[v4 + 4] = t22
  return t22

MAITUKI_F_9C23:
  // frame 20
  v4 = 3
  v20 = ((v4 * 2) * 2) + g_nations
  v6 = 5
  v4 = (v4 * 5) + 1
  v8 = 0
  goto MAITUKI_L_9C62
MAITUKI_L_9C3F:
  t1 = RL_8502(v4 + v2, &v13)
  B[v2 + (&v18)] = t1
  v8 = v8 + (B[v2 + (&v18)])
MAITUKI_L_9C62:
  v2 = L
  if (v2 < 5) goto MAITUKI_L_9C3F
  if (!(v8 == 25)) goto MAITUKI_L_9C71
  return v8 == 25
MAITUKI_L_9C71:
  v2 = 0
MAITUKI_L_9C73:
  if (!((B[v2 + (&v18)]) < 5)) goto MAITUKI_L_9CBA
  if (B[v2 + (&v18)]) goto MAITUKI_L_9C93
  t2 = MAITUKI_F_9631(v4 + v2)
MAITUKI_L_9C93:
  t3 = MAITUKI_F_9AEC(v4 + v2)
  t4 = RL_8502(v4 + v2, &v13)
  B[v2 + (&v18)] = t4
  v8 = v8 + 1
  v6 = v6 - 1
  if (!v6) goto MAITUKI_L_9CC3
MAITUKI_L_9CBA:
  v2 = v2 + 1
  if (v2 < 5) goto MAITUKI_L_9C73
MAITUKI_L_9CC3:
  if (!(v8 < 25)) goto MAITUKI_L_9CCE
  if (v6) goto MAITUKI_L_9C71
MAITUKI_L_9CCE:
  return

MAITUKI_F_9CCF:
  // frame 19
  v17 = ((a0 * 2) * 2) + g_nations
  t1 = rand(100)
  if (!((B[v17 + 2]) > t1)) goto MAITUKI_L_9CF4
MAITUKI_L_9CF2:
  B[v17 + 3] = L
MAITUKI_L_9CF3:
  return
MAITUKI_L_9CF4:
  v7 = ((($EA9B >> ((a0 * 2) * 2)) | (8 >> a0)) >> 1) & 15
  v11 = 0
  v9 = 0
  goto MAITUKI_L_9D36
MAITUKI_L_9D11:
  B[(2 - v11) + (&v3)] = v7 & 1
  v9 = v9 + (v7 & 1)
  v7 = v7 >> 1
  v11 = v11 + 1
MAITUKI_L_9D36:
  if (v11 < 3) goto MAITUKI_L_9D11
  v5 = g_relations
  switch (v9) {2 cases}

MAITUKI_F_9E34:
  // frame 0
  if (!(a0 == 3)) goto MAITUKI_L_9E45
  t1 = MAITUKI_F_9C23()
  goto MAITUKI_L_9E4F
MAITUKI_L_9E45:
  t2 = MAITUKI_F_9832(a0)
  t3 = MAITUKI_F_9A39(a0)
MAITUKI_L_9E4F:
  t4 = MAITUKI_F_9CCF(a0)
  return t4

MAITUKI_F_9E55:
  // frame 0
  t1 = rand(15)
  $EECE = $EECE + ((t1 + (g_nations / 50)) * (byte)g_title)
  t2 = RL_8962($EECE, $2710)
  $EECE = t2
  t3 = rand(5)
  t4 = RL_884E(5)
  $EED0 = $EED0 + ((((W[(t4 * 14) + $E6B6]) / 50) + t3) * (byte)g_title)
  t5 = RL_8962($EED0, $03E8)
  $EED0 = t5
  t6 = rand(2)
  t7 = RL_8962((byte)$E442, (9 - (byte)g_title) + t6)
  (byte)$E442 = (byte)$E442 - t7
  return (byte)$E442 - t7

MAITUKI_F_9ED8:
  // frame 2
  t1 = RL_884E((a0 * 2) + 5)
  v2 = (t1 * 14) + g_ports
  return (((W[((a0 * 2) * 2) + g_nations]) / 50) + (W[v2 + 4])) + W[v2]

MAITUKI_F_9F06:
  // frame 14
  v2 = g_relations
  v6 = $EA95
  if (!((B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2]) < 40)) goto MAITUKI_L_A12F
  if (!(($EA9B >> ((a0 * 2) * 2)) & (8 >> a1))) goto MAITUKI_L_9F71
  $EA9B = $EA9B & (((8 >> a1) << ((a0 * 2) * 2)) ^ (-1))
  $EA9B = $EA9B & (((8 >> a0) << ((a1 * 2) * 2)) ^ (-1))
  goto MAITUKI_L_A224
MAITUKI_L_9F71:
  t1 = MAITUKI_F_9ED8(a0)
  v12 = t1
  t2 = MAITUKI_F_9ED8(a1)
  v14 = t2
  if (!(v12 > v14)) goto MAITUKI_L_A0E4
  if (!(($EA9D >> ((a0 * 2) * 2)) & (8 >> a1))) goto MAITUKI_L_A05D
  B[(B[((a0 * 3) + a1) + MAITUKI_D_A62E]) + v6] = 0
  t3 = MAITUKI_F_A2CC(a1)
  v8 = t3
  if (!(v12 > ((v14 * 3) / 2))) goto MAITUKI_L_A225
  t4 = rand(100)
  t5 = RL_884E((a0 * 2) + 4)
  if (!(((t5 * 10) + (B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2])) < t4)) goto MAITUKI_L_A225
  if (!v8) goto MAITUKI_L_A225
  v4 = (v8 * 14) + $E6BC
  v10 = 0
MAITUKI_L_9FED:
  if (!(v10 == a0)) goto MAITUKI_L_9FFC
  goto MAITUKI_L_9FFD
MAITUKI_L_9FFC:
MAITUKI_L_9FFD:
  B[v4 + v10] = L
  v10 = v10 + 1
  if (v10 < 3) goto MAITUKI_L_9FED
  B[v8 + g_port_flags] = (B[v8 + g_port_flags]) & 252
  B[v8 + g_port_flags] = (B[v8 + g_port_flags]) | (a0 + 1)
  t6 = rand(5)
  t7 = RL_8962((t6 + (B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2])) + 3, 100)
  B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2] = t7
  goto MAITUKI_L_A224
MAITUKI_L_A05D:
  t8 = rand(100)
  t9 = RL_884E((a0 * 2) + 4)
  if (!(((t9 * 5) + (B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2])) < t8)) goto MAITUKI_L_A0D3
  $EA9D = $EA9D | ((8 >> a1) << ((a0 * 2) * 2))
  t10 = rand(3)
  t11 = RL_8962(B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2], t10 + 2)
  B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2] = (B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2]) - t11
  goto MAITUKI_L_A224
MAITUKI_L_A0D3:
  goto MAITUKI_L_A224
MAITUKI_L_A0E4:
  B[(B[((a0 * 3) + a1) + MAITUKI_D_A62E]) + v6] = 1
  if (!((v12 * 2) > v14)) goto MAITUKI_L_A102
  t12 = rand(3)
  if (t12) goto MAITUKI_L_A0D3
MAITUKI_L_A102:
  t13 = rand(3)
  t14 = RL_8962((t13 + (B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2])) + 1, 100)
  goto MAITUKI_L_A224
MAITUKI_L_A12F:
  if (!(($EA9D >> ((a0 * 2) * 2)) & (8 >> a1))) goto MAITUKI_L_A166
  $EA9D = $EA9D & (((8 >> a1) << ((a0 * 2) * 2)) ^ (-1))
  goto MAITUKI_L_A224
MAITUKI_L_A166:
  if (!((B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2]) < 60)) goto MAITUKI_L_A1CB
  t15 = RL_884E((a0 * 2) + 4)
  t16 = rand(7)
  if (t16 < t15) goto MAITUKI_L_A0D3
  t17 = rand(3)
  t18 = RL_8962((t17 + (B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2])) + 1, 100)
  B[(B[(((a0 * 2) * 2) + a1) + MAITUKI_D_A61E]) + v2] = t18
  goto MAITUKI_L_A224
MAITUKI_L_A1CB:
  B[(B[((a0 * 3) + a1) + MAITUKI_D_A62E]) + v6] = 0
  if (($EA9B >> ((a0 * 2) * 2)) & (8 >> a1)) goto MAITUKI_L_A225
  t19 = rand(4)
  if (t19) goto MAITUKI_L_A225
  $EA9B = $EA9B | ((8 >> a1) << ((a0 * 2) * 2))
  $EA9B = $EA9B | ((8 >> a0) << ((a1 * 2) * 2))
MAITUKI_L_A224:
  B[(B[((a0 * 3) + a1) + MAITUKI_D_A62E]) + v6] = L
MAITUKI_L_A225:
  return

MAITUKI_F_A226:
  // frame 2
  v2 = 0
MAITUKI_L_A22D:
  if (!(a0 != v2)) goto MAITUKI_L_A239
  t1 = MAITUKI_F_9F06(a0, v2)
MAITUKI_L_A239:
  v2 = v2 + 1
  if (v2 < 3) goto MAITUKI_L_A22D
  return v2 < 3

MAITUKI_F_A243:
  // frame 2
  v2 = 0
MAITUKI_L_A24A:
  t1 = MAITUKI_F_960C(v2)
  if (!(v2 != 3)) goto MAITUKI_L_A25A
  t2 = MAITUKI_F_A226(v2)
MAITUKI_L_A25A:
  t3 = MAITUKI_F_9E34(v2)
  v2 = v2 + 1
  if (v2 < 4) goto MAITUKI_L_A24A
  t4 = MAITUKI_F_9E55()
  return t4

MAITUKI_F_A26C:
  // frame 0
  t1 = monthly_index_recovery()
  t2 = MAITUKI_F_A243()
  t3 = MAITUKI_F_A5A2()
  t4 = MAITUKI_F_A5EF()
  return t4

MAITUKI_F_A27E:
  // frame 10
  if (!a0) goto MAITUKI_L_A28A
  a0 = a0 - 1
MAITUKI_L_A28A:
  v4 = g_player_name_ptr
  v6 = g_player_name_ptr + 287
MAITUKI_L_A292:
  v10 = 0
  t1 = rand(90)
  t2 = RL_8875((t1 * 2) + (W[(a0 * 2) + MAITUKI_D_A638]))
  v2 = t2
  goto MAITUKI_L_A2BD
MAITUKI_L_A2AF:
  if (!(W[v8] == v2)) goto MAITUKI_L_A2BB
  v10 = 1
  goto MAITUKI_L_A2C4
MAITUKI_L_A2BB:
MAITUKI_L_A2BD:
  v8 = L
  if (v8 < v6) goto MAITUKI_L_A2AF
MAITUKI_L_A2C4:
  if (v10) goto MAITUKI_L_A292
  W[a1] = v2
  return v2

MAITUKI_F_A2CC:
  // frame 6
  v6 = 0
  goto MAITUKI_L_A2EB
MAITUKI_L_A2D7:
  if (!(((B[v2 + g_port_flags]) & 3) == a0)) goto MAITUKI_L_A2E9
  v6 = v6 + 1
  v4 = v2
MAITUKI_L_A2E9:
MAITUKI_L_A2EB:
  v2 = L
  if (v2 < 50) goto MAITUKI_L_A2D7
  if (!v6) goto MAITUKI_L_A2FB
  goto MAITUKI_L_A2FC
MAITUKI_L_A2FB:
MAITUKI_L_A2FC:
  return

MAITUKI_F_A2FD:
  // frame 11
  v11 = (a0 * 5) + 1
  v9 = v11
  v11 = v11 + 5
  v7 = 0
  goto MAITUKI_L_A32E
MAITUKI_L_A319:
  t1 = RL_8502(v9, &v5)
  v7 = v7 + t1
  v9 = v9 + 1
MAITUKI_L_A32E:
  if (v9 < v11) goto MAITUKI_L_A319
  return v7

MAITUKI_F_A339:
  // frame 6
  v6 = (a0 * 14) + g_ports
  v2 = W[v6 + 2]
  v4 = W[v6 + 6]
  if (!(v2 > $03E8)) goto MAITUKI_L_A381
  t1 = rand(10)
  W[v6] = (t1 + (((v2 / $03E8) * 2) * 2)) + W[v6]
  t2 = RL_8962(W[v6], $03E8)
  W[v6] = t2
  W[v6 + 2] = v2 % $03E8
MAITUKI_L_A381:
  if (!(v4 > $03E8)) goto MAITUKI_L_A3BA
  t3 = rand(10)
  W[v6 + 4] = (t3 + (((v4 / $03E8) * 2) * 2)) + (W[v6 + 4])
  t4 = RL_8962(W[v6 + 4], $03E8)
  W[v6 + 4] = t4
  W[v6 + 6] = v4 % $03E8
MAITUKI_L_A3BA:
  return

monthly_index_recovery:
  // frame 158
  t1 = sys36_memset_long(126, &v78, 0, 64)
  t2 = sys36_memset_long(126, &v142, 0, 64)
  v154 = g_ports
  v156 = $150A
  v6 = 0
  v2 = g_port_flags
  v4 = g_port_flags + 50
  goto MAITUKI_L_A4AB
MAITUKI_L_A3F6:
  v12 = B[v2] & 3
  t3 = RL_884E(v156 + 4)
  v14 = t3
  t4 = MAITUKI_F_A339(v6)
  t5 = RL_884E(v156)
  W[((v12 << 4) + (v14 * 2)) + (&v78)] = (W[((v12 << 4) + (v14 * 2)) + (&v78)]) + (((t5 + 1) * W[v154]) / 4)
  W[((v12 << 4) + (v14 * 2)) + (&v142)] = (W[((v12 << 4) + (v14 * 2)) + (&v142)]) + (W[v154 + 4])
  if (!((B[v154 + 11]) > 50)) goto MAITUKI_L_A45D
  goto MAITUKI_L_A467
MAITUKI_L_A45D:
MAITUKI_L_A467:
  v10 = L
  if (!(v10 > 5)) goto MAITUKI_L_A472
  goto MAITUKI_L_A473
MAITUKI_L_A472:
MAITUKI_L_A473:
  t6 = rand(L)
  v10 = v10 - t6
  if (!((B[v154 + 11]) > 50)) goto MAITUKI_L_A492
  goto MAITUKI_L_A496
MAITUKI_L_A492:
MAITUKI_L_A496:
  B[v154 + 11] = L
  v6 = v6 + 1
  v154 = v154 + 14
  v156 = v156 + 5
  v2 = v2 + 1
MAITUKI_L_A4AB:
  if (v2 < v4) goto MAITUKI_L_A3F6
  t7 = sys36_memset_long(126, &v148, 0, 6)
  v6 = 1
  v150 = &v148
  v152 = (&v148) + 6
  goto MAITUKI_L_A54C
MAITUKI_L_A4CE:
  goto MAITUKI_L_A4EC
MAITUKI_L_A4D2:
  W[v150] = W[v150] + (W[((v6 << 4) + (v8 * 2)) + (&v78)])
MAITUKI_L_A4EC:
  v8 = L
  if (!(v8 < 5)) goto MAITUKI_L_A509
  if ((W[((v6 << 4) + (v8 * 2)) + (&v142)]) > 299) goto MAITUKI_L_A4D2
MAITUKI_L_A509:
  v8 = 5
MAITUKI_L_A50B:
  if (!((W[((v6 << 4) + (v8 * 2)) + (&v142)]) > 299)) goto MAITUKI_L_A539
  W[v150] = W[v150] + (W[((v6 << 4) + (v8 * 2)) + (&v78)])
MAITUKI_L_A539:
  v8 = v8 + 1
  if (v8 < 7) goto MAITUKI_L_A50B
  v6 = v6 + 1
  v150 = v150 + 2
MAITUKI_L_A54C:
  if (v150 < v152) goto MAITUKI_L_A4CE
  v6 = 0
  v158 = g_nations
  v150 = &v148
  v152 = (&v148) + 6
  goto MAITUKI_L_A597
MAITUKI_L_A56B:
  t8 = MAITUKI_F_A2FD(v6)
  t9 = RL_8962(t8 * (W[v150] / 25), $C350)
  W[v158] = t9
  v158 = v158 + 4
  v6 = v6 + 1
  v150 = v150 + 2
MAITUKI_L_A597:
  if (v150 < v152) goto MAITUKI_L_A56B
  return v150 < v152

MAITUKI_F_A5A2:
  // frame 6
  v4 = $E970
  v6 = $E970 + 20
  goto MAITUKI_L_A5E8
MAITUKI_L_A5B1:
  if (!((B[v4 + 1]) != 255)) goto MAITUKI_L_A5E5
  t1 = rand(3)
  v2 = (t1 + (B[v4 + 1])) - 1
  if (!(v2 < 0)) goto MAITUKI_L_A5D3
  goto MAITUKI_L_A5DF
MAITUKI_L_A5D3:
  if (!(v2 > 49)) goto MAITUKI_L_A5DE
  goto MAITUKI_L_A5DF
MAITUKI_L_A5DE:
MAITUKI_L_A5DF:
  v2 = L
  B[v4 + 1] = v2
MAITUKI_L_A5E5:
  v4 = v4 + 2
MAITUKI_L_A5E8:
  if (v4 < v6) goto MAITUKI_L_A5B1
  return v4 < v6

MAITUKI_F_A5EF:
  // frame 4
  v2 = $E42E
  v4 = $E42E + 20
  goto MAITUKI_L_A616
MAITUKI_L_A5FE:
  t1 = rand(4)
  t2 = RL_8962(t1 + 5, B[v2])
  B[v2] = B[v2] - t2
  v2 = v2 + 1
MAITUKI_L_A616:
  if (v2 < v4) goto MAITUKI_L_A5FE
  return v2 < v4

