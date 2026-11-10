MDISP1_F_B003:
  // frame 0
  if (!$F9AA) goto MDISP1_L_B017
  t1 = MDISP1_F_B2CF((byte)g_port)
  return t1
MDISP1_L_B017:
  if (!($F9AC == 2)) goto MDISP1_L_B02D
  t2 = MDISP1_F_B2CF((byte)g_port)
  t3 = MDISP1_F_BA88(1)
  return t3
MDISP1_L_B02D:
  if (!($F9AC == 1)) goto MDISP1_L_B03B
  t4 = MDISP1_F_BA88(0)
  return t4
MDISP1_L_B03B:
  t5 = MDISP1_F_B5CC()
  return t5

MDISP1_F_B03F:
  // frame 2
  v2 = ((byte)g_port * 19) + $0FD8
  t1 = RF_3DF1(2, 1, 1, 30, 27, $8478, g_fh_cbmap0)
  t2 = RF_3DF1(2, 1, 33, 30, 27, $8478, g_fh_cbmap0)
  t3 = RF_2FB9(MDISP1_D_BB1A, 1)
  t4 = RF_2F8F(16, 3)
  t5 = RF_40DE(v2)
  t6 = RF_4A99()
  t7 = RF_4AC6()
  t8 = RF_4AF7()
  t9 = RF_2FB9(MDISP1_D_BB1E, 1)
  return t9

MDISP1_F_B098:
  // frame 2
  t1 = RF_3E7E(0, 0)
  t2 = RF_3E7E(0, 1)
  t3 = sys26_file_seek(g_fh_fdata, (a0 << 5) + RL_2790, 0, pop())
  t4 = sys29_file_palette_dma(g_fh_fdata, 32, 32)
  t5 = sys26_file_seek(g_fh_fdata, (a0 << 5) + $2890, 0, pop())
  t6 = sys29_file_palette_dma(g_fh_fdata, 96, 32)
  t7 = RF_3EC3(1, 1, 1)
  t8 = RF_3EC3(1, 4, 1)
  return t8

MDISP1_F_B0FC:
  // frame 0
  if (!(a0 > 0)) goto MDISP1_L_B10A
  a0 = a0 - 1
MDISP1_L_B10A:
  t1 = RF_3DF1(2, B[(a0 * 2) + MDISP1_D_BB22], (B[(a0 * 2) + MDISP1_D_BB23]) - 1, B[(a0 * 2) + MDISP1_D_BB2E], B[(a0 * 2) + MDISP1_D_BB2F], W[((a1 * 12) + (a0 * 2)) + $ACC2], g_fh_cbmap0)
  t2 = RF_3DF1(2, B[(a0 * 2) + MDISP1_D_BB22], (B[(a0 * 2) + MDISP1_D_BB23]) + 31, B[(a0 * 2) + MDISP1_D_BB2E], B[(a0 * 2) + MDISP1_D_BB2F], W[((a1 * 12) + (a0 * 2)) + $AD22], g_fh_cbmap0)
  return t2

MDISP1_F_B17A:
  // frame 5
  t1 = $97F5()
  t2 = RF_3DF1(2, 2, 5, 28, 15, W[(a0 * 2) + MDISP1_D_BB3A], g_fh_cbmap0)
  t3 = RF_3DF1(2, 2, 37, 28, 15, W[(a0 * 2) + MDISP1_D_BB4A], g_fh_cbmap0)
  (byte)v1 = B[(byte)g_port + g_port_flags]
  (byte)$EF68 = 0
  goto MDISP1_L_B215
MDISP1_L_B1C0:
  if (!((byte)g_port < 50)) goto MDISP1_L_B1FF
  if (!(v3 == 1)) goto MDISP1_L_B1E3
  goto MDISP1_L_B1DC
MDISP1_L_B1D7:
MDISP1_L_B1DC:
  if (!(L & R)) goto MDISP1_L_B212
  goto MDISP1_L_B1F8
MDISP1_L_B1E3:
  if (v3 == 2) goto MDISP1_L_B1D7
  if (!(v3 > 0)) goto MDISP1_L_B1FF
  if (!(v3 < 7)) goto MDISP1_L_B1FF
MDISP1_L_B1F8:
  t4 = MDISP1_F_B0FC(v3, a0)
MDISP1_L_B1FF:
  if (!(v3 < 8)) goto MDISP1_L_B212
  (byte)$EF68 = (byte)$EF68 | (1 << v3)
MDISP1_L_B212:
MDISP1_L_B215:
  v3 = L
  if (v3 < 9) goto MDISP1_L_B1C0
  return v3 < 9

MDISP1_F_B21F:
  // frame 4
  t1 = RF_3DF1(2, 2, 20, 28, 7, $82F0, g_fh_cbmap0)
  t2 = RF_3DF1(2, 2, 52, 28, 7, $82F0, g_fh_cbmap0)
  t3 = RF_3DF1(2, 2, 18, 18, 2, $8248, g_fh_cbmap0)
  t4 = RF_3DF1(2, 2, 50, 18, 2, $8248, g_fh_cbmap0)
  t5 = RF_3DF1(2, 20, 20, 10, 2, $82C8, g_fh_cbmap0)
  t6 = RF_3DF1(2, 20, 52, 10, 2, $82C8, g_fh_cbmap0)
  t7 = RF_3DF1(1, 16, 18, 4, 2, $8ACC, g_fh_cbmap0)
  t8 = RF_3DF1(1, 13, 18, 3, 2, RD_8AEC, g_fh_cbmap0)
  return t8

MDISP1_F_B2AC:
  // frame 0
  t1 = sys26_file_seek(a6, a5, 0, pop())
  t2 = sys30_file_tilemap_copy(a0, a1, a2, a3, a4, a6)
  return t2

MDISP1_F_B2CF:
  // frame 21
  t1 = sys76_lz_decompress(0, $96FB, 22)
  goto MDISP1_L_B2FA
MDISP1_L_B2E4:
  v21 = ((byte)v1 * 24) + g_cargo
  if (!B[v21]) goto MDISP1_L_B305
MDISP1_L_B2FA:
  (byte)v1 = L
  if ((byte)v1 < 5) goto MDISP1_L_B2E4
MDISP1_L_B305:
  t2 = RF_40A5((byte)v1)
  v19 = t2
  (byte)v1 = B[v19 + 20]
  v3 = ((byte)v1 >> 5) & 7
  v5 = ((byte)v1 >> 4) & 1
  v7 = ((byte)v1 >> 2) & 3
  v9 = W[(((v3 * 12) + (v5 * 6)) + (v7 * 2)) + MDISP1_D_BB66]
  v13 = (B[(v3 * 2) + MDISP1_D_BB5A]) * (B[(v3 * 2) + MDISP1_D_BB5B])
  (byte)$FB82 = B[(v3 * 2) + MDISP1_D_BB5A]
  (byte)$FB83 = B[(v3 * 2) + MDISP1_D_BB5B]
  if (!($F9AC == 2)) goto MDISP1_L_B37E
  return $F9AC == 2
MDISP1_L_B37E:
  t3 = sys11_vram_load_tiles(944, v13, v9 << 5, 127, 1)
  if (!$F9AA) goto MDISP1_L_B397
  return $F9AA
MDISP1_L_B397:
  t4 = MDISP1_F_B2AC(1, 5, 20, B[(v3 * 2) + MDISP1_D_BB5A], B[(v3 * 2) + MDISP1_D_BB5B], RD_8B04, g_fh_cbmap0)
  if (!((byte)a0 < 50)) goto MDISP1_L_B58C
  if ((byte)a0 == 11) goto MDISP1_L_B3D8
  if ((byte)a0 == 5) goto MDISP1_L_B3D8
  if (!((byte)a0 == 4)) goto MDISP1_L_B4A9
MDISP1_L_B3D8:
MDISP1_L_B3D9:
  v3 = L
MDISP1_L_B3DB:
  t5 = rand(3)
  v5 = t5
  v9 = W[((v3 * 12) + ((v5 * 2) * 2)) + MDISP1_D_BC62]
  if (!(v9 < $0400)) goto MDISP1_L_B58C
  v13 = (B[((v3 * 6) + (v5 * 2)) + MDISP1_D_BBAE]) * (B[((v3 * 6) + (v5 * 2)) + MDISP1_D_BC08])
  t6 = sys11_vram_load_tiles(344, v13, v9 << 5, 127, 1)
  t7 = MDISP1_F_B2AC(1, 15, 21, B[((v3 * 6) + (v5 * 2)) + MDISP1_D_BBAE], B[((v3 * 6) + (v5 * 2)) + MDISP1_D_BC08], RD_8BC4, g_fh_cbmap0)
  v11 = W[((v3 * 12) + ((v5 * 2) * 2)) + MDISP1_D_BC64]
  if (!(v11 < $0400)) goto MDISP1_L_B58C
  if (!(v11 == v9)) goto MDISP1_L_B528
  goto MDISP1_L_B580
MDISP1_L_B4A9:
  if (!((byte)a0 == 47)) goto MDISP1_L_B4B6
  goto MDISP1_L_B3D9
MDISP1_L_B4B6:
  v17 = ((byte)a0 * 14) + g_ports
  switch ($F99C) [0, 8, MDISP1_L_B3DB]

MDISP1_F_B58D:
  // frame 0
  t1 = sys13_vram_load_obj_tiles(240, 60, $8000, 17)
  if (!((byte)$FB84 != 255)) goto MDISP1_L_B5CB
  t2 = sys13_vram_load_obj_tiles(300, W[(((byte)a0 * 2) * 2) + MDISP1_D_BD18], W[(((byte)a0 * 2) * 2) + MDISP1_D_BD16], 17)
MDISP1_L_B5CB:
  return

MDISP1_F_B5CC:
  // frame 0
  if (!((byte)$EF6A != 1)) goto MDISP1_L_B5E1
  (byte)$EF6A = 1
  $EF6B = 0
MDISP1_L_B5E1:
  t1 = sys37_brightness_set(0)
  t2 = RF_3D7C()
  t3 = $9762((byte)(g_fleets+1))
  t4 = sys11_vram_load_tiles(119, 32, RD_8B6D, 22, 1)
  t5 = sys76_lz_decompress(0, $8000, 22)
  t6 = sys11_vram_load_tiles(151, 189, 0, 127, 2)
  t7 = sys11_vram_load_tiles(933, 11, $17A0, 127, 2)
  t8 = MDISP1_F_B58D((byte)$FB84)
  t9 = MDISP1_F_B03F()
  t10 = MDISP1_F_B17A($F99C)
  t11 = MDISP1_F_B21F()
  t12 = MDISP1_F_B2CF((byte)g_port)
  t13 = $9825(1)
  t14 = MDISP1_F_B098($F99C)
  t15 = RF_4F2A(1)
  return t15

MDISP1_F_B65B:
  // frame 21
  goto MDISP1_L_B749
MDISP1_L_B664:
  v20 = ((B[v2 + MDISP1_D_BD2A]) * 154) + $F9B2
  W[v20 + 152] = 2
  switch (W[v20 + 150]) {3 cases}

MDISP1_F_B751:
  // frame 1
  (byte)v1 = (B[(byte)a0 + g_port_flags]) & 3
  switch ((byte)v1) [0, 4, MDISP1_L_B77B]

MDISP1_F_B77C:
  // frame 145
  v14 = (byte)$FB82
  v18 = (byte)$FB83
  t1 = RF_5375(2, 1, 19, 1, 9, &v140, 126)
  v2 = 0
MDISP1_L_B79B:
  W[(v2 * 2) + (&v140)] = (W[(v2 * 2) + (&v140)]) | $2000
  v2 = v2 + 1
  if (v2 < 9) goto MDISP1_L_B79B
  t2 = RF_3EC3(2, 6, 0)
  t3 = RF_532F(1, 1, 19, 1, 9, &v140, 126)
  t4 = RF_532F(2, 0, 19, 2, 9, MDISP1_D_BD30, 126)
  t5 = sys36_memset_long(126, &v122, 0, 96)
  v10 = 0
  v8 = 0
  goto MDISP1_L_B838
MDISP1_L_B7EF:
  v12 = 0
  goto MDISP1_L_B82B
MDISP1_L_B7F5:
  t6 = sys26_file_seek(g_fh_cbmap0, (v2 * 2) + RD_8B64, 0, pop())
  t7 = sys28_file_read(g_fh_cbmap0, 126, ((v8 * 12) + (v12 * 2)) + (&v122), 2)
  v12 = v12 + 1
MDISP1_L_B82B:
  v2 = L
  if (v12 < v18) goto MDISP1_L_B7F5
  v8 = v8 + 1
  v10 = v10 + 1
MDISP1_L_B838:
  if (v8 < v14) goto MDISP1_L_B7EF
  v22 = 34
  v8 = 5
  v2 = 0
  goto MDISP1_L_B86F
MDISP1_L_B848:
  t8 = sys9_metasprite_set(v22, v8 << 3, 159, 1, v18, (v2 * 12) + (&v122), 0, 126)
  v2 = v2 + 1
  v22 = v22 + v18
  v8 = v8 + 1
MDISP1_L_B86F:
  if (v2 < v14) goto MDISP1_L_B848
  t9 = sys5_tilemap_write(1, 5, 20, v14, v18, 0)
  t10 = RF_3E5A(82, 104, 143, 3, 2, RD_8AF8, g_fh_cbmap0)
  t11 = sys5_tilemap_write(1, 13, 18, 3, 2, 0)
  t12 = $9C39(3, $F306, 1)
  if ($F9AE) goto MDISP1_L_B8CA
  if (!((byte)$FB84 != 255)) goto MDISP1_L_B8CA
  t13 = MDISP1_F_B751((byte)g_port)
  v20 = t13
  t14 = MDISP1_F_B65B(v20)
  goto MDISP1_L_B8D2
MDISP1_L_B8CA:
  t15 = sys16_wait_frames(45)
MDISP1_L_B8D2:
  t16 = sys16_wait_frames(8)
  t17 = $9FA9()
  v4 = 0
  v6 = 0
  v8 = 104
  v12 = 144
  goto MDISP1_L_B9AD
MDISP1_L_B8EA:
  t18 = rand(2)
  t19 = RF_3E5A(82, v8, (t18 + v12) - 1, 3, 2, RD_8AF8, g_fh_cbmap0)
  if (v4 % 3) goto MDISP1_L_B98F
  if ($F9AE) goto MDISP1_L_B98F
  if (!((byte)$FB84 != 255)) goto MDISP1_L_B98F
  v6 = v6 + 1
  (byte)v145 = B[((v6 + 1) - 1) + MDISP1_D_BD57]
  if (!(v6 > 2)) goto MDISP1_L_B92C
  v6 = 0
MDISP1_L_B92C:
  goto MDISP1_L_B985
MDISP1_L_B930:
  v142 = ((B[v2 + MDISP1_D_BD54]) * 154) + $F9B2
  t20 = sys9_metasprite_set(W[v142 + 144], (W[v142 + 146]) << 3, ((W[v142 + 148]) << 3) - 1, 2, 3, (((byte)v145 + (W[v142 + 152])) * 12) + v142, 0, 126)
  t21 = sys16_wait_frames(1)
MDISP1_L_B985:
  v2 = L
  if (v2 < v20) goto MDISP1_L_B930
  goto MDISP1_L_B996
MDISP1_L_B98F:
  t22 = sys16_wait_frames(2)
MDISP1_L_B996:
  if (v8 % 3) goto MDISP1_L_B9A7
  if (!(v12 < 176)) goto MDISP1_L_B9A7
  v12 = v12 + 1
MDISP1_L_B9A7:
  v8 = v8 - 1
  v4 = v4 + 1
MDISP1_L_B9AD:
  if (v8 > 56) goto MDISP1_L_B8EA
  t23 = sys16_wait_frames(15)
  t24 = sys58_sprites_hide(82, 6)
  t25 = sys16_wait_frames(2)
  v24 = 34
  v26 = (v14 + 5) << 3
  v4 = 0
  goto MDISP1_L_BA6E
MDISP1_L_B9D9:
  t26 = rand(3)
  v20 = t26
  if (!v4) goto MDISP1_L_B9E7
  goto MDISP1_L_B9E9
MDISP1_L_B9E7:
MDISP1_L_B9E9:
  v22 = L
  v16 = v14 - v4
  v8 = 0
  goto MDISP1_L_BA24
MDISP1_L_B9F3:
  v10 = v8 + v4
  t27 = sys9_metasprite_set(v22, v26 - ((v16 - v8) << 3), v20 + 159, 1, v18, (v10 * 12) + (&v122), 0, 126)
  v8 = v8 + 1
  v22 = v22 + v18
MDISP1_L_BA24:
  if (v8 < v16) goto MDISP1_L_B9F3
  if (!(v4 > 2)) goto MDISP1_L_BA34
  goto MDISP1_L_BA35
MDISP1_L_BA34:
MDISP1_L_BA35:
  t28 = sys16_wait_frames(L)
  if (!((v26 - (v14 << 3)) < 16)) goto MDISP1_L_BA61
  if (v26 % 8) goto MDISP1_L_BA61
  t29 = sys58_sprites_hide(v24, v18)
  v24 = v24 + v18
  v4 = v4 + 1
MDISP1_L_BA61:
  if (v26 < 16) goto MDISP1_L_BA74
  v26 = v26 - 1
MDISP1_L_BA6E:
  if (v4 < v14) goto MDISP1_L_B9D9
MDISP1_L_BA74:
  t30 = sys16_wait_frames(2)
  t31 = sys58_sprites_hide(34, v14 * v18)
  return t31

MDISP1_F_BA88:
  // frame 2
  v2 = ((byte)g_port * 19) + $0FD8
  t1 = RF_4F65(6, 11, 20, 5, 0, 0)
  if (!a0) goto MDISP1_L_BAF4
  t2 = RF_2F8F(8, 12)
  t3 = RF_2FB9(MDISP1_D_BD5A, 0)
  t4 = RF_40DE(v2)
  t5 = RF_2FB9(MDISP1_D_BD68, 0)
  t6 = RF_3DDF(1)
  t7 = sys5_tilemap_write(3, 6, 11, 20, 5, $2000)
  t8 = $978F()
  t9 = MDISP1_F_B77C()
  t10 = sys16_wait_frames(2)
  t11 = $9825(0)
  (byte)$F294 = 255
  (byte)$F291 = 255
  (byte)$F290 = 255
  return 255
MDISP1_L_BAF4:
  t12 = RF_2F8F(8, 12)
  t13 = RF_2FB9(MDISP1_D_BD6C, 1)
  t14 = RF_3DDF(1)
  t15 = sys5_tilemap_write(3, 6, 11, 20, 5, $2000)
  t16 = $978F()
  return t16

