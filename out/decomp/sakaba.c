SAKABA_F_B003:
  // frame 0
  t1 = SAKABA_F_B0CA()
  $F9A6 = t1
  return t1

SAKABA_F_B00F:
  // frame 21
  t1 = RL_8502(0, &v5)
  v15 = t1
  v19 = 0
  v7 = &v5
  v9 = (&v5) + v15
  goto SAKABA_L_B075
SAKABA_L_B02F:
  v21 = (B[v7] * 24) + g_cargo
  v11 = v21 + 1
  v17 = v21 + 6
  v13 = v11 + 5
  goto SAKABA_L_B068
SAKABA_L_B04D:
  if (!(B[v11] == a0)) goto SAKABA_L_B05E
  v19 = v19 + W[v17]
SAKABA_L_B05E:
  v17 = v17 + 2
  v11 = v11 + 1
SAKABA_L_B068:
  if (v11 < v13) goto SAKABA_L_B04D
  v7 = v7 + 1
SAKABA_L_B075:
  if (v7 < v9) goto SAKABA_L_B02F
  return v19

SAKABA_F_B080:
  // frame 4
  $F9A8 = 0
  t1 = sys24_file_open(W[(a0 * 2) + SAKABA_D_B1B0])
  v2 = t1
  v4 = $2700
  t2 = sys26_file_seek(v2, 0, 0, pop())
  t3 = sys27_file_read_7e(v2, $B800, v4)
  t4 = sys25_file_close(v2)
  if (!a1) goto SAKABA_L_B0C6
  t5 = (*$B800)()
SAKABA_L_B0C6:
  return $F9A8

SAKABA_F_B0CA:
  // frame 6
  t1 = SAKABA_F_B080(6, 1)
  if (!t1) goto SAKABA_L_B0DA
  return 0
SAKABA_L_B0DA:
  t2 = RF_21EA(7, 1)
  v6 = 0
  t3 = RF_60CE(7, 1)
  t4 = RF_60B2()
  t5 = RF_4B44(SAKABA_D_B297)
  t6 = RL_884E(((byte)g_port * 5) + $150D)
  (byte)v4 = t6
  if (!((byte)v4 != 255)) goto SAKABA_L_B135
  t7 = RF_60CE((byte)v4, 2)
  t8 = RF_60B2()
  t9 = RF_2FB9(W[(((B[(byte)v4 + $E42E]) / 45) * 2) + SAKABA_D_B200], 1)
  t10 = RF_3DDF(1)
SAKABA_L_B135:
  t11 = RF_60EE()
  t12 = RF_609A(1)
  t13 = RF_4B44(SAKABA_D_B2B4)
  t14 = RF_6080()
  t15 = RF_484C(8, 21, 12, 2, SAKABA_D_B1F4, 6, 3)
  (byte)v3 = t15
  if (!((byte)v3 != 255)) goto SAKABA_L_B1A3
  if (!((byte)v3 == 5)) goto SAKABA_L_B196
  $F99E = 0
  t16 = SAKABA_F_B080(5, 1)
  (byte)v3 = t16
  if (!((byte)v3 != 255)) goto SAKABA_L_B18F
  v6 = 1
  (byte)$F196 = (byte)v3 + 1
  v2 = 0
  goto SAKABA_L_B1AD
SAKABA_L_B18F:
  (byte)v3 = 0
  goto SAKABA_L_B1A3
SAKABA_L_B196:
  t17 = SAKABA_F_B080((byte)v3, 1)
  v6 = v6 | t17
SAKABA_L_B1A3:
  if (!((byte)v3 == 255)) goto SAKABA_L_B135
SAKABA_L_B1AD:
  return v6

