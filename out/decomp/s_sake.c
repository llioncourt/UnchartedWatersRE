S_SAKE_F_B803:
  // frame 0
  t1 = S_SAKE_F_C5CC()
  $F9A8 = t1
  return t1

S_SAKE_F_B80F:
  // frame 14
  v14 = 0
  v8 = 0
  v6 = 0
  goto S_SAKE_L_B895
S_SAKE_L_B81C:
  v2 = (v8 * 5) + $150A
  v4 = (v8 * 14) + g_ports
  v10 = (B[v4 + 11]) + 50
  t1 = RL_884E(v2)
  t2 = RL_8898(((t1 * 88) + (a0 * 2)) + $1888)
  v12 = t2
  v12 = (v12 * v10) / 100
  t3 = RL_884E(v2 + 1)
  if (!(t3 == a0)) goto S_SAKE_L_B888
  v12 = ((((W[v4 + 12]) * v10) / 100) / 2) + 1
S_SAKE_L_B888:
  if (!(v12 > v14)) goto S_SAKE_L_B892
  v14 = v12
  v6 = v8
S_SAKE_L_B892:
  v8 = v8 + 1
S_SAKE_L_B895:
  if (v8 < 27) goto S_SAKE_L_B81C
  return v6

S_SAKE_F_B89E:
  // frame 19
  t1 = RL_8502(0, &v9)
  v17 = t1
  v11 = 0
  goto S_SAKE_L_B8F9
S_SAKE_L_B8B5:
  v2 = ((B[v13 + (&v9)]) * 24) + g_cargo
  v4 = v2 + 1
  v19 = v2 + 6
  v15 = 0
S_SAKE_L_B8D0:
  if (!(W[(v15 * 2) + v19])) goto S_SAKE_L_B8EA
  B[a0 + v11] = B[v4 + v15]
  v11 = v11 + 1
S_SAKE_L_B8EA:
  v15 = v15 + 1
  if (v15 < 5) goto S_SAKE_L_B8D0
S_SAKE_L_B8F9:
  v13 = L
  if (v13 < v17) goto S_SAKE_L_B8B5
  return v11

S_SAKE_F_B906:
  // frame 2
  t1 = RF_464C(a0)
  v2 = t1
  t2 = RF_4E29(2, 21, v2, 1)
  return t2

S_SAKE_F_B91B:
  // frame 6
  v2 = $150A
  v4 = 0
S_SAKE_L_B926:
  t1 = RL_884E(v2 + 3)
  v6 = t1
  if (!(v6 == a0)) goto S_SAKE_L_B936
  return v4
S_SAKE_L_B936:
  v2 = v2 + 5
  v4 = v4 + 1
  if (v4 < 50) goto S_SAKE_L_B926
  return 0

S_SAKE_F_B945:
  // frame 0
  return (byte)g_princess & 8

S_SAKE_F_B950:
  // frame 0
  return (byte)g_princess & 2

S_SAKE_F_B95B:
  // frame 0
  return (byte)g_princess & 1

S_SAKE_F_B966:
  // frame 0
  return (byte)g_king_mission == (byte)g_port

S_SAKE_F_B975:
  // frame 18
  v18 = (a0 * 5) + $150A
  t1 = RL_884E(v18 + 2)
  v14 = t1 * 50
  t2 = RL_884E(v18 + 1)
  v8 = t2
  v12 = W[(a0 * 14) + g_ports]
  if (!(v8 != 255)) goto S_SAKE_L_B9C0
  if (!(v8 == a1)) goto S_SAKE_L_B9C0
  if (!(v14 <= v12)) goto S_SAKE_L_B9C0
  if (!((byte)g_king_mission != (byte)g_port)) goto S_SAKE_L_B9C0
  return 1
S_SAKE_L_B9C0:
  t3 = RL_884E(v18)
  v16 = (t3 * 88) + $1864
  v2 = v16
  v4 = v16 + 9
  v6 = 0
S_SAKE_L_B9D4:
  t4 = RL_884E(v2)
  v14 = t4 * 50
  if (v14 == 255) goto S_SAKE_L_BA08
  t5 = RL_884E(v4)
  v10 = t5
  if (!(v10 == a1)) goto S_SAKE_L_B9F9
  if (!(v14 <= v12)) goto S_SAKE_L_B9F9
  return 1
S_SAKE_L_B9F9:
  v4 = v4 + 1
  v2 = v2 + 1
  v6 = v6 + 1
  if (v6 < 9) goto S_SAKE_L_B9D4
S_SAKE_L_BA08:
  return 0

S_SAKE_F_BA0A:
  // frame 0
  t1 = rand(2)
  if (!t1) goto S_SAKE_L_BA2D
  t2 = RF_2FB9(S_SAKE_D_C680, 0)
  t3 = RF_40DE(g_player_name_ptr)
  goto S_SAKE_L_BA40
S_SAKE_L_BA2D:
  t4 = RF_2FB9(S_SAKE_D_C698, 0)
  t5 = RF_40DE(g_player_name_ptr)
S_SAKE_L_BA40:
  t6 = RF_2FB9(S_SAKE_D_C6B4, 0)
  return t6

S_SAKE_F_BA45:
  // frame 10
  v2 = a1 / 18
  if (!v2) goto S_SAKE_L_BA5B
  goto S_SAKE_L_BA63
S_SAKE_L_BA5B:
S_SAKE_L_BA63:
  v6 = L
  v10 = (a0 + 38) % 72
  v4 = v10 / 36
  if (!v4) goto S_SAKE_L_BA7B
  goto S_SAKE_L_BA7C
S_SAKE_L_BA7B:
S_SAKE_L_BA7C:
  v8 = L * 5
  t1 = RF_3608(S_SAKE_D_C6C7, W[(v2 * 2) + S_SAKE_D_C6B7], v6, W[(v4 * 2) + S_SAKE_D_C6BB], v8)
  return t1

S_SAKE_F_BA99:
  // frame 2
  v2 = (a0 * 19) + $0FD8
  t1 = RF_40DE(v2)
  t2 = RF_2FB9(S_SAKE_D_C6D5, 0)
  t3 = RL_884E(v2 + 16)
  t4 = RL_884E(v2 + 15)
  t5 = S_SAKE_F_BA45(t4, t3)
  return t5

S_SAKE_F_BACA:
  // frame 2
  v2 = (a0 - 1) / 5
  t1 = RF_40DE(W[((a0 + 20) * 7) + g_player_name_ptr])
  if (!(v2 == 3)) goto S_SAKE_L_BAF0
  goto S_SAKE_L_BAF4
S_SAKE_L_BAF0:
S_SAKE_L_BAF4:
  t2 = RF_2FB9(S_SAKE_D_C6E0, 0)
  t3 = RL_8875((v2 * 2) + $1B24)
  t4 = RF_40DE(t3)
  return t4

S_SAKE_F_BB09:
  // frame 8
  t1 = RF_60B2()
  t2 = RF_2FB9(S_SAKE_D_C6E7, 0)
  t3 = RF_40DE(W[((a0 + 20) * 7) + g_player_name_ptr])
  t4 = RF_2FB9(S_SAKE_D_C6E9, 0)
  v4 = ((a0 - 1) * 51) + g_captains
  t5 = rand(4)
  if (!t5) goto S_SAKE_L_BBAB
  v2 = B[v4 + 5]
  if (!(B[v4 + 4])) goto S_SAKE_L_BB90
  if (!((byte)g_port == v2)) goto S_SAKE_L_BB5F
S_SAKE_L_BB58:
  t6 = RF_2FB9(S_SAKE_D_C6F2, 0)
  goto S_SAKE_L_BBC6
S_SAKE_L_BB5F:
  v6 = (v2 * 19) + $0FD8
  t7 = RF_2FB9(S_SAKE_D_C70E, 0)
  t8 = RF_40DE(v6)
  t9 = RF_2FB9(S_SAKE_D_C724, 0)
  t10 = RL_884E(v6 + 16)
  t11 = RL_884E(v6 + 15)
  goto S_SAKE_L_BBC1
S_SAKE_L_BB90:
  if (v2) goto S_SAKE_L_BB9B
  goto S_SAKE_L_BB58
S_SAKE_L_BB9B:
  t12 = RF_2FB9(S_SAKE_D_C742, 0)
  t13 = S_SAKE_F_BACA(v2)
  goto S_SAKE_L_BBC6
S_SAKE_L_BBAB:
  v8 = (a0 << 4) + g_fleets
  t14 = RF_2FB9(S_SAKE_D_C74E, 0)
S_SAKE_L_BBC1:
  t15 = S_SAKE_F_BA45(L, B[v8 + 1])
S_SAKE_L_BBC6:
  return

S_SAKE_F_BBC7:
  // frame 6
  t1 = S_SAKE_F_B975((byte)g_port, a0)
  if (!t1) goto S_SAKE_L_BBF3
  if (!((byte)g_port != (byte)g_king_mission)) goto S_SAKE_L_BBF3
  t2 = RF_60B2()
  t3 = RF_2FB9(S_SAKE_D_C76B, 1)
  t4 = RF_472D()
  return t4
S_SAKE_L_BBF3:
  v2 = 0
S_SAKE_L_BBF5:
  t5 = rand(19)
  v4 = t5 + (byte)g_port
  t6 = RL_8962(v4, 9)
  v4 = v4 - t6
  if (!(v4 > 50)) goto S_SAKE_L_BC16
  v4 = 50
S_SAKE_L_BC16:
  if ((byte)g_port == v4) goto S_SAKE_L_BBF5
  t7 = S_SAKE_F_B975(v4, a0)
  if (!t7) goto S_SAKE_L_BC4A
  if (!((byte)g_king_mission != v4)) goto S_SAKE_L_BC4A
  t8 = RF_60B2()
  t9 = RF_2FB9(S_SAKE_D_C792, 0)
  t10 = S_SAKE_F_BA99(v4)
  $F18A = $F18A - 1
  t11 = RF_472D()
  return t11
S_SAKE_L_BC4A:
  v2 = v2 + 1
  if (v2 < 20) goto S_SAKE_L_BBF5
  t12 = RF_60B2()
  t13 = RF_2FB9(S_SAKE_D_C7BC, 1)
  t14 = RF_472D()
  return t14

S_SAKE_F_BC63:
  // frame 2
  t1 = S_SAKE_F_B95B()
  if (!t1) goto S_SAKE_L_BCB2
  t2 = S_SAKE_F_B945()
  if (t2) goto S_SAKE_L_BCB2
  t3 = RF_60B2()
  t4 = S_SAKE_F_BA0A()
  if ((byte)(g_king_mission+1)) goto S_SAKE_L_BC92
  goto S_SAKE_L_BC8B
S_SAKE_L_BC87:
S_SAKE_L_BC8B:
  t5 = RF_2FB9(S_SAKE_D_C803, 0)
  goto S_SAKE_L_BCA8
S_SAKE_L_BC92:
  t6 = S_SAKE_F_B966()
  if (t6) goto S_SAKE_L_BC87
  t7 = RF_2FB9(S_SAKE_D_C82A, 0)
  t8 = S_SAKE_F_BA99((byte)g_king_mission)
S_SAKE_L_BCA8:
  $F18A = $F18A - 1
  t9 = RF_472D()
S_SAKE_L_BCB2:
  t10 = S_SAKE_F_B95B()
  if (!t10) goto S_SAKE_L_BD00
  t11 = S_SAKE_F_B945()
  if (!t11) goto S_SAKE_L_BD00
  t12 = $B00F((byte)(g_king_mission+3))
  if (t12) goto S_SAKE_L_BD00
  t13 = RF_60B2()
  t14 = RF_2FB9(S_SAKE_D_C847, 0)
  t15 = RL_8875(((byte)(g_king_mission+3) * 2) + $1B49)
  t16 = RF_40DE(t15)
  t17 = RF_2FB9(S_SAKE_D_C86E, 0)
  $F18A = $F18A - 1
  t18 = RF_472D()
  t19 = S_SAKE_F_BBC7((byte)(g_king_mission+3))
S_SAKE_L_BD00:
  t20 = S_SAKE_F_B95B()
  if (!t20) goto S_SAKE_L_BD5C
  t21 = S_SAKE_F_B945()
  if (!t21) goto S_SAKE_L_BD5C
  t22 = $B00F((byte)(g_king_mission+3))
  if (!t22) goto S_SAKE_L_BD5C
  t23 = RF_60B2()
  t24 = S_SAKE_F_BA0A()
  if ((byte)(g_king_mission+1)) goto S_SAKE_L_BD35
  goto S_SAKE_L_BD2E
S_SAKE_L_BD2A:
S_SAKE_L_BD2E:
  t25 = RF_2FB9(S_SAKE_D_C896, 0)
  goto S_SAKE_L_BD52
S_SAKE_L_BD35:
  t26 = S_SAKE_F_B966()
  if (t26) goto S_SAKE_L_BD2A
  t27 = RF_2FB9(S_SAKE_D_C8BE, 0)
  t28 = RF_40DE(((byte)g_king_mission * 19) + $0FD8)
S_SAKE_L_BD52:
  $F18A = $F18A - 1
  t29 = RF_472D()
S_SAKE_L_BD5C:
  return

S_SAKE_F_BD5D:
  // frame 24
  t1 = S_SAKE_F_B95B()
  if (!t1) goto S_SAKE_L_BDAC
  t2 = S_SAKE_F_B945()
  if (t2) goto S_SAKE_L_BDAC
  t3 = RF_60B2()
  t4 = S_SAKE_F_BA0A()
  if ((byte)(g_king_mission+1)) goto S_SAKE_L_BD8C
  goto S_SAKE_L_BD85
S_SAKE_L_BD81:
S_SAKE_L_BD85:
  t5 = RF_2FB9(S_SAKE_D_C956, 0)
  goto S_SAKE_L_BDA2
S_SAKE_L_BD8C:
  t6 = S_SAKE_F_B966()
  if (t6) goto S_SAKE_L_BD81
  t7 = RF_2FB9(S_SAKE_D_C97E, 0)
  t8 = S_SAKE_F_BA99((byte)g_king_mission)
S_SAKE_L_BDA2:
  $F18A = $F18A - 1
  t9 = RF_472D()
S_SAKE_L_BDAC:
  t10 = S_SAKE_F_B95B()
  if (!t10) goto S_SAKE_L_C125
  t11 = S_SAKE_F_B945()
  if (!t11) goto S_SAKE_L_C125
  if (g_player_items+2 & $8000) goto S_SAKE_L_C125
  if (!(B[$EF52] == 9)) goto S_SAKE_L_BE6A
  if (!(byte)(g_king_mission+8)) goto S_SAKE_L_BDDC
  t12 = S_SAKE_F_BB09((byte)(g_king_mission+8))
  goto S_SAKE_L_C11B
S_SAKE_L_BDDC:
  t13 = RF_60B2()
  t14 = RF_2FB9(S_SAKE_D_C99B, 1)
  t15 = RF_472D()
  t16 = RF_60B2()
  v22 = g_fleets
  if (!((byte)$EF5D == B[v22])) goto S_SAKE_L_BE13
  if (!((byte)$EF5E == (B[v22 + 1]))) goto S_SAKE_L_BE13
  t17 = RF_2FB9(S_SAKE_D_C9C4, 1)
  goto S_SAKE_L_C122
S_SAKE_L_BE13:
  v12 = B[v22]
  v14 = B[v22 + 1]
  v8 = (byte)$EF5D
  v10 = (byte)$EF5E
  v18 = 31 - v12
  v12 = v12 + v18
  v16 = v8 + v18
  if (!(v16 < 0)) goto S_SAKE_L_BE3C
  v16 = (v8 + v18) + 71
S_SAKE_L_BE3C:
  v8 = v16
  t18 = RL_892B(v10 - v14)
  t19 = RL_892B(v8 - v12)
  t20 = RF_3619(S_SAKE_D_C9E8, W[((B[(((t19 + 1) * 3) + t18) + S_SAKE_D_C8E9]) * 2) + S_SAKE_D_C8D8])
  goto S_SAKE_L_C122
S_SAKE_L_BE6A:
  if (!(B[$EF52] == 3)) goto S_SAKE_L_BECE
  $EF52 = $EF52 + 1
  t21 = RF_60B2()
  t22 = RF_2FB9(S_SAKE_D_CA08, 0)
  t23 = RF_40C3(31)
  t24 = RF_40DE(t23)
  t25 = RF_2FB9(S_SAKE_D_CA21, 0)
  if (!B[$EF52]) goto S_SAKE_L_BEB1
  t26 = RL_8875(((B[$EF52 + 1]) * 2) + 12)
  goto S_SAKE_L_BEBD
S_SAKE_L_BEB1:
S_SAKE_L_BEBD:
  v2 = L
  t27 = RF_40DE(v2)
S_SAKE_L_BEC7:
  t28 = RF_2FB9(S_SAKE_D_CA24, 0)
  goto S_SAKE_L_C11B
S_SAKE_L_BECE:
  if (!B[$EF52]) goto S_SAKE_L_BEF2
  t29 = S_SAKE_F_B91B(B[$EF52 + 1])
  v6 = t29
  t30 = RL_8875(((B[$EF52 + 1]) * 2) + 12)
  goto S_SAKE_L_BF0B
S_SAKE_L_BEF2:
  v6 = B[(((B[$EF52 + 1]) - 1) * 2) + $E971]
S_SAKE_L_BF0B:
  v2 = L
  t31 = RF_60B2()
  t32 = RF_2FB9(S_SAKE_D_CA43, 0)
  t33 = RF_40DE(v2)
  t34 = RF_2FB9(S_SAKE_D_CA5D, 0)
  $F18A = $F18A - 1
  t35 = RF_472D()
  t36 = RF_60B2()
  if (!B[$EF52]) goto S_SAKE_L_BF4E
  if (!((byte)g_port == v6)) goto S_SAKE_L_BF47
  goto S_SAKE_L_BEC7
S_SAKE_L_BF47:
  goto S_SAKE_L_C112
S_SAKE_L_BF4E:
  if (!((byte)g_port == v6)) goto S_SAKE_L_C10E
  t37 = RF_4B44(S_SAKE_D_CAD4)
  t38 = RF_60CE(B[$EF52 + 1], 0)
  if (!(B[(((B[$EF52 + 1]) - 1) * 2) + $E970])) goto S_SAKE_L_C033
  t39 = RF_60B2()
  t40 = RF_2FB9(S_SAKE_D_CAFC, 1)
  t41 = RF_472D()
  if (!((B[$EF52 + 2]) == 9)) goto S_SAKE_L_BFDD
  if (!(byte)(g_king_mission+8)) goto S_SAKE_L_BFC6
  t42 = RF_60B2()
  t43 = RF_2FB9(S_SAKE_D_CB33, 0)
  t44 = RF_40C3(31)
  t45 = RF_40DE(t44)
  t46 = RF_2FB9(S_SAKE_D_CB39, 0)
  t47 = S_SAKE_F_BACA((byte)(g_king_mission+8))
S_SAKE_L_BFBF:
  t48 = RF_2FB9(S_SAKE_D_CB45, 0)
  goto S_SAKE_L_C014
S_SAKE_L_BFC6:
  t49 = RF_60B2()
S_SAKE_L_BFCD:
  t50 = RF_2FB9(S_SAKE_D_CB61, 0)
  (byte)g_princess = (byte)g_princess | 4
  goto S_SAKE_L_C014
S_SAKE_L_BFDD:
  t51 = RF_60B2()
  t52 = RF_2FB9(S_SAKE_D_CBAB, 0)
  if (!(B[$EF52 + 2])) goto S_SAKE_L_C002
  t53 = RL_8875(((B[$EF52 + 3]) * 2) + 12)
  goto S_SAKE_L_C00E
S_SAKE_L_C002:
S_SAKE_L_C00E:
  v4 = L
  t54 = RF_40DE(v4)
S_SAKE_L_C014:
  B[((B[$EF52 + 1]) * 7) + $E44A] = (B[((B[$EF52 + 1]) * 7) + $E44A]) & 253
  $EF52 = $EF52 + 2
  goto S_SAKE_L_C11B
S_SAKE_L_C033:
  t55 = RF_60B2()
  t56 = RF_2FB9(S_SAKE_D_CBDC, 1)
  t57 = RF_472D()
  if (!((B[$EF52 + 2]) == 9)) goto S_SAKE_L_C0D0
  if (!(byte)(g_king_mission+8)) goto S_SAKE_L_C07E
  t58 = RF_60B2()
  t59 = RF_2FB9(S_SAKE_D_CC08, 0)
  t60 = RF_40C3(31)
  t61 = RF_40DE(t60)
  t62 = RF_2FB9(S_SAKE_D_CC0E, 0)
  t63 = S_SAKE_F_BACA((byte)(g_king_mission+8))
  goto S_SAKE_L_BFBF
S_SAKE_L_C07E:
  t64 = rand(2)
  if (!t64) goto S_SAKE_L_C0C6
  t65 = rand(5)
  t66 = RL_8962(g_player_gold, (t65 + 1) * 100)
  v20 = t66
  t67 = RF_60B2()
  t68 = RF_3619(S_SAKE_D_CC36, v20)
  t69 = RF_3CFF()
  if (!t69) goto S_SAKE_L_C0BC
  t70 = RF_60B2()
  g_player_gold = g_player_gold - v20
  goto S_SAKE_L_BFCD
S_SAKE_L_C0BC:
  t71 = RF_60B2()
  goto S_SAKE_L_BEC7
S_SAKE_L_C0C6:
  t72 = RF_60B2()
  goto S_SAKE_L_BEC7
S_SAKE_L_C0D0:
  t73 = RF_60B2()
  t74 = RF_2FB9(S_SAKE_D_CCF0, 0)
  if (!(B[$EF52 + 2])) goto S_SAKE_L_C0F5
  t75 = RL_8875(((B[$EF52 + 3]) * 2) + 12)
  goto S_SAKE_L_C101
S_SAKE_L_C0F5:
S_SAKE_L_C101:
  v4 = L
  t76 = RF_40DE(v4)
  goto S_SAKE_L_BFBF
S_SAKE_L_C10E:
S_SAKE_L_C112:
  t77 = RF_2FB9(S_SAKE_D_CD1A, 0)
  t78 = S_SAKE_F_BA99(v6)
S_SAKE_L_C11B:
  $F18A = $F18A - 1
S_SAKE_L_C122:
  t79 = RF_472D()
S_SAKE_L_C125:
  t80 = S_SAKE_F_B95B()
  if (!t80) goto S_SAKE_L_C184
  t81 = S_SAKE_F_B945()
  if (!t81) goto S_SAKE_L_C184
  if (!(g_player_items+2 & $8000)) goto S_SAKE_L_C184
  t82 = RF_60B2()
  t83 = S_SAKE_F_BA0A()
  if ((byte)(g_king_mission+1)) goto S_SAKE_L_C14E
  goto S_SAKE_L_C176
S_SAKE_L_C14E:
  t84 = S_SAKE_F_B966()
  if (!t84) goto S_SAKE_L_C15B
  goto S_SAKE_L_C176
S_SAKE_L_C15B:
  t85 = RF_2FB9(S_SAKE_D_CD7F, 0)
  t86 = RF_40DE(((byte)g_king_mission * 19) + $0FD8)
S_SAKE_L_C176:
  t87 = RF_2FB9(S_SAKE_D_CD94, 0)
  $F18A = $F18A - 1
  t88 = RF_472D()
S_SAKE_L_C184:
  return

S_SAKE_F_C185:
  // frame 0
  t1 = S_SAKE_F_B95B()
  if (!t1) goto S_SAKE_L_C1D4
  t2 = S_SAKE_F_B945()
  if (t2) goto S_SAKE_L_C1D4
  t3 = RF_60B2()
  t4 = S_SAKE_F_BA0A()
  if ((byte)(g_king_mission+1)) goto S_SAKE_L_C1B4
  goto S_SAKE_L_C1AD
S_SAKE_L_C1A9:
S_SAKE_L_C1AD:
  t5 = RF_2FB9(S_SAKE_D_CDC3, 0)
  goto S_SAKE_L_C1CA
S_SAKE_L_C1B4:
  t6 = S_SAKE_F_B966()
  if (t6) goto S_SAKE_L_C1A9
  t7 = RF_2FB9(S_SAKE_D_CDE5, 0)
  t8 = S_SAKE_F_BA99((byte)g_king_mission)
S_SAKE_L_C1CA:
  $F18A = $F18A - 1
  t9 = RF_472D()
S_SAKE_L_C1D4:
  t10 = S_SAKE_F_B95B()
  if (!t10) goto S_SAKE_L_C1F8
  t11 = S_SAKE_F_B945()
  if (!t11) goto S_SAKE_L_C1F8
  t12 = S_SAKE_F_B950()
  if (t12) goto S_SAKE_L_C1F8
  t13 = S_SAKE_F_BB09((byte)(g_king_mission+3))
  $F18A = $F18A - 1
  t14 = RF_472D()
S_SAKE_L_C1F8:
  t15 = S_SAKE_F_B95B()
  if (!t15) goto S_SAKE_L_C253
  t16 = S_SAKE_F_B945()
  if (!t16) goto S_SAKE_L_C253
  t17 = S_SAKE_F_B950()
  if (!t17) goto S_SAKE_L_C253
  t18 = RF_60B2()
  t19 = S_SAKE_F_BA0A()
  if ((byte)(g_king_mission+1)) goto S_SAKE_L_C21D
  goto S_SAKE_L_C245
S_SAKE_L_C21D:
  t20 = S_SAKE_F_B966()
  if (!t20) goto S_SAKE_L_C22A
  goto S_SAKE_L_C245
S_SAKE_L_C22A:
  t21 = RF_2FB9(S_SAKE_D_CE3E, 0)
  t22 = RF_40DE(((byte)g_king_mission * 19) + $0FD8)
S_SAKE_L_C245:
  t23 = RF_2FB9(S_SAKE_D_CE51, 0)
  $F18A = $F18A - 1
  t24 = RF_472D()
S_SAKE_L_C253:
  return

S_SAKE_F_C254:
  // frame 0
  t1 = S_SAKE_F_B95B()
  if (!t1) goto S_SAKE_L_C27D
  t2 = S_SAKE_F_B945()
  if (t2) goto S_SAKE_L_C27D
  t3 = RF_60B2()
  t4 = S_SAKE_F_BA0A()
  t5 = RF_2FB9(S_SAKE_D_CE67, 0)
  $F18A = $F18A - 1
  t6 = RF_472D()
S_SAKE_L_C27D:
  t7 = S_SAKE_F_B95B()
  if (!t7) goto S_SAKE_L_C2DD
  t8 = S_SAKE_F_B945()
  if (!t8) goto S_SAKE_L_C2DD
  t9 = S_SAKE_F_B950()
  if (t9) goto S_SAKE_L_C2DD
  if (!(B[$EF52] == 3)) goto S_SAKE_L_C2CB
  $EF52 = $EF52 + 1
  t10 = RF_60B2()
  t11 = RF_2FB9(S_SAKE_D_CE8F, 1)
  t12 = RF_472D()
  t13 = RF_60B2()
  t14 = RF_2FB9(S_SAKE_D_CEC9, 0)
  t15 = S_SAKE_F_BACA((byte)(g_king_mission+3))
  t16 = RF_2FB9(S_SAKE_D_CEE3, 0)
  goto S_SAKE_L_C2D3
S_SAKE_L_C2CB:
  t17 = S_SAKE_F_BB09((byte)(g_king_mission+3))
S_SAKE_L_C2D3:
  $F18A = $F18A - 1
  t18 = RF_472D()
S_SAKE_L_C2DD:
  t19 = S_SAKE_F_B95B()
  if (!t19) goto S_SAKE_L_C307
  t20 = S_SAKE_F_B945()
  if (!t20) goto S_SAKE_L_C307
  t21 = S_SAKE_F_B950()
  if (!t21) goto S_SAKE_L_C307
  t22 = RF_60B2()
  t23 = S_SAKE_F_BA0A()
  t24 = RF_2FB9(S_SAKE_D_CEF3, 0)
  $F18A = $F18A - 1
  t25 = RF_472D()
S_SAKE_L_C307:
  return

S_SAKE_F_C308:
  // frame 0
  t1 = S_SAKE_F_B95B()
  if (!t1) goto S_SAKE_L_C331
  t2 = S_SAKE_F_B945()
  if (t2) goto S_SAKE_L_C331
  t3 = RF_60B2()
  t4 = S_SAKE_F_BA0A()
  t5 = RF_2FB9(S_SAKE_D_CF0F, 0)
  $F18A = $F18A - 1
  t6 = RF_472D()
S_SAKE_L_C331:
  t7 = S_SAKE_F_B95B()
  if (!t7) goto S_SAKE_L_C38C
  t8 = S_SAKE_F_B945()
  if (!t8) goto S_SAKE_L_C38C
  t9 = S_SAKE_F_B950()
  if (t9) goto S_SAKE_L_C38C
  t10 = RF_60B2()
  if (!((byte)(g_king_mission+3) != (byte)g_port)) goto S_SAKE_L_C37E
  t11 = RF_2FB9(S_SAKE_D_CF37, 0)
  t12 = RL_8875(((byte)(g_king_mission+3) * 2) + $1B24)
  t13 = RF_40DE(t12)
  t14 = RF_2FB9(S_SAKE_D_CF53, 0)
  $F18A = $F18A - 1
  goto S_SAKE_L_C389
S_SAKE_L_C37E:
  t15 = RF_60B2()
  t16 = RF_2FB9(S_SAKE_D_CF71, 1)
S_SAKE_L_C389:
  t17 = RF_472D()
S_SAKE_L_C38C:
  t18 = S_SAKE_F_B95B()
  if (!t18) goto S_SAKE_L_C3B6
  t19 = S_SAKE_F_B945()
  if (!t19) goto S_SAKE_L_C3B6
  t20 = S_SAKE_F_B950()
  if (!t20) goto S_SAKE_L_C3B6
  t21 = RF_60B2()
  t22 = S_SAKE_F_BA0A()
  t23 = RF_2FB9(S_SAKE_D_CF99, 0)
  $F18A = $F18A - 1
  t24 = RF_472D()
S_SAKE_L_C3B6:
  return

S_SAKE_F_C3B7:
  // frame 0
  t1 = rand(3)
  t2 = S_SAKE_F_B906(t1)
  switch ((byte)(g_king_mission+2)) [0, 5, S_SAKE_L_C3DD]

S_SAKE_F_C3F6:
  // frame 39
  t1 = rand(10)
  if (t1) goto S_SAKE_L_C47C
  t2 = rand(3)
  t3 = S_SAKE_F_B906(t2)
  t4 = S_SAKE_F_B89E(&v27)
  v35 = t4
  if (!v35) goto S_SAKE_L_C42C
  t5 = rand(v35)
  goto S_SAKE_L_C432
S_SAKE_L_C42C:
  t6 = rand(26)
S_SAKE_L_C432:
  v29 = L
  t7 = S_SAKE_F_B80F(v29)
  v31 = t7
  v37 = (v31 * 19) + $0FD8
  t8 = RF_60B2()
  t9 = RF_2FB9(S_SAKE_D_CFC0, 0)
  t10 = S_SAKE_F_BA99(v31)
  t11 = RF_2FB9(S_SAKE_D_CFC9, 0)
  t12 = RL_8875((v29 * 2) + $1B49)
  t13 = RF_40DE(t12)
  $F18A = $F18A - 1
  t14 = RF_472D()
  return t14
S_SAKE_L_C47C:
  t15 = rand(6)
  if (!t15) goto S_SAKE_L_C578
  t16 = rand(3)
  t17 = S_SAKE_F_B906(t16)
S_SAKE_L_C48E:
  t18 = rand(5)
  v31 = (t18 + (byte)g_port) - 2
  if ((byte)g_port == v31) goto S_SAKE_L_C4B5
  if (!(v31 >= 0)) goto S_SAKE_L_C48E
  if (!(v31 < 50)) goto S_SAKE_L_C48E
S_SAKE_L_C4B5:
  v2 = (v31 * 19) + $0FD8
  t19 = RF_60B2()
  v39 = (v31 * 5) + $150A
  if (!((B[v31 + g_port_flags]) & 8)) goto S_SAKE_L_C535
  t20 = RL_884E(v39 + 1)
  v33 = t20
  t21 = RF_2FB9(S_SAKE_D_CFE8, 0)
  t22 = RF_40DE(v2)
  if (!(v33 == 255)) goto S_SAKE_L_C503
S_SAKE_L_C4FC:
  t23 = RF_2FB9(S_SAKE_D_CFFD, 0)
  goto S_SAKE_L_C5AF
S_SAKE_L_C503:
  t24 = RL_884E(v39 + 2)
  if (!((t24 * 50) <= (W[(v31 * 14) + g_ports]))) goto S_SAKE_L_C52E
  t25 = RF_2FB9(S_SAKE_D_D021, 0)
  goto S_SAKE_L_C5A4
S_SAKE_L_C52E:
  goto S_SAKE_L_C4FC
S_SAKE_L_C535:
  v37 = (v31 * 19) + $0FD8
  t26 = RF_2FB9(S_SAKE_D_D069, 0)
  t27 = RF_40DE((v31 * 19) + $0FD8)
  t28 = RF_2FB9(S_SAKE_D_D084, 0)
  t29 = RL_884E(v37 + 16)
  t30 = RL_884E(v37 + 15)
  t31 = S_SAKE_F_BA45(t30, t29)
  goto S_SAKE_L_C5AF
S_SAKE_L_C578:
  t32 = S_SAKE_F_B906(3)
  v29 = (byte)(g_nations+15)
  t33 = RF_60B2()
  switch (v29) [0, 4, S_SAKE_L_C5C5]

S_SAKE_F_C5CC:
  // frame 4
  if (!(g_player_gold < 100)) goto S_SAKE_L_C5E9
  t1 = RF_60EE()
  t2 = RF_60B2()
  t3 = RF_4B44(S_SAKE_D_D11C)
  return 0
S_SAKE_L_C5E9:
  t4 = RF_60CE(0, 0)
  t5 = RF_60B2()
  t6 = RF_4B44(S_SAKE_D_D13A)
  v4 = W[((byte)g_port * 14) + g_ports]
  v2 = (((B[((byte)g_port * 14) + $E6BF]) + 50) / 10) * ((v4 / 300) + 1)
  t7 = RF_60CE(7, 1)
  t8 = RF_60B2()
  t9 = RF_3619(S_SAKE_D_D165, v2)
  t10 = RF_3DDF(1)
  g_player_gold = g_player_gold - v2
  t11 = RF_60EE()
  t12 = rand($03E8)
  if (!(t12 > (v4 + 300))) goto S_SAKE_L_C65B
  t13 = RF_60B2()
  t14 = RF_4B44(S_SAKE_D_D1A1)
  return 1
S_SAKE_L_C65B:
  t15 = RF_60B2()
  t16 = RF_4B44(S_SAKE_D_D1C9)
  if (!((byte)g_princess & 1)) goto S_SAKE_L_C67B
  t17 = rand(4)
  if (!t17) goto S_SAKE_L_C67B
  t18 = S_SAKE_F_C3B7()
  goto S_SAKE_L_C67E
S_SAKE_L_C67B:
  t19 = S_SAKE_F_C3F6()
S_SAKE_L_C67E:
  return 1
S_SAKE_D_C680:

