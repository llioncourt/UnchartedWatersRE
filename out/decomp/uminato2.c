UMINATO2_F_B003:
  // frame 0
  switch ($F9A2) {3 cases}

UMINATO2_F_B030:
  // frame 0
  return

UMINATO2_F_B036:
  // frame 0
  t1 = RF_60CE(9, 1)
  return t1

UMINATO2_F_B042:
  // frame 41
  v17 = 0
  t1 = RL_8502(0, &v5)
  v19 = t1
  t2 = RF_4F65(6, 6, 20, 14, 1, 0)
  t3 = RF_2F8F(8, 7)
  t4 = RF_2FB9(UMINATO2_D_B8D2, 0)
  t5 = UMINATO2_F_B030()
  t6 = RF_4B2A(15, 7, 1)
  t7 = RF_4B2A(19, 7, 0)
  t8 = RF_3DF1(3, 22, 7, 2, 2, $45E6, g_fh_cbmap0)
  goto UMINATO2_L_B0B9
UMINATO2_L_B094:
  t9 = RF_40A5((B[((B[v21 + (&v5)]) * 7) + $EB98]) & 15)
  W[(v21 * 2) + (&v15)] = t9
UMINATO2_L_B0B9:
  v21 = L
  if (v21 < v19) goto UMINATO2_L_B094
  v31 = 0
  v33 = 0
  v35 = 0
  goto UMINATO2_L_B189
UMINATO2_L_B0D0:
  v41 = ((B[v21 + (&v5)]) * 24) + g_cargo
  t10 = RF_2F8F(7, (v21 * 2) + 10)
  t11 = RF_40DE(W[(v21 * 2) + (&v15)])
  t12 = RF_2F8F(14, (v21 * 2) + 9)
  v23 = W[v41 + 18]
  v33 = v33 + v23
  t13 = RF_3619(UMINATO2_D_B8CE, v23 / 10)
  t14 = RF_2F8F(18, (v21 * 2) + 9)
  v25 = W[v41 + 16]
  v35 = v35 + v25
  t15 = RF_3619(UMINATO2_D_B8CE, v25 / 10)
  t16 = RF_2F8F(22, (v21 * 2) + 9)
  v27 = W[((B[v21 + (&v5)]) * 7) + $EB96]
  v31 = v31 + v27
  if (!(v27 < 5)) goto UMINATO2_L_B17D
  v17 = 1
  goto UMINATO2_L_B182
UMINATO2_L_B17D:
UMINATO2_L_B182:
  t17 = RF_3619(UMINATO2_D_B8CE, v27)
UMINATO2_L_B189:
  v21 = L
  if (v21 < v19) goto UMINATO2_L_B0D0
  v37 = v33 / ((v31 / 2) + 1)
  v39 = v35 / ((v31 / 2) + 1)
  t18 = RL_8962(v37, v39)
  v29 = t18
  if (!v17) goto UMINATO2_L_B1BE
  goto UMINATO2_L_B1C7
UMINATO2_L_B1BE:
  t19 = RL_8962(v29, $03E8)
UMINATO2_L_B1C7:
  return

UMINATO2_F_B1C8:
  // frame 2
  t1 = $97B0(2, 2, 28, 18)
  t2 = sys8_oam_hide_all()
  t3 = UMINATO2_F_B042()
  v2 = t3
  (byte)$EF65 = 240
  t4 = RF_60EE()
  t5 = RF_60B2()
  if (v2) goto UMINATO2_L_B1FB
  t6 = RF_2FB9(UMINATO2_D_B8E2, 1)
  goto UMINATO2_L_B229
UMINATO2_L_B1FB:
  if (!(v2 < 10)) goto UMINATO2_L_B207
  goto UMINATO2_L_B20A
UMINATO2_L_B207:
UMINATO2_L_B20A:
  t7 = RF_4B44(UMINATO2_D_B93C)
  t8 = RF_60B2()
  if (!(v2 == 1)) goto UMINATO2_L_B21D
  goto UMINATO2_L_B220
UMINATO2_L_B21D:
UMINATO2_L_B220:
  t9 = RF_3619(UMINATO2_D_B95F, v2, L)
UMINATO2_L_B229:
  t10 = RF_3CFF()
  if (!t10) goto UMINATO2_L_B244
  t11 = $97BE()
  t12 = UMINATO2_F_B036()
  t13 = RF_60B2()
  t14 = RF_4B44(UMINATO2_D_B982)
  t15 = UMINATO2_F_B741()
  return 1
UMINATO2_L_B244:
  t16 = $97BE()
  return 0

UMINATO2_F_B249:
  // frame 24
  t1 = UMINATO2_F_B036()
  t2 = RF_60B2()
  t3 = RF_4B44(UMINATO2_D_B993)
  v22 = 0
  v20 = 0
  (byte)v1 = 0
  (byte)v3 = 0
  goto UMINATO2_L_B2B6
UMINATO2_L_B268:
  v24 = ((byte)v1 * 7) + g_ships
  if (!((B[v24 + 6]) & 64)) goto UMINATO2_L_B2AF
  B[(byte)v3 + (&v8)] = (byte)v1
  (byte)v3 = (byte)v3 + 1
  t4 = RF_40A5((byte)v1)
  t5 = RL_8898(t4 + 18)
  v20 = v20 + t5
  t6 = RF_4565((byte)v1)
  v22 = v22 + t6
UMINATO2_L_B2AF:
  (byte)v1 = (byte)v1 + 1
UMINATO2_L_B2B6:
  if ((byte)v1 < 5) goto UMINATO2_L_B268
  t7 = $97B0(1, 2, 30, 18)
  t8 = sys8_oam_hide_all()
  t9 = UMINATO2_F_B030()
  t10 = RF_6995((byte)v3, &v8, 1, 6)
  t11 = $97BE()
  return 0

UMINATO2_F_B2E3:
  // frame 8
  v2 = g_player_gold / a4
  t1 = RF_4565(a1)
  t2 = RF_40A5(a1)
  t3 = RL_8898(t2 + 18)
  v4 = t3 - t1
  if (!(v2 > v4)) goto UMINATO2_L_B30C
  v2 = v4
UMINATO2_L_B30C:
  if (v2) goto UMINATO2_L_B31F
  t4 = UMINATO2_F_B036()
  t5 = RF_60B2()
  t6 = RF_4B44(UMINATO2_D_B9C1)
  return 0
UMINATO2_L_B31F:
  t7 = RF_60B2()
  t8 = RF_3619(UMINATO2_D_B9DA, a2)
  t9 = RF_3C4E(UMINATO2_D_B9FA, 0, v2, 1)
  v8 = t9
  if (v8 == (-1)) goto UMINATO2_L_B340
  if (v8) goto UMINATO2_L_B342
UMINATO2_L_B340:
  return 0
UMINATO2_L_B342:
  t10 = RF_60B2()
  v6 = a4 * v8
  t11 = RF_3619(UMINATO2_D_B9FB, v6)
  t12 = RF_3CFF()
  if (t12) goto UMINATO2_L_B35A
  return 0
UMINATO2_L_B35A:
  t13 = (*a6)(4)
  t14 = RF_6883(a3, a1, a0, 1, 6)
  g_player_gold = g_player_gold - v6
  t15 = RF_2FB9(UMINATO2_D_BA2A, 1)
  t16 = RF_2F8F(22, 12)
  t17 = RF_3619(UMINATO2_D_BA2E)
  t18 = RF_2F8F(25, 14)
  t19 = RF_3608(UMINATO2_D_BA34, g_player_gold)
  return 1

UMINATO2_F_B39B:
  // frame 27
  t1 = RL_8502(0, &v9)
  v21 = t1
  t2 = RF_60B2()
  t3 = RF_3619(UMINATO2_D_BA38, a2, a1, a3)
  t4 = RF_3DDF(1)
  if (!(g_player_gold < a1)) goto UMINATO2_L_B3D4
  t5 = RF_60EE()
  t6 = RF_60B2()
  t7 = RF_4B44(UMINATO2_D_BA57)
  return 0
UMINATO2_L_B3D4:
  v27 = 0
  t8 = sys8_oam_hide_all()
  t9 = $97B0(1, 2, 30, 18)
  t10 = $9662()
  t11 = UMINATO2_F_B030()
  t12 = RF_6701(a0, 1, 6)
  t13 = RF_2FB9(UMINATO2_D_BA73, 1)
  t14 = RF_2F8F(22, 9)
  t15 = RF_2FB9(UMINATO2_D_BA77, 0)
  t16 = RF_2F8F(22, 10)
  t17 = RF_3608(UMINATO2_D_BA7E, a1)
  t18 = RF_2F8F(22, 11)
  t19 = RF_3608(UMINATO2_D_BA85, a3)
  t20 = RF_2F8F(22, 13)
  t21 = RF_3608(UMINATO2_D_BA88)
  t22 = RF_2F8F(25, 14)
  t23 = RF_3608(UMINATO2_D_BA8E, g_player_gold)
UMINATO2_L_B447:
  t24 = UMINATO2_F_B036()
  t25 = RF_60B2()
  t26 = RF_2FB9(UMINATO2_D_BA92, 1)
  t27 = RF_490C(2, 10, 2, v21)
  v4 = t27
  if (!(v4 != 255)) goto UMINATO2_L_B482
  t28 = UMINATO2_F_B2E3(v4, B[v4 + (&v9)], a3, a0, a1, a4, a6)
  v27 = v27 | t28
UMINATO2_L_B482:
  if (v4 == 255) goto UMINATO2_L_B492
  if (!(g_player_gold < a1)) goto UMINATO2_L_B447
UMINATO2_L_B492:
  if (!(g_player_gold < a1)) goto UMINATO2_L_B4A7
  t29 = RF_60EE()
  t30 = RF_60B2()
  t31 = RF_4B44(UMINATO2_D_BAA6)
UMINATO2_L_B4A7:
  t32 = $9662()
  t33 = $97BE()
  return v27

UMINATO2_F_B4B0:
  // frame 4
  v4 = 0
  goto UMINATO2_L_B4CF
UMINATO2_L_B4BB:
  v4 = v4 + ((W[((B[a1 + v2]) * 24) + $E9B6]) / 10)
UMINATO2_L_B4CF:
  v2 = L
  if (v2 < a0) goto UMINATO2_L_B4BB
  return v4

UMINATO2_F_B4D8:
  // frame 0
  W[(a0 * 24) + $E9B6] = (W[(a0 * 24) + $E9B6]) + (a1 * 10)
  return (W[(a0 * 24) + $E9B6]) + (a1 * 10)

UMINATO2_F_B4EF:
  // frame 0
  return

UMINATO2_F_B4F5:
  // frame 2
  if (!((byte)g_port > 49)) goto UMINATO2_L_B508
  goto UMINATO2_L_B512
UMINATO2_L_B508:
UMINATO2_L_B512:
  v2 = L
  v2 = (v2 + 50) / 5
  t1 = UMINATO2_F_B39B(0, v2, UMINATO2_D_BAC0, UMINATO2_D_BAC5, UMINATO2_F_B4EF, UMINATO2_F_B4B0, UMINATO2_F_B4D8)
  return t1

UMINATO2_F_B52F:
  // frame 0
  return

UMINATO2_F_B535:
  // frame 3
  v3 = 0
  goto UMINATO2_L_B559
UMINATO2_L_B541:
  v3 = v3 + (W[((B[(byte)v1 + a1]) * 24) + $E9BA])
UMINATO2_L_B559:
  (byte)v1 = L
  if ((byte)v1 < a0) goto UMINATO2_L_B541
  return v3

UMINATO2_F_B567:
  // frame 0
  W[(a0 * 24) + $E9BA] = (W[(a0 * 24) + $E9BA]) + a1
  return (W[(a0 * 24) + $E9BA]) + a1

UMINATO2_F_B57B:
  // frame 2
  if (!((byte)g_port > 49)) goto UMINATO2_L_B58E
  goto UMINATO2_L_B598
UMINATO2_L_B58E:
UMINATO2_L_B598:
  v2 = L
  v2 = (v2 + 50) / 3
  t1 = UMINATO2_F_B39B(2, v2, UMINATO2_D_BACC, UMINATO2_D_BAD3, UMINATO2_F_B52F, UMINATO2_F_B535, UMINATO2_F_B567)
  return t1

UMINATO2_F_B5B5:
  // frame 17
  t1 = RL_8502(0, &v9)
  v11 = t1
  v15 = 0
  v13 = 0
  goto UMINATO2_L_B5FD
UMINATO2_L_B5CE:
  t2 = RF_4565(B[v2 + (&v9)])
  v15 = v15 + t2
  t3 = RF_40A5(B[v2 + (&v9)])
  t4 = RL_8898(t3 + 18)
  v13 = v13 + t4
UMINATO2_L_B5FD:
  v2 = L
  if (v2 < v11) goto UMINATO2_L_B5CE
  if (!(v15 == v13)) goto UMINATO2_L_B61C
  t5 = UMINATO2_F_B036()
  t6 = RF_60B2()
  t7 = RF_4B44(UMINATO2_D_BAF6)
  return 0
UMINATO2_L_B61C:
  v17 = 0
UMINATO2_L_B61F:
  t8 = UMINATO2_F_B036()
  t9 = RF_60B2()
  t10 = RF_2FB9(UMINATO2_D_BB0A, 1)
  t11 = RF_484C(8, 23, 8, 2, UMINATO2_D_BAD8, 3, 2)
  v4 = t11
  if (!(v4 != 255)) goto UMINATO2_L_B65B
  (byte)$EF65 = 240
  t12 = (*(W[(v4 * 2) + UMINATO2_D_BADE]))()
  v17 = v17 | t12
  t13 = RF_2980()
UMINATO2_L_B65B:
  if (v4 != 255) goto UMINATO2_L_B61F
  return 0

UMINATO2_F_B665:
  // frame 62
  t1 = RF_60EE()
  t2 = RF_2FB9(UMINATO2_D_BB31, 1)
  t3 = RF_484C(8, 23, 6, 1, UMINATO2_D_BB20, 2, 1)
  v60 = t3
  if (!(v60 != 255)) goto UMINATO2_L_B6CF
  t4 = $97B0(2, 2, 28, 18)
  t5 = sys8_oam_hide_all()
  switch (v60) {2 cases}

UMINATO2_F_B6FE:
  // frame 4
  v4 = 0
UMINATO2_L_B705:
  t1 = UMINATO2_F_B036()
  t2 = RF_60B2()
  t3 = RF_2FB9(UMINATO2_D_BB6A, 1)
  t4 = RF_484C(8, 23, 7, 2, UMINATO2_D_BB48, 3, 2)
  v2 = t4
  if (!(v2 != 255)) goto UMINATO2_L_B733
  t5 = (*(W[(v2 * 2) + UMINATO2_D_BB4E]))()
  v4 = t5
UMINATO2_L_B733:
  if (v2 == 255) goto UMINATO2_L_B73F
  if (!v4) goto UMINATO2_L_B705
UMINATO2_L_B73F:
  return v4

UMINATO2_F_B741:
  // frame 0
  (byte)$EF65 = 0
  (byte)(g_fleets+15) = (byte)(g_fleets+15) & 253
  (byte)(g_fleets+15) = (byte)(g_fleets+15) | 1
  (byte)$F28D = 0
  return 0

UMINATO2_F_B763:
  // frame 0
  t1 = RF_4783(1, 2, 2, UMINATO2_D_BB82, 2)
  return t1 == 0

UMINATO2_F_B776:
  // frame 0
  t1 = RF_3619(UMINATO2_D_BB8D, a0)
  return t1

UMINATO2_F_B784:
  // frame 8
  g_portrait = -1
  t1 = RF_60EE()
  t2 = rand(90)
  if (t2) goto UMINATO2_L_B7A7
  t3 = RF_609A(1)
  t4 = UMINATO2_F_B776(UMINATO2_D_BB99)
  return t4
UMINATO2_L_B7A7:
  v2 = g_player_items & 7
  if (v2 & 1) goto UMINATO2_L_B7D1
  if (!((byte)$E447 < 5)) goto UMINATO2_L_B7D1
  t5 = rand(40)
  if (t5) goto UMINATO2_L_B7D1
  t6 = RF_609A(1)
  t7 = UMINATO2_F_B776(UMINATO2_D_BBCA)
  return t7
UMINATO2_L_B7D1:
  if (v2 & 2) goto UMINATO2_L_B7F5
  if (!((byte)$E447 < 6)) goto UMINATO2_L_B7F5
  t8 = rand(50)
  if (t8) goto UMINATO2_L_B7F5
  t9 = RF_609A(1)
  t10 = UMINATO2_F_B776(UMINATO2_D_BBFA)
  return t10
UMINATO2_L_B7F5:
  if (v2 & 4) goto UMINATO2_L_B819
  if (!((byte)$E447 < 7)) goto UMINATO2_L_B819
  t11 = rand(50)
  if (t11) goto UMINATO2_L_B819
  t12 = RF_609A(1)
  t13 = UMINATO2_F_B776(UMINATO2_D_BC27)
  return t13
UMINATO2_L_B819:
  t14 = rand(100)
  if (!(g_player_gold < (t14 + 70))) goto UMINATO2_L_B83F
  t15 = rand(3)
  if (t15) goto UMINATO2_L_B83F
  t16 = RF_609A(1)
  t17 = UMINATO2_F_B776(UMINATO2_D_BC52)
  return t17
UMINATO2_L_B83F:
  if (!((byte)g_princess & 1)) goto UMINATO2_L_B861
  if (!(B[$EF52] != 9)) goto UMINATO2_L_B861
  if (!(B[$EF52] != 8)) goto UMINATO2_L_B861
  t18 = rand(3)
  if (!t18) goto UMINATO2_L_B86A
UMINATO2_L_B861:
  t19 = rand(30)
  if (t19) goto UMINATO2_L_B89D
UMINATO2_L_B86A:
  if (!((byte)g_port < 50)) goto UMINATO2_L_B89D
  t20 = RF_609A(1)
  t21 = rand(2)
  if (!t21) goto UMINATO2_L_B886
  goto UMINATO2_L_B897
UMINATO2_L_B886:
  t22 = rand(2)
  if (!t22) goto UMINATO2_L_B894
  goto UMINATO2_L_B897
UMINATO2_L_B894:
UMINATO2_L_B897:
  t23 = UMINATO2_F_B776(L)
  return t23
UMINATO2_L_B89D:
  t24 = RL_8502(0, &v8)
  if (!(t24 == 1)) goto UMINATO2_L_B8C0
  t25 = rand(15)
  if (t25) goto UMINATO2_L_B8C0
  t26 = RF_609A(1)
  t27 = UMINATO2_F_B776(UMINATO2_D_BCF8)
  return t27
UMINATO2_L_B8C0:
  t28 = RF_609A(1)
  t29 = RF_3619(UMINATO2_D_BD2E)
  return t29

