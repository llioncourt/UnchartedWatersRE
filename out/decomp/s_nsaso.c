S_NSASO_F_B803:
  // frame 0
  t1 = S_NSASO_F_B80F()
  $F9A8 = t1
  return t1

S_NSASO_F_B80F:
  // frame 70
  t1 = RF_60EE()
  t2 = RF_609A(1)
  t3 = RF_4221(&v11)
  if (!(t3 == 10)) goto S_NSASO_L_B832
  t4 = RF_4B44(S_NSASO_D_BADC)
  return 0
S_NSASO_L_B832:
  (byte)v34 = 0
  v33 = &v31
  goto S_NSASO_L_B886
S_NSASO_L_B83F:
  (byte)v53 = B[(((byte)v1 + 1) * 7) + $E44A]
  if (!((B[((byte)v1 * 2) + $E971]) == (byte)g_port)) goto S_NSASO_L_B882
  if ((byte)v53 & 2) goto S_NSASO_L_B882
  if (!((byte)v53 & 1)) goto S_NSASO_L_B882
  B[v33] = (byte)v1 + 1
  v33 = v33 + 1
  (byte)v34 = (byte)v34 + 1
S_NSASO_L_B882:
S_NSASO_L_B886:
  (byte)v1 = L
  if ((byte)v1 < 20) goto S_NSASO_L_B83F
  if ((byte)v34) goto S_NSASO_L_B8A1
  t5 = RF_4B44(S_NSASO_D_BAF6)
  return 0
S_NSASO_L_B8A1:
  if (!((byte)v34 < 6)) goto S_NSASO_L_B8AF
  goto S_NSASO_L_B8B0
S_NSASO_L_B8AF:
S_NSASO_L_B8B0:
  (byte)v34 = L
  t6 = $97B0(2, 2, 28, 18)
  t7 = $9662()
  t8 = RF_4F65(11, 6, 14, 14, 0, 0)
  goto S_NSASO_L_B907
S_NSASO_L_B8CE:
  t9 = RF_2FB9(S_NSASO_D_BB13, 1)
  t10 = RF_2F8F(13, ((byte)v1 * 2) + 8)
  W[((byte)v1 * 2) + (&v46)] = W[((B[(byte)v1 + (&v31)]) * 7) + g_player_name_ptr]
  t11 = RF_40DE(W[((B[(byte)v1 + (&v31)]) * 7) + g_player_name_ptr])
S_NSASO_L_B907:
  (byte)v1 = L
  if ((byte)v1 < (byte)v34) goto S_NSASO_L_B8CE
  (byte)$EF65 = 240
  v66 = g_player_name_ptr
  v48 = g_hero_stats
  $EF66 = -1
  t12 = RF_609A(1)
  t13 = RF_60EE()
  t14 = RF_2FB9(S_NSASO_D_BB17, 1)
  v64 = 0
  t15 = RF_490C(12, 8, 2, (byte)v34)
  (byte)v53 = t15
  if (!((byte)v53 != 255)) goto S_NSASO_L_BA6F
  t16 = RF_60CE(0, 0)
  t17 = RF_60B2()
  t18 = RF_4B44(S_NSASO_D_BB26)
  t19 = RF_60CE(B[(byte)v53 + (&v31)], 0)
  v70 = (((B[(byte)v53 + (&v31)]) - 1) * 2) + $E970
  if (!(B[v70] < 40)) goto S_NSASO_L_BA62
  v68 = ((B[(byte)v53 + (&v31)]) * 7) + g_player_name_ptr
  v50 = ((B[(byte)v53 + (&v31)]) * 10) + g_hero_stats
  v56 = (B[v68 + 2]) + (B[v68 + 3])
  v58 = (B[v66 + 2]) + (B[v66 + 3])
  (byte)v1 = 0
  (byte)v54 = 0
  (byte)v51 = 0
  goto S_NSASO_L_BA03
S_NSASO_L_B9DC:
  if (!((B[(byte)v1 + v50]) > (byte)v51)) goto S_NSASO_L_B9FC
  (byte)v51 = B[(byte)v1 + v50]
  (byte)v54 = (byte)v1
S_NSASO_L_B9FC:
  (byte)v1 = (byte)v1 + 1
S_NSASO_L_BA03:
  if ((byte)v1 < 5) goto S_NSASO_L_B9DC
  (byte)v52 = B[(byte)v54 + v48]
  v60 = (byte)v51 * v56
  v62 = ((((byte)v52 * (byte)g_title) * v58) / 10) + ((byte)v52 * v58)
  t20 = rand(20)
  if (!(v60 > (t20 + v62))) goto S_NSASO_L_BA57
  t21 = RF_609A(1)
  t22 = RF_4B44(S_NSASO_D_BB46)
  goto S_NSASO_L_BA6D
S_NSASO_L_BA57:
  t23 = RF_609A(1)
  goto S_NSASO_L_BA68
S_NSASO_L_BA62:
  t24 = RF_60B2()
S_NSASO_L_BA68:
  t25 = RF_4B44(S_NSASO_D_BB78)
S_NSASO_L_BA6D:
  v64 = L
S_NSASO_L_BA6F:
  if (!v64) goto S_NSASO_L_BACB
  if (!(B[v70] < 20)) goto S_NSASO_L_BA8C
  t26 = rand(10)
  B[v70] = B[v70] + (t26 + 20)
S_NSASO_L_BA8C:
  v33 = $E99C
  goto S_NSASO_L_BAB8
S_NSASO_L_BA95:
  if (!(B[v33] == 255)) goto S_NSASO_L_BAAF
  B[v33] = B[(byte)v53 + (&v31)]
  goto S_NSASO_L_BAC3
S_NSASO_L_BAAF:
  v33 = v33 + 1
S_NSASO_L_BAB8:
  (byte)v1 = L
  if ((byte)v1 < 10) goto S_NSASO_L_BA95
S_NSASO_L_BAC3:
  B[v70 + 1] = 255
S_NSASO_L_BACB:
  t27 = $97BE()
  if (!((byte)v53 == 255)) goto S_NSASO_L_BADA
  return 0
S_NSASO_L_BADA:
  return 1
S_NSASO_D_BADC:

