UM_SUB_F_B003:
  // frame 0
  switch ($F9A2) {3 cases}

UM_SUB_F_B02F:
  // frame 21
  t1 = RL_8502(0, &v5)
  v15 = t1
  v19 = 0
  v7 = &v5
  v9 = (&v5) + v15
  goto UM_SUB_L_B095
UM_SUB_L_B04F:
  v21 = (B[v7] * 24) + g_cargo
  v11 = v21 + 1
  v17 = v21 + 6
  v13 = v11 + 5
  goto UM_SUB_L_B088
UM_SUB_L_B06D:
  if (!(B[v11] == a0)) goto UM_SUB_L_B07E
  v19 = v19 + W[v17]
UM_SUB_L_B07E:
  v17 = v17 + 2
  v11 = v11 + 1
UM_SUB_L_B088:
  if (v11 < v13) goto UM_SUB_L_B06D
  v7 = v7 + 1
UM_SUB_L_B095:
  if (v7 < v9) goto UM_SUB_L_B04F
  return v19

UM_SUB_F_B0A0:
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
  if (!(t3 == v6)) goto UM_SUB_L_B119
  v4 = ((((W[v10 + 12]) * v2) / 100) / 2) + 1
UM_SUB_L_B119:
  return v4

UM_SUB_F_B11B:
  // frame 23
  t1 = RL_8502(0, &v7)
  v17 = t1
  v9 = &v7
  v11 = (&v7) + v17
  goto UM_SUB_L_B194
UM_SUB_L_B138:
  v19 = B[v9]
  v23 = (v19 * 24) + g_cargo
  v13 = v23 + 1
  v21 = v23 + 6
  v15 = v13 + 5
  goto UM_SUB_L_B187
UM_SUB_L_B15A:
  if (!(B[v13] == a0)) goto UM_SUB_L_B17D
  if (!a1) goto UM_SUB_L_B17D
  t2 = RL_8962(W[v21], a1)
  v2 = t2
  W[v21] = W[v21] - v2
  a1 = a1 - v2
UM_SUB_L_B17D:
  v21 = v21 + 2
  v13 = v13 + 1
UM_SUB_L_B187:
  if (v13 < v15) goto UM_SUB_L_B15A
  v9 = v9 + 1
UM_SUB_L_B194:
  if (v9 < v11) goto UM_SUB_L_B138
  return v9 < v11

merchant_order_delivered:
  // frame 8
  if (!((byte)g_princess & 8)) goto UM_SUB_L_B300
  if (!((byte)g_princess & 1)) goto UM_SUB_L_B300
  if (!((byte)g_king_mission == (byte)g_port)) goto UM_SUB_L_B300
  if (!((byte)(g_king_mission+1) == 1)) goto UM_SUB_L_B300
  t1 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  if (!t1) goto UM_SUB_L_B300
  t2 = RF_21EA(4, 1)
  t3 = RF_60CE(6, 1)
  t4 = RF_609A(1)
  t5 = RF_2FB9(UM_SUB_D_C6BA, 1)
  t6 = RF_472D()
  t7 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  if (!(t7 < g_king_mission+4)) goto UM_SUB_L_B22C
  t8 = RF_60B2()
  t9 = RF_2FB9(UM_SUB_D_C6F1, 1)
  t10 = RF_472D()
  t11 = RF_60B2()
  t12 = RF_2FB9(UM_SUB_D_C70D, 1)
  t13 = RF_472D()
  t14 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  t15 = UM_SUB_F_B11B((byte)(g_king_mission+3), t14)
  goto UM_SUB_L_B2FA
UM_SUB_L_B22C:
  t16 = RF_60B2()
  t17 = UM_SUB_F_B11B((byte)(g_king_mission+3), g_king_mission+4)
  t18 = RF_2FB9(UM_SUB_D_C740, 1)
  t19 = RF_472D()
  v8 = g_player_gold + g_king_mission+6
  if (!(v8 > 61000)) goto UM_SUB_L_B2AB
  t20 = RL_8962(((v8 + 4294907296) / 1000) + g_palace_savings, $2710)
  g_palace_savings = t20
  g_player_gold = $EA60
  t21 = RF_60B2()
  t22 = RF_2FB9(UM_SUB_D_C76A, 0)
  $F18A = $F18A - 1
  t23 = RF_472D()
  goto UM_SUB_L_B2C2
UM_SUB_L_B2AB:
  t24 = RL_8962($EA60 - g_player_gold, g_king_mission+6)
  g_player_gold = g_player_gold + t24
UM_SUB_L_B2C2:
  if (!(g_fame < $C350)) goto UM_SUB_L_B2EC
  t25 = RL_8962($C350 - g_fame, (((byte)g_title >> 1) * 100) + 150)
  g_fame = g_fame + t25
UM_SUB_L_B2EC:
  t26 = RF_60B2()
  t27 = RF_2FB9(UM_SUB_D_C7B2, 1)
  t28 = RF_472D()
UM_SUB_L_B2FA:
  (byte)g_princess = 0
  return 1
UM_SUB_L_B300:
  if (!((byte)g_princess & 8)) goto UM_SUB_L_B3B9
  if (!((byte)g_princess & 1)) goto UM_SUB_L_B3B9
  if (!((byte)g_king_mission == (byte)g_port)) goto UM_SUB_L_B3B9
  if (!((byte)(g_king_mission+1) == 1)) goto UM_SUB_L_B3B9
  t29 = RF_21EA(4, 1)
  t30 = RF_60CE(6, 1)
  t31 = RF_609A(1)
  t32 = RF_2FB9(UM_SUB_D_C7E4, 1)
  t33 = RF_3CFF()
  if (!t33) goto UM_SUB_L_B354
  t34 = RF_60B2()
  t35 = RF_2FB9(UM_SUB_D_C816, 1)
  t36 = RF_472D()
  goto UM_SUB_L_B3B7
UM_SUB_L_B354:
  t37 = RF_60B2()
  t38 = RF_2FB9(UM_SUB_D_C835, 1)
  if (!(g_player_gold < g_king_mission+6)) goto UM_SUB_L_B37E
  g_player_gold = 0
  t39 = RF_472D()
  t40 = RF_60B2()
  t41 = RF_2FB9(UM_SUB_D_C85D, 1)
  goto UM_SUB_L_B389
UM_SUB_L_B37E:
  g_player_gold = g_player_gold - g_king_mission+6
UM_SUB_L_B389:
  t42 = RF_472D()
  t43 = RF_60B2()
  t44 = RF_2FB9(UM_SUB_D_C88A, 1)
  t45 = rand(10)
  t46 = RL_8962(g_fame, (t45 * 5) + 50)
  g_fame = g_fame - t46
  t47 = RF_472D()
  (byte)g_princess = 0
UM_SUB_L_B3B7:
  return 1
UM_SUB_L_B3B9:
  if ((byte)g_princess & 8) goto UM_SUB_L_B6A5
  if (!((byte)g_princess & 1)) goto UM_SUB_L_B6A5
  if (!((byte)g_king_mission == (byte)g_port)) goto UM_SUB_L_B6A5
  if (!((byte)(g_king_mission+1) == 1)) goto UM_SUB_L_B6A5
  t48 = RF_21EA(4, 1)
  t49 = UM_SUB_F_B0A0()
  v4 = t49
  t50 = RF_60CE(6, 1)
  t51 = RF_609A(1)
  t52 = RF_2FB9(UM_SUB_D_C8AC, 1)
  t53 = RF_472D()
  t54 = RF_60B2()
  t55 = RF_2FB9(UM_SUB_D_C8DE, 0)
  t56 = RL_8875(((byte)(g_king_mission+3) * 2) + $1B49)
  t57 = RF_40DE(t56)
  $F18A = $F18A - 1
  t58 = RF_472D()
  t59 = RF_60B2()
  t60 = rand(5)
  t61 = RF_4190(0)
  t62 = RF_40A5((B[(t61 * 7) + $EB98]) & 15)
  t63 = RL_8898(t62 + 18)
  t64 = RL_8962((t63 / 2) + t60, (((byte)g_title + 1) * $07D0) / v4)
  v2 = t64
  g_king_mission+4 = v2
  g_king_mission+6 = v2 * v4
  t65 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  if (!t65) goto UM_SUB_L_B5CD
  t66 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  t67 = RF_3619(UM_SUB_D_C90A, t66)
  t68 = RF_472D()
  t69 = RF_60B2()
  t70 = RF_3619(UM_SUB_D_C92B, v2)
  t71 = RF_472D()
  t72 = RF_60B2()
  t73 = RF_2FB9(UM_SUB_D_C958, 1)
  t74 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  v8 = t74 * v4
  if (!(v8 > 30000)) goto UM_SUB_L_B4DB
  t75 = RF_3619(UM_SUB_D_C973, v8 / 1000, pop())
  goto UM_SUB_L_B4ED
UM_SUB_L_B4DB:
  t76 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  t77 = RF_3619(UM_SUB_D_C979, t76 * v4)
UM_SUB_L_B4ED:
  t78 = RF_2FB9(UM_SUB_D_C97C, 1)
  t79 = RF_472D()
  t80 = RF_60B2()
  t81 = RF_3619(UM_SUB_D_C99B, v2, g_king_mission+6 * 2)
  t82 = RF_3CFF()
  if (!t82) goto UM_SUB_L_B5C3
  t83 = RF_60B2()
  t84 = RF_3619(UM_SUB_D_C9C5, g_king_mission+6)
  v8 = v8 + (g_player_gold + g_king_mission+6)
  t85 = RF_472D()
  if (!(v8 > 61000)) goto UM_SUB_L_B57B
  t86 = RF_60B2()
  t87 = RF_2FB9(UM_SUB_D_C9E6, 1)
  t88 = RL_8962(((v8 + 4294907296) / $03E8) + g_palace_savings, $2710)
  g_palace_savings = t88
  goto UM_SUB_L_B5A6
UM_SUB_L_B57B:
  t89 = RF_60B2()
  t90 = RF_2FB9(UM_SUB_D_CA1C, 1)
  t91 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  t92 = RL_8962($EA60 - g_player_gold, (t91 * v4) + g_king_mission+6)
UM_SUB_L_B5A6:
  g_player_gold = L
  t93 = UM_SUB_F_B02F((byte)(g_king_mission+3))
  t94 = UM_SUB_F_B11B((byte)(g_king_mission+3), t93)
  goto UM_SUB_L_B69D
UM_SUB_L_B5C3:
  t95 = RF_60B2()
  goto UM_SUB_L_B698
UM_SUB_L_B5CD:
  t96 = RF_3619(UM_SUB_D_CA64, v2)
  t97 = RF_472D()
  t98 = RF_60B2()
  t99 = RF_3619(UM_SUB_D_CA88, g_king_mission+6 * 2)
  t100 = RF_3CFF()
  if (!t100) goto UM_SUB_L_B691
  t101 = RF_60B2()
  t102 = RF_3619(UM_SUB_D_CAA2, g_king_mission+6)
  t103 = RF_472D()
  v8 = g_player_gold + g_king_mission+6
  if (!(v8 > 61000)) goto UM_SUB_L_B663
  t104 = RL_8962(((v8 + 4294907296) / 1000) + g_palace_savings, $2710)
  g_palace_savings = t104
  g_player_gold = $EA60
  t105 = RF_60B2()
  t106 = RF_2FB9(UM_SUB_D_CACB, 0)
  $F18A = $F18A - 1
  t107 = RF_472D()
  goto UM_SUB_L_B67A
UM_SUB_L_B663:
  t108 = RL_8962($EA60 - g_player_gold, g_king_mission+6)
  g_player_gold = g_player_gold + t108
UM_SUB_L_B67A:
  (byte)g_princess = (byte)g_princess | 8
  t109 = RF_60B2()
  t110 = RF_2FB9(UM_SUB_D_CB13, 1)
  goto UM_SUB_L_B6A0
UM_SUB_L_B691:
  t111 = RF_60B2()
UM_SUB_L_B698:
  t112 = RF_2FB9(UM_SUB_D_CB3C, 1)
UM_SUB_L_B69D:
  (byte)g_princess = L
UM_SUB_L_B6A0:
  t113 = RF_472D()
  return 1
UM_SUB_L_B6A5:
  return 0

UM_SUB_F_B6A7:
  // frame 0
  return

UM_SUB_F_B6AD:
  // frame 0
  g_portrait = -1
  t1 = RF_604A(3, 2, 20, 30, 8, $2000)
  t2 = RF_604A(1, 2, 20, 30, 8, 0)
  return t2

UM_SUB_F_B6D2:
  // frame 0
  t1 = RF_604A(1, 2, 18, 28, 2, 0)
  return t1

UM_SUB_F_B6E4:
  // frame 0
  t1 = RF_604A(3, 1, 6, 30, 22, $2000)
  return t1

UM_SUB_F_B6F8:
  // frame 7
  t1 = RF_2FB9(UM_SUB_D_CBAB, 1)
  (byte)$EF65 = 240
  v5 = ((byte)g_port * 14) + $E6BC
  v7 = ((byte)g_port * 14) + g_ports
  (byte)v3 = B[v7 + 11]
  $EF66 = -1
  t2 = $97B0(1, 1, 30, 27)
  t3 = $9662()
  t4 = RF_604A(1, 1, 5, 30, 14, 0)
  t5 = UM_SUB_F_B6D2()
  t6 = RF_50AB(1, 5, 1)
  t7 = RF_2F8F(2, 7)
  t8 = RF_3608(UM_SUB_D_CBAF, W[v7])
  t9 = RF_2F8F(2, 8)
  t10 = RF_3608(UM_SUB_D_CBC3, W[v7 + 2])
  t11 = RF_2F8F(2, 10)
  t12 = RF_3608(UM_SUB_D_CBDC, W[v7 + 4])
  t13 = RF_2F8F(2, 11)
  t14 = RF_3608(UM_SUB_D_CBF2, W[v7 + 6])
  t15 = RF_2F8F(2, 14)
  t16 = RF_3608(UM_SUB_D_CC0D)
  goto UM_SUB_L_B7FF
UM_SUB_L_B7A7:
  t17 = RF_2F8F(2, (byte)v1 + 15)
  if (!((byte)v1 == 1)) goto UM_SUB_L_B7C0
  goto UM_SUB_L_B7CC
UM_SUB_L_B7C0:
  if (!((byte)v1 == 2)) goto UM_SUB_L_B7D0
UM_SUB_L_B7CC:
  t18 = RF_2FB9(UM_SUB_D_CC19, 0)
UM_SUB_L_B7D0:
  t19 = RL_8875(((byte)v1 * 2) + $1B24)
  t20 = RF_40DE(t19)
  t21 = RF_2F8F(11, (byte)v1 + 15)
  t22 = RF_3608(UM_SUB_D_CC1B, B[(byte)v1 + v5])
UM_SUB_L_B7FF:
  (byte)v1 = L
  if ((byte)v1 < 3) goto UM_SUB_L_B7A7
  (byte)v2 = (B[(byte)g_port + g_port_flags]) & 3
  t23 = RF_2F8F(19, 17)
  t24 = RF_3608(UM_SUB_D_CC1F, (byte)v3 + 50)
  $F18C = 19
  t25 = RF_2F8F(19, 14)
  t26 = RF_3608(UM_SUB_D_CC2C, W[((byte)v2 * 2) + UM_SUB_D_CB5C])
  t27 = RF_2F18()
  t28 = $9662()
  t29 = RF_2FB9(UM_SUB_D_CC2F, 1)
  t30 = $97BE()
  return 0

UM_SUB_F_B85B:
  // frame 6
  v2 = (a2 / 2) + (a2 % 2)
  t1 = RF_4F65(a0, a1, 26, (v2 * 2) + 2, 0, 0)
  goto UM_SUB_L_B895
UM_SUB_L_B87C:
  t2 = RF_2F8F(a0 + 2, ((v4 * 2) + a1) + 2)
  t3 = RF_40DE(W[(v4 * 2) + a3])
UM_SUB_L_B895:
  v4 = L
  if (v4 < v2) goto UM_SUB_L_B87C
  goto UM_SUB_L_B8BB
UM_SUB_L_B89F:
  t4 = RF_2F8F(a0 + 14, (((v4 - v2) * 2) + a1) + 2)
  t5 = RF_40DE(W[(v4 * 2) + a3])
  v4 = v4 + 1
UM_SUB_L_B8BB:
  if (v4 < a2) goto UM_SUB_L_B89F
  t6 = RF_3787(UM_SUB_D_CC33, a2, a0 + 1, a1 + 2, 12, 2, v2, 1)
  v6 = t6
  t7 = RF_4D8B()
  if (!(v6 == (-1))) goto UM_SUB_L_B8E4
  goto UM_SUB_L_B8E6
UM_SUB_L_B8E4:
UM_SUB_L_B8E6:
  return

UM_SUB_F_B8E7:
  // frame 26
  v24 = 0
  goto UM_SUB_L_B915
UM_SUB_L_B8F4:
  if (!(B[v2] != 255)) goto UM_SUB_L_B91C
  W[(v24 * 2) + (&v22)] = W[(B[v2] * 7) + g_player_name_ptr]
  v24 = v24 + 1
UM_SUB_L_B915:
  v2 = L
  if (v24 < 10) goto UM_SUB_L_B8F4
UM_SUB_L_B91C:
  t1 = RF_60EE()
  if (v24) goto UM_SUB_L_B92C
  t2 = RF_4B44(UM_SUB_D_CC34)
  return 0
UM_SUB_L_B92C:
  t3 = RF_2FB9(UM_SUB_D_CC52, 1)
  t4 = UM_SUB_F_B85B(2, 6, v24, &v22)
  v26 = t4
  if (!(v26 == 255)) goto UM_SUB_L_B950
  t5 = $978F()
  return v26
UM_SUB_L_B950:
  return B[v26 + $E99C]

UM_SUB_F_B958:
  // frame 4
  (byte)$EF65 = 240
UM_SUB_L_B963:
  t1 = $978F()
  t2 = RF_604A(3, 1, 5, 28, 13, $2000)
  t3 = RF_60EE()
  t4 = RF_2FB9(UM_SUB_D_CC71, 1)
  t5 = RF_484C(8, 23, 10, 0, UM_SUB_D_CC5E, 2, 1)
  v2 = t5
  if (!(v2 != 255)) goto UM_SUB_L_BA52
  if (!(v2 == 1)) goto UM_SUB_L_BA16
UM_SUB_L_B99B:
  t6 = UM_SUB_F_B8E7()
  v4 = t6
  if (v4) goto UM_SUB_L_B9B6
  t7 = $978F()
  t8 = RF_604A(3, 1, 5, 28, 13, $2000)
  goto UM_SUB_L_BA52
UM_SUB_L_B9B6:
  if (!(v4 != 255)) goto UM_SUB_L_BA0B
  t9 = UM_SUB_F_B6AD()
  t10 = $978F()
  t11 = RF_604A(3, 1, 5, 28, 13, $2000)
  t12 = $97B0(0, 5, 32, 20)
  t13 = $9662()
  t14 = UM_SUB_F_B6D2()
  t15 = RF_604A(3, 2, 5, 28, 20, $2000)
  t16 = RF_604A(1, 1, 5, 30, 20, 0)
  t17 = RF_2682(1, 5, v4)
  t18 = UM_SUB_F_B6E4()
  t19 = RF_4DD8()
  t20 = $97BE()
UM_SUB_L_BA0B:
  if (v4 != 255) goto UM_SUB_L_B99B
  goto UM_SUB_L_BA52
UM_SUB_L_BA16:
  t21 = UM_SUB_F_B6AD()
  t22 = $97B0(1, 5, 30, 20)
  t23 = $9662()
  t24 = UM_SUB_F_B6D2()
  t25 = RF_604A(3, 2, 5, 28, 13, $2000)
  t26 = RF_604A(1, 1, 5, 30, 20, 0)
  t27 = RF_2682(1, 5, v2)
  t28 = UM_SUB_F_B6E4()
  t29 = RF_4DD8()
  t30 = $97BE()
UM_SUB_L_BA52:
  if (v2 != 255) goto UM_SUB_L_B963
  t31 = $978F()
  t32 = RF_604A(3, 1, 5, 20, 13, $2000)
  return 0

UM_SUB_F_BA6C:
  // frame 27
  t1 = RL_8502(0, &v17)
  v27 = t1
  v23 = &v12
  v19 = &v17
  v21 = (&v17) + v27
  goto UM_SUB_L_BAB5
UM_SUB_L_BA8E:
  v2 = (B[v19] * 7) + g_ships
  B[v19] = (B[v2 + 6]) & 15
  t2 = RF_40A5(B[v19])
  W[v23] = t2
  v23 = v23 + 2
  v19 = v19 + 1
UM_SUB_L_BAB5:
  if (v19 < v21) goto UM_SUB_L_BA8E
  t3 = RF_60EE()
  t4 = RF_2FB9(UM_SUB_D_CC7C, 1)
  t5 = RF_4783(2, 5, v27, &v12, 2)
  v25 = t5
  t6 = $978F()
  if (!(v25 != 255)) goto UM_SUB_L_BAEF
  goto UM_SUB_L_BAF2
UM_SUB_L_BAEF:
UM_SUB_L_BAF2:
  return

UM_SUB_F_BAF3:
  // frame 2
  (byte)$EF65 = 240
UM_SUB_L_BAFE:
  t1 = UM_SUB_F_BA6C()
  v2 = t1
  if (!(t1 != 255)) goto UM_SUB_L_BB51
  t2 = RF_604A(3, 2, 5, 10, 13, $2000)
  t3 = UM_SUB_F_B6AD()
  t4 = $97B0(1, 5, 30, 24)
  t5 = $9662()
  t6 = RF_604A(3, 2, 5, 28, 14, $2000)
  t7 = RF_604A(1, 1, 5, 30, 20, 0)
  t8 = UM_SUB_F_B6D2()
  t9 = RF_2401(1, 5, v2)
  t10 = UM_SUB_F_B6E4()
  t11 = RF_4DD8()
  t12 = $97BE()
UM_SUB_L_BB51:
  if (v2 != 255) goto UM_SUB_L_BAFE
  t13 = RF_604A(3, 2, 5, 10, 13, $2000)
  return 0

UM_SUB_F_BB67:
  // frame 2
  t1 = RF_60CE(11, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(UM_SUB_D_CC99, 1)
  t4 = RF_484C(8, 25, 6, 1, UM_SUB_D_CC88, 2, 1)
  v2 = t4
  if (!(v2 == 255)) goto UM_SUB_L_BB9A
  return 255
UM_SUB_L_BB9A:
  if (v2) goto UM_SUB_L_BBB2
  t5 = RF_60CE(11, 1)
  t6 = RF_609A(1)
  t7 = RF_4B44(UM_SUB_D_CCB6)
  return 0
UM_SUB_L_BBB2:
  return 1

UM_SUB_F_BBB4:
  // frame 4
  v4 = 0
  t1 = UM_SUB_F_BB67()
  v4 = t1
  if (!(v4 == 255)) goto UM_SUB_L_BBC9
  return 0
UM_SUB_L_BBC9:
  if (!v4) goto UM_SUB_L_BBE1
  t2 = RF_60CE(11, 1)
  t3 = RF_609A(1)
  t4 = RF_4B44(UM_SUB_D_CCED)
  return 1
UM_SUB_L_BBE1:
  t5 = RF_60EE()
  t6 = RF_609A(1)
  t7 = RF_2FB9(UM_SUB_D_CD1B, 1)
  t8 = RF_484C(8, 23, 7, 1, UM_SUB_D_CCD0, 3, 1)
  v2 = t8
  if (!(v2 != 255)) goto UM_SUB_L_BC11
  t9 = (*(W[(v2 * 2) + UM_SUB_D_CCD6]))()
  v4 = t9
UM_SUB_L_BC11:
  g_portrait = -1
  if (v2 == 255) goto UM_SUB_L_BC22
  if (!v4) goto UM_SUB_L_BBE1
UM_SUB_L_BC22:
  return v4

UM_SUB_F_BC24:
  // frame 0
  t1 = RF_604A(3, 3, 2, 26, 3, $2000)
  return t1

UM_SUB_F_BC37:
  // frame 18
  v8 = B[((a0 * 2) * 2) + $EEC0]
  v16 = W[((a0 * 2) * 2) + g_nations]
  v14 = B[((a0 * 2) * 2) + $EEC1]
  v18 = g_relations
  $EF66 = -1
  t1 = RF_4F65(5, 6, 22, 14, 1, 0)
  t2 = RF_2FB9(UM_SUB_D_CD4D, 1)
  t3 = RF_2F8F(11, 7)
  t4 = RF_3608(UM_SUB_D_CD51, W[(a0 * 2) + UM_SUB_D_CD28])
  t5 = RF_2F8F(9, 9)
  t6 = RF_3608(UM_SUB_D_CD56, v16)
  t7 = RF_2F8F(9, 11)
  t8 = RF_3608(UM_SUB_D_CD62, v8)
  t9 = RF_2F8F(9, 13)
  t10 = RF_2FB9(UM_SUB_D_CD70, 0)
  v6 = 0
  v2 = 0
  v4 = 0
  goto UM_SUB_L_BD69
UM_SUB_L_BCBB:
  if (!(v2 != a0)) goto UM_SUB_L_BD66
  t11 = RF_2F8F(11, v4 + 14)
  t12 = RL_8875((v2 * 2) + $1B24)
  t13 = RF_40DE(t12)
  t14 = RF_2F8F(20, v4 + 14)
  t15 = RF_3608(UM_SUB_D_CD7E, B[(B[((a0 * 3) + v2) + UM_SUB_D_CD2E]) + v18])
  v4 = v4 + 1
  v10 = $EA9B >> ((a0 * 2) * 2)
  if (!((8 >> v2) & v10)) goto UM_SUB_L_BD30
  t16 = RF_2F8F(9, v6 + 17)
  t17 = RF_2FB9(UM_SUB_D_CD82, 0)
  t18 = RL_8875((v2 * 2) + $1B24)
  t19 = RF_40DE(t18)
  v6 = v6 + 1
UM_SUB_L_BD30:
  v12 = $EA9D >> ((a0 * 2) * 2)
  if (!((8 >> v2) & v12)) goto UM_SUB_L_BD66
  t20 = RF_2F8F(6, v6 + 17)
  t21 = RL_8875((v2 * 2) + $1B24)
  t22 = RF_40DE(t21)
  t23 = RF_2FB9(UM_SUB_D_CD8B, 0)
  v6 = v6 + 1
UM_SUB_L_BD66:
  v2 = v2 + 1
UM_SUB_L_BD69:
  if (v2 < 3) goto UM_SUB_L_BCBB
  t24 = RF_60B2()
  if (!(0 <= v14)) goto UM_SUB_L_BDDB
  if (!(v14 <= 2)) goto UM_SUB_L_BDDB
  t25 = RF_2FB9(UM_SUB_D_CD97, 0)
  t26 = RL_8875((a0 * 2) + $1B24)
  t27 = RF_40DE(t26)
  t28 = RF_2FB9(UM_SUB_D_CDB2, 0)
  t29 = RL_8875((v14 * 2) + $1B24)
  t30 = RF_40DE(t29)
  goto UM_SUB_L_BDD1
UM_SUB_L_BDB1:
  t31 = RF_2FB9(UM_SUB_D_CDB9, 0)
  t32 = RL_8875((a0 * 2) + $1B24)
  t33 = RF_40DE(t32)
  t34 = RF_2FB9(UM_SUB_D_CDBB, 0)
UM_SUB_L_BDD1:
  $F18A = $F18A - 1
  goto UM_SUB_L_BDE9
UM_SUB_L_BDDB:
  if (v14 == 4) goto UM_SUB_L_BDB1
  t35 = RF_2FB9(UM_SUB_D_CDDA, 1)
UM_SUB_L_BDE9:
  t36 = RF_472D()
  return t36

UM_SUB_F_BDED:
  // frame 4
  v2 = ((byte)g_port * 14) + $E6BC
  v4 = (((100 - (B[v2 + a0])) / 20) * 10) + 50
  t1 = RF_60B2()
  t2 = RF_2FB9(UM_SUB_D_CDF7, 0)
  t3 = RL_8875((a0 * 2) + $1B24)
  t4 = RF_40DE(t3)
  t5 = RF_2FB9(UM_SUB_D_CE09, 0)
  t6 = RF_2F8F(8, 25)
  t7 = RF_3619(UM_SUB_D_CE14, v4)
  t8 = RF_3CFF()
  if (!t8) goto UM_SUB_L_BE7F
  if (!(g_player_gold < v4)) goto UM_SUB_L_BE5E
  t9 = RF_60EE()
  t10 = RF_609A(1)
  t11 = RF_4B44(UM_SUB_D_CE20)
  return 0
UM_SUB_L_BE5E:
  g_player_gold = g_player_gold - v4
  t12 = $97B0(2, 2, 28, 18)
  t13 = $9662()
  t14 = UM_SUB_F_BC37(a0)
  t15 = $97BE()
  goto UM_SUB_L_BE89
UM_SUB_L_BE7F:
  t16 = RF_60B2()
  t17 = RF_4B44(UM_SUB_D_CE35)
UM_SUB_L_BE89:
  return 0

UM_SUB_F_BE8B:
  // frame 4
  v4 = 0
UM_SUB_L_BE92:
  t1 = RF_60CE(4, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(UM_SUB_D_CE5D, 1)
  t4 = RF_484C(8, 23, 10, 2, UM_SUB_D_CE41, 3, 2)
  v2 = t4
  if (!(v2 != 255)) goto UM_SUB_L_BEC8
  (byte)$EF65 = 240
  t5 = UM_SUB_F_BDED(v2)
  v4 = t5
UM_SUB_L_BEC8:
  if (v2 == 255) goto UM_SUB_L_BED4
  if (!v4) goto UM_SUB_L_BE92
UM_SUB_L_BED4:
  return v4

UM_SUB_F_BED6:
  // frame 6
  t1 = $9662()
  $EF66 = -1
  t2 = RF_4F65(4, 6, 24, 14, 0, 0)
  v4 = 0
  v2 = a0 + 4
  goto UM_SUB_L_BF36
UM_SUB_L_BEF6:
  t3 = RL_884E(a0)
  t4 = RF_40C3(t3)
  v6 = t4
  t5 = RF_2FB9(UM_SUB_D_CE73, 1)
  t6 = RF_2F8F(6, (v4 * 2) + 8)
  t7 = RF_40DE(v6)
  t8 = RF_2F8F(22, (v4 * 2) + 8)
  t9 = RL_8898(v6 + 15)
  t10 = RF_3608(UM_SUB_D_CE77, t9)
  v4 = v4 + 1
  a0 = a0 + 1
UM_SUB_L_BF36:
  if (a0 < v2) goto UM_SUB_L_BEF6
  t11 = RF_2F8F(14, 16)
  t12 = RF_3619(UM_SUB_D_CE7B, g_player_gold)
  return v4

UM_SUB_F_BF4F:
  // frame 2
  v2 = g_player_items
  if (!((W[((a2 >> 4) * 2) + v2]) & (1 << (a2 & 15)))) goto UM_SUB_L_BF7D
  t1 = RF_60EE()
  t2 = RF_609A(1)
  t3 = RF_4B44(UM_SUB_D_CE85)
  return 0
UM_SUB_L_BF7D:
  t4 = RF_60B2()
  t5 = RF_2FB9(UM_SUB_D_CE9A, 0)
  t6 = RF_40DE(a0)
  t7 = RF_2F8F(8, 23)
  t8 = RF_3619(UM_SUB_D_CEA1, a1)
  t9 = RF_3CFF()
  if (!t9) goto UM_SUB_L_BFF0
  if (!(g_player_gold < a1)) goto UM_SUB_L_BFB8
  t10 = RF_60EE()
  t11 = RF_609A(1)
  goto UM_SUB_L_BFF6
UM_SUB_L_BFB8:
  g_player_gold = g_player_gold - a1
  W[((a2 >> 4) * 2) + v2] = (W[((a2 >> 4) * 2) + v2]) | (1 << (a2 & 15))
  t12 = RF_2F8F(20, 16)
  t13 = RF_2FB9(UM_SUB_D_CED4, 1)
  t14 = RF_3619(UM_SUB_D_CED8, g_player_gold)
  return 1
UM_SUB_L_BFF0:
  t15 = RF_60B2()
UM_SUB_L_BFF6:
  t16 = RF_4B44(UM_SUB_D_CEDC)
  return 0

UM_SUB_F_BFFC:
  // frame 18
  t1 = $97B0(2, 3, 28, 17)
  v2 = (((byte)g_port * 2) * 2) + 233
  t2 = UM_SUB_F_BED6(v2)
  v14 = t2
  goto UM_SUB_L_C038
UM_SUB_L_C01F:
  t3 = RL_884E(v2 + v12)
  t4 = RF_40C3(t3)
  W[(v12 * 2) + (&v10)] = t4
UM_SUB_L_C038:
  v12 = L
  if (v12 < v14) goto UM_SUB_L_C01F
  v18 = 0
  (byte)$EF65 = 240
UM_SUB_L_C047:
  t5 = RF_60CE(4, 1)
  t6 = RF_609A(1)
  t7 = RF_2FB9(UM_SUB_D_CEE8, 1)
  t8 = RF_490C(5, 8, 2, v14)
  v16 = t8
  if (!(v16 != 255)) goto UM_SUB_L_C090
  t9 = RL_884E(v2 + v16)
  v12 = t9
  t10 = RF_40C3(v12)
  t11 = RL_8898(t10 + 15)
  t12 = UM_SUB_F_BF4F(W[(v16 * 2) + (&v10)], t11, v12)
  v18 = t12
UM_SUB_L_C090:
  if (!(v16 == 255)) goto UM_SUB_L_C047
  t13 = $97BE()
  return v18

UM_SUB_F_C09D:
  // frame 8
  v6 = 0
  v2 = g_player_items
  goto UM_SUB_L_C0CB
UM_SUB_L_C0AC:
  if (!((W[((v4 >> 4) * 2) + v2]) & (1 << (v4 & 15)))) goto UM_SUB_L_C0C9
  B[a0 + v6] = v4
  v6 = v6 + 1
UM_SUB_L_C0C9:
UM_SUB_L_C0CB:
  v4 = L
  if (v4 < 15) goto UM_SUB_L_C0AC
  return v6

UM_SUB_F_C0D4:
  // frame 8
  v6 = 0
  v2 = g_player_items
  goto UM_SUB_L_C102
UM_SUB_L_C0E3:
  if (!((W[((v4 >> 4) * 2) + v2]) & (1 << (v4 & 15)))) goto UM_SUB_L_C100
  B[a0 + v6] = v4
  v6 = v6 + 1
UM_SUB_L_C100:
UM_SUB_L_C102:
  v4 = L
  if (v4 < 31) goto UM_SUB_L_C0E3
  return v6

UM_SUB_F_C10C:
  // frame 2
  t1 = RF_604A(3, 9, 2, 15, 17, $2000)
  if (a2) goto UM_SUB_L_C12E
  t2 = RF_4F65(8, 1, 17, 19, 0, 0)
UM_SUB_L_C12E:
  $EF66 = -1
  goto UM_SUB_L_C157
UM_SUB_L_C137:
  t3 = RF_2FB9(UM_SUB_D_CEFC, 1)
  t4 = RF_2F8F(10, v2 + 4)
  t5 = RF_40C3(B[a1 + v2])
  t6 = RF_40DE(t5)
UM_SUB_L_C157:
  v2 = L
  if (v2 < a0) goto UM_SUB_L_C137
  return v2 < a0

UM_SUB_F_C15F:
  // frame 6
  v6 = 0
  v4 = 0
UM_SUB_L_C167:
  t1 = RF_3E5A(0, 71, ((v6 + 4) << 3) - 5, 1, 2, $26CC, g_fh_fdata)
  t2 = RF_362A(0)
  v2 = t2
  t3 = RF_3D91(v2, 10)
  switch (v2) {4 cases}

UM_SUB_F_C1F2:
  // frame 10
  v10 = g_fleets
  v6 = v10 + 11
  v2 = 0
  t1 = RF_40C3(a0)
  v4 = t1
  t2 = RF_60CE(4, 1)
  t3 = RF_609A(1)
  t4 = RL_884E((a0 * 2) + $1825)
  if (!((t4 * 150) > (W[((byte)g_port * 14) + g_ports]))) goto UM_SUB_L_C23A
  t5 = RF_4B44(UM_SUB_D_CF00)
  goto UM_SUB_L_C281
UM_SUB_L_C23A:
  t6 = RL_8898(v4 + 15)
  v8 = t6 / 2
  t7 = RF_3619(UM_SUB_D_CF2B, v8)
  t8 = RF_3CFF()
  if (!t8) goto UM_SUB_L_C281
  t9 = RL_8962($EA60 - (W[v10 + 9]), v8)
  W[v10 + 9] = (W[v10 + 9]) + t9
  W[((a0 >> 4) * 2) + v6] = (W[((a0 >> 4) * 2) + v6]) & ((1 << (a0 & 15)) ^ (-1))
  v2 = 1
UM_SUB_L_C281:
  return v2

UM_SUB_F_C283:
  // frame 46
  v46 = 0
  v44 = 0
  v42 = 0
  v38 = 0
UM_SUB_L_C291:
  if (!a0) goto UM_SUB_L_C2A0
  t1 = UM_SUB_F_C0D4(&v32)
  goto UM_SUB_L_C2A8
UM_SUB_L_C2A0:
  t2 = UM_SUB_F_C09D(&v32)
UM_SUB_L_C2A8:
  v36 = L
  if (v36) goto UM_SUB_L_C2CC
  t3 = RF_60EE()
  t4 = RF_609A(1)
  t5 = RF_4B44(UM_SUB_D_CF56)
  if (!v42) goto UM_SUB_L_C2C9
  t6 = $9675()
  t7 = $97BE()
UM_SUB_L_C2C9:
  return v38
UM_SUB_L_C2CC:
  if (v42) goto UM_SUB_L_C2E1
  t8 = $97B0(3, 1, 27, 19)
  t9 = UM_SUB_F_BC24()
  v42 = 1
UM_SUB_L_C2E1:
  if (v44) goto UM_SUB_L_C2F2
  t10 = UM_SUB_F_C10C(v36, &v32, v46)
UM_SUB_L_C2F2:
  t11 = RF_60CE(4, 1)
  t12 = RF_609A(1)
  t13 = RF_2FB9(UM_SUB_D_CF6C, 1)
  t14 = UM_SUB_F_C15F(v36)
  v34 = t14
  if (!(v34 != 255)) goto UM_SUB_L_C395
  t15 = UM_SUB_F_C1F2(B[v34 + (&v32)])
  v40 = t15
  if (!v40) goto UM_SUB_L_C339
  v36 = v36 - 1
  v44 = 0
  v46 = 1
  goto UM_SUB_L_C340
UM_SUB_L_C339:
  v38 = v40
  v44 = 1
UM_SUB_L_C340:
  t16 = RF_60CE(4, 1)
  if (v36) goto UM_SUB_L_C365
  t17 = RF_60EE()
  t18 = RF_609A(1)
  t19 = RF_4B44(UM_SUB_D_CF82)
  v38 = v38 | v40
  goto UM_SUB_L_C39E
UM_SUB_L_C365:
  if (!v40) goto UM_SUB_L_C38D
  t20 = RF_60B2()
  if (!a0) goto UM_SUB_L_C377
  goto UM_SUB_L_C37A
UM_SUB_L_C377:
UM_SUB_L_C37A:
  t21 = RF_3619(UM_SUB_D_CFA2, L)
  t22 = RF_3CFF()
  if (t22) goto UM_SUB_L_C38D
  v34 = 255
UM_SUB_L_C38D:
  v38 = v38 | v40
UM_SUB_L_C395:
  if (v34 != 255) goto UM_SUB_L_C291
UM_SUB_L_C39E:
  t23 = $9675()
  t24 = $97BE()
  return v38

UM_SUB_F_C3A7:
  // frame 3
  v3 = 0
UM_SUB_L_C3AF:
  t1 = RF_60CE(4, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(UM_SUB_D_CFDE, 1)
  t4 = RF_484C(8, 23, 7, 1, UM_SUB_D_CFCB, 2, 1)
  (byte)v1 = t4
  if (!((byte)v1 != 255)) goto UM_SUB_L_C3ED
  (byte)$EF65 = 240
  t5 = UM_SUB_F_C283((byte)v1)
  v3 = t5
UM_SUB_L_C3ED:
  if ((byte)v1 == 255) goto UM_SUB_L_C3FC
  if (!v3) goto UM_SUB_L_C3AF
UM_SUB_L_C3FC:
  return v3

wanted_item_delivered:
  // frame 8
  v8 = g_player_items
  if (!((byte)g_princess & 8)) goto UM_SUB_L_C4CD
  if (!((byte)g_princess & 1)) goto UM_SUB_L_C4CD
  if (!((byte)g_king_mission == (byte)g_port)) goto UM_SUB_L_C4CD
  if (!((byte)(g_king_mission+1) == 2)) goto UM_SUB_L_C4CD
  if (!((W[v8 + 2]) & $8000)) goto UM_SUB_L_C4CD
  t1 = RF_21EA(4, 1)
  t2 = RF_60CE(4, 1)
  t3 = RF_60B2()
  t4 = RF_2FB9(UM_SUB_D_D016, 0)
  t5 = RF_40C3((byte)(g_king_mission+3))
  t6 = RF_40DE(t5)
  t7 = RF_2FB9(UM_SUB_D_D02D, 0)
  if (!(g_fame < $C350)) goto UM_SUB_L_C483
  t8 = RL_8962($C350 - g_fame, $07D0)
  g_fame = g_fame + t8
UM_SUB_L_C483:
  t9 = RL_8962(g_palace_savings + g_king_mission+6, $2710)
  g_palace_savings = t9
  $F18A = $F18A - 1
  t10 = RF_472D()
  t11 = RF_60B2()
  t12 = RF_2FB9(UM_SUB_D_D03B, 1)
  t13 = RF_472D()
  W[(((byte)(g_king_mission+3) >> 4) * 2) + v8] = (W[(((byte)(g_king_mission+3) >> 4) * 2) + v8]) & ((1 << ((byte)(g_king_mission+3) & 15)) ^ (-1))
  (byte)g_princess = 0
  return 0
UM_SUB_L_C4CD:
  if (!((byte)g_princess & 8)) goto UM_SUB_L_C587
  if (!((byte)g_princess & 1)) goto UM_SUB_L_C587
  if (!((byte)g_king_mission == (byte)g_port)) goto UM_SUB_L_C587
  if (!((byte)(g_king_mission+1) == 2)) goto UM_SUB_L_C587
  t14 = RF_21EA(4, 1)
  t15 = RF_60CE(4, 1)
  t16 = RF_609A(1)
  t17 = RF_2FB9(UM_SUB_D_D05B, 1)
  t18 = RF_472D()
  t19 = RF_60B2()
  t20 = RF_2FB9(UM_SUB_D_D07D, 1)
  t21 = RF_3CFF()
  if (!t21) goto UM_SUB_L_C52F
  t22 = RF_60B2()
  t23 = RF_2FB9(UM_SUB_D_D0A0, 1)
  t24 = RF_472D()
  goto UM_SUB_L_C585
UM_SUB_L_C52F:
  t25 = RF_60B2()
  t26 = RF_2FB9(UM_SUB_D_D0C1, 1)
  if (!(g_palace_savings < g_king_mission+6)) goto UM_SUB_L_C559
  t27 = RF_472D()
  g_palace_savings = 0
  t28 = RF_60B2()
  t29 = RF_2FB9(UM_SUB_D_D0E1, 1)
  goto UM_SUB_L_C564
UM_SUB_L_C559:
  g_palace_savings = g_palace_savings - g_king_mission+6
UM_SUB_L_C564:
  t30 = RF_472D()
  (byte)g_princess = 0
  t31 = rand(10)
  t32 = RL_8962(g_fame, (t31 * 5) + 200)
  g_fame = g_fame - t32
UM_SUB_L_C585:
  return 0
UM_SUB_L_C587:
  if ((byte)g_princess & 8) goto UM_SUB_L_C663
  if (!((byte)g_princess & 1)) goto UM_SUB_L_C663
  if (!((byte)g_king_mission == (byte)g_port)) goto UM_SUB_L_C663
  if (!((byte)(g_king_mission+1) == 2)) goto UM_SUB_L_C663
  t33 = RF_21EA(4, 1)
  t34 = RF_60CE(4, 1)
  t35 = RF_609A(1)
  t36 = RF_2FB9(UM_SUB_D_D109, 1)
  t37 = RF_472D()
  t38 = RF_60B2()
  t39 = RF_2FB9(UM_SUB_D_D13A, 0)
  t40 = RF_40C3((byte)(g_king_mission+3))
  t41 = RF_40DE(t40)
  t42 = RF_2FB9(UM_SUB_D_D154, 0)
  $F18A = $F18A - 1
  t43 = RF_472D()
  t44 = RF_60B2()
  t45 = RF_2FB9(UM_SUB_D_D165, 1)
  t46 = RF_472D()
  t47 = RF_60B2()
  t48 = rand(2)
  v6 = ((t48 + (byte)g_title) + 1) * 40
  t49 = RF_3619(UM_SUB_D_D18F, v6)
  t50 = RF_3CFF()
  if (!t50) goto UM_SUB_L_C64F
  t51 = RF_60B2()
  t52 = RF_3619(UM_SUB_D_D1AD, v6 >> 1)
  t53 = RL_8962((v6 >> 1) + g_palace_savings, $2710)
  g_palace_savings = t53
  g_king_mission+6 = v6 >> 1
  goto UM_SUB_L_C65B
UM_SUB_L_C64F:
  t54 = RF_60B2()
  t55 = RF_2FB9(UM_SUB_D_D1E4, 1)
UM_SUB_L_C65B:
  (byte)g_princess = L
  t56 = RF_472D()
  return 0
UM_SUB_L_C663:
  t57 = RF_60CE(4, 1)
  t58 = RF_609A(1)
  t59 = RF_2FB9(UM_SUB_D_D1F6, 1)
  t60 = RF_484C(8, 23, 10, 2, UM_SUB_D_CFE9, 3, 2)
  v2 = t60
  if (!(v2 != 255)) goto UM_SUB_L_C696
  t61 = (*(W[(v2 * 2) + UM_SUB_D_CFEF]))()
  v4 = t61
UM_SUB_L_C696:
  if (!(v2 == 255)) goto UM_SUB_L_C663
  if (!(v2 == 255)) goto UM_SUB_L_C6B8
  t62 = RF_60CE(4, 1)
  t63 = RF_609A(1)
  t64 = RF_4B44(UM_SUB_D_D20C)
UM_SUB_L_C6B8:
  return 0
UM_SUB_D_C6BA:

