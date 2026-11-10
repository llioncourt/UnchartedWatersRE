HANTEI_F_B003:
  // frame 0
  t1 = HANTEI_F_B6E9()
  $F9A6 = t1
  return t1

HANTEI_F_B00F:
  // frame 0
  return (B[(byte)a0 + g_port_flags]) & 3

HANTEI_F_B01F:
  // frame 1
  (byte)v1 = $EA9B >> (((byte)a1 * 2) * 2)
  if (!((8 >> (byte)a0) & (byte)v1)) goto HANTEI_L_B046
  goto HANTEI_L_B047
HANTEI_L_B046:
HANTEI_L_B047:
  return

HANTEI_F_B048:
  // frame 0
  if (!((byte)g_princess & 8)) goto HANTEI_L_B075
  if (!((byte)g_princess & 1)) goto HANTEI_L_B075
  if (!((byte)(g_king_mission+2) == 1)) goto HANTEI_L_B075
  if (!((byte)(g_king_mission+3) == (byte)g_port)) goto HANTEI_L_B075
  goto HANTEI_L_B076
HANTEI_L_B075:
HANTEI_L_B076:
  return

HANTEI_F_B077:
  // frame 1
  (byte)v1 = $EA9D >> (((byte)a1 * 2) * 2)
  return (8 >> (byte)a0) & (byte)v1

HANTEI_F_B098:
  // frame 8
  $F9AE = 1
  $F302 = 15
  $F304 = 13
  t1 = $9C39(2, 0, 1)
  v8 = $F9B2
  v4 = 160
  v6 = 127
  t2 = sys9_metasprite_set(W[v8 + 144], v4, v6, 2, 3, v8 + 36, 0, 126)
  return t2

HANTEI_F_B0D2:
  // frame 7
  v5 = ((byte)a2 * 14) + $E6BC
  v2 = g_relations
  (byte)v3 = B[(B[((((byte)a0 * 2) * 2) + (byte)a1) + HANTEI_D_B856]) + v2]
  if (!((B[(((byte)a1 * 2) * 2) + $EEC0]) > (byte)v3)) goto HANTEI_L_B138
  goto HANTEI_L_B139
HANTEI_L_B138:
HANTEI_L_B139:
  v7 = L
  return v7

HANTEI_F_B13E:
  // frame 7
  v4 = ((byte)a2 * 14) + $E6BC
  v2 = g_relations
  (byte)v5 = B[(B[((((byte)a0 * 2) * 2) + (byte)a1) + HANTEI_D_B866]) + v2]
  if (!((byte)v5 < 50)) goto HANTEI_L_B190
  goto HANTEI_L_B191
HANTEI_L_B190:
HANTEI_L_B191:
  v7 = L
  return v7

HANTEI_F_B196:
  // frame 6
  t1 = rand(3)
  v4 = (t1 + 3) * 500
  if (g_player_gold) goto HANTEI_L_B1BF
  t2 = RF_60EE()
  t3 = RF_60B2()
  t4 = RF_2FB9(HANTEI_D_B7BE, 1)
  t5 = RF_472D()
  return 0
HANTEI_L_B1BF:
  t6 = RF_60EE()
  t7 = RF_60B2()
  t8 = RF_3C4E(HANTEI_D_B7C0, 1, g_player_gold)
  v2 = t8
  if (!(v2 == (-1))) goto HANTEI_L_B1DA
  return 0
HANTEI_L_B1DA:
  t9 = RF_4E29(2, 21, $F9A0, 1)
  if (!(v2 > v4)) goto HANTEI_L_B20C
  t10 = rand(4)
  if (!t10) goto HANTEI_L_B20C
  t11 = RF_60B2()
  t12 = RF_2FB9(HANTEI_D_B876, 1)
  t13 = RF_472D()
  g_player_gold = g_player_gold - v2
  return 1
HANTEI_L_B20C:
  t14 = RF_60B2()
  t15 = RF_2FB9(HANTEI_D_B8A8, 1)
  t16 = RF_472D()
  return 10

HANTEI_F_B21C:
  // frame 3
  v3 = 0
HANTEI_L_B224:
  t1 = RF_60EE()
  t2 = RF_60B2()
  t3 = RF_2FB9(HANTEI_D_B7C4, 1)
  t4 = RF_484C(8, 25, 8, 1, HANTEI_D_B8E4, 2, 1)
  (byte)v1 = t4
  if (!((byte)v1 != 255)) goto HANTEI_L_B224
  if ((byte)v1) goto HANTEI_L_B26F
  t5 = HANTEI_F_B196((byte)a0)
  v3 = t5
  if (!v3) goto HANTEI_L_B224
  if (!(v3 == 10)) goto HANTEI_L_B26C
  v3 = 0
HANTEI_L_B26C:
  return v3
HANTEI_L_B26F:
  t6 = RF_4E29(2, 21, $F9A0, 1)
  t7 = RF_60B2()
  if (!a1) goto HANTEI_L_B288
  goto HANTEI_L_B28C
HANTEI_L_B288:
HANTEI_L_B28C:
  t8 = RF_2FB9(HANTEI_D_B929, 1)
  t9 = RF_472D()
  return 0

HANTEI_F_B295:
  // frame 0
  t1 = HANTEI_F_B098()
  t2 = RF_60EE()
  t3 = RF_609A(1)
  t4 = RF_2FB9(HANTEI_D_B7C2, 1)
  t5 = RF_472D()
  t6 = RF_4E29(2, 21, $F9A0, 1)
  t7 = RF_60B2()
  t8 = RF_2FB9(HANTEI_D_B946, 1)
  t9 = RF_472D()
  t10 = HANTEI_F_B21C((byte)a0, a1)
  if (!t10) goto HANTEI_L_B31E
  t11 = RF_60CE(0, 0)
  t12 = RF_60B2()
  t13 = RF_2FB9(HANTEI_D_B982, 1)
  t14 = RF_472D()
  t15 = RF_60EE()
  t16 = RF_60B2()
  t17 = RF_2FB9(HANTEI_D_B9AF, 1)
  t18 = RF_472D()
  t19 = sys58_sprites_hide(16, 6)
  (byte)$FB84 = 255
  t20 = sys36_memset_long(126, $F9B2, 0, 462)
  $F308 = 2
  return 0
HANTEI_L_B31E:
  t21 = RF_60CE(0, 0)
  t22 = RF_609A(1)
  t23 = RF_4B44(HANTEI_D_B9D2)
  return 1

HANTEI_F_B332:
  // frame 7
  t1 = RL_8502(0, &v7)
  (byte)v1 = t1
  goto HANTEI_L_B367
HANTEI_L_B347:
  t2 = sys36_memset_long(126, ((B[(byte)v2 + (&v7)]) * 24) + $E9AC, 0, 10)
HANTEI_L_B367:
  (byte)v2 = L
  if ((byte)v2 < (byte)v1) goto HANTEI_L_B347
  return (byte)v2 < (byte)v1

HANTEI_F_B377:
  // frame 0
  t1 = RF_60CE(0, 0)
  t2 = RF_609A(1)
  t3 = RF_2FB9(HANTEI_D_B9F0, 1)
  g_player_gold = g_player_gold / 10
  t4 = HANTEI_F_B332()
  t5 = RF_472D()
  return t5

HANTEI_F_B39F:
  // frame 2
  t1 = RF_60CE(0, 0)
  t2 = RF_609A(1)
  t3 = RF_2FB9(HANTEI_D_BA12, 1)
  t4 = RF_472D()
  t5 = rand(120)
  if (!((((byte)$E446 * 2) + (byte)(g_hero_stats+4)) > t5)) goto HANTEI_L_B3E6
  t6 = RF_60EE()
  t7 = RF_609A(1)
  t8 = RF_2FB9(HANTEI_D_BA3A, 1)
  t9 = RF_472D()
  goto HANTEI_L_B41C
HANTEI_L_B3E6:
  t10 = RF_60EE()
  t11 = RF_609A(1)
  t12 = RF_2FB9(HANTEI_D_BA47, 1)
  t13 = RF_472D()
  t14 = RF_4E29(2, 21, $F9A0, 1)
  t15 = RF_60B2()
  t16 = RF_2FB9(HANTEI_D_BA61, 0)
  $F18A = $F18A - 1
  t17 = RF_472D()
  t18 = HANTEI_F_B377()
HANTEI_L_B41C:
  return 1

HANTEI_F_B41E:
  // frame 6
  v6 = ((byte)$FB81 * 14) + $E6BC
  v4 = ((B[(((byte)$FB80 * 2) * 2) + $EEC0]) * (B[(byte)$FB80 + v6])) / 5
  t1 = rand(v4)
  v4 = (t1 + v4) + 100
  if (g_player_gold) goto HANTEI_L_B47B
  t2 = RF_60EE()
  t3 = RF_609A(1)
  t4 = RF_2FB9(HANTEI_D_BA98, 1)
  t5 = RF_472D()
  t6 = RF_4E29(2, 21, $F9A0, 1)
  t7 = RF_60B2()
  goto HANTEI_L_B4C9
HANTEI_L_B47B:
  t8 = RF_60EE()
  t9 = RF_60B2()
  t10 = RF_3C4E(HANTEI_D_BAE8, 1, g_player_gold, 1)
  v2 = t10
  if (!(v2 == (-1))) goto HANTEI_L_B497
  return 0
HANTEI_L_B497:
  t11 = RF_4E29(2, 21, $F9A0, 1)
  if (!(v2 > v4)) goto HANTEI_L_B4C2
  t12 = RF_60B2()
  t13 = RF_2FB9(HANTEI_D_BB01, 1)
  t14 = RF_472D()
  g_player_gold = g_player_gold - v2
  goto HANTEI_L_B4D3
HANTEI_L_B4C2:
  t15 = RF_60B2()
HANTEI_L_B4C9:
  t16 = RF_2FB9(HANTEI_D_BB19, 1)
  t17 = RF_472D()
  t18 = HANTEI_F_B377()
HANTEI_L_B4D3:
  return 1

HANTEI_F_B4D5:
  // frame 0
  t1 = rand(3)
  if (t1) goto HANTEI_L_B4FE
  t2 = RF_4E29(2, 21, $F9A0, 1)
  t3 = RF_60B2()
  t4 = RF_2FB9(HANTEI_D_BB42, 1)
  t5 = RF_472D()
  goto HANTEI_L_B51A
HANTEI_L_B4FE:
  t6 = RF_4E29(2, 21, $F9A0, 1)
  t7 = RF_60B2()
  t8 = RF_2FB9(HANTEI_D_BB7C, 1)
  t9 = RF_472D()
  t10 = HANTEI_F_B377()
HANTEI_L_B51A:
  return 1

HANTEI_F_B51C:
  // frame 3
  t1 = RF_21EA(18, 1)
  t2 = HANTEI_F_B098()
  t3 = RF_60EE()
  t4 = RF_609A(1)
  t5 = RF_2FB9(HANTEI_D_BBEE, 1)
  t6 = RF_472D()
  t7 = RF_4E29(2, 21, $F9A0, 1)
  t8 = RF_60B2()
  $F18A = $F18A + 1
  t9 = RF_40DE(g_player_name_ptr)
  t10 = RF_3608(HANTEI_D_BC26, W[((byte)a0 * 2) + HANTEI_D_BBB1])
  $F18A = $F18A - 1
  t11 = RF_472D()
  v3 = 0
HANTEI_L_B578:
  t12 = RF_60EE()
  t13 = RF_609A(1)
  t14 = RF_2FB9(HANTEI_D_BC52, 1)
  t15 = RF_484C(8, 23, 6, 2, HANTEI_D_BBB7, 3, 2)
  (byte)v1 = t15
  if (!((byte)v1 != 255)) goto HANTEI_L_B5B4
  t16 = (*(W[((byte)v1 * 2) + HANTEI_D_BBBD]))(2)
  v3 = t16
HANTEI_L_B5B4:
  if (!v3) goto HANTEI_L_B578
  t17 = RF_60CE(0, 0)
  t18 = RF_609A(1)
  t19 = RF_4B44(HANTEI_D_BC64)
  t20 = RF_2281()
  return t20

HANTEI_F_B5CF:
  // frame 8
  t1 = RF_60EE()
  v2 = g_player_items & 7
  if (!((byte)g_princess & 1)) goto HANTEI_L_B5FF
  if (!(B[$EF52] != 9)) goto HANTEI_L_B5FF
  if (!(B[$EF52] != 8)) goto HANTEI_L_B5FF
  t2 = rand(3)
  if (!t2) goto HANTEI_L_B608
HANTEI_L_B5FF:
  t3 = rand(20)
  if (t3) goto HANTEI_L_B62C
HANTEI_L_B608:
  if (!((byte)g_port < 50)) goto HANTEI_L_B62C
  t4 = RF_609A(1)
  t5 = rand(2)
  if (!t5) goto HANTEI_L_B625
  goto HANTEI_L_B628
HANTEI_L_B625:
HANTEI_L_B628:
  goto HANTEI_L_B6E4
HANTEI_L_B62C:
  if ((byte)g_port) goto HANTEI_L_B64C
  if ((byte)$E442) goto HANTEI_L_B64C
  t6 = rand(10)
  if (t6) goto HANTEI_L_B64C
  t7 = RF_609A(1)
  goto HANTEI_L_B6E4
HANTEI_L_B64C:
  t8 = HANTEI_F_B00F((byte)g_port)
  (byte)v3 = t8
  t9 = HANTEI_F_B01F(0, (byte)v3)
  if (!(((byte)v3 > 1) & t9)) goto HANTEI_L_B68D
  t10 = rand(2)
  if (!t10) goto HANTEI_L_B68D
  t11 = RF_609A(1)
  t12 = rand(2)
  if (!t12) goto HANTEI_L_B687
  goto HANTEI_L_B628
HANTEI_L_B687:
  goto HANTEI_L_B628
HANTEI_L_B68D:
  if (!((byte)$E447 < 5)) goto HANTEI_L_B6DB
  t13 = rand(12)
  if (t13) goto HANTEI_L_B6DB
  t14 = RF_609A(1)
  t15 = RF_2FB9(HANTEI_D_BDAC, 1)
  t16 = RF_472D()
  t17 = RF_60B2()
  t18 = rand(3)
  switch (t18) {3 cases}

HANTEI_F_B6E9:
  // frame 10
  v10 = g_fleets
  t1 = $8747(B[v10], B[v10 + 1], B[v10 + 2], B[v10 + 3])
  (byte)v6 = t1
  (byte)$FB81 = t1
  v8 = 0
  t2 = HANTEI_F_B00F((byte)v6)
  (byte)v5 = t2
  if (!((byte)v5 == 2)) goto HANTEI_L_B726
  goto HANTEI_L_B731
HANTEI_L_B726:
  if (!((byte)v5 == 3)) goto HANTEI_L_B734
HANTEI_L_B731:
  $F9A0 = L
HANTEI_L_B734:
  (byte)$FB80 = (byte)v5 - 1
  if (!((byte)v5 > 1)) goto HANTEI_L_B7B4
  t3 = HANTEI_F_B01F(0, (byte)v5 - 1)
  if (!t3) goto HANTEI_L_B7B4
  t4 = HANTEI_F_B0D2(0, (byte)v5 - 1, (byte)v6)
  v2 = t4
  t5 = rand(300)
  if (!(t5 >= v2)) goto HANTEI_L_B7A9
  t6 = HANTEI_F_B048()
  if (!t6) goto HANTEI_L_B7B4
  t7 = HANTEI_F_B077(0, (byte)v5 - 1)
  if (!t7) goto HANTEI_L_B7A5
  t8 = HANTEI_F_B13E(0, (byte)v5 - 1, (byte)v6)
  v4 = t8
  t9 = rand(100)
  if (!(t9 < v4)) goto HANTEI_L_B7B4
HANTEI_L_B799:
  t10 = HANTEI_F_B295((byte)v5 - 1, 0)
  goto HANTEI_L_B7B3
HANTEI_L_B7A5:
  goto HANTEI_L_B799
HANTEI_L_B7A9:
  t11 = HANTEI_F_B51C((byte)v5 - 1)
HANTEI_L_B7B3:
  v8 = L
HANTEI_L_B7B4:
  if (v8) goto HANTEI_L_B7BB
  t12 = HANTEI_F_B5CF()
HANTEI_L_B7BB:
  return v8

