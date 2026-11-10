CMINATO_F_9603:
  // frame 2
  v2 = (byte)$F16A
  t1 = CMINATO_F_9612(v2)
  return t1

CMINATO_F_9612:
  // frame 6
  v4 = (a0 << 4) + g_fleets
  v6 = ((a0 - 1) * 51) + g_captains
  if (!(B[v6 + 4])) goto CMINATO_L_965C
  t1 = $8747(B[v4], B[v4 + 1], B[v4 + 2], B[v4 + 3])
  v2 = t1
  if (!((B[v6 + 5]) == v2)) goto CMINATO_L_965C
  t2 = (*(W[(((B[v6 + 4]) - 1) * 2) + CMINATO_D_A1B4]))(4)
  goto CMINATO_L_9661
CMINATO_L_965C:
  t3 = CMINATO_F_9662(a0)
CMINATO_L_9661:
  return

CMINATO_F_9662:
  // frame 8
  v8 = ((a0 - 1) * 51) + g_captains
  W[v8 + 7] = 0
  v2 = (a0 << 4) + g_fleets
  t1 = rand(16)
  v4 = t1 + 15
  t2 = RL_884E((v4 * 2) + $1825)
  v6 = t2
  B[v2 + 15] = (B[v2 + 15]) & 253
  t3 = rand(6)
  if (!(t3 > v6)) goto CMINATO_L_96C9
  W[v2 + 11] = 0
  W[v2 + 13] = (W[v2 + 13]) & $8000
  W[(((v4 >> 4) * 2) + v2) + 11] = (W[(((v4 >> 4) * 2) + v2) + 11]) | (1 << (v4 & 15))
CMINATO_L_96C9:
  return

rival_merchant_trade:
  // frame 43
  v12 = (a0 << 4) + g_fleets
  if (!(a1 < 50)) goto CMINATO_L_98C5
  v14 = (a1 * 14) + g_ports
  t1 = RL_884E((a1 * 5) + $150B)
  v39 = t1
  if (!(v39 != 255)) goto CMINATO_L_9803
  t2 = RL_8502(a0, &v25)
  v33 = t2
  v4 = 0
  v29 = &v25
  v31 = (&v25) + v33
  goto CMINATO_L_973D
CMINATO_L_9717:
  v16 = (B[v29] * 7) + g_ships
  t3 = RF_40A5((B[v16 + 6]) & 15)
  v18 = t3
  t4 = RL_8898(v18 + 18)
  v4 = v4 + t4
  v29 = v29 + 1
CMINATO_L_973D:
  if (v29 < v31) goto CMINATO_L_9717
  v6 = ((W[v14 + 12]) * ((B[v14 + 11]) + 50)) / 100
  v8 = (((W[v12 + 9]) + 1) / 3) / v6
  t5 = RL_8962(v8, v4)
  v8 = t5
  W[v12 + 9] = (W[v12 + 9]) - (v8 * v6)
  t6 = rand(3)
  t7 = RL_8962((t6 + (B[v14 + 11])) + 4, 100)
  B[v14 + 11] = t7
  t8 = RL_8962((W[v14 + 12]) + 3, 600)
  W[v14 + 12] = t8
  v41 = (a0 - 1) * 5
  v4 = 0
  goto CMINATO_L_97F9
CMINATO_L_97B2:
  v16 = (B[v29] * 7) + g_ships
  t9 = RF_40A5((B[v16 + 6]) & 15)
  v18 = t9
  v20 = (v41 * 3) + $E302
  t10 = RL_8898(v18 + 18)
  t11 = RL_8962(v8, t10)
  v10 = t11
  W[v20 + 1] = v10
  v8 = v8 - v10
  B[v20] = v39
  if (!v8) goto CMINATO_L_9803
  v41 = v41 + 1
CMINATO_L_97F9:
  v29 = L
  if (v29 < v31) goto CMINATO_L_97B2
CMINATO_L_9803:
  W[v12 + 9] = (W[v12 + 9]) - ((W[v12 + 9]) >> 1)
  if (!((W[v14 + 2]) <= (W[v14 + 6]))) goto CMINATO_L_9835
  t12 = RL_8962($EA60 - (W[v14 + 2]), W[v12 + 9])
  v2 = t12
  goto CMINATO_L_984B
CMINATO_L_9835:
  t13 = RL_8962($EA60 - (W[v14 + 6]), W[v12 + 9])
  v2 = t13
CMINATO_L_984B:
  W[L] = W[L] + v2
  v41 = (a0 - 1) / 5
  t14 = rand(3)
  t15 = port_owner_update(a1, v41, t14 + ((W[v12 + 9]) / 300))
  v37 = (B[a1 + g_port_flags]) & 3
  if (!v37) goto CMINATO_L_98C5
  v43 = v37 - 1
  if (!(v41 != v43)) goto CMINATO_L_98C5
  v27 = g_relations
  t16 = rand(3)
  t17 = RL_8962(B[(W[((v41 << 3) + (v43 * 2)) + CMINATO_D_A1BC]) + v27], t16 + 4)
  B[(W[((v41 << 3) + (v43 * 2)) + CMINATO_D_A1BC]) + v27] = (B[(W[((v41 << 3) + (v43 * 2)) + CMINATO_D_A1BC]) + v27]) - t17
CMINATO_L_98C5:
  t18 = RF_46C6(a0)
  return t18

CMINATO_F_98CB:
  // frame 43
  v12 = (a0 << 4) + g_fleets
  if (!(a1 < 50)) goto CMINATO_L_99E5
  v14 = (a1 * 14) + g_ports
  v22 = (a1 * 5) + $150A
  t1 = RL_884E(v22 + 1)
  v41 = t1
  if (!(t1 != 255)) goto CMINATO_L_99B4
  t2 = RL_8502(a0, &v27)
  v35 = t2
  v4 = 0
  v31 = &v27
  v33 = (&v27) + v35
  goto CMINATO_L_993A
CMINATO_L_9919:
  t3 = RF_40A5((B[(B[v31] * 7) + $EB98]) & 15)
  t4 = RL_8898(t3 + 18)
  v4 = v4 + t4
  v31 = v31 + 1
CMINATO_L_993A:
  if (v31 < v33) goto CMINATO_L_9919
  t5 = RL_884E(v22 + 2)
  v8 = W[v14] / (t5 + 1)
  t6 = RL_8962(v8, v4)
  v8 = t6
  v43 = ((a0 - 1) * 5) + 1
  v4 = 0
  goto CMINATO_L_99AA
CMINATO_L_9966:
  t7 = RF_40A5((B[(B[v31] * 7) + $EB98]) & 15)
  v18 = t7
  v20 = (v43 * 3) + $E302
  t8 = RL_8898(v18 + 18)
  t9 = RL_8962(v8, t8)
  v10 = t9
  W[v20 + 1] = v10
  v8 = v8 - v10
  B[v20] = v41
  if (!v8) goto CMINATO_L_99B4
  v43 = v43 + 1
CMINATO_L_99AA:
  v31 = L
  if (v31 < v33) goto CMINATO_L_9966
CMINATO_L_99B4:
  t10 = RL_8962((W[v14] * 5) + (W[v12 + 9]), $2710)
  W[v12 + 9] = t10
  t11 = rand(10)
  t12 = RL_8962(W[v14], t11 + (W[v14] / 10))
  W[v14] = W[v14] - t12
CMINATO_L_99E5:
  t13 = RF_46C6(a0)
  return t13

CMINATO_F_99EB:
  // frame 17
  v3 = (a0 << 4) + g_fleets
  v7 = (a1 * 7) + g_ships
  (byte)v1 = (B[v7 + 6]) & 15
  t1 = RF_40A5((byte)v1)
  v5 = t1
  t2 = RF_40A5((byte)v1)
  t3 = RL_884E(t2 + 20)
  v9 = (t3 >> 5) & 7
  t4 = RF_40A5((byte)v1)
  t5 = RL_884E(t4 + 20)
  v11 = t5 & 3
  t6 = RF_40A5((byte)v1)
  t7 = RL_884E(t6 + 20)
  v13 = (t7 >> 2) & 3
  t8 = RF_40A5((byte)v1)
  t9 = RL_884E(t8 + 20)
  v15 = (t9 >> 4) & 1
  B[v7] = ((v9 * 10) + (v11 * 10)) + 20
  B[v7 + 1] = ((((((20 - v9) * 100) / 20) * (10 - v13)) / 10) * (4 - v15)) / 4
  t10 = RL_8962((((((v13 * 10) + 100) * (10 - v9)) / 10) * (v15 + 3)) / 4, 100)
  B[v7 + 2] = t10
  t11 = RL_8898(v5 + 15)
  v17 = t11
  if (!((W[v7 + 4]) < v17)) goto CMINATO_L_9AFE
  if (!(a2 < 50)) goto CMINATO_L_9AF7
  t12 = RL_8962(((W[(a2 * 14) + g_ports]) / 30) + (W[v7 + 4]), v17)
  goto CMINATO_L_9AFD
CMINATO_L_9AF7:
CMINATO_L_9AFD:
  W[v7 + 4] = L
CMINATO_L_9AFE:
  return

rival_fleet_home:
  // frame 15
  t1 = RL_8502(a0, &v7)
  v2 = t1
  v9 = &v7
  v11 = (&v7) + v2
  goto CMINATO_L_9B29
CMINATO_L_9B1A:
  t2 = CMINATO_F_99EB(a0, B[v9], a1)
  v9 = v9 + 1
CMINATO_L_9B29:
  if (v9 < v11) goto CMINATO_L_9B1A
  v13 = (a0 << 4) + g_fleets
  if (!(a1 < 50)) goto CMINATO_L_9B9C
  v15 = (a1 * 14) + g_ports
  t3 = rand(50)
  if (!(((a0 - 1) % 5) < 3)) goto CMINATO_L_9B62
  goto CMINATO_L_9B63
CMINATO_L_9B62:
CMINATO_L_9B63:
  t4 = RL_8962($EA60 - (W[v13 + 9]), (L * W[v15]) + t3)
  W[v13 + 9] = (W[v13 + 9]) + t4
  t5 = rand(2)
  t6 = RL_8962(t5 + 2, B[v15 + 11])
  B[v15 + 11] = (B[v15 + 11]) - t6
  goto CMINATO_L_9BAD
CMINATO_L_9B9C:
  t7 = rand(10)
  W[v13 + 9] = (t7 * $03E8) + $2710
CMINATO_L_9BAD:
  t8 = CMINATO_F_A186(a0)
  return t8

CMINATO_F_9BB3:
  // frame 24
  v4 = (a0 << 4) + g_fleets
  v8 = (a1 * 7) + g_ships
  v2 = (B[v8 + 6]) & 15
  t1 = RF_40A5(v2)
  v6 = t1
  t2 = RF_40A5(v2)
  t3 = RL_884E(t2 + 20)
  v10 = (t3 >> 5) & 7
  t4 = RF_40A5(v2)
  t5 = RL_884E(t4 + 20)
  v12 = t5 & 3
  t6 = RF_40A5(v2)
  t7 = RL_884E(t6 + 20)
  v14 = (t7 >> 2) & 3
  t8 = RF_40A5(v2)
  t9 = RL_884E(t8 + 20)
  v16 = (t9 >> 4) & 1
  v18 = B[v8]
  v20 = B[v8 + 1]
  v22 = B[v8 + 2]
  t10 = RL_8962((((((v14 * 10) + 100) * (10 - v10)) / 10) * (v16 + 3)) >> 2, 100)
  t11 = RL_8962(W[v4 + 9], ((((((((((20 - v10) * 100) / 20) * (10 - v14)) / 10) * (4 - v16)) >> 2) - v20) + ((((v10 * 10) + (v12 * 10)) + 20) - v18)) + (t10 - v22)) * 10)
  W[v4 + 9] = (W[v4 + 9]) - t11
  B[v8] = ((v10 * 10) + (v12 * 10)) + 20
  B[v8 + 1] = ((((((20 - v10) * 100) / 20) * (10 - v14)) / 10) * (4 - v16)) / 4
  t12 = RL_8962((((((v14 * 10) + 100) * (10 - v10)) / 10) * (v16 + 3)) >> 2, 100)
  B[v8 + 2] = t12
  t13 = RL_8898(v6 + 15)
  v24 = t13
  if (!((W[v4 + 9]) > 100)) goto CMINATO_L_9D09
  if (!((W[v8 + 4]) < v24)) goto CMINATO_L_9D09
  t14 = rand(10)
  W[v4 + 9] = (W[v4 + 9]) - (t14 + 90)
  t15 = rand(10)
  t16 = RL_8962((t15 + (W[v8 + 4])) + 20, v24)
  W[v8 + 4] = t16
CMINATO_L_9D09:
  return

CMINATO_F_9D0A:
  // frame 11
  t1 = RL_8502(a0, &v5)
  v11 = t1
  v7 = &v5
  v9 = (&v5) + v11
  goto CMINATO_L_9D35
CMINATO_L_9D27:
  t2 = CMINATO_F_9BB3(a0, B[v7])
  v7 = v7 + 1
CMINATO_L_9D35:
  if (v7 < v9) goto CMINATO_L_9D27
  if (v11 < 3) goto CMINATO_L_9D53
  if (!((W[(a0 << 4) + g_player_gold]) < $03E8)) goto CMINATO_L_9D5B
CMINATO_L_9D53:
  t3 = RF_46C6(a0)
  goto CMINATO_L_9D60
CMINATO_L_9D5B:
  t4 = CMINATO_F_A186(a0)
CMINATO_L_9D60:
  return

CMINATO_F_9D61:
  // frame 22
  v20 = ((a0 - 1) * 51) + g_captains
  B[v20 + 4] = 1
  v14 = (a0 - 1) / 5
  v10 = 3
  v4 = v10 + g_port_flags
  v6 = $EEAA
  v22 = (v10 * 14) + g_ports
  v16 = 101
  v12 = 0
  goto CMINATO_L_9DC3
CMINATO_L_9D96:
  v8 = B[v4] & 3
  v2 = v22 + 8
  if (!((v14 + 1) == v8)) goto CMINATO_L_9DBA
  v12 = v12 + 1
  if (!(v16 > (B[v2 + v14]))) goto CMINATO_L_9DBA
  v16 = B[v2 + v14]
  v18 = v10
CMINATO_L_9DBA:
  v10 = v10 + 1
  v22 = v22 + 14
  v4 = v4 + 1
CMINATO_L_9DC3:
  if (v4 < v6) goto CMINATO_L_9D96
  if (!v12) goto CMINATO_L_9DD4
  goto CMINATO_L_9DDD
CMINATO_L_9DD4:
  t1 = rand(15)
CMINATO_L_9DDD:
  B[v20 + 5] = L
  return

CMINATO_F_9DDF:
  // frame 10
  v10 = ((a0 - 1) * 51) + g_captains
  (byte)v1 = 3
  v6 = (3 * 14) + g_ports
  v8 = $E970
  (byte)v2 = 0
  v4 = 0
  goto CMINATO_L_9E1F
CMINATO_L_9E05:
  if (!(W[v6] > v4)) goto CMINATO_L_9E15
  v4 = W[v6]
  (byte)v2 = (byte)v1
CMINATO_L_9E15:
  (byte)v1 = (byte)v1 + 1
  v6 = v6 + 14
CMINATO_L_9E1F:
  if (v6 < v8) goto CMINATO_L_9E05
  t1 = rand(700)
  if (!(t1 < v4)) goto CMINATO_L_9E40
  B[v10 + 4] = 3
  B[v10 + 5] = (byte)v2
  goto CMINATO_L_9E45
CMINATO_L_9E40:
  t2 = CMINATO_F_9D61(a0)
CMINATO_L_9E45:
  return

CMINATO_F_9E46:
  // frame 6
  v2 = a0 - 1
  v6 = (v2 * 51) + g_captains
  v2 = v2 / 5
  v4 = B[((v2 * 2) * 2) + $EEC1]
  switch (v4) [0, 6, CMINATO_L_9E8E]

CMINATO_F_9EA3:
  // frame 8
  v4 = (a0 * 5) + 1
  v6 = ((v4 + 3) << 4) + g_fleets
  v8 = ((v4 + 5) << 4) + g_fleets
  v2 = 0
  goto CMINATO_L_9EDC
CMINATO_L_9EC4:
  if ((B[v6 + 15]) & 8) goto CMINATO_L_9ED5
  B[a1] = v4
  a1 = a1 + 1
  v2 = v2 + 1
CMINATO_L_9ED5:
  v4 = v4 + 1
  v6 = v6 + 16
CMINATO_L_9EDC:
  if (v6 < v8) goto CMINATO_L_9EC4
  return v2

CMINATO_F_9EE4:
  // frame 8
  v4 = (a0 * 5) + 1
  v6 = (v4 << 4) + g_fleets
  v8 = ((v4 << 4) + g_fleets) + 48
  v2 = 0
  goto CMINATO_L_9F16
CMINATO_L_9EFE:
  if ((B[v6 + 15]) & 8) goto CMINATO_L_9F0F
  B[a1] = v4
  a1 = a1 + 1
  v2 = v2 + 1
CMINATO_L_9F0F:
  v4 = v4 + 1
  v6 = v6 + 16
CMINATO_L_9F16:
  if (v6 < v8) goto CMINATO_L_9EFE
  return v2

CMINATO_F_9F1E:
  // frame 11
  v11 = ((a0 - 1) * 51) + g_captains
  v7 = (a0 - 1) / 5
  if (!((W[((v7 * 2) * 2) + g_nations]) < (W[((a1 * 2) * 2) + g_nations]))) goto CMINATO_L_9F57
  t1 = CMINATO_F_9EE4(a1, &v5)
  goto CMINATO_L_9F60
CMINATO_L_9F57:
  t2 = CMINATO_F_9EA3(a1, &v5)
CMINATO_L_9F60:
  v9 = L
  if (!v9) goto CMINATO_L_9F82
  B[v11 + 4] = 0
  t3 = rand(v9)
  B[v11 + 5] = B[t3 + (&v5)]
  goto CMINATO_L_9F87
CMINATO_L_9F82:
  t4 = CMINATO_F_9D61(a0)
CMINATO_L_9F87:
  return

CMINATO_F_9F88:
  // frame 8
  v4 = 16
  v6 = (16 << 4) + g_fleets
  v8 = g_ports
  v2 = 0
  goto CMINATO_L_9FB8
CMINATO_L_9FA0:
  if ((B[v6 + 15]) & 8) goto CMINATO_L_9FB1
  B[a0] = v4
  a0 = a0 + 1
  v2 = v2 + 1
CMINATO_L_9FB1:
  v4 = v4 + 1
  v6 = v6 + 16
CMINATO_L_9FB8:
  if (v6 < v8) goto CMINATO_L_9FA0
  return v2

CMINATO_F_9FC0:
  // frame 9
  v9 = ((a0 - 1) * 51) + g_captains
  t1 = CMINATO_F_9F88(&v5)
  v7 = t1
  if (!v7) goto CMINATO_L_9FFA
  B[v9 + 4] = 0
  t2 = rand(v7)
  B[v9 + 5] = B[t2 + (&v5)]
  goto CMINATO_L_9FFF
CMINATO_L_9FFA:
  t3 = CMINATO_F_9D61(a0)
CMINATO_L_9FFF:
  return

CMINATO_F_A000:
  // frame 6
  v2 = a0 - 1
  v6 = (v2 * 51) + g_captains
  v2 = v2 / 5
  v4 = B[((v2 * 2) * 2) + $EEC1]
  switch (v4) [0, 6, CMINATO_L_A046]

CMINATO_F_A05F:
  // frame 24
  v22 = ((a0 - 1) * 51) + g_captains
  v16 = 0
  v14 = 0
  v10 = 0
  v12 = 100
  v18 = (a0 - 1) / 5
  v8 = 3
  v4 = v8 + g_port_flags
  v6 = $EEAA
  v24 = (v8 * 14) + g_ports
  goto CMINATO_L_A0D3
CMINATO_L_A091:
  v20 = B[v4] & 3
  v2 = v24 + 8
  if (v20) goto CMINATO_L_A0B2
  if (!(v10 < (B[v2 + v18]))) goto CMINATO_L_A0CA
  v10 = B[v2 + v18]
  v14 = v8
  goto CMINATO_L_A0CA
CMINATO_L_A0B2:
  v20 = v18 + 1
  if (!(v18 + 1)) goto CMINATO_L_A0CA
  if (!(v12 > (B[v2 + v18]))) goto CMINATO_L_A0CA
  v12 = B[v2 + v18]
  v16 = v8
CMINATO_L_A0CA:
  v8 = v8 + 1
  v24 = v24 + 14
  v4 = v4 + 1
CMINATO_L_A0D3:
  if (v4 < v6) goto CMINATO_L_A091
  if (!v14) goto CMINATO_L_A0E4
  goto CMINATO_L_A100
CMINATO_L_A0E4:
  if (!v16) goto CMINATO_L_A0F6
  if (!(v12 < 90)) goto CMINATO_L_A0F6
  goto CMINATO_L_A100
CMINATO_L_A0F6:
  t1 = rand(47)
CMINATO_L_A100:
  B[v22 + 5] = L
  return

rival_pick_destination:
  // frame 20
  v18 = ((a0 - 1) * 51) + g_captains
  B[v18 + 4] = 2
  v14 = (a0 - 1) / 5
  v16 = B[((v14 * 2) * 2) + $EEC1]
  if (!(v16 < 3)) goto CMINATO_L_A180
  v12 = 3
  v4 = v12 + g_port_flags
  v6 = $EEAA
  v20 = (v12 * 14) + g_ports
  v8 = 200
  goto CMINATO_L_A16D
CMINATO_L_A145:
  if (!((B[v4] & 3) == (v16 + 1))) goto CMINATO_L_A164
  v2 = v20 + 8
  if (!((B[v2 + v16]) < v8)) goto CMINATO_L_A164
  v10 = v12
  v8 = B[v2 + v16]
CMINATO_L_A164:
  v12 = v12 + 1
  v20 = v20 + 14
  v4 = v4 + 1
CMINATO_L_A16D:
  if (v4 < v6) goto CMINATO_L_A145
  if (!(v8 < 101)) goto CMINATO_L_A180
  B[v18 + 5] = v10
  return v10
CMINATO_L_A180:
  t1 = CMINATO_F_A05F(a0)
  return t1

CMINATO_F_A186:
  // frame 2
  v2 = a0 - 1
  if (!((v2 / 5) == 3)) goto CMINATO_L_A19E
  t1 = CMINATO_F_9E46(a0)
  goto CMINATO_L_A1B3
CMINATO_L_A19E:
  if (!((v2 % 5) < 3)) goto CMINATO_L_A1AE
  t2 = rival_pick_destination(a0)
  goto CMINATO_L_A1B3
CMINATO_L_A1AE:
  t3 = CMINATO_F_A000(a0)
CMINATO_L_A1B3:
  return
CMINATO_D_A1B4:

