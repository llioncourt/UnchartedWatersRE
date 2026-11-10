S_TOBAKU_F_B803:
  // frame 0
  t1 = S_TOBAKU_F_B99F()
  $F9A8 = t1
  return t1

S_TOBAKU_F_B80F:
  // frame 2
  t1 = RF_60CE(0, 0)
  t2 = RF_609A(1)
  t3 = RF_4B44(S_TOBAKU_D_B9F6)
  if (!((B[((byte)g_port * 14) + $E6BF]) < 20)) goto S_TOBAKU_L_B83E
  t4 = rand(3)
  if (t4) goto S_TOBAKU_L_B883
S_TOBAKU_L_B83E:
  if (((W[((byte)g_port * 14) + g_ports]) / 2) < 100) goto S_TOBAKU_L_B883
  if (g_player_gold >= 59000) goto S_TOBAKU_L_B883
  t5 = rand(20)
  if (g_player_gold < (100 - t5)) goto S_TOBAKU_L_B883
  t6 = rand(3)
  if (!((byte)$EA88 > (t6 + 4))) goto S_TOBAKU_L_B8A7
S_TOBAKU_L_B883:
  if (!((byte)$EA88 > 4)) goto S_TOBAKU_L_B895
  t7 = RF_60B2()
  goto S_TOBAKU_L_B89C
S_TOBAKU_L_B895:
  t8 = RF_60B2()
S_TOBAKU_L_B89C:
  t9 = RF_2FB9(S_TOBAKU_D_BA43, 1)
  t10 = RF_3DDF(1)
  return 1
S_TOBAKU_L_B8A7:
  (byte)v1 = 0
  goto S_TOBAKU_L_B8CB
S_TOBAKU_L_B8AF:
  if (!((byte)$EF68 & (B[(byte)v2 + S_TOBAKU_D_B9F0]))) goto S_TOBAKU_L_B8C7
  (byte)v1 = (byte)v1 + 1
S_TOBAKU_L_B8C7:
S_TOBAKU_L_B8CB:
  (byte)v2 = L
  if ((byte)v2 < 6) goto S_TOBAKU_L_B8AF
  if ((byte)v1 < 3) goto S_TOBAKU_L_B8E7
  t11 = rand(30)
  if (t11) goto S_TOBAKU_L_B913
S_TOBAKU_L_B8E7:
  if (!((byte)v1 < 3)) goto S_TOBAKU_L_B8F5
  goto S_TOBAKU_L_B8FB
S_TOBAKU_L_B8F5:
  t12 = rand(2)
S_TOBAKU_L_B8FB:
  (byte)v1 = L
  t13 = RF_60B2()
  t14 = RF_3619(S_TOBAKU_D_BA7D, (byte)v1)
  t15 = RF_3DDF(1)
  return 1
S_TOBAKU_L_B913:
  $F99E = 33
  return 0

S_TOBAKU_F_B91A:
  // frame 0
  t1 = RF_60CE(0, 0)
  t2 = RF_609A(1)
  t3 = RF_4B44(S_TOBAKU_D_BAA5)
  if (!((B[((byte)g_port * 14) + $E6BF]) < 20)) goto S_TOBAKU_L_B949
  t4 = rand(2)
  if (t4) goto S_TOBAKU_L_B974
S_TOBAKU_L_B949:
  t5 = rand(10)
  if (g_player_gold < (60 - t5)) goto S_TOBAKU_L_B974
  if (g_player_gold >= 59000) goto S_TOBAKU_L_B974
  if (!((byte)$EA88 > 7)) goto S_TOBAKU_L_B998
S_TOBAKU_L_B974:
  if (!((byte)$EA88 > 5)) goto S_TOBAKU_L_B986
  t6 = RF_60B2()
  goto S_TOBAKU_L_B98D
S_TOBAKU_L_B986:
  t7 = RF_60B2()
S_TOBAKU_L_B98D:
  t8 = RF_2FB9(S_TOBAKU_D_BB02, 1)
  t9 = RF_3DDF(1)
  return 1
S_TOBAKU_L_B998:
  $F99E = 34
  return 0

S_TOBAKU_F_B99F:
  // frame 2
  t1 = RF_60EE()
  t2 = RF_609A(1)
  t3 = RF_2FB9(S_TOBAKU_D_BB4B, 1)
  t4 = RF_484C(8, 23, 8, 1, S_TOBAKU_D_BB32, 2, 1)
  (byte)v2 = t4
  if (!((byte)v2 != 255)) goto S_TOBAKU_L_B9EB
  t5 = (*(W[((byte)v2 * 2) + S_TOBAKU_D_BB36]))()
  if (!t5) goto S_TOBAKU_L_B9E5
  (byte)v2 = 255
  goto S_TOBAKU_L_B9EB
S_TOBAKU_L_B9E5:
  (byte)$EF65 = 240
S_TOBAKU_L_B9EB:
  return (byte)v2

