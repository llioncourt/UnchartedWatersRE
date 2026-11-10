S_ONNA_F_B803:
  // frame 0
  t1 = S_ONNA_F_C297()
  $F9A8 = t1
  return t1

S_ONNA_F_B80F:
  // frame 6
  v2 = $150A
  v4 = 0
S_ONNA_L_B81A:
  t1 = RL_884E(v2 + 3)
  v6 = t1
  if (!(v6 == a0)) goto S_ONNA_L_B82A
  return v4
S_ONNA_L_B82A:
  v2 = v2 + 5
  v4 = v4 + 1
  if (v4 < 50) goto S_ONNA_L_B81A
  return 0

S_ONNA_F_B839:
  // frame 0
  return (byte)g_princess & 8

S_ONNA_F_B844:
  // frame 0
  return (byte)g_princess & 2

S_ONNA_F_B84F:
  // frame 0
  return (byte)g_princess & 1

S_ONNA_F_B85A:
  // frame 0
  return (byte)g_king_mission == (byte)g_port

S_ONNA_F_B869:
  // frame 18
  v18 = (a0 * 5) + $150A
  t1 = RL_884E(v18 + 2)
  v14 = t1 * 50
  t2 = RL_884E(v18 + 1)
  v8 = t2
  v12 = W[(a0 * 14) + g_ports]
  if (!(v8 != 255)) goto S_ONNA_L_B8B4
  if (!(v8 == a1)) goto S_ONNA_L_B8B4
  if (!(v14 <= v12)) goto S_ONNA_L_B8B4
  if (!((byte)g_king_mission != (byte)g_port)) goto S_ONNA_L_B8B4
  return 1
S_ONNA_L_B8B4:
  t3 = RL_884E(v18)
  v16 = (t3 * 88) + $1864
  v2 = v16
  v4 = v16 + 9
  v6 = 0
S_ONNA_L_B8C8:
  t4 = RL_884E(v2)
  v14 = t4 * 50
  if (v14 == 255) goto S_ONNA_L_B8FC
  t5 = RL_884E(v4)
  v10 = t5
  if (!(v10 == a1)) goto S_ONNA_L_B8ED
  if (!(v14 <= v12)) goto S_ONNA_L_B8ED
  return 1
S_ONNA_L_B8ED:
  v4 = v4 + 1
  v2 = v2 + 1
  v6 = v6 + 1
  if (v6 < 9) goto S_ONNA_L_B8C8
S_ONNA_L_B8FC:
  return 0

S_ONNA_F_B8FE:
  // frame 10
  v2 = a1 / 18
  if (!v2) goto S_ONNA_L_B914
  goto S_ONNA_L_B91C
S_ONNA_L_B914:
S_ONNA_L_B91C:
  v6 = L
  v10 = (a0 + 38) % 72
  v4 = v10 / 36
  if (!v4) goto S_ONNA_L_B934
  goto S_ONNA_L_B935
S_ONNA_L_B934:
S_ONNA_L_B935:
  v8 = L * 5
  t1 = RF_3608(S_ONNA_D_C478, W[(v2 * 2) + S_ONNA_D_C468], v6, W[(v4 * 2) + S_ONNA_D_C46C], v8)
  return t1

S_ONNA_F_B952:
  // frame 2
  v2 = (a0 * 19) + $0FD8
  t1 = RF_40DE(v2)
  t2 = RF_2FB9(S_ONNA_D_C486, 0)
  t3 = RL_884E(v2 + 16)
  t4 = RL_884E(v2 + 15)
  t5 = S_ONNA_F_B8FE(t4, t3)
  return t5

S_ONNA_F_B983:
  // frame 2
  v2 = (a0 - 1) / 5
  t1 = RF_40DE(W[((a0 + 20) * 7) + g_player_name_ptr])
  if (!(v2 == 3)) goto S_ONNA_L_B9A9
  goto S_ONNA_L_B9AD
S_ONNA_L_B9A9:
S_ONNA_L_B9AD:
  t2 = RF_2FB9(S_ONNA_D_C493, 0)
  t3 = RL_8875((v2 * 2) + $1B24)
  t4 = RF_40DE(t3)
  return t4

S_ONNA_F_B9C2:
  // frame 0
  t1 = RF_2FB9(S_ONNA_D_C49B, 1)
  return t1

S_ONNA_F_B9D0:
  // frame 8
  t1 = RF_60B2()
  t2 = RF_2FB9(S_ONNA_D_C4C8, 0)
  t3 = S_ONNA_F_B983(a0)
  t4 = RF_2FB9(S_ONNA_D_C4E2, 0)
  $F18A = $F18A - 1
  t5 = RF_472D()
  t6 = RF_60B2()
  t7 = RF_2FB9(S_ONNA_D_C4E4, 0)
  v4 = ((a0 - 1) * 51) + g_captains
  t8 = rand(4)
  if (!t8) goto S_ONNA_L_BA5C
  v2 = B[v4 + 5]
  if (!(B[v4 + 4])) goto S_ONNA_L_BA48
  if (!((byte)g_port == v2)) goto S_ONNA_L_BA38
  goto S_ONNA_L_BA31
S_ONNA_L_BA2D:
S_ONNA_L_BA31:
  t9 = RF_2FB9(S_ONNA_D_C51E, 0)
  goto S_ONNA_L_BA77
S_ONNA_L_BA38:
  t10 = RF_2FB9(S_ONNA_D_C506, 0)
  t11 = S_ONNA_F_B952(v2)
  goto S_ONNA_L_BA77
S_ONNA_L_BA48:
  if (!v2) goto S_ONNA_L_BA2D
  t12 = RF_2FB9(S_ONNA_D_C541, 0)
  t13 = S_ONNA_F_B983(v2)
  goto S_ONNA_L_BA77
S_ONNA_L_BA5C:
  v8 = (a0 << 4) + g_fleets
  t14 = RF_2FB9(S_ONNA_D_C555, 0)
  t15 = S_ONNA_F_B8FE(B[v8], B[v8 + 1])
S_ONNA_L_BA77:
  return

S_ONNA_F_BA78:
  // frame 4
  t1 = S_ONNA_F_B869((byte)g_port, a0)
  if (!t1) goto S_ONNA_L_BAA4
  if (!((byte)g_port != (byte)g_king_mission)) goto S_ONNA_L_BAA4
  t2 = RF_60B2()
  t3 = RF_2FB9(S_ONNA_D_C5CC, 1)
  t4 = RF_472D()
  return t4
S_ONNA_L_BAA4:
  t5 = rand(2)
  if (t5) goto S_ONNA_L_BAE2
  v4 = 0
  goto S_ONNA_L_BAC0
S_ONNA_L_BAB1:
  if (!((B[v2 + S_ONNA_D_C583]) == a0)) goto S_ONNA_L_BABE
  v4 = v2
S_ONNA_L_BABE:
S_ONNA_L_BAC0:
  v2 = L
  if (v2 < 12) goto S_ONNA_L_BAB1
  t6 = RF_60B2()
  t7 = RF_3619(S_ONNA_D_C5EB, W[((B[v4 + S_ONNA_D_C577]) * 2) + S_ONNA_D_C56B])
  t8 = RF_472D()
  return t8
S_ONNA_L_BAE2:
  t9 = RF_60B2()
  t10 = RF_2FB9(S_ONNA_D_C604, 1)
  t11 = RF_472D()
  return t11

S_ONNA_F_BAF1:
  // frame 2
  t1 = S_ONNA_F_B84F()
  if (!t1) goto S_ONNA_L_BB3C
  t2 = S_ONNA_F_B839()
  if (t2) goto S_ONNA_L_BB3C
  t3 = RF_60B2()
  if ((byte)(g_king_mission+1)) goto S_ONNA_L_BB11
  t4 = S_ONNA_F_B9C2()
  goto S_ONNA_L_BB39
S_ONNA_L_BB11:
  t5 = S_ONNA_F_B85A()
  if (!t5) goto S_ONNA_L_BB22
  t6 = RF_2FB9(S_ONNA_D_C629, 1)
  goto S_ONNA_L_BB39
S_ONNA_L_BB22:
  t7 = RF_2FB9(S_ONNA_D_C65F, 0)
  t8 = S_ONNA_F_B952((byte)g_king_mission)
  $F18A = $F18A - 1
S_ONNA_L_BB39:
  t9 = RF_472D()
S_ONNA_L_BB3C:
  t10 = S_ONNA_F_B84F()
  if (!t10) goto S_ONNA_L_BB8A
  t11 = S_ONNA_F_B839()
  if (!t11) goto S_ONNA_L_BB8A
  t12 = $B00F((byte)(g_king_mission+3))
  if (t12) goto S_ONNA_L_BB8A
  t13 = RF_60B2()
  t14 = RF_2FB9(S_ONNA_D_C67F, 0)
  t15 = RL_8875(((byte)(g_king_mission+3) * 2) + $1B49)
  t16 = RF_40DE(t15)
  t17 = RF_2FB9(S_ONNA_D_C6A6, 0)
  $F18A = $F18A - 1
  t18 = RF_472D()
  t19 = S_ONNA_F_BA78((byte)(g_king_mission+3))
S_ONNA_L_BB8A:
  t20 = S_ONNA_F_B84F()
  if (!t20) goto S_ONNA_L_BBEB
  t21 = S_ONNA_F_B839()
  if (!t21) goto S_ONNA_L_BBEB
  t22 = $B00F((byte)(g_king_mission+3))
  if (!t22) goto S_ONNA_L_BBEB
  t23 = RF_60B2()
  if ((byte)(g_king_mission+1)) goto S_ONNA_L_BBBC
  goto S_ONNA_L_BBB5
S_ONNA_L_BBB1:
S_ONNA_L_BBB5:
  t24 = RF_2FB9(S_ONNA_D_C6D8, 1)
  goto S_ONNA_L_BBE8
S_ONNA_L_BBBC:
  t25 = S_ONNA_F_B85A()
  if (t25) goto S_ONNA_L_BBB1
  t26 = RF_2FB9(S_ONNA_D_C70E, 0)
  t27 = RF_40DE(((byte)g_king_mission * 19) + $0FD8)
  t28 = RF_2FB9(S_ONNA_D_C72E, 0)
  $F18A = $F18A - 1
S_ONNA_L_BBE8:
  t29 = RF_472D()
S_ONNA_L_BBEB:
  return

S_ONNA_F_BBEC:
  // frame 0
  t1 = RF_60B2()
  if ((byte)(g_king_mission+1)) goto S_ONNA_L_BC00
  t2 = S_ONNA_F_B9C2()
  goto S_ONNA_L_BC28
S_ONNA_L_BC00:
  t3 = S_ONNA_F_B85A()
  if (!t3) goto S_ONNA_L_BC11
  t4 = RF_2FB9(S_ONNA_D_C73B, 1)
  goto S_ONNA_L_BC28
S_ONNA_L_BC11:
  t5 = RF_2FB9(S_ONNA_D_C75F, 0)
  t6 = S_ONNA_F_B952((byte)g_king_mission)
  $F18A = $F18A - 1
S_ONNA_L_BC28:
  t7 = RF_472D()
  return t7

S_ONNA_F_BC2C:
  // frame 12
  if (!(B[$EF52] == 9)) goto S_ONNA_L_BC59
  t1 = RF_60B2()
  if (!(byte)(g_king_mission+8)) goto S_ONNA_L_BC4E
  t2 = S_ONNA_F_B9D0((byte)(g_king_mission+8))
  goto S_ONNA_L_BFC4
S_ONNA_L_BC4E:
S_ONNA_L_BC52:
  t3 = RF_2FB9(S_ONNA_D_C77F, 0)
  goto S_ONNA_L_BFC4
S_ONNA_L_BC59:
  if (!(B[$EF52] == 3)) goto S_ONNA_L_BCDD
  $EF52 = $EF52 + 1
  if (!B[$EF52]) goto S_ONNA_L_BC8D
  t4 = RL_8875(((B[$EF52 + 1]) * 2) + 12)
  v6 = t4
  t5 = S_ONNA_F_B80F(B[$EF52 + 1])
  goto S_ONNA_L_BC9C
S_ONNA_L_BC8D:
  v6 = W[((B[$EF52 + 1]) * 7) + g_player_name_ptr]
S_ONNA_L_BC9C:
  v2 = L
  if (!B[$EF52]) goto S_ONNA_L_BCAC
  if (!((byte)g_port != v2)) goto S_ONNA_L_BCD7
S_ONNA_L_BCAC:
  t6 = RF_60B2()
  t7 = RF_40C3(31)
  t8 = RF_3619(S_ONNA_D_C7C9, t7)
  t9 = RF_472D()
  t10 = RF_60B2()
  t11 = RF_2FB9(S_ONNA_D_C7E6, 0)
  t12 = RF_40DE(v6)
  goto S_ONNA_L_BC52
S_ONNA_L_BCD7:
  t13 = S_ONNA_F_BC2C()
  goto S_ONNA_L_BFCE
S_ONNA_L_BCDD:
  if (!B[$EF52]) goto S_ONNA_L_BD01
  t14 = S_ONNA_F_B80F(B[$EF52 + 1])
  v2 = t14
  t15 = RL_8875(((B[$EF52 + 1]) * 2) + 12)
  goto S_ONNA_L_BD1A
S_ONNA_L_BD01:
  v2 = B[(((B[$EF52 + 1]) - 1) * 2) + $E971]
S_ONNA_L_BD1A:
  v6 = L
  if (!B[$EF52]) goto S_ONNA_L_BF2E
  if (!((byte)g_port == v2)) goto S_ONNA_L_BECB
  if (!((B[(B[$EF52 + 1]) + $E42E]) > 90)) goto S_ONNA_L_BDD2
  if (!((B[$EF52 + 2]) == 9)) goto S_ONNA_L_BD85
  if (!(byte)(g_king_mission+8)) goto S_ONNA_L_BD6E
  t16 = RF_60B2()
  t17 = RF_2FB9(S_ONNA_D_C808, 0)
  t18 = S_ONNA_F_B983((byte)(g_king_mission+8))
  t19 = RF_40C3(31)
  t20 = RF_3608(S_ONNA_D_C80A, t19)
  goto S_ONNA_L_BDBC
S_ONNA_L_BD6E:
  t21 = RF_60B2()
  t22 = RF_2FB9(S_ONNA_D_C817, 0)
  (byte)g_princess = (byte)g_princess | 4
  goto S_ONNA_L_BDBC
S_ONNA_L_BD85:
  t23 = RF_60B2()
  t24 = RF_2FB9(S_ONNA_D_C860, 0)
  if (!(B[$EF52 + 2])) goto S_ONNA_L_BDAA
  t25 = RL_8875(((B[$EF52 + 3]) * 2) + 12)
  goto S_ONNA_L_BDB6
S_ONNA_L_BDAA:
S_ONNA_L_BDB6:
  v8 = L
  t26 = RF_40DE(v8)
S_ONNA_L_BDBC:
  $F18A = $F18A - 1
  t27 = RF_472D()
  $EF52 = $EF52 + 2
  goto S_ONNA_L_BFCE
S_ONNA_L_BDD2:
  t28 = RF_60B2()
  t29 = RF_2FB9(S_ONNA_D_C88D, 1)
  t30 = RF_472D()
  if (!((B[$EF52 + 2]) == 9)) goto S_ONNA_L_BE80
  if (!(byte)(g_king_mission+8)) goto S_ONNA_L_BE14
  t31 = RF_60B2()
  t32 = RF_2FB9(S_ONNA_D_C8B3, 0)
  t33 = S_ONNA_F_B983((byte)(g_king_mission+8))
  t34 = RF_40C3(31)
  t35 = RF_3608(S_ONNA_D_C8B5, t34)
  goto S_ONNA_L_BEBF
S_ONNA_L_BE14:
  t36 = rand(2)
  if (!t36) goto S_ONNA_L_BE76
  t37 = rand(5)
  t38 = RL_8962(g_player_gold, (t37 + 1) * 100)
  v10 = t38
  t39 = RF_60B2()
  t40 = RF_3619(S_ONNA_D_C8C2, v10)
  t41 = RF_3CFF()
  if (!t41) goto S_ONNA_L_BE68
  t42 = RF_60B2()
  g_player_gold = g_player_gold - v10
  t43 = RF_2FB9(S_ONNA_D_C8FB, 1)
  (byte)g_princess = (byte)g_princess | 4
  $EF52 = $EF52 + 2
  goto S_ONNA_L_BFCB
S_ONNA_L_BE68:
  t44 = RF_60B2()
S_ONNA_L_BE6F:
  t45 = RF_2FB9(S_ONNA_D_C915, 1)
  goto S_ONNA_L_BFCB
S_ONNA_L_BE76:
  t46 = RF_60B2()
  goto S_ONNA_L_BE6F
S_ONNA_L_BE80:
  t47 = RF_60B2()
  t48 = RF_2FB9(S_ONNA_D_C94D, 0)
  if (!(B[$EF52 + 2])) goto S_ONNA_L_BEA5
  t49 = RL_8875(((B[$EF52 + 3]) * 2) + 12)
  goto S_ONNA_L_BEB1
S_ONNA_L_BEA5:
S_ONNA_L_BEB1:
  v8 = L
  t50 = RF_40DE(v8)
  t51 = RF_2FB9(S_ONNA_D_C96A, 0)
S_ONNA_L_BEBF:
  $EF52 = $EF52 + 2
  goto S_ONNA_L_BFC4
S_ONNA_L_BECB:
  t52 = RF_60B2()
  t53 = RF_2FB9(S_ONNA_D_C977, 0)
  t54 = RL_8875(((B[$EF52 + 1]) * 2) + 12)
  t55 = RF_40DE(t54)
  t56 = RF_2FB9(S_ONNA_D_C979, 0)
  t57 = rand(2)
  if (!t57) goto S_ONNA_L_BF13
  t58 = S_ONNA_F_B80F(B[$EF52 + 1])
S_ONNA_L_BF0C:
  t59 = RF_40DE((t58 * 19) + $0FD8)
  goto S_ONNA_L_BFC4
S_ONNA_L_BF13:
  t60 = S_ONNA_F_B80F(B[$EF52 + 1])
  v4 = t60
  v12 = (v4 * 19) + $0FD8
  goto S_ONNA_L_BFAB
S_ONNA_L_BF2E:
  t61 = RF_60B2()
  t62 = RF_2FB9(S_ONNA_D_C999, 0)
  if (!((byte)g_port == v2)) goto S_ONNA_L_BF64
  t63 = RF_2FB9(S_ONNA_D_C9AB, 0)
  t64 = RF_40DE(W[((B[$EF52 + 1]) * 7) + g_player_name_ptr])
  t65 = RF_3608(S_ONNA_D_C9AD)
  goto S_ONNA_L_BFC4
S_ONNA_L_BF64:
  t66 = RF_40DE(W[((B[$EF52 + 1]) * 7) + g_player_name_ptr])
  t67 = RF_2FB9(S_ONNA_D_C9C2, 0)
  v4 = B[(((B[$EF52 + 1]) - 1) * 2) + $E971]
  v12 = (v4 * 19) + $0FD8
  t68 = rand(2)
  if (!t68) goto S_ONNA_L_BFA7
  t69 = RF_2FB9(S_ONNA_D_C9D2, 0)
  goto S_ONNA_L_BF0C
S_ONNA_L_BFA7:
S_ONNA_L_BFAB:
  t70 = RF_2FB9(S_ONNA_D_C9E2, 0)
  t71 = RL_884E(v12 + 16)
  t72 = RL_884E(v12 + 15)
  t73 = S_ONNA_F_B8FE(t72, t71)
S_ONNA_L_BFC4:
  $F18A = $F18A - 1
S_ONNA_L_BFCB:
  t74 = RF_472D()
S_ONNA_L_BFCE:
  return

S_ONNA_F_BFCF:
  // frame 0
  t1 = RF_60B2()
  if ((byte)(g_king_mission+1)) goto S_ONNA_L_BFE8
  t2 = RF_2FB9(S_ONNA_D_C9F4, 1)
  goto S_ONNA_L_C017
S_ONNA_L_BFE8:
  t3 = S_ONNA_F_B85A()
  if (!t3) goto S_ONNA_L_BFF9
  t4 = RF_2FB9(S_ONNA_D_CA0E, 0)
  goto S_ONNA_L_C010
S_ONNA_L_BFF9:
  t5 = RF_2FB9(S_ONNA_D_CA3D, 0)
  t6 = RF_40DE(((byte)g_king_mission * 19) + $0FD8)
S_ONNA_L_C010:
  $F18A = $F18A - 1
S_ONNA_L_C017:
  t7 = RF_472D()
  return t7

S_ONNA_F_C01B:
  // frame 0
  t1 = S_ONNA_F_B84F()
  if (!t1) goto S_ONNA_L_C02F
  t2 = S_ONNA_F_B839()
  if (t2) goto S_ONNA_L_C02F
  t3 = S_ONNA_F_BBEC()
S_ONNA_L_C02F:
  t4 = S_ONNA_F_B84F()
  if (!t4) goto S_ONNA_L_C048
  t5 = S_ONNA_F_B839()
  if (!t5) goto S_ONNA_L_C048
  if (g_player_items+2 & $8000) goto S_ONNA_L_C048
  t6 = S_ONNA_F_BC2C()
S_ONNA_L_C048:
  t7 = S_ONNA_F_B84F()
  if (!t7) goto S_ONNA_L_C061
  t8 = S_ONNA_F_B839()
  if (!t8) goto S_ONNA_L_C061
  if (!(g_player_items+2 & $8000)) goto S_ONNA_L_C061
  t9 = S_ONNA_F_BFCF()
S_ONNA_L_C061:
  return

S_ONNA_F_C062:
  // frame 0
  t1 = S_ONNA_F_B84F()
  if (!t1) goto S_ONNA_L_C0AE
  t2 = S_ONNA_F_B839()
  if (t2) goto S_ONNA_L_C0AE
  t3 = RF_60B2()
  if ((byte)(g_king_mission+1)) goto S_ONNA_L_C08E
  goto S_ONNA_L_C087
S_ONNA_L_C083:
S_ONNA_L_C087:
  t4 = RF_2FB9(S_ONNA_D_CA84, 1)
  goto S_ONNA_L_C0AB
S_ONNA_L_C08E:
  t5 = S_ONNA_F_B85A()
  if (t5) goto S_ONNA_L_C083
  t6 = RF_2FB9(S_ONNA_D_CAAA, 0)
  t7 = S_ONNA_F_B952((byte)g_king_mission)
  $F18A = $F18A - 1
S_ONNA_L_C0AB:
  t8 = RF_472D()
S_ONNA_L_C0AE:
  t9 = S_ONNA_F_B84F()
  if (!t9) goto S_ONNA_L_C0D2
  t10 = S_ONNA_F_B839()
  if (!t10) goto S_ONNA_L_C0D2
  t11 = S_ONNA_F_B844()
  if (t11) goto S_ONNA_L_C0D2
  t12 = S_ONNA_F_B9D0((byte)(g_king_mission+3))
  $F18A = $F18A - 1
  t13 = RF_472D()
S_ONNA_L_C0D2:
  t14 = S_ONNA_F_B84F()
  if (!t14) goto S_ONNA_L_C12E
  t15 = S_ONNA_F_B839()
  if (!t15) goto S_ONNA_L_C12E
  t16 = S_ONNA_F_B844()
  if (!t16) goto S_ONNA_L_C12E
  t17 = RF_60B2()
  if ((byte)(g_king_mission+1)) goto S_ONNA_L_C0F8
  t18 = RF_2FB9(S_ONNA_D_CACA, 1)
  goto S_ONNA_L_C12B
S_ONNA_L_C0F8:
  t19 = S_ONNA_F_B85A()
  if (!t19) goto S_ONNA_L_C105
  goto S_ONNA_L_C120
S_ONNA_L_C105:
  t20 = RF_2FB9(S_ONNA_D_CB16, 0)
  t21 = RF_40DE(((byte)g_king_mission * 19) + $0FD8)
S_ONNA_L_C120:
  t22 = RF_2FB9(S_ONNA_D_CB26, 0)
  $F18A = $F18A - 1
S_ONNA_L_C12B:
  t23 = RF_472D()
S_ONNA_L_C12E:
  return

S_ONNA_F_C12F:
  // frame 0
  t1 = S_ONNA_F_B84F()
  if (!t1) goto S_ONNA_L_C14E
  t2 = S_ONNA_F_B839()
  if (t2) goto S_ONNA_L_C14E
  t3 = RF_60B2()
  t4 = RF_2FB9(S_ONNA_D_CB44, 1)
  t5 = RF_472D()
S_ONNA_L_C14E:
  t6 = S_ONNA_F_B84F()
  if (!t6) goto S_ONNA_L_C1AE
  t7 = S_ONNA_F_B839()
  if (!t7) goto S_ONNA_L_C1AE
  t8 = S_ONNA_F_B844()
  if (t8) goto S_ONNA_L_C1AE
  if (!(B[$EF52] == 3)) goto S_ONNA_L_C19C
  $EF52 = $EF52 + 1
  t9 = RF_60B2()
  t10 = RF_2FB9(S_ONNA_D_CB7C, 1)
  t11 = RF_472D()
  t12 = RF_60B2()
  t13 = RF_2FB9(S_ONNA_D_CBA3, 0)
  t14 = S_ONNA_F_B983((byte)(g_king_mission+3))
  t15 = RF_2FB9(S_ONNA_D_CBA5, 0)
  goto S_ONNA_L_C1A4
S_ONNA_L_C19C:
  t16 = S_ONNA_F_B9D0((byte)(g_king_mission+3))
S_ONNA_L_C1A4:
  $F18A = $F18A - 1
  t17 = RF_472D()
S_ONNA_L_C1AE:
  t18 = S_ONNA_F_B84F()
  if (!t18) goto S_ONNA_L_C1CE
  t19 = S_ONNA_F_B839()
  if (!t19) goto S_ONNA_L_C1CE
  t20 = S_ONNA_F_B844()
  if (!t20) goto S_ONNA_L_C1CE
  t21 = RF_60B2()
  t22 = RF_2FB9(S_ONNA_D_CBAE, 1)
  t23 = RF_472D()
S_ONNA_L_C1CE:
  return

S_ONNA_F_C1CF:
  // frame 0
  t1 = S_ONNA_F_B84F()
  if (!t1) goto S_ONNA_L_C1E9
  t2 = S_ONNA_F_B839()
  if (t2) goto S_ONNA_L_C1E9
  t3 = RF_60B2()
  t4 = S_ONNA_F_B9C2()
  t5 = RF_472D()
S_ONNA_L_C1E9:
  t6 = S_ONNA_F_B84F()
  if (!t6) goto S_ONNA_L_C241
  t7 = S_ONNA_F_B839()
  if (!t7) goto S_ONNA_L_C241
  t8 = S_ONNA_F_B844()
  if (t8) goto S_ONNA_L_C241
  t9 = RF_60B2()
  if (!((byte)(g_king_mission+3) != (byte)g_port)) goto S_ONNA_L_C236
  t10 = RF_2FB9(S_ONNA_D_CBE5, 0)
  t11 = RL_8875(((byte)(g_king_mission+3) * 2) + $1B24)
  t12 = RF_40DE(t11)
  t13 = RF_2FB9(S_ONNA_D_CC14, 0)
  $F18A = $F18A - 1
  goto S_ONNA_L_C23E
S_ONNA_L_C236:
  t14 = RF_2FB9(S_ONNA_D_CC16, 1)
S_ONNA_L_C23E:
  t15 = RF_472D()
S_ONNA_L_C241:
  t16 = S_ONNA_F_B84F()
  if (!t16) goto S_ONNA_L_C261
  t17 = S_ONNA_F_B839()
  if (!t17) goto S_ONNA_L_C261
  t18 = S_ONNA_F_B844()
  if (!t18) goto S_ONNA_L_C261
  t19 = RF_60B2()
  t20 = RF_2FB9(S_ONNA_D_CC4C, 1)
  t21 = RF_472D()
S_ONNA_L_C261:
  return

S_ONNA_F_C262:
  // frame 0
  switch ((byte)(g_king_mission+2)) [0, 5, S_ONNA_L_C27E]

S_ONNA_F_C297:
  // frame 12
  t1 = RL_884E(((byte)g_port * 5) + $150D)
  v2 = t1
  if (!(v2 == 255)) goto S_ONNA_L_C2C4
  t2 = RF_60EE()
  t3 = RF_609A(1)
  t4 = RF_4B44(S_ONNA_D_CDB1)
  return 0
S_ONNA_L_C2C4:
  v4 = B[v2 + $E42E]
  t5 = RF_60CE(7, 1)
  t6 = RF_609A(1)
  t7 = RF_2FB9(S_ONNA_D_CDDB, 0)
  t8 = RL_8875((v2 * 2) + 12)
  t9 = RF_40DE(t8)
  t10 = RF_2FB9(S_ONNA_D_CDE6, 0)
  t11 = RF_3DDF(1)
  if (!(g_player_gold < 10)) goto S_ONNA_L_C346
  t12 = RF_60EE()
  t13 = RF_60B2()
  t14 = RF_4B44(S_ONNA_D_CE09)
  if (!(v4 < 100)) goto S_ONNA_L_C319
  return 0
S_ONNA_L_C319:
  t15 = RF_60CE(v2, 2)
  t16 = RF_60B2()
  goto S_ONNA_L_C33F
S_ONNA_L_C328:
  t17 = rand(v4)
  if (!(t17 > 80)) goto S_ONNA_L_C34D
  t18 = RF_60CE(v2, 2)
  t19 = RF_60B2()
S_ONNA_L_C33F:
  t20 = RF_4B44(S_ONNA_D_CE47)
  goto S_ONNA_L_C356
S_ONNA_L_C346:
  if (v4 >= 100) goto S_ONNA_L_C328
S_ONNA_L_C34D:
  g_player_gold = g_player_gold - 10
S_ONNA_L_C356:
  v6 = v4 / 45
  v8 = 1
  if (!v6) goto S_ONNA_L_C36E
  t21 = rand(1 << (5 - v6))
  v8 = t21
S_ONNA_L_C36E:
  t22 = RF_60CE(v2, 2)
  t23 = RF_60B2()
  t24 = RF_2FB9(W[(v6 * 2) + S_ONNA_D_CC7E], 1)
  t25 = RF_3DDF(1)
  if (!(v4 < 200)) goto S_ONNA_L_C3A8
  t26 = rand(5)
  t27 = RL_8962((t26 + v4) + 10, 200)
  B[v2 + $E42E] = t27
S_ONNA_L_C3A8:
  if (!((byte)g_princess & 1)) goto S_ONNA_L_C3BE
  t28 = rand(4)
  if (!t28) goto S_ONNA_L_C3BE
  t29 = S_ONNA_F_C262()
  goto S_ONNA_L_C466
S_ONNA_L_C3BE:
  if (v8) goto S_ONNA_L_C466
S_ONNA_L_C3C2:
  t30 = rand(20)
  v10 = t30
  if ((B[((v10 + 1) << 4) + $E573]) & 8) goto S_ONNA_L_C3C2
  t31 = RF_60B2()
  t32 = RF_2FB9(S_ONNA_D_CE70, 0)
  t33 = RF_40DE(W[((v10 + 21) * 7) + g_player_name_ptr])
  t34 = RF_3608(S_ONNA_D_CE79, W[(((((v10 / 5) * 2) + ((v10 % 5) / 3)) + 1) * 2) + S_ONNA_D_CC6C])
  v12 = (v10 * 51) + g_captains
  v10 = B[v12 + 5]
  if (B[v12 + 4]) goto S_ONNA_L_C447
  if (!v10) goto S_ONNA_L_C435
  goto S_ONNA_L_C436
S_ONNA_L_C435:
S_ONNA_L_C436:
  t35 = RF_3608(S_ONNA_D_CE80, W[(L * 2) + S_ONNA_D_CC6C])
  goto S_ONNA_L_C45C
S_ONNA_L_C447:
  t36 = RF_2FB9(S_ONNA_D_CE95, 0)
  t37 = RF_40DE((v10 * 19) + $0FD8)
S_ONNA_L_C45C:
  $F18A = $F18A - 1
  t38 = RF_472D()
S_ONNA_L_C466:
  return 1
S_ONNA_D_C468:

