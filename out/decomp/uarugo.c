UARUGO_F_9603:
  // frame 0
  if (!(byte)$F16A) goto UARUGO_L_9619
  t1 = UARUGO_F_98BF((byte)$F16A)
  goto UARUGO_L_961F
UARUGO_L_9619:
  t2 = UARUGO_F_9ECE(0, 1)
UARUGO_L_961F:
  return

UARUGO_F_9620:
  // frame 10
  v4 = B[a1]
  v6 = B[a1 + 1]
  v2 = W[a0 + 7]
  if (v2) goto UARUGO_L_9635
  return v2
UARUGO_L_9635:
  v8 = B[v2]
  v2 = v2 + 1
  v10 = B[v2]
  if (v4) goto UARUGO_L_964E
  if (!(v8 == 71)) goto UARUGO_L_964E
  goto UARUGO_L_965B
UARUGO_L_964E:
  if (v8) goto UARUGO_L_965C
  if (!(v4 == 71)) goto UARUGO_L_965C
UARUGO_L_965B:
  v8 = L
UARUGO_L_965C:
  t1 = RL_892B(v8 - v4)
  v4 = t1 + 1
  t2 = RL_892B(v10 - v6)
  v6 = t2 + 1
  B[a1 + 8] = W[((v4 * 6) + (v6 * 2)) + UARUGO_D_B316]
  return W[((v4 * 6) + (v6 * 2)) + UARUGO_D_B316]

UARUGO_F_9682:
  // frame 0
  B[a1 + 3] = 255
  B[a1 + 2] = 255
  if (!((B[W[a0 + 7]]) != 255)) goto UARUGO_L_96BF
  if (!(W[a0 + 7])) goto UARUGO_L_96BF
  B[a1] = B[W[a0 + 7]]
  W[a0 + 7] = (W[a0 + 7]) + 1
  B[a1 + 1] = B[W[a0 + 7]]
  goto UARUGO_L_96C3
UARUGO_L_96BF:
UARUGO_L_96C3:
  W[a0 + 7] = L
  return

UARUGO_F_96C5:
  // frame 18
  v16 = ((a0 - 1) * 51) + g_captains
  v14 = W[v16 + 7]
  if (v14) goto UARUGO_L_96DD
  return v14
UARUGO_L_96DD:
  v18 = (a0 << 4) + g_fleets
  v2 = B[v18]
  v4 = B[v18 + 1]
  if (!((byte)$F165 == (v2 / 3))) goto UARUGO_L_985F
  if (!((byte)$F166 == (v4 / 3))) goto UARUGO_L_985F
  if (!((B[v18 + 8]) > 7)) goto UARUGO_L_9712
  t1 = UARUGO_F_9620(v16, v18)
UARUGO_L_9712:
  if (!((B[v18] % 3) == (byte)$F167)) goto UARUGO_L_9736
  if (!(((B[v18 + 1]) % 3) == (byte)$F168)) goto UARUGO_L_9736
  t2 = UARUGO_F_9ECE(a0, 0)
  goto UARUGO_L_986C
UARUGO_L_9736:
  B[v18 + 8] = 255
  if ((B[v18 + 2]) == 255) goto UARUGO_L_9866
  if ((B[v18 + 3]) == 255) goto UARUGO_L_9866
  t3 = rand(3)
  if (t3) goto UARUGO_L_986C
  if (!(B[v14] != 255)) goto UARUGO_L_986C
  if (!v14) goto UARUGO_L_9770
  v10 = B[v14]
  v14 = v14 + 1
  goto UARUGO_L_9775
UARUGO_L_9770:
  v10 = B[v16]
UARUGO_L_9775:
  v12 = B[L]
  t4 = RL_892B(v10 - v2)
  v6 = t4 + (B[v18 + 2])
  t5 = RL_892B(v12 - v4)
  v8 = t5 + (B[v18 + 3])
  if (v6 < 0) goto UARUGO_L_97AD
  if (v8 < 0) goto UARUGO_L_97AD
  if (v6 > 13) goto UARUGO_L_97AD
  if (!(v8 > 13)) goto UARUGO_L_9852
UARUGO_L_97AD:
  if (v6 < 0) goto UARUGO_L_97B9
  if (!(v6 > 13)) goto UARUGO_L_97ED
UARUGO_L_97B9:
  if (!(v6 < 0)) goto UARUGO_L_97D6
  if (!B[v18]) goto UARUGO_L_97CB
  goto UARUGO_L_97CE
UARUGO_L_97CB:
UARUGO_L_97CE:
  B[v18] = L
UARUGO_L_97D1:
  goto UARUGO_L_9826
UARUGO_L_97D6:
  if (!(B[v18] < 71)) goto UARUGO_L_97E5
  goto UARUGO_L_97E7
UARUGO_L_97E5:
UARUGO_L_97E7:
  B[v18] = L
  goto UARUGO_L_9824
UARUGO_L_97ED:
  if (!(v8 < 0)) goto UARUGO_L_980C
  if (!(B[v18 + 1])) goto UARUGO_L_9801
  goto UARUGO_L_9806
UARUGO_L_9801:
UARUGO_L_9806:
  B[v18 + 1] = L
  goto UARUGO_L_97D1
UARUGO_L_980C:
  if (!((B[v18 + 1]) < 35)) goto UARUGO_L_981D
  goto UARUGO_L_9821
UARUGO_L_981D:
UARUGO_L_9821:
  B[v18 + 1] = L
UARUGO_L_9824:
UARUGO_L_9826:
  B[L] = L
  if (!(B[v18] == v10)) goto UARUGO_L_986C
  if (!((B[v18 + 1]) == v12)) goto UARUGO_L_986C
  if (!(W[v16 + 7])) goto UARUGO_L_986C
  if (!((B[W[v16 + 7]]) != 255)) goto UARUGO_L_986C
  W[v16 + 7] = (W[v16 + 7]) + 2
  goto UARUGO_L_986C
UARUGO_L_9852:
  B[v18 + 2] = v6
  B[v18 + 3] = v8
  goto UARUGO_L_986C
UARUGO_L_985F:
  B[v18 + 8] = 255
UARUGO_L_9866:
  t6 = UARUGO_F_9682(v16, v18)
UARUGO_L_986C:
  if ((((byte)$F165 * 3) + (byte)$F167) != v2) goto UARUGO_L_988C
  if (!((((byte)$F166 * 3) + (byte)$F168) != v4)) goto UARUGO_L_98BE
UARUGO_L_988C:
  v2 = B[v18]
  v4 = B[v18 + 1]
  if (!((((byte)$F165 * 3) + (byte)$F167) == v2)) goto UARUGO_L_98BE
  if (!((((byte)$F166 * 3) + (byte)$F168) == v4)) goto UARUGO_L_98BE
  t7 = RF_57CD(a0)
  t8 = UARUGO_F_9620(v16, v18)
UARUGO_L_98BE:
  return

UARUGO_F_98BF:
  // frame 8
  v2 = ((a0 - 1) * 51) + g_captains
  v8 = (a0 << 4) + g_fleets
  if (!(B[v2 + 4])) goto UARUGO_L_9918
  if (W[v2 + 7]) goto UARUGO_L_9989
  v4 = ((B[v2 + 5]) * 19) + $0FD8
  t1 = RL_884E(v4 + 18)
  t2 = RL_884E(v4 + 17)
  t3 = RL_884E(v4 + 16)
  t4 = RL_884E(v4 + 15)
UARUGO_L_990F:
  t5 = UARUGO_F_9B03(a0, L, t3, t2, t1)
  goto UARUGO_L_9989
UARUGO_L_9918:
  v6 = ((B[v2 + 5]) << 4) + g_fleets
  if ((B[v6 + 15]) & 8) goto UARUGO_L_9984
  if (!(W[v2 + 7])) goto UARUGO_L_9957
  if (!(W[v2 + 7])) goto UARUGO_L_9989
  if (!((B[W[v2 + 7]]) != 255)) goto UARUGO_L_9989
  if (B[v2] != B[v6]) goto UARUGO_L_9957
  if (!((B[v2 + 1]) != (B[v6 + 1]))) goto UARUGO_L_9989
UARUGO_L_9957:
  if (!(W[v2 + 7])) goto UARUGO_L_9973
  t6 = rand(5)
  if (!t6) goto UARUGO_L_9973
  if (B[v2 + 6]) goto UARUGO_L_9989
  t7 = rand(2)
  if (!t7) goto UARUGO_L_9989
UARUGO_L_9973:
  goto UARUGO_L_990F
UARUGO_L_9984:
  t8 = RF_46C6(a0)
UARUGO_L_9989:
  if (!(B[v2] == B[v8])) goto UARUGO_L_9A85
  if (!((B[v2 + 1]) == (B[v8 + 1]))) goto UARUGO_L_9A85
  if (!((B[v2 + 2]) == (B[v8 + 2]))) goto UARUGO_L_9A4E
  if (!((B[v2 + 3]) == (B[v8 + 3]))) goto UARUGO_L_9A4E
  W[v2 + 7] = 0
  if (!(B[v2 + 4])) goto UARUGO_L_99FB
  v4 = ((B[v2 + 5]) * 19) + $0FD8
  t9 = RL_884E(v4 + 17)
  B[v8 + 2] = t9
  t10 = RL_884E(v4 + 18)
  B[v8 + 3] = t10
  B[v8 + 15] = (B[v8 + 15]) | 18
  t11 = rand(6)
UARUGO_L_99F7:
  B[v2 + 6] = L
  goto UARUGO_L_9A8A
UARUGO_L_99FB:
  v6 = ((B[v2 + 5]) << 4) + g_fleets
  if (!(B[v8] == B[v6])) goto UARUGO_L_9A8A
  if (!((B[v8 + 1]) == (B[v6 + 1]))) goto UARUGO_L_9A8A
  if (!((B[v8 + 2]) == (B[v6 + 2]))) goto UARUGO_L_9A8A
  if (!((B[v8 + 3]) == (B[v6 + 3]))) goto UARUGO_L_9A8A
  if ((B[v6 + 15]) & 34) goto UARUGO_L_9A8A
  if (!((byte)$EA8E < 10)) goto UARUGO_L_9A8A
  (byte)$F197 = (B[v2 + 5]) + 1
  goto UARUGO_L_9A8A
UARUGO_L_9A4E:
  if ((((byte)$F165 * 3) + (byte)$F167) != B[v8]) goto UARUGO_L_9A75
  if (!((((byte)$F166 * 3) + (byte)$F168) != (B[v8 + 1]))) goto UARUGO_L_9A85
UARUGO_L_9A75:
  B[v8 + 2] = B[v2 + 2]
  goto UARUGO_L_99F7
UARUGO_L_9A85:
  t12 = UARUGO_F_96C5(a0)
UARUGO_L_9A8A:
  return

UARUGO_F_9A8B:
  // frame 16
  t1 = UARUGO_L_B183(a0, a1, a2, a3)
  v6 = 0
  v4 = 255
UARUGO_L_9A9E:
  if (!(B[((a1 * 72) + a0) + $F300])) goto UARUGO_L_9AFC
  v8 = 0
UARUGO_L_9AAE:
  v14 = a0
  v16 = a1
  t2 = UARUGO_L_B0EB(&v14, &v16, v8)
  v2 = B[((v16 * 72) + v14) + $F300]
  if (!((B[((v16 * 72) + v14) + $F300]) < v4)) goto UARUGO_L_9AD6
  v4 = v2
  v10 = v14
  v12 = v16
UARUGO_L_9AD6:
  v8 = v8 + 1
  if (v8 < 8) goto UARUGO_L_9AAE
  a4 = a4 + 1
  a0 = v10
  B[(a4 + 1) - 1] = v10
  a4 = a4 + 1
  a1 = v12
  B[(a4 + 1) - 1] = v12
  v6 = v6 + 1
  if (!((v6 + 1) > 19)) goto UARUGO_L_9A9E
UARUGO_L_9AFC:
  B[a4] = 255
  return 255

UARUGO_F_9B03:
  // frame 4
  v4 = (a0 << 4) + g_fleets
  v2 = ((a0 - 1) * 51) + g_captains
  if (B[v4] != a1) goto UARUGO_L_9B29
  if (!((B[v4 + 1]) != a2)) goto UARUGO_L_9B39
UARUGO_L_9B29:
  t1 = UARUGO_F_9A8B(B[v4], B[v4 + 1], a1, a2, v2 + 9)
UARUGO_L_9B39:
  W[v2 + 7] = v2 + 9
  B[v2] = a1
  B[v2 + 1] = a2
  B[v2 + 2] = a3
  B[v2 + 3] = a4
  return a4

UARUGO_F_9B53:
  // frame 7
  v2 = 4
  v7 = 4 + 324
  v4 = $F300
  goto UARUGO_L_9B9A
UARUGO_L_9B68:
  goto UARUGO_L_9B8E
UARUGO_L_9B6E:
  v4 = v4 + 1
  if (!(B[v2] & (byte)v5)) goto UARUGO_L_9B84
  goto UARUGO_L_9B87
UARUGO_L_9B84:
UARUGO_L_9B87:
  B[(v4 + 1) - 1] = L
UARUGO_L_9B8E:
  (byte)v5 = L
  if ((byte)v5) goto UARUGO_L_9B6E
  v2 = v2 + 1
UARUGO_L_9B9A:
  if (v2 < v7) goto UARUGO_L_9B68
  return v2 < v7

UARUGO_F_9BA2:
  // frame 10
  v4 = B[a1]
  v6 = B[a1 + 1]
  v2 = W[a0 + 7]
  v8 = B[v2]
  v2 = v2 + 1
  v10 = B[v2]
  if (v4) goto UARUGO_L_9BCB
  if (!(v8 == 71)) goto UARUGO_L_9BCB
  goto UARUGO_L_9BD8
UARUGO_L_9BCB:
  if (v8) goto UARUGO_L_9BD9
  if (!(v4 == 71)) goto UARUGO_L_9BD9
UARUGO_L_9BD8:
  v8 = L
UARUGO_L_9BD9:
  t1 = RL_892B(v8 - v4)
  v4 = t1 + 1
  t2 = RL_892B(v10 - v6)
  v6 = t2 + 1
  B[a1 + 8] = B[((v4 * 3) + v6) + UARUGO_D_B328]
  return B[((v4 * 3) + v6) + UARUGO_D_B328]

UARUGO_F_9BFC:
  // frame 8
  v8 = a0 / 5
  if (!(a0 / 5)) goto UARUGO_L_9C12
  v4 = 240
  goto UARUGO_L_9C36
UARUGO_L_9C12:
  v8 = B[(a0 * 24) + g_cargo]
  v2 = (v8 * 10) + $EAC0
  v4 = (((B[v2 + 2]) * 2) + (B[v2 + 1])) + (B[v2 + 3])
UARUGO_L_9C36:
  v6 = B[(L * 7) + $E447]
  return (((v4 * v6) / 8) + v4) / 8

UARUGO_F_9C48:
  // frame 12
  a0 = a0 * 5
  v10 = (a0 * 7) + g_ships
  v12 = ((a0 * 7) + g_ships) + 35
  v2 = 200
  v4 = 0
  goto UARUGO_L_9CA0
UARUGO_L_9C66:
  if (!((B[v10 + 6]) & 64)) goto UARUGO_L_9C9A
  v4 = v4 + 1
  t1 = UARUGO_F_9BFC(a0)
  t2 = RL_8962(((((B[v10 + 2]) / 2) * t1) / 100) + ((B[v10 + 2]) / 2), 100)
  v8 = t2
  if (!(v2 > v8)) goto UARUGO_L_9C9A
  v2 = v8
UARUGO_L_9C9A:
  a0 = a0 + 1
  v10 = v10 + 7
UARUGO_L_9CA0:
  if (v10 < v12) goto UARUGO_L_9C66
  if (v4) goto UARUGO_L_9CAC
  return 0
UARUGO_L_9CAC:
  return v2

UARUGO_F_9CAE:
  // frame 24
  v20 = (a0 << 4) + g_fleets
  v4 = B[v20]
  v6 = B[v20 + 1]
  v24 = ((a0 - 1) * 51) + g_captains
  if (B[v24 + 4]) goto UARUGO_L_9D23
  v22 = ((B[v24 + 5]) << 4) + g_fleets
  if (B[v24] != B[v22]) goto UARUGO_L_9D0A
  if ((B[v24 + 1]) != (B[v22 + 1])) goto UARUGO_L_9D0A
  if ((B[v24 + 2]) != (B[v22 + 2])) goto UARUGO_L_9D0A
  if (!((B[v24 + 3]) != (B[v22 + 3]))) goto UARUGO_L_9D23
UARUGO_L_9D0A:
  B[v24] = B[v22]
  B[v24 + 1] = B[v22 + 1]
  B[v24 + 2] = B[v22 + 2]
  B[v24 + 3] = B[v22 + 3]
UARUGO_L_9D23:
  t1 = sys36_memset_long(126, $F300, 254, 256)
  v12 = 0
UARUGO_L_9D36:
  v14 = 0
UARUGO_L_9D38:
  t2 = RL_8616(v4, v6, v12, v14)
  if (t2) goto UARUGO_L_9D51
  B[(((v14 + 1) << 4) + v12) + $F301] = (B[(((v14 + 1) << 4) + v12) + $F301]) + 1
UARUGO_L_9D51:
  v14 = v14 + 1
  if (v14 < 14) goto UARUGO_L_9D38
  v12 = v12 + 1
  if (v12 < 14) goto UARUGO_L_9D36
  if (!(B[v24] == v4)) goto UARUGO_L_9D7E
  if (!((B[v24 + 1]) == v6)) goto UARUGO_L_9D7E
  v12 = (B[v24 + 2]) + 1
  goto UARUGO_L_9DDD
UARUGO_L_9D7E:
  v2 = W[v24 + 7]
  if (!(B[v2] != 255)) goto UARUGO_L_9D99
  if (!v2) goto UARUGO_L_9D99
  v2 = v2 + 1
  v8 = B[(v2 + 1) - 1]
  goto UARUGO_L_9D9E
UARUGO_L_9D99:
  v8 = B[v24]
UARUGO_L_9D9E:
  v10 = B[L]
  v16 = v8 - v4
  v18 = v10 - v6
  if (!(v16 < 0)) goto UARUGO_L_9DB2
  goto UARUGO_L_9DC2
UARUGO_L_9DB2:
  if (!(v16 > 0)) goto UARUGO_L_9DBC
  goto UARUGO_L_9DC2
UARUGO_L_9DBC:
  t3 = rand(12)
UARUGO_L_9DC2:
  v12 = L
  if (!(v18 < 0)) goto UARUGO_L_9DCD
  goto UARUGO_L_9DDD
UARUGO_L_9DCD:
  if (!(v18 > 0)) goto UARUGO_L_9DD7
  goto UARUGO_L_9DDD
UARUGO_L_9DD7:
  t4 = rand(12)
UARUGO_L_9DDD:
  v14 = L
  t5 = UARUGO_L_AF99((B[v20 + 2]) + 1, (B[v20 + 3]) + 1, v12, v14)
  return t5

UARUGO_F_9DEF:
  // frame 16
  t1 = UARUGO_F_9CAE(a0)
  v16 = (a0 << 4) + g_fleets
  $FF60 = (B[v16 + 2]) + 1
  v8 = (B[v16 + 2]) + 1
  $FF62 = (B[v16 + 3]) + 1
  v10 = (B[v16 + 3]) + 1
  v14 = 255
  v12 = 0
UARUGO_L_9E17:
  t2 = UARUGO_L_ADDE(&v4, &v6, v12)
  if (!t2) goto UARUGO_L_9E3F
  v2 = ((v6 << 4) + v4) + $F300
  if (!(B[v2] < v14)) goto UARUGO_L_9E3F
  v14 = B[v2]
  v8 = v4
  v10 = v6
UARUGO_L_9E3F:
  v12 = v12 + 1
  if (v12 < 8) goto UARUGO_L_9E17
  t3 = RL_892B(v8 - $FF60)
  $FF60 = t3
  t4 = RL_892B(v10 - $FF62)
  $FF62 = t4
  B[v16 + 8] = B[((($FF60 + 1) * 3) + $FF62) + UARUGO_D_B329]
  return B[((($FF60 + 1) * 3) + $FF62) + UARUGO_D_B329]

UARUGO_F_9E76:
  // frame 4
  t1 = $8A5B(a0, a1, a4)
  if (!a4) goto UARUGO_L_9EC8
  v2 = B[((a0 * 14) + a1) + $F1AE]
  if (!(v2 == 255)) goto UARUGO_L_9EA3
  if (!a5) goto UARUGO_L_9EC8
  goto UARUGO_L_9EC2
UARUGO_L_9EA3:
  v4 = 1
  goto UARUGO_L_9EB2
UARUGO_L_9EA8:
UARUGO_L_9EAA:
  v4 = L
  v2 = B[v2 + $F199]
UARUGO_L_9EB2:
  if (!v2) goto UARUGO_L_9EA8
  if (v2 != 255) goto UARUGO_L_9EC9
  if (v4) goto UARUGO_L_9EC8
UARUGO_L_9EC2:
  t2 = RF_55DB(a0, a1)
UARUGO_L_9EC8:
  return
UARUGO_L_9EC9:
  goto UARUGO_L_9EAA

UARUGO_F_9ECE:
  // frame 38
  v4 = (a0 << 4) + g_fleets
  if (!a1) goto UARUGO_L_9F14
  if (!(byte)$F193) goto UARUGO_L_9EE8
  t1 = UARUGO_F_A8A0()
UARUGO_L_9EE8:
  if (!(byte)$F192) goto UARUGO_L_9EF1
  t2 = UARUGO_F_ADC0()
UARUGO_L_9EF1:
  if ((byte)$EA8E) goto UARUGO_L_9F1E
  t3 = UARUGO_F_A529()
  if (!((B[v4 + 15]) & 1)) goto UARUGO_L_9F1E
  t4 = RL_8962(g_days_at_sea + 1, 150)
  g_days_at_sea = t4
  goto UARUGO_L_9F1E
UARUGO_L_9F14:
  v2 = ((a0 - 1) * 51) + g_captains
UARUGO_L_9F1E:
  if (!((byte)$F193 == 1)) goto UARUGO_L_9F35
  if (a0) goto UARUGO_L_9F35
  t5 = rand(5)
  if (t5) goto UARUGO_L_9F35
  t6 = UARUGO_F_AA23()
UARUGO_L_9F35:
  v30 = v4
  v32 = v4 + 1
  v26 = v4 + 2
  v28 = v4 + 3
  v36 = v4 + 4
  v38 = v4 + 6
  v18 = B[v30]
  v20 = B[v32]
  v14 = B[v26]
  v16 = B[v28]
  v22 = W[v36]
  v24 = W[v38]
  if (!a1) goto UARUGO_L_9F72
  if (!(byte)$F193) goto UARUGO_L_9F72
  goto UARUGO_L_9F8D
UARUGO_L_9F72:
  t7 = UARUGO_F_9C48(a0)
UARUGO_L_9F8D:
  v8 = L
  t8 = RF_2A9E(a0)
  v10 = t8
  v12 = (((byte)(g_zone_attr+2) >> 3) & 3) * ((B[(a0 << 4) + $E573]) & 1)
  if (!((B[v4 + 8]) > 7)) goto UARUGO_L_9FB6
  t9 = UARUGO_F_9DEF(a0)
UARUGO_L_9FB6:
  t10 = UARUGO_L_AE43(B[v4 + 8], v8, v36, v38)
  t11 = UARUGO_L_AE43((byte)$EF82, v10, v36, v38)
  t12 = UARUGO_L_AE43(((byte)(g_zone_attr+2) >> 6) & 7, v12, v36, v38)
  t13 = UARUGO_L_AED4(v4)
  if (!t13) goto UARUGO_L_A207
  t14 = RL_8616(B[v30], B[v32], B[v26], B[v28])
  if (t14) goto UARUGO_L_A090
  if (a1) goto UARUGO_L_A07D
  if (!((((byte)$F165 * 3) + (byte)$F167) == B[v2])) goto UARUGO_L_A067
  if (!((((byte)$F166 * 3) + (byte)$F168) == (B[v2 + 1]))) goto UARUGO_L_A067
  if (!(B[v26] == (B[v2 + 2]))) goto UARUGO_L_A067
  if (!(B[v28] == (B[v2 + 3]))) goto UARUGO_L_A067
  if (!(B[v2 + 4])) goto UARUGO_L_A07D
  B[v4 + 15] = (B[v4 + 15]) | 18
  t15 = rand(6)
  B[v2 + 6] = t15 + 5
  t16 = UARUGO_F_9E76(v14, v16, v18, v20, a0, 1)
  return t16
UARUGO_L_A067:
  B[v30] = v18
  B[v32] = v20
  B[v26] = v14
  B[v28] = v16
  t17 = UARUGO_F_9DEF(a0)
  return t17
UARUGO_L_A07D:
  B[v30] = v18
  B[v32] = v20
  B[v26] = v14
  B[v28] = v16
  goto UARUGO_L_A207
UARUGO_L_A090:
  if (B[v30] != v18) goto UARUGO_L_A0A0
  if (!(B[v32] != v20)) goto UARUGO_L_A102
UARUGO_L_A0A0:
  if (!a1) goto UARUGO_L_A0B3
  t18 = RF_59AF(B[v30], B[v32])
  goto UARUGO_L_A102
UARUGO_L_A0B3:
  t19 = RL_8616(v18, v20, v14, v16)
  t20 = UARUGO_F_9E76(v14, v16, v18, v20, a0, t19)
  if (!((B[W[v2 + 7]]) != 255)) goto UARUGO_L_A0FC
  if (!(W[v2 + 7])) goto UARUGO_L_A0FC
  v34 = W[v2 + 7]
  if (!(B[v30] == B[v34])) goto UARUGO_L_A0FC
  if (!(B[v32] == (B[v34 + 1]))) goto UARUGO_L_A0FC
  W[v2 + 7] = (W[v2 + 7]) + 2
UARUGO_L_A0FC:
  t21 = UARUGO_F_9BA2(v2, v4)
UARUGO_L_A102:
  if (B[v26] != v14) goto UARUGO_L_A112
  if (!(B[v28] != v16)) goto UARUGO_L_A207
UARUGO_L_A112:
  if (!(B[v30] == v18)) goto UARUGO_L_A207
  if (!(B[v32] == v20)) goto UARUGO_L_A207
  t22 = RL_8616(v18, v20, v14, v16)
  t23 = UARUGO_F_9E76(v14, v16, v18, v20, a0, t22)
  if (!a1) goto UARUGO_L_A184
  if (!(B[v28] != v16)) goto UARUGO_L_A184
  if (!(v16 == 7)) goto UARUGO_L_A161
  if (!(v16 < B[v28])) goto UARUGO_L_A161
  (byte)$F28C = 1
  t24 = RF_530E(0, 7)
  t25 = sys16_wait_frames(1)
UARUGO_L_A161:
  if (!(v16 == 6)) goto UARUGO_L_A184
  if (!(v16 > B[v28])) goto UARUGO_L_A184
  (byte)$F28C = 2
  t26 = RF_530E(0, 503)
  t27 = sys16_wait_frames(1)
UARUGO_L_A184:
  t28 = RF_57CD(a0)
  if (!a1) goto UARUGO_L_A1A3
  if (!(byte)$EF81) goto UARUGO_L_A207
  t29 = UARUGO_F_A359(B[v26], B[v28], v4)
  goto UARUGO_L_A207
UARUGO_L_A1A3:
  if (B[v2 + 4]) goto UARUGO_L_A1FA
  v6 = ((B[v2 + 5]) << 4) + g_fleets
  if (!(B[v6] == B[v4])) goto UARUGO_L_A1FA
  if (!((B[v6 + 1]) == (B[v4 + 1]))) goto UARUGO_L_A1FA
  if (!((B[v6 + 2]) == (B[v4 + 2]))) goto UARUGO_L_A1FA
  if (!((B[v6 + 3]) == (B[v4 + 3]))) goto UARUGO_L_A1FA
  if ((B[v6 + 15]) & 34) goto UARUGO_L_A1FA
  if (!((byte)$EA8E < 10)) goto UARUGO_L_A1FA
  (byte)$F197 = (B[v2 + 5]) + 1
  return (B[v2 + 5]) + 1
UARUGO_L_A1FA:
  t30 = rand(15)
  if (t30) goto UARUGO_L_A207
  t31 = UARUGO_F_9DEF(a0)
UARUGO_L_A207:
  return

UARUGO_F_A208:
  // frame 6
  v2 = $E99C
  v4 = $E99C
  goto UARUGO_L_A229
UARUGO_L_A216:
  if (!(B[v2] != a0)) goto UARUGO_L_A224
  B[v4] = B[v2]
  v4 = v4 + 1
UARUGO_L_A224:
  v2 = v2 + 1
UARUGO_L_A229:
  v6 = L
  if (!(v6 < 10)) goto UARUGO_L_A239
  if (B[v2] != 255) goto UARUGO_L_A216
UARUGO_L_A239:
  B[v4] = 255
  B[(a0 * 7) + $E44A] = (B[(a0 * 7) + $E44A]) & 254
  return (B[(a0 * 7) + $E44A]) & 254

UARUGO_F_A24E:
  // frame 6
  v2 = $EF6D
  v4 = $EF6D
  v6 = (byte)$EF81 + $EF6D
  goto UARUGO_L_A273
UARUGO_L_A262:
  if (!(B[v4] != a0)) goto UARUGO_L_A270
  B[v2] = B[v4]
  v2 = v2 + 1
UARUGO_L_A270:
  v4 = v4 + 1
UARUGO_L_A273:
  if (v4 < v6) goto UARUGO_L_A262
  (byte)$EF81 = (byte)$EF81 - 1
  return (byte)$EF81 - 1

UARUGO_F_A281:
  // frame 6
  if (a0 < 0) goto UARUGO_L_A29E
  if (a0 > 13) goto UARUGO_L_A29E
  if (a1 < 0) goto UARUGO_L_A29E
  if (!(a1 > 13)) goto UARUGO_L_A2A0
UARUGO_L_A29E:
  return 0
UARUGO_L_A2A0:
  v2 = $EF6D
  v4 = (byte)$EF81 + $EF6D
  goto UARUGO_L_A2FD
UARUGO_L_A2AE:
  v6 = (B[v2] * 19) + $0FD8
  t1 = RL_884E(v6 + 17)
  if (!(t1 == a0)) goto UARUGO_L_A2FA
  t2 = RL_884E(v6 + 18)
  if (!(t2 == a1)) goto UARUGO_L_A2FA
  if ((B[B[v2] + g_port_flags]) & 8) goto UARUGO_L_A2FA
  B[B[v2] + g_port_flags] = (B[B[v2] + g_port_flags]) | 8
  t3 = port_discovered(B[v2])
  t4 = UARUGO_F_A24E(B[v2])
  return 1
UARUGO_L_A2FA:
  v2 = v2 + 1
UARUGO_L_A2FD:
  if (v2 < v4) goto UARUGO_L_A2AE
  return 0

UARUGO_F_A305:
  // frame 6
  v2 = $EF6D
  v4 = (byte)$EF81 + $EF6D
  goto UARUGO_L_A34E
UARUGO_L_A318:
  v6 = (B[v2] * 19) + $0FD8
  B[B[v2] + g_port_flags] = (B[B[v2] + g_port_flags]) | 8
  t1 = port_discovered(B[v2])
  t2 = RL_884E(v6 + 18)
  t3 = RL_884E(v6 + 17)
  t4 = RF_554A(t3, t2)
  v2 = v2 + 1
UARUGO_L_A34E:
  if (v2 < v4) goto UARUGO_L_A318
  (byte)$EF81 = 0
  return 0

UARUGO_F_A359:
  // frame 4
  if (!((W[a2 + 11]) & 1)) goto UARUGO_L_A36F
  t1 = UARUGO_F_AC7C()
  t2 = UARUGO_F_A305()
  goto UARUGO_L_A3B4
UARUGO_L_A36F:
  v4 = 0
UARUGO_L_A371:
  t3 = UARUGO_F_A281((W[((v4 * 2) * 2) + $EF87]) + a0, (W[((v4 * 2) * 2) + $EF89]) + a1)
  if (!t3) goto UARUGO_L_A3AB
  t4 = UARUGO_F_AC7C()
  t5 = RF_554A((W[((v4 * 2) * 2) + $EF87]) + a0, (W[((v4 * 2) * 2) + $EF89]) + a1)
UARUGO_L_A3AB:
  v4 = v4 + 1
  if (v4 < 8) goto UARUGO_L_A371
UARUGO_L_A3B4:
  return

UARUGO_F_A3B5:
  // frame 19
  t1 = RL_8502(0, &v5)
  v7 = t1
  goto UARUGO_L_A439
UARUGO_L_A3C9:
  v11 = B[(v7 - v9) + (&v6)]
  v19 = (v11 * 24) + g_cargo
  if (!a0) goto UARUGO_L_A3ED
  goto UARUGO_L_A3F1
UARUGO_L_A3ED:
UARUGO_L_A3F1:
  v13 = W[L]
  v15 = W[L]
  if (!(v13 >= a1)) goto UARUGO_L_A409
  v13 = v13 - a1
  a1 = 0
  goto UARUGO_L_A412
UARUGO_L_A409:
  a1 = a1 - v13
  v13 = 0
UARUGO_L_A412:
  if (!a0) goto UARUGO_L_A41D
  goto UARUGO_L_A421
UARUGO_L_A41D:
UARUGO_L_A421:
  W[L] = v13
  if (!v15) goto UARUGO_L_A436
  if (v13) goto UARUGO_L_A436
  t2 = UARUGO_F_AC93(v11, a0)
UARUGO_L_A436:
UARUGO_L_A439:
  v9 = L
  if (v9 < v7) goto UARUGO_L_A3C9
  return a1

daily_supplies:
  // frame 8
  v8 = 0
  v4 = (a0 * 24) + g_cargo
  v2 = (((W[(a0 * 7) + $EB96]) * a1) / 100) + 1
  if (!B[v4]) goto UARUGO_L_A472
  v6 = ((B[v4] - 1) * 2) + $E970
UARUGO_L_A472:
  if (!(a1 >= 50)) goto UARUGO_L_A493
  t1 = RL_8962((B[v4 + 22]) + ((a1 - 50) / 10), 100)
  goto UARUGO_L_A4C5
UARUGO_L_A493:
  t2 = RL_8962(B[v4 + 22], (50 - a1) >> 1)
  B[v4 + 22] = (B[v4 + 22]) - t2
  if (!B[v4]) goto UARUGO_L_A4C6
  t3 = RL_8962(B[v6], (50 - a1) / 10)
UARUGO_L_A4C5:
  B[v6] = L
UARUGO_L_A4C6:
  if (!W[a2]) goto UARUGO_L_A4E8
  t4 = RL_8962(W[a2], v2)
  W[a2] = W[a2] - t4
  if (W[a2]) goto UARUGO_L_A528
  t5 = UARUGO_F_AC93(a0, a3)
  goto UARUGO_L_A528
UARUGO_L_A4E8:
  t6 = UARUGO_F_A3B5(a3, v2)
  if (!t6) goto UARUGO_L_A528
  t7 = rand(3)
  t8 = RL_8962(B[v4 + 22], t7 + 20)
  B[v4 + 22] = (B[v4 + 22]) - t8
  if (!B[v4]) goto UARUGO_L_A528
  t9 = rand(2)
  t10 = RL_8962(B[v6], 5 - t9)
  B[v6] = B[v6] - t10
UARUGO_L_A528:
  return

UARUGO_F_A529:
  // frame 19
  t1 = RF_5F1C()
  t2 = RL_8502(0, &v5)
  v11 = t2
  v7 = &v5
  v9 = (&v5) + v11
  goto UARUGO_L_A64C
UARUGO_L_A549:
  v15 = (B[v7] * 24) + g_cargo
  v17 = (B[v15] * 10) + $EAC0
  t3 = rand(2)
  t4 = RL_8962((((((B[v17 + 1]) * 2) + (B[v17 + 2])) / 60) + t3) + (B[v15 + 22]), 100)
  B[v15 + 22] = t4
  t5 = daily_supplies(B[v7], (byte)$E99A, v15 + 18, 0)
  t6 = daily_supplies(B[v7], (byte)$E99B, v15 + 16, 1)
  v19 = (B[v7] * 7) + g_ships
  if (!((B[v15 + 22]) < 20)) goto UARUGO_L_A5EE
  t7 = RL_8962(W[v19 + 4], (((20 - (B[v15 + 22])) * (W[v19 + 4])) / 100) + 1)
  W[v19 + 4] = (W[v19 + 4]) - t7
UARUGO_L_A5EE:
  if (!((W[v19 + 4]) < 5)) goto UARUGO_L_A647
  if (!B[v15]) goto UARUGO_L_A639
  t8 = RF_5F1C()
  t9 = RF_5C91()
  t10 = RF_2FB9(UARUGO_D_B332, 0)
  t11 = UARUGO_F_AC67(B[v7])
  t12 = RF_40DE(t11)
  t13 = RF_2FB9(UARUGO_D_B34D, 0)
  t14 = RF_5FDB()
  t15 = UARUGO_F_A208(B[v15])
  B[v19 + 6] = (B[v19 + 6]) & 191
  goto UARUGO_L_A647
UARUGO_L_A639:
  if (!(byte)$F193) goto UARUGO_L_A643
  goto UARUGO_L_A644
UARUGO_L_A643:
UARUGO_L_A644:
  (byte)g_ending = L
UARUGO_L_A647:
  v7 = v7 + 1
UARUGO_L_A64C:
  if (v7 < v9) goto UARUGO_L_A549
  t16 = RF_5FDB()
  return t16

UARUGO_F_A658:
  // frame 21
  t1 = RL_8502(0, &v9)
  v11 = t1
  v17 = 300
  v13 = 0
  v15 = 0
  v2 = &v9
  v4 = (&v9) + v11
  goto UARUGO_L_A6B5
UARUGO_L_A67D:
  v19 = (B[v2] * 24) + g_cargo
  v21 = (B[v19] * 7) + g_player_name_ptr
  if (!B[v19]) goto UARUGO_L_A6AD
  if (!((B[v21 + 3]) < v17)) goto UARUGO_L_A6AD
  v15 = v13
  v17 = B[v21 + 3]
UARUGO_L_A6AD:
  v13 = v13 + 1
  v2 = v2 + 1
UARUGO_L_A6B5:
  if (v2 < v4) goto UARUGO_L_A67D
  return B[v15 + (&v9)]

UARUGO_F_A6C5:
  // frame 4
  t1 = UARUGO_F_A658()
  v2 = t1
  v4 = (v2 * 7) + g_ships
  t2 = UARUGO_F_AA84()
  t3 = RF_5C3E()
  t4 = RF_2FB9(UARUGO_D_B352, 0)
  t5 = UARUGO_F_AC67(v2)
  t6 = RF_40DE(t5)
  t7 = RF_2FB9(UARUGO_D_B371, 0)
  t8 = RF_5C3E()
  t9 = RF_4B44(UARUGO_D_B376)
  B[v4 + 2] = 0
  return 0

UARUGO_F_A706:
  // frame 6
  t1 = UARUGO_F_A658()
  v2 = t1
  v6 = (v2 * 7) + g_ships
  v4 = B[(v2 * 24) + g_cargo]
  if (!v4) goto UARUGO_L_A757
  t2 = UARUGO_F_A9EA()
  t3 = RF_5C3E()
  t4 = RF_2FB9(UARUGO_D_B39B, 0)
  t5 = UARUGO_F_AC67(v2)
  t6 = RF_40DE(t5)
  t7 = RF_2FB9(UARUGO_D_B3A1, 0)
  t8 = UARUGO_F_A208(v4)
  B[v6 + 6] = (B[v6 + 6]) & 191
  goto UARUGO_L_A761
UARUGO_L_A757:
  t9 = RF_5C3E()
  t10 = RF_4B44(UARUGO_D_B3C3)
UARUGO_L_A761:
  return

UARUGO_F_A762:
  // frame 0
  t1 = sys56_anim_control(0, 0)
  t2 = UARUGO_F_AA23()
  t3 = RF_21EA(1, 1)
  t4 = RF_5C3E()
  if (!((byte)$F193 == 1)) goto UARUGO_L_A789
  goto UARUGO_L_A796
UARUGO_L_A789:
  t5 = RF_4B44(UARUGO_D_B40F)
  t6 = RF_5C3E()
UARUGO_L_A796:
  t7 = RF_4B44(UARUGO_D_B42F)
  t8 = RF_5FDB()
  t9 = UARUGO_F_ABA1()
  (byte)$F193 = 1
  (byte)$F194 = 0
  (byte)$F195 = 0
  return 0

UARUGO_F_A7AD:
  // frame 4
  v4 = ((byte)a0 * 24) + g_cargo
  v2 = ((byte)a0 * 7) + g_ships
  t1 = RL_8962(B[v2], 3)
  B[v2] = B[v2] - t1
  t2 = RL_8962(B[v2 + 1], 3)
  B[v2 + 1] = (B[v2 + 1]) - t2
  t3 = RL_8962(B[v2 + 2], 3)
  B[v2 + 2] = (B[v2 + 2]) - t3
  t4 = RL_8962(W[v2 + 4], 2)
  W[v2 + 4] = (W[v2 + 4]) - t4
  if (!B[v2]) goto UARUGO_L_A816
  if (!((W[v2 + 4]) < 5)) goto UARUGO_L_A860
UARUGO_L_A816:
  if (!B[v4]) goto UARUGO_L_A85C
  (byte)$F195 = (byte)$F195 + 1
  t5 = RF_5F1C()
  t6 = RF_5C91()
  t7 = RF_2FB9(UARUGO_D_B451, 0)
  t8 = UARUGO_F_AC67((byte)a0)
  t9 = RF_40DE(t8)
  t10 = RF_2FB9(UARUGO_D_B457, 0)
  t11 = RF_5FDB()
  t12 = UARUGO_F_A208(B[v4])
  B[v2 + 6] = (B[v2 + 6]) & 191
  goto UARUGO_L_A860
UARUGO_L_A85C:
  (byte)g_ending = 2
UARUGO_L_A860:
  return

UARUGO_F_A861:
  // frame 11
  t1 = RL_8502(0, &v9)
  v11 = t1
  v2 = &v9
  v4 = (&v9) + v11
  goto UARUGO_L_A899
UARUGO_L_A87C:
  t2 = rand((B[(B[v2] * 24) + $E9BD]) + 1)
  if (t2) goto UARUGO_L_A896
  t3 = UARUGO_F_A7AD(B[v2])
UARUGO_L_A896:
  v2 = v2 + 1
UARUGO_L_A899:
  if (v2 < v4) goto UARUGO_L_A87C
  return v2 < v4

UARUGO_F_A8A0:
  // frame 17
  if (!((byte)$F193 == 1)) goto UARUGO_L_A8BB
  if ((byte)$F194 % 10) goto UARUGO_L_A95C
  t1 = UARUGO_F_A861()
  goto UARUGO_L_A95C
UARUGO_L_A8BB:
  t2 = UARUGO_F_AC01()
  t3 = RF_5F1C()
  t4 = RF_5C91()
  if (!(byte)$F195) goto UARUGO_L_A8D0
  goto UARUGO_L_A8D3
UARUGO_L_A8D0:
UARUGO_L_A8D3:
  t5 = RF_4B44(UARUGO_D_B497)
  t6 = RF_5FDB()
  t7 = RL_8502(0, &v9)
  v11 = t7
  v2 = &v9
  v4 = (&v9) + v11
  goto UARUGO_L_A956
UARUGO_L_A8F0:
  v13 = (B[v2] * 24) + g_cargo
  v15 = (B[v13] * 10) + $EAC0
  v17 = (B[v13] * 7) + g_player_name_ptr
  if (!((B[v17 + 3]) < 50)) goto UARUGO_L_A938
  t8 = rand(50)
  t9 = RL_8962($EA60, (t8 + (W[v15 + 8])) + 200)
  W[v15 + 8] = t9
UARUGO_L_A938:
  t10 = rand(5)
  t11 = RL_8962(B[v13 + 22], t10 + 10)
  B[v13 + 22] = (B[v13 + 22]) - t11
  v2 = v2 + 1
UARUGO_L_A956:
  if (v2 < v4) goto UARUGO_L_A8F0
UARUGO_L_A95C:
  return

UARUGO_F_A95D:
  // frame 146
  v2 = 0
UARUGO_L_A964:
  v6 = v2 << 9
  v8 = v2 << 5
  v10 = v2 * 2
  v4 = a1
  v18 = a0
  goto UARUGO_L_A9B9
UARUGO_L_A976:
  v12 = W[v18] & $0E00
  v14 = W[v18] & 224
  v16 = W[v18] & 14
  if (!(v12 < v6)) goto UARUGO_L_A991
  v12 = v6
UARUGO_L_A991:
  if (!(v14 < v8)) goto UARUGO_L_A999
  v14 = v8
UARUGO_L_A999:
  if (!(v16 < v10)) goto UARUGO_L_A9A1
  v16 = v10
UARUGO_L_A9A1:
  W[(v4 * 2) + (&v146)] = (v12 + v14) + v16
  v4 = v4 + 1
  v18 = v18 + 2
UARUGO_L_A9B9:
  if (v4 < (a1 + a2)) goto UARUGO_L_A976
  t1 = sys3_palette_dma((a1 * 2) + (&v146), 126, a1, a2)
  if (!a3) goto UARUGO_L_A9E0
  t2 = sys16_wait_frames(a3)
UARUGO_L_A9E0:
  v2 = v2 + 1
  if (v2 < 8) goto UARUGO_L_A964
  return v2 < 8

UARUGO_F_A9EA:
  // frame 4
  v2 = (byte)$EA8E >> 2
  t1 = UARUGO_F_A95D((((byte)$F164 << 7) + (v2 << 5)) + $22D0, 32, 16, 0)
  t2 = RF_3EC3(17, 2, 0)
  t3 = sys16_wait_frames(3)
  t4 = RF_5BBB(v2)
  return t4

UARUGO_F_AA23:
  // frame 2
  t1 = RF_21CA(24)
  t2 = sys16_wait_frames(3)
  v2 = 0
UARUGO_L_AA37:
  t3 = RF_3EC3(17, 2, 0)
  t4 = RF_3EC3(17, 4, 0)
  t5 = RF_3EC3(18, 2, 0)
  t6 = RF_3EC3(18, 4, 0)
  t7 = sys16_wait_frames(3)
  t8 = RF_3EC3(19, 4, 0)
  t9 = RF_5BBB((byte)$EA8E / 5)
  t10 = sys16_wait_frames(2)
  v2 = v2 + 1
  if (v2 < 3) goto UARUGO_L_AA37
  t11 = RF_229B()
  return t11

UARUGO_F_AA84:
  // frame 26
  v26 = g_fleets
  v2 = (((B[v26 + 2]) * 2) << 3) + 16
  v4 = (((B[v26 + 3]) * 2) << 3) + (W[((byte)$F28C * 2) + UARUGO_D_B4B8])
  v6 = (B[v26 + 8]) & 7
  v8 = v6 / 2
  if ((B[v26 + 15]) & 1) goto UARUGO_L_AAD7
  t1 = RF_3FC8(g_fh_cbmap0, RD_21BA, 126, &v20, 8)
  v12 = 2
  goto UARUGO_L_AAEF
UARUGO_L_AAD7:
  t2 = RF_3FC8(g_fh_cbmap0, (v6 * 2) + $21AA, 126, &v20, 2)
  v12 = 1
UARUGO_L_AAEF:
  v10 = L
  v24 = 16
UARUGO_L_AAF3:
  if (!(v24 % 2)) goto UARUGO_L_AB0C
  goto UARUGO_L_AB0D
UARUGO_L_AB0C:
UARUGO_L_AB0D:
  if (!(v24 % 2)) goto UARUGO_L_AB20
  goto UARUGO_L_AB21
UARUGO_L_AB20:
UARUGO_L_AB21:
  t3 = sys9_metasprite_set(22, L + v2, L + v4, v12, v12, &v20, v10, 126)
  t4 = sys16_wait_frames(2)
  v24 = v24 - 1
  if (v24) goto UARUGO_L_AAF3
  t5 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  return t5

UARUGO_F_AB4A:
  // frame 0
  t1 = sys55_sprite_anim_stream(0, 2, 640, a0, 4, 40, 0, $EC9E, 16)
  t2 = sys55_sprite_anim_stream(1, 2, 644, a0, 0, 0, 0, $ED1E, 16)
  t3 = sys55_sprite_anim_stream(2, 2, 648, a0, 0, 0, 0, $ED9E, 16)
  t4 = sys55_sprite_anim_stream(3, 2, 652, a0, 0, 0, 15, $EE1E, 16)
  return t4

UARUGO_F_ABA1:
  // frame 6
  v6 = $D800
  v4 = 0
UARUGO_L_ABAC:
  v2 = 0
UARUGO_L_ABAE:
  if (!(v4 & 1)) goto UARUGO_L_ABBE
  goto UARUGO_L_ABC1
UARUGO_L_ABBE:
UARUGO_L_ABC1:
  t1 = sys23_memcpy_long(126, L, 127, v6, 4)
  v6 = v6 + 4
  v2 = v2 + 1
  if (v2 < 15) goto UARUGO_L_ABAE
  v4 = v4 + 1
  if (v4 < 29) goto UARUGO_L_ABAC
  t2 = sys6_tilemap_copy(2, 2, 1, 28, 28, $D800, 127)
  t3 = RF_3EC3(19, 4, 0)
  t4 = UARUGO_F_AB4A(1)
  return t4

UARUGO_F_AC01:
  // frame 0
  t1 = RF_5F1C()
  t2 = sys56_anim_control(0, 0)
  (byte)$F193 = 0
  t3 = RF_5F56()
  t4 = RF_3E7E(1, 0)
  t5 = RF_5BBB((byte)$EA8E / 5)
  t6 = RF_58B6(1, ((byte)(g_zone_attr+2) >> 3) & 3, ((byte)(g_zone_attr+2) >> 6) & 7)
  t7 = RF_59A3((byte)$F274)
  t8 = RF_21EA(t7, 1)
  return t8

UARUGO_F_AC4C:
  // frame 0
  t1 = RF_2FB9(UARUGO_D_B4D6, 1)
  t2 = RF_40DE(a1)
  t3 = RF_3619(UARUGO_D_B4DE, a0)
  return t3

UARUGO_F_AC67:
  // frame 0
  t1 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  return t1

UARUGO_F_AC7C:
  // frame 0
  t1 = RF_5F1C()
  t2 = RF_5C91()
  t3 = RF_2FB9(UARUGO_D_B4E5, 1)
  t4 = RF_5FDB()
  return t4

UARUGO_F_AC93:
  // frame 0
  t1 = RF_5C91()
  t2 = RF_2FB9(UARUGO_D_B50B, 0)
  t3 = UARUGO_F_AC67(a0)
  t4 = RF_40DE(t3)
  if (!a1) goto UARUGO_L_ACB7
  goto UARUGO_L_ACBA
UARUGO_L_ACB7:
UARUGO_L_ACBA:
  t5 = RF_3608(UARUGO_D_B511, L)
  return t5

UARUGO_F_ACC3:
  // frame 4
  if (!(g_fame < $C350)) goto UARUGO_L_ACFF
  v2 = ((byte)g_port * 14) + g_ports
  t1 = rand(100)
  v4 = (t1 + (((W[v2 + 4]) + W[v2]) >> 1)) + g_fame
  t2 = RL_8962(v4, $C350)
  g_fame = t2
UARUGO_L_ACFF:
  return

port_discovered:
  // frame 19
  v13 = (a0 * 5) + $150A
  t1 = RL_884E(v13)
  v11 = t1
  if (!(a0 < 50)) goto UARUGO_L_AD8B
  t2 = RL_8502(0, &v5)
  v7 = t2
  goto UARUGO_L_AD81
UARUGO_L_AD2C:
  v19 = ((B[v9 + (&v5)]) * 24) + g_cargo
  v17 = (B[v19] * 7) + g_player_name_ptr
  v15 = (B[v19] * 10) + $EAC0
  if (!((B[v17 + 3]) < 50)) goto UARUGO_L_AD7E
  t3 = RL_8962($EA60, (((v11 + 1) * (v11 + 1)) * 30) + (W[v15 + 8]))
  W[v15 + 8] = t3
UARUGO_L_AD7E:
UARUGO_L_AD81:
  v9 = L
  if (v9 < v7) goto UARUGO_L_AD2C
UARUGO_L_AD8B:
  if (!(g_fame < $C350)) goto UARUGO_L_ADBF
  if (!(a0 < 50)) goto UARUGO_L_ADAF
  goto UARUGO_L_ADB7
UARUGO_L_ADAF:
UARUGO_L_ADB7:
  t4 = RL_8962(L, $C350)
  g_fame = t4
UARUGO_L_ADBF:
  return

UARUGO_F_ADC0:
  // frame 0
  t1 = RF_5F1C()
  t2 = RF_5C91()
  t3 = (*(W[(((byte)$F192 - 1) * 2) + UARUGO_D_B536]))()
  (byte)$F192 = 0
  t4 = RF_5FDB()
  return t4
UARUGO_L_ADDE:

