S_NWAKA_F_B803:
  // frame 0
  t1 = S_NWAKA_F_B95F()
  $F9A8 = t1
  return t1

S_NWAKA_F_B80F:
  // frame 0
  t1 = RF_60CE(8, 1)
  return t1

S_NWAKA_F_B81B:
  // frame 1
  t1 = RF_4F65(2, 6, 28, 14, 0, 0)
  $EF66 = -1
  t2 = RF_2F8F(6, 8)
  t3 = RF_2FB9(S_NWAKA_D_BA62, 0)
  t4 = $960C(3, 15, 10, 1, 9, $20FA)
  goto S_NWAKA_L_B888
S_NWAKA_L_B84E:
  t5 = RF_2F8F((((byte)v1 / 5) * 13) + 4, (((byte)v1 % 5) * 2) + 10)
  W[((byte)v1 * 2) + a2] = W[((B[(byte)v1 + a1]) * 7) + g_player_name_ptr]
  t6 = RF_40DE(W[((byte)v1 * 2) + a2])
S_NWAKA_L_B888:
  (byte)v1 = L
  if ((byte)v1 < (byte)a0) goto S_NWAKA_L_B84E
  return (byte)v1 < (byte)a0

S_NWAKA_F_B898:
  // frame 8
  t1 = S_NWAKA_F_B80F()
  t2 = RF_609A(1)
  t3 = RF_2FB9(S_NWAKA_D_BA79, 0)
  t4 = RF_40DE(a1)
  t5 = RF_2F8F(8, 25)
  t6 = RF_3CFF()
  v2 = t6
  if (!v2) goto S_NWAKA_L_B95D
  v4 = $E99C
  goto S_NWAKA_L_B8E3
S_NWAKA_L_B8C9:
  if (!(B[v4] == (byte)a0)) goto S_NWAKA_L_B8DC
  B[v4] = 255
  goto S_NWAKA_L_B8F7
S_NWAKA_L_B8DC:
  v4 = v4 + 1
S_NWAKA_L_B8E3:
  (byte)v7 = L
  if (!((byte)v7 < 10)) goto S_NWAKA_L_B8F7
  if (B[v4] != 255) goto S_NWAKA_L_B8C9
S_NWAKA_L_B8F7:
  v4 = $E99C
  v6 = $E99C
  (byte)v7 = 0
  (byte)v8 = 0
  goto S_NWAKA_L_B927
S_NWAKA_L_B906:
  if (!(B[v4] != 255)) goto S_NWAKA_L_B91D
  B[v6] = B[v4]
  v6 = v6 + 1
  (byte)v8 = (byte)v8 + 1
S_NWAKA_L_B91D:
  v4 = v4 + 1
  (byte)v7 = (byte)v7 + 1
S_NWAKA_L_B927:
  if ((byte)v7 < 10) goto S_NWAKA_L_B906
  (byte)v7 = (byte)v8
  goto S_NWAKA_L_B947
S_NWAKA_L_B938:
  B[v6] = 255
  (byte)v7 = (byte)v7 + 1
  v6 = v6 + 1
S_NWAKA_L_B947:
  if ((byte)v7 < 10) goto S_NWAKA_L_B938
  B[(((byte)a0 - 1) * 2) + $E971] = (byte)g_port
S_NWAKA_L_B95D:
  return v2

S_NWAKA_F_B95F:
  // frame 66
  t1 = RF_4221(&v12)
  (byte)v63 = t1
  t2 = RF_4293(&v22)
  (byte)v64 = t2
  if (!(byte)v63) goto S_NWAKA_L_B98C
  if (!((byte)v63 == (byte)v64)) goto S_NWAKA_L_B99D
S_NWAKA_L_B98C:
  t3 = S_NWAKA_F_B80F()
  t4 = RF_609A(1)
  t5 = RF_4B44(S_NWAKA_D_BA8C)
  return 0
S_NWAKA_L_B99D:
  t6 = $97B0(2, 2, 28, 18)
  t7 = $9662()
  t8 = S_NWAKA_F_B81B((byte)v63, &v12, &v62)
  (byte)$EF65 = 240
S_NWAKA_L_B9C0:
  v66 = 0
  t9 = S_NWAKA_F_B80F()
  t10 = RF_60B2()
  t11 = RF_2FB9(S_NWAKA_D_BAA8, 1)
  t12 = RF_3787(S_NWAKA_D_BAC1, (byte)v63, 3, 10, 13, 2, 5, 1)
  v2 = t12
  if (!(v2 != (-1))) goto S_NWAKA_L_BA4F
  v2 = v2 - 1
  t13 = RF_4190(0)
  t14 = RF_4190(B[v2 + (&v12)])
  if (!(t14 == t13)) goto S_NWAKA_L_BA21
  t15 = S_NWAKA_F_B898(B[v2 + (&v12)], W[(v2 * 2) + (&v62)])
  v66 = t15
  goto S_NWAKA_L_BA4F
S_NWAKA_L_BA21:
  t16 = S_NWAKA_F_B80F()
  t17 = RF_60B2()
  t18 = RF_2FB9(S_NWAKA_D_BAC2, 0)
  t19 = RF_40DE(W[(v2 * 2) + (&v62)])
  t20 = RF_2FB9(S_NWAKA_D_BAD6, 0)
  $F18A = $F18A - 1
  t21 = RF_472D()
S_NWAKA_L_BA4F:
  if (v66) goto S_NWAKA_L_BA5B
  if (!(v2 == (-1))) goto S_NWAKA_L_B9C0
S_NWAKA_L_BA5B:
  t22 = $97BE()
  return v66

