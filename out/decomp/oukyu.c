OUKYU_F_B003:
  // frame 0
  t1 = palace_enter()
  $F9A6 = t1
  return t1

OUKYU_F_B00F:
  // frame 1
  t1 = RF_60B2()
  t2 = RF_2FB9(OUKYU_D_C73D, 1)
  t3 = RF_484C(8, 23, 7, 1, OUKYU_D_C72A, 2, 1)
  (byte)v1 = t3
  if (!((byte)v1 != 255)) goto OUKYU_L_B045
  t4 = (*(W[((byte)v1 * 2) + OUKYU_D_C72E]))()
  return t4
OUKYU_L_B045:
  return 0

palace_enter:
  // frame 4
  v4 = 0
  t1 = RF_60CE(10, 1)
  if ((byte)g_port) goto OUKYU_L_B0B2
  if (!((byte)g_princess & 1)) goto OUKYU_L_B09E
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_B09E
  if ((byte)(g_king_mission+1)) goto OUKYU_L_B09E
  t2 = RF_609A(1)
  t3 = RF_2FB9(OUKYU_D_C785, 0)
  t4 = RF_40DE(g_player_name_ptr)
  t5 = RF_2FB9(OUKYU_D_C797, 0)
  $F18A = $F18A - 1
  t6 = RF_472D()
OUKYU_L_B09A:
  goto OUKYU_L_B0E3
OUKYU_L_B09E:
  if ((byte)g_title) goto OUKYU_L_B09A
  t7 = RF_609A(1)
  t8 = RF_4B44(OUKYU_D_C799)
  return 0
OUKYU_L_B0B2:
  t9 = rand((B[(((byte)g_port * 2) * 2) + $EEC0]) + 1)
  if (t9 > 20) goto OUKYU_L_B0D4
  t10 = rand((byte)g_title + 1)
  if (t10) goto OUKYU_L_B0E2
OUKYU_L_B0D4:
  t11 = RF_609A(1)
  t12 = RF_4B44(OUKYU_D_C7CA)
  return 0
OUKYU_L_B0E2:
OUKYU_L_B0E3:
  (byte)v2 = L
OUKYU_L_B0E6:
  t13 = RF_21EA(11, 1)
  t14 = RF_60CE(10, 1)
  t15 = RF_60B2()
  t16 = RF_2FB9(OUKYU_D_C809, 1)
  t17 = RF_484C(8, 23, 13, 2, OUKYU_D_C74F, (byte)v2, 2)
  (byte)v1 = t17
  if (!((byte)v1 != 255)) goto OUKYU_L_B126
  t18 = (*(W[((byte)v1 * 2) + OUKYU_D_C757]))()
  v4 = t18
OUKYU_L_B126:
  if ((byte)v1 == 255) goto OUKYU_L_B134
  if (!v4) goto OUKYU_L_B0E6
OUKYU_L_B134:
  if (!(byte)g_ending) goto OUKYU_L_B13B
  return (byte)g_ending
OUKYU_L_B13B:
  t19 = RF_2281()
  return v4

OUKYU_F_B140:
  // frame 21
  t1 = RL_8502(0, &v5)
  v15 = t1
  v19 = 0
  v7 = &v5
  v9 = (&v5) + v15
  goto OUKYU_L_B1A6
OUKYU_L_B160:
  v21 = (B[v7] * 24) + g_cargo
  v11 = v21 + 1
  v17 = v21 + 6
  v13 = v11 + 5
  goto OUKYU_L_B199
OUKYU_L_B17E:
  if (!(B[v11] == a0)) goto OUKYU_L_B18F
  v19 = v19 + W[v17]
OUKYU_L_B18F:
  v17 = v17 + 2
  v11 = v11 + 1
OUKYU_L_B199:
  if (v11 < v13) goto OUKYU_L_B17E
  v7 = v7 + 1
OUKYU_L_B1A6:
  if (v7 < v9) goto OUKYU_L_B160
  return v19

OUKYU_F_B1B1:
  // frame 10
  v6 = (byte)(g_king_mission+3)
  v8 = ((byte)g_port * 5) + $150A
  v10 = ((byte)g_port * 14) + g_ports
  v2 = (B[v10 + 11]) + 50
  t1 = RL_884E(v8)
  t2 = RL_8898(((t1 * 88) + (v6 * 2)) + $1888)
  v4 = t2
  v4 = (v4 * v2) / 100
  t3 = RL_884E(v8 + 1)
  if (!(t3 == v6)) goto OUKYU_L_B22A
  v4 = ((((W[v10 + 12]) * v2) / 100) / 2) + 1
OUKYU_L_B22A:
  return v4

OUKYU_F_B22C:
  // frame 0
  return g_player_name_ptr

OUKYU_F_B235:
  // frame 0
  return (byte)g_princess & 8

OUKYU_F_B240:
  // frame 0
  return (byte)g_princess & 2

OUKYU_F_B24B:
  // frame 0
  if (!((byte)g_princess & 1)) goto OUKYU_L_B26A
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_B26A
  if (!(byte)(g_king_mission+1)) goto OUKYU_L_B26E
OUKYU_L_B26A:
  goto OUKYU_L_B26F
OUKYU_L_B26E:
OUKYU_L_B26F:
  return

OUKYU_F_B270:
  // frame 0
  t1 = OUKYU_F_B235()
  if (t1) goto OUKYU_L_B287
  t2 = OUKYU_F_B240()
  if (t2) goto OUKYU_L_B287
  t3 = OUKYU_F_B24B()
  if (t3) goto OUKYU_L_B28B
OUKYU_L_B287:
  goto OUKYU_L_B28C
OUKYU_L_B28B:
OUKYU_L_B28C:
  return

OUKYU_F_B28D:
  // frame 0
  t1 = OUKYU_F_B235()
  if (!t1) goto OUKYU_L_B2A4
  t2 = OUKYU_F_B240()
  if (t2) goto OUKYU_L_B2A4
  t3 = OUKYU_F_B24B()
  if (t3) goto OUKYU_L_B2A8
OUKYU_L_B2A4:
  goto OUKYU_L_B2A9
OUKYU_L_B2A8:
OUKYU_L_B2A9:
  return

OUKYU_F_B2AA:
  // frame 0
  t1 = OUKYU_F_B235()
  if (!t1) goto OUKYU_L_B2C1
  t2 = OUKYU_F_B240()
  if (!t2) goto OUKYU_L_B2C1
  t3 = OUKYU_F_B24B()
  if (t3) goto OUKYU_L_B2C5
OUKYU_L_B2C1:
  goto OUKYU_L_B2C6
OUKYU_L_B2C5:
OUKYU_L_B2C6:
  return

OUKYU_F_B2C7:
  // frame 0
  t1 = RF_60CE(1, 1)
  return t1

palace_mission_princess:
  // frame 2
  v2 = g_fame
  t1 = OUKYU_F_B2AA()
  if (!t1) goto OUKYU_L_B2EA
  (byte)g_ending = 255
  return 1
OUKYU_L_B2EA:
  t2 = OUKYU_F_B28D()
  if (!t2) goto OUKYU_L_B30A
  t3 = OUKYU_F_B2C7()
  t4 = RF_60B2()
  t5 = RF_2FB9(OUKYU_D_C820, 0)
  $F18A = $F18A - 1
  t6 = RF_472D()
  return 1
OUKYU_L_B30A:
  t7 = OUKYU_F_B270()
  if (!t7) goto OUKYU_L_B354
  t8 = OUKYU_F_B2C7()
  t9 = RF_60B2()
  t10 = RF_2FB9(OUKYU_D_C860, 0)
  $F18A = $F18A - 1
  t11 = RF_472D()
  t12 = RF_60B2()
  t13 = RF_2FB9(OUKYU_D_C8AC, 0)
  $F18A = $F18A - 1
  t14 = RF_472D()
  t15 = RF_60B2()
  t16 = RF_2FB9(OUKYU_D_C8FD, 1)
  (byte)g_princess = (byte)g_princess | 8
  t17 = RF_472D()
OUKYU_L_B354:
  return 1

OUKYU_F_B356:
  // frame 4
  v4 = g_fame
  v2 = g_player_items
  if (!((byte)g_princess & 8)) goto OUKYU_L_B434
  if (!((byte)g_princess & 1)) goto OUKYU_L_B434
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_B434
  if ((byte)(g_king_mission+1)) goto OUKYU_L_B434
  if (!((W[v2 + 2]) & $8000)) goto OUKYU_L_B434
  t1 = OUKYU_F_B2C7()
  t2 = RF_609A(1)
  t3 = RF_2FB9(OUKYU_D_C917, 0)
  t4 = RF_40C3((byte)(g_king_mission+3))
  t5 = RF_40DE(t4)
  t6 = RF_2FB9(OUKYU_D_C92C, 0)
  $F18A = $F18A - 1
  t7 = RF_472D()
  if (!((byte)g_title < 9)) goto OUKYU_L_B3DD
  t8 = RF_60B2()
  t9 = RF_2FB9(OUKYU_D_C944, 1)
  (byte)g_title = (byte)g_title + 1
  t10 = RF_472D()
OUKYU_L_B3DD:
  t11 = rand(3)
  g_king_mission+6 = ((t11 + 3) * (byte)g_title) * $03E8
  t12 = RF_60B2()
  t13 = RF_2FB9(OUKYU_D_C965, 1)
  t14 = RF_472D()
  t15 = RL_8962((g_king_mission+6 / $03E8) + g_palace_savings, $2710)
  g_palace_savings = t15
  W[(((byte)(g_king_mission+3) >> 4) * 2) + v2] = (W[(((byte)(g_king_mission+3) >> 4) * 2) + v2]) & ((1 << ((byte)(g_king_mission+3) & 15)) ^ (-1))
  (byte)g_princess = 0
  return 1
OUKYU_L_B434:
  if (!((byte)g_princess & 8)) goto OUKYU_L_B4B0
  if (!((byte)g_princess & 1)) goto OUKYU_L_B4B0
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_B4B0
  if ((W[v2 + 2]) & $8000) goto OUKYU_L_B4B0
  if ((byte)(g_king_mission+1)) goto OUKYU_L_B4B0
  t16 = OUKYU_F_B2C7()
  t17 = RF_609A(1)
  t18 = RF_2FB9(OUKYU_D_C990, 1)
  t19 = RF_3CFF()
  if (!t19) goto OUKYU_L_B486
  t20 = RF_60B2()
  t21 = RF_2FB9(OUKYU_D_C9C6, 1)
  t22 = RF_472D()
  return 1
OUKYU_L_B486:
  t23 = RF_60B2()
  t24 = RF_2FB9(OUKYU_D_C9E6, 1)
  t25 = RF_472D()
  (byte)g_princess = 0
  t26 = rand(v4 / 10)
  g_fame = g_fame - (t26 + (v4 / 10))
  return 0
OUKYU_L_B4B0:
  if ((byte)g_princess & 8) goto OUKYU_L_B544
  if (!((byte)g_princess & 1)) goto OUKYU_L_B544
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_B544
  if ((byte)(g_king_mission+1)) goto OUKYU_L_B544
  t27 = OUKYU_F_B2C7()
  t28 = RF_609A(1)
  t29 = RF_2FB9(OUKYU_D_CA0A, 1)
  t30 = RF_472D()
  t31 = RF_60B2()
  t32 = RF_2FB9(OUKYU_D_CA39, 1)
  t33 = RF_2F8F(8, 26)
  t34 = RF_40C3((byte)(g_king_mission+3))
  t35 = RF_40DE(t34)
  $F18A = $F18A - 1
  t36 = RF_472D()
  t37 = RF_60B2()
  t38 = RF_2FB9(OUKYU_D_CA62, 1)
  t39 = RF_472D()
  t40 = RF_60B2()
  t41 = RF_2FB9(OUKYU_D_CA92, 1)
  t42 = RF_3CFF()
  if (!t42) goto OUKYU_L_B546
  t43 = RF_60B2()
  t44 = RF_2FB9(OUKYU_D_CABE, 1)
  (byte)g_princess = (byte)g_princess | 8
  t45 = RF_472D()
OUKYU_L_B544:
  return 1
OUKYU_L_B546:
  t46 = RF_60B2()
  t47 = RF_2FB9(OUKYU_D_CADA, 1)
  t48 = rand(v4 / 10)
  g_fame = g_fame - (t48 + (v4 / 10))
  (byte)g_princess = 0
  t49 = RF_472D()
  return 0

OUKYU_F_B570:
  // frame 1
  t1 = RF_40DE(W[(((byte)a0 + 20) * 7) + g_player_name_ptr])
  (byte)v1 = ((byte)a0 - 1) / 5
  if (!((byte)v1 == 3)) goto OUKYU_L_B59E
  goto OUKYU_L_B5A2
OUKYU_L_B59E:
OUKYU_L_B5A2:
  t2 = RF_2FB9(OUKYU_D_CAEC, 0)
  t3 = RL_8875(((byte)v1 * 2) + $1B24)
  t4 = RF_40DE(t3)
  return t4

OUKYU_F_B5B9:
  // frame 2
  v2 = g_fame
  t1 = OUKYU_F_B2AA()
  if (!t1) goto OUKYU_L_B635
  t2 = OUKYU_F_B2C7()
  t3 = RF_60B2()
  t4 = RF_2FB9(OUKYU_D_CAF3, 1)
  if (!((byte)g_title < 9)) goto OUKYU_L_B5F5
  t5 = RF_472D()
  t6 = RF_60B2()
  t7 = RF_2FB9(OUKYU_D_CB1B, 1)
  (byte)g_title = (byte)g_title + 1
OUKYU_L_B5F5:
  t8 = rand(3)
  g_king_mission+6 = ((t8 + 3) * (byte)g_title) * $03E8
  t9 = RF_472D()
  t10 = RF_60B2()
  t11 = RF_2FB9(OUKYU_D_CB3B, 1)
  t12 = RL_8962((g_king_mission+6 / $03E8) + g_palace_savings, $2710)
  g_palace_savings = t12
  (byte)g_princess = 0
  t13 = RF_472D()
  return 1
OUKYU_L_B635:
  t14 = OUKYU_F_B28D()
  if (!t14) goto OUKYU_L_B689
  t15 = OUKYU_F_B2C7()
  t16 = RF_60B2()
  t17 = RF_2FB9(OUKYU_D_CB66, 1)
  t18 = RF_3CFF()
  if (!t18) goto OUKYU_L_B65F
  t19 = RF_60B2()
  t20 = RF_2FB9(OUKYU_D_CB9A, 1)
  t21 = RF_472D()
  return 1
OUKYU_L_B65F:
  t22 = RF_60B2()
  t23 = RF_2FB9(OUKYU_D_CBCB, 1)
  t24 = RF_472D()
  (byte)g_princess = 0
  t25 = rand(v2 / 10)
  g_fame = g_fame - (t25 + (v2 / 10))
  return 0
OUKYU_L_B689:
  t26 = OUKYU_F_B270()
  if (!t26) goto OUKYU_L_B6ED
  t27 = OUKYU_F_B2C7()
  t28 = RF_60B2()
  t29 = RF_2FB9(OUKYU_D_CBE7, 1)
  t30 = RF_472D()
  t31 = RF_60B2()
  t32 = RF_2FB9(OUKYU_D_CC16, 0)
  t33 = OUKYU_F_B570((byte)(g_king_mission+3))
  t34 = RF_2FB9(OUKYU_D_CC21, 0)
  $F18A = $F18A - 1
  t35 = RF_472D()
  t36 = RF_60B2()
  t37 = RF_2FB9(OUKYU_D_CC40, 1)
  t38 = RF_3CFF()
  if (!t38) goto OUKYU_L_B6EF
  t39 = RF_60B2()
  t40 = RF_2FB9(OUKYU_D_CC7A, 1)
  (byte)g_princess = (byte)g_princess | 8
  t41 = RF_472D()
OUKYU_L_B6ED:
  return 1
OUKYU_L_B6EF:
  t42 = RF_60B2()
  t43 = RF_2FB9(OUKYU_D_CC90, 1)
  (byte)g_princess = 0
  t44 = RF_472D()
  t45 = rand(v2 / 10)
  g_fame = g_fame - (t45 + (v2 / 10))
  return 0

OUKYU_F_B719:
  // frame 0
  t1 = RF_60CE((byte)g_port + 1, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(OUKYU_D_CCA5, 0)
  t4 = OUKYU_F_B22C()
  t5 = RF_40DE(t4)
  t6 = RF_2FB9(OUKYU_D_CCBC, 0)
  $F18A = $F18A - 1
  t7 = RF_472D()
  t8 = RF_60CE(0, 0)
  t9 = RF_609A(1)
  t10 = RF_2FB9(OUKYU_D_CCD5, 1)
  t11 = RF_472D()
  t12 = RF_60B2()
  t13 = RF_2FB9(OUKYU_D_CD0E, 1)
  t14 = RF_472D()
  t15 = RF_60CE((byte)g_port + 1, 1)
  t16 = RF_60B2()
  t17 = RF_2FB9(OUKYU_D_CD3D, 0)
  $F18A = $F18A - 1
  t18 = RF_472D()
  (byte)g_princess = (byte)g_princess | 2
  return (byte)g_princess | 2

palace_mission_letter:
  // frame 2
  v2 = g_fame
  t1 = OUKYU_F_B2AA()
  if (!t1) goto OUKYU_L_B818
  t2 = OUKYU_F_B2C7()
  t3 = RF_60B2()
  t4 = RF_2FB9(OUKYU_D_CD7F, 1)
  if (!((byte)g_title < 9)) goto OUKYU_L_B7D8
  t5 = RF_472D()
  t6 = RF_60B2()
  t7 = RF_2FB9(OUKYU_D_CDAB, 1)
  (byte)g_title = (byte)g_title + 1
OUKYU_L_B7D8:
  t8 = rand(3)
  g_king_mission+6 = ((t8 + 3) * (byte)g_title) * $03E8
  t9 = RF_472D()
  t10 = RF_60B2()
  t11 = RF_2FB9(OUKYU_D_CDCA, 1)
  t12 = RL_8962((g_king_mission+6 / $03E8) + g_palace_savings, $2710)
  g_palace_savings = t12
  (byte)g_princess = 0
  t13 = RF_472D()
  return 1
OUKYU_L_B818:
  t14 = OUKYU_F_B28D()
  if (!t14) goto OUKYU_L_B86C
  t15 = OUKYU_F_B2C7()
  t16 = RF_60B2()
  t17 = RF_2FB9(OUKYU_D_CDFA, 1)
  t18 = RF_3CFF()
  if (!t18) goto OUKYU_L_B842
  t19 = RF_60B2()
  t20 = RF_2FB9(OUKYU_D_CE33, 1)
  t21 = RF_472D()
  return 1
OUKYU_L_B842:
  t22 = RF_60B2()
  t23 = RF_2FB9(OUKYU_D_CE4C, 1)
  t24 = RF_472D()
  (byte)g_princess = 0
  t25 = rand(v2 / 10)
  g_fame = g_fame - (t25 + (v2 / 10))
  return 0
OUKYU_L_B86C:
  t26 = OUKYU_F_B270()
  if (!t26) goto OUKYU_L_B8F1
  t27 = OUKYU_F_B2C7()
  t28 = RF_60B2()
  t29 = RF_2FB9(OUKYU_D_CE7A, 1)
  t30 = RF_472D()
  t31 = RF_60B2()
  t32 = RF_2FB9(OUKYU_D_CEAF, 0)
  if (!((byte)(g_king_mission+3) == 2)) goto OUKYU_L_B89D
  goto OUKYU_L_B8A0
OUKYU_L_B89D:
OUKYU_L_B8A0:
  t33 = RF_2FB9(L, 0)
  t34 = RF_2FB9(OUKYU_D_CEEF, 0)
  t35 = RL_8875(((byte)(g_king_mission+3) * 2) + $1B24)
  t36 = RF_40DE(t35)
  $F18A = $F18A - 1
  t37 = RF_472D()
  t38 = RF_60B2()
  t39 = RF_2FB9(OUKYU_D_CEF4, 1)
  t40 = RF_3CFF()
  if (!t40) goto OUKYU_L_B8F3
  t41 = RF_60B2()
  t42 = RF_2FB9(OUKYU_D_CF13, 1)
  (byte)g_princess = (byte)g_princess | 8
  t43 = RF_472D()
OUKYU_L_B8F1:
  return 1
OUKYU_L_B8F3:
  t44 = RF_60B2()
  t45 = RF_2FB9(OUKYU_D_CF2B, 1)
  (byte)g_princess = 0
  t46 = RF_472D()
  t47 = rand(v2 / 10)
  g_fame = g_fame - (t47 + (v2 / 10))
  return 0

OUKYU_F_B91D:
  // frame 15
  t1 = RL_8502(0, &v8)
  (byte)v3 = t1
  goto OUKYU_L_B9A3
OUKYU_L_B932:
  (byte)v11 = B[(byte)v9 + (&v8)]
  v13 = ((byte)v11 * 24) + $E9A7
  v15 = ((byte)v11 * 24) + $E9AC
  goto OUKYU_L_B994
OUKYU_L_B95B:
  if (!((B[(byte)v10 + v13]) == (byte)a0)) goto OUKYU_L_B990
  if (!a1) goto OUKYU_L_B990
  t2 = RL_8962(W[((byte)v10 * 2) + v15], a1)
  v2 = t2
  W[((byte)v10 * 2) + v15] = (W[((byte)v10 * 2) + v15]) - v2
  a1 = a1 - v2
OUKYU_L_B990:
OUKYU_L_B994:
  (byte)v10 = L
  if ((byte)v10 < 5) goto OUKYU_L_B95B
OUKYU_L_B9A3:
  (byte)v9 = L
  if ((byte)v9 < (byte)v3) goto OUKYU_L_B932
  return (byte)v9 < (byte)v3

palace_mission_crates:
  // frame 10
  v6 = g_fame
  t1 = OUKYU_F_B28D()
  if (!t1) goto OUKYU_L_BA8B
  t2 = OUKYU_F_B140((byte)(g_king_mission+3))
  if (!t2) goto OUKYU_L_BA8B
  t3 = RF_60CE(1, 1)
  t4 = RF_60B2()
  t5 = RF_2FB9(OUKYU_D_CF48, 1)
  t6 = RF_472D()
  t7 = RF_60B2()
  t8 = OUKYU_F_B140((byte)(g_king_mission+3))
  if (!(t8 < g_king_mission+4)) goto OUKYU_L_BA3A
  t9 = RF_2FB9(OUKYU_D_CF6F, 1)
  t10 = RF_3CFF()
  if (!t10) goto OUKYU_L_BA10
  t11 = RF_60B2()
  t12 = RF_2FB9(OUKYU_D_CFA5, 1)
  t13 = RF_472D()
  return t13
OUKYU_L_BA10:
  t14 = RF_60B2()
  t15 = RF_2FB9(OUKYU_D_CFC7, 1)
  t16 = RF_472D()
  t17 = rand(v6 / 10)
  g_fame = g_fame - (t17 + (v6 / 10))
  (byte)g_princess = 0
  return 0
OUKYU_L_BA3A:
  t18 = OUKYU_F_B91D((byte)(g_king_mission+3), g_king_mission+4)
  t19 = RF_2FB9(OUKYU_D_CFF1, 1)
  if (!((byte)g_title < 9)) goto OUKYU_L_BA5E
  (byte)g_title = (byte)g_title + 1
OUKYU_L_BA5E:
  t20 = RF_472D()
  t21 = RF_60B2()
  t22 = RF_2FB9(OUKYU_D_D015, 1)
  t23 = RL_8962((g_king_mission+6 / $03E8) + g_palace_savings, $2710)
  g_palace_savings = t23
  (byte)g_princess = 0
  t24 = RF_472D()
  return 1
OUKYU_L_BA8B:
  t25 = OUKYU_F_B28D()
  if (!t25) goto OUKYU_L_BADF
  t26 = OUKYU_F_B2C7()
  t27 = RF_60B2()
  t28 = RF_2FB9(OUKYU_D_D04A, 1)
  t29 = RF_3CFF()
  if (!t29) goto OUKYU_L_BAB5
  t30 = RF_60B2()
  t31 = RF_2FB9(OUKYU_D_D07C, 1)
  t32 = RF_472D()
  return 1
OUKYU_L_BAB5:
  t33 = RF_60B2()
  t34 = RF_2FB9(OUKYU_D_D08E, 1)
  t35 = RF_472D()
  t36 = rand(v6 / 10)
  g_fame = g_fame - (t36 + (v6 / 10))
  (byte)g_princess = 0
  return 0
OUKYU_L_BADF:
  t37 = OUKYU_F_B270()
  if (!t37) goto OUKYU_L_BC48
  t38 = OUKYU_F_B1B1()
  v4 = t38
  t39 = OUKYU_F_B2C7()
  t40 = RF_60B2()
  t41 = RF_2FB9(OUKYU_D_D0B3, 1)
  t42 = RF_472D()
  t43 = RF_60B2()
  t44 = RF_2FB9(OUKYU_D_D0EB, 0)
  t45 = RL_8875(((byte)(g_king_mission+3) * 2) + $1B49)
  t46 = RF_40DE(t45)
  $F18A = $F18A - 1
  t47 = RF_472D()
  t48 = rand(5)
  t49 = RF_4190(0)
  t50 = RF_40A5((B[(t49 * 7) + $EB98]) & 15)
  t51 = RL_8898(t50 + 18)
  t52 = RL_8962((t51 / 2) + t48, (((byte)g_title + 1) * $07D0) / v4)
  v2 = t52
  g_king_mission+4 = v2
  g_king_mission+6 = ((byte)g_title + 1) * $07D0
  t53 = OUKYU_F_B140((byte)(g_king_mission+3))
  if (!t53) goto OUKYU_L_BC74
  t54 = RF_60B2()
  t55 = OUKYU_F_B140((byte)(g_king_mission+3))
  t56 = RF_3619(OUKYU_D_D117, t55)
  t57 = RF_472D()
  t58 = RF_60B2()
  t59 = RF_3619(OUKYU_D_D14D, v2)
  t60 = RF_3CFF()
  if (!t60) goto OUKYU_L_BC4A
  t61 = RF_60B2()
  t62 = RF_2FB9(OUKYU_D_D182, 1)
  t63 = RF_472D()
  t64 = RF_60B2()
  t65 = RF_2FB9(OUKYU_D_D1BF, 1)
  t66 = OUKYU_F_B140((byte)(g_king_mission+3))
  v10 = (t66 * v4) + g_player_gold
  if (!(v10 > 61000)) goto OUKYU_L_BC0C
  t67 = RL_8962(((v10 + 4294907296) / 1000) + g_palace_savings, $2710)
  g_palace_savings = t67
  goto OUKYU_L_BC28
OUKYU_L_BC0C:
  t68 = OUKYU_F_B140((byte)(g_king_mission+3))
  t69 = RL_8962($EA60 - g_player_gold, t68 * v4)
OUKYU_L_BC28:
  g_player_gold = L
  t70 = OUKYU_F_B140((byte)(g_king_mission+3))
  t71 = OUKYU_F_B91D((byte)(g_king_mission+3), t70)
OUKYU_L_BC3C:
  (byte)g_princess = (byte)g_princess | 8
  t72 = RF_472D()
OUKYU_L_BC48:
  return 1
OUKYU_L_BC4A:
  t73 = RF_60B2()
  t74 = RF_2FB9(OUKYU_D_D1EC, 1)
  (byte)g_princess = 0
  t75 = rand(v6 / 10)
  g_fame = g_fame - (t75 + (v6 / 10))
  t76 = RF_472D()
  return 0
OUKYU_L_BC74:
  t77 = RF_60B2()
  t78 = RF_3619(OUKYU_D_D21A, v2)
  t79 = RF_472D()
  t80 = RF_60B2()
  t81 = RF_2FB9(OUKYU_D_D23D, 1)
  t82 = RF_3CFF()
  if (!t82) goto OUKYU_L_BCA1
  t83 = RF_60B2()
  t84 = RF_2FB9(OUKYU_D_D269, 1)
  goto OUKYU_L_BC3C
OUKYU_L_BCA1:
  t85 = RF_60B2()
  t86 = RF_2FB9(OUKYU_D_D293, 1)
  (byte)g_princess = 0
  t87 = rand(v6 / 10)
  g_fame = g_fame - (t87 + (v6 / 10))
  t88 = RF_472D()
  return 0

OUKYU_F_BCCB:
  // frame 0
  t1 = RF_604A(3, 3, 7, 26, 12, $2000)
  if (a0) goto OUKYU_L_BCEC
  t2 = RF_4F65(2, 6, 28, 14, 0, 0)
OUKYU_L_BCEC:
  t3 = RF_2FB9(OUKYU_D_D2C9, 1)
  t4 = RF_2F8F(22, 7)
  t5 = RF_2FB9(OUKYU_D_D2CD, 0)
  t6 = RF_2F8F(4, 8)
  t7 = RF_2FB9(OUKYU_D_D2D5, 0)
  return t7

OUKYU_F_BD12:
  // frame 64
  v56 = 0
  v58 = 0
  goto OUKYU_L_BD49
OUKYU_L_BD20:
  if (!(((byte)g_port + 1) == ((B[v56 + g_port_flags]) & 3))) goto OUKYU_L_BD44
  B[v58 + (&v50)] = v56
  v58 = v58 + 1
OUKYU_L_BD44:
  v56 = v56 + 1
OUKYU_L_BD49:
  if (v56 < 50) goto OUKYU_L_BD20
  v60 = v58 >> 2
  v64 = 0
  goto OUKYU_L_BE1A
OUKYU_L_BD5E:
  v62 = ((B[v56 + (&v50)]) * 19) + $0FD8
  if (v56 & 3) goto OUKYU_L_BD7D
  t1 = OUKYU_F_BCCB(v64)
OUKYU_L_BD7D:
  v52 = ((B[v56 + (&v50)]) * 14) + $E6BC
  t2 = RF_2F8F(4, ((v56 & 3) * 2) + 10)
  t3 = RF_40DE(v62)
  t4 = RF_2F8F(24, ((v56 & 3) * 2) + 10)
  t5 = RF_3608(OUKYU_D_D2EE, B[(byte)g_port + v52])
  if (!((v56 & 3) == 3)) goto OUKYU_L_BE17
  if (!((((((v58 >> 2) - v60) + 1) * 2) * 2) == v58)) goto OUKYU_L_BDD6
  return (((((v58 >> 2) - v60) + 1) * 2) * 2) == v58
OUKYU_L_BDD6:
  if (!(v60 >= 1)) goto OUKYU_L_BE17
  t6 = RF_2F8F(8, 18)
  t7 = RF_2FB9(OUKYU_D_D2F2, 0)
  v60 = v60 - 1
OUKYU_L_BDF1:
  t8 = RF_362A(0)
  v54 = t8
  if (!(v54 == $8000)) goto OUKYU_L_BE02
  return v54 == $8000
OUKYU_L_BE02:
  if (!(v54 == 128)) goto OUKYU_L_BE0E
  v64 = 1
OUKYU_L_BE0E:
  if (v54 != 128) goto OUKYU_L_BDF1
OUKYU_L_BE17:
OUKYU_L_BE1A:
  v56 = L
  if (v56 < v58) goto OUKYU_L_BD5E
  return v56 < v58

OUKYU_F_BE25:
  // frame 3
  (byte)v1 = (byte)g_title
  v3 = 1
  if (!((byte)g_princess & 8)) goto OUKYU_L_BE5C
  if (!((byte)(g_king_mission+2) == 1)) goto OUKYU_L_BE5C
  if (!((byte)(g_king_mission+3) == (byte)g_port)) goto OUKYU_L_BE5C
  if ((byte)g_princess & 2) goto OUKYU_L_BE5C
  t1 = OUKYU_F_B719()
  return 0
OUKYU_L_BE5C:
  if (!((byte)g_princess & 1)) goto OUKYU_L_BEA3
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_BEA3
  if ((byte)(g_king_mission+1)) goto OUKYU_L_BEA3
  if ((byte)(g_king_mission+2) != 4) goto OUKYU_L_BE84
  t2 = OUKYU_F_B2AA()
  if (t2) goto OUKYU_L_BE8A
OUKYU_L_BE84:
  t3 = RF_21EA(4, 1)
OUKYU_L_BE8A:
  t4 = (*(W[((byte)(g_king_mission+2) * 2) + OUKYU_D_D303]))()
  v3 = t4
  if (!(byte)g_ending) goto OUKYU_L_BE9E
  return 1
OUKYU_L_BE9E:
  t5 = RF_2281()
  return 0
OUKYU_L_BEA3:
  if (!((byte)g_princess & 1)) goto OUKYU_L_BEBD
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_BEBD
  if (!(byte)(g_king_mission+1)) goto OUKYU_L_BF2D
OUKYU_L_BEBD:
  t6 = RF_60CE(10, 1)
  t7 = RF_60B2()
  t8 = RF_4B44(OUKYU_D_D30D)
  t9 = RF_60B2()
  if ((byte)v1 / 5) goto OUKYU_L_BEED
  t10 = rand((byte)v1 + 3)
  if (t10) goto OUKYU_L_BEED
  t11 = RF_4B44(OUKYU_D_D322)
  return 0
OUKYU_L_BEED:
  t12 = RF_4B44(OUKYU_D_D35D)
  t13 = $97B0(2, 2, 28, 18)
  t14 = RF_60CE((byte)g_port + 1, 1)
  t15 = RF_60B2()
  t16 = RF_2FB9(OUKYU_D_D37A, 0)
  t17 = OUKYU_F_B22C()
  t18 = RF_40DE(t17)
  t19 = RF_2FB9(OUKYU_D_D384, 0)
  $F18A = $F18A - 1
  t20 = RF_472D()
OUKYU_L_BF2D:
  t21 = RF_60B2()
  t22 = RF_4B44(OUKYU_D_D38F)
  t23 = OUKYU_F_BD12()
  t24 = RF_60B2()
  t25 = RF_2FB9(OUKYU_D_D3C5, 1)
  t26 = RF_472D()
  t27 = $97BE()
  (byte)$EF65 = 240
  return 0

OUKYU_F_BF53:
  // frame 8
  v2 = g_player_gold
  if (!($2710 <= g_palace_savings)) goto OUKYU_L_BF72
  t1 = RF_60B2()
  t2 = RF_4B44(OUKYU_D_D3EA)
  return 0
OUKYU_L_BF72:
  if (!(v2 < $03E8)) goto OUKYU_L_BF8B
  t3 = RF_60EE()
  t4 = RF_609A(1)
  t5 = RF_4B44(OUKYU_D_D402)
  return 0
OUKYU_L_BF8B:
  t6 = RF_60B2()
  t7 = RF_4B44(OUKYU_D_D41B)
  v6 = v2 / $03E8
  t8 = RF_60B2()
  t9 = RF_3619(OUKYU_D_D43D, v6)
  if (!(v6 > 9)) goto OUKYU_L_BFB5
  v8 = 1
  goto OUKYU_L_BFBB
OUKYU_L_BFB5:
  v8 = 0
OUKYU_L_BFBB:
  t10 = RF_2FB9(OUKYU_D_D46C, 1)
  t11 = RF_2F8F(v8 + 21, 25)
  t12 = RF_3935(1, v6, 1)
  v4 = t12
  if (!(v4 == (-1))) goto OUKYU_L_BFDA
  return 0
OUKYU_L_BFDA:
  g_palace_savings = g_palace_savings + v4
  g_player_gold = g_player_gold - (v4 * $03E8)
  if (!(g_palace_savings > $2710)) goto OUKYU_L_C01E
  t13 = RF_60B2()
  t14 = RF_4B44(OUKYU_D_D471)
  v4 = g_palace_savings + OUKYU_D_D8F0
  g_palace_savings = $2710
  g_player_gold = g_player_gold + (v4 * $03E8)
OUKYU_L_C01E:
  t15 = RF_60B2()
  t16 = RF_4B44(OUKYU_D_D489)
  return 1

OUKYU_F_C02A:
  // frame 8
  v2 = g_player_gold
  if (!(v2 > 59000)) goto OUKYU_L_C052
  t1 = RF_60EE()
  t2 = RF_609A(1)
  t3 = RF_4B44(OUKYU_D_D4A9)
  return 0
OUKYU_L_C052:
  t4 = RF_60CE(10, 1)
  t5 = RF_609A(1)
  t6 = RF_4B44(OUKYU_D_D4C1)
  t7 = RL_8962(60 - (v2 / $03E8), g_palace_savings)
  v6 = t7
  if (!(((v6 * $03E8) + v2) > $EA60)) goto OUKYU_L_C08A
  goto OUKYU_L_C08B
OUKYU_L_C08A:
OUKYU_L_C08B:
  v6 = L
  t8 = RF_60B2()
  t9 = RF_3619(OUKYU_D_D4E5, v6)
  if (!(v6 > 9)) goto OUKYU_L_C0A6
  v8 = 1
  goto OUKYU_L_C0AC
OUKYU_L_C0A6:
  v8 = 0
OUKYU_L_C0AC:
  t10 = RF_2FB9(OUKYU_D_D515, 1)
  t11 = RF_2F8F(v8 + 21, 25)
  t12 = RF_3935(1, v6, 1)
  v4 = t12
  if (!(v4 == (-1))) goto OUKYU_L_C0CB
  return 0
OUKYU_L_C0CB:
  g_palace_savings = g_palace_savings - v4
  g_player_gold = g_player_gold + (v4 * $03E8)
  if (g_palace_savings) goto OUKYU_L_C0F5
  t13 = RF_60B2()
  t14 = RF_2FB9(OUKYU_D_D51A, 1)
  goto OUKYU_L_C102
OUKYU_L_C0F5:
  t15 = RF_60B2()
  t16 = RF_3619(OUKYU_D_D537, g_palace_savings)
OUKYU_L_C102:
  t17 = RF_3DDF(2)
  t18 = RF_60B2()
  t19 = RF_4B44(OUKYU_D_D556)
  return 1

OUKYU_F_C113:
  // frame 6
  v2 = g_palace_savings
  t1 = RF_60CE(10, 1)
  v6 = 0
  (byte)v3 = 0
  if (v2) goto OUKYU_L_C13C
  t2 = RF_609A(1)
  t3 = RF_4B44(OUKYU_D_D591)
  goto OUKYU_L_C14F
OUKYU_L_C13C:
  t4 = RF_609A(1)
  t5 = RF_3619(OUKYU_D_D5B3, v2)
  t6 = RF_3DDF(2)
OUKYU_L_C14F:
  (byte)v3 = L
OUKYU_L_C152:
  t7 = RF_60CE(10, 1)
  t8 = RF_60B2()
  t9 = RF_2FB9(OUKYU_D_D5D3, 1)
  t10 = RF_484C(8, 23, 9, 1, OUKYU_D_D57C, (byte)v3, 1)
  (byte)v4 = t10
  if (!((byte)v4 != 255)) goto OUKYU_L_C191
  if ((byte)v4) goto OUKYU_L_C18D
  t11 = OUKYU_F_BF53()
  goto OUKYU_L_C190
OUKYU_L_C18D:
  t12 = OUKYU_F_C02A()
OUKYU_L_C190:
  v6 = L
OUKYU_L_C191:
  if ((byte)v4 == 255) goto OUKYU_L_C19F
  if (!v6) goto OUKYU_L_C152
OUKYU_L_C19F:
  return 0

OUKYU_F_C1A1:
  // frame 15
  v2 = $EED0
  t1 = RF_4119(0)
  v6 = t1
  t2 = RF_4604(0)
  v8 = t2
  if (!(v6 == v8)) goto OUKYU_L_C1CD
  t3 = RF_60EE()
  t4 = RF_609A(1)
  t5 = RF_4B44(OUKYU_D_D5E6)
  return 0
OUKYU_L_C1CD:
  t6 = RF_60CE(10, 1)
  t7 = RF_609A(1)
  if (!(v2 <= 10)) goto OUKYU_L_C1E7
  t8 = RF_4B44(OUKYU_D_D602)
  return 0
OUKYU_L_C1E7:
  v10 = v8 - v6
  t9 = RL_8962(v10, v2)
  v4 = t9
  t10 = RF_3619(OUKYU_D_D635, v4)
  t11 = RF_3C6D(OUKYU_D_D660, 1, v4)
  v12 = t11
  if (!(v12 == (-1))) goto OUKYU_L_C20D
  return 0
OUKYU_L_C20D:
  $EED0 = $EED0 - v12
  t12 = RF_60B2()
  t13 = RF_4B44(OUKYU_D_D669)
  t14 = RF_60EE()
  t15 = RF_60B2()
  t16 = RF_4B44(OUKYU_D_D68C)
  t17 = $97B0(2, 2, 28, 18)
  t18 = $9662()
  t19 = RF_6C1E(v12, 9, 7)
  v15 = t19
  t20 = $97BE()
  (byte)$EF65 = 240
  if (!(v15 == 1)) goto OUKYU_L_C255
  return 0
OUKYU_L_C255:
  $EED0 = $EED0 + v12
  return v15

OUKYU_F_C261:
  // frame 8
  v2 = $EECE
  v6 = g_player_gold
  if (!(v6 > $E678)) goto OUKYU_L_C285
  t1 = RF_60EE()
  t2 = RF_60B2()
  t3 = RF_4B44(OUKYU_D_D6AC)
  return 0
OUKYU_L_C285:
  t4 = RF_60CE(10, 1)
  t5 = RF_609A(1)
  if (!(v2 <= 100)) goto OUKYU_L_C2A0
  t6 = RF_4B44(OUKYU_D_D6C9)
  return 0
OUKYU_L_C2A0:
  if (!(v2 >= $1770)) goto OUKYU_L_C2B0
  goto OUKYU_L_C2BE
OUKYU_L_C2B0:
  t7 = RL_8962($EA60 - v6, v2 * 10)
OUKYU_L_C2BE:
  v4 = L
  v4 = (v4 / $03E8) * $03E8
  t8 = RF_3619(OUKYU_D_D6FB, v4)
  t9 = RF_472D()
  t10 = RF_60B2()
  t11 = RF_3C6D(OUKYU_D_D729, 1, v4)
  v8 = t11
  if (!(v8 == (-1))) goto OUKYU_L_C2EA
  return 0
OUKYU_L_C2EA:
  g_player_gold = g_player_gold + v8
  $EECE = $EECE - ((v8 / 10) + 1)
  t12 = RF_60B2()
  t13 = RF_4B44(OUKYU_D_D73D)
  return 0

OUKYU_F_C30B:
  // frame 6
  if ((byte)a0) goto OUKYU_L_C321
  v2 = 0
  v4 = 55
  goto OUKYU_L_C33C
OUKYU_L_C321:
  if (!((byte)a0 < 3)) goto OUKYU_L_C334
  v2 = 1
  v4 = 60
  goto OUKYU_L_C33C
OUKYU_L_C334:
  v2 = 2
  v4 = 63
OUKYU_L_C33C:
  v6 = L
  t1 = RF_604A(1, 23, 5, 7, 5, 0)
  t2 = sys56_anim_control(0, 0)
  t3 = sys73_hdma_effect_on(4, 38, (v2 * 247) + OUKYU_D_D945, 126)
  t4 = OUKYU_L_C718()
  t5 = sys48_color_math(32, 83, 224)
  t6 = sys48_color_math(32, 83, v4)
  t7 = sys48_color_math(32, 83, v6)
  return t7

OUKYU_F_C38C:
  // frame 11
  (byte)v6 = (byte)$E442
  if (!((byte)g_princess & 1)) goto OUKYU_L_C3D1
  if (!((byte)g_king_mission == (byte)g_port)) goto OUKYU_L_C3D1
  if ((byte)(g_king_mission+1)) goto OUKYU_L_C3D1
  if (!((byte)(g_king_mission+2) == 4)) goto OUKYU_L_C3D1
  t1 = RF_60CE(10, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(OUKYU_D_DC2A, 1)
  t4 = RF_472D()
  return 1
OUKYU_L_C3D1:
  t5 = rand(100)
  if (!((byte)v6 < t5)) goto OUKYU_L_C416
  t6 = rand(3)
  if (!((t6 + (byte)g_title) < 3)) goto OUKYU_L_C416
  t7 = RF_60CE(10, 1)
  t8 = RF_609A(1)
  t9 = RF_4B44(OUKYU_D_DC59)
  t10 = RF_60CE(0, 0)
  t11 = RF_609A(1)
  t12 = RF_4B44(OUKYU_D_DC9B)
  return 1
OUKYU_L_C416:
  t13 = RF_2281()
  t14 = RF_21EA(10, 1)
  (byte)v1 = (byte)v6 / 45
  $F9B0 = 1
  t15 = OUKYU_F_C30B((byte)v1)
  t16 = RF_60CE(12, 1)
  t17 = RF_609A(1)
  t18 = RF_2FB9(OUKYU_D_DCC3, 0)
  t19 = RF_40DE(g_player_name_ptr)
  t20 = RF_2FB9(OUKYU_D_DCC9, 0)
  $F18A = $F18A - 1
  t21 = RF_472D()
  t22 = RF_60CE(0, 0)
  t23 = RF_609A(1)
  t24 = RF_2FB9(OUKYU_D_DCE7, 1)
  t25 = RF_472D()
  if (!(byte)v1) goto OUKYU_L_C48F
  t26 = rand(1 << (5 - (byte)v1))
  goto OUKYU_L_C490
OUKYU_L_C48F:
OUKYU_L_C490:
  (byte)v2 = L
  if (!((byte)v6 < 100)) goto OUKYU_L_C4AF
  t27 = rand(((100 - (byte)v6) / 10) + 1)
  goto OUKYU_L_C4B0
OUKYU_L_C4AF:
OUKYU_L_C4B0:
  (byte)v7 = L
  t28 = RF_60CE(12, 1)
  t29 = RF_60B2()
  t30 = RF_2FB9(W[((byte)v1 * 2) + OUKYU_D_D762], 1)
  t31 = RF_472D()
  t32 = RF_60CE(0, 0)
  t33 = RF_609A(1)
  t34 = RF_2FB9(W[((byte)v1 * 2) + OUKYU_D_D821], 1)
  t35 = RF_472D()
  if (!(g_player_gold < 400)) goto OUKYU_L_C4F9
  goto OUKYU_L_C4FA
OUKYU_L_C4F9:
OUKYU_L_C4FA:
  (byte)v3 = L
  t36 = RF_6080()
OUKYU_L_C500:
  t37 = RF_484C(8, 21, 0, 2, OUKYU_D_D925, (byte)v3, 3)
  (byte)v4 = t37
  if ((byte)v4 == 255) goto OUKYU_L_C500
  if ((byte)v4) goto OUKYU_L_C579
  t38 = RF_60CE(12, 1)
  t39 = RF_609A(1)
  t40 = RF_2FB9(OUKYU_D_DD0B, 1)
  t41 = RF_472D()
  goto OUKYU_L_C56D
OUKYU_L_C540:
  t42 = RF_60CE(0, 0)
  t43 = RF_60B2()
  t44 = RF_2FB9(OUKYU_D_DD2C, 1)
  t45 = RF_472D()
  t46 = RF_60CE(12, 1)
  t47 = RF_609A(1)
  t48 = RF_2FB9(OUKYU_D_DD4E, 1)
  t49 = RF_472D()
OUKYU_L_C56D:
  (byte)v5 = ((L * 15) / 100) + 5
  goto OUKYU_L_C688
OUKYU_L_C579:
  if ((byte)v4 == 1) goto OUKYU_L_C540
  v11 = g_player_items
  (byte)v8 = 0
  goto OUKYU_L_C5B1
OUKYU_L_C58E:
  if (!((W[(((byte)v9 >> 4) * 2) + v11]) & (1 << ((byte)v9 & 15)))) goto OUKYU_L_C5AD
  (byte)v8 = (byte)v9
OUKYU_L_C5AD:
OUKYU_L_C5B1:
  (byte)v9 = L
  if ((byte)v9 <= 30) goto OUKYU_L_C58E
  if (!(byte)v8) goto OUKYU_L_C637
  t50 = RF_60CE(0, 0)
  t51 = RF_609A(1)
  t52 = RF_2FB9(OUKYU_D_DD66, 0)
  t53 = RF_40C3((byte)v8)
  t54 = RF_40DE(t53)
  t55 = RF_2FB9(OUKYU_D_DD83, 0)
  $F18A = $F18A - 1
  t56 = RF_472D()
  t57 = RF_60CE(12, 1)
  t58 = RF_60B2()
  t59 = RF_2FB9(OUKYU_D_DD93, 1)
  t60 = RL_884E(((byte)v3 * 2) + $1825)
  (byte)v5 = t60 * 40
  W[(((byte)v8 >> 4) * 2) + v11] = (W[(((byte)v8 >> 4) * 2) + v11]) & ((1 << ((byte)v8 & 15)) ^ (-1))
  goto OUKYU_L_C685
OUKYU_L_C637:
  t61 = RF_60CE(0, 0)
  t62 = RF_60B2()
  t63 = RF_2FB9(OUKYU_D_DDB1, 1)
  t64 = RF_472D()
  g_player_gold = g_player_gold - 300
  t65 = RF_60CE(12, 1)
  if ((byte)v7) goto OUKYU_L_C674
  t66 = RF_609A(1)
  t67 = RF_2FB9(OUKYU_D_DDD1, 1)
  goto OUKYU_L_C682
OUKYU_L_C674:
  t68 = RF_609A(1)
  t69 = RF_2FB9(OUKYU_D_DDE0, 1)
OUKYU_L_C682:
  (byte)v5 = L
OUKYU_L_C685:
  t70 = RF_472D()
OUKYU_L_C688:
  if (!((byte)v6 < 200)) goto OUKYU_L_C6AE
  t71 = rand(5)
  t72 = RL_8962((t71 + (byte)v6) + (byte)v5, 200)
  (byte)$E442 = t72
OUKYU_L_C6AE:
  if ((byte)v2) goto OUKYU_L_C6E4
  if (!($EECE < $1388)) goto OUKYU_L_C6C9
  $EECE = $EECE + $03E8
OUKYU_L_C6C9:
  t73 = RF_60CE(12, 1)
  t74 = RF_60B2()
  t75 = RF_2FB9(OUKYU_D_DE0B, 0)
  $F18A = $F18A - 1
  t76 = RF_472D()
OUKYU_L_C6E4:
  t77 = RF_60B2()
  t78 = RF_2FB9(OUKYU_D_DE4C, 1)
  t79 = RF_472D()
  t80 = sys74_hdma_effect_off()
  t81 = sys39_window_off()
  t82 = sys48_color_math(0, 0, 224)
  t83 = sys56_anim_control(3, 255)
  t84 = RF_2281()
  return 1
OUKYU_L_C718:

