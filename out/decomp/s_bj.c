S_BJ_F_B803:
  // frame 0
  t1 = S_BJ_F_BB7D()
  return t1

S_BJ_F_B80C:
  // frame 11
  v11 = 0
  v9 = 0
  goto S_BJ_L_B859
S_BJ_L_B819:
  if (!(v11 != 1)) goto S_BJ_L_B854
  if (!(v11 != 3)) goto S_BJ_L_B854
  if (!(v11 != 5)) goto S_BJ_L_B854
  if (!((byte)$EF68 & (B[v11 + S_BJ_D_C467]))) goto S_BJ_L_B854
  B[v9 + (&v6)] = B[v11 + S_BJ_D_C46D]
  v9 = v9 + 1
S_BJ_L_B854:
  v11 = v11 + 1
S_BJ_L_B859:
  if (v11 < 6) goto S_BJ_L_B819
  t1 = rand(v9)
  (byte)v7 = B[t1 + (&v6)]
  return (byte)v7

S_BJ_F_B874:
  // frame 0
  t1 = $B1A4()
  t2 = RF_4E29(5, 3, (byte)a0, 1)
  (byte)$F294 = 32
  t3 = RF_4E29(5, 16, 0, 1)
  return t3

S_BJ_F_B896:
  // frame 1
  (byte)v1 = ((byte)a0 >> 4) & 15
  t1 = $B1C3((byte)a1, (byte)a2, (byte)a0 & 15, (byte)v1)
  return t1

S_BJ_F_B8BC:
  // frame 0
  (byte)a0 = (byte)a0 & 15
  if ((byte)a0) goto S_BJ_L_B8D1
  return 0
S_BJ_L_B8D1:
  return 1

S_BJ_F_B8D3:
  // frame 1
  (byte)a0 = (byte)a0 & 15
  if (!(9 < (byte)a0)) goto S_BJ_L_B8F2
  if ((byte)a0 < 13) goto S_BJ_L_B8F8
S_BJ_L_B8F2:
  if ((byte)a0) goto S_BJ_L_B8FC
S_BJ_L_B8F8:
  goto S_BJ_L_B8FD
S_BJ_L_B8FC:
S_BJ_L_B8FD:
  (byte)v1 = L
  return (byte)v1

S_BJ_F_B904:
  // frame 1
  if (!(0 < (byte)a0)) goto S_BJ_L_B922
  if (!((byte)a0 < 10)) goto S_BJ_L_B922
  goto S_BJ_L_B958
S_BJ_L_B922:
  if (!(9 < (byte)a0)) goto S_BJ_L_B938
  if (!((byte)a0 < 13)) goto S_BJ_L_B938
  goto S_BJ_L_B958
S_BJ_L_B938:
  if ((byte)a0) goto S_BJ_L_B95B
  (byte)a0 = 11
  if (!(((byte)a0 + (byte)a1) <= 21)) goto S_BJ_L_B957
  goto S_BJ_L_B958
S_BJ_L_B957:
S_BJ_L_B958:
  (byte)v1 = L
S_BJ_L_B95B:
  return (byte)v1

S_BJ_F_B95F:
  // frame 1
  if (!(0 < (byte)a0)) goto S_BJ_L_B97D
  if (!((byte)a0 < 10)) goto S_BJ_L_B97D
  goto S_BJ_L_B990
S_BJ_L_B97D:
  if (!(9 < (byte)a0)) goto S_BJ_L_B993
  if (!((byte)a0 < 13)) goto S_BJ_L_B993
S_BJ_L_B990:
  (byte)v1 = L
S_BJ_L_B993:
  return (byte)v1

S_BJ_F_B997:
  // frame 7
  (byte)v7 = (byte)a0 + 1
S_BJ_L_B9A3:
  (byte)v7 = (byte)v7 - 1
  goto S_BJ_L_B9BE
S_BJ_L_B9AE:
  B[(byte)v5 + (&v4)] = 11
S_BJ_L_B9BE:
  (byte)v5 = L
  if ((byte)v5 < (byte)v7) goto S_BJ_L_B9AE
  goto S_BJ_L_B9E3
S_BJ_L_B9D3:
  B[(byte)v5 + (&v4)] = 1
S_BJ_L_B9E3:
  (byte)v5 = L
  if ((byte)v5 < (byte)a0) goto S_BJ_L_B9D3
  (byte)v6 = (byte)a1
  goto S_BJ_L_BA12
S_BJ_L_B9FC:
  (byte)v6 = (byte)v6 + (B[(byte)v5 + (&v4)])
S_BJ_L_BA12:
  (byte)v5 = L
  if ((byte)v5 < (byte)a0) goto S_BJ_L_B9FC
  if ((byte)v6 < 22) goto S_BJ_L_BA30
  if ((byte)v7) goto S_BJ_L_B9A3
S_BJ_L_BA30:
  return (byte)v6

S_BJ_F_BA34:
  // frame 2
  (byte)v1 = 0
  goto S_BJ_L_BA58
S_BJ_L_BA41:
  t1 = S_BJ_F_B95F(B[(byte)v2 + a0])
  (byte)v1 = (byte)v1 + t1
S_BJ_L_BA58:
  (byte)v2 = L
  if ((byte)v2 < (byte)a1) goto S_BJ_L_BA41
  if (!(byte)a2) goto S_BJ_L_BA7C
  t2 = S_BJ_F_B997((byte)a2, (byte)v1)
  (byte)v1 = t2
S_BJ_L_BA7C:
  return (byte)v1

S_BJ_F_BA80:
  // frame 5
  t1 = $97B0(1, 10, 10, 8)
S_BJ_L_BA8D:
  t2 = RF_4783(1, 10, 2, S_BJ_D_C473, 2)
  (byte)v3 = t2
  if ((byte)v3 == 255) goto S_BJ_L_BA8D
  t3 = $97BE()
  switch ((byte)v3) {2 cases}

S_BJ_F_BACC:
  // frame 2
  goto S_BJ_L_BB06
S_BJ_L_BAD5:
  goto S_BJ_L_BAF7
S_BJ_L_BAD9:
  B[(((byte)v1 * 13) + (byte)v2) + a0] = ((byte)v1 << 4) | (byte)v2
S_BJ_L_BAF7:
  (byte)v2 = L
  if ((byte)v2 < 13) goto S_BJ_L_BAD9
S_BJ_L_BB06:
  (byte)v1 = L
  if ((byte)v1 < 4) goto S_BJ_L_BAD5
  return (byte)v1 < 4

S_BJ_F_BB12:
  // frame 0
  t1 = RF_50D1(10, 3, 18, 6, 2, 0)
  t2 = RF_2F8F(11, 4)
  $F18C = 11
  t3 = RF_2FB9(S_BJ_D_C485, 1)
  t4 = RF_3619(S_BJ_D_C489, a0)
  $F18C = 0
  return 0

S_BJ_F_BB41:
  // frame 0
  t1 = sys5_tilemap_write(1, 10, 9, 17, 4, 0)
  t2 = sys5_tilemap_write(1, 10, 17, 17, 6, 0)
  t3 = sys5_tilemap_write(3, 10, 9, 17, 4, $2000)
  t4 = sys5_tilemap_write(3, 10, 17, 17, 6, $2000)
  return t4

S_BJ_F_BB7D:
  // frame 122
  t1 = S_BJ_F_B80C()
  (byte)v118 = t1
  t2 = S_BJ_F_B874((byte)v118)
  t3 = S_BJ_F_BACC(&v52)
  (byte)v73 = 0
  (byte)v74 = 1
  v115 = g_player_gold
S_BJ_L_BBA5:
  t4 = RF_2FB9(S_BJ_D_C494, 1)
  t5 = S_BJ_F_BB41()
  (byte)v72 = 0
  (byte)v79 = 0
  (byte)v80 = 0
  t6 = RF_2F8F(12, 23)
  t7 = RF_3619(S_BJ_D_C498, v115)
  if (!(v115 < 5)) goto S_BJ_L_BBEE
  t8 = rand(2)
  t9 = S_BJ_F_BB12(W[(t8 * 2) + S_BJ_D_C38F])
  t10 = RF_3DDF(1)
  g_player_gold = v115
  return v115
S_BJ_L_BBEE:
  t11 = $B104(&v52)
  v120 = 0
S_BJ_L_BBF9:
  v122 = 0
S_BJ_L_BBFC:
  (byte)v72 = (byte)v72 + 1
  B[((v122 * 2) + v120) + (&v56)] = B[(((byte)v72 + 1) - 1) + (&v52)]
  if (!((byte)v74 == v122)) goto S_BJ_L_BCE1
  (byte)v81 = (B[((v122 * 2) + v120) + (&v56)]) & 15
  B[v120 + (&v98)] = (byte)v81
  if (v120) goto S_BJ_L_BC54
  t12 = S_BJ_F_B896((byte)v54, S_BJ_D_C490, S_BJ_D_C492)
S_BJ_L_BC54:
  if (!(v120 == 1)) goto S_BJ_L_BD3F
  t13 = S_BJ_F_BB12(S_BJ_D_C2E6)
  if (!v115) goto S_BJ_L_BD3F
S_BJ_L_BC67:
  t14 = RF_2F8F(11, 6)
  if (!(v115 < 50)) goto S_BJ_L_BC7A
  goto S_BJ_L_BC7C
S_BJ_L_BC7A:
S_BJ_L_BC7C:
  t15 = RF_3C6D(S_BJ_D_C4A7, 5, L)
  v117 = t15
  if (v117 == (-1)) goto S_BJ_L_BC67
  if (!(v117 <= 10)) goto S_BJ_L_BC9C
  goto S_BJ_L_BCAD
S_BJ_L_BC9C:
  if (!(41 <= v117)) goto S_BJ_L_BCAA
  goto S_BJ_L_BCAD
S_BJ_L_BCAA:
S_BJ_L_BCAD:
  t16 = S_BJ_F_BB12(S_BJ_D_C313)
  t17 = RF_3DDF(1)
  v115 = v115 - v117
  t18 = RF_2F8F(11, 21)
  t19 = RF_3619(S_BJ_D_C4A8, v117)
  t20 = RF_2F8F(12, 23)
  t21 = RF_3619(S_BJ_D_C4B0, v115)
  goto S_BJ_L_BD3F
S_BJ_L_BCE1:
  (byte)v82 = (B[((v122 * 2) + v120) + (&v56)]) & 15
  B[v120 + (&v113)] = (byte)v82
  if (!((byte)v73 == v122)) goto S_BJ_L_BD30
  if (!(v120 == 1)) goto S_BJ_L_BD30
  t22 = S_BJ_F_B896(B[((v122 * 2) + v120) + (&v56)], (v120 * 2) + S_BJ_D_C48C, S_BJ_D_C48E)
  goto S_BJ_L_BD3F
S_BJ_L_BD30:
  t23 = $B14C((v120 * 2) + S_BJ_D_C48C, S_BJ_D_C48E)
S_BJ_L_BD3F:
  v122 = v122 + 1
  if (v122 < 2) goto S_BJ_L_BBFC
  t24 = S_BJ_F_B904((byte)v81, (byte)v79)
  (byte)v79 = (byte)v79 + t24
  t25 = S_BJ_F_B904((byte)v82, (byte)v80)
  (byte)v80 = (byte)v80 + t25
  v120 = v120 + 1
  if (v120 < 2) goto S_BJ_L_BBF9
  (byte)v83 = 0
  v120 = 0
S_BJ_L_BD86:
  t26 = S_BJ_F_B8D3(B[v120 + (&v56)])
  (byte)v83 = (byte)v83 + t26
  v120 = v120 + 1
  if (v120 < 2) goto S_BJ_L_BD86
  if ((byte)v83) goto S_BJ_L_BE00
  if (!((byte)v80 == 21)) goto S_BJ_L_BE00
  t27 = S_BJ_F_B896((byte)v56, S_BJ_D_C48C, S_BJ_D_C48E)
  t28 = S_BJ_F_BB12(S_BJ_D_C40D)
  t29 = RF_3DDF(1)
  t30 = rand(2)
  t31 = S_BJ_F_BB12(W[(t30 * 2) + S_BJ_D_C219])
  t32 = RF_3DDF(1)
  if (!(v115 < (v117 * 2))) goto S_BJ_L_BDF7
S_BJ_L_BDF2:
  v115 = L
  goto S_BJ_L_C112
S_BJ_L_BDF7:
  goto S_BJ_L_BDF2
S_BJ_L_BE00:
  t33 = S_BJ_F_B896((byte)v53, S_BJ_D_C490 + 2, S_BJ_D_C492)
  (byte)v83 = 0
  v120 = 0
S_BJ_L_BE17:
  t34 = S_BJ_F_B8D3(B[v120 + (&v54)])
  (byte)v83 = (byte)v83 + t34
  v120 = v120 + 1
  if (v120 < 2) goto S_BJ_L_BE17
  if ((byte)v83) goto S_BJ_L_BE88
  if (!((byte)v79 == 21)) goto S_BJ_L_BE88
  t35 = S_BJ_F_B896((byte)v56, S_BJ_D_C48C, S_BJ_D_C48E)
  t36 = S_BJ_F_BB12(S_BJ_D_C40B)
  t37 = RF_3DDF(1)
  t38 = rand(2)
  t39 = S_BJ_F_BB12(W[(t38 * 2) + S_BJ_D_C1E8])
  v117 = v117 * 3
  t40 = RL_8962(v115 + v117, $EA60)
  goto S_BJ_L_BDF2
S_BJ_L_BE88:
  v120 = 2
  (byte)v78 = 0
S_BJ_L_BE8F:
  t41 = S_BJ_F_BB12(S_BJ_D_C2E8)
  t42 = S_BJ_F_BA80()
  (byte)v83 = t42
  if ((byte)v83) goto S_BJ_L_BF52
  if (!((byte)v78 < 5)) goto S_BJ_L_BF3F
  (byte)v72 = (byte)v72 + 1
  (byte)v81 = B[(((byte)v72 + 1) - 1) + (&v52)]
  B[v120 + (&v98)] = (byte)v81 & 15
  t43 = S_BJ_F_B896((byte)v81, (v120 * 2) + S_BJ_D_C490, S_BJ_D_C492)
  v120 = v120 + 1
  (byte)v75 = 0
  goto S_BJ_L_BF1A
S_BJ_L_BEEB:
  t44 = S_BJ_F_B8BC(B[v122 + (&v98)])
  if (!t44) goto S_BJ_L_BF17
  B[(byte)v75 + (&v71)] = B[v122 + (&v98)]
  (byte)v75 = (byte)v75 + 1
S_BJ_L_BF17:
S_BJ_L_BF1A:
  v122 = L
  if (v122 < v120) goto S_BJ_L_BEEB
  t45 = S_BJ_F_BA34(&v71, (byte)v75, v120 - (byte)v75)
  (byte)v79 = t45
  goto S_BJ_L_BF4B
S_BJ_L_BF3F:
  t46 = S_BJ_F_BB12(S_BJ_D_C432)
  t47 = RF_3DDF(1)
S_BJ_L_BF4B:
  (byte)v78 = (byte)v78 + 1
S_BJ_L_BF52:
  if ((byte)v79 > 21) goto S_BJ_L_BF6D
  if ((byte)v83 == 13) goto S_BJ_L_BF6D
  if (!(5 < (byte)v78)) goto S_BJ_L_BE8F
S_BJ_L_BF6D:
  if (!((byte)v79 <= 21)) goto S_BJ_L_C03B
  if (!((byte)v80 < 16)) goto S_BJ_L_C03B
  v120 = 2
  (byte)v78 = 0
S_BJ_L_BF86:
  if (!((byte)v78 < 5)) goto S_BJ_L_C020
  (byte)v72 = (byte)v72 + 1
  (byte)v82 = B[(((byte)v72 + 1) - 1) + (&v52)]
  B[v120 + (&v113)] = (byte)v82 & 15
  t48 = S_BJ_F_B896((byte)v82, (v120 * 2) + S_BJ_D_C48C, S_BJ_D_C48E)
  v120 = v120 + 1
  (byte)v75 = 0
  goto S_BJ_L_BFFE
S_BJ_L_BFCF:
  t49 = S_BJ_F_B8BC(B[v122 + (&v113)])
  if (!t49) goto S_BJ_L_BFFB
  B[(byte)v75 + (&v71)] = B[v122 + (&v113)]
  (byte)v75 = (byte)v75 + 1
S_BJ_L_BFFB:
S_BJ_L_BFFE:
  v122 = L
  if (v122 < v120) goto S_BJ_L_BFCF
  t50 = S_BJ_F_BA34(&v71, (byte)v75, v120 - (byte)v75)
  (byte)v80 = t50
S_BJ_L_C020:
  (byte)v78 = (byte)v78 + 1
  if (!((byte)v80 < 16)) goto S_BJ_L_C062
  if ((byte)v78 < 5) goto S_BJ_L_BF86
  goto S_BJ_L_C062
S_BJ_L_C03B:
  if (!((byte)v79 <= 21)) goto S_BJ_L_C062
  if (!((byte)v80 > 16)) goto S_BJ_L_C062
  t51 = rand(2)
  t52 = S_BJ_F_BB12(W[(t51 * 2) + S_BJ_D_C1B4])
  t53 = RF_3DDF(1)
S_BJ_L_C062:
  t54 = S_BJ_F_B896((byte)v56, S_BJ_D_C48C, S_BJ_D_C48E)
  t55 = RF_2F8F(25, 18)
  t56 = RF_3619(S_BJ_D_C4BF, (byte)v79)
  t57 = RF_2F8F(25, 10)
  t58 = RF_3619(S_BJ_D_C4C3, (byte)v80)
  if (!((byte)v80 <= 21)) goto S_BJ_L_C0AA
  if ((byte)v79 < (byte)v80) goto S_BJ_L_C0B3
S_BJ_L_C0AA:
  if (!((byte)v79 > 21)) goto S_BJ_L_C0E1
S_BJ_L_C0B3:
  if (!((byte)v79 > 21)) goto S_BJ_L_C0C8
  t59 = rand(2)
  goto S_BJ_L_C0D1
S_BJ_L_C0C8:
  t60 = rand(2)
S_BJ_L_C0D1:
  goto S_BJ_L_C0DA
S_BJ_L_C0D7:
S_BJ_L_C0DA:
  t61 = S_BJ_F_BB12(S_BJ_D_C430)
  goto S_BJ_L_C10D
S_BJ_L_C0E1:
  if ((byte)v79 == (byte)v80) goto S_BJ_L_C0D7
  t62 = rand(2)
  t63 = S_BJ_F_BB12(W[(t62 * 2) + S_BJ_D_C248])
  t64 = RL_8962((v117 * 2) + v115, $EA60)
  v115 = t64
S_BJ_L_C10D:
  t65 = RF_3DDF(1)
S_BJ_L_C112:
  t66 = rand(50)
  if (((((W[((byte)g_port * 14) + g_ports]) / 2) + t66) + g_player_gold) <= v115) goto S_BJ_L_C13A
  if (!(v115 == $EA60)) goto S_BJ_L_C15C
S_BJ_L_C13A:
  t67 = rand(2)
  t68 = S_BJ_F_BB12(W[(t67 * 2) + S_BJ_D_C3D0])
  t69 = RF_3DDF(2)
  (byte)$EA88 = (byte)$EA88 + 1
S_BJ_L_C156:
  g_player_gold = v115
  return v115
S_BJ_L_C15C:
  t70 = $97B0(1, 10, 10, 6)
  t71 = RF_4F65(1, 10, 10, 6, 0, 0)
  $F18C = 2
  t72 = RF_2F8F(2, 11)
  t73 = RF_2FB9(S_BJ_D_C4C7, 1)
  t74 = RF_3CFF()
  (byte)v83 = t74
  $F18C = 0
  t75 = RF_2FB9(S_BJ_D_C4D1, 1)
  t76 = $97BE()
  if ((byte)v83) goto S_BJ_L_BBA5
  t77 = rand(2)
  t78 = S_BJ_F_BB12(W[(t77 * 2) + S_BJ_D_C355])
  t79 = RF_3DDF(1)
  goto S_BJ_L_C156

