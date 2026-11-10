SENSOU_F_9603:
  // frame 0
  t1 = SENSOU_F_9649()
  return t1

SENSOU_F_960C:
  // frame 2
  t1 = sys24_file_open(W[(a0 * 2) + SENSOU_D_A058])
  v2 = t1
  t2 = sys26_file_seek(v2, 0, 0, pop())
  t3 = sys27_file_read_7e(v2, $A500, $3A00)
  t4 = sys25_file_close(v2)
  t5 = (*$A500)()
  return t5

SENSOU_F_9649:
  // frame 0
  (byte)$F300 = 0
  t1 = SENSOU_F_960C(1)
  t2 = SENSOU_F_960C(0)
  t3 = SENSOU_F_960C(1)
  return t3

SENSOU_F_9662:
  // frame 0
  t1 = RF_3DF1(1, a0, a1, 2, 2, W[((a2 * 12) + (a3 * 2)) + SENSOU_D_A06A], g_fh_cbmap0)
  return t1

SENSOU_F_9682:
  // frame 0
  if (!(a2 < 2)) goto SENSOU_L_968E
  return a2 < 2
SENSOU_L_968E:
  if (!(a2 < 3)) goto SENSOU_L_96A2
  goto SENSOU_L_96B2
SENSOU_L_96A2:
SENSOU_L_96B2:
  t1 = RF_3DF1(1, a0, a1, 2, 2, (a2 << 3) + $0408, g_fh_cbmap0)
  return t1

SENSOU_F_96B7:
  // frame 0
  if (!(a0 != $F302)) goto SENSOU_L_9772
  t1 = sys55_sprite_anim_stream(0, 2, 264, a0, 4, 40, 0, RD_9220, 28)
  t2 = sys55_sprite_anim_stream(1, 2, 268, a0, 0, 0, 0, RD_92A0, 28)
  t3 = sys55_sprite_anim_stream(2, 2, 272, a0, 0, 0, 0, RD_9320, 28)
  t4 = sys55_sprite_anim_stream(3, 2, 276, a0, 0, 0, 0, RD_93A0, 28)
  t5 = sys55_sprite_anim_stream(4, 2, 280, a0, 0, 0, 0, RD_9420, 28)
  t6 = sys55_sprite_anim_stream(5, 2, 284, a0, 0, 0, 0, RD_94A0, 28)
  t7 = sys55_sprite_anim_stream(6, 2, 288, a0, 0, 0, 0, RD_9520, 28)
  t8 = sys55_sprite_anim_stream(7, 2, 292, a0, 0, 0, 255, RD_95A0, 28)
  t9 = sys16_wait_frames(1)
  $F302 = a0
SENSOU_L_9772:
  return

SENSOU_F_9773:
  // frame 2
  if (a0) goto SENSOU_L_9780
  goto SENSOU_L_9784
SENSOU_L_9780:
SENSOU_L_9784:
  v2 = L
  t1 = RF_2FB9(W[(v2 * 2) + SENSOU_D_A09A], 0)
  return t1

SENSOU_F_9793:
  // frame 0
  t1 = sys5_tilemap_write(3, 12, 26, 19, 2, $2000)
  t2 = RF_2FB9(SENSOU_D_A0C0, 1)
  t3 = RF_2F8F(13, 26)
  return t3

SENSOU_F_97B7:
  // frame 2
  v2 = $3B22
  $F306 = (($F304 * 2) + 1) << 3
  if (!($F304 % 2)) goto SENSOU_L_97DB
  goto SENSOU_L_97DC
SENSOU_L_97DB:
SENSOU_L_97DC:
  $F30A = ((L + ($F308 * 2)) << 3) - 1
  t1 = sys10_sprite_move(20, $F306, $F30A, v2, 2, 1)
  return t1

SENSOU_F_97F5:
  // frame 0
  t1 = sys10_sprite_move(20, $F306, $F30A, $3100, 2, 0)
  t2 = sys58_sprites_hide(20, 1)
  return t2

SENSOU_F_9816:
  // frame 4
  v2 = (a0 * 7) + g_ships
  v4 = (a1 * 7) + g_ships
  t1 = RF_2F8F(3, 24)
  t2 = RF_3608(SENSOU_D_A0CA)
  t3 = RF_2F8F(25, 24)
  t4 = RF_3608(SENSOU_D_A0CF)
  t5 = RF_2F8F(3, 25)
  t6 = RF_3608(SENSOU_D_A0D4, B[v2])
  t7 = RF_2F8F(25, 25)
  t8 = RF_3608(SENSOU_D_A0D8, B[v4])
  t9 = RF_2F8F(3, 26)
  t10 = RF_3608(SENSOU_D_A0DC)
  t11 = RF_2F8F(25, 26)
  t12 = RF_3608(SENSOU_D_A0E1)
  t13 = RF_2F8F(3, 27)
  t14 = RF_3608(SENSOU_D_A0E6, W[v2 + 4])
  t15 = RF_2F8F(25, 27)
  t16 = RF_3608(SENSOU_D_A0EA, W[v4 + 4])
  return t16

SENSOU_F_98AE:
  // frame 8
  t1 = SENSOU_F_9793()
  t2 = RF_4D41(1, 22, 30, 6)
  t3 = sys48_color_math(48, 0, 0)
  t4 = sys39_window_off()
  t5 = sys5_tilemap_write(1, 1, 22, 30, 6, 0)
  t6 = sys58_sprites_hide(10, 10)
  t7 = SENSOU_F_96B7(1)
  v4 = (a0 * 7) + g_ships
  v6 = (a1 * 7) + g_ships
  v2 = a0 / 5
  t8 = RF_2F8F(2, 22)
  if (v2) goto SENSOU_L_991C
  t9 = RF_40A5((B[v4 + 6]) & 15)
  v8 = t9
  t10 = RF_40DE(v8)
  goto SENSOU_L_9921
SENSOU_L_991C:
  t11 = SENSOU_F_9773(v2)
SENSOU_L_9921:
  v2 = a1 / 5
  t12 = RF_2F8F(22, 22)
  if (v2) goto SENSOU_L_9944
  t13 = RF_40A5((B[v6 + 6]) & 15)
  v8 = t13
  t14 = RF_40DE(v8)
  goto SENSOU_L_9949
SENSOU_L_9944:
  t15 = SENSOU_F_9773(v2)
SENSOU_L_9949:
  t16 = SENSOU_F_9816(a0, a1)
  if (!a2) goto SENSOU_L_9972
  t17 = RF_3DF1(1, 10, 22, 4, 6, $1510, g_fh_cbmap0)
  goto SENSOU_L_998E
SENSOU_L_9972:
  t18 = RF_3DF1(1, 1, 22, 11, 6, $16E4, g_fh_cbmap0)
SENSOU_L_998E:
  t19 = RF_3DF1(1, 20, 22, 11, 6, $1660, g_fh_cbmap0)
  return t19

SENSOU_F_9994:
  // frame 12
  if (!(a2 == 1)) goto SENSOU_L_99BA
  a3 = a3 % 10
  t1 = RF_3DF1(1, a0, a1, a2, 1, (a3 * 2) + $05D8, g_fh_cbmap0)
  goto SENSOU_L_9A46
SENSOU_L_99BA:
  if (!(a2 > 1)) goto SENSOU_L_9A46
  if (!(a2 <= 2)) goto SENSOU_L_9A46
  t2 = sys36_memset_long(126, &v8, 255, a2)
  goto SENSOU_L_99EC
SENSOU_L_99DA:
  B[v12 + (&v8)] = a3 % 10
  a3 = a3 / 10
SENSOU_L_99EC:
  v12 = L - 1
  if (!a3) goto SENSOU_L_99F9
  if (v12 > (-1)) goto SENSOU_L_99DA
SENSOU_L_99F9:
  v6 = &v4
  goto SENSOU_L_9A2F
SENSOU_L_9A01:
  v10 = B[v12 + (&v8)]
  if (!(v10 == 255)) goto SENSOU_L_9A18
  W[v6] = 0
  goto SENSOU_L_9A2A
SENSOU_L_9A18:
  t3 = RF_3FC8(g_fh_cbmap0, (v10 * 2) + $05D8, 126, v6, 2)
SENSOU_L_9A2A:
  v6 = v6 + 2
SENSOU_L_9A2F:
  v12 = L
  if (v12 < a2) goto SENSOU_L_9A01
  t4 = sys6_tilemap_copy(1, a0, a1, a2, 1, &v4, 126)
SENSOU_L_9A46:
  return

SENSOU_F_9A47:
  // frame 2
  if (!$F30C) goto SENSOU_L_9A92
  if (!((byte)g_month > 2)) goto SENSOU_L_9A6A
  if (!((byte)g_month < 9)) goto SENSOU_L_9A6A
  goto SENSOU_L_9A6D
SENSOU_L_9A6A:
SENSOU_L_9A6D:
  v2 = L & 15
  t1 = RF_3E5A(10, 16, 191, 2, 2, (v2 << 3) + $0E10, g_fh_cbmap0)
  t2 = SENSOU_F_9994(5, 22, 1, $F30C)
SENSOU_L_9A92:
  return

SENSOU_F_9A93:
  // frame 2
  t1 = $894B(207 - a0, 173)
  v2 = t1
  t2 = RF_3E5A(14, 64, v2, 2, 2, $0E08, g_fh_cbmap0)
  return t2

SENSOU_F_9AB7:
  // frame 2
  t1 = SENSOU_F_9816(a0, a1)
  v2 = (a1 * 7) + g_ships
  if (!a2) goto SENSOU_L_9AE0
  if (B[v2]) goto SENSOU_L_9AD9
  t2 = SENSOU_F_9D39()
  goto SENSOU_L_9AE8
SENSOU_L_9AD9:
  goto SENSOU_L_9AE4
SENSOU_L_9AE0:
SENSOU_L_9AE4:
  t3 = RF_2FB9(SENSOU_D_A0F1, 1)
SENSOU_L_9AE8:
  t4 = SENSOU_F_97F5()
  t5 = RF_229B()
  t6 = RF_4D8B(1, 22, 30, 6)
  t7 = SENSOU_F_9A47()
  t8 = SENSOU_F_9A93($F30E)
  return t8

SENSOU_F_9B03:
  // frame 0
  if (!(a0 < 148)) goto SENSOU_L_9B1A
  if (!(a1 < 216)) goto SENSOU_L_9B1A
  return 1
SENSOU_L_9B1A:
  return 0

SENSOU_F_9B1C:
  // frame 2
  v2 = 0
SENSOU_L_9B23:
  if (!((W[(v2 * 2) + a0]) == 1)) goto SENSOU_L_9B2F
  return 0
SENSOU_L_9B2F:
  v2 = v2 + 1
  if (v2 < 3) goto SENSOU_L_9B23
  return 1

SENSOU_F_9B3A:
  // frame 24
  v2 = 0
SENSOU_L_9B41:
  v4 = 0
SENSOU_L_9B43:
  W[(v4 * 2) + (&v18)] = 207
  W[(v4 * 2) + (&v12)] = 104
  v4 = v4 + 1
  if (v4 < 3) goto SENSOU_L_9B43
  t1 = RF_21CA(25)
SENSOU_L_9B6C:
  v6 = L
  v4 = 0
SENSOU_L_9B6F:
  t2 = SENSOU_F_9B03(W[(v4 * 2) + (&v12)], W[(v4 * 2) + (&v18)])
  W[(v4 * 2) + (&v24)] = t2
  if (!(W[(v4 * 2) + (&v24)])) goto SENSOU_L_9BC2
  t3 = sys19_sprite_commit(v4 + 48, W[(v4 * 2) + (&v12)], W[(v4 * 2) + (&v18)], SENSOU_D_A0F4, 0)
  goto SENSOU_L_9BCD
SENSOU_L_9BC2:
  t4 = sys58_sprites_hide(v4 + 48, 1)
SENSOU_L_9BCD:
  v4 = v4 + 1
  if (v4 < 3) goto SENSOU_L_9B6F
  t5 = SENSOU_F_9B1C(&v24)
  if (t5) goto SENSOU_L_9CB7
  if (!(v6 < 16)) goto SENSOU_L_9C3E
  v4 = 0
SENSOU_L_9BEA:
  t6 = rand(3)
  if (!t6) goto SENSOU_L_9C00
  goto SENSOU_L_9C0D
SENSOU_L_9C00:
SENSOU_L_9C0D:
  W[(v4 * 2) + (&v12)] = L
  t7 = rand(2)
  if (!t7) goto SENSOU_L_9C24
  goto SENSOU_L_9C31
SENSOU_L_9C24:
SENSOU_L_9C31:
  W[(v4 * 2) + (&v18)] = L
  v4 = v4 + 1
  if (v4 < 3) goto SENSOU_L_9BEA
  goto SENSOU_L_9CB2
SENSOU_L_9C3E:
  if (!(v6 < 24)) goto SENSOU_L_9C5F
  v4 = 0
SENSOU_L_9C47:
  W[(v4 * 2) + (&v12)] = (W[(v4 * 2) + (&v12)]) + 1
  v4 = v4 + 1
  if (v4 < 3) goto SENSOU_L_9C47
  goto SENSOU_L_9CB2
SENSOU_L_9C5F:
  v4 = 0
SENSOU_L_9C61:
  t8 = rand(3)
  if (!t8) goto SENSOU_L_9C77
  goto SENSOU_L_9C84
SENSOU_L_9C77:
SENSOU_L_9C84:
  W[(v4 * 2) + (&v12)] = L
  t9 = rand(2)
  if (!t9) goto SENSOU_L_9C9B
  goto SENSOU_L_9CA8
SENSOU_L_9C9B:
SENSOU_L_9CA8:
  W[(v4 * 2) + (&v18)] = L
  v4 = v4 + 1
  if (v4 < 3) goto SENSOU_L_9C61
SENSOU_L_9CB2:
  goto SENSOU_L_9B6C
SENSOU_L_9CB7:
  t10 = sys16_wait_frames(4)
  t11 = RF_3DF1(1, 16, 22, 6, 6, $1540, g_fh_cbmap0)
  t12 = sys16_wait_frames(4)
  t13 = RF_3DF1(1, 16, 22, 6, 6, $1588, g_fh_cbmap0)
  t14 = sys16_wait_frames(4)
  t15 = RF_3DF1(1, 16, 22, 6, 6, $15D0, g_fh_cbmap0)
  t16 = sys16_wait_frames(4)
  t17 = RF_3DF1(1, 16, 22, 6, 6, $1618, g_fh_cbmap0)
  t18 = sys16_wait_frames(4)
  t19 = RF_3DF1(1, 16, 22, 6, 6, $1540, g_fh_cbmap0)
  v2 = v2 + 1
  if (v2 < 2) goto SENSOU_L_9B41
  return v2 < 2

SENSOU_F_9D39:
  // frame 20
  v2 = 128
  v20 = 0
SENSOU_L_9D44:
  W[(v20 * 2) + (&v14)] = (v20 + 22) << 3
  v20 = v20 + 1
  if (v20 < 6) goto SENSOU_L_9D44
  v16 = 48
  v20 = 0
SENSOU_L_9D61:
  t1 = RF_3E5A(v16, v2, W[(v20 * 2) + (&v14)], 6, 1, W[(v20 * 2) + SENSOU_D_A0F6], g_fh_cbmap0)
  v16 = v16 + 6
  v20 = v20 + 1
  if (v20 < 6) goto SENSOU_L_9D61
  t2 = sys5_tilemap_write(1, 16, 22, 6, 6, 0)
  t3 = SENSOU_F_96B7(0)
  t4 = sys38_window_shape(128, 218, 176, 239, 16, 0)
  goto SENSOU_L_9E10
SENSOU_L_9DB6:
  v18 = 4
  v20 = 0
SENSOU_L_9DBA:
  W[(v20 * 2) + (&v14)] = (W[(v20 * 2) + (&v14)]) + v18
  v20 = v20 + 1
  if (v20 < 5) goto SENSOU_L_9DBA
  v16 = 48
  v20 = 0
SENSOU_L_9DD6:
  if (!(v14 < 224)) goto SENSOU_L_9DFB
  t5 = RF_3E5A(v16, v2, W[(v20 * 2) + (&v14)], 6, 1, W[(v20 * 2) + SENSOU_D_A0F6], g_fh_cbmap0)
SENSOU_L_9DFB:
  v16 = v16 + 6
  v20 = v20 + 1
  if (v20 < 5) goto SENSOU_L_9DD6
  t6 = sys16_wait_frames(8)
SENSOU_L_9E10:
  if (v14 < 216) goto SENSOU_L_9DB6
  t7 = sys8_oam_hide_all()
  t8 = sys16_wait_frames(8)
  t9 = sys39_window_off()
  t10 = sys16_wait_frames(8)
  return t10

SENSOU_F_9E32:
  // frame 2
  t1 = RF_3DF1(1, 10, 26, 2, 1, $176C, g_fh_cbmap0)
  v2 = 0
SENSOU_L_9E49:
  t2 = RF_3DF1(1, v2 + 12, 26, 1, 1, $1770, g_fh_cbmap0)
  t3 = sys16_wait_frames(2)
  v2 = v2 + 1
  if (v2 < 8) goto SENSOU_L_9E49
  t4 = RF_3DF1(1, 20, 26, 2, 1, $1768, g_fh_cbmap0)
  t5 = RF_3DF1(1, 12, 23, 2, 3, $1772, g_fh_cbmap0)
  t6 = sys16_wait_frames(2)
  t7 = RF_3DF1(1, 18, 23, 2, 3, $1796, g_fh_cbmap0)
  t8 = sys16_wait_frames(2)
  t9 = RF_3DF1(1, 13, 23, 2, 3, $177E, g_fh_cbmap0)
  t10 = sys16_wait_frames(2)
  t11 = RF_3DF1(1, 17, 23, 2, 3, $17A2, g_fh_cbmap0)
  t12 = sys16_wait_frames(2)
  t13 = RF_3DF1(1, 14, 23, 2, 3, $178A, g_fh_cbmap0)
  t14 = sys16_wait_frames(2)
  t15 = RF_3DF1(1, 16, 23, 2, 3, $17AE, g_fh_cbmap0)
  t16 = sys16_wait_frames(2)
  v2 = 0
SENSOU_L_9F0B:
  t17 = RF_21CA(23)
  t18 = RF_3DF1(1, 16, 22, 1, 1, $184C, g_fh_cbmap0)
  t19 = RF_3DF1(1, 14, 22, 1, 1, $184E, g_fh_cbmap0)
  t20 = sys16_wait_frames(1)
  t21 = RF_3DF1(1, 12, 23, 8, 3, $17BA, g_fh_cbmap0)
  t22 = sys5_tilemap_write(1, 13, 22, 6, 1, 0)
  t23 = RF_3DF1(1, 15, 22, 1, 1, $184E, g_fh_cbmap0)
  t24 = RF_3DF1(1, 17, 22, 1, 1, $184C, g_fh_cbmap0)
  t25 = RF_3DF1(1, 14, 22, 1, 1, $184A, g_fh_cbmap0)
  t26 = RF_229B()
  t27 = sys16_wait_frames(1)
  t28 = RF_3DF1(1, 12, 23, 8, 3, $17EA, g_fh_cbmap0)
  t29 = RF_21CA(23)
  t30 = sys5_tilemap_write(1, 13, 22, 6, 1, 0)
  t31 = RF_3DF1(1, 15, 22, 1, 1, $184A, g_fh_cbmap0)
  t32 = RF_3DF1(1, 16, 22, 1, 1, $184E, g_fh_cbmap0)
  t33 = RF_3DF1(1, 14, 22, 1, 1, $184C, g_fh_cbmap0)
  t34 = sys16_wait_frames(1)
  t35 = RF_3DF1(1, 12, 23, 8, 3, $181A, g_fh_cbmap0)
  t36 = sys5_tilemap_write(1, 13, 22, 6, 1, 0)
  t37 = RF_3DF1(1, 15, 22, 1, 1, $184C, g_fh_cbmap0)
  t38 = RF_3DF1(1, 16, 22, 1, 1, $184A, g_fh_cbmap0)
  t39 = RF_3DF1(1, 17, 22, 1, 1, $184E, g_fh_cbmap0)
  t40 = sys5_tilemap_write(1, 13, 22, 6, 1, 0)
  t41 = RF_229B()
  v2 = v2 + 1
  if (v2 < 5) goto SENSOU_L_9F0B
  t42 = sys16_wait_frames(1)
  return t42
SENSOU_D_A058:

