Z_SINZOU_F_D003:
  // frame 0
  t1 = Z_SINZOU_F_D759()
  $F99A = t1
  return t1

Z_SINZOU_F_D00F:
  // frame 0
  t1 = face_block_load(a0, a1, a2, 255, 0, a2)
  return t1

Z_SINZOU_F_D021:
  // frame 0
  return

Z_SINZOU_F_D027:
  // frame 6
  $EF66 = -1
  t1 = Z_SINZOU_F_D021()
  goto Z_SINZOU_L_D069
Z_SINZOU_L_D038:
  v4 = ((v2 % 3) * 9) + 3
  v6 = (v2 / 3) * 7
  t2 = Z_SINZOU_F_D00F(v4, v6 + 7, v2)
  t3 = RF_2F8F(v4, v6 + 11)
  $F18C = v4
  t4 = RF_2FB9(W[(v2 * 2) + Z_SINZOU_D_D810], 0)
Z_SINZOU_L_D069:
  v2 = L
  if (v2 <= a0) goto Z_SINZOU_L_D038
  return v2 <= a0

Z_SINZOU_F_D071:
  // frame 0
  return (((W[a0 + 6]) * 10) + (W[a0] * 10)) + 20

Z_SINZOU_F_D085:
  // frame 0
  t1 = RF_2F8F(14, 10)
  t2 = Z_SINZOU_F_D071(a0)
  t3 = RF_3608(Z_SINZOU_D_D857, t2)
  return t3

Z_SINZOU_F_D09E:
  // frame 0
  return ((((((20 - (W[a0 + 6])) * 100) / 20) * (10 - (W[a0 + 2]))) / 10) * (4 - (W[a0 + 4]))) >> 2

Z_SINZOU_F_D0CA:
  // frame 0
  t1 = RF_2F8F(14, 14)
  t2 = Z_SINZOU_F_D09E(a0)
  t3 = RF_3608(Z_SINZOU_D_D867, t2)
  return t3

Z_SINZOU_F_D0E3:
  // frame 2
  v2 = ((((((W[a0 + 2]) * 10) + 100) * (10 - (W[a0 + 6]))) / 10) * ((W[a0 + 4]) + 3)) >> 2
  if (!(v2 > 100)) goto Z_SINZOU_L_D10F
  v2 = 100
Z_SINZOU_L_D10F:
  return v2

Z_SINZOU_F_D111:
  // frame 0
  t1 = RF_2F8F(14, 12)
  t2 = Z_SINZOU_F_D0E3(a0)
  t3 = RF_3608(Z_SINZOU_D_D877, t2)
  return t3

Z_SINZOU_F_D12A:
  // frame 2
  v2 = (((((a0 + 2) / 2) * 300) + (((a0 & 1) * a0) * 50)) + ((a0 / 5) * 50)) + $FF38
  return v2

Z_SINZOU_F_D151:
  // frame 0
  t1 = RF_2F8F(14, 16)
  t2 = Z_SINZOU_F_D12A(a0)
  t3 = RF_3608(Z_SINZOU_D_D887, t2)
  return t3

Z_SINZOU_F_D16B:
  // frame 0
  t1 = RF_2F8F(3, 12)
  t2 = RF_3608(Z_SINZOU_D_D896, a0)
  return t2

Z_SINZOU_F_D17F:
  // frame 0
  t1 = RF_2F8F(3, 14)
  t2 = RF_3608(Z_SINZOU_D_D8A0, a0)
  return t2

Z_SINZOU_F_D193:
  // frame 0
  t1 = RF_2F8F(3, 16)
  t2 = RF_3608(Z_SINZOU_D_D8AA, a0)
  return t2

Z_SINZOU_F_D1A8:
  // frame 2
  t1 = RF_60CE(5, 1)
  t2 = RF_60B2()
  t3 = RF_2FB9(Z_SINZOU_D_D8B4, 1)
  t4 = RF_3CFF()
  v2 = t4
  return v2

Z_SINZOU_F_D1C4:
  // frame 18
  v2 = 0
Z_SINZOU_L_D1CB:
  v16 = (v2 * 7) + g_ships
  if (!((B[v16 + 6]) & 64)) goto Z_SINZOU_L_D1E5
  v2 = v2 + 1
  if (v2 < 5) goto Z_SINZOU_L_D1CB
Z_SINZOU_L_D1E5:
  (byte)v3 = v2
  t1 = Z_SINZOU_F_D071(a0)
  B[v16] = t1
  t2 = Z_SINZOU_F_D09E(a0)
  B[v16 + 1] = t2
  t3 = Z_SINZOU_F_D0E3(a0)
  B[v16 + 2] = t3
  B[v16 + 3] = 0
  W[v16 + 4] = 0
  t4 = RL_8502(0, &v9)
  (byte)v4 = t4
  v2 = 0
Z_SINZOU_L_D21A:
  B[v2 + (&v14)] = v2
  v2 = v2 + 1
  if (v2 < 5) goto Z_SINZOU_L_D21A
  goto Z_SINZOU_L_D24F
Z_SINZOU_L_D231:
  B[((B[((B[v2 + (&v9)]) * 7) + $EB98]) & 15) + (&v14)] = 255
Z_SINZOU_L_D24F:
  v2 = L
  if (v2 < (byte)v4) goto Z_SINZOU_L_D231
  v2 = 0
Z_SINZOU_L_D25C:
  if (!((B[v2 + (&v14)]) != 255)) goto Z_SINZOU_L_D279
  (byte)v4 = B[v2 + (&v14)]
  goto Z_SINZOU_L_D282
Z_SINZOU_L_D279:
  v2 = v2 + 1
  if (v2 < 5) goto Z_SINZOU_L_D25C
Z_SINZOU_L_D282:
  B[v16 + 6] = 0
  B[v16 + 6] = (B[v16 + 6]) | 64
  B[v16 + 6] = (B[v16 + 6]) & 240
  B[v16 + 6] = (B[v16 + 6]) | (byte)v4
  t5 = RF_40A5((byte)v4)
  v18 = t5
  W[v18 + 15] = W[a0 + 10]
  B[v18 + 17] = W[a0 + 12]
  W[v18 + 18] = W[a0 + 8]
  B[v18 + 20] = (((((W[a0 + 2]) * 2) * 2) | ((W[a0 + 4]) << 4)) | ((W[a0 + 6]) << 5)) | W[a0]
  t6 = sys36_memset_long(126, ((byte)v3 * 24) + g_cargo, 0, 24)
  t7 = RF_60CE(5, 1)
  t8 = RF_60B2()
  t9 = RF_4B44(Z_SINZOU_D_D8CF)
  t10 = RF_3D5C(3)
  t11 = RF_3D5C(1)
Z_SINZOU_L_D313:
  t12 = RF_2F8F(6, 25)
  t13 = RF_2FB9(Z_SINZOU_D_D8FD, 1)
  t14 = RF_2FB9(Z_SINZOU_D_D914, 1)
Z_SINZOU_L_D32A:
  t15 = RF_6557(7, v18, 1)
  if (!t15) goto Z_SINZOU_L_D32A
  t16 = RF_2F8F(6, 25)
  t17 = RF_2FB9(Z_SINZOU_D_D918, 1)
  t18 = RF_3CFF()
  if (!t18) goto Z_SINZOU_L_D354
  t19 = sys16_wait_frames(30)
  goto Z_SINZOU_L_D360
Z_SINZOU_L_D354:
  t20 = sys16_wait_frames(30)
  if (1) goto Z_SINZOU_L_D313
Z_SINZOU_L_D360:
  t21 = RF_3D5C(3)
  return (byte)v3 + 5

Z_SINZOU_F_D36A:
  // frame 8
Z_SINZOU_L_D36F:
  t1 = RF_6080()
  t2 = RF_60B2()
  v4 = ((((W[a0 + 6]) >> 1) + 1) * 20) + (((W[a0 + 6]) / 5) * 40)
  t3 = RF_3C6D(Z_SINZOU_D_D928, 0, v4)
  v2 = t3
  if (!(v2 == (-1))) goto Z_SINZOU_L_D39D
  return 0
Z_SINZOU_L_D39D:
  W[a0 + 12] = v2
  v6 = 500
  t4 = Z_SINZOU_F_D12A(W[a0 + 6])
  if (!(v6 > (t4 - v2))) goto Z_SINZOU_L_D3C2
  t5 = Z_SINZOU_F_D12A(W[a0 + 6])
  v6 = t5 - v2
Z_SINZOU_L_D3C2:
  t6 = RF_6080()
  t7 = RF_60B2()
  t8 = RF_3C6D(Z_SINZOU_D_D959, 20, v6)
  v2 = t8
  if (!(v2 == (-1))) goto Z_SINZOU_L_D3DC
  return 0
Z_SINZOU_L_D3DC:
  W[a0 + 10] = v2
  t9 = Z_SINZOU_F_D12A(W[a0 + 6])
  W[a0 + 8] = t9 - ((W[a0 + 10]) + (W[a0 + 12]))
  t10 = Z_SINZOU_F_D16B(W[a0 + 8])
  t11 = Z_SINZOU_F_D17F(W[a0 + 10])
  t12 = Z_SINZOU_F_D193(W[a0 + 12])
  t13 = Z_SINZOU_F_D1A8()
  if (!t13) goto Z_SINZOU_L_D36F
  t14 = Z_SINZOU_F_D1C4(a0)
  v8 = t14
  return v8

Z_SINZOU_F_D41F:
  // frame 17
  W[a2 + 6] = (byte)a0
  t1 = RF_6080()
  t2 = $9662()
  t3 = $B015(1)
  t4 = Z_SINZOU_F_D00F(3, 6, (byte)a0)
  t5 = Z_SINZOU_F_D151(W[a2 + 6])
  t6 = RF_2F8F(19, 18)
  t7 = RF_3608(Z_SINZOU_D_D9B5, g_player_gold)
Z_SINZOU_L_D45A:
  t8 = RF_60B2()
  t9 = RF_2FB9(Z_SINZOU_D_D9BE, 1)
  t10 = RF_484C(8, 23, 7, 2, Z_SINZOU_D_D975, 4, 2)
  (byte)v1 = t10
  if (!((byte)v1 == 255)) goto Z_SINZOU_L_D482
  return 0
Z_SINZOU_L_D482:
  W[a2] = (byte)v1
  t11 = Z_SINZOU_F_D085(a2)
  v17 = (((((((W[a2 + 6]) * 7) >> 1) + 1) * ((byte)a1 + 50)) * (W[a2] + 2)) >> 1) * 7
  t12 = RF_2F8F(3, 17)
  t13 = RF_3619(Z_SINZOU_D_D9D1, v17)
  t14 = Z_SINZOU_F_D1A8()
  if (!t14) goto Z_SINZOU_L_D45A
Z_SINZOU_L_D4C7:
  if ((W[a2 + 6]) == 2) goto Z_SINZOU_L_D4D7
  if (!((W[a2 + 6]) == 3)) goto Z_SINZOU_L_D4DB
Z_SINZOU_L_D4D7:
  goto Z_SINZOU_L_D4DC
Z_SINZOU_L_D4DB:
Z_SINZOU_L_D4DC:
  v7 = L
  if (!((W[a2 + 6]) < 4)) goto Z_SINZOU_L_D4EC
  goto Z_SINZOU_L_D4EF
Z_SINZOU_L_D4EC:
Z_SINZOU_L_D4EF:
  v3 = L
  t15 = RF_6080()
  t16 = RF_60B2()
  t17 = RF_2FB9(Z_SINZOU_D_D9DB, 1)
  t18 = RF_484C(8, 23, 4, 1, v3, v7, 1)
  (byte)v1 = t18
  if (!((byte)v1 == 255)) goto Z_SINZOU_L_D51C
  return 0
Z_SINZOU_L_D51C:
  if (!((W[a2 + 6]) > 3)) goto Z_SINZOU_L_D52B
  (byte)v1 = (byte)v1 + 1
Z_SINZOU_L_D52B:
  W[a2 + 2] = (byte)v1
  t19 = RF_6080()
  t20 = RF_60B2()
  t21 = RF_2FB9(Z_SINZOU_D_D9EB, 1)
  t22 = RF_472D()
  t23 = RF_60B2()
  t24 = RF_2FB9(Z_SINZOU_D_DA27, 1)
  t25 = RF_484C(8, 25, 9, 1, Z_SINZOU_D_D983, 2, 1)
  (byte)v1 = t25
  if (!((byte)v1 == 255)) goto Z_SINZOU_L_D56B
  return 0
Z_SINZOU_L_D56B:
  W[a2 + 4] = (byte)v1
  t26 = Z_SINZOU_F_D0CA(a2)
  t27 = Z_SINZOU_F_D111(a2)
  t28 = face_block_load(3, 6, W[a2 + 6], W[a2 + 4], W[a2 + 2], 0)
  v17 = ((((((((W[a2 + 6]) * 7) >> 1) + 1) * ((byte)a1 + 50)) * (W[a2] + 2)) >> 1) * 7) + (((((((W[a2 + 6]) >> 1) * 6) + 1) * ((byte)a1 + 50)) * ((W[a2 + 2]) + 1)) * 3)
  if (!(v17 > 60000)) goto Z_SINZOU_L_D5E4
  v17 = 60000
Z_SINZOU_L_D5E4:
  t29 = RF_2F8F(3, 17)
  t30 = RF_3619(Z_SINZOU_D_DA47, v17)
  t31 = Z_SINZOU_F_D1A8()
  if (!t31) goto Z_SINZOU_L_D4C7
  t32 = RF_60B2()
  t33 = RF_3619(Z_SINZOU_D_DA51, v17)
  v9 = g_player_gold
  t34 = RF_3CFF()
  if (!t34) goto Z_SINZOU_L_D651
  if (!(v17 > v9)) goto Z_SINZOU_L_D636
  t35 = RF_60EE()
  t36 = RF_60B2()
  t37 = RF_4B44(Z_SINZOU_D_DA7E)
Z_SINZOU_L_D634:
  return 0
Z_SINZOU_L_D636:
  t38 = Z_SINZOU_F_D36A(a2)
  v13 = t38
  if (!t38) goto Z_SINZOU_L_D634
  g_player_gold = g_player_gold - v17
  return v13
Z_SINZOU_L_D651:
  t39 = rand((byte)g_title + 1)
  if (t39) goto Z_SINZOU_L_D6FB
  t40 = RF_60B2()
  t41 = RL_8962(v17, v9)
  v11 = t41
  t42 = RF_3C4E(Z_SINZOU_D_DA91, 1, v11, 1)
  v5 = t42
  if (!(v5 != (-1))) goto Z_SINZOU_L_D6FB
  t43 = rand(v17 / 10)
  v17 = (((10 - (byte)g_title) * (v17 / 20)) + (v17 / 2)) - t43
  if (!(v5 < v17)) goto Z_SINZOU_L_D6E4
  t44 = RF_60B2()
  t45 = RF_4B44(Z_SINZOU_D_DAA6)
  return 1
Z_SINZOU_L_D6E4:
  t46 = Z_SINZOU_F_D36A(a2)
  v13 = t46
  if (!t46) goto Z_SINZOU_L_D6FB
  g_player_gold = g_player_gold - v5
  return v13
Z_SINZOU_L_D6FB:
  return 0

Z_SINZOU_F_D6FD:
  // frame 2
  t1 = RF_60B2()
  t2 = RF_3608(Z_SINZOU_D_DCA0, W[((byte)a0 * 2) + Z_SINZOU_D_DAD5])
  $F18A = $F18A - 1
  t3 = RF_472D()
  t4 = RF_60B2()
  t5 = RF_2FB9(Z_SINZOU_D_DCA4, 1)
  t6 = RF_3CFF()
  if (!t6) goto Z_SINZOU_L_D747
  W[a3] = 1
  t7 = Z_SINZOU_F_D41F((byte)a0, (byte)a1, a2)
  v2 = t7
  if (!t7) goto Z_SINZOU_L_D747
  return v2
Z_SINZOU_L_D747:
  t8 = RF_60CE(5, 1)
  t9 = RF_60B2()
  t10 = RF_4B44(Z_SINZOU_D_DCBD)
  return 0

Z_SINZOU_F_D759:
  // frame 20
  t1 = RF_60CE(5, 1)
  t2 = RF_60B2()
  t3 = RF_4B44(Z_SINZOU_D_DCD9)
  (byte)v1 = ((W[((byte)g_port * 14) + $E6B8]) - 100) / 180
  v20 = 1
  v18 = 0
  t4 = $B027()
  t5 = RF_60CE(5, 1)
Z_SINZOU_L_D78E:
  t6 = sys36_memset_long(126, &v16, 0, 8)
  if (!v20) goto Z_SINZOU_L_D7B0
  t7 = $9662()
  t8 = $B015()
  t9 = Z_SINZOU_F_D027((byte)v1)
  v20 = 0
Z_SINZOU_L_D7B0:
  t10 = RF_60B2()
  t11 = RF_2FB9(Z_SINZOU_D_DD04, 1)
  t12 = $968B((byte)v1 + 1)
  (byte)v2 = t12
  if (!((byte)v2 != 255)) goto Z_SINZOU_L_D7F0
  t13 = Z_SINZOU_F_D6FD((byte)v2, B[((byte)g_port * 14) + $E6BF], &v16, &v20)
  v18 = t13
  goto Z_SINZOU_L_D7FF
Z_SINZOU_L_D7F0:
  t14 = RF_609A(2)
  t15 = RF_4B44(Z_SINZOU_D_DD14)
  t16 = $9662()
Z_SINZOU_L_D7FF:
  if ((byte)v2 == 255) goto Z_SINZOU_L_D80D
  if (!v18) goto Z_SINZOU_L_D78E
Z_SINZOU_L_D80D:
  return v18

