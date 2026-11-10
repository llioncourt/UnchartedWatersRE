ZOUSEN_F_B003:
  // frame 0
  t1 = ZOUSEN_F_B310()
  $F9A6 = t1
  return t1

ZOUSEN_F_B00F:
  // frame 0
  return

ZOUSEN_F_B015:
  // frame 0
  t1 = RF_604A(1, 1, 2, 30, 18, 0)
  return t1

ZOUSEN_F_B027:
  // frame 8
  t1 = sys37_brightness_set(0)
  t2 = $9825(0)
  t3 = sys76_lz_decompress(0, RD_8F6D, 22)
  t4 = sys11_vram_load_tiles(416, 294, 0, 127, 2)
  t5 = RF_3D5C(1)
  t6 = RF_4DD8()
  t7 = RF_3DF1(2, 1, 1, 30, 27, $8478, g_fh_cbmap0)
  t8 = RF_3DF1(2, 2, 5, 28, 22, RL_48A6, g_fh_cbmap0)
  t9 = RF_60CE(5, 1)
  t10 = sys37_brightness_set(15)
  return t10

ZOUSEN_F_B08B:
  // frame 0
  t1 = sys37_brightness_set(0)
  t2 = $97F5()
  t3 = $97BE()
  t4 = $9825(1)
  t5 = sys37_brightness_set(15)
  return t5

ZOUSEN_F_B0AA:
  // frame 6
  v2 = (((byte)a0 % 3) * 9) + 3
  v4 = (((byte)a0 / 3) * 7) + 1
  t1 = RF_40A5((byte)a0 + 5)
  v6 = t1
  t2 = RF_2380(v2, v4 + 6, (B[((byte)a1 * 7) + $EB98]) & 15, (byte)a0)
  t3 = RF_2F8F(v2, v4 + 11)
  t4 = RF_40A5((B[((byte)a1 * 7) + $EB98]) & 15)
  t5 = RF_40DE(t4)
  return t5

ZOUSEN_F_B103:
  // frame 4
  $EF66 = -1
  t1 = $9662()
  t2 = ZOUSEN_F_B015()
  t3 = RL_8502(0, a0)
  v2 = t3
  t4 = ZOUSEN_F_B00F()
  goto ZOUSEN_L_B12D
ZOUSEN_L_B121:
  t5 = ZOUSEN_F_B0AA(v4, B[a0 + v4])
ZOUSEN_L_B12D:
  v4 = L
  if (v4 < v2) goto ZOUSEN_L_B121
  return v2

ZOUSEN_F_B136:
  // frame 0
  t1 = RF_2F8F(3, 12)
  t2 = RF_43F6(a0)
  t3 = RF_3608(ZOUSEN_D_C458, B[(a0 * 7) + g_ships], t2)
  return t3

ZOUSEN_F_B158:
  // frame 0
  t1 = RF_2F8F(3, 14)
  t2 = RF_4439(a0)
  t3 = RF_3608(ZOUSEN_D_C473, B[(a0 * 7) + $EB93], t2)
  return t3

ZOUSEN_F_B17A:
  // frame 0
  t1 = RF_2F8F(3, 13)
  t2 = RF_44AA(a0)
  t3 = RF_3608(ZOUSEN_D_C48E, B[(a0 * 7) + $EB94], t2)
  return t3

ZOUSEN_F_B19C:
  // frame 0
  t1 = RF_2F8F(3, 15)
  t2 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t3 = RL_8898(t2 + 18)
  t4 = RF_45A5(a0)
  t5 = RF_3608(ZOUSEN_D_C4A9, t4, t3)
  return t5

ZOUSEN_F_B1CC:
  // frame 0
  t1 = RF_2F8F(3, 18)
  t2 = RF_4523(a0)
  t3 = RF_45E5(a0)
  t4 = RF_3608(ZOUSEN_D_C4C4, t3, t2)
  return t4

ZOUSEN_F_B1EC:
  // frame 0
  t1 = RF_2F8F(3, 16)
  t2 = RF_2FB9(ZOUSEN_D_C4DD, 0)
  t3 = RF_3608(ZOUSEN_D_C4F1, W[(a0 * 7) + $EB96])
  t4 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t5 = RF_3608(ZOUSEN_D_C4F6, W[t4 + 15])
  return t5

ZOUSEN_F_B22A:
  // frame 6
  v6 = (a0 * 24) + g_cargo
  v4 = (a0 * 7) + g_ships
  t1 = RF_40A5((B[v4 + 6]) & 15)
  v2 = t1
  t2 = $9662()
  t3 = ZOUSEN_F_B015()
  t4 = ZOUSEN_F_B00F()
  t5 = RF_2380(3, 7, (B[v4 + 6]) & 15, 0)
  t6 = RF_2F8F(15, 7)
  t7 = RF_3608(ZOUSEN_D_C4FA, v2)
  t8 = RF_2F8F(15, 9)
  t9 = RF_2FB9(ZOUSEN_D_C503, 0)
  t10 = RF_2F8F(15, 10)
  t11 = RF_40DE(W[((B[(a0 * 24) + g_cargo]) * 7) + g_player_name_ptr])
  t12 = RF_23CF(11, 8, B[(a0 * 24) + $E9BD])
  t13 = ZOUSEN_F_B136(a0)
  t14 = ZOUSEN_F_B17A(a0)
  t15 = ZOUSEN_F_B158(a0)
  t16 = ZOUSEN_F_B19C(a0)
  t17 = ZOUSEN_F_B1EC(a0)
  t18 = RF_2F8F(3, 17)
  t19 = RF_2FB9(ZOUSEN_D_C50E, 0)
  t20 = RL_8875(((((B[v4 + 6]) >> 4) & 3) * 2) + $1C33)
  t21 = RF_40DE(t20)
  t22 = RF_2FB9(ZOUSEN_D_C515, 0)
  t23 = RF_2F8F(22, 17)
  t24 = RL_884E(v2 + 17)
  t25 = RF_3608(ZOUSEN_D_C518, B[v4 + 3], t24)
  t26 = ZOUSEN_F_B1CC(a0)
  return t26

ZOUSEN_F_B310:
  // frame 4
  v4 = 0
ZOUSEN_L_B317:
  t1 = RF_60CE(5, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(ZOUSEN_D_C550, 1)
  t4 = RF_484C(8, 23, 7, 2, ZOUSEN_D_C520, 5, 2)
  v2 = t4
  if (!(v2 != 255)) goto ZOUSEN_L_B34D
  t5 = (*(W[(v2 * 2) + ZOUSEN_D_C52A]))()
  v4 = v4 | t5
ZOUSEN_L_B34D:
  if (!(v2 == 255)) goto ZOUSEN_L_B317
  return v4

ZOUSEN_F_B357:
  // frame 14
  t1 = RF_60CE(5, 1)
  t2 = RF_60B2()
  t3 = RF_4B44(ZOUSEN_D_C566)
  if (!(g_player_gold < 10)) goto ZOUSEN_L_B383
  t4 = RF_60EE()
  t5 = RF_60B2()
  t6 = RF_4B44(ZOUSEN_D_C58F)
  return 0
ZOUSEN_L_B383:
  t7 = ZOUSEN_F_B103(&v10)
  (byte)v11 = t7
  t8 = RF_60B2()
  t9 = RF_2FB9(ZOUSEN_D_C5A9, 1)
  t10 = $968B((byte)v11)
  (byte)v12 = t10
  if (!((byte)v12 == 255)) goto ZOUSEN_L_B3BD
  t11 = RF_60B2()
  t12 = RF_4B44(ZOUSEN_D_C5BC)
  t13 = $9662()
  return 0
ZOUSEN_L_B3BD:
  t14 = ZOUSEN_F_B22A(B[(byte)v12 + (&v10)])
  t15 = RF_60B2()
  t16 = RF_2FB9(ZOUSEN_D_C5D2, 1)
  t17 = RF_3CFF()
  v14 = t17
  if (v14) goto ZOUSEN_L_B3E9
  t18 = RF_60B2()
  t19 = RF_4B44(ZOUSEN_D_C5E5)
ZOUSEN_L_B3E9:
  if (!v14) goto ZOUSEN_L_B383
  t20 = RF_60B2()
  t21 = RF_4B44(ZOUSEN_D_C5FE)
  t22 = RF_3D5C(1)
  t23 = RF_3D5C(3)
  t24 = RF_4DD8()
ZOUSEN_L_B404:
  t25 = RF_2F8F(6, 25)
  t26 = RF_2FB9(ZOUSEN_D_C619, 1)
  t27 = RF_2FB9(ZOUSEN_D_C630, 1)
ZOUSEN_L_B41B:
  t28 = RF_40A5(B[(byte)v12 + (&v10)])
  t29 = RF_6557(7, t28, 1)
  if (!t29) goto ZOUSEN_L_B41B
  t30 = RF_2F8F(6, 25)
  t31 = RF_2FB9(ZOUSEN_D_C634, 1)
  t32 = RF_3CFF()
  if (!t32) goto ZOUSEN_L_B454
  t33 = sys16_wait_frames(30)
  goto ZOUSEN_L_B460
ZOUSEN_L_B454:
  t34 = sys16_wait_frames(30)
  if (1) goto ZOUSEN_L_B404
ZOUSEN_L_B460:
  t35 = RF_3D5C(3)
  t36 = RF_4DD8()
  g_player_gold = g_player_gold - 10
  return 1

ZOUSEN_F_B473:
  // frame 24
  t1 = RF_60CE(5, 1)
ZOUSEN_L_B47E:
  t2 = ZOUSEN_F_B103(&v20)
  (byte)v10 = t2
  t3 = RF_60B2()
  t4 = RF_2FB9(ZOUSEN_D_C660, 1)
  t5 = $968B((byte)v10)
  (byte)v21 = t5
  if (!((byte)v21 == 255)) goto ZOUSEN_L_B4B8
  t6 = RF_60B2()
  t7 = RF_4B44(ZOUSEN_D_C67B)
  t8 = $9662()
  return 0
ZOUSEN_L_B4B8:
  (byte)v8 = B[(byte)v21 + (&v20)]
  t9 = ZOUSEN_F_B22A((byte)v8)
  (byte)v7 = 0
  v24 = ((byte)v8 * 7) + g_ships
  if (!(B[v24 + 3])) goto ZOUSEN_L_B4EB
  (byte)v7 = ((B[v24 + 6]) >> 4) & 3
ZOUSEN_L_B4EB:
  t10 = RF_60B2()
  t11 = RF_2FB9(ZOUSEN_D_C691, 1)
  t12 = RF_3CFF()
  if (!t12) goto ZOUSEN_L_B715
  goto ZOUSEN_L_B6F9
ZOUSEN_L_B4FF:
  t13 = RF_60CE(5, 1)
  t14 = RF_60B2()
  t15 = RF_2FB9(ZOUSEN_D_C6A2, 1)
  t16 = RF_484C(8, 23, 10, 2, ZOUSEN_D_C644, 3, 2)
  (byte)v21 = t16
  if (!((byte)v21 != 255)) goto ZOUSEN_L_B6F9
  v2 = (((byte)v21 >> 1) + 1) * ((B[((byte)g_port * 14) + $E6BF]) + 50)
  t17 = RF_40A5((B[v24 + 6]) & 15)
  t18 = RL_884E(t17 + 17)
  (byte)v9 = t18
  if (!(((byte)v21 + 1) == (byte)v7)) goto ZOUSEN_L_B56D
  (byte)v9 = (byte)v9 - (B[v24 + 3])
ZOUSEN_L_B56D:
  if (!(byte)v9) goto ZOUSEN_L_B6EC
  t19 = RF_60B2()
  t20 = RF_2FB9(ZOUSEN_D_C6B5, 0)
  t21 = RL_8875((((byte)v21 + 1) * 2) + $1C33, v2)
  t22 = RF_40DE(t21)
  t23 = RF_3608(ZOUSEN_D_C6B7, v2)
  $F18A = $F18A - 1
  t24 = RF_472D()
  t25 = RF_60B2()
  t26 = RF_2F8F(12, 25)
  t27 = RF_3619(ZOUSEN_D_C6D3, g_player_gold)
  t28 = RF_609A(1)
  t29 = RF_3C6D(ZOUSEN_D_C6E3, 1, (byte)v9)
  v4 = t29
  if (!(v4 != (-1))) goto ZOUSEN_L_B6F9
  if (!(g_player_gold < (v4 * v2))) goto ZOUSEN_L_B5E9
  t30 = RF_60EE()
  t31 = RF_60B2()
  goto ZOUSEN_L_B6F5
ZOUSEN_L_B5E9:
  t32 = RF_6080()
  g_player_gold = g_player_gold - (v2 * v4)
  if (!(((byte)v21 + 1) == (byte)v7)) goto ZOUSEN_L_B62A
  t33 = RF_60B2()
  if (!(v4 == 1)) goto ZOUSEN_L_B613
  goto ZOUSEN_L_B616
ZOUSEN_L_B613:
ZOUSEN_L_B616:
  t34 = RF_3619(ZOUSEN_D_C70B, v4, L)
  goto ZOUSEN_L_B6E1
ZOUSEN_L_B62A:
  if (!(B[v24 + 3])) goto ZOUSEN_L_B69F
  t35 = RF_60B2()
  t36 = RF_2FB9(ZOUSEN_D_C731, 0)
  t37 = RL_8875((((byte)v21 + 1) * 2) + $1C33)
  t38 = RF_40DE(t37)
  t39 = RF_2FB9(ZOUSEN_D_C733, 0)
  v6 = (((((byte)v7 >> 1) + 1) * ((B[((byte)g_port * 14) + $E6BF]) + 50)) >> 1) * (B[v24 + 3])
  if (!((g_player_gold + v6) > 60000)) goto ZOUSEN_L_B696
ZOUSEN_L_B690:
  g_player_gold = L
  goto ZOUSEN_L_B6C5
ZOUSEN_L_B696:
  goto ZOUSEN_L_B690
ZOUSEN_L_B69F:
  t40 = RF_60B2()
  t41 = RF_2FB9(ZOUSEN_D_C76A, 0)
  t42 = RL_8875((((byte)v21 + 1) * 2) + $1C33)
  t43 = RF_40DE(t42)
  t44 = RF_2FB9(ZOUSEN_D_C783, 0)
ZOUSEN_L_B6C5:
  B[v24 + 3] = v4
  B[v24 + 6] = (B[v24 + 6]) & 207
ZOUSEN_L_B6E1:
  B[v24 + 6] = L
  t45 = RF_3DDF(1)
  t46 = $9662()
  return 1
ZOUSEN_L_B6EC:
  t47 = RF_60EE()
  t48 = RF_60B2()
ZOUSEN_L_B6F5:
  t49 = RF_4B44(ZOUSEN_D_C785)
ZOUSEN_L_B6F9:
  if ((byte)v21 != 255) goto ZOUSEN_L_B4FF
  t50 = RF_60CE(5, 1)
  t51 = RF_609A(1)
  t52 = RF_4B44(ZOUSEN_D_C7A1)
ZOUSEN_L_B715:
  t53 = RF_60B2()
  t54 = RF_4B44(ZOUSEN_D_C7B7)
  goto ZOUSEN_L_B47E

ZOUSEN_F_B722:
  // frame 32
ZOUSEN_L_B727:
  t1 = ZOUSEN_F_B103(&v14)
  (byte)v15 = t1
  t2 = RF_60CE(5, 1)
  t3 = RF_60B2()
  t4 = RF_2FB9(ZOUSEN_D_C7D0, 1)
  t5 = $968B((byte)v15)
  (byte)v16 = t5
  if (!((byte)v16 == 255)) goto ZOUSEN_L_B767
  t6 = RF_60B2()
  t7 = RF_4B44(ZOUSEN_D_C7E9)
  t8 = $9662()
  return 0
ZOUSEN_L_B767:
  t9 = ZOUSEN_F_B22A(B[(byte)v16 + (&v14)])
  t10 = RF_60B2()
  t11 = RF_2FB9(ZOUSEN_D_C7FF, 1)
  t12 = RF_3CFF()
  v2 = t12
  if (v2) goto ZOUSEN_L_B793
  t13 = RF_60B2()
  t14 = RF_4B44(ZOUSEN_D_C812)
ZOUSEN_L_B793:
  if (!v2) goto ZOUSEN_L_B727
  t15 = RF_6080()
  t16 = RF_40A5(B[(byte)v16 + (&v14)])
  t17 = RL_884E(t16 + 20)
  v18 = ((((t17 >> 2) & 3) + 1) * ((B[((byte)g_port * 14) + $E6BF]) + 20)) * 3
  t18 = RF_2F8F(12, 25)
  t19 = RF_3619(ZOUSEN_D_C82B, g_player_gold)
  t20 = RF_609A(1)
  t21 = RF_40A5(B[(byte)v16 + (&v14)])
  t22 = RL_884E(t21 + 20)
  v4 = (t22 >> 4) & 1
  if (!v4) goto ZOUSEN_L_B803
  goto ZOUSEN_L_B806
ZOUSEN_L_B803:
ZOUSEN_L_B806:
  t23 = RF_3619(ZOUSEN_D_C83B, L, v18)
  t24 = RF_3CFF()
  v2 = t24
  if (!v2) goto ZOUSEN_L_B822
  if (!v2) goto ZOUSEN_L_B850
  if (!(g_player_gold < v18)) goto ZOUSEN_L_B850
ZOUSEN_L_B822:
  if (!v2) goto ZOUSEN_L_B83B
  if (!(g_player_gold < v18)) goto ZOUSEN_L_B83B
  t25 = RF_60EE()
  t26 = RF_60B2()
  t27 = RF_4B44(ZOUSEN_D_C85F)
ZOUSEN_L_B83B:
  t28 = RF_60CE(5, 1)
  t29 = RF_60B2()
  t30 = RF_4B44(ZOUSEN_D_C879)
  t31 = $9662()
  v2 = 0
ZOUSEN_L_B850:
  if (!v2) goto ZOUSEN_L_B727
  t32 = RF_60B2()
  t33 = RF_4B44(ZOUSEN_D_C88F)
  v22 = ((B[(byte)v16 + (&v14)]) * 24) + g_cargo
  if (B[v22]) goto ZOUSEN_L_B879
  $F9AA = 1
ZOUSEN_L_B879:
  g_player_gold = g_player_gold - v18
  t34 = RF_40A5(B[(byte)v16 + (&v14)])
  B[t34 + 20] = (B[t34 + 20]) ^ 16
  t35 = RF_40A5((B[((B[(byte)v16 + (&v14)]) * 7) + $EB98]) & 15)
  t36 = RL_884E(t35 + 20)
  v26 = (t36 >> 5) & 7
  t37 = RF_40A5((B[((B[(byte)v16 + (&v14)]) * 7) + $EB98]) & 15)
  t38 = RL_884E(t37 + 20)
  v28 = t38 & 3
  t39 = RF_40A5((B[((B[(byte)v16 + (&v14)]) * 7) + $EB98]) & 15)
  t40 = RL_884E(t39 + 20)
  v30 = (t40 >> 2) & 3
  t41 = RF_40A5((B[((B[(byte)v16 + (&v14)]) * 7) + $EB98]) & 15)
  t42 = RL_884E(t41 + 20)
  v32 = (t42 >> 4) & 1
  v20 = ((B[(byte)v16 + (&v14)]) * 7) + g_ships
  t43 = RL_8962(B[v20], ((v26 * 10) + (v28 * 10)) + 20)
  B[v20] = t43
  t44 = RL_8962(B[v20 + 1], ((((((20 - v26) * 100) / 20) * (10 - v30)) / 10) * (4 - v32)) / 4)
  B[v20 + 1] = t44
  t45 = RL_8962(B[v20 + 2], (((((v30 * 10) + 100) * (10 - v26)) / 10) * (v32 + 3)) >> 2)
  B[v20 + 2] = t45
  t46 = $9662()
  return 1

ZOUSEN_F_B9A7:
  // frame 22
  v4 = 1
ZOUSEN_L_B9AE:
  (byte)v17 = 1
  t1 = RF_60CE(5, 1)
  t2 = RF_60B2()
  if (!v4) goto ZOUSEN_L_B9CC
  t3 = RF_2FB9(ZOUSEN_D_C8DE, 1)
  v4 = 0
  goto ZOUSEN_L_B9D4
ZOUSEN_L_B9CC:
  t4 = RF_2FB9(ZOUSEN_D_C91D, 1)
ZOUSEN_L_B9D4:
  t5 = ZOUSEN_F_B103(&v14)
  (byte)v15 = t5
  t6 = $968B((byte)v15)
  (byte)v16 = t6
  if (!((byte)v16 == 255)) goto ZOUSEN_L_BA03
  t7 = RF_60B2()
  t8 = RF_4B44(ZOUSEN_D_C931)
  t9 = $9662()
  return 0
ZOUSEN_L_BA03:
  t10 = ZOUSEN_F_B22A(B[(byte)v16 + (&v14)])
  t11 = RF_60B2()
  t12 = RF_2FB9(ZOUSEN_D_C947, 1)
  t13 = RF_3CFF()
  v2 = t13
  if (v2) goto ZOUSEN_L_BA2F
  t14 = RF_60B2()
  t15 = RF_4B44(ZOUSEN_D_C95A)
ZOUSEN_L_BA2F:
  if (!v2) goto ZOUSEN_L_B9D4
  v2 = 0
  if (!(g_player_gold > 35000)) goto ZOUSEN_L_BAAC
  if (!((W[((byte)g_port * 14) + g_ports]) > 850)) goto ZOUSEN_L_BAAC
  t16 = rand(100)
  if (t16) goto ZOUSEN_L_BAAC
  t17 = rand($03E8)
  v20 = t17 + $7530
  t18 = RF_60B2()
  t19 = RF_3619(ZOUSEN_D_C96E, v20)
  t20 = RF_3CFF()
  if (!t20) goto ZOUSEN_L_BA9D
  g_player_gold = g_player_gold - v20
  B[((B[(byte)v16 + (&v14)]) * 24) + $E9BD] = 7
  t21 = $9662()
  return 1
ZOUSEN_L_BA9D:
  t22 = RF_60B2()
  t23 = RF_4B44(ZOUSEN_D_C9A6)
  t24 = $9662()
  return 0
ZOUSEN_L_BAAC:
  v22 = ((B[(byte)v16 + (&v14)]) * 24) + g_cargo
  (byte)v15 = ((W[((byte)g_port * 14) + g_ports]) / 170) + 1
ZOUSEN_L_BAD0:
  if (!((byte)v17 != 255)) goto ZOUSEN_L_BBE9
  if (v2) goto ZOUSEN_L_BBE9
  t25 = RF_60CE(5, 1)
  t26 = RF_60B2()
  (byte)v18 = B[v22 + 23]
  if (!(byte)v18) goto ZOUSEN_L_BB3F
  t27 = RF_2FB9(ZOUSEN_D_C9D8, 1)
  if (!((byte)v18 == 2)) goto ZOUSEN_L_BB0C
  t28 = RF_2FB9(ZOUSEN_D_C9E6, 1)
ZOUSEN_L_BB0C:
  if (!((byte)v18 != 7)) goto ZOUSEN_L_BB2F
  (byte)v18 = (byte)v18 - 1
  t29 = RF_3619(ZOUSEN_D_C9E8, W[((byte)v18 * 2) + ZOUSEN_D_C8AB])
  goto ZOUSEN_L_BB37
ZOUSEN_L_BB2F:
  t30 = RF_2FB9(ZOUSEN_D_C9EC, 1)
ZOUSEN_L_BB37:
  t31 = RF_2FB9(ZOUSEN_D_C9F3, 1)
ZOUSEN_L_BB3F:
  t32 = RF_2FB9(ZOUSEN_D_CA01, 1)
  t33 = $97B0(20, 6, 10, 15)
  t34 = RF_4783(20, 6, (byte)v15, ZOUSEN_D_C8AB, 2)
  (byte)v17 = t34
  t35 = RF_6080()
  t36 = $97BE()
  if (!((byte)v17 != 255)) goto ZOUSEN_L_BAD0
  v20 = (1 << (byte)v17) * $03E8
  t37 = RF_2F8F(12, 25)
  t38 = RF_3619(ZOUSEN_D_CA17, g_player_gold)
  t39 = RF_609A(1)
  t40 = RF_3619(ZOUSEN_D_CA27, v20)
  t41 = RF_3CFF()
  if (!t41) goto ZOUSEN_L_BAD0
  if (!(g_player_gold < v20)) goto ZOUSEN_L_BBBA
  t42 = RF_60EE()
  t43 = RF_60B2()
  t44 = RF_4B44(ZOUSEN_D_CA46)
  goto ZOUSEN_L_BAD0
ZOUSEN_L_BBBA:
  t45 = RF_60B2()
  t46 = RF_4B44(ZOUSEN_D_CA60)
  g_player_gold = g_player_gold - v20
  B[((B[(byte)v16 + (&v14)]) * 24) + $E9BD] = (byte)v17 + 1
  t47 = $9662()
  return 1
ZOUSEN_L_BBE9:
  if ((byte)v17 != 255) goto ZOUSEN_L_B9AE
  if (!v2) goto ZOUSEN_L_B9AE
  t48 = $9662()
  return v2

ZOUSEN_F_BBFC:
  // frame 3
  v2 = 0
ZOUSEN_L_BC03:
  t1 = RF_60CE(5, 1)
  t2 = RF_609A(1)
  t3 = RF_2FB9(ZOUSEN_D_CAB2, 1)
  t4 = RF_484C(8, 23, 7, 2, ZOUSEN_D_CA80, 4, 2)
  (byte)v3 = t4
  if (!((byte)v3 != 255)) goto ZOUSEN_L_BC55
  t5 = RF_6080()
  t6 = $97B0(1, 1, 30, 27)
  (byte)$EF65 = 240
  t7 = ZOUSEN_F_B027()
  t8 = (*(W[((byte)v3 * 2) + ZOUSEN_D_CA88]))()
  v2 = t8
  t9 = ZOUSEN_F_B08B()
ZOUSEN_L_BC55:
  if ((byte)v3 == 255) goto ZOUSEN_L_BC63
  if (!v2) goto ZOUSEN_L_BC03
ZOUSEN_L_BC63:
  return v2

ZOUSEN_F_BC65:
  // frame 4
  if (!(g_fame < $C350)) goto ZOUSEN_L_BCA1
  v2 = ((byte)g_port * 14) + g_ports
  t1 = rand(100)
  v4 = (t1 + (((W[v2 + 4]) + W[v2]) >> 1)) + g_fame
  t2 = RL_8962(v4, $C350)
  g_fame = t2
ZOUSEN_L_BCA1:
  return

ZOUSEN_F_BCA2:
  // frame 4
  v2 = ((byte)g_port * 14) + g_ports
  v4 = B[((a0 * 2) * 2) + $EEC0]
  t1 = rand(3)
  v4 = ((t1 + (((W[v2 + 4]) + W[v2]) / 65)) + v4) + 5
  t2 = RL_8962(v4, 100)
  B[((a0 * 2) * 2) + $EEC0] = t2
  return t2

ZOUSEN_F_BCE2:
  // frame 14
  if (g_player_gold) goto ZOUSEN_L_BCFC
  t1 = RF_60EE()
  t2 = RF_60B2()
  t3 = RF_4B44(ZOUSEN_D_CAC4)
  return 0
ZOUSEN_L_BCFC:
  if (!((byte)g_port < 3)) goto ZOUSEN_L_BD28
  t4 = RF_60CE(5, 1)
  t5 = RF_60B2()
  if (!((byte)g_port == 2)) goto ZOUSEN_L_BD1B
  goto ZOUSEN_L_BD1E
ZOUSEN_L_BD1B:
ZOUSEN_L_BD1E:
  t6 = RF_3619(ZOUSEN_D_CADB, L)
  return 0
ZOUSEN_L_BD28:
  if (!((W[((byte)g_port * 14) + $E6BA]) == $EA60)) goto ZOUSEN_L_BD4B
  t7 = RF_60CE(5, 1)
  t8 = RF_60B2()
  t9 = RF_4B44(ZOUSEN_D_CB18)
  return 0
ZOUSEN_L_BD4B:
  t10 = RF_60CE(5, 1)
  t11 = RF_60B2()
  t12 = RF_4B44(ZOUSEN_D_CB54)
  v2 = $EA60 - (W[((byte)g_port * 14) + $E6BA])
  if (!(g_player_gold < v2)) goto ZOUSEN_L_BD78
  v2 = g_player_gold
ZOUSEN_L_BD78:
  t13 = RF_60EE()
  t14 = RF_609A(1)
  t15 = RF_3619(ZOUSEN_D_CB86, g_player_gold, v2)
  t16 = RF_3C4E(ZOUSEN_D_CBB2, 1, v2)
  v4 = t16
  if (!(v4 == (-1))) goto ZOUSEN_L_BDAE
  t17 = RF_60CE(5, 1)
  t18 = RF_60B2()
  t19 = RF_4B44(ZOUSEN_D_CBB3)
  return 0
ZOUSEN_L_BDAE:
  W[((byte)g_port * 14) + $E6BA] = (W[((byte)g_port * 14) + $E6BA]) + v4
  g_player_gold = g_player_gold - v4
  t20 = RF_60CE(5, 1)
  t21 = RF_60B2()
  if (!(v4 < $03E8)) goto ZOUSEN_L_BDE4
  v6 = (v4 + 1) / 20
  goto ZOUSEN_L_BE08
ZOUSEN_L_BDE4:
  if (!(v4 > $270F)) goto ZOUSEN_L_BDFC
  v6 = (v4 / $03E8) + 150
  goto ZOUSEN_L_BE08
ZOUSEN_L_BDFC:
  v6 = (v4 / $03E8) + 50
ZOUSEN_L_BE08:
  t22 = RF_2FB9(ZOUSEN_D_CBF5, 1)
  t23 = RF_3DDF(1)
  v14 = B[((byte)g_port * 14) + $E6BC]
  if (!(v14 > 49)) goto ZOUSEN_L_BE27
  goto ZOUSEN_L_BE2B
ZOUSEN_L_BE27:
ZOUSEN_L_BE2B:
  t24 = rand(2)
  v8 = t24 + ((v6 + 1) / (L / 7))
  v10 = (B[(byte)g_port + g_port_flags]) & 3
  t25 = port_owner_update((byte)g_port, 0, v8)
  v12 = (B[(byte)g_port + g_port_flags]) & 3
  if (!(v10 != v12)) goto ZOUSEN_L_BE8A
  if (v12) goto ZOUSEN_L_BE7B
  if (v10 == 2) goto ZOUSEN_L_BE71
  if (!(v10 == 3)) goto ZOUSEN_L_BE7B
ZOUSEN_L_BE71:
  t26 = ZOUSEN_F_BCA2(v10 - 1)
  goto ZOUSEN_L_BE8A
ZOUSEN_L_BE7B:
  if (!(v10 != 1)) goto ZOUSEN_L_BE8A
  if (!(v12 == 1)) goto ZOUSEN_L_BE8A
  t27 = ZOUSEN_F_BC65()
ZOUSEN_L_BE8A:
  return 1

ZOUSEN_F_BE8C:
  // frame 16
  t1 = RF_40A5((B[((byte)a0 * 7) + $EB98]) & 15)
  t2 = RL_884E(t1 + 20)
  v10 = (t2 >> 5) & 7
  t3 = RF_40A5((B[((byte)a0 * 7) + $EB98]) & 15)
  t4 = RL_884E(t3 + 20)
  v12 = t4 & 3
  t5 = RF_40A5((B[((byte)a0 * 7) + $EB98]) & 15)
  t6 = RL_884E(t5 + 20)
  v14 = (t6 >> 2) & 3
  t7 = RF_40A5((B[((byte)a0 * 7) + $EB98]) & 15)
  t8 = RL_884E(t7 + 20)
  v16 = (t8 >> 4) & 1
  v8 = ((byte)a0 * 7) + g_ships
  v6 = (((((v14 * 10) + 100) * (10 - v10)) / 10) * (v16 + 3)) / 4
  t9 = RL_8962(v6, 100)
  v6 = t9
  v4 = (((((((((20 - v10) * 100) / 20) * (10 - v14)) / 10) * (4 - v16)) / 4) - (B[v8 + 1])) + ((((v10 * 10) + (v12 * 10)) + 20) - B[v8])) + (v6 - (B[v8 + 2]))
  if (v4) goto ZOUSEN_L_BF78
  t10 = RF_60B2()
  t11 = RF_4B44(ZOUSEN_D_CC02)
  return 0
ZOUSEN_L_BF78:
  v2 = (((B[((byte)g_port * 14) + $E6BF]) + 15) * v4) / 10
  t12 = RF_6080()
  t13 = RF_60B2()
  t14 = RF_3619(ZOUSEN_D_CC27, v2)
  t15 = RF_3CFF()
  if (!t15) goto ZOUSEN_L_BFB3
  if (!(g_player_gold < v2)) goto ZOUSEN_L_BFCA
  t16 = RF_60EE()
  t17 = RF_609A(1)
  t18 = RF_4B44(ZOUSEN_D_CC55)
ZOUSEN_L_BFB3:
  t19 = RF_60CE(5, 1)
  t20 = RF_6080()
  t21 = RF_609A(1)
  t22 = RF_4B44(ZOUSEN_D_CC70)
  return 0
ZOUSEN_L_BFCA:
  g_player_gold = g_player_gold - v2
  B[v8] = ((v10 * 10) + (v12 * 10)) + 20
  B[v8 + 1] = ((((((20 - v10) * 100) / 20) * (10 - v14)) / 10) * (4 - v16)) / 4
  B[v8 + 2] = (((((v14 * 10) + 100) * (10 - v10)) / 10) * (v16 + 3)) / 4
  v6 = B[v8 + 2]
  if (!(v6 > 100)) goto ZOUSEN_L_C027
  B[v8 + 2] = 100
ZOUSEN_L_C027:
  return 1

ZOUSEN_F_C029:
  // frame 10
  v10 = 0
  t1 = RF_6080()
  t2 = $97B0(1, 1, 30, 27)
  t3 = ZOUSEN_F_B027()
  t4 = ZOUSEN_F_B103(&v6)
  (byte)v8 = t4
  (byte)$EF65 = 240
ZOUSEN_L_C051:
  t5 = RF_6080()
  t6 = RF_60CE(5, 1)
  t7 = RF_60B2()
  t8 = RF_2FB9(ZOUSEN_D_CCA2, 1)
  t9 = $968B((byte)v8)
  (byte)v7 = t9
  if (!((byte)v7 != 255)) goto ZOUSEN_L_C090
  t10 = ZOUSEN_F_BE8C(B[(byte)v7 + (&v6)])
  v10 = v10 | t10
  goto ZOUSEN_L_C09A
ZOUSEN_L_C090:
  t11 = RF_60B2()
  t12 = RF_4B44(ZOUSEN_D_CCB4)
ZOUSEN_L_C09A:
  if ((byte)v7 != 255) goto ZOUSEN_L_C051
  t13 = RF_6080()
  t14 = $9662()
  t15 = ZOUSEN_F_B08B()
  return v10

ZOUSEN_F_C0AF:
  // frame 20
  t1 = RL_8502(0, &v7)
  v20 = t1
  if (!(v20 == 1)) goto ZOUSEN_L_C0D3
  t2 = RF_60EE()
  t3 = RF_60B2()
  t4 = RF_4B44(ZOUSEN_D_CCCE)
  return 0
ZOUSEN_L_C0D3:
  v18 = 0
  (byte)$EF65 = 240
  t5 = RF_6080()
  t6 = $97B0(1, 1, 30, 27)
  t7 = ZOUSEN_F_B027()
  t8 = ZOUSEN_F_B103(&v7)
  v20 = t8
ZOUSEN_L_C0F4:
  t9 = RF_60CE(5, 1)
  t10 = RF_60B2()
  t11 = RF_2FB9(ZOUSEN_D_CCE3, 1)
  t12 = $968B(v20)
  (byte)v2 = t12
  if (!((byte)v2 == 255)) goto ZOUSEN_L_C12B
  t13 = RF_609A(2)
  t14 = RF_4B44(ZOUSEN_D_CCF6)
  t15 = $9662()
  t16 = ZOUSEN_F_B08B()
  return 0
ZOUSEN_L_C12B:
  (byte)v1 = B[(byte)v2 + (&v7)]
  t17 = RF_6080()
  if (B[((byte)v1 * 24) + g_cargo]) goto ZOUSEN_L_C169
  t18 = RF_60EE()
  t19 = RF_609A(1)
  goto ZOUSEN_L_C162
ZOUSEN_L_C157:
  t20 = RF_60EE()
  t21 = RF_609A(1)
ZOUSEN_L_C162:
  t22 = RF_4B44(ZOUSEN_D_CD29)
  goto ZOUSEN_L_C2E2
ZOUSEN_L_C169:
  if (W[((byte)v1 * 7) + $EB96]) goto ZOUSEN_L_C157
  v10 = ((byte)v1 * 24) + $E9AC
  if (!(((((W[v10 + 2]) + (W[v10 + 4])) + (W[v10 + 6])) + (W[v10 + 8])) + W[v10])) goto ZOUSEN_L_C1B2
  t23 = RF_60EE()
  t24 = RF_60B2()
  t25 = RF_2FB9(ZOUSEN_D_CD4F, 1)
  t26 = RF_3CFF()
  if (!t26) goto ZOUSEN_L_C2E2
ZOUSEN_L_C1B2:
  t27 = ZOUSEN_F_B22A((byte)v1)
  t28 = RF_40A5((B[((byte)v1 * 7) + $EB98]) & 15)
  t29 = RL_884E(t28 + 20)
  (byte)v8 = (t29 >> 5) & 7
  t30 = RF_40A5((B[((byte)v1 * 7) + $EB98]) & 15)
  t31 = RL_884E(t30 + 20)
  v14 = ((((((byte)v8 * 7) >> 1) + 1) * ((t31 & 3) + 2)) >> 1) * 3
  t32 = RF_40A5((B[((byte)v1 * 7) + $EB98]) & 15)
  t33 = RL_884E(t32 + 20)
  v16 = ((((byte)v8 >> 1) * 6) + 1) * (((t33 >> 2) & 3) + 1)
  v12 = ((B[((byte)g_port * 14) + $E6BF]) + 50) * (v14 + v16)
  t34 = RF_60CE(5, 1)
  t35 = RF_60B2()
  t36 = RF_2FB9(ZOUSEN_D_CD81, 1)
  t37 = RF_472D()
  t38 = RF_60B2()
  t39 = RF_3619(ZOUSEN_D_CDA4, v12)
  t40 = RF_3CFF()
  if (!t40) goto ZOUSEN_L_C269
  goto ZOUSEN_L_C28F
ZOUSEN_L_C269:
  t41 = rand((byte)g_title + 1)
  if (t41) goto ZOUSEN_L_C290
  v12 = v12 + (v12 / 10)
  t42 = RF_6080()
  t43 = RF_609A(1)
  t44 = RF_3619(ZOUSEN_D_CDC1, v12)
  t45 = RF_3CFF()
ZOUSEN_L_C28F:
  v18 = L
ZOUSEN_L_C290:
  if (!v18) goto ZOUSEN_L_C2D6
  if (!((g_player_gold + v12) > 60000)) goto ZOUSEN_L_C2B3
  goto ZOUSEN_L_C2B9
ZOUSEN_L_C2B3:
ZOUSEN_L_C2B9:
  g_player_gold = L
  B[((byte)v1 * 7) + $EB98] = (B[((byte)v1 * 7) + $EB98]) & 191
  t46 = RF_60B2()
  goto ZOUSEN_L_C162
ZOUSEN_L_C2D6:
  t47 = RF_60B2()
  t48 = RF_4B44(ZOUSEN_D_CE06)
  v18 = 1
ZOUSEN_L_C2E2:
  if (!v18) goto ZOUSEN_L_C0F4
  t49 = ZOUSEN_F_B08B()
  return v18

ZOUSEN_F_C2EB:
  // frame 4
  $F99A = 0
  v4 = $0F00
  t1 = sys24_file_open(W[(a0 * 2) + ZOUSEN_D_CE30])
  v2 = t1
  t2 = sys26_file_seek(v2, 0, 0, pop())
  t3 = sys27_file_read_7e(v2, $D000, v4)
  t4 = sys25_file_close(v2)
  if (!a1) goto ZOUSEN_L_C331
  t5 = (*$D000)()
ZOUSEN_L_C331:
  return $F99A

ZOUSEN_F_C335:
  // frame 25
  t1 = RL_8502(0, &v23)
  if (!(t1 == 5)) goto ZOUSEN_L_C357
  t2 = RF_60EE()
  t3 = RF_60B2()
  t4 = RF_4B44(ZOUSEN_D_CE67)
  return 0
ZOUSEN_L_C357:
  t5 = RF_4251(&v23)
  if (t5) goto ZOUSEN_L_C371
  t6 = RF_60EE()
  t7 = RF_60B2()
  t8 = RF_4B44(ZOUSEN_D_CE7D)
  return 0
ZOUSEN_L_C371:
  if (!((W[((byte)g_port * 14) + $E6B8]) < 100)) goto ZOUSEN_L_C393
  t9 = RF_60CE(5, 1)
  t10 = RF_60B2()
  t11 = RF_4B44(ZOUSEN_D_CE99)
  return 0
ZOUSEN_L_C393:
  v2 = 0
ZOUSEN_L_C395:
  t12 = RF_60CE(5, 1)
  t13 = RF_60B2()
  t14 = RF_2FB9(ZOUSEN_D_CEC1, 1)
  t15 = RF_484C(8, 23, 0, 2, ZOUSEN_D_CE46, 2, 2)
  (byte)v3 = t15
  if (!((byte)v3 != 255)) goto ZOUSEN_L_C3F0
  t16 = RF_6080()
  t17 = $97B0(1, 1, 30, 27)
  t18 = ZOUSEN_F_C2EB((byte)v3, 1)
  v2 = t18
  (byte)$EF65 = 240
  if (!v2) goto ZOUSEN_L_C3ED
  if (!(v2 != 1)) goto ZOUSEN_L_C3ED
  t19 = RF_3D5C(3)
ZOUSEN_L_C3ED:
  t20 = ZOUSEN_F_B08B()
ZOUSEN_L_C3F0:
  if ((byte)v3 == 255) goto ZOUSEN_L_C3FE
  if (!v2) goto ZOUSEN_L_C395
ZOUSEN_L_C3FE:
  if (!v2) goto ZOUSEN_L_C455
  if (!(v2 != 1)) goto ZOUSEN_L_C455
  v2 = v2 - 5
  v25 = (v2 * 7) + g_ships
  t21 = RF_60EE()
  t22 = RF_60B2()
  t23 = RF_2FB9(ZOUSEN_D_CED5, 0)
  t24 = RF_40A5((B[v25 + 6]) & 15)
  t25 = RF_40DE(t24)
  t26 = RF_2FB9(ZOUSEN_D_CEF1, 0)
  t27 = RF_430C()
  B[(v2 * 24) + g_cargo] = t27
  v2 = 1
  $F18A = $F18A - 1
  t28 = RF_472D()
ZOUSEN_L_C455:
  return v2

