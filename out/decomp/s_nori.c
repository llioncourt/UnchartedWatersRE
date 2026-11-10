S_NORI_F_B803:
  // frame 0
  t1 = S_NORI_F_B962()
  $F9A8 = t1
  return t1

S_NORI_F_B80F:
  // frame 18
  v18 = ((byte)g_port * 14) + g_ports
  t1 = RF_60EE()
  t2 = RF_4604(0)
  t3 = RF_4119(0)
  if (!(t3 == t2)) goto S_NORI_L_B83D
  t4 = RF_60B2()
  t5 = RF_4B44(S_NORI_D_B9B0)
  return 0
S_NORI_L_B83D:
  if (!(g_player_gold < 50)) goto S_NORI_L_B852
  t6 = RF_60B2()
  t7 = RF_4B44(S_NORI_D_B9CE)
  return 0
S_NORI_L_B852:
  v14 = g_player_gold
  t8 = RL_8962(v14, $03E8)
  v10 = t8
  t9 = RF_609A(1)
  t10 = RF_3C6D(S_NORI_D_B9E8, 50, v10)
  v2 = t10
  if (!(v2 == (-1))) goto S_NORI_L_B878
  return 0
S_NORI_L_B878:
  g_player_gold = g_player_gold - v2
  t11 = RF_60B2()
  t12 = RF_2FB9(S_NORI_D_B9F8, 0)
  t13 = RF_40DE(g_player_name_ptr)
  t14 = RF_2FB9(S_NORI_D_BA20, 0)
  t15 = RF_3DDF(1)
  v4 = ((20 - ((B[((byte)g_port * 14) + $E6BC]) / 10)) + (10 - (byte)g_title)) + (($03E8 - W[v18]) / 100)
  t16 = rand(2)
  v6 = (t16 + (v2 / v4)) + 1
  t17 = RF_4119(0)
  t18 = RF_4604(0)
  v12 = t18 - t17
  t19 = RL_8962(v12, v6)
  v8 = t19
  t20 = RF_6080()
  t21 = RF_609A(1)
  t22 = RF_3608(S_NORI_D_BA22, v6)
  if (!(v6 > v12)) goto S_NORI_L_B90A
  t23 = RF_3608(S_NORI_D_BA33, v8)
S_NORI_L_B90A:
  t24 = RF_3DDF(2)
  t25 = $97B0(2, 2, 28, 18)
  t26 = $9662()
  t27 = RF_6C1E(v8, 9, 7)
  v16 = t27
  (byte)$EF65 = 240
  t28 = $97BE()
  if (!(v16 == 1)) goto S_NORI_L_B935
  return 1
S_NORI_L_B935:
  g_player_gold = v14
  return v16

S_NORI_F_B93B:
  // frame 2
  (byte)$EF65 = 240
  t1 = $97B0(2, 2, 28, 18)
  t2 = $9662()
  t3 = RF_6C1E(255, 9, 7)
  v2 = t3
  t4 = $97BE()
  return v2

S_NORI_F_B962:
  // frame 4
  v4 = 0
S_NORI_L_B969:
  t1 = RF_60EE()
  t2 = RF_609A(1)
  t3 = RF_2FB9(S_NORI_D_BA65, 1)
  t4 = RF_484C(8, 23, 9, 1, S_NORI_D_BA4E, 2, 1)
  (byte)v1 = t4
  if (!((byte)v1 != 255)) goto S_NORI_L_B99F
  t5 = (*(W[((byte)v1 * 2) + S_NORI_D_BA52]))()
  v4 = t5
S_NORI_L_B99F:
  if ((byte)v1 == 255) goto S_NORI_L_B9AD
  if (!v4) goto S_NORI_L_B969
S_NORI_L_B9AD:
  return v4

