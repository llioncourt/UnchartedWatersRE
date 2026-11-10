SENMAIN_F_A503:
  // frame 0
  t1 = SENMAIN_F_ADF4((byte)$F16A)
  return t1

SENMAIN_F_A511:
  // frame 0
  t1 = $97B7()
  t2 = SENMAIN_F_A805(a0)
  return t2

SENMAIN_F_A51F:
  // frame 0
  return

SENMAIN_F_A525:
  // frame 2
  if (!(a3 < 5)) goto SENMAIN_L_A53E
  v2 = 0
  if (!(a3 == $F44E)) goto SENMAIN_L_A54A
  goto SENMAIN_L_A549
SENMAIN_L_A53E:
  v2 = 2
  if (!(a3 == $F450)) goto SENMAIN_L_A54A
SENMAIN_L_A549:
  v2 = L
SENMAIN_L_A54A:
  t1 = $9662(a0, a1, v2, a2)
  return t1

SENMAIN_F_A553:
  // frame 0
  t1 = sys5_tilemap_write(1, a0, a1, 2, 2, 0)
  return t1

SENMAIN_F_A564:
  // frame 10
  v10 = a2 == 960
  v2 = ($F304 * 2) + 1
  if (!($F304 % 2)) goto SENMAIN_L_A586
  goto SENMAIN_L_A587
SENMAIN_L_A586:
SENMAIN_L_A587:
  v4 = L + ($F308 * 2)
  t1 = SENMAIN_F_A553(v2, v4)
  t2 = SENMAIN_F_A525(v2, v4, a1, a0)
  if (!($F304 % 2)) goto SENMAIN_L_A5A8
  goto SENMAIN_L_A5A9
SENMAIN_L_A5A8:
SENMAIN_L_A5A9:
  v8 = (W[((L * 2) + (a1 * 6)) + SENMAIN_D_C97C]) + $F308
  v6 = (W[(a1 * 6) + SENMAIN_D_C97C]) + $F304
  if (!(v6 >= 0)) goto SENMAIN_L_A5EC
  if (!(v6 < 15)) goto SENMAIN_L_A5EC
  if (!(v8 >= 0)) goto SENMAIN_L_A5EC
  if (!(v8 < 9)) goto SENMAIN_L_A5EC
  if (!((B[((v8 * 15) + v6) + $F310]) > 128)) goto SENMAIN_L_A5EE
SENMAIN_L_A5EC:
  return 0
SENMAIN_L_A5EE:
  t3 = SENMAIN_F_A553(v2, v4)
  if (!(v6 % 2)) goto SENMAIN_L_A603
  goto SENMAIN_L_A604
SENMAIN_L_A603:
SENMAIN_L_A604:
  t4 = SENMAIN_F_A525((v6 * 2) + 1, L + (v8 * 2), a1, a0)
  $F308 = v8
  $F304 = v6
  $F440 = (v8 * 15) + v6
  return 1

SENMAIN_F_A621:
  // frame 14
  if (!(a3 < 2)) goto SENMAIN_L_A648
  if (!(a2 == 100)) goto SENMAIN_L_A659
  t1 = RF_3DF1(1, a0, a1, 2, 1, W[(a3 * 2) + SENMAIN_D_CA9A], g_fh_cbmap0)
  return t1
SENMAIN_L_A648:
  if (!(a2 > 99)) goto SENMAIN_L_A659
  a2 = a2 / 10
  a3 = a3 + 2
SENMAIN_L_A659:
  t2 = sys36_memset_long(126, &v4, 0, 4)
  t3 = sys36_memset_long(126, &v10, 255, 2)
  goto SENMAIN_L_A68E
SENMAIN_L_A67B:
  B[v14 + (&v11)] = a2 % 10
  a2 = a2 / 10
SENMAIN_L_A68E:
  v14 = L
  if (!a2) goto SENMAIN_L_A699
  if (v14 > 0) goto SENMAIN_L_A67B
SENMAIN_L_A699:
  v6 = &v4
  v14 = 0
SENMAIN_L_A69F:
  v12 = B[v14 + (&v10)]
  if (v12 == 255) goto SENMAIN_L_A6CA
  v8 = W[(a3 * 2) + SENMAIN_D_CA8E]
  v8 = v8 + (v12 * 2)
  t4 = RF_3FC8(g_fh_cbmap0, v8, 126, v6, 2)
SENMAIN_L_A6CA:
  v6 = v6 + 2
  v14 = v14 + 1
  if (v14 < 2) goto SENMAIN_L_A69F
  t5 = sys6_tilemap_copy(1, a0, a1, 2, 1, &v4, 126)
  return t5

SENMAIN_F_A6E7:
  // frame 14
  v2 = (a0 * 7) + g_ships
  if (!(W[v2 + 4])) goto SENMAIN_L_A6FF
  if (B[v2]) goto SENMAIN_L_A700
SENMAIN_L_A6FF:
  return
SENMAIN_L_A700:
  if (!(a0 < 5)) goto SENMAIN_L_A70E
  goto SENMAIN_L_A70F
SENMAIN_L_A70E:
SENMAIN_L_A70F:
  v14 = L + (a0 % 5)
  if (!a1) goto SENMAIN_L_A724
  v4 = $F440 % 15
  goto SENMAIN_L_A732
SENMAIN_L_A724:
  v12 = B[v14 + $F42C]
  v4 = v12 % 15
SENMAIN_L_A732:
  v6 = L
  v8 = (v4 * 2) + 1
  if (!(v4 & 1)) goto SENMAIN_L_A744
  goto SENMAIN_L_A745
SENMAIN_L_A744:
SENMAIN_L_A745:
  v10 = L + (v6 * 2)
  if (!(a0 < 5)) goto SENMAIN_L_A752
  goto SENMAIN_L_A753
SENMAIN_L_A752:
SENMAIN_L_A753:
  t1 = SENMAIN_F_A621(v8, v10, B[v2], L)
  if (!(a0 < 5)) goto SENMAIN_L_A767
  goto SENMAIN_L_A768
SENMAIN_L_A767:
SENMAIN_L_A768:
  t2 = SENMAIN_F_A621(v8, v10 + 1, W[v2 + 4], L)
  return t2

SENMAIN_F_A776:
  // frame 0
  t1 = RF_3DF1(1, a0, a1, 2, 2, $18B0, g_fh_cbmap0)
  return t1

SENMAIN_F_A78B:
  // frame 14
  v14 = (a0 * 7) + g_ships
  if (B[v14]) goto SENMAIN_L_A79E
  return B[v14]
SENMAIN_L_A79E:
  if (!(a0 < 5)) goto SENMAIN_L_A7AC
  goto SENMAIN_L_A7AD
SENMAIN_L_A7AC:
SENMAIN_L_A7AD:
  v12 = L + (a0 % 5)
  if (!a1) goto SENMAIN_L_A7C2
  v2 = $F440 % 15
  goto SENMAIN_L_A7D0
SENMAIN_L_A7C2:
  v10 = B[v12 + $F42C]
  v2 = v10 % 15
SENMAIN_L_A7D0:
  v4 = L
  v6 = (v2 * 2) + 1
  if (!(v2 % 2)) goto SENMAIN_L_A7E2
  goto SENMAIN_L_A7E3
SENMAIN_L_A7E2:
SENMAIN_L_A7E3:
  v8 = L + (v4 * 2)
  if (W[v14 + 4]) goto SENMAIN_L_A7F6
  t1 = SENMAIN_F_A776(v6, v8, a0)
  goto SENMAIN_L_A804
SENMAIN_L_A7F6:
  t2 = SENMAIN_F_A525(v6, v8, B[v12 + $F436], a0)
SENMAIN_L_A804:
  return

SENMAIN_F_A805:
  // frame 0
  t1 = SENMAIN_F_A6E7(a0, 0)
  t2 = sys16_wait_frames(24)
  t3 = SENMAIN_F_A78B(a0, 0)
  return t3

SENMAIN_F_A81F:
  // frame 0
  t1 = SENMAIN_F_A6E7(a0, 1)
  t2 = SENMAIN_F_A805(a1)
  t3 = SENMAIN_F_A78B(a0, 1)
  return t3

SENMAIN_F_A836:
  // frame 8
  if (!(a0 < 5)) goto SENMAIN_L_A845
  goto SENMAIN_L_A846
SENMAIN_L_A845:
SENMAIN_L_A846:
  v6 = L
  v4 = (v6 * 24) + g_cargo
  v2 = (B[v4] * 10) + $EAC0
  (byte)$F442 = B[v2 + 1]
  (byte)$F444 = B[v2 + 2]
  (byte)$F446 = B[v2 + 4]
  (byte)$F448 = B[v2 + 5]
  (byte)$F44A = B[v4 + 22]
  (byte)$F44C = B[(B[v4] * 7) + $E446]
  if (!(a0 < 5)) goto SENMAIN_L_A88E
  goto SENMAIN_L_A88F
SENMAIN_L_A88E:
SENMAIN_L_A88F:
  v6 = L
  if (!(v6 == $F450)) goto SENMAIN_L_A89D
  goto SENMAIN_L_A89F
SENMAIN_L_A89D:
SENMAIN_L_A89F:
  v8 = L
  (byte)$F443 = v8
  (byte)$F445 = v8
  (byte)$F447 = v8
  (byte)$F449 = v8
  (byte)$F44B = 80
  (byte)$F44D = B[(((v6 / 5) + 20) * 7) + $E446]
  return B[(((v6 / 5) + 20) * 7) + $E446]

SENMAIN_F_A8C5:
  // frame 6
  v6 = 1
  if (!(a0 < 5)) goto SENMAIN_L_A8D4
  v6 = 0
SENMAIN_L_A8D4:
  t1 = rand(3)
  v2 = ((((((B[v6 + $F448]) * 2) + (B[v6 + $F444])) + (B[v6 + $F446])) * (((B[v6 + $F44C]) / 5) + 1)) / 40) + t1
  if (v6) goto SENMAIN_L_A91F
  if (B[(a0 * 24) + g_cargo]) goto SENMAIN_L_A927
  t2 = item_best_power(2)
  goto SENMAIN_L_A921
SENMAIN_L_A91F:
SENMAIN_L_A921:
  v2 = v2 + (L / 8)
SENMAIN_L_A927:
  v4 = ((W[(a0 * 7) + $EB96]) * (B[v6 + $F44A])) / 150
  return ((v4 * v2) / 100) + 1

SENMAIN_F_A95C:
  // frame 8
  v2 = (a1 * 7) + g_ships
  t1 = SENMAIN_F_A8C5(a0)
  t2 = RL_8962(W[v2 + 4], t1)
  W[v2 + 4] = (W[v2 + 4]) - t2
  if (!(a0 < 5)) goto SENMAIN_L_A9CF
  if (W[v2 + 4]) goto SENMAIN_L_A9CF
  v6 = B[(a0 * 24) + g_cargo]
  if (!((B[(v6 * 7) + $E446]) != 50)) goto SENMAIN_L_A9CF
  v4 = ((B[v2 + 6]) & 15) - 4
  v8 = (v4 * v4) * 100
  v8 = v8 + (W[(v6 * 10) + $EAC6])
  t3 = RL_8962(v8, $EA60)
  W[(v6 * 10) + $EAC6] = t3
SENMAIN_L_A9CF:
  return

SENMAIN_F_A9D0:
  // frame 0
  t1 = SENMAIN_F_A836(a0, a1)
  t2 = SENMAIN_F_A95C(a0, a1)
  t3 = SENMAIN_F_A95C(a1, a0)
  t4 = SENMAIN_F_A81F(a0, a1)
  return t4

SENMAIN_F_A9EE:
  // frame 18
  t1 = SENMAIN_F_A836(a0, a1)
  if (!(a0 < 5)) goto SENMAIN_L_AA03
  goto SENMAIN_L_AA04
SENMAIN_L_AA03:
SENMAIN_L_AA04:
  v16 = L
  v18 = (a0 * 7) + g_ships
  v2 = ((B[v16 + $F446]) * 2) + (B[v16 + $F442])
  t2 = rand(5)
  v4 = ((((((B[v16 + $F44C]) / 5) + 1) * v2) / 40) + t2) + (v2 / 15)
  v6 = B[(a0 * 24) + g_cargo]
  if (v16) goto SENMAIN_L_AA60
  if (v6) goto SENMAIN_L_AA60
  t3 = item_best_power(3)
  t4 = RL_8962(((t3 * v4) >> 3) + v4, 100)
  v4 = t4
SENMAIN_L_AA60:
  if (!v16) goto SENMAIN_L_AA72
  t5 = RL_8962(((v4 * 2) >> 3) + v4, 100)
  v4 = t5
SENMAIN_L_AA72:
  t6 = rand(3)
  t7 = RL_8962(B[v18 + 3], W[v18 + 4])
  v8 = (((((t7 >> 1) * (B[v16 + $F44A])) / 100) * v4) / 100) + t6
  if (!((((B[v18 + 6]) >> 4) & 3) == 3)) goto SENMAIN_L_AAAB
  v8 = v8 * 2
SENMAIN_L_AAAB:
  if (!v16) goto SENMAIN_L_AACA
  if (B[(a1 * 24) + g_cargo]) goto SENMAIN_L_AACA
  t8 = item_best_power(1)
  v8 = v8 - (t8 * (v8 / 10))
SENMAIN_L_AACA:
  if (v16) goto SENMAIN_L_AAD6
  v8 = v8 - ((v8 / 10) * 2)
SENMAIN_L_AAD6:
  v12 = v8 / 2
  v18 = (a1 * 7) + g_ships
  t9 = RL_8962(B[v18], v8)
  B[v18] = B[v18] - t9
  t10 = rand(3)
  t11 = RL_8962(W[v18 + 4], t10 + v12)
  W[v18 + 4] = (W[v18 + 4]) - t11
  t12 = rand(3)
  t13 = RL_8962(B[v18 + 2], t12 + v12)
  B[v18 + 2] = (B[v18 + 2]) - t13
  t14 = rand(3)
  t15 = RL_8962(B[v18 + 1], t14 + v12)
  B[v18 + 1] = (B[v18 + 1]) - t15
  t16 = SENMAIN_F_A805(a1)
  if (B[v18]) goto SENMAIN_L_AB7F
  if (!($F304 % 2)) goto SENMAIN_L_AB54
  goto SENMAIN_L_AB55
SENMAIN_L_AB54:
SENMAIN_L_AB55:
  t17 = SENMAIN_F_A553(($F304 * 2) + 1, L + ($F308 * 2))
  if (!(a1 < 5)) goto SENMAIN_L_AB7F
  B[((B[(a1 * 24) + g_cargo]) * 7) + $E44A] = (B[((B[(a1 * 24) + g_cargo]) * 7) + $E44A]) & 254
SENMAIN_L_AB7F:
  if (!B[v18]) goto SENMAIN_L_AB8A
  if (W[v18 + 4]) goto SENMAIN_L_ABCC
SENMAIN_L_AB8A:
  if (v16) goto SENMAIN_L_ABCC
  if (!((B[(v6 * 7) + $E446]) != 50)) goto SENMAIN_L_ABCC
  v10 = ((B[v18 + 6]) & 15) - 4
  v14 = (v10 * v10) * 100
  v14 = (W[(v6 * 10) + $EAC6]) + v14
  t18 = RL_8962(v14, 60000, (v6 * 10) + $EAC6)
  W[pop()] = t18
SENMAIN_L_ABCC:
  return

SENMAIN_F_ABCD:
  // frame 2
  v2 = ($F44E * 7) + g_ships
  if (!(W[v2 + 4])) goto SENMAIN_L_ABE7
  if (B[v2]) goto SENMAIN_L_ABED
SENMAIN_L_ABE7:
  (byte)$F300 = 5
  return 1
SENMAIN_L_ABED:
  v2 = ($F450 * 7) + g_ships
  if (!(W[v2 + 4])) goto SENMAIN_L_AC02
  if (B[v2]) goto SENMAIN_L_AC08
SENMAIN_L_AC02:
  (byte)$F300 = 4
  return 1
SENMAIN_L_AC08:
  return 0

SENMAIN_F_AC0A:
  // frame 0
  if (!(a0 >= 16)) goto SENMAIN_L_AC18
  return 0
SENMAIN_L_AC18:
  if (!(((a0 - 1) % 5) <= 2)) goto SENMAIN_L_AC25
  goto SENMAIN_L_AC26
SENMAIN_L_AC25:
SENMAIN_L_AC26:
  return

SENMAIN_F_AC27:
  // frame 16
  t1 = SENMAIN_F_AC0A((byte)$F41E / 5)
  v14 = t1
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENMAIN_L_ACFC
SENMAIN_L_AC43:
  t2 = SENMAIN_F_ABCD()
  if (!t2) goto SENMAIN_L_AC4B
  return 0
SENMAIN_L_AC4B:
  v16 = (B[v2] * 7) + g_ships
  if (!(W[v16 + 4])) goto SENMAIN_L_ACF9
  if (!B[v16]) goto SENMAIN_L_ACF9
  v12 = (B[v2] % 5) + 5
  v6 = v12 + $F42C
  $F440 = B[v6]
  $F304 = B[v6] % 15
  $F308 = B[v6] / 15
  if (!(B[v2] == $F450)) goto SENMAIN_L_ACC7
  if ((W[(B[v2] * 7) + $EB96]) <= 20) goto SENMAIN_L_ACA5
  if (!((B[(B[v2] * 7) + g_ships]) <= 20)) goto SENMAIN_L_ACC7
SENMAIN_L_ACA5:
  if (!$F304) goto SENMAIN_L_ACC1
  if (!$F308) goto SENMAIN_L_ACC1
  if ($F304 == 14) goto SENMAIN_L_ACC1
  if (!($F308 == 8)) goto SENMAIN_L_ACC7
SENMAIN_L_ACC1:
  (byte)$F300 = 2
  return 0
SENMAIN_L_ACC7:
  t3 = SENMAIN_F_C92B(v14, B[v2])
  v10 = t3
  t4 = SENMAIN_F_C627(v10 % 15, v10 / 15, B[v2])
  t5 = SENMAIN_F_C264(B[v2])
  B[v6] = ($F308 * 15) + $F304
  t6 = SENMAIN_F_ABCD()
  if (!t6) goto SENMAIN_L_ACF9
  return 0
SENMAIN_L_ACF9:
  v2 = v2 + 1
SENMAIN_L_ACFC:
  if (v2 < v4) goto SENMAIN_L_AC43
  return 1

SENMAIN_F_AD04:
  // frame 12
  v2 = 1
  v4 = $F41E
  v6 = $F41E + $F428
  goto SENMAIN_L_AD72
SENMAIN_L_AD17:
  t1 = SENMAIN_F_ABCD()
  if (!t1) goto SENMAIN_L_AD22
SENMAIN_L_AD1D:
  v2 = 0
  goto SENMAIN_L_AD78
SENMAIN_L_AD22:
  v12 = (B[v4] * 7) + g_ships
  if (!(W[v12 + 4])) goto SENMAIN_L_AD6F
  if (!B[v12]) goto SENMAIN_L_AD6F
  v10 = B[v4] % 5
  v8 = v10 + $F42C
  $F440 = B[v8]
  $F304 = B[v8] % 15
  $F308 = B[v8] / 15
  t2 = SENMAIN_F_BCAE(B[v4])
  if (t2) goto SENMAIN_L_AD1D
  B[v8] = ($F308 * 15) + $F304
  t3 = SENMAIN_F_ABCD()
  if (t3) goto SENMAIN_L_AD1D
SENMAIN_L_AD6F:
  v4 = v4 + 1
SENMAIN_L_AD72:
  if (v4 < v6) goto SENMAIN_L_AD17
SENMAIN_L_AD78:
  t4 = $97F5()
  return v2

SENMAIN_F_AD7D:
  // frame 0
  t1 = RL_8502(a0, $F41E)
  $F428 = t1
  t2 = RL_8502(a1, $F423)
  $F42A = t2
  if (!a0) goto SENMAIN_L_ADA0
  t3 = SENMAIN_F_AC27()
  return t3
SENMAIN_L_ADA0:
  t4 = SENMAIN_F_AD04()
  return t4

SENMAIN_F_ADA4:
  // frame 0
  goto SENMAIN_L_ADE6
SENMAIN_L_ADB5:
  t1 = $9994(10, 22, 2, $F30E)
  t2 = $9A93($F30E)
  t3 = SENMAIN_F_AD7D(a0, a1)
  if (t3) goto SENMAIN_L_ADD1
  return t3
SENMAIN_L_ADD1:
  t4 = SENMAIN_F_AD7D(a1, a0)
  if (t4) goto SENMAIN_L_ADDB
  return t4
SENMAIN_L_ADDB:
  (byte)$EA8E = (byte)$EA8E + 1
SENMAIN_L_ADE6:
  $F30E = L
  if ($F30E) goto SENMAIN_L_ADB5
  (byte)$F300 = 1
  return 1

SENMAIN_F_ADF4:
  // frame 0
  if (a0) goto SENMAIN_L_AE07
  t1 = rand(10)
  if (!(t1 < 7)) goto SENMAIN_L_AE0F
SENMAIN_L_AE07:
  goto SENMAIN_L_AE14
SENMAIN_L_AE0F:
SENMAIN_L_AE14:
  t2 = SENMAIN_F_ADA4((byte)$F197, a0)
  return t2

SENMAIN_F_AE19:
  // frame 0
  t1 = RL_8962(20, ((((B[(a0 * 7) + $EB94]) * $F30C) / 50) + ((B[((B[(a0 * 24) + g_cargo]) * 7) + $E446]) / 5)) + 6)
  return t1

SENMAIN_F_AE4B:
  // frame 3
  a0 = a0 << 3
  a1 = (a1 << 3) - 1
  v2 = $370C
  t1 = sys9_metasprite_set($F572 + 23, a0, a1, 1, 1, &v2, 2, 126)
  $F572 = $F572 + 1
  return $F572 + 1

SENMAIN_F_AE7B:
  // frame 0
  if (!$F572) goto SENMAIN_L_AE91
  t1 = sys58_sprites_hide(23, $F572)
SENMAIN_L_AE91:
  $F572 = 0
  return 0

SENMAIN_F_AE96:
  // frame 0
SENMAIN_L_AE9B:
  t1 = sys15_pad_read(0)
  if (!(t1 != $4000)) goto SENMAIN_L_AEB5
  t2 = sys15_pad_read(1)
  if (t2 != $4000) goto SENMAIN_L_AE9B
SENMAIN_L_AEB5:
  t3 = sys15_pad_read(0)
  if (t3) goto SENMAIN_L_AEB5
  t4 = sys15_pad_read(1)
  if (t4) goto SENMAIN_L_AEB5
  return t4

SENMAIN_F_AEC8:
  // frame 4
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENMAIN_L_AEE8
SENMAIN_L_AED9:
  t1 = SENMAIN_F_A6E7(B[v2], B[v2] == a0)
  v2 = v2 + 1
SENMAIN_L_AEE8:
  if (v2 < v4) goto SENMAIN_L_AED9
  v2 = $F423
  v4 = $F423 + $F42A
  goto SENMAIN_L_AF09
SENMAIN_L_AEFA:
  t2 = SENMAIN_F_A6E7(B[v2], B[v2] == a0)
  v2 = v2 + 1
SENMAIN_L_AF09:
  if (v2 < v4) goto SENMAIN_L_AEFA
  t3 = SENMAIN_F_AE96()
  v2 = $F423
  v4 = $F423 + $F42A
  goto SENMAIN_L_AF2D
SENMAIN_L_AF1E:
  t4 = SENMAIN_F_A78B(B[v2], B[v2] == a0)
  v2 = v2 + 1
SENMAIN_L_AF2D:
  if (v2 < v4) goto SENMAIN_L_AF1E
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENMAIN_L_AF4E
SENMAIN_L_AF3F:
  t5 = SENMAIN_F_A78B(B[v2], B[v2] == a0)
  v2 = v2 + 1
SENMAIN_L_AF4E:
  if (v2 < v4) goto SENMAIN_L_AF3F
  return v2 < v4

SENMAIN_F_AF55:
  // frame 2
  if (!a0) goto SENMAIN_L_AF64
  goto SENMAIN_L_AF67
SENMAIN_L_AF64:
SENMAIN_L_AF67:
  v2 = L + $3600
  t1 = sys10_sprite_move(21, $F306, $F30A, v2, 2, 0)
  t2 = sys58_sprites_hide(21, 1)
  return t2

SENMAIN_F_AF85:
  // frame 2
  $F306 = a0 << 3
  $F30A = (a1 << 3) - 1
  if (!a2) goto SENMAIN_L_AFA1
  goto SENMAIN_L_AFA4
SENMAIN_L_AFA1:
SENMAIN_L_AFA4:
  v2 = L + $3600
  t1 = sys10_sprite_move(21, $F306, $F30A, v2, 2, 1)
  return t1

SENMAIN_F_AFB9:
  // frame 2
  v2 = RL_370E
  t1 = sys10_sprite_move(21, $F306, $F30A, v2, 2, 0)
  t2 = sys58_sprites_hide(21, 1)
  return t2

SENMAIN_F_AFDC:
  // frame 2
SENMAIN_L_AFE1:
  t1 = RF_362A(0)
  if (t1) goto SENMAIN_L_AFE1
  t2 = $97F5()
  v2 = 0
SENMAIN_L_AFEE:
  if (!($F304 % 2)) goto SENMAIN_L_B000
  goto SENMAIN_L_B001
SENMAIN_L_B000:
SENMAIN_L_B001:
  t3 = SENMAIN_F_AF85(($F304 * 2) + 1, L + ($F308 * 2), a1)
  t4 = RF_3D91(v2, 6)
  t5 = RF_362A(0)
  v2 = t5
  switch (t5) {7 cases}

SENMAIN_F_B09D:
  // frame 0
  if (!(a0 >= 0)) goto SENMAIN_L_B0E4
  if (!(a0 < 15)) goto SENMAIN_L_B0E4
  if (!(a1 >= 0)) goto SENMAIN_L_B0E4
  if (!(a1 < 9)) goto SENMAIN_L_B0E4
  if (!(a0 % 2)) goto SENMAIN_L_B0C7
  goto SENMAIN_L_B0C8
SENMAIN_L_B0C7:
SENMAIN_L_B0C8:
  t1 = SENMAIN_F_AE4B((a0 * 2) + 1, L + (a1 * 2))
  B[((a1 * 15) + a0) + $F310] = (B[((a1 * 15) + a0) + $F310]) ^ 255
SENMAIN_L_B0E4:
  return

SENMAIN_F_B0E5:
  // frame 8
  v8 = ($F308 * 15) + $F304
  v4 = $F423
  v6 = $F423 + $F42A
  goto SENMAIN_L_B128
SENMAIN_L_B100:
  v2 = (B[v4] * 7) + g_ships
  if (!((B[(B[v4] % 5) + $F431]) == v8)) goto SENMAIN_L_B125
  if (!(W[v2 + 4])) goto SENMAIN_L_B125
  if (!B[v2]) goto SENMAIN_L_B125
  return B[v4]
SENMAIN_L_B125:
  v4 = v4 + 1
SENMAIN_L_B128:
  if (v4 < v6) goto SENMAIN_L_B100
  return (byte)$F423

SENMAIN_F_B132:
  // frame 4
  v4 = 1
  if (!(a0 % 2)) goto SENMAIN_L_B141
  v4 = 2
SENMAIN_L_B141:
  $F572 = 0
  v2 = 0
SENMAIN_L_B147:
  t1 = SENMAIN_F_B09D((W[(v2 * 6) + SENMAIN_D_C97C]) + a0, (W[((v2 * 6) + (v4 * 2)) + SENMAIN_D_C97C]) + a1)
  v2 = v2 + 1
  if (v2 < 6) goto SENMAIN_L_B147
  return v2 < 6

SENMAIN_F_B170:
  // frame 12
  v8 = $F304
  v10 = $F308
  t1 = SENMAIN_F_B132(v8, v10)
SENMAIN_L_B183:
  t2 = $9793()
  t3 = RF_2FB9(SENMAIN_D_CAA6, 1)
  t4 = SENMAIN_F_AFDC(a0, 1)
  v2 = t4
  if (!(v2 != 240)) goto SENMAIN_L_B1A6
  if (B[v2 + $F310]) goto SENMAIN_L_B183
SENMAIN_L_B1A6:
  t5 = SENMAIN_F_B132(v8, v10)
  t6 = SENMAIN_F_AE7B()
  if (!(v2 == 240)) goto SENMAIN_L_B1C1
  $F304 = v8
  $F308 = v10
  return 0
SENMAIN_L_B1C1:
  v4 = B[(a0 * 24) + g_cargo]
  if (!((B[(v4 * 7) + $E446]) != 50)) goto SENMAIN_L_B1F9
  v12 = (W[(v4 * 10) + $EAC6]) + 2
  t7 = RL_8962(v12, 60000, (v4 * 10) + $EAC6)
  W[pop()] = t7
SENMAIN_L_B1F9:
  t8 = SENMAIN_F_B0E5()
  v6 = t8
  t9 = SENMAIN_F_A81F(a0, v6)
  t10 = SENMAIN_F_A51F()
  t11 = $98AE(a0, v6, 0)
  t12 = $9E32()
  t13 = SENMAIN_F_A9D0(a0, v6)
  t14 = $9AB7(a0, v6, 0)
  $F304 = v8
  $F308 = v10
  return 1

SENMAIN_F_B227:
  // frame 10
  if (!(a0 < 5)) goto SENMAIN_L_B23A
  goto SENMAIN_L_B23B
SENMAIN_L_B23A:
SENMAIN_L_B23B:
  v8 = (B[(L + (a0 % 5)) + $F436]) % 3
  if (!((((B[(a0 * 7) + $EB98]) >> 4) & 3) & 1)) goto SENMAIN_L_B25A
  goto SENMAIN_L_B25B
SENMAIN_L_B25A:
SENMAIN_L_B25B:
  v10 = L
  $F572 = 0
  v6 = 1
  if (!(a1 % 2)) goto SENMAIN_L_B26A
  v6 = 2
SENMAIN_L_B26A:
  v2 = (v8 * 14) + SENMAIN_D_CA54
  v4 = ((v8 * 14) + SENMAIN_D_CA54) + v10
  goto SENMAIN_L_B29C
SENMAIN_L_B278:
  t1 = SENMAIN_F_B09D((W[(B[v2] * 6) + SENMAIN_D_C9A0]) + a1, (W[((B[v2] * 6) + (v6 * 2)) + SENMAIN_D_C9A0]) + a2)
  v2 = v2 + 1
SENMAIN_L_B29C:
  if (v2 < v4) goto SENMAIN_L_B278
  return v2 < v4

SENMAIN_F_B2A3:
  // frame 12
  v8 = $F304
  v10 = $F308
  t1 = SENMAIN_F_B227(a0, v8, v10)
SENMAIN_L_B2B7:
  t2 = $9793()
  t3 = RF_2FB9(SENMAIN_D_CAB8, 0)
  t4 = SENMAIN_F_AFDC(a0, 0)
  v2 = t4
  if (!(v2 != 240)) goto SENMAIN_L_B2DA
  if (B[v2 + $F310]) goto SENMAIN_L_B2B7
SENMAIN_L_B2DA:
  t5 = SENMAIN_F_B227(a0, v8, v10)
  t6 = SENMAIN_F_AF55(0)
  t7 = SENMAIN_F_AE7B()
  if (!(v2 == 240)) goto SENMAIN_L_B2FB
  $F304 = v8
  $F308 = v10
  return 0
SENMAIN_L_B2FB:
  v4 = B[(a0 * 24) + g_cargo]
  if (!((B[(v4 * 7) + $E446]) != 50)) goto SENMAIN_L_B333
  v12 = (W[(v4 * 10) + $EAC6]) + 2
  t8 = RL_8962(v12, 60000, (v4 * 10) + $EAC6)
  W[pop()] = t8
SENMAIN_L_B333:
  t9 = SENMAIN_F_B0E5()
  v6 = t9
  t10 = SENMAIN_F_A511(v6)
  t11 = $98AE(a0, v6, 1)
  t12 = $9B3A()
  t13 = SENMAIN_F_A9EE(a0, v6)
  t14 = $9AB7(a0, v6, 1)
  $F304 = v8
  $F308 = v10
  return 1

SENMAIN_F_B35D:
  // frame 0
  t1 = SENMAIN_F_C425()
  if (!t1) goto SENMAIN_L_B36E
  t2 = SENMAIN_F_B170(a0)
  return t2
SENMAIN_L_B36E:
  t3 = SENMAIN_F_C3A1(a0)
  if (!t3) goto SENMAIN_L_B37C
  t4 = SENMAIN_F_B2A3(a0)
  return t4
SENMAIN_L_B37C:
  return 0

SENMAIN_F_B37E:
  // frame 4
  a0 = a0 * 8
  a1 = (a1 << 3) - 1
  v2 = (a2 * 2) + $3700
  t1 = sys9_metasprite_set(22, a0, a1, 1, 1, &v2, 2, 126)
  return t1

SENMAIN_F_B3A6:
  // frame 8
  $F574 = a0
  v2 = ($F304 * 2) + 1
  if (!($F304 % 2)) goto SENMAIN_L_B3C6
  goto SENMAIN_L_B3C7
SENMAIN_L_B3C6:
SENMAIN_L_B3C7:
  v4 = L + ($F308 * 2)
SENMAIN_L_B3CA:
  t1 = RF_362A(0)
  if (t1) goto SENMAIN_L_B3CA
  v8 = 0
SENMAIN_L_B3D4:
  t2 = SENMAIN_F_B37E(v2, v4, $F574)
SENMAIN_L_B3DD:
  t3 = RF_362A(0)
  if (t3) goto SENMAIN_L_B3DD
  t4 = RF_3D91(v8, 6)
  t5 = RF_362A(0)
  v8 = t5
  switch (t5) {13 cases}

SENMAIN_F_B4D9:
  // frame 20
  $F572 = 0
  v8 = 1
  if (!($F304 % 2)) goto SENMAIN_L_B4EE
  v8 = 2
SENMAIN_L_B4EE:
  v20 = (a0 * 7) + g_ships
  v12 = ((100 - (B[v20 + 1])) / 25) + 1
  v14 = 100 - (B[v20 + 2])
  v4 = 0
  v2 = 0
  goto SENMAIN_L_B5A7
SENMAIN_L_B513:
  if (!(v4 != 1)) goto SENMAIN_L_B51D
  goto SENMAIN_L_B51E
SENMAIN_L_B51D:
SENMAIN_L_B51E:
  v6 = L
  v10 = (((B[a0 + $F436]) + v4) + 5) % 6
  v6 = v6 + ((((B[v10 + $F452]) * v14) / 60) + 1)
  if (!(a1 >= v6)) goto SENMAIN_L_B5A4
  v16 = (W[(v10 * 6) + SENMAIN_D_C97C]) + $F304
  v18 = (W[((v10 * 6) + (v8 * 2)) + SENMAIN_D_C97C]) + $F308
  if (!(v16 >= 0)) goto SENMAIN_L_B5A4
  if (!(v16 < 15)) goto SENMAIN_L_B5A4
  if (!(v18 >= 0)) goto SENMAIN_L_B5A4
  if (!(v18 < 9)) goto SENMAIN_L_B5A4
  if (!((B[((v18 * 15) + v16) + $F310]) <= 128)) goto SENMAIN_L_B5A4
  if (!(v16 % 2)) goto SENMAIN_L_B596
  goto SENMAIN_L_B597
SENMAIN_L_B596:
SENMAIN_L_B597:
  t1 = SENMAIN_F_AE4B((v16 * 2) + 1, L + (v18 * 2))
  v2 = 1
SENMAIN_L_B5A4:
  v4 = v4 + 1
SENMAIN_L_B5A7:
  if (v4 < 3) goto SENMAIN_L_B513
  return v2

SENMAIN_F_B5AF:
  // frame 14
  t1 = SENMAIN_F_AE19(a0)
  $F458 = t1
  v14 = (a0 * 7) + g_ships
  v10 = ((100 - (B[v14 + 1])) / 25) + 1
  v12 = 100 - (B[v14 + 2])
  t2 = $97F5()
  t3 = $9793()
  v2 = 0
SENMAIN_L_B5E2:
  if ($F458) goto SENMAIN_L_B5EF
  goto SENMAIN_L_B687
SENMAIN_L_B5EB:
  goto SENMAIN_L_B693
SENMAIN_L_B5EF:
  t4 = RF_2F8F(13, 26)
  t5 = RF_3619(SENMAIN_D_CACC, $F458)
  t6 = SENMAIN_F_B4D9(a0, $F458)
  if (t6) goto SENMAIN_L_B60F
  if (v2) goto SENMAIN_L_B687
SENMAIN_L_B60F:
  t7 = SENMAIN_F_B3A6(B[a0 + $F436], a0)
  v4 = t7
  t8 = SENMAIN_F_AE7B()
  t9 = SENMAIN_F_B4D9(a0, $F458)
  t10 = SENMAIN_F_AE7B()
  if (v4 == 255) goto SENMAIN_L_B687
  v2 = 1
  if (!(v4 != 1)) goto SENMAIN_L_B63E
  goto SENMAIN_L_B63F
SENMAIN_L_B63E:
SENMAIN_L_B63F:
  v8 = L
  v6 = (((B[a0 + $F436]) + v4) + 5) % 6
  v8 = v8 + ((((B[v6 + $F452]) * v12) / 60) + 1)
  if (!(v8 <= $F458)) goto SENMAIN_L_B5E2
  $F458 = $F458 - v8
  B[a0 + $F436] = v6
  t11 = SENMAIN_F_A564(a0, v6, 960)
  if (!t11) goto SENMAIN_L_B687
  t12 = SENMAIN_F_C425()
  if (!t12) goto SENMAIN_L_B5E2
SENMAIN_L_B687:
  t13 = $97B7()
  t14 = SENMAIN_F_B35D(a0)
  if (t14) goto SENMAIN_L_B5EB
SENMAIN_L_B693:
  return

SENMAIN_F_B694:
  // frame 0
  return 1

SENMAIN_F_B69B:
  // frame 0
  goto SENMAIN_L_B6D6
SENMAIN_L_B6A3:
  t1 = sys15_pad_read(1)
  if (t1) goto SENMAIN_L_B6DF
  t2 = sys5_tilemap_write(21, 27, 1, 1, 228, 0)
  t3 = sys16_wait_frames(3)
  t4 = sys5_tilemap_write(21, 27, 1, 1, 0, 0)
  t5 = sys16_wait_frames(3)
SENMAIN_L_B6D6:
  t6 = sys15_pad_read(0)
  if (!t6) goto SENMAIN_L_B6A3
SENMAIN_L_B6DF:
  t7 = sys5_tilemap_write(21, 27, 1, 1, 0, 0)
SENMAIN_L_B6EC:
  t8 = sys15_pad_read(0)
  if (t8) goto SENMAIN_L_B6EC
  t9 = sys15_pad_read(1)
  if (t9) goto SENMAIN_L_B6EC
  return t9

SENMAIN_F_B6FF:
  // frame 0
  t1 = $96B7(0)
  t2 = RF_3DF1(1, 12, 22, 19, 4, $0D70, g_fh_cbmap0)
  t3 = sys38_window_shape(99, 179, 245, 205, 32, 1)
  t4 = sys48_color_math(32, 82, 71)
  t5 = RF_2FB9(SENMAIN_D_CAD9, 1)
  return t5

SENMAIN_F_B743:
  // frame 0
  t1 = sys5_tilemap_write(1, 12, 22, 19, 4, 0)
  t2 = sys48_color_math(48, 0, 224)
  t3 = sys39_window_off()
  t4 = $96B7(1)
  return t4

SENMAIN_F_B76D:
  // frame 0
  t1 = RF_4D8B(6, 1, 20, 20)
  t2 = SENMAIN_F_B6FF()
  return t2

SENMAIN_F_B780:
  // frame 2
  if (!(byte)a0) goto SENMAIN_L_B78F
  goto SENMAIN_L_B790
SENMAIN_L_B78F:
SENMAIN_L_B790:
  (byte)v1 = L
  if (!(byte)a0) goto SENMAIN_L_B79E
  goto SENMAIN_L_B79F
SENMAIN_L_B79E:
SENMAIN_L_B79F:
  (byte)v2 = L
  t1 = RF_4D41(6, 1, 20, 20)
  t2 = sys38_window_shape(50, ((byte)v1 << 3) + 2, 206, (((byte)v1 + (byte)v2) << 3) - 2, 32, 1)
  t3 = sys48_color_math(32, 82, 0)
  t4 = RF_3DF1(1, 6, (byte)v1, 20, (byte)v2, W[((byte)a0 * 2) + SENMAIN_D_CAE0], g_fh_cbmap0)
  return t4

SENMAIN_F_B7F8:
  // frame 14
  v14 = 0
  if (!($F304 % 2)) goto SENMAIN_L_B811
  goto SENMAIN_L_B812
SENMAIN_L_B811:
SENMAIN_L_B812:
  t1 = SENMAIN_F_AF85(($F304 * 2) + 1, L + ($F308 * 2), 1)
  if (!(a0 >= $F428)) goto SENMAIN_L_B832
  goto SENMAIN_L_B836
SENMAIN_L_B832:
SENMAIN_L_B836:
  v6 = B[L + R]
  v2 = (v6 * 7) + g_ships
  if (!(W[v2 + 4])) goto SENMAIN_L_B84C
  if (B[v2]) goto SENMAIN_L_B850
SENMAIN_L_B84C:
  t2 = SENMAIN_F_AFB9()
  return t2
SENMAIN_L_B850:
  v12 = v6 / 5
  t3 = SENMAIN_F_AFB9()
  t4 = $9793()
  t5 = sys48_color_math(48, 0, 0)
  t6 = sys39_window_off()
  t7 = sys5_tilemap_write(1, 12, 22, 19, 4, 0)
  if (v6 < 5) goto SENMAIN_L_B885
  if (!(v6 == $F450)) goto SENMAIN_L_B887
SENMAIN_L_B885:
  v14 = 1
SENMAIN_L_B887:
  t8 = SENMAIN_F_B780(v14)
  if (v6 < 5) goto SENMAIN_L_B89A
  if (!(v6 == $F450)) goto SENMAIN_L_B8EE
SENMAIN_L_B89A:
  if (!(v6 < 5)) goto SENMAIN_L_B8AC
  goto SENMAIN_L_B8B1
SENMAIN_L_B8AC:
SENMAIN_L_B8B1:
  v10 = L
  v4 = (v10 * 7) + g_player_name_ptr
  t9 = RF_4E29(8, 3, v10, 0)
  t10 = RF_2F8F(14, 4)
  t11 = RF_40DE(W[v4])
  t12 = RF_2F8F(14, 7)
  t13 = RF_2FB9(SENMAIN_D_CAE4, 0)
  t14 = RF_2F8F(14, 8)
  t15 = RF_3608(SENMAIN_D_CAEB, B[v4 + 2])
SENMAIN_L_B8EE:
  t16 = RF_2F8F(7, 10)
  if (!v12) goto SENMAIN_L_B903
  t17 = RF_2F8F(7, 10)
  t18 = $9773(v12)
SENMAIN_L_B903:
  if ($F44E == v6) goto SENMAIN_L_B913
  if (!($F450 == v6)) goto SENMAIN_L_B921
SENMAIN_L_B913:
  t19 = RF_2F8F(15, 10)
  t20 = RF_2FB9(SENMAIN_D_CAF5, 0)
SENMAIN_L_B921:
  t21 = RF_2F8F(7, 11)
  t22 = RF_40A5((B[v2 + 6]) & 15)
  t23 = RF_40DE(t22)
  t24 = RF_2F8F(7, 13)
  t25 = RF_3608(SENMAIN_D_CB00, W[v2 + 4])
  t26 = RF_2F8F(7, 14)
  t27 = RF_2FB9(SENMAIN_D_CB09, 0)
  t28 = RF_2F8F(13, 14)
  v8 = ((B[v2 + 6]) >> 4) & 3
  t29 = RL_8875((v8 * 2) + $1C33)
  t30 = RF_40DE(t29)
  if (!v8) goto SENMAIN_L_B982
  t31 = RF_3608(SENMAIN_D_CB10, B[v2 + 3])
SENMAIN_L_B982:
  t32 = RF_2F8F(7, 16)
  t33 = SENMAIN_F_AE19(v6)
  t34 = RF_3608(SENMAIN_D_CB19, t33)
  t35 = RF_2F8F(7, 17)
  t36 = RF_3608(SENMAIN_D_CB26, B[v2])
  t37 = RF_2F8F(7, 18)
  t38 = RF_3608(SENMAIN_D_CB35, ((100 - (B[v2 + 1])) / 25) + 1)
  t39 = $9793()
  t40 = RF_2FB9(SENMAIN_D_CB47, 1)
SENMAIN_L_B9CD:
  t41 = RF_362A(0)
  if (t41) goto SENMAIN_L_B9CD
  t42 = RF_472D()
  if (v6 < 5) goto SENMAIN_L_B9E6
  if (!(v6 == $F450)) goto SENMAIN_L_B9E9
SENMAIN_L_B9E6:
  t43 = RF_4DD8()
SENMAIN_L_B9E9:
  t44 = SENMAIN_F_B76D()
  return t44

SENMAIN_F_B9ED:
  // frame 10
  v8 = $F304
  v10 = $F308
SENMAIN_L_B9FA:
  t1 = $9793()
  t2 = $97F5()
  t3 = RF_2FB9(SENMAIN_D_CB54, 1)
  t4 = SENMAIN_F_AFDC(a0, 0)
  v4 = t4
  v6 = $F428 + $F42A
  goto SENMAIN_L_BA4C
SENMAIN_L_BA1B:
  if (!(v2 < $F428)) goto SENMAIN_L_BA2F
  goto SENMAIN_L_BA3E
SENMAIN_L_BA2F:
SENMAIN_L_BA3E:
  if (!((B[L + R]) == v4)) goto SENMAIN_L_BA4A
  t5 = SENMAIN_F_B7F8(v2)
SENMAIN_L_BA4A:
SENMAIN_L_BA4C:
  v2 = L
  if (v2 < v6) goto SENMAIN_L_BA1B
  if (v4 != 240) goto SENMAIN_L_B9FA
  $F304 = v8
  $F308 = v10
  return 0

SENMAIN_F_BA65:
  // frame 0
  (byte)$F300 = 3
  $F570 = 1
  return 1

SENMAIN_F_BA74:
  // frame 12
  v4 = 0
  v8 = 0
  goto SENMAIN_L_BB08
SENMAIN_L_BA80:
  v2 = 0
  if (!(v6 < 3)) goto SENMAIN_L_BA8A
  v2 = 1
SENMAIN_L_BA8A:
  if (!(v6 == 4)) goto SENMAIN_L_BA9E
  t1 = SENMAIN_F_C3A1(a0)
  if (!t1) goto SENMAIN_L_BA9E
  if (v4) goto SENMAIN_L_BA9E
  v2 = 1
SENMAIN_L_BA9E:
  if (!(v6 == 3)) goto SENMAIN_L_BAAE
  t2 = SENMAIN_F_C425()
  if (!t2) goto SENMAIN_L_BAAE
  v4 = 1
  v2 = 1
SENMAIN_L_BAAE:
  if (!(v6 == 5)) goto SENMAIN_L_BADE
  if (B[(a0 * 24) + g_cargo]) goto SENMAIN_L_BADE
  if (!$F304) goto SENMAIN_L_BADC
  if (!$F308) goto SENMAIN_L_BADC
  if ($F304 == 14) goto SENMAIN_L_BADC
  if (!($F308 == 8)) goto SENMAIN_L_BADE
SENMAIN_L_BADC:
  v2 = 1
SENMAIN_L_BADE:
  if (!v2) goto SENMAIN_L_BB06
  v10 = (v8 * 3) + 13
  t3 = RF_3DF1(1, v10, 23, 2, 2, (v6 << 3) + $0468, g_fh_cbmap0)
  v8 = v8 + 1
  W[(((v8 + 1) - 1) * 2) + a1] = v6
SENMAIN_L_BB06:
SENMAIN_L_BB08:
  v6 = L
  if (v6 < 6) goto SENMAIN_L_BA80
  t4 = $9793()
  t5 = RF_2FB9(SENMAIN_D_CB67, 1)
  return v8

SENMAIN_F_BB1C:
  // frame 2
  if (!(a0 != a1)) goto SENMAIN_L_BB45
  v2 = (a0 * 3) + 13
  t1 = RF_3DF1(1, v2, 23, 2, 2, ((W[(a0 * 2) + a2]) << 3) + $0468, g_fh_cbmap0)
SENMAIN_L_BB45:
  v2 = (a1 * 3) + 13
  t2 = RF_3DF1(1, v2, 23, 2, 2, ((W[(a1 * 2) + a2]) << 3) + $0438, g_fh_cbmap0)
  return t2

SENMAIN_F_BB64:
  // frame 10
  v8 = 0
  v2 = 0
  v6 = 0
SENMAIN_L_BB6D:
  t1 = RF_362A(0)
  if (t1) goto SENMAIN_L_BB6D
SENMAIN_L_BB75:
  t2 = SENMAIN_F_BB1C(v8, v2, a1)
  v10 = v2
  t3 = RF_3D91(v6, 6)
  t4 = RF_362A(0)
  v6 = t4
  switch (t4) {5 cases}

SENMAIN_F_BBD3:
  // frame 2
  goto SENMAIN_L_BBE0
SENMAIN_L_BBDB:
  t1 = SENMAIN_F_AEC8(a1)
SENMAIN_L_BBE0:
  t2 = SENMAIN_F_BB64(a0, a2)
  v2 = t2
  if (v2 == (-2)) goto SENMAIN_L_BBDB
  if (!(v2 == (-1))) goto SENMAIN_L_BBFB
  goto SENMAIN_L_BBFC
SENMAIN_L_BBFB:
SENMAIN_L_BBFC:
  return

SENMAIN_F_BBFD:
  // frame 8
  t1 = SENMAIN_F_C2D3(a0)
  v2 = $F423
  v4 = $F423 + $F42A
  goto SENMAIN_L_BC4E
SENMAIN_L_BC13:
  v6 = (B[v2] * 7) + g_ships
  if (!B[v6]) goto SENMAIN_L_BC4B
  v8 = B[(B[v2] % 5) + $F431]
  if (!(W[v6 + 4])) goto SENMAIN_L_BC47
  goto SENMAIN_L_BC4A
SENMAIN_L_BC47:
SENMAIN_L_BC4A:
  B[(((v8 / 15) * 15) + (v8 % 15)) + $F310] = L
SENMAIN_L_BC4B:
  v2 = v2 + 1
SENMAIN_L_BC4E:
  if (v2 < v4) goto SENMAIN_L_BC13
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENMAIN_L_BC8A
SENMAIN_L_BC60:
  if (!(B[(B[v2] * 7) + g_ships])) goto SENMAIN_L_BC87
  v8 = B[B[v2] + $F42C]
  B[(((v8 / 15) * 15) + (v8 % 15)) + $F310] = (B[(((v8 / 15) * 15) + (v8 % 15)) + $F310]) + 1
SENMAIN_L_BC87:
  v2 = v2 + 1
SENMAIN_L_BC8A:
  if (v2 < v4) goto SENMAIN_L_BC60
  B[((((B[a0 + $F42C]) / 15) * 15) + ((B[a0 + $F42C]) % 15)) + $F310] = (B[((((B[a0 + $F42C]) / 15) * 15) + ((B[a0 + $F42C]) % 15)) + $F310]) - 1
  return (B[((((B[a0 + $F42C]) / 15) * 15) + ((B[a0 + $F42C]) % 15)) + $F310]) - 1

SENMAIN_F_BCAE:
  // frame 18
  $F570 = 0
  t1 = SENMAIN_F_B6FF()
SENMAIN_L_BCBA:
  t2 = $97B7()
  t3 = sys36_memset_long(126, $F310, 128, 135)
  t4 = SENMAIN_F_BBFD(a0)
  t5 = SENMAIN_F_BA74(a0, &v12)
  v18 = t5
  t6 = SENMAIN_F_BBD3(v18, a0, &v12)
  v16 = t6
  if (v16 == 255) goto SENMAIN_L_BD05
  t7 = (*(W[((W[(v16 * 2) + (&v12)]) * 2) + SENMAIN_D_CB75]))(2)
  if (!t7) goto SENMAIN_L_BCBA
SENMAIN_L_BD05:
  t8 = SENMAIN_F_B743()
  t9 = $9793()
  return $F570

SENMAIN_F_BD0F:
  // frame 8
  a0 = a0 + $F304
  a1 = a1 + $F308
  if (!(a0 >= 0)) goto SENMAIN_L_BD78
  if (!(a0 < 15)) goto SENMAIN_L_BD78
  if (!(a1 >= 0)) goto SENMAIN_L_BD78
  if (!(a1 < 9)) goto SENMAIN_L_BD78
  v8 = (a1 * 15) + a0
  v4 = $F423
  v6 = $F423 + $F42A
  goto SENMAIN_L_BD72
SENMAIN_L_BD4C:
  v2 = (B[v4] * 7) + g_ships
  if (!(W[v2 + 4])) goto SENMAIN_L_BD6F
  if (!B[v2]) goto SENMAIN_L_BD6F
  if (!((B[B[v4] + $F42C]) == v8)) goto SENMAIN_L_BD6F
  return B[v4]
SENMAIN_L_BD6F:
  v4 = v4 + 1
SENMAIN_L_BD72:
  if (v4 < v6) goto SENMAIN_L_BD4C
SENMAIN_L_BD78:
  return 255

SENMAIN_F_BD7C:
  // frame 6
  v2 = a1
  v4 = a1 + a0
  goto SENMAIN_L_BDAC
SENMAIN_L_BD89:
  v6 = B[B[v2] + $F42C]
  $F304 = v6 % 15
  $F308 = v6 / 15
  if (!(B[v2] == $F44E)) goto SENMAIN_L_BDA9
  return B[v2]
SENMAIN_L_BDA9:
  v2 = v2 + 1
SENMAIN_L_BDAC:
  if (v2 < v4) goto SENMAIN_L_BD89
  return B[v2 - 1]

SENMAIN_F_BDB6:
  // frame 13
  if (!($F304 % 2)) goto SENMAIN_L_BDC7
  goto SENMAIN_L_BDC8
SENMAIN_L_BDC7:
SENMAIN_L_BDC8:
  v9 = L
  v11 = 0
  goto SENMAIN_L_BE0D
SENMAIN_L_BDD1:
  t1 = SENMAIN_F_BD0F(W[(v7 * 6) + SENMAIN_D_C97C], W[((v7 * 6) + (v9 * 2)) + SENMAIN_D_C97C])
  v13 = t1
  if (!(v13 != 255)) goto SENMAIN_L_BE0A
  v11 = v11 + 1
  B[((v11 + 1) - 1) + (&v5)] = v13
SENMAIN_L_BE0A:
SENMAIN_L_BE0D:
  v7 = L
  if (v7 < 6) goto SENMAIN_L_BDD1
  t2 = SENMAIN_F_BD7C(v11, &v5)
  return t2

SENMAIN_F_BE21:
  // frame 19
  if (!($F304 % 2)) goto SENMAIN_L_BE32
  goto SENMAIN_L_BE33
SENMAIN_L_BE32:
SENMAIN_L_BE33:
  v13 = L
  v15 = (B[(a0 % 5) + $F43B]) % 3
  if (!((((B[(a0 * 7) + $EB98]) >> 4) & 3) & 1)) goto SENMAIN_L_BE56
  goto SENMAIN_L_BE57
SENMAIN_L_BE56:
SENMAIN_L_BE57:
  v19 = L
  v17 = 0
  v2 = (v15 * 14) + SENMAIN_D_CA54
  v4 = ((v15 * 14) + SENMAIN_D_CA54) + v19
  goto SENMAIN_L_BEA8
SENMAIN_L_BE6C:
  t1 = SENMAIN_F_BD0F(W[(B[v2] * 6) + SENMAIN_D_C9A0], W[((B[v2] * 6) + (v13 * 2)) + SENMAIN_D_C9A0])
  v11 = t1
  if (!(v11 != 255)) goto SENMAIN_L_BEA5
  v17 = v17 + 1
  B[((v17 + 1) - 1) + (&v9)] = v11
SENMAIN_L_BEA5:
  v2 = v2 + 1
SENMAIN_L_BEA8:
  if (v2 < v4) goto SENMAIN_L_BE6C
  t2 = SENMAIN_F_BD7C(v17, &v9)
  return t2

SENMAIN_F_BEB9:
  // frame 6
  v2 = $F304
  v4 = $F308
  t1 = SENMAIN_F_BDB6()
  v6 = t1
  t2 = SENMAIN_F_A81F(a0, v6)
  t3 = SENMAIN_F_A51F()
  t4 = $98AE(a0, v6, 0)
  t5 = $9E32()
  t6 = SENMAIN_F_A9D0(a0, v6)
  t7 = $9AB7(a0, v6, 0)
  $F304 = v2
  $F308 = v4
  return v4

SENMAIN_F_BEF3:
  // frame 6
  v2 = $F304
  v4 = $F308
  t1 = SENMAIN_F_BE21(a0)
  v6 = t1
  t2 = SENMAIN_F_A511(v6)
  t3 = $98AE(a0, v6, 1)
  t4 = $9B3A()
  t5 = SENMAIN_F_A9EE(a0, v6)
  t6 = $9AB7(a0, v6, 1)
  $F304 = v2
  $F308 = v4
  return v4

SENMAIN_F_BF2B:
  // frame 0
  t1 = SENMAIN_F_C425()
  if (!t1) goto SENMAIN_L_BF58
  if ((W[(a0 * 7) + $EB96]) <= 20) goto SENMAIN_L_BF57
  if ((B[(a0 * 7) + g_ships]) <= 20) goto SENMAIN_L_BF57
  t2 = SENMAIN_F_BEB9(a0)
SENMAIN_L_BF57:
  return
SENMAIN_L_BF58:
  t3 = SENMAIN_F_C3A1(a0)
  if (!t3) goto SENMAIN_L_BF65
  t4 = SENMAIN_F_BEF3(a0)
SENMAIN_L_BF65:
  return

SENMAIN_F_BF66:
  // frame 14
  v2 = $F423
  v4 = $F423 + $F42A
  goto SENMAIN_L_C010
SENMAIN_L_BF77:
  v8 = (B[B[v2] + $F42C]) % 15
  v10 = (B[B[v2] + $F42C]) / 15
  if (!(B[(B[v2] * 7) + g_ships])) goto SENMAIN_L_C00D
  B[((v10 * 15) + v8) + $F310] = 133
  if (!$F4E2) goto SENMAIN_L_C00D
  v6 = 0
SENMAIN_L_BFAD:
  v12 = (W[(v6 * 6) + SENMAIN_D_C97C]) + v8
  if (!(v8 % 2)) goto SENMAIN_L_BFC6
  goto SENMAIN_L_BFC7
SENMAIN_L_BFC6:
SENMAIN_L_BFC7:
  v14 = (W[((L * 2) + (v6 * 6)) + SENMAIN_D_C97C]) + v10
  if (!(v12 >= 0)) goto SENMAIN_L_C004
  if (!(v12 < 15)) goto SENMAIN_L_C004
  if (!(v14 >= 0)) goto SENMAIN_L_C004
  if (!(v14 < 9)) goto SENMAIN_L_C004
  if (!(B[((v14 * 15) + v12) + $F310])) goto SENMAIN_L_C004
  B[((v14 * 15) + v12) + $F310] = (B[((v14 * 15) + v12) + $F310]) - 1
SENMAIN_L_C004:
  v6 = v6 + 1
  if (v6 < 6) goto SENMAIN_L_BFAD
SENMAIN_L_C00D:
  v2 = v2 + 1
SENMAIN_L_C010:
  if (v2 < v4) goto SENMAIN_L_BF77
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENMAIN_L_C04F
SENMAIN_L_C022:
  if (!(B[(B[v2] * 7) + g_ships])) goto SENMAIN_L_C04C
  v6 = B[(B[v2] % 5) + $F431]
  B[(((v6 / 15) * 15) + (v6 % 15)) + $F310] = 133
SENMAIN_L_C04C:
  v2 = v2 + 1
SENMAIN_L_C04F:
  if (v2 < v4) goto SENMAIN_L_C022
  return v2 < v4

SENMAIN_F_C056:
  // frame 8
  v2 = 0
SENMAIN_L_C05D:
  v6 = (W[(v2 * 6) + SENMAIN_D_C97C]) + $F304
  if (!($F304 % 2)) goto SENMAIN_L_C07A
  goto SENMAIN_L_C07B
SENMAIN_L_C07A:
SENMAIN_L_C07B:
  v8 = (W[((L * 2) + (v2 * 6)) + SENMAIN_D_C97C]) + $F308
  v4 = (v8 * 15) + v6
  if (!(v6 >= 0)) goto SENMAIN_L_C0B7
  if (!(v6 < 15)) goto SENMAIN_L_C0B7
  if (!(v8 >= 0)) goto SENMAIN_L_C0B7
  if (!(v8 < 9)) goto SENMAIN_L_C0B7
  if (!((B[($F44E % 5) + $F42C]) == v4)) goto SENMAIN_L_C0B7
  return 1
SENMAIN_L_C0B7:
  v2 = v2 + 1
  if (v2 < 6) goto SENMAIN_L_C05D
  return 0

SENMAIN_F_C0C2:
  // frame 14
  v14 = ((B[(a0 * 7) + $EB98]) >> 4) & 3
  if (!v14) goto SENMAIN_L_C162
  v10 = (B[(a0 % 5) + $F43B]) % 3
  if (!(v14 & 1)) goto SENMAIN_L_C0ED
  goto SENMAIN_L_C0EE
SENMAIN_L_C0ED:
SENMAIN_L_C0EE:
  v14 = L
  v2 = (v10 * 14) + SENMAIN_D_CA54
  v4 = ((v10 * 14) + SENMAIN_D_CA54) + v14
  goto SENMAIN_L_C15C
SENMAIN_L_C0FD:
  v6 = (W[(B[v2] * 6) + SENMAIN_D_C9A0]) + $F304
  if (!($F304 % 2)) goto SENMAIN_L_C117
  goto SENMAIN_L_C118
SENMAIN_L_C117:
SENMAIN_L_C118:
  v8 = (W[((B[v2] * 6) + (L * 2)) + SENMAIN_D_C9A0]) + $F308
  v12 = (v8 * 15) + v6
  if (!(v6 >= 0)) goto SENMAIN_L_C159
  if (!(v6 < 15)) goto SENMAIN_L_C159
  if (!(v8 >= 0)) goto SENMAIN_L_C159
  if (!(v8 < 9)) goto SENMAIN_L_C159
  if (!((B[($F44E % 5) + $F42C]) == v12)) goto SENMAIN_L_C159
  return 1
SENMAIN_L_C159:
  v2 = v2 + 1
SENMAIN_L_C15C:
  if (v2 < v4) goto SENMAIN_L_C0FD
SENMAIN_L_C162:
  return 0

SENMAIN_F_C164:
  // frame 18
  v2 = (a0 % 5) + $F43B
  v10 = 128
  v4 = 5
  v8 = 5
  goto SENMAIN_L_C1FD
SENMAIN_L_C17B:
  v6 = (B[v2] + v4) % 6
  v14 = (W[(v6 * 6) + SENMAIN_D_C97C]) + $F304
  if (!($F304 % 2)) goto SENMAIN_L_C19F
  goto SENMAIN_L_C1A0
SENMAIN_L_C19F:
SENMAIN_L_C1A0:
  v16 = (W[((L * 2) + (v6 * 6)) + SENMAIN_D_C97C]) + $F308
  if (!(v14 >= 0)) goto SENMAIN_L_C1FA
  if (!(v14 < 15)) goto SENMAIN_L_C1FA
  if (!(v16 >= 0)) goto SENMAIN_L_C1FA
  if (!(v16 < 9)) goto SENMAIN_L_C1FA
  if (!(v10 >= (B[((v16 * 15) + v14) + $F310]))) goto SENMAIN_L_C1FA
  if (!((B[((v16 * 15) + v14) + $F310]) == v10)) goto SENMAIN_L_C1ED
  t1 = rand(2)
  if (t1) goto SENMAIN_L_C1FA
SENMAIN_L_C1ED:
  v8 = v4
  v10 = B[((v16 * 15) + v14) + $F310]
SENMAIN_L_C1FA:
  v4 = v4 + 1
SENMAIN_L_C1FD:
  if (v4 < 8) goto SENMAIN_L_C17B
  v18 = (a0 * 7) + g_ships
  if (!((v8 - 5) != 1)) goto SENMAIN_L_C222
  goto SENMAIN_L_C223
SENMAIN_L_C222:
SENMAIN_L_C223:
  v12 = L
  v6 = (B[v2] + v8) % 6
  v12 = v12 + ((((100 - (B[v18 + 2])) * (B[v6 + $F452])) / 60) + 1)
  if (!(v12 <= $F458)) goto SENMAIN_L_C262
  $F458 = $F458 - v12
  B[v2] = v6
  t2 = SENMAIN_F_A564(a0, v6, $0840)
  return t2
SENMAIN_L_C262:
  return 0

SENMAIN_F_C264:
  // frame 2
  t1 = SENMAIN_F_BF66()
  t2 = RL_8962(20, ((((B[(a0 * 7) + $EB94]) * $F30C) / 50) + ((B[(((a0 / 5) + 20) * 7) + $E446]) / 5)) + 6)
  $F458 = t2
SENMAIN_L_C297:
  if ($F458) goto SENMAIN_L_C2A3
SENMAIN_L_C29D:
  t3 = SENMAIN_F_BF2B(a0)
  return t3
SENMAIN_L_C2A3:
  if (!(B[(($F308 * 15) + $F304) + $F310])) goto SENMAIN_L_C29D
  t4 = SENMAIN_F_C0C2(a0)
  if (t4) goto SENMAIN_L_C29D
  t5 = SENMAIN_F_C056()
  if (t5) goto SENMAIN_L_C29D
  t6 = SENMAIN_F_C164(a0)
  if (!t6) goto SENMAIN_L_C29D
  t7 = SENMAIN_F_C425()
  if (!t7) goto SENMAIN_L_C297
  goto SENMAIN_L_C29D

SENMAIN_F_C2D3:
  // frame 8
  t1 = RF_40A5(a0)
  t2 = RL_884E(t1 + 20)
  v8 = ((t2 >> 5) & 7) & 1
  v6 = $F310
  v2 = $F397
  v4 = $F397 + 135
  goto SENMAIN_L_C31E
SENMAIN_L_C2FA:
  if (B[v2] == 3) goto SENMAIN_L_C313
  if (B[v2] == 4) goto SENMAIN_L_C313
  if (!(B[v2] == 2)) goto SENMAIN_L_C318
  if (!v8) goto SENMAIN_L_C318
SENMAIN_L_C313:
  B[v6] = B[v6] + 1
SENMAIN_L_C318:
  v6 = v6 + 1
  v2 = v2 + 1
SENMAIN_L_C31E:
  if (v2 < v4) goto SENMAIN_L_C2FA
  return v2 < v4

SENMAIN_F_C325:
  // frame 10
  a0 = a0 + $F304
  a1 = a1 + $F308
  if (!(a0 >= 0)) goto SENMAIN_L_C350
  if (!(a0 < 15)) goto SENMAIN_L_C350
  if (!(a1 >= 0)) goto SENMAIN_L_C350
  if (a1 < 9) goto SENMAIN_L_C352
SENMAIN_L_C350:
  return 0
SENMAIN_L_C352:
  v10 = 5
  if (!((byte)$F423 < 5)) goto SENMAIN_L_C35E
  v10 = 0
SENMAIN_L_C35E:
  v8 = (a1 * 15) + a0
  v4 = $F423
  v6 = $F423 + $F42A
  goto SENMAIN_L_C399
SENMAIN_L_C370:
  v2 = (B[v4] * 7) + g_ships
  if (!(W[v2 + 4])) goto SENMAIN_L_C396
  if (!B[v2]) goto SENMAIN_L_C396
  if (!((B[((B[v4] % 5) + v10) + $F42C]) == v8)) goto SENMAIN_L_C396
  return 1
SENMAIN_L_C396:
  v4 = v4 + 1
SENMAIN_L_C399:
  if (v4 < v6) goto SENMAIN_L_C370
  return 0

SENMAIN_F_C3A1:
  // frame 10
  v10 = ((B[(a0 * 7) + $EB98]) >> 4) & 3
  if (!v10) goto SENMAIN_L_C423
  if (!(a0 < 5)) goto SENMAIN_L_C3C5
  goto SENMAIN_L_C3C6
SENMAIN_L_C3C5:
SENMAIN_L_C3C6:
  v6 = (B[(L + (a0 % 5)) + $F436]) % 3
  if (!($F304 % 2)) goto SENMAIN_L_C3DC
  goto SENMAIN_L_C3DD
SENMAIN_L_C3DC:
SENMAIN_L_C3DD:
  v8 = L
  if (!(v10 & 1)) goto SENMAIN_L_C3E8
  goto SENMAIN_L_C3E9
SENMAIN_L_C3E8:
SENMAIN_L_C3E9:
  v10 = L
  v2 = (v6 * 14) + SENMAIN_D_CA54
  v4 = ((v6 * 14) + SENMAIN_D_CA54) + v10
  goto SENMAIN_L_C41D
SENMAIN_L_C3F8:
  t1 = SENMAIN_F_C325(W[(B[v2] * 6) + SENMAIN_D_C9A0], W[((B[v2] * 6) + (v8 * 2)) + SENMAIN_D_C9A0])
  if (!t1) goto SENMAIN_L_C41A
  return 1
SENMAIN_L_C41A:
  v2 = v2 + 1
SENMAIN_L_C41D:
  if (v2 < v4) goto SENMAIN_L_C3F8
SENMAIN_L_C423:
  return 0

SENMAIN_F_C425:
  // frame 4
  if (!($F304 % 2)) goto SENMAIN_L_C436
  goto SENMAIN_L_C437
SENMAIN_L_C436:
SENMAIN_L_C437:
  v4 = L
  v2 = 0
SENMAIN_L_C43A:
  t1 = SENMAIN_F_C325(W[(v2 * 6) + SENMAIN_D_C97C], W[((v2 * 6) + (v4 * 2)) + SENMAIN_D_C97C])
  if (!t1) goto SENMAIN_L_C45A
  return 1
SENMAIN_L_C45A:
  v2 = v2 + 1
  if (v2 < 6) goto SENMAIN_L_C43A
  return 0

SENMAIN_F_C465:
  // frame 8
  t1 = RF_40A5(a0)
  t2 = RL_884E(t1 + 20)
  v8 = ((t2 >> 5) & 7) & 1
  v6 = $F310
  v2 = $F397
  v4 = $F397 + 135
  goto SENMAIN_L_C4B0
SENMAIN_L_C48C:
  if (B[v2] == 3) goto SENMAIN_L_C4A5
  if (B[v2] == 4) goto SENMAIN_L_C4A5
  if (!(B[v2] == 2)) goto SENMAIN_L_C4AA
  if (!v8) goto SENMAIN_L_C4AA
SENMAIN_L_C4A5:
  B[v6] = B[v6] + 1
SENMAIN_L_C4AA:
  v6 = v6 + 1
  v2 = v2 + 1
SENMAIN_L_C4B0:
  if (v2 < v4) goto SENMAIN_L_C48C
  return v2 < v4

SENMAIN_F_C4B7:
  // frame 2
  v2 = (((B[((a1 * 15) + a0) + $F45A]) + a2) + 5) % 6
  if (!(a0 % 2)) goto SENMAIN_L_C4DA
  goto SENMAIN_L_C4DB
SENMAIN_L_C4DA:
SENMAIN_L_C4DB:
  a1 = (W[((L * 2) + (v2 * 6)) + SENMAIN_D_CB82]) + a1
  a0 = (W[(v2 * 6) + SENMAIN_D_CB82]) + a0
  if (!(a0 >= 0)) goto SENMAIN_L_C509
  if (!(a0 < 15)) goto SENMAIN_L_C509
  if (!(a1 >= 0)) goto SENMAIN_L_C509
  if (a1 < 9) goto SENMAIN_L_C50D
SENMAIN_L_C509:
  return 255
SENMAIN_L_C50D:
  if (!((B[((a1 * 15) + a0) + $F45A]) == 128)) goto SENMAIN_L_C52A
  B[((a1 * 15) + a0) + $F45A] = v2
SENMAIN_L_C52A:
  $F56C = a0
  $F56E = a1
  return B[(($F56E * 15) + $F56C) + $F397]

SENMAIN_F_C541:
  // frame 14
  t1 = SENMAIN_F_C465(a0)
  v2 = $F423
  v4 = $F423 + $F42A
  goto SENMAIN_L_C5E2
SENMAIN_L_C557:
  if (!(B[(B[v2] * 7) + g_ships])) goto SENMAIN_L_C5DF
  v8 = (B[B[v2] + $F42C]) % 15
  v10 = (B[B[v2] + $F42C]) / 15
  B[((v10 * 15) + v8) + $F310] = (B[((v10 * 15) + v8) + $F310]) + 1
  if (!$F4E2) goto SENMAIN_L_C5DF
  v6 = 0
SENMAIN_L_C58C:
  v12 = (W[(v6 * 6) + SENMAIN_D_CB82]) + v8
  if (!(v8 % 2)) goto SENMAIN_L_C5A5
  goto SENMAIN_L_C5A6
SENMAIN_L_C5A5:
SENMAIN_L_C5A6:
  v14 = (W[((L * 2) + (v6 * 6)) + SENMAIN_D_CB82]) + v10
  if (!(v12 >= 0)) goto SENMAIN_L_C5D6
  if (!(v12 < 15)) goto SENMAIN_L_C5D6
  if (!(v14 >= 0)) goto SENMAIN_L_C5D6
  if (!(v14 < 9)) goto SENMAIN_L_C5D6
  B[((v14 * 15) + v12) + $F310] = (B[((v14 * 15) + v12) + $F310]) + 1
SENMAIN_L_C5D6:
  v6 = v6 + 1
  if (v6 < 6) goto SENMAIN_L_C58C
SENMAIN_L_C5DF:
  v2 = v2 + 1
SENMAIN_L_C5E2:
  if (v2 < v4) goto SENMAIN_L_C557
  v2 = $F41E
  v4 = $F41E + $F428
  goto SENMAIN_L_C620
SENMAIN_L_C5F4:
  if (!(B[(B[v2] * 7) + g_ships])) goto SENMAIN_L_C61D
  v6 = B[(B[v2] % 5) + $F431]
  B[(((v6 / 15) * 15) + (v6 % 15)) + $F310] = (B[(((v6 / 15) * 15) + (v6 % 15)) + $F310]) + 1
SENMAIN_L_C61D:
  v2 = v2 + 1
SENMAIN_L_C620:
  if (v2 < v4) goto SENMAIN_L_C5F4
  return v2 < v4

SENMAIN_F_C627:
  // frame 20
  t1 = sys36_memset_long(126, $F310, 128, 135)
  t2 = SENMAIN_F_C541(a2)
  B[(($F308 * 15) + $F304) + $F310] = 128
  v4 = $F4E4
  v6 = $F4E5
  B[((a1 * 15) + a0) + $F310] = 0
  t3 = SENMAIN_F_C4B7(a0, a1, 1)
  B[v4] = ($F56E * 15) + $F56C
  if (!((B[B[v4] + $F310]) > 128)) goto SENMAIN_L_C689
  return (B[B[v4] + $F310]) > 128
SENMAIN_L_C689:
  B[B[v4] + $F310] = 1
SENMAIN_L_C692:
  if (!(v4 != v6)) goto SENMAIN_L_C72D
  v18 = B[v4] % 15
  v20 = B[v4] / 15
  v12 = B[B[v4] + $F310]
  v14 = 0
SENMAIN_L_C6AC:
  t4 = SENMAIN_F_C4B7(v18, v20, v14)
  if (!(t4 != 255)) goto SENMAIN_L_C70C
  v16 = ($F56E * 15) + $F56C
  v2 = v16 + $F310
  if (!((B[v16 + $F310]) == 128)) goto SENMAIN_L_C70C
  B[v2] = v12 + 1
  v10 = v6
SENMAIN_L_C6D9:
  v8 = L - 1
  if (!(v8 < $F4E4)) goto SENMAIN_L_C6E7
  v8 = $F56A
SENMAIN_L_C6E7:
  B[v10] = B[v8]
  if (!(B[v2] >= (B[B[v8] + $F310]))) goto SENMAIN_L_C727
  B[v10] = v16
  v6 = v6 + 1
  if (!(v6 >= $F56B)) goto SENMAIN_L_C70C
  v6 = $F4E4
SENMAIN_L_C70C:
  v14 = v14 + 1
  if (v14 < 3) goto SENMAIN_L_C6AC
  v4 = v4 + 1
  if (!(v4 >= $F56B)) goto SENMAIN_L_C692
  v4 = $F4E4
  goto SENMAIN_L_C692
SENMAIN_L_C727:
  v10 = v8
  goto SENMAIN_L_C6D9
SENMAIN_L_C72D:
  return

SENMAIN_F_C72E:
  // frame 8
  if (!(a0 % 2)) goto SENMAIN_L_C73D
  goto SENMAIN_L_C73E
SENMAIN_L_C73D:
SENMAIN_L_C73E:
  v4 = L
  goto SENMAIN_L_C78C
SENMAIN_L_C743:
  v6 = (W[(v2 * 6) + SENMAIN_D_CB82]) + a0
  v8 = (W[((v2 * 6) + (v4 * 2)) + SENMAIN_D_CB82]) + a1
  if (!(v6 >= 0)) goto SENMAIN_L_C776
  if (!(v6 < 15)) goto SENMAIN_L_C776
  if (!(v8 >= 0)) goto SENMAIN_L_C776
  if (v8 < 9) goto SENMAIN_L_C77E
SENMAIN_L_C776:
  t1 = rand(2)
  if (t1) goto SENMAIN_L_C78A
SENMAIN_L_C77E:
  B[((a1 * 15) + a0) + $F45A] = v2
SENMAIN_L_C78A:
SENMAIN_L_C78C:
  v2 = L
  if (v2 < 6) goto SENMAIN_L_C743
  return v2 < 6

SENMAIN_F_C794:
  // frame 20
  t1 = sys36_memset_long(126, $F45A, 128, 135)
  t2 = sys36_memset_long(126, $F310, 128, 135)
  $F4E2 = 0
  t3 = SENMAIN_F_C541(a1)
  $F4E2 = 1
  v6 = (a1 * 7) + g_ships
  if ((W[v6 + 4]) <= 20) goto SENMAIN_L_C801
  if (B[v6] <= 20) goto SENMAIN_L_C801
  if ((W[($F450 * 7) + $EB96]) <= 20) goto SENMAIN_L_C801
  if (!((B[($F450 * 7) + g_ships]) <= 20)) goto SENMAIN_L_C84A
SENMAIN_L_C801:
  if (!(a1 != $F450)) goto SENMAIN_L_C822
  v10 = B[($F450 % 5) + $F431]
  t4 = SENMAIN_F_C72E(v10 % 15, v10 / 15)
  return v10
SENMAIN_L_C822:
  if (!($F304 < 7)) goto SENMAIN_L_C82E
  goto SENMAIN_L_C82F
SENMAIN_L_C82E:
SENMAIN_L_C82F:
  v14 = L
  if (!($F308 < 4)) goto SENMAIN_L_C83C
  goto SENMAIN_L_C83D
SENMAIN_L_C83C:
SENMAIN_L_C83D:
  v16 = L
  t5 = SENMAIN_F_C72E(v14, v16)
  return (v16 * 15) + v14
SENMAIN_L_C84A:
  v14 = (B[a0 + $F42C]) % 15
  v16 = (B[a0 + $F42C]) / 15
  v8 = ((B[v6 + 6]) >> 4) & 3
  t6 = rand(10)
  if (!t6) goto SENMAIN_L_C91A
  if (!v8) goto SENMAIN_L_C91A
  if (!(v8 & 1)) goto SENMAIN_L_C87A
  goto SENMAIN_L_C87C
SENMAIN_L_C87A:
SENMAIN_L_C87C:
  v8 = L
  v12 = (B[a0 + $F436]) % 3
  v2 = (v12 << 4) + SENMAIN_D_CC5A
  v4 = ((v12 << 4) + SENMAIN_D_CC5A) + v8
  goto SENMAIN_L_C914
SENMAIN_L_C894:
  v18 = (W[(B[v2] * 6) + SENMAIN_D_CBA6]) + v14
  if (!(v14 % 2)) goto SENMAIN_L_C8AA
  goto SENMAIN_L_C8AB
SENMAIN_L_C8AA:
SENMAIN_L_C8AB:
  v20 = (W[((B[v2] * 6) + (L * 2)) + SENMAIN_D_CBA6]) + v16
  t7 = rand(3)
  if (t7) goto SENMAIN_L_C911
  if (!(v18 >= 0)) goto SENMAIN_L_C911
  if (!(v18 < 15)) goto SENMAIN_L_C911
  if (!(v20 >= 0)) goto SENMAIN_L_C911
  if (!(v20 < 9)) goto SENMAIN_L_C911
  if (!((B[((v20 * 15) + v18) + $F310]) <= 128)) goto SENMAIN_L_C911
  t8 = rand(2)
  t9 = rand(2)
  B[((v20 * 15) + v18) + $F45A] = ((((t9 * 3) + t8) + v12) + 1) % 6
  return (v20 * 15) + v18
SENMAIN_L_C911:
  v2 = v2 + 1
SENMAIN_L_C914:
  if (v2 < v4) goto SENMAIN_L_C894
SENMAIN_L_C91A:
  $F4E2 = 0
  t10 = SENMAIN_F_C72E(v14, v16)
  return B[a0 + $F42C]

SENMAIN_F_C92B:
  // frame 12
  v10 = $F44E
  if (!(a0 == 2)) goto SENMAIN_L_C974
  v8 = 100
  v4 = $F423
  v6 = $F423 + $F42A
  goto SENMAIN_L_C96E
SENMAIN_L_C949:
  v2 = (B[v4] * 7) + g_ships
  v12 = B[v2]
  if (!(v8 > v12)) goto SENMAIN_L_C96B
  if (!(W[v2 + 4])) goto SENMAIN_L_C96B
  if (!v12) goto SENMAIN_L_C96B
  v8 = B[v2]
  v10 = B[v4]
SENMAIN_L_C96B:
  v4 = v4 + 1
SENMAIN_L_C96E:
  if (v4 < v6) goto SENMAIN_L_C949
SENMAIN_L_C974:
  t1 = SENMAIN_F_C794(v10, a1)
  return t1

