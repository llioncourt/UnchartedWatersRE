JOURIKU_F_9603:
  // frame 0
  t1 = JOURIKU_F_97BC()
  return t1

JOURIKU_F_960C:
  // frame 0
  if (!((byte)$F28C == 1)) goto JOURIKU_L_961D
  goto JOURIKU_L_961E
JOURIKU_L_961D:
JOURIKU_L_961E:
  return

JOURIKU_F_961F:
  // frame 13
  t1 = RL_8502(0, &v5)
  v13 = t1
  if (!(v13 < 2)) goto JOURIKU_L_9642
  t2 = RF_5C91()
  t3 = RF_4B44(JOURIKU_D_A42A)
  return 0
JOURIKU_L_9642:
  t4 = JOURIKU_F_960C()
  v11 = t4
  t5 = RF_4D41(7, v11, 18, 14)
  t6 = RF_5FFB(7, v11, 18, 14)
  v9 = t6
  t7 = RF_6C1E(0, 9, v11 + 1)
  v7 = t7
  t8 = sys48_color_math(48, 0, 224)
  t9 = sys39_window_off()
  t10 = sys56_anim_control(3, 255)
  t11 = RF_4D8B()
  if (!v9) goto JOURIKU_L_969D
  t12 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
JOURIKU_L_969D:
  return v7

JOURIKU_F_96A0:
  // frame 60
  t1 = sys36_memset_long(126, &v58, 0, 58)
  t2 = RF_5F56()
  t3 = sys58_sprites_hide(18, 4)
  t4 = RF_7B51(&v58)
  t5 = RF_5F56()
  t6 = RF_5BBB((byte)$EA8E / 5)
  return 1

JOURIKU_F_96D7:
  // frame 4
  v4 = 0
JOURIKU_L_96DE:
  t1 = RF_47E1(0, 2, JOURIKU_D_A441, 2, 2)
  v2 = t1
  if (!(v2 != 255)) goto JOURIKU_L_96FB
  t2 = (*(W[(v2 * 2) + JOURIKU_D_A445]))()
  v4 = t2
JOURIKU_L_96FB:
  if (v4 == 1) goto JOURIKU_L_9709
  if (!(v2 == 255)) goto JOURIKU_L_96DE
JOURIKU_L_9709:
  return v4

JOURIKU_F_970B:
  // frame 13
  v11 = 0
  t1 = RL_8502(0, &v5)
  v7 = t1
  goto JOURIKU_L_973D
JOURIKU_L_9722:
  if (!((W[((B[v9 + (&v5)]) * 7) + $EB96]) < 5)) goto JOURIKU_L_973A
  v11 = 1
JOURIKU_L_973A:
JOURIKU_L_973D:
  v9 = L
  if (v9 < v7) goto JOURIKU_L_9722
  return v11

JOURIKU_F_974A:
  // frame 2
  t1 = RF_5C91()
  v2 = g_fleets
  t2 = JOURIKU_F_970B()
  if (!t2) goto JOURIKU_L_9764
  t3 = RF_2FB9(JOURIKU_D_A454, 1)
JOURIKU_L_9764:
  t4 = RF_2FB9(JOURIKU_D_A46F, 1)
  t5 = RF_3CFF()
  if (!t5) goto JOURIKU_L_9793
  t6 = RF_5C5A(0, 0)
  t7 = RF_4B44(JOURIKU_D_A474)
  B[v2 + 15] = (B[v2 + 15]) & 207
  B[v2 + 15] = (B[v2 + 15]) | 1
  return 1
JOURIKU_L_9793:
  return 0

JOURIKU_F_9795:
  // frame 2
  t1 = RF_5C91()
  v2 = g_fleets
  t2 = RF_2FB9(JOURIKU_D_A487, 1)
  t3 = RF_3CFF()
  if (!t3) goto JOURIKU_L_97BA
  B[v2 + 15] = (B[v2 + 15]) | 64
  return 1
JOURIKU_L_97BA:
  return 0

JOURIKU_F_97BC:
  // frame 4
  t1 = RF_5F1C()
  t2 = RF_5F0F()
JOURIKU_L_97C7:
  t3 = RF_47E1(5, 2, JOURIKU_D_A4AB, 5, 3)
  v2 = t3
  if (v2 == 255) goto JOURIKU_L_97E6
  t4 = (*(W[(v2 * 2) + JOURIKU_D_A4B5]))()
  if (!t4) goto JOURIKU_L_97C7
JOURIKU_L_97E6:
  t5 = RF_5FDB()
  if ((byte)(g_fleets+15) & 32) goto JOURIKU_L_982C
  if (!((byte)(g_fleets+3) < 7)) goto JOURIKU_L_97FE
  goto JOURIKU_L_97FF
JOURIKU_L_97FE:
JOURIKU_L_97FF:
  (byte)$F28C = L
  if (!((byte)$F28C == 1)) goto JOURIKU_L_980E
  goto JOURIKU_L_9811
JOURIKU_L_980E:
JOURIKU_L_9811:
  t6 = RF_530E(0, L)
  t7 = sys16_wait_frames(1)
  t8 = sys58_sprites_hide(18, 4)
  t9 = RF_57CD(0)
JOURIKU_L_982C:
  return

JOURIKU_F_982D:
  // frame 2
  v2 = 0
  t1 = RF_43F6(a0)
  if (!((B[(a0 * 7) + g_ships]) < t1)) goto JOURIKU_L_9849
  v2 = 1
JOURIKU_L_9849:
  t2 = RF_4439(a0)
  if (!((B[(a0 * 7) + $EB93]) < t2)) goto JOURIKU_L_985E
  v2 = 1
JOURIKU_L_985E:
  t3 = RF_44AA(a0)
  if (!((B[(a0 * 7) + $EB94]) < t3)) goto JOURIKU_L_9873
  v2 = 1
JOURIKU_L_9873:
  return v2

JOURIKU_F_9875:
  // frame 0
  B[(a0 * 7) + g_ships] = (B[(a0 * 7) + g_ships]) + (a1 * 5)
  t1 = RF_43F6(a0)
  if (!((B[(a0 * 7) + g_ships]) > t1)) goto JOURIKU_L_98AB
  t2 = RF_43F6(a0)
  B[(a0 * 7) + g_ships] = t2
JOURIKU_L_98AB:
  return

JOURIKU_F_98AC:
  // frame 0
  B[(a0 * 7) + $EB93] = (B[(a0 * 7) + $EB93]) + (a1 * 5)
  t1 = RF_4439(a0)
  if (!((B[(a0 * 7) + $EB93]) > t1)) goto JOURIKU_L_98E2
  t2 = RF_4439(a0)
  B[(a0 * 7) + $EB93] = t2
JOURIKU_L_98E2:
  return

JOURIKU_F_98E3:
  // frame 0
  B[(a0 * 7) + $EB94] = (B[(a0 * 7) + $EB94]) + (a1 * 5)
  t1 = RF_44AA(a0)
  if (!((B[(a0 * 7) + $EB94]) > t1)) goto JOURIKU_L_9919
  t2 = RF_44AA(a0)
  B[(a0 * 7) + $EB94] = t2
JOURIKU_L_9919:
  return

JOURIKU_F_991A:
  // frame 4
  goto JOURIKU_L_9956
JOURIKU_L_9923:
  v4 = ((B[a1 + v2]) * 24) + g_cargo
  if (!((W[v4 + 20]) < a2)) goto JOURIKU_L_9949
  a2 = a2 - (W[v4 + 20])
  W[v4 + 20] = 0
  goto JOURIKU_L_9954
JOURIKU_L_9949:
  W[v4 + 20] = (W[v4 + 20]) - a2
  a2 = 0
JOURIKU_L_9954:
JOURIKU_L_9956:
  v2 = L
  if (!(v2 < a0)) goto JOURIKU_L_9961
  if (a2) goto JOURIKU_L_9923
JOURIKU_L_9961:
  return

JOURIKU_F_9962:
  // frame 0
  return B[(a0 * 7) + g_ships]

JOURIKU_F_9970:
  // frame 0
  return B[(a0 * 7) + $EB93]

JOURIKU_F_997E:
  // frame 0
  return B[(a0 * 7) + $EB94]

JOURIKU_F_998C:
  // frame 0
  t1 = RF_43F6(a0)
  return t1

JOURIKU_F_9997:
  // frame 0
  t1 = RF_4439(a0)
  return t1

JOURIKU_F_99A2:
  // frame 0
  t1 = RF_44AA(a0)
  return t1

JOURIKU_F_99AD:
  // frame 16
  (byte)v15 = 225
  (byte)v14 = 3
  if (!a3) goto JOURIKU_L_99C4
  goto JOURIKU_L_99C5
JOURIKU_L_99C4:
JOURIKU_L_99C5:
  v8 = (($F300 - a1) / L) + 1
  v10 = 0
  v12 = a0 / a5
  t1 = sys8_oam_hide_all()
JOURIKU_L_99DB:
  (byte)v16 = (W[((byte)$F28C * 2) + RD_8EC0]) + (($F302 - 1) << 3)
  (byte)v13 = ($F300 + 1) << 3
  t2 = sys19_sprite_commit(0, (byte)v13, (byte)v16, $30E4, 0)
  if (!a4) goto JOURIKU_L_9A16
  goto JOURIKU_L_9A17
JOURIKU_L_9A16:
JOURIKU_L_9A17:
  if (!a3) goto JOURIKU_L_9A28
  goto JOURIKU_L_9A29
JOURIKU_L_9A28:
JOURIKU_L_9A29:
  v2 = ((($F300 - a1) / L) * a5) + (($F302 - a2) / L)
  t3 = RF_3D91(v10, 12)
  t4 = RF_362A(0)
  v10 = t4
  switch (t4) {6 cases}

JOURIKU_F_9B16:
  // frame 0
  if (!((byte)$F28C == 1)) goto JOURIKU_L_9B2D
  goto JOURIKU_L_9B2F
JOURIKU_L_9B2D:
JOURIKU_L_9B2F:
  t1 = RF_604A(3, 8, L + 1, 16, 6, $2000)
  if (!((byte)$F28C == 1)) goto JOURIKU_L_9B43
  goto JOURIKU_L_9B45
JOURIKU_L_9B43:
JOURIKU_L_9B45:
  t2 = RF_2F8F(8, L + 1)
  t3 = RF_2FB9(JOURIKU_D_A4DE, 1)
  return t3

JOURIKU_F_9B55:
  // frame 0
  t1 = sys8_oam_hide_all()
  t2 = JOURIKU_F_9B16()
  t3 = RF_2FB9(JOURIKU_D_A4E5, 1)
  t4 = RF_3CFF()
  return t4

JOURIKU_F_9B6E:
  // frame 4
  v2 = B[(a1 * 7) + g_ships]
  t1 = RF_43F6(a1)
  v4 = t1
  t2 = RF_2F8F(9, a0)
  if (!(v2 < v4)) goto JOURIKU_L_9B9A
  t3 = RF_3619(JOURIKU_D_A4F0, v2, v4)
  goto JOURIKU_L_9BA2
JOURIKU_L_9B9A:
  t4 = RF_2FB9(JOURIKU_D_A4F8, 1)
JOURIKU_L_9BA2:
  return

JOURIKU_F_9BA3:
  // frame 4
  v2 = B[(a1 * 7) + $EB93]
  t1 = RF_4439(a1)
  v4 = t1
  t2 = RF_2F8F(16, a0)
  if (!(v2 < v4)) goto JOURIKU_L_9BD0
  t3 = RF_3619(JOURIKU_D_A500, v2, v4)
  goto JOURIKU_L_9BD8
JOURIKU_L_9BD0:
  t4 = RF_2FB9(JOURIKU_D_A508, 1)
JOURIKU_L_9BD8:
  return

JOURIKU_F_9BD9:
  // frame 4
  v2 = B[(a1 * 7) + $EB94]
  t1 = RF_44AA(a1)
  v4 = t1
  t2 = RF_2F8F(23, a0)
  if (!(v2 < v4)) goto JOURIKU_L_9C06
  t3 = RF_3619(JOURIKU_D_A510, v2, v4)
  goto JOURIKU_L_9C0E
JOURIKU_L_9C06:
  t4 = RF_2FB9(JOURIKU_D_A518, 1)
JOURIKU_L_9C0E:
  return

JOURIKU_F_9C0F:
  // frame 0
  t1 = RF_2FB9(JOURIKU_D_A520, 1)
  t2 = JOURIKU_F_9B6E(a0, a1)
  t3 = JOURIKU_F_9BA3(a0, a1)
  t4 = JOURIKU_F_9BD9(a0, a1)
  return t4

JOURIKU_F_9C2F:
  // frame 0
  t1 = RF_2F8F(20, a0 + 13)
  t2 = RF_3619(JOURIKU_D_A52A, a1)
  return t2

JOURIKU_F_9C46:
  // frame 0
  t1 = RF_2FB9(JOURIKU_D_A531, 0)
  t2 = RF_4F65(1, a0, 30, 17, 0, 0)
  t3 = RF_2F8F(3, a0 + 1)
  t4 = RF_2FB9(JOURIKU_D_A538, 0)
  t5 = RF_2F8F(10, a0 + 1)
  t6 = RF_2FB9(JOURIKU_D_A53D, 0)
  t7 = RF_2F8F(17, a0 + 1)
  t8 = RF_2FB9(JOURIKU_D_A542, 0)
  t9 = RF_2F8F(23, a0 + 1)
  t10 = RF_2FB9(JOURIKU_D_A547, 0)
  t11 = RF_4B2A(18, a0 + 14, 2)
  t12 = JOURIKU_F_9C2F(a0 + 1, a1)
  t13 = RF_2F8F(24, a0 + 14)
  t14 = RF_2FB9(JOURIKU_D_A54E, 1)
  return t14

JOURIKU_F_9CC5:
  // frame 18
  v18 = 1
  $F300 = 9
  $F302 = a0 + 2
  v14 = a2 * 3
JOURIKU_L_9CD9:
  if (v10 != (-1)) goto JOURIKU_L_9CE4
  t1 = JOURIKU_F_9B55()
  return t1
JOURIKU_L_9CE4:
  v16 = 1
  goto JOURIKU_L_9CFD
JOURIKU_L_9CEA:
  t2 = JOURIKU_F_982D(B[a1 + v2])
  if (!t2) goto JOURIKU_L_9CFB
  v16 = 0
  goto JOURIKU_L_9D04
JOURIKU_L_9CFB:
JOURIKU_L_9CFD:
  v2 = L
  if (v2 < a2) goto JOURIKU_L_9CEA
JOURIKU_L_9D04:
  if (!v16) goto JOURIKU_L_9D0C
  t3 = JOURIKU_F_9B55()
  return t3
JOURIKU_L_9D0C:
  if (!v18) goto JOURIKU_L_9D18
  t4 = RF_5C91()
  v18 = 0
  goto JOURIKU_L_9D1B
JOURIKU_L_9D18:
  t5 = JOURIKU_F_9B16()
JOURIKU_L_9D1B:
  t6 = RF_2FB9(JOURIKU_D_A567, 1)
  t7 = JOURIKU_F_99AD(v14, 9, a0 + 2, 7, 2, a2)
  v10 = t7
  if (!(v10 < v14)) goto JOURIKU_L_9CD9
  v4 = B[(v10 % a2) + a1]
  v6 = v10 / a2
  t8 = JOURIKU_F_982D(v4)
  if (t8) goto JOURIKU_L_9D56
  t9 = JOURIKU_F_9B16()
  t10 = RF_4B44(JOURIKU_D_A57E)
  goto JOURIKU_L_9CD9
JOURIKU_L_9D56:
  t11 = (*(W[(v6 * 2) + JOURIKU_D_A55B]))(2)
  t12 = (*(W[(v6 * 2) + JOURIKU_D_A561]))(2)
  if (!(t12 > v4)) goto JOURIKU_L_9CD9
  t13 = (*(W[(v6 * 2) + JOURIKU_D_A55B]))(2)
  t14 = (*(W[(v6 * 2) + JOURIKU_D_A561]))(2)
  v12 = (t14 - v4) / 5
  t15 = (*(W[(v6 * 2) + JOURIKU_D_A55B]))(2)
  t16 = (*(W[(v6 * 2) + JOURIKU_D_A561]))(2)
  if (!((t16 - v4) % 5)) goto JOURIKU_L_9DAA
  goto JOURIKU_L_9DAB
JOURIKU_L_9DAA:
JOURIKU_L_9DAB:
  v12 = v12 + L
  if (!(v12 > W[a3])) goto JOURIKU_L_9DBB
  v12 = W[a3]
JOURIKU_L_9DBB:
  t17 = JOURIKU_F_9B16()
  t18 = RF_3C4E(JOURIKU_D_A59D, 0, v12)
  v8 = t18
  if (!(v8 != (-1))) goto JOURIKU_L_9CD9
  t19 = (*(W[(v6 * 2) + JOURIKU_D_A555]))(4)
  t20 = JOURIKU_F_991A(a2, a1, v8)
  W[a3] = W[a3] - v8
  t21 = JOURIKU_F_9C2F(a0, W[a3])
  t22 = JOURIKU_F_9C0F($F302 - 1, v4)
  if (W[a3]) goto JOURIKU_L_9CD9
  t23 = JOURIKU_F_9B16()
  t24 = RF_4B44(JOURIKU_D_A5B2)
  t25 = JOURIKU_F_9B55()
  return t25

JOURIKU_F_9E0D:
  // frame 8
  goto JOURIKU_L_9E73
JOURIKU_L_9E16:
  v4 = B[a0 + v2]
  v6 = (v4 * 7) + g_ships
  if (!(B[v6] != (B[(v2 * 3) + a1]))) goto JOURIKU_L_9E33
  return 1
JOURIKU_L_9E33:
  if (!((B[v6 + 1]) != (B[((v2 * 3) + a1) + 1]))) goto JOURIKU_L_9E45
  return 1
JOURIKU_L_9E45:
  if (!((B[v6 + 2]) != (B[((v2 * 3) + a1) + 2]))) goto JOURIKU_L_9E57
  return 1
JOURIKU_L_9E57:
  v8 = (v4 * 24) + g_cargo
  if (!((W[(v2 * 2) + a2]) != (W[v8 + 20]))) goto JOURIKU_L_9E71
  return 1
JOURIKU_L_9E71:
JOURIKU_L_9E73:
  v2 = L
  if (v2 < a3) goto JOURIKU_L_9E16
  return 0

JOURIKU_F_9E7C:
  // frame 0
  if (!((byte)$F28C == 1)) goto JOURIKU_L_9E8D
  goto JOURIKU_L_9E8E
JOURIKU_L_9E8D:
JOURIKU_L_9E8E:
  return

JOURIKU_F_9E8F:
  // frame 56
  t1 = JOURIKU_F_9E7C()
  v6 = t1
  t2 = RF_5FFB(1, v6, 30, 16)
  t3 = JOURIKU_F_9C46(v6, a0)
  v6 = v6 + 1
  v2 = 0
  v4 = 0
  goto JOURIKU_L_9F56
JOURIKU_L_9EB1:
  v52 = (v2 * 7) + g_ships
  if (!((B[v52 + 6]) & 64)) goto JOURIKU_L_9F53
  B[v4 + (&v23)] = v2
  B[(v4 * 3) + (&v38)] = B[v52]
  B[(v4 * 3) + (&v37)] = B[v52 + 1]
  B[(v4 * 3) + (&v36)] = B[v52 + 2]
  v54 = (v2 * 24) + g_cargo
  W[(v4 * 2) + (&v48)] = W[v54 + 20]
  t4 = RF_40A5((B[v52 + 6]) & 15)
  v56 = t4
  W[(v4 * 2) + (&v18)] = v56
  t5 = RF_2F8F(2, ((v4 * 2) + v6) + 2)
  t6 = RF_40DE(W[(v4 * 2) + (&v18)])
  t7 = JOURIKU_F_9C0F(((v4 * 2) + v6) + 1, v2)
  v4 = v4 + 1
JOURIKU_L_9F53:
  v2 = v2 + 1
JOURIKU_L_9F56:
  if (v2 < 5) goto JOURIKU_L_9EB1
  t8 = JOURIKU_F_9CC5(v6, &v23, v4, &a0)
  v50 = t8
  if (!v50) goto JOURIKU_L_9F84
  t9 = JOURIKU_F_9E0D(&v23, &v38, &v48, v4)
  v50 = t9
JOURIKU_L_9F84:
  if (v50) goto JOURIKU_L_A000
  goto JOURIKU_L_9FF0
JOURIKU_L_9F8D:
  v8 = B[v2 + (&v23)]
  v52 = (v8 * 7) + g_ships
  B[v52] = B[(v2 * 3) + (&v38)]
  B[v52 + 1] = B[(v2 * 3) + (&v37)]
  B[v52 + 2] = B[(v2 * 3) + (&v36)]
  v54 = (v8 * 24) + g_cargo
  W[v54 + 20] = W[(v2 * 2) + (&v48)]
  t10 = JOURIKU_F_9C0F(((v2 * 2) + v6) + 1, v8)
JOURIKU_L_9FF0:
  v2 = L
  if (v2 < v4) goto JOURIKU_L_9F8D
  t11 = JOURIKU_F_9B16()
  goto JOURIKU_L_A006
JOURIKU_L_A000:
  t12 = JOURIKU_F_9B16()
JOURIKU_L_A006:
  t13 = RF_4B44(JOURIKU_D_A5DC)
  t14 = RF_5F56()
  return v50

JOURIKU_F_A010:
  // frame 6
  v2 = 1
  v6 = 0
  goto JOURIKU_L_A044
JOURIKU_L_A01D:
  if (!((B[(v4 * 7) + $EB98]) & 64)) goto JOURIKU_L_A042
  v6 = v6 + (W[(v4 * 24) + $E9BA])
  t1 = JOURIKU_F_982D(v4)
  if (!t1) goto JOURIKU_L_A042
  v2 = 0
JOURIKU_L_A042:
JOURIKU_L_A044:
  v4 = L
  if (v4 < 5) goto JOURIKU_L_A01D
  if (!v2) goto JOURIKU_L_A05B
  t2 = RF_5C91()
  t3 = RF_4B44(JOURIKU_D_A5F1)
  return 0
JOURIKU_L_A05B:
  if (v6) goto JOURIKU_L_A06B
  t4 = RF_5C91()
  t5 = RF_4B44(JOURIKU_D_A609)
  return 0
JOURIKU_L_A06B:
  t6 = JOURIKU_F_9E8F(v6)
  v2 = t6
  return v2

JOURIKU_F_A073:
  // frame 8
  v4 = (byte)(g_zone_attr+2) & 7
  t1 = RF_5C91()
  if (((byte)$E447 / 5) < v4) goto JOURIKU_L_A091
  if (!(v4 >= 5)) goto JOURIKU_L_A099
JOURIKU_L_A091:
  t2 = RF_4B44(JOURIKU_D_A628)
  return t2
JOURIKU_L_A099:
  t3 = RF_4B44(JOURIKU_D_A644)
  v2 = 0
  goto JOURIKU_L_A0BA
JOURIKU_L_A0A6:
  v2 = v2 + ((W[((B[a1 + v6]) * 24) + $E9B8]) / 10)
JOURIKU_L_A0BA:
  v6 = L
  if (v6 < a0) goto JOURIKU_L_A0A6
  t4 = JOURIKU_F_960C()
  v8 = t4
  t5 = RF_5FFB(1, v8, 30, 14)
  t6 = RF_4D41(1, v8, 30, 14)
  t7 = RF_6995(a0, a1, 1, v8)
  t8 = RF_4D8B()
  t9 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  return t9

JOURIKU_F_A0F3:
  // frame 17
  v15 = 0
  v13 = 0
  v2 = 0
  v6 = 0
  goto JOURIKU_L_A143
JOURIKU_L_A103:
  v17 = (v2 * 7) + g_ships
  if (!((B[v17 + 6]) & 64)) goto JOURIKU_L_A140
  B[v6 + (&v11)] = v2
  v6 = v6 + 1
  t1 = RF_40A5(v2)
  t2 = RL_8898(t1 + 18)
  v13 = v13 + t2
  t3 = RF_4565(v2)
  v15 = v15 + t3
JOURIKU_L_A140:
  v2 = v2 + 1
JOURIKU_L_A143:
  if (v2 < 5) goto JOURIKU_L_A103
  t4 = RF_5C91()
  if (!(v15 == v13)) goto JOURIKU_L_A15D
  t5 = RF_4B44(JOURIKU_D_A65D)
  return 0
JOURIKU_L_A15D:
  t6 = RF_430C()
  v2 = t6
  if (v2 == 255) goto JOURIKU_L_A17D
  t7 = rand(100)
  if (!(t7 >= (B[(v2 * 10) + $EAC3]))) goto JOURIKU_L_A184
JOURIKU_L_A17D:
  goto JOURIKU_L_A1A8
JOURIKU_L_A184:
  v4 = (byte)(g_zone_attr+2) & 7
  if (!(v4 < 2)) goto JOURIKU_L_A197
  goto JOURIKU_L_A1A8
JOURIKU_L_A197:
  if (!(v4 < 5)) goto JOURIKU_L_A1A4
  goto JOURIKU_L_A1A8
JOURIKU_L_A1A4:
JOURIKU_L_A1A8:
  t8 = RF_2FB9(JOURIKU_D_A6CF, 1)
  t9 = RF_2FB9(JOURIKU_D_A6ED, 1)
  t10 = RF_3CFF()
  if (!t10) goto JOURIKU_L_A1C5
  t11 = JOURIKU_F_A073(v6, &v11)
  return 1
JOURIKU_L_A1C5:
  return 0

JOURIKU_F_A1C7:
  // frame 10
  v2 = a1 / 18
  if (!v2) goto JOURIKU_L_A1DD
  goto JOURIKU_L_A1E5
JOURIKU_L_A1DD:
JOURIKU_L_A1E5:
  v6 = L
  v10 = (a0 + 38) % 72
  v4 = v10 / 36
  if (!v4) goto JOURIKU_L_A1FD
  goto JOURIKU_L_A1FE
JOURIKU_L_A1FD:
JOURIKU_L_A1FE:
  v8 = L * 5
  t1 = RF_5C3E()
  t2 = RF_3619(JOURIKU_D_A705, W[(v2 * 2) + JOURIKU_D_A6F5], v6, W[(v4 * 2) + JOURIKU_D_A6F9], v8)
  return 1

JOURIKU_F_A21F:
  // frame 42
  v38 = g_fleets
  if (!((byte)g_princess & 4)) goto JOURIKU_L_A3EA
  v6 = ((byte)$F165 * 3) + (byte)$F167
  v8 = ((byte)$F166 * 3) + (byte)$F168
  v2 = (byte)$EF5D
  v4 = (byte)$EF5E
  if (!(v2 == v6)) goto JOURIKU_L_A33B
  if (!(v4 == v8)) goto JOURIKU_L_A33B
  if (!((B[v38 + 2]) == (byte)$EF5F)) goto JOURIKU_L_A315
  if (!((B[v38 + 3]) == (byte)$EF60)) goto JOURIKU_L_A315
  t1 = RF_28CC(2)
  t2 = RF_21CA(26)
  t3 = RF_2FB9(JOURIKU_D_A75D, 0)
  t4 = RF_40DE(g_player_name_ptr)
  t5 = RF_2FB9(JOURIKU_D_A767, 0)
  t6 = RF_40C3((byte)(g_king_mission+3))
  t7 = RF_40DE(t6)
  t8 = RF_2FB9(JOURIKU_D_A775, 0)
  t9 = RF_2F18()
  t10 = RF_4F48(1)
  t11 = RF_3D7C()
  t12 = RF_7C5A()
  t13 = sys11_vram_load_tiles(119, 72, ((((byte)$F164 * 2) * 2) * 576) + $8000, 16, 2)
  t14 = RF_5F56()
  t15 = RF_5BBB((byte)$EA8E / 5)
  t16 = RF_4F2A(1)
  W[(((byte)(g_king_mission+3) >> 4) * 2) + g_player_items] = (W[(((byte)(g_king_mission+3) >> 4) * 2) + g_player_items]) | (1 << ((byte)(g_king_mission+3) & 15))
  (byte)g_princess = (byte)g_princess | 2
  (byte)g_princess = (byte)g_princess ^ 4
  goto JOURIKU_L_A3F4
JOURIKU_L_A315:
  t17 = RF_5C91()
  t18 = RF_2FB9(JOURIKU_D_A777, 1)
  t19 = RF_472D()
  t20 = RF_5C91()
  t21 = RF_2FB9(JOURIKU_D_A79F, 0)
  $F18A = $F18A - 1
JOURIKU_L_A335:
  t22 = RF_472D()
  goto JOURIKU_L_A3F4
JOURIKU_L_A33B:
  t23 = RF_4221(&v30)
  v10 = t23
  if (!v10) goto JOURIKU_L_A357
  t24 = rand(v10)
  goto JOURIKU_L_A35A
JOURIKU_L_A357:
JOURIKU_L_A35A:
  v32 = L
  t25 = RF_5C5A(v32, 0)
  t26 = RF_2FB9(JOURIKU_D_A7D4, 1)
  t27 = RF_472D()
  if (!(v32 != 255)) goto JOURIKU_L_A397
  t28 = rand(30)
  if (!((t28 + 70) <= (B[(v32 * 10) + $EAC3]))) goto JOURIKU_L_A397
  t29 = JOURIKU_F_A1C7(v2, v4)
  t30 = RF_472D()
JOURIKU_L_A397:
  v42 = 31 - v6
  v6 = v6 + v42
  v40 = v2 + v42
  if (!(v40 < 0)) goto JOURIKU_L_A3B8
  v40 = (v2 + v42) + 71
JOURIKU_L_A3B8:
  v2 = v40
  t31 = RF_5C3E()
  t32 = RL_892B(v4 - v8)
  t33 = RL_892B(v2 - v6)
  t34 = RF_3619(JOURIKU_D_A7FB, W[((B[(((t33 + 1) * 3) + t32) + JOURIKU_D_A741]) * 2) + JOURIKU_D_A730])
  goto JOURIKU_L_A335
JOURIKU_L_A3EA:
  t35 = RF_5C91()
  t36 = RF_4B44(JOURIKU_D_A814)
JOURIKU_L_A3F4:
  return 0

JOURIKU_F_A3F6:
  // frame 4
  v4 = 0
JOURIKU_L_A3FD:
  t1 = RF_47E1(0, 2, JOURIKU_D_A830, 2, 2)
  v2 = t1
  if (!(v2 != 255)) goto JOURIKU_L_A41A
  t2 = (*(W[(v2 * 2) + JOURIKU_D_A834]))()
  v4 = t2
JOURIKU_L_A41A:
  if (v4 == 1) goto JOURIKU_L_A428
  if (!(v2 == 255)) goto JOURIKU_L_A3FD
JOURIKU_L_A428:
  return v4
JOURIKU_D_A42A:

