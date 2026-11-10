S_IBENT_F_B803:
  // frame 0
  t1 = S_IBENT_F_B85B()
  $F9A8 = t1
  return t1

S_IBENT_F_B80F:
  // frame 2
  v2 = (a0 - 1) / 5
  t1 = RL_8875((v2 * 2) + $1B24)
  t2 = RF_40DE(t1)
  if (!(v2 != 3)) goto S_IBENT_L_B843
  t3 = RF_3619(S_IBENT_D_BAC3, W[((((a0 - 1) % 5) / 3) * 2) + S_IBENT_D_BAB4])
S_IBENT_L_B843:
  t4 = RF_2FB9(S_IBENT_D_BAC8, 1)
  t5 = RF_40DE(W[((a0 + 20) * 7) + g_player_name_ptr])
  return t5

S_IBENT_F_B85B:
  // frame 0
  if (!((byte)g_princess & 8)) goto S_IBENT_L_B8EF
  if (!((byte)g_princess & 2)) goto S_IBENT_L_B8EF
  if (!((byte)g_princess & 1)) goto S_IBENT_L_B8EF
  if (!((byte)g_king_mission == (byte)g_port)) goto S_IBENT_L_B8EF
  if (!((byte)(g_king_mission+1) == 3)) goto S_IBENT_L_B8EF
  t1 = RF_21EA(4, 1)
  t2 = RF_60CE(7, 1)
  t3 = RF_60B2()
  t4 = RF_2FB9(S_IBENT_D_BACA, 1)
  t5 = RF_472D()
  t6 = RL_8962((g_king_mission+6 >> 1) + g_palace_savings, $2710)
  g_palace_savings = t6
  if (!(g_fame < $C350)) goto S_IBENT_L_B8DB
  t7 = RL_8962($C350 - g_fame, $03E8)
  g_fame = g_fame + t7
S_IBENT_L_B8DB:
  t8 = RF_60B2()
  t9 = RF_2FB9(S_IBENT_D_BAFE, 1)
  t10 = RF_472D()
  (byte)g_princess = 0
  return 1
S_IBENT_L_B8EF:
  if (!((byte)g_princess & 8)) goto S_IBENT_L_B9B7
  if (!((byte)g_princess & 1)) goto S_IBENT_L_B9B7
  if (!((byte)g_king_mission == (byte)g_port)) goto S_IBENT_L_B9B7
  if (!((byte)(g_king_mission+1) == 3)) goto S_IBENT_L_B9B7
  t11 = RF_21EA(4, 1)
  t12 = RF_60CE(7, 1)
  t13 = RF_60B2()
  t14 = RF_2FB9(S_IBENT_D_BB25, 1)
  t15 = RF_472D()
  t16 = RF_60B2()
  t17 = RF_2FB9(S_IBENT_D_BB44, 1)
  t18 = RF_3CFF()
  if (!t18) goto S_IBENT_L_B94F
  t19 = RF_60B2()
  t20 = RF_2FB9(S_IBENT_D_BB6F, 1)
  t21 = RF_472D()
  goto S_IBENT_L_B9B5
S_IBENT_L_B94F:
  t22 = RF_60B2()
  t23 = RF_2FB9(S_IBENT_D_BB93, 1)
  if (!(g_palace_savings < (g_king_mission+6 >> 1))) goto S_IBENT_L_B97D
  g_palace_savings = 0
  t24 = RF_472D()
  t25 = RF_60B2()
  t26 = RF_2FB9(S_IBENT_D_BBB7, 1)
  goto S_IBENT_L_B98A
S_IBENT_L_B97D:
  g_palace_savings = g_palace_savings - (g_king_mission+6 >> 1)
S_IBENT_L_B98A:
  t27 = RF_472D()
  t28 = RF_60B2()
  t29 = RF_4B44(S_IBENT_D_BBEB)
  t30 = rand(10)
  t31 = RL_8962(g_fame, (t30 * 5) + 300)
  g_fame = g_fame - t31
  (byte)g_princess = 0
S_IBENT_L_B9B5:
  return 1
S_IBENT_L_B9B7:
  if ((byte)g_princess & 8) goto S_IBENT_L_BAB2
  if (!((byte)g_princess & 1)) goto S_IBENT_L_BAB2
  if (!((byte)g_king_mission == (byte)g_port)) goto S_IBENT_L_BAB2
  if (!((byte)(g_king_mission+1) == 3)) goto S_IBENT_L_BAB2
  t32 = RF_21EA(4, 1)
  t33 = rand(5)
  g_king_mission+6 = (t33 * 5) + 100
  t34 = RF_60CE(7, 1)
  t35 = RF_60B2()
  t36 = RF_2FB9(S_IBENT_D_BC0D, 1)
  t37 = RF_472D()
  t38 = RF_60B2()
  t39 = RF_2FB9(S_IBENT_D_BC46, 0)
  t40 = RF_40DE(W[(((byte)(g_king_mission+3) + 20) * 7) + g_player_name_ptr])
  if (!((((byte)(g_king_mission+3) - 1) / 5) == 3)) goto S_IBENT_L_BA2F
  goto S_IBENT_L_BA33
S_IBENT_L_BA2F:
S_IBENT_L_BA33:
  t41 = RF_2FB9(S_IBENT_D_BC58, 0)
  t42 = RL_8875(((((byte)(g_king_mission+3) - 1) / 5) * 2) + $1B24)
  t43 = RF_40DE(t42)
  t44 = RF_2FB9(S_IBENT_D_BC60, 0)
  $F18A = $F18A - 1
  t45 = RF_472D()
  t46 = RF_60B2()
  t47 = RF_3619(S_IBENT_D_BC76, g_king_mission+6)
  t48 = RF_3CFF()
  if (!t48) goto S_IBENT_L_BA9E
  t49 = RF_60B2()
  t50 = RF_3619(S_IBENT_D_BCA6, g_king_mission+6 >> 1)
  t51 = RL_8962((g_king_mission+6 >> 1) + g_palace_savings, $2710)
  g_palace_savings = t51
  goto S_IBENT_L_BAAA
S_IBENT_L_BA9E:
  t52 = RF_60B2()
  t53 = RF_2FB9(S_IBENT_D_BCE2, 1)
S_IBENT_L_BAAA:
  (byte)g_princess = L
  t54 = RF_472D()
  return 1
S_IBENT_L_BAB2:
  return 0
S_IBENT_D_BAB4:

