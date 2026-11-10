S_PK_F_B803:
  // frame 0
  t1 = S_PK_F_CBAD()
  return t1

S_PK_F_B80C:
  // frame 0
  t1 = sys5_tilemap_write(1, a0, a1, 2, 3, 0)
  return t1

S_PK_F_B81D:
  // frame 4
  v2 = 0
S_PK_L_B824:
  v4 = 0
S_PK_L_B826:
  B[((v2 * 13) + a0) + v4] = (v4 << 4) | v2
  v4 = v4 + 1
  if (v4 < 13) goto S_PK_L_B826
  v2 = v2 + 1
  if (v2 < 4) goto S_PK_L_B824
  return v2 < 4

S_PK_F_B849:
  // frame 0
  t1 = RF_3DD1(3)
  return t1

S_PK_F_B854:
  // frame 0
  t1 = $B1A4()
  return t1

S_PK_F_B85D:
  // frame 14
  v4 = 0
  goto S_PK_L_B899
S_PK_L_B868:
  if (!v6) goto S_PK_L_B897
  if (!(v6 != 3)) goto S_PK_L_B897
  if (!(v6 != 2)) goto S_PK_L_B897
  if (!((byte)$EF68 & (1 << v6))) goto S_PK_L_B897
  B[v4 + (&v14)] = W[(v6 * 2) + S_PK_D_D284]
  v4 = v4 + 1
S_PK_L_B897:
S_PK_L_B899:
  v6 = L
  if (v6 < 8) goto S_PK_L_B868
  v2 = 0
  goto S_PK_L_B8CA
S_PK_L_B8A6:
  t1 = rand(v4)
  v8 = t1
  if ((1 << v8) & v2) goto S_PK_L_B8A6
  B[a0 + v6] = B[v8 + (&v14)]
  v2 = v2 | (1 << v8)
S_PK_L_B8CA:
  v6 = L
  if (v6 < 3) goto S_PK_L_B8A6
  B[a0 + 3] = 0
  return 0

S_PK_F_B8D7:
  // frame 0
  t1 = RF_3DD1(1)
  return t1

S_PK_F_B8E2:
  // frame 1
  (byte)v1 = ((byte)a0 >> 4) & 15
  if (!((byte)v1 == 12)) goto S_PK_L_B8FD
  goto S_PK_L_B901
S_PK_L_B8FD:
S_PK_L_B901:
  (byte)v1 = L
  t1 = $B1C3((byte)a1, (byte)a2, (byte)v1, (byte)a0 & 15)
  return t1

S_PK_F_B91B:
  // frame 0
  if (!(a2 == 1)) goto S_PK_L_B92F
  t1 = $B14C(a0, a1)
  goto S_PK_L_B948
S_PK_L_B92F:
  a2 = a2 - 2
  t2 = RF_3DF1(1, a0, a1, 3, 3, W[(a2 * 2) + S_PK_D_D294], g_fh_cbmap0)
S_PK_L_B948:
  return

S_PK_F_B949:
  // frame 16
  t1 = sys36_memset_long(126, &v12, 0, 4)
  v14 = 1
S_PK_L_B95E:
  W[(((B[a0 + v14]) & 15) * 2) + (&v12)] = (W[(((B[a0 + v14]) & 15) * 2) + (&v12)]) + 1
  v14 = v14 + 1
  if (v14 < 5) goto S_PK_L_B95E
  v2 = 0
  goto S_PK_L_B99C
S_PK_L_B97E:
  if (!(v2 < (W[(v14 * 2) + (&v12)]))) goto S_PK_L_B99A
  v2 = W[(v14 * 2) + (&v12)]
  v4 = v14
S_PK_L_B99A:
S_PK_L_B99C:
  v14 = L
  if (v14 < 4) goto S_PK_L_B97E
  v14 = 0
  v16 = 0
  goto S_PK_L_B9CB
S_PK_L_B9A9:
  if (!(((B[a0 + v14]) & 15) != v4)) goto S_PK_L_B9C8
  B[a1 + v16] = B[a0 + v14]
  B[a0 + v14] = 255
  v16 = v16 + 1
S_PK_L_B9C8:
  v14 = v14 + 1
S_PK_L_B9CB:
  if (v14 < 5) goto S_PK_L_B9A9
  return v16

S_PK_F_B9D3:
  // frame 6
  v6 = 0
  v2 = B[a0] >> 4
  goto S_PK_L_BA1E
S_PK_L_B9E3:
  if (!(((B[a0 + v4]) >> 4) != (v2 + 1))) goto S_PK_L_B9FF
  if (((B[a0 + v4]) >> 4) != (v2 + 2)) goto S_PK_L_BA15
S_PK_L_B9FF:
  B[a1 + v6] = B[(a0 + v4) - 1]
  B[(a0 + v4) - 1] = 255
  v6 = v6 + 1
S_PK_L_BA15:
  v2 = (B[a0 + v4]) >> 4
S_PK_L_BA1E:
  v4 = L
  if (v4 < 5) goto S_PK_L_B9E3
  return v6

S_PK_F_BA27:
  // frame 30
  t1 = sys36_memset_long(126, &v26, 0, 26)
  v28 = 0
S_PK_L_BA3E:
  W[((((B[a0 + v28]) >> 4) & 15) * 2) + (&v26)] = (W[((((B[a0 + v28]) >> 4) & 15) * 2) + (&v26)]) + 1
  v28 = v28 + 1
  if (v28 < 5) goto S_PK_L_BA3E
  v28 = 0
  v30 = 0
  goto S_PK_L_BA9A
S_PK_L_BA66:
  if (!((W[((((B[a0 + v28]) >> 4) & 15) * 2) + (&v26)]) == 1)) goto S_PK_L_BA95
  B[a1 + v30] = B[a0 + v28]
  B[a0 + v28] = 255
  v30 = v30 + 1
S_PK_L_BA95:
  v28 = v28 + 1
S_PK_L_BA9A:
  if (v28 < 5) goto S_PK_L_BA66
  return v30

S_PK_F_BAA4:
  // frame 1
  t1 = rand(5)
  if (!t1) goto S_PK_L_BAB5
  goto S_PK_L_BAB6
S_PK_L_BAB5:
S_PK_L_BAB6:
  (byte)v1 = L
  t2 = sys36_memset_long(126, a0, 255, (byte)v1)
  return (byte)v1

S_PK_F_BACD:
  // frame 15
  t1 = S_PK_F_CF0C(a0, &v9)
  v15 = t1
  v11 = (byte)v9
  if (!v15) goto S_PK_L_BAE9
  return 0
S_PK_L_BAE9:
  if (!(v11 == 80)) goto S_PK_L_BB00
  t2 = rand(3)
  if (t2) goto S_PK_L_BB00
  t3 = S_PK_F_B949(a0, a1)
  return t3
S_PK_L_BB00:
  if (!(v11 == 60)) goto S_PK_L_BB17
  t4 = rand(4)
  if (t4) goto S_PK_L_BB17
  t5 = S_PK_F_B949(a0, a1)
  return t5
S_PK_L_BB17:
  t6 = S_PK_F_CF8D(a0, &v9)
  v15 = t6
  v13 = (byte)v9
  if (!v15) goto S_PK_L_BB2E
  return 0
S_PK_L_BB2E:
  if (!((byte)v9 == 80)) goto S_PK_L_BB46
  t7 = rand(4)
  if (t7) goto S_PK_L_BB46
  t8 = S_PK_F_B9D3(a0, a1)
  return t8
S_PK_L_BB46:
  if (!((byte)v9 >= 60)) goto S_PK_L_BB5E
  t9 = rand(3)
  if (t9) goto S_PK_L_BB5E
  t10 = S_PK_F_B9D3(a0, a1)
  return t10
S_PK_L_BB5E:
  t11 = S_PK_F_D020(a0, &v9)
  if ((byte)v5) goto S_PK_L_BB81
  if (!(byte)v6) goto S_PK_L_BB79
  if ((byte)v7) goto S_PK_L_BB81
S_PK_L_BB79:
  if (!((byte)v7 == 2)) goto S_PK_L_BB88
S_PK_L_BB81:
  t12 = S_PK_F_BA27(a0, a1)
  return t12
S_PK_L_BB88:
  if ((byte)v6) goto S_PK_L_BB94
  if (!(byte)v7) goto S_PK_L_BB9B
S_PK_L_BB94:
  t13 = S_PK_F_BA27(a0, a1)
  return t13
S_PK_L_BB9B:
  if (v11 >= 80) goto S_PK_L_BBAB
  if (!(v13 >= 60)) goto S_PK_L_BBCD
S_PK_L_BBAB:
  t14 = rand(2)
  if (!t14) goto S_PK_L_BBCD
  if (!(v11 > (v13 + 20))) goto S_PK_L_BBC6
  t15 = S_PK_F_B949(a0, a1)
  return t15
S_PK_L_BBC6:
  t16 = S_PK_F_B9D3(a0, a1)
  return t16
S_PK_L_BBCD:
  t17 = S_PK_F_BAA4(a0, a1)
  return t17

S_PK_F_BBD4:
  // frame 3
  $F18C = 16
  t1 = RF_4F65(15, 17, 15, 7, 0, 0)
  t2 = RF_2F8F(16, 18)
  t3 = RF_3C4E(S_PK_D_D29C, a0, a1, 1)
  v3 = t3
  $F18C = 0
  t4 = RF_2FB9(S_PK_D_D2A6, 1)
  return v3

S_PK_F_BC0C:
  // frame 2
  t1 = S_PK_F_BACD(a0, a1)
  v2 = t1
  return v2

S_PK_F_BC1A:
  // frame 0
  t1 = RF_3DF1(1, (a0 * 2) + 9, 23 - a1, 2, 2, $73D0, g_fh_cbmap0)
  return t1

S_PK_F_BC36:
  // frame 0
  t1 = sys5_tilemap_write(1, (a0 * 2) + 9, 23 - a1, 2, 2, 0)
  return t1

S_PK_F_BC4E:
  // frame 18
  (byte)$F196 = 0
  v16 = 0
  t1 = sys36_memset_long(126, &v12, 0, 10)
  t2 = sys5_tilemap_write(3, 10, 24, 8, 1, $2000)
  t3 = RF_362A(0)
  v2 = t3
  t4 = RF_3D91(v2, 8)
S_PK_L_BC81:
  t5 = S_PK_F_BC36(v16, 0)
  t6 = S_PK_F_BC1A(v16, 0)
  t7 = S_PK_F_B8D7()
  t8 = RF_362A(0)
  if (t8 == 128) goto S_PK_L_BC81
  v14 = 8
S_PK_L_BC9E:
  t9 = RF_362A(0)
  v2 = t9
  t10 = RF_3D91(v2, v14)
  switch (v2) {4 cases}

S_PK_F_BDC8:
  // frame 4
  if (!a5) goto S_PK_L_BDE1
  t1 = RF_4F65(a0, a1, 10, (a2 * a4) + 2, 0, 0)
S_PK_L_BDE1:
  goto S_PK_L_BE00
S_PK_L_BDE5:
  t2 = RF_2F8F(a0 + 2, ((v2 * a4) + a1) + 2)
  t3 = RF_40DE(W[(v2 * 2) + a3])
S_PK_L_BE00:
  v2 = L
  if (v2 < a2) goto S_PK_L_BDE5
  t4 = RF_3787(S_PK_D_D2AA, a2, a0 + 1, a1 + 2, 0, a4, a2, 1)
  v4 = t4
  if (!(v4 == (-1))) goto S_PK_L_BE28
  goto S_PK_L_BE2A
S_PK_L_BE28:
S_PK_L_BE2A:
  return

S_PK_F_BE2B:
  // frame 14
  v2 = S_PK_D_D2AB
  (byte)v3 = 3
  if (!(a0 > (W[a1] + W[a2]))) goto S_PK_L_BE48
  return 0
S_PK_L_BE48:
  if (!a4) goto S_PK_L_BE55
  v2 = S_PK_D_D2AD
  (byte)v3 = 2
S_PK_L_BE55:
  v6 = 0
  v8 = 0
  goto S_PK_L_BE70
S_PK_L_BE5B:
  if (!(v6 != 3)) goto S_PK_L_BE6D
  if (W[(v6 * 2) + a6]) goto S_PK_L_BE6D
  v8 = v8 + 1
S_PK_L_BE6D:
  v6 = v6 + 1
S_PK_L_BE70:
  if (v6 < 4) goto S_PK_L_BE5B
S_PK_L_BE76:
  v12 = 0
  v14 = 1
  if (!(v8 != 3)) goto S_PK_L_BEAA
S_PK_L_BE80:
  t1 = S_PK_F_BDC8(21, 17, (byte)v3, v2, 2, v14)
  (byte)v4 = t1
  v14 = 0
  if ((byte)v4 == 255) goto S_PK_L_BE80
  if (!a4) goto S_PK_L_BEAE
  goto S_PK_L_BEAB
S_PK_L_BEAA:
S_PK_L_BEAB:
  (byte)v4 = L
S_PK_L_BEAE:
  switch ((byte)v4) {3 cases}

S_PK_F_BF32:
  // frame 31
  v15 = 0
  v17 = 0
  goto S_PK_L_BF5B
S_PK_L_BF3F:
  if (!(v15 != a5)) goto S_PK_L_BF56
  if (W[(v15 * 2) + a8]) goto S_PK_L_BF56
  v17 = v17 + 1
S_PK_L_BF56:
  v15 = v15 + 1
S_PK_L_BF5B:
  if (v15 < 4) goto S_PK_L_BF3F
  if (!(v17 != 3)) goto S_PK_L_C0C5
  if (!((W[a1] + W[a2]) < a0)) goto S_PK_L_BF77
  return 0
S_PK_L_BF77:
  v15 = 0
S_PK_L_BF7A:
  t1 = S_PK_F_D0ED((v15 * 5) + a3, &v9, 0)
  W[(v15 * 2) + (&v27)] = t1
  v15 = v15 + 1
  if (v15 < 4) goto S_PK_L_BF7A
  v13 = 0
  v29 = v27
  goto S_PK_L_BFD1
S_PK_L_BFAC:
  if (!(v29 < (W[(v15 * 2) + (&v27)]))) goto S_PK_L_BFCE
  v29 = W[(v15 * 2) + (&v27)]
  v13 = v15
S_PK_L_BFCE:
S_PK_L_BFD1:
  v15 = L
  if (v15 < 4) goto S_PK_L_BFAC
  t2 = S_PK_F_D0ED((a5 * 5) + a3, &v9, 0)
  v19 = t2
  v11 = (byte)v9
  if (v11 == 255) goto S_PK_L_C001
  if (!(v13 == 3)) goto S_PK_L_C050
S_PK_L_C001:
  if (!(v13 != 3)) goto S_PK_L_C010
  t3 = rand(3)
  if (t3) goto S_PK_L_C01F
S_PK_L_C010:
  if (!(v13 == 3)) goto S_PK_L_C065
  t4 = rand(2)
  if (!t4) goto S_PK_L_C065
S_PK_L_C01F:
  t5 = rand(W[a1])
  if (!((t5 + (W[a1] * 2)) < a0)) goto S_PK_L_C03B
  t6 = rand(3)
  if (!t6) goto S_PK_L_C03B
  return 0
S_PK_L_C03B:
  if (!(W[a1] == a0)) goto S_PK_L_C04B
  t7 = S_PK_F_CD4C(a5, 1, a6)
S_PK_L_C04B:
  return W[a1] == a0
S_PK_L_C050:
  t8 = rand(W[(v11 * 2) + S_PK_D_D2C9])
  if (t8) goto S_PK_L_C065
  return W[a1] == a0
S_PK_L_C065:
  if (a4) goto S_PK_L_C0B3
  if (!(v11 == 255)) goto S_PK_L_C07B
  t9 = rand(15)
  goto S_PK_L_C087
S_PK_L_C07B:
  t10 = rand(15)
S_PK_L_C087:
  v31 = L
  if (!(v31 > (a0 * 3))) goto S_PK_L_C09A
  v31 = v31 >> 1
S_PK_L_C09A:
  if (!(v13 == a5)) goto S_PK_L_C0BB
  t11 = rand(3)
  if (!t11) goto S_PK_L_C0BB
  t12 = rand(a7)
  goto S_PK_L_C0B9
S_PK_L_C0B3:
S_PK_L_C0B9:
  v31 = L
S_PK_L_C0BB:
  if (!((W[a1] + v31) < a0)) goto S_PK_L_C0CD
S_PK_L_C0C5:
  v31 = a0 - W[a1]
S_PK_L_C0CD:
  if (!((W[a1] + v31) > a7)) goto S_PK_L_C0E1
  v31 = a7 - W[a1]
S_PK_L_C0E1:
  if (!((W[a1] + v31) > a0)) goto S_PK_L_C0F1
  goto S_PK_L_C0F4
S_PK_L_C0F1:
S_PK_L_C0F4:
  t13 = S_PK_F_CD4C(a5, 1, a6)
  W[a1] = W[a1] + v31
  if (!(W[a2] < v31)) goto S_PK_L_C10F
  goto S_PK_L_C116
S_PK_L_C10F:
S_PK_L_C116:
  W[a2] = L
  return 1

S_PK_F_C119:
  // frame 4
  t1 = S_PK_F_B91B(W[((a0 * 2) * 2) + S_PK_D_D2DD], W[((a0 * 2) * 2) + S_PK_D_D2DF], 5)
  if (a0) goto S_PK_L_C13D
  goto S_PK_L_C13F
S_PK_L_C13D:
S_PK_L_C13F:
  v4 = L
  v2 = 0
S_PK_L_C142:
  t2 = S_PK_F_B80C(((W[((a0 * 2) * 2) + S_PK_D_D2DD]) + (v2 * 2)) + v4, W[((a0 * 2) * 2) + S_PK_D_D2DF])
  v2 = v2 + 1
  if (v2 < 5) goto S_PK_L_C142
  return v2 < 5

S_PK_F_C169:
  // frame 162
  t1 = S_PK_F_B85D(&v162)
  v144 = 0
S_PK_L_C17A:
  W[(v144 * 2) + (&v122)] = 0
  t2 = rand($03E8)
  W[(v144 * 2) + (&v140)] = t2 + $03E8
  v144 = v144 + 1
  if (v144 < 3) goto S_PK_L_C17A
  v142 = (((W[((byte)g_port * 14) + g_ports]) / 100) * 100) / 4
  v116 = 0
  v134 = g_player_gold
  t3 = S_PK_F_B81D(&v52)
  t4 = rand(4)
  v92 = t4
S_PK_L_C1D9:
  v90 = 0
  v96 = (v92 + 1) & 3
  goto S_PK_L_C297
S_PK_L_C1E7:
  W[(v96 * 2) + (&v156)] = 1
  t5 = rand(15)
  if (!((W[(v96 * 2) + (&v140)]) < (t5 + 60))) goto S_PK_L_C247
  if (!(v96 == 3)) goto S_PK_L_C227
  t6 = RF_604A(3, 1, 1, 28, 28, $2000)
  t7 = S_PK_F_CE83(1)
  goto S_PK_L_C240
S_PK_L_C227:
  t8 = RF_604A(3, 1, 1, 28, 28, $2000)
  t9 = S_PK_F_CD4C(v96, 7, &v162)
S_PK_L_C240:
  g_player_gold = v134
  return v134
S_PK_L_C247:
  W[(v96 * 2) + (&v132)] = 5
  W[(v96 * 2) + (&v140)] = (W[(v96 * 2) + (&v140)]) - 5
  t10 = RF_2F8F(W[((v96 * 2) * 2) + S_PK_D_D2FF], W[((v96 * 2) * 2) + S_PK_D_D301])
  t11 = RF_3619(S_PK_D_D381, W[(v96 * 2) + (&v132)])
  v96 = (v96 + 1) & 3
S_PK_L_C297:
  v144 = L
  if (v144 < 4) goto S_PK_L_C1E7
  t12 = RF_2F8F(11, 26)
  t13 = RF_3608(S_PK_D_D389, v134)
  t14 = $B104(&v52)
  v144 = 0
S_PK_L_C2BF:
  v96 = (v92 + 1) & 3
  goto S_PK_L_C356
S_PK_L_C2CA:
  v90 = v90 + 1
  B[((v96 * 5) + v144) + (&v72)] = B[((v90 + 1) - 1) + (&v52)]
  if (!(v96 == 3)) goto S_PK_L_C30C
  t15 = S_PK_F_B8E2(B[v144 + (&v57)], (v144 * 2) + S_PK_D_D31B, S_PK_D_D31D)
  goto S_PK_L_C34B
S_PK_L_C30C:
  t16 = $B14C((W[((v96 * 2) * 2) + S_PK_D_D30F]) + (v144 * 2), W[((v96 * 2) * 2) + S_PK_D_D311])
  if (!(v144 > 1)) goto S_PK_L_C34B
  t17 = rand(10 - v144)
  if (t17) goto S_PK_L_C34B
  t18 = S_PK_F_CD4C(v96, 4, &v162)
S_PK_L_C34B:
  v96 = (v96 + 1) & 3
S_PK_L_C356:
  v146 = L
  if (v146 < 4) goto S_PK_L_C2CA
  v144 = v144 + 1
  if (v144 < 5) goto S_PK_L_C2BF
  v96 = v92
  t19 = RF_3DF1(1, (W[((v96 * 2) * 2) + S_PK_D_D2FF]) + 10, W[((v96 * 2) * 2) + S_PK_D_D301], 2, 2, $73C8, g_fh_cbmap0)
  v144 = 0
S_PK_L_C39A:
  t20 = S_PK_F_CEB1((v144 * 5) + (&v72))
  v144 = v144 + 1
  if (v144 < 4) goto S_PK_L_C39A
  v146 = 0
S_PK_L_C3BD:
  t21 = S_PK_F_B8E2(B[v146 + (&v57)], (v146 * 2) + S_PK_D_D31B, S_PK_D_D31D)
  v146 = v146 + 1
  if (v146 < 5) goto S_PK_L_C3BD
  v96 = (v92 + 1) & 3
  goto S_PK_L_C5D9
S_PK_L_C3F2:
  if (!(v96 == 3)) goto S_PK_L_C49D
  t22 = S_PK_F_BC4E(&v57, &v77)
  v98 = t22
  goto S_PK_L_C42A
S_PK_L_C40E:
  v90 = v90 + 1
  B[v146 + (&v57)] = B[((v90 + 1) - 1) + (&v52)]
S_PK_L_C42A:
  v146 = L
  if (v146 < 5) goto S_PK_L_C40E
  goto S_PK_L_C449
S_PK_L_C439:
  t23 = S_PK_F_B80C((v146 * 2) + 9, 19)
S_PK_L_C449:
  v146 = L
  if (v146 < v98) goto S_PK_L_C439
  if (!v98) goto S_PK_L_C464
  t24 = S_PK_F_B91B(20, 20, v98)
S_PK_L_C464:
  t25 = S_PK_F_CEB1(&v57)
  v146 = 0
S_PK_L_C470:
  t26 = S_PK_F_B8E2(B[v146 + (&v57)], (v146 * 2) + S_PK_D_D31B, S_PK_D_D31D)
  v146 = v146 + 1
  if (v146 < 5) goto S_PK_L_C470
  goto S_PK_L_C5CE
S_PK_L_C49D:
  t27 = S_PK_F_BC0C((v96 * 5) + (&v72), &v77)
  v98 = t27
  v146 = 0
  v100 = 0
  goto S_PK_L_C52D
S_PK_L_C4BB:
  v88 = B[((v96 * 5) + v146) + (&v72)]
  if ((v88 & 240) > 192) goto S_PK_L_C4E2
  if (!((v88 & 15) > 3)) goto S_PK_L_C526
S_PK_L_C4E2:
  t28 = S_PK_F_B8D7()
  t29 = S_PK_F_B80C((W[((v96 * 2) * 2) + S_PK_D_D30F]) + (v146 * 2), W[((v96 * 2) * 2) + S_PK_D_D311])
  v100 = v100 + 1
  v90 = v90 + 1
  B[((v96 * 5) + v146) + (&v72)] = B[((v90 + 1) - 1) + (&v52)]
S_PK_L_C526:
  v146 = v146 + 1
S_PK_L_C52D:
  if (v146 < 5) goto S_PK_L_C4BB
  if (!v98) goto S_PK_L_C574
  if (v96) goto S_PK_L_C559
  goto S_PK_L_C56F
S_PK_L_C559:
S_PK_L_C56F:
  t30 = S_PK_F_B91B(L, W[((v96 * 2) * 2) + S_PK_D_D311], v98)
S_PK_L_C574:
  t31 = S_PK_F_CEB1((v96 * 5) + (&v72))
  v146 = 0
S_PK_L_C587:
  t32 = $B14C((W[((v96 * 2) * 2) + S_PK_D_D30F]) + (v146 * 2), W[((v96 * 2) * 2) + S_PK_D_D311])
  t33 = rand(5)
  if (t33) goto S_PK_L_C5BC
  t34 = S_PK_F_CD4C(v96, 4, &v162)
  goto S_PK_L_C5BF
S_PK_L_C5BC:
  t35 = S_PK_F_B849()
S_PK_L_C5BF:
  v146 = v146 + 1
  if (v146 < 5) goto S_PK_L_C587
S_PK_L_C5CE:
  v96 = (v96 + 1) & 3
S_PK_L_C5D9:
  v144 = L
  if (v144 < 4) goto S_PK_L_C3F2
  v102 = 0
  v106 = v132
S_PK_L_C5EC:
  v158 = 0
  v96 = (v92 + 1) & 3
  v144 = 0
  goto S_PK_L_C77E
S_PK_L_C5FE:
  if (!(W[(v96 * 2) + (&v156)])) goto S_PK_L_C770
  if (!(v96 == 3)) goto S_PK_L_C68B
  t36 = $97B0(15, 17, 16, 8)
  if (!v102) goto S_PK_L_C63B
  if (v132 > v126) goto S_PK_L_C63B
  if (v130 > v126) goto S_PK_L_C63B
  if (!(v128 > v126)) goto S_PK_L_C674
S_PK_L_C63B:
  t37 = S_PK_F_BE2B(v106, (v96 * 2) + (&v132), (v96 * 2) + (&v140), (v96 * 5) + (&v72), v102, v142, &v156)
  W[(v96 * 2) + (&v156)] = t37
S_PK_L_C674:
  t38 = $97BE()
  t39 = RF_2F8F(11, 26)
  t40 = RF_3608(S_PK_D_D392, v134)
  goto S_PK_L_C6C6
S_PK_L_C68B:
  t41 = S_PK_F_BF32(v106, (v96 * 2) + (&v132), (v96 * 2) + (&v140), &v72, v102, v96, &v162, v142, &v156, v134)
  W[(v96 * 2) + (&v156)] = t41
S_PK_L_C6C6:
  if (!(v106 < (W[(v96 * 2) + (&v132)]))) goto S_PK_L_C6E4
  v106 = W[(v96 * 2) + (&v132)]
S_PK_L_C6E4:
  if (W[(v96 * 2) + (&v156)]) goto S_PK_L_C746
  if (!(v96 == 3)) goto S_PK_L_C735
  if (!(v106 <= ((W[(v96 * 2) + (&v132)]) + (W[(v96 * 2) + (&v140)])))) goto S_PK_L_C740
  if (!(v96 == 3)) goto S_PK_L_C740
  t42 = rand(20)
  if (t42) goto S_PK_L_C740
  t43 = rand(3)
  goto S_PK_L_C73C
S_PK_L_C735:
S_PK_L_C73C:
  t44 = S_PK_F_CD4C(v96, 2, &v162)
S_PK_L_C740:
  t45 = S_PK_F_C119(v96)
S_PK_L_C746:
  t46 = RF_2F8F(W[((v96 * 2) * 2) + S_PK_D_D2FF], W[((v96 * 2) * 2) + S_PK_D_D301])
  t47 = RF_3619(S_PK_D_D39B, W[(v96 * 2) + (&v132)])
S_PK_L_C770:
  v144 = v144 + 1
  v96 = (v96 + 1) & 3
S_PK_L_C77E:
  if (v144 < 4) goto S_PK_L_C5FE
  v102 = 1
  v96 = (v92 + 1) & 3
  v144 = 0
  v100 = 0
  goto S_PK_L_C7D0
S_PK_L_C799:
  if (!(W[(v96 * 2) + (&v156)])) goto S_PK_L_C7C2
  if (!((W[(v96 * 2) + (&v132)]) != v106)) goto S_PK_L_C7BD
  v158 = 1
  goto S_PK_L_C7D8
S_PK_L_C7BD:
  v100 = v100 + 1
S_PK_L_C7C2:
  v144 = v144 + 1
  v96 = (v96 + 1) & 3
S_PK_L_C7D0:
  if (v144 < 4) goto S_PK_L_C799
S_PK_L_C7D8:
  if (!(v100 == 1)) goto S_PK_L_C7E3
  v158 = 0
S_PK_L_C7E3:
  if (v158) goto S_PK_L_C5EC
  v96 = (v92 + 1) & 3
  v144 = 0
  goto S_PK_L_C890
S_PK_L_C7F7:
  if (!(W[(v96 * 2) + (&v156)])) goto S_PK_L_C876
  v146 = 0
S_PK_L_C808:
  t48 = S_PK_F_B8E2(B[((v96 * 5) + v146) + (&v72)], (W[((v96 * 2) * 2) + S_PK_D_D30F]) + (v146 * 2), W[((v96 * 2) * 2) + S_PK_D_D311])
  v146 = v146 + 1
  if (v146 < 5) goto S_PK_L_C808
  t49 = S_PK_F_D0ED((v96 * 5) + (&v72), &v86, 1)
  W[(v96 * 2) + (&v114)] = t49
  if (!((byte)v86 == 255)) goto S_PK_L_C882
  (byte)v86 = 8
  goto S_PK_L_C882
S_PK_L_C876:
  W[(v96 * 2) + (&v114)] = 0
S_PK_L_C882:
  v144 = v144 + 1
  v96 = (v96 + 1) & 3
S_PK_L_C890:
  if (v144 < 4) goto S_PK_L_C7F7
  v104 = v92
  v96 = 0
  v106 = v114
  v146 = 0
S_PK_L_C8A7:
  if (!(W[(v146 * 2) + (&v156)])) goto S_PK_L_C91A
  if (!(v106 <= (W[(v146 * 2) + (&v114)]))) goto S_PK_L_C91A
  if (v106 < (W[(v146 * 2) + (&v114)])) goto S_PK_L_C908
  t50 = S_PK_F_D020((v96 * 5) + (&v72), &v86)
  t51 = S_PK_F_D020((v146 * 5) + (&v72), &v86)
  if (!(t51 > t50)) goto S_PK_L_C91A
S_PK_L_C908:
  v96 = v146
  v106 = W[(v146 * 2) + (&v114)]
S_PK_L_C91A:
  v146 = v146 + 1
  if (v146 < 4) goto S_PK_L_C8A7
  v92 = v96
  v144 = 0
S_PK_L_C931:
  if (!(W[(v144 * 2) + (&v156)])) goto S_PK_L_C9D1
  t52 = S_PK_F_D0ED((v144 * 5) + (&v72), &v86, 1)
  W[(v144 * 2) + (&v114)] = t52
  if (!((byte)v86 == 255)) goto S_PK_L_C96E
  (byte)v86 = 8
S_PK_L_C96E:
  if (v144) goto S_PK_L_C978
  goto S_PK_L_C979
S_PK_L_C978:
S_PK_L_C979:
  v148 = L
  t53 = RF_2F8F((W[((v144 * 2) * 2) + S_PK_D_D30F]) - v148, (W[((v144 * 2) * 2) + S_PK_D_D311]) - 2)
  if ((byte)v86) goto S_PK_L_C9B2
  if (!((byte)v85 == 2)) goto S_PK_L_C9B2
  t54 = RF_2FB9(S_PK_D_D3A3, 1)
S_PK_L_C9B2:
  $F18E = $F18E + 1
  t55 = RF_3619(S_PK_D_D3A5, W[((byte)v86 * 2) + S_PK_D_D2ED])
  $F18E = $F18E - 1
S_PK_L_C9D1:
  v144 = v144 + 1
  if (v144 < 4) goto S_PK_L_C931
  if (!(v96 != 3)) goto S_PK_L_C9F2
  t56 = S_PK_F_CD4C(v96, 3, &v162)
S_PK_L_C9F2:
  if (!((((((W[(v96 * 2) + (&v140)]) + v132) + v130) + v128) + v126) > 60000)) goto S_PK_L_CA43
  goto S_PK_L_CA5E
S_PK_L_CA43:
S_PK_L_CA5E:
  W[(v96 * 2) + (&v140)] = L
  if (!(v96 == 3)) goto S_PK_L_CAB2
  t57 = rand(50)
  if (!(v134 >= (((W[((byte)g_port * 14) + g_ports]) + t57) + g_player_gold))) goto S_PK_L_CAB2
S_PK_L_CA8B:
  t58 = rand(3)
  goto S_PK_L_CB3E
S_PK_L_CA94:
  if (!(v96 != 3)) goto S_PK_L_CAA5
  goto S_PK_L_CB3E
S_PK_L_CAA5:
  t59 = S_PK_F_CE83(0)
  goto S_PK_L_CA8B
S_PK_L_CAB2:
  if ((W[(v96 * 2) + (&v140)]) == $EA60) goto S_PK_L_CA94
  W[(v92 * 2) + (&v122)] = (W[(v92 * 2) + (&v122)]) + 1
  t60 = RF_2F8F(11, 26)
  t61 = RF_3608(S_PK_D_D3A8, v134)
  t62 = $97B0(21, 18, 10, 6)
  t63 = RF_4F65(21, 18, 10, 6, 0, 0)
  $F18C = 22
  t64 = RF_2F8F(22, 19)
  t65 = RF_2FB9(S_PK_D_D3B1, 1)
  t66 = RF_3CFF()
  v88 = t66
  t67 = RF_2FB9(S_PK_D_D3BA, 1)
  $F18C = 0
  t68 = $97BE()
  if (v88) goto S_PK_L_CB51
  t69 = rand(100)
  if (!(((t69 + g_player_gold) + 100) < v134)) goto S_PK_L_CB49
S_PK_L_CB3D:
S_PK_L_CB3E:
  t70 = S_PK_F_CD4C(3, 10, &v162)
  g_player_gold = v134
  return v134
S_PK_L_CB49:
  goto S_PK_L_CB3D
S_PK_L_CB51:
  v144 = 0
S_PK_L_CB55:
  t71 = sys5_tilemap_write(1, (W[((v144 * 2) * 2) + S_PK_D_D2FF]) - 1, (W[((v144 * 2) * 2) + S_PK_D_D301]) - 5, 14, 7, 0)
  t72 = sys5_tilemap_write(3, (W[((v144 * 2) * 2) + S_PK_D_D2FF]) - 1, (W[((v144 * 2) * 2) + S_PK_D_D301]) - 5, 14, 7, $2000)
  v144 = v144 + 1
  if (v144 < 4) goto S_PK_L_CB55
  goto S_PK_L_C1D9

S_PK_F_CBAD:
  // frame 6
  t1 = $B1A4()
  v2 = g_player_gold
  t2 = S_PK_F_C169()
  v4 = g_player_gold
  if (!(v2 < v4)) goto S_PK_L_CBEB
  v6 = (W[((byte)g_port * 14) + g_ports]) / 3
  t3 = rand(v6 / 4)
  (byte)$EA88 = (byte)$EA88 + ((v4 - v2) / (t3 + v6))
S_PK_L_CBEB:
  return 1

S_PK_F_CBED:
  // frame 4
  v4 = B[(a0 * 2) + S_PK_D_D749]
  v2 = B[(a0 * 2) + S_PK_D_D74A]
  t1 = RF_4D41(v4, v2 - 1, 15, 8)
  if (!(a0 == 2)) goto S_PK_L_CC5E
  t2 = sys5_tilemap_write(3, v4 + 1, v2 - 1, 13, 1, $2000)
  t3 = RF_4E29(v4 + 10, v2, B[a2 + a0], 1)
  t4 = sys5_tilemap_write(3, v4, v2, 10, 6, $2000)
  t5 = RF_50D1(v4, v2, 10, 6, 3, 0)
  t6 = RF_2F8F(v4 + 1, v2 + 1)
  $F18C = v4 + 1
  goto S_PK_L_CCA7
S_PK_L_CC5E:
  t7 = sys5_tilemap_write(3, v4, v2 - 1, 14, 1, $2000)
  t8 = RF_4E29(v4, v2, B[a2 + a0], 1)
  t9 = sys5_tilemap_write(3, v4 + 5, v2, 10, 6, $2000)
  t10 = RF_50D1(v4 + 5, v2, 10, 6, 4, 0)
  t11 = RF_2F8F(v4 + 6, v2 + 1)
  $F18C = v4 + 6
S_PK_L_CCA7:
  t12 = RF_2FB9(S_PK_D_D753, 0)
  t13 = RF_2FB9(a1, 0)
  $F18C = 0
  return 0

S_PK_F_CCB6:
  // frame 10
S_PK_L_CCBB:
  a1 = a1 + 1
  t1 = RF_36C5(B[(a1 + 1) - 1])
  v4 = t1
  switch (v4) {8 cases}

S_PK_F_CD4C:
  // frame 20
  switch ((byte)a1) [0, 13, S_PK_L_CD8A]

S_PK_F_CE83:
  // frame 0
  t1 = RF_430C()
  t2 = RF_60CE(t1, 0)
  t3 = RF_609A(1)
  if (!(byte)a0) goto S_PK_L_CEA3
  goto S_PK_L_CEA6
S_PK_L_CEA3:
S_PK_L_CEA6:
  t4 = RF_2FB9(L, 1)
  t5 = RF_3DDF(1)
  return t5

S_PK_F_CEB1:
  // frame 8
  v4 = 0
S_PK_L_CEB8:
  (byte)v2 = B[a0 + v4]
  v6 = v4
  v8 = v4
  goto S_PK_L_CEDE
S_PK_L_CEC5:
  if (!((byte)v2 > (B[a0 + v6]))) goto S_PK_L_CEDB
  v8 = v6
  (byte)v2 = B[a0 + v6]
S_PK_L_CEDB:
  v6 = v6 + 1
S_PK_L_CEDE:
  if (v6 < 5) goto S_PK_L_CEC5
  if (!(v4 != v8)) goto S_PK_L_CF02
  (byte)v1 = B[a0 + v4]
  B[a0 + v4] = B[a0 + v8]
  B[a0 + v8] = (byte)v1
S_PK_L_CF02:
  v4 = v4 + 1
  if (v4 < 5) goto S_PK_L_CEB8
  return v4 < 5

S_PK_F_CF0C:
  // frame 9
  t1 = sys36_memset_long(126, &v7, 0, 4)
  v9 = 0
S_PK_L_CF22:
  B[((B[a0 + v9]) & 15) + (&v7)] = (B[((B[a0 + v9]) & 15) + (&v7)]) + 1
  v9 = v9 + 1
  if (v9 < 5) goto S_PK_L_CF22
  (byte)v3 = 0
  v2 = 0
  goto S_PK_L_CF7A
S_PK_L_CF49:
  if (!((byte)v3 < (B[v9 + (&v7)]))) goto S_PK_L_CF67
  (byte)v3 = B[v9 + (&v7)]
S_PK_L_CF67:
  if (!((B[v9 + (&v7)]) == 5)) goto S_PK_L_CF77
  v2 = 1
S_PK_L_CF77:
S_PK_L_CF7A:
  v9 = L
  if (v9 < 4) goto S_PK_L_CF49
  B[a1] = (byte)v3 * 20
  return v2

S_PK_F_CF8D:
  // frame 10
  v10 = 0
S_PK_L_CF94:
  B[v10 + (&v8)] = ((B[a0 + v10]) >> 4) & 15
  v10 = v10 + 1
  if (v10 < 5) goto S_PK_L_CF94
  t1 = S_PK_F_CEB1(&v8)
  B[a1] = 20
  (byte)v3 = (byte)v8
  goto S_PK_L_D013
S_PK_L_CFC4:
  if (((byte)v3 + 1) == (B[v10 + (&v8)])) goto S_PK_L_CFE8
  if (!(((byte)v3 + 2) == (B[v10 + (&v8)]))) goto S_PK_L_D006
S_PK_L_CFE8:
  if (!(((byte)v3 + 1) == (B[v10 + (&v8)]))) goto S_PK_L_CFFF
  goto S_PK_L_D000
S_PK_L_CFFF:
S_PK_L_D000:
  B[a1] = B[a1] + 5
S_PK_L_D006:
  (byte)v3 = B[v10 + (&v8)]
S_PK_L_D013:
  v10 = L
  if (v10 < 5) goto S_PK_L_CFC4
  return B[a1] == 100

S_PK_F_D020:
  // frame 21
  t1 = sys36_memset_long(126, &v17, 0, 13)
  v2 = 0
S_PK_L_D035:
  B[(((B[a0 + v2]) >> 4) & 15) + (&v17)] = (B[(((B[a0 + v2]) >> 4) & 15) + (&v17)]) + 1
  v2 = v2 + 1
  if (v2 < 5) goto S_PK_L_D035
  v2 = 0
S_PK_L_D052:
  B[a1 + v2] = 0
  v2 = v2 + 1
  if (v2 < 5) goto S_PK_L_D052
  v21 = 0
  v4 = 0
  v19 = 1
  goto S_PK_L_D0E3
S_PK_L_D06D:
  B[(B[v2 + (&v17)]) + a1] = (B[(B[v2 + (&v17)]) + a1]) + 1
  if (!((B[v2 + (&v17)]) == 1)) goto S_PK_L_D0A6
  v21 = v21 + (v2 * v19)
  if (!(v19 == $0533)) goto S_PK_L_D09F
  goto S_PK_L_D0A0
S_PK_L_D09F:
S_PK_L_D0A0:
  v19 = v19 * L
S_PK_L_D0A6:
  if (!((B[v2 + (&v17)]) == 2)) goto S_PK_L_D0BD
  B[(a1 + v4) + 5] = v2
  v4 = v4 + 1
S_PK_L_D0BD:
  if (!((B[v2 + (&v17)]) == 3)) goto S_PK_L_D0CF
  B[a1 + 7] = v2
S_PK_L_D0CF:
  if (!((B[v2 + (&v17)]) == 4)) goto S_PK_L_D0E1
  B[a1 + 8] = v2
S_PK_L_D0E1:
S_PK_L_D0E3:
  v2 = L
  if (v2 < 13) goto S_PK_L_D06D
  return v21

S_PK_F_D0ED:
  // frame 15
  v11 = 0
  t1 = S_PK_F_CF0C(a0, a1)
  v7 = t1
  t2 = S_PK_F_CF8D(a0, a1)
  v9 = t2
  v2 = 255
  if (!v7) goto S_PK_L_D123
  if (!v9) goto S_PK_L_D123
  if (!(((B[a0 + 4]) >> 4) == 12)) goto S_PK_L_D121
  goto S_PK_L_D122
S_PK_L_D121:
S_PK_L_D122:
  v2 = L
S_PK_L_D123:
  if (!(v2 == 255)) goto S_PK_L_D140
  if (v7) goto S_PK_L_D135
  if (!v9) goto S_PK_L_D140
S_PK_L_D135:
  if (!v7) goto S_PK_L_D13E
  goto S_PK_L_D13F
S_PK_L_D13E:
S_PK_L_D13F:
  v2 = L
S_PK_L_D140:
  if (!(v2 == 255)) goto S_PK_L_D17C
  t3 = S_PK_F_D020(a0, a1)
  v11 = t3
  if (!(B[a1 + 4])) goto S_PK_L_D15A
  goto S_PK_L_D17B
S_PK_L_D15A:
  if (!(B[a1 + 3])) goto S_PK_L_D16A
  if (!(B[a1 + 2])) goto S_PK_L_D16A
  goto S_PK_L_D17B
S_PK_L_D16A:
  if (!(B[a1 + 3])) goto S_PK_L_D174
  goto S_PK_L_D17B
S_PK_L_D174:
  if (!(B[a1 + 2])) goto S_PK_L_D17C
S_PK_L_D17B:
  v2 = L
S_PK_L_D17C:
  v13 = 0
  v15 = 0
  switch (v2) [0, 8, S_PK_L_D27B]

