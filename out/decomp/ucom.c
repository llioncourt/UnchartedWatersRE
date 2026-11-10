UCOM_F_9603:
  // frame 0
  t1 = UCOM_F_9675()
  return t1

UCOM_F_960C:
  // frame 0
  t1 = RF_2E13()
  return t1

UCOM_F_9615:
  // frame 10
  a0 = ((a0 * 2) + 2) << 3
  a1 = (W[((byte)$F28C * 2) + RD_8EC0]) + (((a1 * 2) + 1) << 3)
  v2 = 0
UCOM_L_9634:
  W[(v2 * 2) + (&v10)] = (W[(v2 * 2) + UCOM_D_BF42]) + ((a2 * 2) * 2)
  v2 = v2 + 1
  if (v2 < 4) goto UCOM_L_9634
  t1 = sys9_metasprite_set(10, a0, a1, 2, 2, &v10, 0, 126)
  return t1

UCOM_F_9666:
  // frame 0
  t1 = sys58_sprites_hide(0, 17)
  return t1

UCOM_F_9675:
  // frame 2
  t1 = RF_5F1C()
  if (!(byte)$EF81) goto UCOM_L_9695
  t2 = rand(5)
  if (t2) goto UCOM_L_9695
  t3 = RF_5C91()
  t4 = RF_4B44(UCOM_D_BF87)
UCOM_L_9695:
  t5 = RF_5F0F()
UCOM_L_9698:
  t6 = RF_48A7(5, 2, UCOM_D_BF4A, 6, 3)
  v2 = t6
  if (!(v2 == (-2))) goto UCOM_L_96BC
  v2 = 6
UCOM_L_96AD:
  t7 = (*(W[(v2 * 2) + UCOM_D_BF56]))()
  if (!t7) goto UCOM_L_9698
UCOM_L_96B8:
  t8 = RF_5FDB()
  return t8
UCOM_L_96BC:
  if (!(v2 == (-1))) goto UCOM_L_96AD
  goto UCOM_L_96B8

UCOM_F_96C6:
  // frame 4
  v4 = g_fleets
  t1 = RF_5C91()
  if (!((B[v4 + 15]) & 1)) goto UCOM_L_9716
  t2 = RF_2FB9(UCOM_D_C006, 1)
  t3 = RF_49B5()
  v2 = t3
  t4 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  if (!v2) goto UCOM_L_9714
  t5 = RF_5C5A(0, 0)
  t6 = RF_5C3E()
  t7 = RF_3619(UCOM_D_C01E, W[((B[v4 + 8]) * 2) + UCOM_D_BFB8])
UCOM_L_9714:
  return v2
UCOM_L_9716:
  t8 = RF_4B44(UCOM_D_C040)
  return 0

UCOM_F_971F:
  // frame 2
  v2 = g_fleets
  t1 = RF_5C5A(0, 0)
  if (!((B[v2 + 15]) & 1)) goto UCOM_L_9749
  t2 = RF_4B44(UCOM_D_C05B)
  goto UCOM_L_9757
UCOM_L_9749:
  t3 = RF_4B44(UCOM_D_C072)
UCOM_L_9757:
  B[v2 + 15] = L
  t4 = sys58_sprites_hide(22, 4)
  t5 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  return 1

UCOM_F_9773:
  // frame 2
  t1 = RF_47E1(0, 2, UCOM_D_C092, 2, 2)
  v2 = t1
  if (!(v2 == 255)) goto UCOM_L_978E
  return 0
UCOM_L_978E:
  t2 = (*(W[(v2 * 2) + UCOM_D_C096]))()
  return t2

UCOM_F_9797:
  // frame 0
  if (a0 < 0) goto UCOM_L_97B8
  if (a0 > 13) goto UCOM_L_97B8
  if (a1 < 0) goto UCOM_L_97B8
  if (a1 > 13) goto UCOM_L_97B8
  goto UCOM_L_97B9
UCOM_L_97B8:
UCOM_L_97B9:
  return

UCOM_F_97BA:
  // frame 6
  t1 = UCOM_F_9797(a0, a1)
  if (!t1) goto UCOM_L_97CC
  return 255
UCOM_L_97CC:
  v4 = a3
  v6 = a3 + a2
  goto UCOM_L_9802
UCOM_L_97D4:
  v2 = (B[v4] * 19) + $0FD8
  t2 = RL_884E(v2 + 17)
  if (!(t2 == a0)) goto UCOM_L_97FF
  t3 = RL_884E(v2 + 18)
  if (!(t3 == a1)) goto UCOM_L_97FF
  return B[v4]
UCOM_L_97FF:
  v4 = v4 + 1
UCOM_L_9802:
  if (v4 < v6) goto UCOM_L_97D4
  return 255

UCOM_F_980C:
  // frame 6
  v2 = 0
UCOM_L_9813:
  v4 = v2
  if (!((a0 + v2) >= 15)) goto UCOM_L_9835
  if (!(W[a1] >= $2EE0)) goto UCOM_L_9853
  v2 = v2 + 1
  W[a1] = W[a1] - $2EE0
  goto UCOM_L_9853
UCOM_L_9835:
  v6 = ((a0 + v2) * (a0 + v2)) * 50
  if (!(W[a1] > v6)) goto UCOM_L_9853
  W[a1] = W[a1] - v6
  v2 = v2 + 1
UCOM_L_9853:
  if (v4 != v2) goto UCOM_L_9813
  if (!((a0 + v2) > 50)) goto UCOM_L_9872
UCOM_L_9862:
  v2 = v2 - 1
  if (v2) goto UCOM_L_9862
  if ((a0 + v2) > 50) goto UCOM_L_9862
UCOM_L_9872:
  return v2

UCOM_F_9874:
  // frame 27
  v27 = 1
  v2 = g_days_at_sea
  t1 = RL_8502(0, &v17)
  v8 = t1
  goto UCOM_L_9A01
UCOM_L_988E:
  v19 = ((B[v10 + (&v17)]) * 24) + g_cargo
  v21 = (B[v19] * 10) + $EAC0
  v23 = (B[v19] * 7) + g_player_name_ptr
  if (!((B[v23 + 3]) < 50)) goto UCOM_L_98E8
  t2 = RL_8962(((((v2 / 10) * (v2 / 10)) * 200) + ((v2 % 10) * 10)) + (W[v21 + 8]), $EA60)
  W[v21 + 8] = t2
UCOM_L_98E8:
  if (!B[v19]) goto UCOM_L_9921
  v25 = ((B[v19] - 1) * 2) + $E970
  v4 = B[v25]
  v4 = v4 + (((byte)g_hero_stats - (B[v21 + 1])) / 10)
  if (!(v4 < 0)) goto UCOM_L_9915
  v4 = 0
UCOM_L_9915:
  t3 = RL_8962(v4, 100)
  v4 = t3
  B[v25] = v4
UCOM_L_9921:
  if (!((B[v23 + 3]) < 50)) goto UCOM_L_99FF
  t4 = UCOM_F_980C(B[v23 + 3], v21 + 8)
  v6 = t4
  if (!v6) goto UCOM_L_99FF
  if (!v27) goto UCOM_L_994B
  t5 = RF_5C3E()
  v27 = 0
  goto UCOM_L_996C
UCOM_L_994B:
  if (!((byte)$F28C == 1)) goto UCOM_L_995D
  goto UCOM_L_995F
UCOM_L_995D:
UCOM_L_995F:
  t6 = RF_604A(3, 8, L + 1, 16, 6, $2000)
  t7 = RF_5C13(1)
UCOM_L_996C:
  t8 = RF_2FB9(UCOM_D_C0B0, 0)
  if (!B[v19]) goto UCOM_L_9990
  t9 = RF_40DE(W[(B[v19] * 7) + g_player_name_ptr])
  goto UCOM_L_9994
UCOM_L_9990:
UCOM_L_9994:
  t10 = RF_2FB9(UCOM_D_C0B5, 0)
  t11 = RF_2FB9(UCOM_D_C0C1, 0)
  B[v23 + 3] = (B[v23 + 3]) + v6
  goto UCOM_L_99F8
UCOM_L_99AE:
  t12 = rand(4)
  t13 = RL_8962(t12 + (B[v21 + 1]), 100)
  B[v21 + 1] = t13
  t14 = rand(4)
  t15 = RL_8962(t14 + (B[v21 + 2]), 100)
  B[v21 + 2] = t15
  t16 = rand(4)
  t17 = RL_8962(t16 + (B[v21 + 3]), 100)
  B[v21 + 3] = t17
UCOM_L_99F8:
  v12 = L
  if (v12 < v6) goto UCOM_L_99AE
UCOM_L_99FF:
UCOM_L_9A01:
  v10 = L
  if (v10 < v8) goto UCOM_L_988E
  g_days_at_sea = 0
  return 0

UCOM_F_9A0D:
  // frame 80
  t1 = RL_87E0(((byte)$F165 * 3) + (byte)$F167, ((byte)$F166 * 3) + (byte)$F168, &v70)
  v72 = t1
  v78 = g_fleets
  v74 = 255
  if (!v72) goto UCOM_L_9A89
  v76 = 0
UCOM_L_9A46:
  t2 = UCOM_F_97BA((B[v78 + 2]) + (W[((v76 * 2) * 2) + $EF87]), (B[v78 + 3]) + (W[((v76 * 2) * 2) + $EF89]), v72, &v70)
  v74 = t2
  if (v74 != 255) goto UCOM_L_9A89
  v76 = v76 + 1
  if (v76 < 8) goto UCOM_L_9A46
UCOM_L_9A89:
  t3 = RF_5C91()
  if (!(v74 == 255)) goto UCOM_L_9A9E
  t4 = RF_4B44(UCOM_D_C0E1)
  return 0
UCOM_L_9A9E:
  t5 = RF_2FB9(UCOM_D_C0F6, 0)
  t6 = RF_40DE((v74 * 19) + $0FD8)
  t7 = RF_2FB9(UCOM_D_C107, 0)
  t8 = RF_3CFF()
  if (!t8) goto UCOM_L_9B50
  t9 = UCOM_F_9874()
  (byte)$EA88 = 0
  (byte)$F28D = 0
  t10 = $8A5B(B[v78 + 2], B[v78 + 3], 0)
  if (!((B[(((B[v78 + 2]) * 14) + (B[v78 + 3])) + $F1AE]) == 255)) goto UCOM_L_9B14
  t11 = RF_556D(B[v78 + 2], B[v78 + 3], (((B[v78 + 1]) % 3) * 3) + (B[v78] % 3))
UCOM_L_9B14:
  v80 = (v74 * 19) + $0FD8
  t12 = RL_884E(v80 + 17)
  B[v78 + 2] = t12
  t13 = RL_884E(v80 + 18)
  B[v78 + 3] = t13
  B[v78 + 15] = (B[v78 + 15]) | 18
  t14 = sys58_sprites_hide(22, 4)
  return 1
UCOM_L_9B50:
  return 0

UCOM_F_9B52:
  // frame 0
  t1 = UCOM_F_9797(a0, a1)
  if (!t1) goto UCOM_L_9B62
  return 0
UCOM_L_9B62:
  t2 = RL_8616(((byte)$F165 * 3) + (byte)$F167, ((byte)$F166 * 3) + (byte)$F168, a0, a1)
  if (!t2) goto UCOM_L_9B89
  goto UCOM_L_9B8A
UCOM_L_9B89:
UCOM_L_9B8A:
  return

UCOM_F_9B8B:
  // frame 2
  goto UCOM_L_9BAD
UCOM_L_9B94:
  if (!((B[(v2 * 2) + a3]) == a0)) goto UCOM_L_9BAB
  if (!((B[((v2 * 2) + a3) + 1]) == a1)) goto UCOM_L_9BAB
  return 1
UCOM_L_9BAB:
UCOM_L_9BAD:
  v2 = L
  if (v2 < a2) goto UCOM_L_9B94
  return 0

UCOM_F_9BB6:
  // frame 36
  v36 = g_fleets
  v24 = B[v36 + 2]
  v26 = B[v36 + 3]
  v28 = 0
  v18 = 0
  goto UCOM_L_9C25
UCOM_L_9BD2:
  t1 = UCOM_F_9B52((W[((v28 * 2) * 2) + $EF87]) + v24, (W[((v28 * 2) * 2) + $EF89]) + v26)
  if (!t1) goto UCOM_L_9C20
  B[(v18 * 2) + (&v16)] = (W[((v28 * 2) * 2) + $EF87]) + v24
  B[(v18 * 2) + (&v15)] = (W[((v28 * 2) * 2) + $EF89]) + v26
  v18 = v18 + 1
UCOM_L_9C20:
  v28 = v28 + 1
UCOM_L_9C25:
  if (v28 < 8) goto UCOM_L_9BD2
  t2 = rand(v18)
  v30 = t2
  v20 = B[(v30 * 2) + (&v16)]
  v22 = B[(v30 * 2) + (&v15)]
UCOM_L_9C49:
  t3 = UCOM_F_9615(v20, v22, 2)
  t4 = RF_3D91(v32, 12)
  t5 = RF_3759()
  v32 = t5
  switch (t5) {4 cases}

UCOM_F_9D00:
  // frame 6
  v4 = g_fleets
  t1 = RF_5C91()
  t2 = RF_2FB9(UCOM_D_C109, 1)
  t3 = UCOM_F_9BB6(&v1, &v2)
  v6 = t3
  if (!v6) goto UCOM_L_9DB5
  t4 = RF_5C3E()
  t5 = RF_2FB9(UCOM_D_C120, 1)
  t6 = RF_3CFF()
  if (!t6) goto UCOM_L_9DB3
  t7 = $8A5B(B[v4 + 2], B[v4 + 3], 0)
  if (!((B[(((B[v4 + 2]) * 14) + (B[v4 + 3])) + $F1AE]) == 255)) goto UCOM_L_9D75
  t8 = RF_556D(B[v4 + 2], B[v4 + 3], (((B[v4 + 1]) % 3) * 3) + (B[v4] % 3))
UCOM_L_9D75:
  B[v4 + 15] = (B[v4 + 15]) | 48
  B[v4 + 15] = (B[v4 + 15]) & 254
  B[v4 + 2] = (byte)v1
  B[v4 + 3] = (byte)v2
  t9 = sys58_sprites_hide(22, 4)
  t10 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  goto UCOM_L_9DB4
UCOM_L_9DB3:
UCOM_L_9DB4:
  v6 = L
UCOM_L_9DB5:
  return v6

UCOM_F_9DB7:
  // frame 16
  v10 = ((byte)$F165 * 3) + (byte)$F167
  v12 = ((byte)$F166 * 3) + (byte)$F168
  v16 = g_fleets
  v2 = 0
  goto UCOM_L_9E14
UCOM_L_9DDE:
  v4 = (B[v16 + 2]) + (W[((v14 * 2) * 2) + $EF87])
  v6 = (B[v16 + 3]) + (W[((v14 * 2) * 2) + $EF89])
  t1 = UCOM_F_9797(v4, v6)
  if (t1) goto UCOM_L_9E12
  t2 = RL_8616(v10, v12, v4, v6)
  if (t2) goto UCOM_L_9E12
  v2 = 1
UCOM_L_9E12:
UCOM_L_9E14:
  v14 = L
  if (v14 < 8) goto UCOM_L_9DDE
  if (v2) goto UCOM_L_9E2B
  t3 = RF_5C91()
  t4 = RF_4B44(UCOM_D_C14D)
  return 0
UCOM_L_9E2B:
  t5 = RF_47E1(0, 2, UCOM_D_C131, 2, 2)
  v8 = t5
  if (!(v8 == 255)) goto UCOM_L_9E41
  return 0
UCOM_L_9E41:
  t6 = (*(W[(v8 * 2) + UCOM_D_C135]))()
  return t6

UCOM_F_9E4A:
  // frame 6
  v4 = W[a0]
  v6 = W[a1]
UCOM_L_9E55:
  t1 = UCOM_F_9615(v4, v6, a6)
  t2 = RF_3D91(v2, 6)
  t3 = RF_3759()
  v2 = t3
  switch (v2) {8 cases}

UCOM_F_9F0A:
  // frame 8
  v4 = a3
  v6 = a3 + a2
  v2 = 0
  goto UCOM_L_9F3F
UCOM_L_9F19:
  v8 = (B[a3] << 4) + g_fleets
  if (!((B[v8 + 2]) == a0)) goto UCOM_L_9F3C
  if (!((B[v8 + 3]) == a1)) goto UCOM_L_9F3C
  B[v4] = B[a3]
  v4 = v4 + 1
  v2 = v2 + 1
UCOM_L_9F3C:
  a3 = a3 + 1
UCOM_L_9F3F:
  if (a3 < v6) goto UCOM_L_9F19
  return v2

UCOM_F_9F47:
  // frame 10
  if (!(a0 > 1)) goto UCOM_L_9FAC
  v8 = UCOM_D_C168
  v2 = a1
  v6 = a1
  v4 = a1 + a0
  goto UCOM_L_9F74
UCOM_L_9F5F:
  if (B[v2]) goto UCOM_L_9F6A
  a0 = a0 - 1
  goto UCOM_L_9F71
UCOM_L_9F6A:
  B[v6] = B[v2]
  v6 = v6 + 1
UCOM_L_9F71:
  v2 = v2 + 1
UCOM_L_9F74:
  if (v2 < v4) goto UCOM_L_9F5F
  t1 = RF_5C91()
  if (!(a0 > 1)) goto UCOM_L_9FA5
  t2 = RF_3619(UCOM_D_C169, a0)
  t3 = RF_3C7B(UCOM_D_C185, a0)
  v10 = t3
  if (!(v10 == (-1))) goto UCOM_L_9F9F
  return 255
UCOM_L_9F9F:
  return B[(a1 + v10) - 1]
UCOM_L_9FA5:
  t4 = RF_4B44(UCOM_D_C18F)
UCOM_L_9FAC:
  return B[a1]

UCOM_F_9FAF:
  // frame 20
  v20 = g_fleets
  if ((W[v20 + 11]) & 2) goto UCOM_L_9FCC
  t1 = RF_5C91()
  t2 = RF_4B44(UCOM_D_C1BE)
  return 0
UCOM_L_9FCC:
  t3 = RF_430C()
  v14 = t3
  v16 = B[v20]
  v18 = B[v20 + 1]
  if (!(v14 == 255)) goto UCOM_L_9FE7
  goto UCOM_L_9FF5
UCOM_L_9FE7:
UCOM_L_9FF5:
  v12 = L
  t4 = rand(180)
  if (!(v12 < t4)) goto UCOM_L_A03B
  t5 = rand(5)
  v16 = (t5 + v16) - 2
  t6 = rand(3)
  v18 = (t6 + v18) - 1
  if (!(v16 < 0)) goto UCOM_L_A021
  goto UCOM_L_A028
UCOM_L_A021:
  t7 = RL_8962(v16, 71)
UCOM_L_A028:
  v16 = L
  if (!(v18 < 0)) goto UCOM_L_A033
  goto UCOM_L_A03A
UCOM_L_A033:
  t8 = RL_8962(v18, 35)
UCOM_L_A03A:
  v18 = L
UCOM_L_A03B:
  v2 = v18 / 18
  if (!v2) goto UCOM_L_A04C
  goto UCOM_L_A054
UCOM_L_A04C:
UCOM_L_A054:
  v6 = L
  v10 = (v16 + 38) % 72
  v4 = v10 / 36
  if (!v4) goto UCOM_L_A06C
  goto UCOM_L_A06D
UCOM_L_A06C:
UCOM_L_A06D:
  v8 = L * 5
  t9 = RF_5C91()
  t10 = RF_3619(UCOM_D_C1D6, W[(v2 * 2) + UCOM_D_C1AE], v6, W[(v4 * 2) + UCOM_D_C1B2], v8)
  t11 = RF_472D()
  return 1

UCOM_F_A091:
  // frame 0
  if (!((B[a0 + 2]) < 7)) goto UCOM_L_A0A3
  goto UCOM_L_A0A4
UCOM_L_A0A3:
UCOM_L_A0A4:
  return

UCOM_F_A0A5:
  // frame 0
  if (!((byte)$F28C == 1)) goto UCOM_L_A0B6
  goto UCOM_L_A0B7
UCOM_L_A0B6:
UCOM_L_A0B7:
  return

UCOM_F_A0B8:
  // frame 0
  t1 = UCOM_F_A388()
  t2 = RF_5C91()
  return t2

UCOM_F_A0C4:
  // frame 31
  v27 = (a0 << 4) + g_fleets
  t1 = UCOM_F_A091(v27)
  v19 = t1
  t2 = UCOM_F_A0A5()
  v21 = t2
  t3 = RL_8502(a0, &v9)
  v15 = t3
  v13 = (v15 * 2) + 8
  t4 = RF_4D41(v19, v21, 14, v13)
  t5 = RF_5FFB(v19, v21, 14, v13)
  v29 = t5
  t6 = RF_4F65(v19, v21, 14, v13, 0, 0)
  v13 = v21 + 1
  t7 = RF_2F8F(v19 + 1, v21 + 1)
  v23 = (a0 - 1) / 5
  t8 = RF_3608(UCOM_D_C2B9, W[(v23 * 2) + UCOM_D_C1FC])
  v13 = v13 + 1
  t9 = RF_2F8F(v19 + 1, v13 + 1)
  t10 = RF_3608(UCOM_D_C2C2, W[((((a0 - 1) % 5) / 3) * 2) + UCOM_D_C204])
  v13 = v13 + 1
  t11 = RF_2F8F(v19 + 1, v13 + 1)
  t12 = RF_2AE0(a0)
  t13 = RF_3608(UCOM_D_C2C5, t12)
  v13 = v13 + 2
  t14 = RF_2F8F(v19 + 1, v13 + 2)
  t15 = RF_3608(UCOM_D_C2CF, W[(((B[v27 + 8]) & 7) * 2) + UCOM_D_C208])
  v13 = v13 + 2
  t16 = RF_2F8F(v19 + 1, v13 + 2)
  t17 = RF_2FB9(UCOM_D_C2DA, 0)
  v2 = &v9
  v4 = (&v9) + v15
  goto UCOM_L_A1F0
UCOM_L_A1BD:
  v25 = (B[v2] * 7) + g_ships
  t18 = RF_40A5((B[v25 + 6]) & 15)
  v11 = t18
  t19 = RF_2F8F(v19 + 2, v13 + 1)
  t20 = RF_40DE(v11)
  v13 = v13 + 2
  v2 = v2 + 1
UCOM_L_A1F0:
  if (v2 < v4) goto UCOM_L_A1BD
  t21 = RF_430C()
  v13 = t21
  v17 = (byte)(g_hero_stats+2)
  if (!(v13 == 255)) goto UCOM_L_A20E
  goto UCOM_L_A217
UCOM_L_A20E:
UCOM_L_A217:
  v17 = v17 + L
  v31 = g_player_items & 1
  t22 = (*(W[(v31 * 2) + UCOM_D_C228]))()
  t23 = rand(80)
  if (!(v17 >= (t23 + 100))) goto UCOM_L_A27D
  t24 = RF_2FB9(UCOM_D_C2E0, 0)
  t25 = RF_40DE(W[((a0 + 20) * 7) + g_player_name_ptr])
  t26 = RF_2FB9(UCOM_D_C2EF, 0)
  $F18A = $F18A - 1
  t27 = RF_472D()
  if (!(a0 >= 16)) goto UCOM_L_A294
  t28 = RF_5C3E()
  t29 = RF_2FB9(UCOM_D_C2FA, 1)
  goto UCOM_L_A291
UCOM_L_A27D:
  t30 = RF_3619(UCOM_D_C315, W[(((B[v27 + 8]) & 7) * 2) + UCOM_D_C218])
UCOM_L_A291:
  t31 = RF_472D()
UCOM_L_A294:
  if (!v29) goto UCOM_L_A2A9
  t32 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_A2A9:
  t33 = RF_4D8B()
  t34 = sys48_color_math(48, 0, 224)
  t35 = sys39_window_off()
  t36 = sys56_anim_control(3, 255)
  return t36

UCOM_F_A2C9:
  // frame 7
  v3 = 0
  v5 = (0 * 19) + $0FD8
  v7 = ((0 * 19) + $0FD8) + $0532
  (byte)v1 = 0
  goto UCOM_L_A31C
UCOM_L_A2E6:
  t1 = RL_884E(v5 + 15)
  if (!(t1 == a0)) goto UCOM_L_A30F
  t2 = RL_884E(v5 + 16)
  if (!(t2 == a1)) goto UCOM_L_A30F
  B[a2 + v3] = (byte)v1
  v3 = v3 + 1
UCOM_L_A30F:
  (byte)v1 = (byte)v1 + 1
  v5 = v5 + 19
UCOM_L_A31C:
  if (v5 < v7) goto UCOM_L_A2E6
  return v3

UCOM_F_A327:
  // frame 6
  v2 = a3
  v4 = a3 + a2
  goto UCOM_L_A380
UCOM_L_A334:
  v6 = (B[v2] * 19) + $0FD8
  t1 = RL_884E(v6 + 17)
  if (!(t1 == a0)) goto UCOM_L_A37D
  t2 = RL_884E(v6 + 18)
  if (!(t2 == a1)) goto UCOM_L_A37D
  t3 = RL_884E(v6 + 15)
  if (!(t3 == (byte)g_fleets)) goto UCOM_L_A37D
  t4 = RL_884E(v6 + 16)
  if (!(t4 == (byte)(g_fleets+1))) goto UCOM_L_A37D
  return B[v2] + 1
UCOM_L_A37D:
  v2 = v2 + 1
UCOM_L_A380:
  if (v2 < v4) goto UCOM_L_A334
  return 0

UCOM_F_A388:
  // frame 6
  v6 = 0
  v2 = (byte)(g_fleets+2)
  if (!(v2 > 1)) goto UCOM_L_A3BE
  v4 = (byte)(g_fleets+3)
  if (!((byte)$F28C == 1)) goto UCOM_L_A3B0
  if (!(v4 > 0)) goto UCOM_L_A3BE
  goto UCOM_L_A3B8
UCOM_L_A3B0:
  if (!(v4 > 8)) goto UCOM_L_A3BE
UCOM_L_A3B8:
  if (!(L < R)) goto UCOM_L_A3BE
  v6 = 1
UCOM_L_A3BE:
  if (!v6) goto UCOM_L_A3CB
  t1 = sys58_sprites_hide(22, 4)
UCOM_L_A3CB:
  return v6

UCOM_F_A3CD:
  // frame 119
  v18 = 0
  v16 = 0
  v22 = 13
  v20 = 13
  v24 = g_fleets
  t1 = RL_8560(B[v24], B[v24 + 1], &v49)
  v2 = t1
  t2 = UCOM_F_A2C9(B[v24], B[v24 + 1], &v119)
  v14 = t2
  if (!(v2 == 1)) goto UCOM_L_A412
  if (v14) goto UCOM_L_A412
  t3 = RF_5C91()
  t4 = RF_4B44(UCOM_D_C32B)
  return 0
UCOM_L_A412:
  v4 = B[v24 + 2]
  v6 = B[v24 + 3]
  v28 = (W[v24 + 11]) & 1
  if (v28) goto UCOM_L_A451
  if (!v4) goto UCOM_L_A42F
  goto UCOM_L_A430
UCOM_L_A42F:
UCOM_L_A430:
  v16 = L
  if (!v6) goto UCOM_L_A43A
  goto UCOM_L_A43B
UCOM_L_A43A:
UCOM_L_A43B:
  v18 = L
  t5 = RL_8962(v4 + 1, 13)
  v20 = t5
  t6 = RL_8962(v6 + 1, 13)
  v22 = t6
  t7 = RF_5C91()
UCOM_L_A451:
  v8 = 0
UCOM_L_A453:
  if (!(v8 == 1)) goto UCOM_L_A461
  t8 = RF_5C3E()
  v8 = 0
  goto UCOM_L_A46A
UCOM_L_A461:
  t9 = (*(W[(v28 * 2) + UCOM_D_C327]))()
UCOM_L_A46A:
  t10 = RF_4B44(UCOM_D_C340)
  if (!v28) goto UCOM_L_A4C3
  (byte)$F294 = 255
  (byte)$F291 = 255
  (byte)$F290 = 255
  g_portrait = -1
  t11 = sys4_tilemap_clear(3, 0, 0)
  t12 = RF_532F(1, 1, 1, 30, 28, $E000, 127)
  t13 = RF_532F(2, 1, 1, 30, 28, $E800, 127)
  t14 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  (byte)$F28F = 0
UCOM_L_A4C3:
  t15 = UCOM_F_9E4A(&v4, &v6, v16, v18, v20, v22, 0)
  v12 = t15
  if (!(v12 == 128)) goto UCOM_L_A570
  t16 = RL_8560(B[v24], B[v24 + 1], &v49)
  v2 = t16
  t17 = UCOM_F_9F0A(v4, v6, v2, &v49)
  v2 = t17
  if (!v2) goto UCOM_L_A560
  t18 = UCOM_F_9F47(v2, &v49)
  v10 = t18
  if (!(v10 != 255)) goto UCOM_L_A55B
  if (v10) goto UCOM_L_A529
  t19 = (*(W[(v28 * 2) + UCOM_D_C327]))()
  t20 = RF_5C3E()
  t21 = RF_4B44(UCOM_D_C34C)
  goto UCOM_L_A55B
UCOM_L_A529:
  v26 = 1
  t22 = UCOM_F_A0C4(v10)
  goto UCOM_L_A55B
UCOM_L_A534:
  t23 = (*(W[(v28 * 2) + UCOM_D_C327]))()
  t24 = RF_2FB9(UCOM_D_C35D, 0)
  t25 = RF_40DE(((v2 - 1) * 19) + $0FD8)
  t26 = RF_2FB9(UCOM_D_C37B, 0)
UCOM_L_A55B:
  v8 = 1
  goto UCOM_L_A578
UCOM_L_A560:
  t27 = UCOM_F_A327(v4, v6, v14, &v119)
  v2 = t27
  if (v2) goto UCOM_L_A534
UCOM_L_A570:
  if (v12 != $8000) goto UCOM_L_A4C3
UCOM_L_A578:
  if (v12 != $8000) goto UCOM_L_A453
  t28 = UCOM_F_9666()
  if (!v28) goto UCOM_L_A59B
  t29 = RF_586A()
  t30 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_A59B:
  return 0

UCOM_F_A59D:
  // frame 16
  v16 = 0
  v8 = 0
  v6 = 0
  goto UCOM_L_A625
UCOM_L_A5AA:
  v2 = (v8 * 5) + $150A
  v4 = (v8 * 14) + g_ports
  v12 = (B[v4 + 11]) + 50
  t1 = RL_884E(v2)
  t2 = RL_8898(((t1 * 88) + (a0 * 2)) + $1888)
  v14 = t2
  v14 = (v14 * v12) / 100
  t3 = RL_884E(v2 + 1)
  v10 = t3
  if (!(v10 == a0)) goto UCOM_L_A618
  v14 = ((((W[v4 + 12]) * v12) / 100) / 2) + 1
UCOM_L_A618:
  if (!(v14 > v16)) goto UCOM_L_A622
  v16 = v14
  v6 = v8
UCOM_L_A622:
  v8 = v8 + 1
UCOM_L_A625:
  if (v8 < 27) goto UCOM_L_A5AA
  return v6

UCOM_F_A62E:
  // frame 25
  t1 = RL_8502(0, &v9)
  v21 = t1
  v11 = &v9
  v13 = (&v9) + v21
  v15 = 0
  goto UCOM_L_A698
UCOM_L_A64E:
  v2 = (B[v11] * 24) + g_cargo
  v4 = v2 + 1
  v23 = v2 + 6
  v25 = v23 + 10
  v19 = 0
  goto UCOM_L_A68B
UCOM_L_A66B:
  if (!W[v23]) goto UCOM_L_A681
  B[a0 + v15] = B[v4 + v19]
  v15 = v15 + 1
UCOM_L_A681:
  v19 = v19 + 1
  v23 = v23 + 2
UCOM_L_A68B:
  if (v23 < v25) goto UCOM_L_A66B
  v11 = v11 + 1
UCOM_L_A698:
  if (v11 < v13) goto UCOM_L_A64E
  return v15

UCOM_F_A6A3:
  // frame 8
  v8 = $E970
  v4 = $E44B
  v6 = $E44B + 140
  goto UCOM_L_A6D7
UCOM_L_A6B7:
  v2 = B[v4 + 6]
  if (!((B[v8 + 1]) == a0)) goto UCOM_L_A6D1
  if (v2 & 2) goto UCOM_L_A6D1
  if (!(v2 & 1)) goto UCOM_L_A6D1
  return 1
UCOM_L_A6D1:
  v8 = v8 + 2
  v4 = v4 + 7
UCOM_L_A6D7:
  if (v4 < v6) goto UCOM_L_A6B7
  return 0

UCOM_F_A6DF:
  // frame 4
  v2 = 0
UCOM_L_A6E6:
  t1 = rand(27)
  v4 = t1
  t2 = UCOM_F_A6A3(v4)
  if (!t2) goto UCOM_L_A6F7
  return v4
UCOM_L_A6F7:
  v2 = v2 + 1
  if (v2 < 30) goto UCOM_L_A6E6
  return 255

UCOM_F_A705:
  // frame 31
  if (!((B[((((a0 - 1) / 5) * 2) * 2) + $EEC0]) > 39)) goto UCOM_L_A724
  t1 = RF_5C3E()
  goto UCOM_L_A7F4
UCOM_L_A724:
  if (!(((a0 - 1) % 5) < 3)) goto UCOM_L_A7B9
  t2 = UCOM_F_A62E(&v25)
  v27 = t2
  if (!v27) goto UCOM_L_A7B0
  t3 = rand(v27)
  v29 = B[t3 + (&v25)]
  t4 = UCOM_F_A59D(v29)
  v31 = t4
  t5 = RF_5C3E()
  t6 = RF_2FB9(UCOM_D_C39F, 0)
  t7 = RL_8875((v29 * 2) + $1B49)
  t8 = RF_40DE(t7)
  if (v29 == 4) goto UCOM_L_A785
  if (v29 == 6) goto UCOM_L_A785
  if (!(v29 == 21)) goto UCOM_L_A78C
UCOM_L_A785:
  goto UCOM_L_A790
UCOM_L_A78C:
UCOM_L_A790:
  t9 = RF_2FB9(UCOM_D_C3A6, 0)
  t10 = RF_2FB9(UCOM_D_C3AA, 0)
  t11 = RF_40DE((v31 * 19) + $0FD8)
  goto UCOM_L_A7F4
UCOM_L_A7B0:
  t12 = RF_5C3E()
  goto UCOM_L_A7F4
UCOM_L_A7B9:
  t13 = UCOM_F_A6DF()
  v31 = t13
  if (!(v31 != 255)) goto UCOM_L_A7EE
  t14 = RF_5C3E()
  t15 = RF_2FB9(UCOM_D_C3D6, 0)
  t16 = RF_40DE((v31 * 19) + $0FD8)
  t17 = RF_2FB9(UCOM_D_C3E0, 0)
  goto UCOM_L_A7F4
UCOM_L_A7EE:
  t18 = RF_5C3E()
UCOM_L_A7F4:
  t19 = RF_4B44(UCOM_D_C3FE)
  return t19

UCOM_F_A7F9:
  // frame 2
  v2 = ((a0 - 1) * 51) + g_captains
  B[v2 + 4] = 0
  B[v2 + 5] = 0
  W[v2 + 7] = 0
  return 0

UCOM_F_A818:
  // frame 0
  if (!((byte)$EA8E >= 15)) goto UCOM_L_A83F
  t1 = UCOM_F_A7F9(a0)
  t2 = RF_5C3E()
  t3 = RF_2FB9(UCOM_D_C411, 0)
  t4 = RF_4B44(UCOM_D_C44B)
  goto UCOM_L_A847
UCOM_L_A83F:
  (byte)$F198 = a0
  (byte)$F197 = 1
UCOM_L_A847:
  return

UCOM_F_A848:
  // frame 45
  v43 = g_fleets
  t1 = RF_5C91()
  t2 = RL_8560(B[v43], B[v43 + 1], &v21)
  v23 = t2
  if (!(v23 == 1)) goto UCOM_L_A878
  t3 = RF_4B44(UCOM_D_C44C)
  return 0
UCOM_L_A878:
  v29 = 0
  v25 = B[v43 + 2]
  v27 = B[v43 + 3]
  if (!v25) goto UCOM_L_A892
  goto UCOM_L_A893
UCOM_L_A892:
UCOM_L_A893:
  v35 = L
  if (!v27) goto UCOM_L_A8A0
  goto UCOM_L_A8A1
UCOM_L_A8A0:
UCOM_L_A8A1:
  v37 = L
  t4 = RL_8962(v25 + 1, 13)
  v39 = t4
  t5 = RL_8962(v27 + 1, 13)
  v41 = t5
UCOM_L_A8B9:
  if (!v29) goto UCOM_L_A8C7
  t6 = RF_5C91()
  v29 = 0
  goto UCOM_L_A8CA
UCOM_L_A8C7:
  t7 = RF_5C3E()
UCOM_L_A8CA:
  t8 = RF_4B44(UCOM_D_C468)
UCOM_L_A8D1:
  t9 = UCOM_F_9E4A(&v25, &v27, v35, v37, v39, v41, 0)
  v33 = t9
  if (!(v33 == 128)) goto UCOM_L_A968
  t10 = RL_8560(B[v43], B[v43 + 1], &v21)
  v23 = t10
  t11 = UCOM_F_9F0A(v25, v27, v23, &v21)
  v23 = t11
  if (!v23) goto UCOM_L_A968
  t12 = UCOM_F_9F47(v23, &v21)
  v31 = t12
  if (!(v31 != 255)) goto UCOM_L_A971
  if (v31) goto UCOM_L_A940
  t13 = RF_5C3E()
  t14 = RF_4B44(UCOM_D_C475)
  goto UCOM_L_A971
UCOM_L_A940:
  if (!(v31 > 15)) goto UCOM_L_A952
  t15 = UCOM_F_A818(v31)
  t16 = UCOM_F_9666()
  return 1
UCOM_L_A952:
  t17 = RF_5C5A(v31 + 20, 0)
  t18 = UCOM_F_A705(v31)
  v29 = 1
  goto UCOM_L_A971
UCOM_L_A968:
  if (v33 != $8000) goto UCOM_L_A8D1
UCOM_L_A971:
  if (v33 != $8000) goto UCOM_L_A8B9
  t19 = UCOM_F_9666()
  return 0

UCOM_F_A97F:
  // frame 2
  t1 = RF_47E1(0, 2, UCOM_D_C486, 3, 3)
  v2 = t1
  if (!(v2 == 255)) goto UCOM_L_A99A
  return 0
UCOM_L_A99A:
  t2 = (*(W[(v2 * 2) + UCOM_D_C48C]))()
  return t2

UCOM_F_A9A3:
  // frame 8
  v2 = a0
  v4 = a0 + a1
  a1 = 0
  goto UCOM_L_A9ED
UCOM_L_A9B2:
  v8 = (B[v2] << 4) + g_fleets
  if (!B[v2]) goto UCOM_L_A9EA
  v6 = B[v8 + 2]
  if (!((B[v8 + 2]) >= a2)) goto UCOM_L_A9EA
  if (!(v6 <= a4)) goto UCOM_L_A9EA
  v6 = B[v8 + 3]
  if (!((B[v8 + 3]) >= a3)) goto UCOM_L_A9EA
  if (!(v6 <= a5)) goto UCOM_L_A9EA
  B[a0] = B[v2]
  a0 = a0 + 1
  a1 = a1 + 1
UCOM_L_A9EA:
  v2 = v2 + 1
UCOM_L_A9ED:
  if (v2 < v4) goto UCOM_L_A9B2
  return a1

UCOM_F_A9F5:
  // frame 47
  v47 = g_fleets
  v25 = B[v47 + 2]
  v27 = B[v47 + 3]
  if (!v25) goto UCOM_L_AA16
  goto UCOM_L_AA17
UCOM_L_AA16:
UCOM_L_AA17:
  v35 = L
  if (!v27) goto UCOM_L_AA24
  goto UCOM_L_AA25
UCOM_L_AA24:
UCOM_L_AA25:
  v37 = L
  t1 = RL_8962(v25 + 1, 13)
  v39 = t1
  t2 = RL_8962(v27 + 1, 13)
  v41 = t2
  t3 = RF_5C91()
  if (!((byte)$EA8E >= 15)) goto UCOM_L_AA51
  t4 = RF_4B44(UCOM_D_C4F0)
  return 0
UCOM_L_AA51:
  t5 = RL_8560(B[v47], B[v47 + 1], &v21)
  v23 = t5
  t6 = UCOM_F_A9A3(&v21, v23, v35, v37, v39, v41)
  v23 = t6
  if (v23) goto UCOM_L_AA86
  t7 = RF_4B44(UCOM_D_C51B)
  return 0
UCOM_L_AA86:
  v29 = 0
UCOM_L_AA89:
  t8 = RF_5C3E()
  t9 = RF_4B44(UCOM_D_C536)
  t10 = UCOM_F_9E4A(&v25, &v27, v35, v37, v39, v41, 1)
  v33 = t10
  if (!(v33 == 128)) goto UCOM_L_AB58
  t11 = RL_8560(B[v47], B[v47 + 1], &v21)
  v23 = t11
  t12 = UCOM_F_A9A3(&v21, v23, v35, v37, v39, v41)
  v23 = t12
  t13 = UCOM_F_9F0A(v25, v27, v23, &v21)
  v23 = t13
  if (!v23) goto UCOM_L_AB58
  t14 = UCOM_F_9F47(v23, &v21)
  v31 = t14
  if (!(v31 != 255)) goto UCOM_L_AB58
  t15 = RF_5C3E()
  v45 = (($EA9B & (-9)) >> 1) & 15
  v43 = (v31 - 1) / 5
  t16 = RF_2FB9(UCOM_D_C543, 1)
  if (!(v43 == 3)) goto UCOM_L_AB30
  goto UCOM_L_AB43
UCOM_L_AB30:
  v43 = ((v31 - 1) % 5) / 3
UCOM_L_AB43:
  t17 = RF_2FB9(W[(v43 * 2) + UCOM_D_C4B4], 1)
  t18 = RF_3CFF()
  if (!t18) goto UCOM_L_AB61
  (byte)$F197 = v31 + 1
  t19 = UCOM_F_9666()
  return 1
UCOM_L_AB58:
  if (v33 != $8000) goto UCOM_L_AA89
UCOM_L_AB61:
  if (v33 != $8000) goto UCOM_L_AA89
  t20 = UCOM_F_9666()
  return 0

UCOM_F_AB6F:
  // frame 0
  if (!((byte)$F28C == 1)) goto UCOM_L_AB80
  goto UCOM_L_AB81
UCOM_L_AB80:
UCOM_L_AB81:
  return

UCOM_F_AB82:
  // frame 2
  v2 = g_fleets
  if (!((B[v2 + 2]) < 7)) goto UCOM_L_AB98
  goto UCOM_L_AB99
UCOM_L_AB98:
UCOM_L_AB99:
  return

UCOM_F_AB9A:
  // frame 0
  t1 = RF_4D8B()
  t2 = sys48_color_math(48, 0, 224)
  t3 = sys39_window_off()
  t4 = sys56_anim_control(3, 255)
  return t4

UCOM_F_ABBF:
  // frame 10
  v2 = (a2 / 2) + (a2 % 2)
  v6 = (v2 * 2) + 2
  t1 = RF_4D41(a0, a1, 26, v6)
  t2 = RF_5FFB(a0, a1, 26, v6)
  v10 = t2
  t3 = RF_4F65(a0, a1, 26, v6, 0, 0)
  goto UCOM_L_AC0D
UCOM_L_ABF4:
  t4 = RF_2F8F(a0 + 2, ((v4 * 2) + a1) + 2)
  t5 = RF_40DE(W[(v4 * 2) + a3])
UCOM_L_AC0D:
  v4 = L
  if (v4 < v2) goto UCOM_L_ABF4
  goto UCOM_L_AC33
UCOM_L_AC17:
  t6 = RF_2F8F(a0 + 14, (((v4 - v2) * 2) + a1) + 2)
  t7 = RF_40DE(W[(v4 * 2) + a3])
  v4 = v4 + 1
UCOM_L_AC33:
  if (v4 < a2) goto UCOM_L_AC17
  t8 = RF_3787(UCOM_D_C55E, a2, a0 + 1, a1 + 2, 12, 2, v2, 1)
  v8 = t8
  t9 = UCOM_F_AB9A()
  if (!v10) goto UCOM_L_AC63
  t10 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_AC63:
  if (!(v8 == (-1))) goto UCOM_L_AC70
  goto UCOM_L_AC72
UCOM_L_AC70:
UCOM_L_AC72:
  return

UCOM_F_AC73:
  // frame 26
  v24 = 0
  goto UCOM_L_ACA1
UCOM_L_AC80:
  if (!(B[v2] != 255)) goto UCOM_L_ACA8
  W[(v24 * 2) + (&v22)] = W[(B[v2] * 7) + g_player_name_ptr]
  v24 = v24 + 1
UCOM_L_ACA1:
  v2 = L
  if (v24 < 10) goto UCOM_L_AC80
UCOM_L_ACA8:
  t1 = RF_5C91()
  if (v24) goto UCOM_L_ACBA
  t2 = RF_4B44(UCOM_D_C55F)
  return 255
UCOM_L_ACBA:
  t3 = RF_2FB9(UCOM_D_C57D, 1)
  t4 = UCOM_F_AB6F()
  t5 = UCOM_F_ABBF(2, t4, v24, &v22)
  v26 = t5
  if (!(v26 == 255)) goto UCOM_L_ACDE
  return v26
UCOM_L_ACDE:
  return B[v26 + $E99C]

UCOM_F_ACE6:
  // frame 6
  v4 = (a2 * 2) + 2
  t1 = RF_4D41(a0, a1, 10, v4)
  t2 = RF_4F65(a0, a1, 10, v4, 0, 0)
  goto UCOM_L_AD1E
UCOM_L_AD05:
  t3 = RF_2F8F(a0 + 2, ((v2 * 2) + a1) + 2)
  t4 = RF_40DE(W[(v2 * 2) + a3])
UCOM_L_AD1E:
  v2 = L
  if (v2 < a2) goto UCOM_L_AD05
  t5 = RF_3787(UCOM_D_C589, a2, a0 + 1, a1 + 2, 0, 2, a2, 1)
  v6 = t5
  t6 = UCOM_F_AB9A()
  if (!(v6 == (-1))) goto UCOM_L_AD48
  goto UCOM_L_AD4A
UCOM_L_AD48:
UCOM_L_AD4A:
  return

UCOM_F_AD4B:
  // frame 0
  if (!((byte)$F28C == 1)) goto UCOM_L_AD5C
  goto UCOM_L_AD5D
UCOM_L_AD5C:
UCOM_L_AD5D:
  return

UCOM_F_AD5E:
  // frame 8
  t1 = UCOM_F_AD4B()
  v6 = t1
UCOM_L_AD67:
  t2 = RF_47E1(0, 2, UCOM_D_C58A, 2, 2)
  v2 = t2
  if (!(v2 != 255)) goto UCOM_L_AE1C
  if (!(v2 == 1)) goto UCOM_L_ADDC
UCOM_L_AD81:
  t3 = UCOM_F_AC73()
  v4 = t3
  if (!(v4 != 255)) goto UCOM_L_ADCD
  t4 = RF_5FFB(1, v6, 30, 20)
  v8 = t4
  t5 = sys5_tilemap_write(1, 1, v6, 30, 20, 0)
  t6 = sys4_tilemap_clear(3, 0, $2000)
  t7 = RF_2682(1, v6, v4)
  t8 = RF_5F56()
  if (!v8) goto UCOM_L_ADCD
  t9 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_ADCD:
  if (v4 != 255) goto UCOM_L_AD81
  (byte)$F28F = 0
  goto UCOM_L_AE1C
UCOM_L_ADDC:
  t10 = RF_5FFB(1, v6, 30, 20)
  v8 = t10
  t11 = sys5_tilemap_write(1, 1, v6, 30, 20, 0)
  t12 = sys4_tilemap_clear(3, 0, $2000)
  t13 = RF_2682(1, v6, v2)
  t14 = RF_5F56()
  if (!v8) goto UCOM_L_AE1C
  t15 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_AE1C:
  if (v2 != 255) goto UCOM_L_AD67
  return 0

UCOM_F_AE26:
  // frame 27
  t1 = RL_8502(0, &v19)
  v27 = t1
  v14 = &v12
  v21 = &v19
  v23 = (&v19) + v27
  goto UCOM_L_AE6B
UCOM_L_AE47:
  v2 = (B[v21] * 7) + g_ships
  B[v21] = (B[v2 + 6]) & 15
  t2 = RF_40A5(B[v21])
  W[v14] = t2
  v14 = v14 + 2
  v21 = v21 + 1
UCOM_L_AE6B:
  if (v21 < v23) goto UCOM_L_AE47
  t3 = RF_5C91()
  t4 = RF_2FB9(UCOM_D_C59C, 1)
  t5 = UCOM_F_AB6F()
  t6 = UCOM_F_AB82()
  t7 = UCOM_F_ACE6(t6, t5, v27, &v12)
  v25 = t7
  if (!(v25 != 255)) goto UCOM_L_AEA7
  goto UCOM_L_AEAA
UCOM_L_AEA7:
UCOM_L_AEAA:
  return

UCOM_F_AEAB:
  // frame 8
  t1 = UCOM_F_AD4B()
  v4 = t1
UCOM_L_AEB4:
  t2 = UCOM_F_AE26()
  v6 = t2
  if (!(t2 != 255)) goto UCOM_L_AEFF
  t3 = RF_5FFB(1, v4, 30, 20)
  v8 = t3
  t4 = sys5_tilemap_write(1, 1, v4, 30, 20, 0)
  t5 = sys4_tilemap_clear(3, 0, $2000)
  t6 = RF_2401(1, v4, v6)
  t7 = RF_5F56()
  if (!v8) goto UCOM_L_AEFF
  t8 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_AEFF:
  if (v6 != 255) goto UCOM_L_AEB4
  (byte)$F28F = 0
  return 0

UCOM_F_AF0D:
  // frame 12
  v12 = (((B[(a2 * 7) + $EB98]) & 15) * 24) + g_cargo
  v2 = 0
  v8 = v12 + 6
  v10 = (v12 + 6) + 10
  goto UCOM_L_AF39
UCOM_L_AF2E:
  if (!W[v8]) goto UCOM_L_AF36
  v2 = v2 + 1
UCOM_L_AF36:
  v8 = v8 + 2
UCOM_L_AF39:
  if (v8 < v10) goto UCOM_L_AF2E
  if (v2) goto UCOM_L_AF50
  t1 = RF_5C91()
  t2 = RF_4B44(UCOM_D_C5A8)
  goto UCOM_L_AFDA
UCOM_L_AF50:
  v4 = (v2 * 2) + 2
  t3 = RF_4D41(a0, a1, 15, v4)
  t4 = RF_4F65(a0, a1, 15, v4, 2, 0)
  v6 = a1 + 1
  v2 = 0
  goto UCOM_L_AFB1
UCOM_L_AF70:
  if (!W[v8]) goto UCOM_L_AFAC
  t5 = RF_2F8F(a0 + 1, v6)
  t6 = RL_8875(((B[(v12 + v2) + 1]) * 2) + $1B49)
  t7 = RF_40DE(t6)
  t8 = RF_2F8F(a0 + 10, v6)
  t9 = RF_3608(UCOM_D_C5BE, W[((v2 * 2) + v12) + 6])
  v6 = v6 + 2
UCOM_L_AFAC:
  v2 = v2 + 1
UCOM_L_AFB1:
  v8 = L
  if (v8 < v10) goto UCOM_L_AF70
  t10 = RF_5C91()
  t11 = RF_2FB9(UCOM_D_C5C2, 0)
  t12 = RF_40A5(a2)
  t13 = RF_40DE(t12)
  $F18A = $F18A - 1
  t14 = RF_472D()
  t15 = UCOM_F_AB9A()
UCOM_L_AFDA:
  return

UCOM_F_AFDB:
  // frame 2
  v2 = g_fleets
  if (!((B[v2 + 2]) < 7)) goto UCOM_L_AFF1
  goto UCOM_L_AFF2
UCOM_L_AFF1:
UCOM_L_AFF2:
  return

UCOM_F_AFF3:
  // frame 2
UCOM_L_AFF8:
  t1 = UCOM_F_AE26()
  v2 = t1
  if (!(t1 != 255)) goto UCOM_L_B010
  t2 = UCOM_F_AB6F()
  t3 = UCOM_F_AFDB()
  t4 = UCOM_F_AF0D(t3, t2, v2)
UCOM_L_B010:
  if (v2 != 255) goto UCOM_L_AFF8
  return 0

UCOM_F_B01A:
  // frame 8
  v6 = g_player_items
  v2 = 0
  v4 = 0
  goto UCOM_L_B049
UCOM_L_B029:
  if (!((W[((v2 >> 4) * 2) + v6]) & (1 << (v2 & 15)))) goto UCOM_L_B046
  B[a0] = v2
  a0 = a0 + 1
  v4 = v4 + 1
UCOM_L_B046:
  v2 = v2 + 1
UCOM_L_B049:
  if (v2 < 32) goto UCOM_L_B029
  return v4

UCOM_F_B052:
  // frame 0
  if (!((byte)$F28C == 1)) goto UCOM_L_B063
  goto UCOM_L_B064
UCOM_L_B063:
UCOM_L_B064:
  return

UCOM_F_B065:
  // frame 2
  v2 = g_fleets
  if (!((B[v2 + 2]) < 7)) goto UCOM_L_B07B
  goto UCOM_L_B07C
UCOM_L_B07B:
UCOM_L_B07C:
  return

UCOM_F_B07D:
  // frame 50
  t1 = RF_5C91()
  t2 = UCOM_F_B01A(&v50)
  v10 = t2
  if (t2) goto UCOM_L_B09A
  t3 = RF_4B44(UCOM_D_C5DF)
  return 0
UCOM_L_B09A:
  v8 = (v10 - 1) >> 3
  t4 = RF_2FB9(UCOM_D_C5F7, 1)
  if (!v8) goto UCOM_L_B0B3
  t5 = RF_2FB9(UCOM_D_C60D, 1)
UCOM_L_B0B3:
  t6 = RF_2FB9(UCOM_D_C615, 1)
  t7 = UCOM_F_B065()
  v14 = t7
  t8 = UCOM_F_B052()
  v16 = t8
  if (!v8) goto UCOM_L_B0CC
  goto UCOM_L_B0D1
UCOM_L_B0CC:
UCOM_L_B0D1:
  v12 = L
  t9 = RF_4D41(v14, v16, 16, v12)
  t10 = RF_4F65(v14, v16, 16, v12, 2, 0)
  v14 = v14 + 1
  v16 = v16 + 1
  v12 = v12 - 2
  v6 = 0
  v18 = 0
UCOM_L_B0F5:
  v2 = 0
UCOM_L_B0F7:
  v4 = (v6 << 3) + v2
  if (!(v4 < v10)) goto UCOM_L_B128
  t11 = RF_2F8F(v14, (v2 * 2) + v16)
  t12 = RF_40C3(B[v4 + (&v50)])
  t13 = RF_40DE(t12)
  v2 = v2 + 1
  if (v2 < 8) goto UCOM_L_B0F7
UCOM_L_B128:
  t14 = sys16_wait_frames(8)
UCOM_L_B12F:
  t15 = RF_362A(0)
  v18 = t15
  if (!v8) goto UCOM_L_B15A
  if (!(v18 == 128)) goto UCOM_L_B15A
  t16 = sys5_tilemap_write(3, v14, v16, 14, v12, 0)
  v6 = v6 + 1
  if (!(v6 > v8)) goto UCOM_L_B162
  v6 = 0
  goto UCOM_L_B162
UCOM_L_B15A:
  if (!(v18 == $8000)) goto UCOM_L_B12F
UCOM_L_B162:
  if (v18 != $8000) goto UCOM_L_B0F5
  t17 = UCOM_F_AB9A()
  return 0

UCOM_F_B16F:
  // frame 6
  v2 = g_fleets
  if (!((B[v2 + 2]) & 1)) goto UCOM_L_B184
  goto UCOM_L_B185
UCOM_L_B184:
UCOM_L_B185:
  v4 = (((((B[v2] % 3) * 7) + ((B[v2 + 2]) >> 1)) + 5) << 3) + L
  if (!((B[v2 + 3]) & 1)) goto UCOM_L_B1B0
  goto UCOM_L_B1B1
UCOM_L_B1B0:
UCOM_L_B1B1:
  v6 = (((((((B[v2 + 1]) % 3) * 7) + ((B[v2 + 3]) >> 1)) + 4) << 3) - L) + (W[((byte)$F28C * 2) + RD_8EC0])
  t1 = sys9_metasprite_set(14, v4, v6, 1, 2, UCOM_D_C61C, 0, 126)
  return t1

UCOM_F_B1DA:
  // frame 4
  if (!((byte)$EF5F & 1)) goto UCOM_L_B1EB
  goto UCOM_L_B1ED
UCOM_L_B1EB:
UCOM_L_B1ED:
  v2 = ((((((byte)$EF5D % 3) * 7) + ((byte)$EF5F >> 1)) + 5) << 3) + L
  if (!((byte)$EF60 & 1)) goto UCOM_L_B219
  goto UCOM_L_B21B
UCOM_L_B219:
UCOM_L_B21B:
  v4 = (((((((byte)$EF5E % 3) * 7) + ((byte)$EF60 >> 1)) + 4) << 3) + L) + (W[((byte)$F28C * 2) + RD_8EC0])
  t1 = sys19_sprite_commit(14, v2, v4, UCOM_D_C620, 0)
  return t1

UCOM_F_B241:
  // frame 0
  t1 = UCOM_F_B4AC(1)
  t2 = UCOM_F_B16F()
  t3 = RF_2F18()
  t4 = sys8_oam_hide_all()
  t5 = sys4_tilemap_clear(1, 0, 0)
  return t5

UCOM_F_B25F:
  // frame 0
  t1 = sys4_tilemap_clear(3, 0, $2000)
  (byte)$F28F = 2
  return 2

navigation_item_use:
  // frame 4
  if (g_player_items & 4) goto UCOM_L_B28C
  t1 = RF_5C91()
  t2 = RF_4B44(UCOM_D_C622)
  return 0
UCOM_L_B28C:
  t3 = RF_5F56()
  t4 = RF_5FFB(4, 3, 23, 23)
  v4 = t4
  t5 = UCOM_F_B241()
  t6 = RF_5F56()
  t7 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  if (!(v4 == 1)) goto UCOM_L_B2C6
  t8 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_B2C6:
  t9 = RF_5BBB((byte)$EA8E / 5)
  return 0

UCOM_F_B2D2:
  // frame 10
  v2 = (byte)$EF5D / 3
  v4 = (byte)$EF5E / 3
  if ((byte)$F165 != v2) goto UCOM_L_B2F7
  if ((byte)$F166 != v4) goto UCOM_L_B2F7
  goto UCOM_L_B2F8
UCOM_L_B2F7:
UCOM_L_B2F8:
  v10 = L
  if (!v10) goto UCOM_L_B313
  v6 = (byte)$F165
  v8 = (byte)$F166
  t1 = map_open(v2, v4)
  (byte)$F165 = v2
  (byte)$F166 = v4
UCOM_L_B313:
  t2 = UCOM_F_B4AC(0)
  t3 = UCOM_F_B1DA()
  t4 = RF_2F18()
  t5 = sys58_sprites_hide(14, 4)
  if (!v10) goto UCOM_L_B338
  t6 = map_open(v6, v8)
  (byte)$F165 = v6
  (byte)$F166 = v8
UCOM_L_B338:
  return

UCOM_F_B339:
  // frame 2
  t1 = RF_5F56()
  t2 = RF_5FFB(4, 3, 23, 23)
  v2 = t2
  t3 = UCOM_F_B2D2()
  t4 = RF_5F56()
  if (!(v2 == 1)) goto UCOM_L_B368
  t5 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
UCOM_L_B368:
  t6 = RF_5BBB((byte)$EA8E / 5)
  return 0

UCOM_F_B374:
  // frame 0
  t1 = sys5_tilemap_write(3, 2, 27, 30, 4, 0)
  t2 = RF_2F8F(2, 27)
  return t2

UCOM_F_B38E:
  // frame 4
  v4 = 1
UCOM_L_B395:
  if (!((byte)g_princess & 4)) goto UCOM_L_B3A2
  goto UCOM_L_B3A4
UCOM_L_B3A2:
UCOM_L_B3A4:
  t1 = RF_47E1(6, 2, UCOM_D_C63A, 5, 3)
  v2 = t1
  if (!(v2 == 255)) goto UCOM_L_B3BB
  v4 = 0
  goto UCOM_L_B3C6
UCOM_L_B3BB:
  t2 = (*(W[(v2 * 2) + UCOM_D_C646]))()
  if (!t2) goto UCOM_L_B395
UCOM_L_B3C6:
  return v4

UCOM_F_B3C8:
  // frame 0
  if (!(a2 % 2)) goto UCOM_L_B3D7
  goto UCOM_L_B3D9
UCOM_L_B3D7:
UCOM_L_B3D9:
  a0 = ((((a2 / 2) + (a0 * 7)) + 5) << 3) + L
  if (!(a3 % 2)) goto UCOM_L_B3F3
  goto UCOM_L_B3F5
UCOM_L_B3F3:
UCOM_L_B3F5:
  a1 = (((((a3 / 2) + (a1 * 7)) + 4) << 3) + (W[((byte)$F28C * 2) + RD_8EC0])) + L
  t1 = sys19_sprite_commit(a4, a0, a1, UCOM_D_C674, 0)
  return t1

UCOM_F_B420:
  // frame 35
  v8 = 26
  v4 = 0
UCOM_L_B42A:
  v2 = 0
UCOM_L_B42C:
  t1 = RL_87E0(((byte)$F165 * 3) + v2, ((byte)$F166 * 3) + v4, &v29)
  v6 = t1
  if (!v6) goto UCOM_L_B499
  v31 = &v29
  v33 = (&v29) + v6
  goto UCOM_L_B491
UCOM_L_B455:
  if (!((B[B[v31] + g_port_flags]) & 8)) goto UCOM_L_B48C
  v35 = (B[v31] * 19) + $0FD8
  t2 = RL_884E(v35 + 18)
  t3 = RL_884E(v35 + 17)
  t4 = UCOM_F_B3C8(v2, v4, t3, t2, v8)
  v8 = v8 + 1
UCOM_L_B48C:
  v31 = v31 + 1
UCOM_L_B491:
  if (v31 < v33) goto UCOM_L_B455
UCOM_L_B499:
  v2 = v2 + 1
  if (v2 < 3) goto UCOM_L_B42C
  v4 = v4 + 1
  if (v4 < 3) goto UCOM_L_B42A
  return v4 < 3

UCOM_F_B4AC:
  // frame 10
  t1 = RF_4DD8()
  if (!a0) goto UCOM_L_B4C6
  goto UCOM_L_B4D1
UCOM_L_B4C6:
UCOM_L_B4D1:
  t2 = RF_3FC8(g_fh_cbmap0, $1902, 126, $F300, $0422)
  v10 = 0
UCOM_L_B4DA:
  v2 = (v10 * 49) + $EFAB
  v4 = ((W[(v10 * 2) + UCOM_D_C6E0]) * 2) + $F300
  v8 = 0
UCOM_L_B4F2:
  v6 = 0
UCOM_L_B4F4:
  W[v4] = W[(B[v2] * 2) + UCOM_D_C676]
  v2 = v2 + 1
  v4 = v4 + 2
  v6 = v6 + 1
  if (v6 < 7) goto UCOM_L_B4F4
  v4 = v4 + 32
  v8 = v8 + 1
  if (v8 < 7) goto UCOM_L_B4F2
  v10 = v10 + 1
  if (v10 < 9) goto UCOM_L_B4DA
  t3 = sys6_tilemap_copy(1, 4, 3, 23, 23, $F300, 126)
  if (!a0) goto UCOM_L_B53D
  t4 = UCOM_F_B420()
UCOM_L_B53D:
  return

UCOM_F_B53E:
  // frame 12
  v8 = 0
  t1 = UCOM_F_AB82()
  v10 = t1 - 1
  if (!((byte)$F28C == 2)) goto UCOM_L_B556
  goto UCOM_L_B557
UCOM_L_B556:
UCOM_L_B557:
  v12 = L
  t2 = RF_4D41(v10, v12, 10, 8)
  t3 = RF_4F65(v10, v12 - 1, 10, 9, 2, 0)
  v10 = v10 + 1
  t4 = RF_2F8F(v10, v12)
  t5 = RF_2FB9(UCOM_D_C6F2, 0)
  v2 = (byte)$E99A
  v4 = (byte)$E99B
  t6 = RF_4B2A(v10, v12 + 2, 1)
  t7 = RF_4B2A(v10, v12 + 5, 0)
  t8 = RF_2F8F(v10 + 2, v12 + 3)
  t9 = RF_3608(UCOM_D_C700, v2)
  t10 = RF_2F8F(v10 + 2, v12 + 6)
  t11 = RF_3608(UCOM_D_C706, v4)
  t12 = RF_5C91()
  t13 = RF_2FB9(UCOM_D_C70C, 1)
  t14 = RF_2F8F(v10 + 6, v12 + 2)
  t15 = RF_3935(1, 99, 1)
  v6 = t15
  if (!(v6 == (-1))) goto UCOM_L_B5F5
  t16 = RF_2F8F(v10 + 6, v12 + 2)
  t17 = RF_3619(UCOM_D_C736, v2)
  goto UCOM_L_B5FB
UCOM_L_B5F5:
  (byte)$E99A = v6
  v8 = 1
UCOM_L_B5FB:
  t18 = RF_2F8F(v10 + 6, v12 + 5)
  t19 = RF_3935(1, 99, 1)
  v6 = t19
  if (!(v6 == (-1))) goto UCOM_L_B62A
  t20 = RF_2F8F(v10 + 6, v12 + 2)
  t21 = RF_3619(UCOM_D_C73A, v4)
  goto UCOM_L_B630
UCOM_L_B62A:
  (byte)$E99B = v6
  v8 = 1
UCOM_L_B630:
  t22 = sys48_color_math(48, 0, 224)
  t23 = sys39_window_off()
  t24 = sys56_anim_control(3, 255)
  t25 = RF_4D8B()
  return v8

UCOM_F_B651:
  // frame 29
  v2 = (a0 * 10) + g_hero_stats
  v9 = 0
  (byte)v5 = 0
  v4 = v2 + 5
  goto UCOM_L_B687
UCOM_L_B66B:
  if (!(B[v2] > (byte)v5)) goto UCOM_L_B67F
  (byte)v5 = B[v2]
  v7 = v9
UCOM_L_B67F:
  v9 = v9 + 1
  v2 = v2 + 1
UCOM_L_B687:
  if (v2 < v4) goto UCOM_L_B66B
  v13 = (byte)v5
  v4 = g_hero_stats
  v15 = B[v4 + v7]
  v17 = a1
  v27 = (a0 * 7) + g_player_name_ptr
  v29 = g_player_name_ptr
  v19 = (B[v27 + 2]) + (B[v27 + 3])
  v21 = (B[v29 + 2]) + (B[v29 + 3])
  v23 = ((v13 * v19) / 100) + v13
  v25 = ((v15 * v21) / 100) + v25
  if (!(v23 > v25)) goto UCOM_L_B6F3
  goto UCOM_L_B6FB
UCOM_L_B6F3:
UCOM_L_B6FB:
  t1 = RL_8962((B[((a0 - 1) * 2) + $E970]) + (L / R), 100)
  v11 = t1
  B[((a0 - 1) * 2) + $E970] = v11
  t2 = RF_5C5A(a0, 0)
  t3 = RF_4B44(UCOM_D_C73E)
  return t3

UCOM_F_B727:
  // frame 2
  v2 = g_fleets
  if (!((B[v2 + 2]) < 7)) goto UCOM_L_B73D
  goto UCOM_L_B73E
UCOM_L_B73D:
UCOM_L_B73E:
  return

UCOM_F_B73F:
  // frame 12
  v10 = 0
  v12 = (a0 * 7) + g_player_name_ptr
  t1 = UCOM_F_B727()
  v2 = t1
  t2 = RF_4D41(v2, 12, 14, 6)
  t3 = RF_4F65(v2, 12, 14, 6, 2, 0)
  v2 = v2 + 1
  t4 = RF_2F8F(v2, 13)
  t5 = RF_40DE(W[v12])
  t6 = RF_2F8F(v2, 15)
  t7 = RF_3619(UCOM_D_C753, B[((a0 - 1) * 2) + $E970])
  v4 = g_player_gold
  if (!(v4 > 999)) goto UCOM_L_B79C
  goto UCOM_L_B79D
UCOM_L_B79C:
UCOM_L_B79D:
  v8 = L
  t8 = RF_5C3E()
  t9 = RF_3619(UCOM_D_C75F, v4)
  t10 = RF_3C4E(UCOM_D_C768, 1, v8, 1)
  v6 = t10
  if (!(v6 != (-1))) goto UCOM_L_B7E2
  g_player_gold = g_player_gold - v6
  t11 = UCOM_F_B651(a0, v6)
  t12 = RF_2F8F(v2, 15)
  t13 = RF_3619(UCOM_D_C778, B[((a0 - 1) * 2) + $E970])
  v10 = 1
UCOM_L_B7E2:
  t14 = RF_4D8B()
  t15 = sys48_color_math(48, 0, 224)
  t16 = sys39_window_off()
  t17 = sys56_anim_control(3, 255)
  return v10

UCOM_F_B803:
  // frame 4
  if (g_player_gold) goto UCOM_L_B81A
  t1 = RF_5C91()
  t2 = RF_4B44(UCOM_D_C78F)
  return 0
UCOM_L_B81A:
  t3 = UCOM_F_AC73()
  v2 = t3
  v4 = 0
  if (!(v2 != 255)) goto UCOM_L_B82E
  t4 = UCOM_F_B73F(v2)
  v4 = t4
UCOM_L_B82E:
  return v4

UCOM_F_B830:
  // frame 0
  if (!((byte)$F28C == 1)) goto UCOM_L_B841
  goto UCOM_L_B842
UCOM_L_B841:
UCOM_L_B842:
  return

UCOM_F_B843:
  // frame 20
  v14 = W[(a4 * 2) + UCOM_D_C7AD]
  v10 = 1
  v12 = 0
  v8 = 0
  if (!a4) goto UCOM_L_B894
  t1 = RF_2F8F(a0 + 1, a1 + 16)
  t2 = RF_2FB9(UCOM_D_C7BD, 0)
  t3 = RF_2F8F(a0 + 1, a1 + 17)
  t4 = RF_2FB9(UCOM_D_C7C5, 0)
  t5 = RF_2F8F(a0 + 1, a1 + 18)
  goto UCOM_L_B8C9
UCOM_L_B894:
  t6 = RF_2F8F(a0 + 1, a1 + 16)
  t7 = RF_2FB9(UCOM_D_C7D5, 0)
  t8 = RF_2F8F(a0 + 1, a1 + 17)
  t9 = RF_2FB9(UCOM_D_C7DD, 0)
  t10 = RF_2F8F(a0 + 1, a1 + 18)
UCOM_L_B8C9:
  t11 = RF_2FB9(UCOM_D_C7E5, 0)
UCOM_L_B8CD:
  v2 = (v10 * 10) + v12
  v4 = (W[(v10 * 2) + UCOM_D_C7B1]) + a0
  if (!(v10 == 2)) goto UCOM_L_B8E7
  goto UCOM_L_B8E8
UCOM_L_B8E7:
UCOM_L_B8E8:
  v16 = L
  v6 = ((W[(v10 * 2) + UCOM_D_C7B7]) + (v12 * v16)) + a1
  v20 = (W[((byte)$F28C * 2) + RD_8EC0]) + (v6 << 3)
  v18 = v4 << 3
  t12 = RF_3E5A(v14, v18 - 1, v20 - 4, 1, 2, $26CC, g_fh_fdata)
  t13 = RF_3D91(v8, 12)
  t14 = RF_362A(0)
  v8 = t14
  switch (t14) {6 cases}

UCOM_F_B9EA:
  // frame 4
  t1 = sys5_tilemap_write(3, a0, a1 + 1, 11, 9, $2000)
  v2 = a3 + a2
  goto UCOM_L_BA63
UCOM_L_BA05:
  t2 = RF_2F8F(a0, a1 + 1)
  if (B[a3]) goto UCOM_L_BA1A
  t3 = RF_2FB9(UCOM_D_C7ED, 1)
UCOM_L_BA1A:
  t4 = RF_40DE(W[(B[a3] * 7) + g_player_name_ptr])
  if (B[a3]) goto UCOM_L_BA35
  t5 = RF_2FB9(UCOM_D_C7F1, 1)
UCOM_L_BA35:
  if (!($F188 < (a0 + 6))) goto UCOM_L_BA58
  v4 = (a0 + 6) - $F188
  t6 = sys5_tilemap_write(3, $F188, $F18A, v4, 2, $2000)
UCOM_L_BA58:
  a1 = a1 + (2 - a4)
  a3 = a3 + 1
UCOM_L_BA63:
  if (a3 < v2) goto UCOM_L_BA05
  return a3 < v2

UCOM_F_BA6A:
  // frame 0
  t1 = RF_2FB9(a0, 1)
  return t1

UCOM_F_BA76:
  // frame 6
  v2 = a3 + a2
  goto UCOM_L_BAA7
UCOM_L_BA82:
  v6 = (B[(B[a3] * 7) + $EB98]) & 15
  t1 = RF_40A5(v6)
  v4 = t1
  t2 = RF_2F8F(a0, a1)
  t3 = UCOM_F_BA6A(v4)
  a1 = a1 + 2
  a3 = a3 + 1
UCOM_L_BAA7:
  if (a3 < v2) goto UCOM_L_BA82
  return a3 < v2

UCOM_F_BAAE:
  // frame 14
  v12 = 3
  t1 = RF_4DD8()
  t2 = RF_4F65(7, v12 - 1, 23, 25, 2, 0)
  t3 = RF_2F8F(9, v12)
  t4 = RF_2FB9(UCOM_D_C7F5, 0)
  t5 = RF_2F8F(18, v12)
  t6 = RF_2FB9(UCOM_D_C7FA, 0)
  t7 = sys5_tilemap_write(3, 8, v12 + 12, 21, 1, $20F9)
  t8 = RF_2F8F(18, v12 + 12)
  t9 = RF_2FB9(UCOM_D_C804, 0)
  t10 = RF_2F8F(11, v12 + 13)
  t11 = RF_2FB9(UCOM_D_C80C, 1)
  t12 = RF_2F8F(8, v12 + 20)
  t13 = RF_2FB9(UCOM_D_C811, 0)
  t14 = RF_2F8F(8, v12 + 21)
  t15 = RF_2FB9(UCOM_D_C81B, 0)
  t16 = RF_2F8F(8, v12 + 22)
  t17 = RF_2FB9(UCOM_D_C824, 0)
  t18 = UCOM_F_BA76(9, v12 + 1, a0, a1)
  t19 = RF_42D5(&v10)
  v14 = t19
  t20 = UCOM_F_B9EA(18, v12 + 1, v14, &v10, 0)
  t21 = RF_4251(&v10)
  v14 = t21
  t22 = UCOM_F_B9EA(18, v12 + 13, v14, &v10, 1)
  return t22

UCOM_F_BB82:
  // frame 2
  v2 = a0 + a2
  goto UCOM_L_BBA0
UCOM_L_BB8E:
  if (!(B[a0] != B[a1])) goto UCOM_L_BB9A
  return 0
UCOM_L_BB9A:
  a1 = a1 + 1
  a0 = a0 + 1
UCOM_L_BBA0:
  if (a0 < v2) goto UCOM_L_BB8E
  return 1

UCOM_F_BBA8:
  // frame 4
  v2 = (a3 * 7) + g_ships
  v4 = (((B[v2 + 6]) & 15) * 24) + g_cargo
  B[v4] = a0
  v2 = (a2 * 7) + g_ships
  v4 = (((B[v2 + 6]) & 15) * 24) + g_cargo
  B[v4] = a1
  return a1

UCOM_F_BBDE:
  // frame 60
  v42 = 3
  t1 = RF_42D5(&v5)
  v32 = t1
  t2 = RF_4251(&v20)
  v34 = t2
  v36 = v32
  v38 = v34
  t3 = RL_88F4(&v5, &v10, 5)
  t4 = RL_88F4(&v20, &v30, 10)
  v44 = 0
  v54 = 0
UCOM_L_BC22:
  t5 = UCOM_F_B843(7, v42, v36, v38, v44, v54)
  v56 = t5
  switch (v56) {2 cases}

UCOM_F_BD9E:
  // frame 15
  t1 = RF_5C91()
  t2 = RL_8502(0, &v5)
  v9 = t2
  if (!(v9 == 1)) goto UCOM_L_BDC1
  t3 = RF_4B44(UCOM_D_C82D)
  return 0
UCOM_L_BDC1:
  t4 = RF_4B44(UCOM_D_C845)
  t5 = RF_4DD8()
  t6 = RF_5F56()
  t7 = RF_5FFB(7, 2, 23, 25)
  t8 = UCOM_F_BAAE(v9, &v5)
  t9 = UCOM_F_BBDE(v9, &v5)
  v11 = t9
  t10 = RF_5F56()
  t11 = RF_5C91()
  t12 = RF_2FB9(UCOM_D_C85E, 1)
  t13 = RF_4190(0)
  v15 = t13
  t14 = RF_40A5(v15)
  v13 = t14
  t15 = UCOM_F_BA6A(v13)
  t16 = RF_2FB9(UCOM_D_C873, 1)
  t17 = RF_5FDB()
  return v11

UCOM_F_BE1F:
  // frame 10
  v10 = g_cargo
  v2 = 0
  v4 = 0
  v6 = g_ships
  v8 = g_ships + 35
  goto UCOM_L_BE56
UCOM_L_BE35:
  if (!((B[v6 + 6]) & 64)) goto UCOM_L_BE4C
  if (!B[v10]) goto UCOM_L_BE4C
  B[a0] = v2
  a0 = a0 + 1
  v4 = v4 + 1
UCOM_L_BE4C:
  v2 = v2 + 1
  v10 = v10 + 24
  v6 = v6 + 7
UCOM_L_BE56:
  if (v6 < v8) goto UCOM_L_BE35
  return v4

UCOM_F_BE5E:
  // frame 34
  t1 = RF_5C91()
  t2 = UCOM_F_BE1F(&v22)
  v30 = t2
  if (v30) goto UCOM_L_BE7E
  t3 = RF_4B44(UCOM_D_C876)
  return 0
UCOM_L_BE7E:
  v12 = &v10
  v24 = &v22
  v26 = (&v22) + v30
  goto UCOM_L_BEAF
UCOM_L_BE8E:
  v28 = (B[v24] * 7) + g_ships
  B[v24] = (B[v28 + 6]) & 15
  t4 = RF_40A5(B[v24])
  W[v12] = t4
  v12 = v12 + 2
  v24 = v24 + 1
UCOM_L_BEAF:
  if (v24 < v26) goto UCOM_L_BE8E
  t5 = RF_2FB9(UCOM_D_C89B, 1)
  t6 = UCOM_F_AB6F()
  t7 = UCOM_F_AB82()
  t8 = UCOM_F_ACE6(t7, t6, v30, &v10)
  v32 = t8
  v34 = 0
  if (!(v32 != 255)) goto UCOM_L_BF14
  t9 = RF_5C3E()
  t10 = RF_3619(UCOM_D_C8B4, W[(v32 * 2) + (&v10)])
  t11 = RF_3CFF()
  v34 = t11
  if (!v34) goto UCOM_L_BF14
  B[((B[v32 + (&v22)]) * 7) + $EB98] = (B[((B[v32 + (&v22)]) * 7) + $EB98]) & 191
UCOM_L_BF14:
  return v34

UCOM_F_BF17:
  // frame 4
UCOM_L_BF1C:
  t1 = RF_47E1(0, 1, UCOM_D_C8C6, 4, 4)
  v2 = t1
  if (!(v2 == 255)) goto UCOM_L_BF32
  return 0
UCOM_L_BF32:
  t2 = (*(W[(v2 * 2) + UCOM_D_C8CE]))()
  v4 = t2
  if (!v4) goto UCOM_L_BF1C
  return 1

