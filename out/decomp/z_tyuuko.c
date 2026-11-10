Z_TYUUKO_F_D003:
  // frame 0
  t1 = Z_TYUUKO_F_D72B()
  $F99A = t1
  return t1

Z_TYUUKO_F_D00F:
  // frame 0
  return

Z_TYUUKO_F_D015:
  // frame 6
  t1 = Z_TYUUKO_F_D00F()
  v2 = ((a0 % 3) * 9) + 3
  v4 = ((a0 / 3) * 7) + 7
  t2 = RF_40A5(a0 + 5)
  v6 = t2
  t3 = RF_2380(v2, v4, a0 + 5, a0)
  t4 = RF_2F8F(v2, v4 + 5)
  t5 = RF_40DE(v6)
  return t5

Z_TYUUKO_F_D04B:
  // frame 2
  $EF66 = -1
  t1 = $9662()
  goto Z_TYUUKO_L_D063
Z_TYUUKO_L_D05C:
  t2 = Z_TYUUKO_F_D015(v2)
Z_TYUUKO_L_D063:
  v2 = L
  if (v2 < (a0 + 1)) goto Z_TYUUKO_L_D05C
  return v2 < (a0 + 1)

Z_TYUUKO_F_D06E:
  // frame 4
  t1 = RF_40A5(a0)
  t2 = RL_884E(t1 + 20)
  v2 = ((t2 >> 5) & 7) * 10
  t3 = RF_40A5(a0)
  t4 = RL_884E(t3 + 20)
  v4 = (t4 & 3) * 10
  return (v2 + v4) + 20

Z_TYUUKO_F_D09D:
  // frame 0
  t1 = RF_40A5((byte)a0)
  t2 = RL_884E(t1 + 20)
  t3 = RF_40A5((byte)a0)
  t4 = RL_884E(t3 + 20)
  t5 = RF_40A5((byte)a0)
  t6 = RL_884E(t5 + 20)
  return ((((((20 - ((t6 >> 5) & 7)) * 100) / 20) * (10 - ((t4 >> 2) & 3))) / 10) * (4 - ((t2 >> 4) & 1))) / 4

Z_TYUUKO_F_D0F9:
  // frame 2
  t1 = RF_40A5((byte)a0)
  t2 = RL_884E(t1 + 20)
  t3 = RF_40A5((byte)a0)
  t4 = RL_884E(t3 + 20)
  t5 = RF_40A5((byte)a0)
  t6 = RL_884E(t5 + 20)
  v2 = (((((((t6 >> 2) & 3) * 10) + 100) * (10 - ((t4 >> 5) & 7))) / 10) * (((t2 >> 4) & 1) + 3)) >> 2
  if (!(v2 > 100)) goto Z_TYUUKO_L_D157
  goto Z_TYUUKO_L_D158
Z_TYUUKO_L_D157:
Z_TYUUKO_L_D158:
  return

Z_TYUUKO_F_D159:
  // frame 3
  t1 = RF_40A5((byte)a0)
  t2 = RL_884E(t1 + 20)
  (byte)v3 = (t2 >> 5) & 7
  v2 = ((((((byte)v3 + 2) / 2) * 300) + ((((byte)v3 & 1) * (byte)v3) * 50)) + (((byte)v3 / 5) * 50)) + $FF38
  return v2

Z_TYUUKO_F_D1A0:
  // frame 0
  t1 = RF_40A5((byte)a0)
  t2 = RL_8898(t1 + 18)
  return t2

Z_TYUUKO_F_D1B5:
  // frame 0
  t1 = RF_40A5((byte)a0)
  t2 = RL_8898(t1 + 15)
  return t2

Z_TYUUKO_F_D1C9:
  // frame 0
  t1 = RF_40A5((byte)a0)
  t2 = RL_884E(t1 + 17)
  return t2

Z_TYUUKO_F_D1DE:
  // frame 0
  t1 = $9662()
  t2 = $B015()
  t3 = RF_2380(3, 7, (byte)a0, 0)
  t4 = RF_2F8F(11, 8)
  t5 = RF_3608(Z_TYUUKO_D_D778, W[(((byte)a0 - 5) * 2) + Z_TYUUKO_D_D740])
  t6 = RF_2F8F(3, 14)
  t7 = Z_TYUUKO_F_D1B5((byte)a0)
  t8 = RF_3608(Z_TYUUKO_D_D77B, t7)
  t9 = RF_2F8F(14, 16)
  t10 = Z_TYUUKO_F_D159((byte)a0)
  t11 = RF_3608(Z_TYUUKO_D_D785, t10)
  t12 = RF_2F8F(3, 12)
  t13 = Z_TYUUKO_F_D1A0((byte)a0)
  t14 = RF_3608(Z_TYUUKO_D_D794, t13)
  t15 = RF_2F8F(14, 12)
  t16 = Z_TYUUKO_F_D0F9((byte)a0)
  t17 = RF_3608(Z_TYUUKO_D_D79E, t16)
  t18 = RF_2F8F(14, 14)
  t19 = Z_TYUUKO_F_D09D((byte)a0)
  t20 = RF_3608(Z_TYUUKO_D_D7AE, t19)
  t21 = RF_2F8F(14, 10)
  t22 = Z_TYUUKO_F_D06E((byte)a0)
  t23 = RF_3608(Z_TYUUKO_D_D7BE, t22)
  t24 = RF_2F8F(3, 16)
  t25 = Z_TYUUKO_F_D1C9((byte)a0)
  t26 = RF_3608(Z_TYUUKO_D_D7CE, t25)
  t27 = RF_2F8F(19, 18)
  t28 = RF_2FB9(Z_TYUUKO_D_D7D8, 0)
  t29 = RF_3608(Z_TYUUKO_D_D7DE, g_player_gold)
  return t29

Z_TYUUKO_F_D2C4:
  // frame 21
  v2 = 0
Z_TYUUKO_L_D2CB:
  v17 = (v2 * 7) + g_ships
  if (!((B[v17 + 6]) & 64)) goto Z_TYUUKO_L_D2E7
  v2 = v2 + 1
  if (v2 < 5) goto Z_TYUUKO_L_D2CB
Z_TYUUKO_L_D2E7:
  (byte)v3 = v2
  t1 = rand(5)
  (byte)v15 = t1 + 5
  t2 = Z_TYUUKO_F_D06E((byte)a1)
  B[v17] = t2 - (byte)v15
  t3 = Z_TYUUKO_F_D09D((byte)a1)
  B[v17 + 1] = t3 - (byte)v15
  t4 = Z_TYUUKO_F_D0F9((byte)a1)
  B[v17 + 2] = t4 - (byte)v15
  B[v17 + 3] = 0
  W[v17 + 4] = 0
  t5 = RL_8502(0, &v9)
  (byte)v4 = t5
  v2 = 0
Z_TYUUKO_L_D345:
  B[v2 + (&v14)] = v2
  v2 = v2 + 1
  if (v2 < 5) goto Z_TYUUKO_L_D345
  goto Z_TYUUKO_L_D37A
Z_TYUUKO_L_D35C:
  B[((B[((B[v2 + (&v9)]) * 7) + $EB98]) & 15) + (&v14)] = 255
Z_TYUUKO_L_D37A:
  v2 = L
  if (v2 < (byte)v4) goto Z_TYUUKO_L_D35C
  v2 = 0
Z_TYUUKO_L_D387:
  if (!((B[v2 + (&v14)]) != 255)) goto Z_TYUUKO_L_D3A4
  (byte)v4 = B[v2 + (&v14)]
  goto Z_TYUUKO_L_D3AD
Z_TYUUKO_L_D3A4:
  v2 = v2 + 1
  if (v2 < 5) goto Z_TYUUKO_L_D387
Z_TYUUKO_L_D3AD:
  B[v17 + 6] = 0
  B[v17 + 6] = (B[v17 + 6]) | 64
  B[v17 + 6] = (B[v17 + 6]) & 240
  B[v17 + 6] = (B[v17 + 6]) | (byte)v4
  t6 = RF_40A5((byte)v4)
  v19 = t6
  t7 = RF_40A5((byte)a1)
  v21 = t7
  t8 = RL_8898(v21 + 15)
  W[v19 + 15] = t8
  t9 = RL_884E(v21 + 17)
  B[v19 + 17] = t9
  t10 = RL_8898(v21 + 18)
  W[v19 + 18] = t10
  t11 = RL_884E(v21 + 20)
  B[v19 + 20] = t11
  t12 = sys36_memset_long(126, ((byte)v3 * 24) + g_cargo, 0, 24)
  g_player_gold = g_player_gold - a0
  t13 = RF_60CE(5, 1)
  t14 = RF_60B2()
  t15 = RF_4B44(Z_TYUUKO_D_D7E2)
  t16 = RF_3D5C(3)
  t17 = RF_3D5C(1)
Z_TYUUKO_L_D45A:
  t18 = RF_2F8F(6, 25)
  t19 = RF_2FB9(Z_TYUUKO_D_D808, 1)
  t20 = RF_2FB9(Z_TYUUKO_D_D81F, 1)
Z_TYUUKO_L_D471:
  t21 = RF_6557(7, v19, 1)
  if (!t21) goto Z_TYUUKO_L_D471
  t22 = RF_2F8F(6, 25)
  t23 = RF_2FB9(Z_TYUUKO_D_D823, 1)
  t24 = RF_3CFF()
  if (!t24) goto Z_TYUUKO_L_D49C
  t25 = sys16_wait_frames(30)
  goto Z_TYUUKO_L_D4A8
Z_TYUUKO_L_D49C:
  t26 = sys16_wait_frames(30)
  if (1) goto Z_TYUUKO_L_D45A
Z_TYUUKO_L_D4A8:
  t27 = RF_3D5C(3)
  return (byte)v3 + 5

Z_TYUUKO_F_D4B2:
  // frame 17
  (byte)v1 = 0
  t1 = RF_60CE(5, 1)
  t2 = RF_6080()
  t3 = RF_609A(1)
  t4 = RF_2FB9(Z_TYUUKO_D_D9B7, 0)
  t5 = RF_40A5((byte)a0 + 5)
  t6 = RF_40DE(t5)
  t7 = RF_3608(Z_TYUUKO_D_D9BB, W[((byte)a0 * 2) + Z_TYUUKO_D_D833])
  $F18A = $F18A - 1
  t8 = RF_472D()
  t9 = RF_60B2()
  t10 = RF_2FB9(Z_TYUUKO_D_D9C4, 1)
  t11 = RF_3CFF()
  if (!t11) goto Z_TYUUKO_L_D5C7
  t12 = Z_TYUUKO_F_D1DE((byte)a0 + 5)
  W[a1] = 1
  t13 = RF_6080()
  t14 = RF_60B2()
  t15 = RF_40A5((byte)a0 + 5)
  t16 = RL_884E(t15 + 20)
  v9 = (t16 >> 5) & 7
  t17 = RF_40A5((byte)a0 + 5)
  t18 = RL_884E(t17 + 20)
  v3 = ((((t18 & 3) + 2) * (((v9 * 7) / 2) + 1)) / 2) * 700
  t19 = RF_40A5((byte)a0 + 5)
  t20 = RL_884E(t19 + 20)
  v5 = ((((t20 >> 2) & 3) + 1) * (((v9 / 2) * 6) + 1)) * 300
  v7 = ((B[((byte)g_port * 14) + $E6BF]) + 40) * ((v3 + v5) / 100)
  t21 = RF_3619(Z_TYUUKO_D_D9D9, v7)
  v15 = g_player_gold
  t22 = RF_3CFF()
  if (!t22) goto Z_TYUUKO_L_D5E3
  if (!(v15 < v7)) goto Z_TYUUKO_L_D5D3
  t23 = RF_60EE()
  t24 = RF_609A(1)
  t25 = RF_4B44(Z_TYUUKO_D_DA0B)
  t26 = RF_60CE(5, 1)
Z_TYUUKO_L_D5C7:
  t27 = RF_60B2()
  t28 = RF_4B44(Z_TYUUKO_D_DA4F)
  return 0
Z_TYUUKO_L_D5D3:
  t29 = Z_TYUUKO_F_D2C4(v7, (byte)a0 + 5)
  v17 = t29
  return v17
Z_TYUUKO_L_D5E3:
  t30 = rand((byte)g_title + 1)
  if (t30) goto Z_TYUUKO_L_D5C7
  t31 = RF_60B2()
  t32 = RL_8962(v7, v15)
  v13 = t32
  t33 = RF_3C4E(Z_TYUUKO_D_DA1E, 1, v13, 1)
  v11 = t33
  if (!(v11 == $0E0A)) goto Z_TYUUKO_L_D619
  (byte)v1 = 1
  v7 = 0
Z_TYUUKO_L_D619:
  if (!(v11 != (-1))) goto Z_TYUUKO_L_D5C7
  t34 = rand(v7 / 10)
  v7 = (((10 - (byte)g_title) * (v7 / 20)) + (v7 / 2)) - t34
  if (!(v11 < v7)) goto Z_TYUUKO_L_D659
  t35 = RF_60B2()
  t36 = RF_4B44(Z_TYUUKO_D_DA3A)
  return 1
Z_TYUUKO_L_D659:
  t37 = Z_TYUUKO_F_D2C4(v11, (byte)a0 + 5)
  v17 = t37
  if (!(byte)v1) goto Z_TYUUKO_L_D672
  g_player_gold = $EA60
Z_TYUUKO_L_D672:
  return v17

Z_TYUUKO_F_D675:
  // frame 6
  t1 = RF_60CE(5, 1)
  (byte)v2 = ((W[((byte)g_port * 14) + $E6B8]) - 100) / 160
  if (!((byte)v2 < 5)) goto Z_TYUUKO_L_D6B7
  t2 = rand(20)
  if (t2) goto Z_TYUUKO_L_D6B7
  t3 = RF_609A(1)
  t4 = RF_4B44(Z_TYUUKO_D_DA6C)
  (byte)v2 = (byte)v2 + 1
Z_TYUUKO_L_D6B7:
  v6 = 1
  v4 = 0
  t5 = $B027()
  t6 = RF_60CE(5, 1)
Z_TYUUKO_L_D6C4:
  if (!v6) goto Z_TYUUKO_L_D6D5
  t7 = $B015()
  t8 = Z_TYUUKO_F_D04B((byte)v2)
  v6 = 0
Z_TYUUKO_L_D6D5:
  t9 = RF_60B2()
  t10 = RF_2FB9(Z_TYUUKO_D_DA9B, 1)
  t11 = $968B((byte)v2 + 1)
  (byte)v1 = t11
  if (!((byte)v1 != 255)) goto Z_TYUUKO_L_D706
  t12 = Z_TYUUKO_F_D4B2((byte)v1, &v6)
  v4 = t12
  goto Z_TYUUKO_L_D71B
Z_TYUUKO_L_D706:
  t13 = RF_609A(2)
  t14 = RF_60B2()
  t15 = RF_4B44(Z_TYUUKO_D_DAB3)
  t16 = $9662()
  t17 = $B015()
Z_TYUUKO_L_D71B:
  if ((byte)v1 == 255) goto Z_TYUUKO_L_D729
  if (!v4) goto Z_TYUUKO_L_D6C4
Z_TYUUKO_L_D729:
  return v4

Z_TYUUKO_F_D72B:
  // frame 2
  t1 = Z_TYUUKO_F_D675()
  v2 = t1
  if (!(v2 == 1)) goto Z_TYUUKO_L_D73D
  t2 = $9675()
Z_TYUUKO_L_D73D:
  return v2

