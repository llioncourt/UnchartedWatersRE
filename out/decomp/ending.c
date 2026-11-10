ENDING_F_9603:
  // frame 0
  t1 = ENDING_F_966B()
  return t1

ENDING_F_960C:
  // frame 0
  t1 = RF_3DD1(45)
  t2 = sys4_tilemap_clear(3, 0, $2000)
  t3 = RF_2FB9(ENDING_D_A7DE, 1)
  return t3

ENDING_F_962A:
  // frame 0
  t1 = RF_2FB9(ENDING_D_A7E9, 0)
  t2 = RF_4AC6()
  t3 = RF_2FB9(ENDING_D_A7EE, 0)
  t4 = RF_4AF7()
  t5 = RF_2FB9(ENDING_D_A7F0, 0)
  t6 = RF_4A99()
  t7 = RF_2FB9(ENDING_D_A7F3, 0)
  t8 = RF_40DE(g_player_name_ptr)
  t9 = RF_2FB9(ENDING_D_A7FF, 0)
  t10 = ENDING_F_960C()
  return t10

ENDING_F_966B:
  // frame 0
  (byte)$EA89 = (byte)$EA89 | 4
  (byte)$EA89 = (byte)$EA89 | 8
  t1 = sys56_anim_control(0, 0)
  t2 = RF_2281()
  if (!((byte)g_ending < 5)) goto ENDING_L_969B
  t3 = RF_21EA(14, 1)
ENDING_L_969B:
  switch ((byte)g_ending) [-1, 4, ENDING_L_972D]

ENDING_F_9733:
  // frame 7
  t1 = $8979(&v7, ENDING_D_B51D)
ENDING_L_9743:
  (byte)v1 = B[a0]
  if (!B[a0]) goto ENDING_L_97EF
  goto ENDING_L_97DC
ENDING_L_9751:
  t2 = RF_2FB9(ENDING_D_B520, 1)
  goto ENDING_L_97E9
ENDING_L_975C:
  a0 = a0 + 1
  (byte)v2 = B[a0]
  goto ENDING_L_977B
ENDING_L_9767:
  (byte)v6 = (byte)v2
  goto ENDING_L_978C
ENDING_L_9770:
  t3 = sys16_wait_frames(120)
  goto ENDING_L_978C
ENDING_L_977B:
  switch (L) {3 cases}

ENDING_F_97F0:
  // frame 14
  v2 = a0
ENDING_L_97F7:
  v2 = v2 + 1
  t1 = RF_36C5(B[(v2 + 1) - 1])
  goto ENDING_L_99AF
ENDING_L_9804:
  (byte)v10 = 0
  goto ENDING_L_9856
ENDING_L_980B:
  t2 = sys9_metasprite_set(B[(byte)v10 + ENDING_D_B525], W[((byte)v10 * 2) + $F35A], W[((byte)v10 * 2) + $F360], B[((byte)v10 * 2) + ENDING_D_B528], B[((byte)v10 * 2) + ENDING_D_B529], ((byte)v10 * 24) + $F312, 0, 126)
  (byte)v10 = (byte)v10 + 1
ENDING_L_9856:
  if ((byte)v10 < 3) goto ENDING_L_980B
  goto ENDING_L_99DC
ENDING_L_9861:
  v2 = v2 + 1
  v4 = W[((B[(v2 + 1) - 1]) * 2) + ENDING_D_B4F9]
  v2 = v2 + 1
  (byte)v5 = B[(v2 + 1) - 1]
  v2 = v2 + 1
  (byte)v6 = B[(v2 + 1) - 1]
  v2 = v2 + 1
  (byte)v7 = B[(v2 + 1) - 1]
  t3 = RF_3FC8(g_fh_cbmap0, v4, 126, ((byte)v5 * 24) + $F312, (byte)v7 * 2)
  goto ENDING_L_99DC
ENDING_L_98A2:
  v2 = v2 + 1
  (byte)v5 = B[(v2 + 1) - 1]
  v2 = v2 + 1
  W[((byte)v5 * 2) + $F35A] = B[(v2 + 1) - 1]
  v2 = v2 + 1
  W[((byte)v5 * 2) + $F360] = B[(v2 + 1) - 1]
  goto ENDING_L_99DC
ENDING_L_98CB:
  v2 = v2 + 1
  if (B[(v2 + 1) - 1]) goto ENDING_L_98FB
  t4 = sys5_tilemap_write(3, 9, 12, 18, 6, $2000)
  t5 = RF_50D1(4, 20, 20, 8, 7, 0)
  t6 = RF_2F8F(5, 21)
  $F18C = 5
  goto ENDING_L_991F
ENDING_L_98FB:
  t7 = sys5_tilemap_write(3, 5, 21, 18, 6, $2000)
  t8 = RF_50D1(8, 11, 20, 8, 8, 0)
  t9 = RF_2F8F(9, 12)
  $F18C = 9
ENDING_L_991F:
  (byte)$F190 = 2
  v2 = v2 + 1
  t10 = RF_3619(W[((B[(v2 + 1) - 1]) * 2) + ENDING_D_AC0A], $F302)
  goto ENDING_L_99DC
ENDING_L_9939:
  v2 = v2 + 1
  (byte)v5 = B[(v2 + 1) - 1]
  v2 = v2 + 1
  (byte)v8 = B[(v2 + 1) - 1]
  v2 = v2 + 1
  (byte)v9 = B[(v2 + 1) - 1]
  if (B[(byte)v5 + ENDING_D_B522]) goto ENDING_L_9961
  (byte)$F294 = 32
ENDING_L_9961:
  t11 = RF_4E29((byte)v8, (byte)v9, B[(byte)v5 + ENDING_D_B522], 17)
  (byte)$F294 = 255
  goto ENDING_L_99DC
ENDING_L_9981:
  v2 = v2 + 1
  (byte)v5 = B[(v2 + 1) - 1]
  t12 = sys16_wait_frames((byte)v5 * 2)
  goto ENDING_L_99DC
ENDING_L_9997:
  v2 = v2 + 1
  (byte)v5 = B[(v2 + 1) - 1]
  t13 = sys17_bg_scroll(2, (byte)v5, 0)
  goto ENDING_L_99DC
ENDING_L_99AE:
  return
ENDING_L_99AF:
  switch (L) [-69, 19, ENDING_L_99AE]

ENDING_F_99E0:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B52E)
  return t1

ENDING_F_99ED:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B5C4)
  return t1

ENDING_F_99FA:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B648)
  return t1

ENDING_F_9A07:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B6AE)
  return t1

ENDING_F_9A14:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B7DE)
  return t1

ENDING_F_9A21:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B7FF)
  return t1

ENDING_F_9A2E:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B874)
  return t1

ENDING_F_9A3B:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_B952)
  return t1

ENDING_F_9A48:
  // frame 0
  t1 = ENDING_F_97F0(ENDING_D_BA70)
  return t1

ENDING_F_9A55:
  // frame 2
  v2 = 1
ENDING_L_9A5C:
  t1 = sys17_bg_scroll(2, v2 << 3, 0)
  t2 = sys17_bg_scroll(1, v2 << 3, 0)
  t3 = ENDING_F_97F0(ENDING_D_BC2E)
  v2 = v2 + 1
  if (v2 < 33) goto ENDING_L_9A5C
  t4 = ENDING_F_97F0(ENDING_D_BC53)
  t5 = sys4_tilemap_clear(1, 1, 0)
  t6 = sys17_bg_scroll(1, 0, 0)
  return t6

ENDING_F_9A9E:
  // frame 140
  v14 = (byte)$F300
  v18 = (byte)$F301
  t1 = sys7_tilemap_read(2, 1, 19, 1, 9, &v140, 126)
  v2 = 0
ENDING_L_9ABE:
  W[(v2 * 2) + (&v140)] = (W[(v2 * 2) + (&v140)]) | $2000
  v2 = v2 + 1
  if (v2 < 9) goto ENDING_L_9ABE
  t2 = RF_3EC3(2, 6, 0)
  t3 = RF_532F(1, 1, 19, 1, 9, &v140, 126)
  t4 = RF_532F(2, 0, 19, 2, 9, ENDING_D_BCC9, 126)
  t5 = sys36_memset_long(126, &v122, 0, 96)
  v10 = 0
  v8 = 0
  goto ENDING_L_9B5C
ENDING_L_9B12:
  v12 = 0
  v2 = v10
  goto ENDING_L_9B50
ENDING_L_9B19:
  t6 = sys26_file_seek(g_fh_cbmap0, (v2 * 2) + RD_8B64, 0, pop())
  t7 = sys28_file_read(g_fh_cbmap0, 126, ((v8 * 12) + (v12 * 2)) + (&v122), 2)
  v12 = v12 + 1
  v2 = v2 + v14
ENDING_L_9B50:
  if (v12 < v18) goto ENDING_L_9B19
  v8 = v8 + 1
  v10 = v10 + 1
ENDING_L_9B5C:
  if (v8 < v14) goto ENDING_L_9B12
  v22 = 46
  v8 = 5
  v2 = 0
  goto ENDING_L_9B93
ENDING_L_9B6C:
  t8 = sys9_metasprite_set(v22, v8 << 3, 159, 1, v18, (v2 * 12) + (&v122), 0, 126)
  v2 = v2 + 1
  v22 = v22 + v18
  v8 = v8 + 1
ENDING_L_9B93:
  if (v2 < v14) goto ENDING_L_9B6C
  t9 = sys5_tilemap_write(1, 5, 20, v14, v18, 0)
  t10 = RF_3E5A(94, 104, 143, 3, 2, RD_8AF8, g_fh_cbmap0)
  t11 = sys5_tilemap_write(1, 13, 18, 3, 2, 0)
  t12 = sys16_wait_frames(8)
  t13 = sys58_sprites_hide(10, 12)
  v8 = 104
  v12 = 144
  goto ENDING_L_9C10
ENDING_L_9BDD:
  t14 = rand(2)
  t15 = RF_3E5A(94, v8, (t14 + v12) - 1, 3, 2, RD_8AF8, g_fh_cbmap0)
  t16 = sys16_wait_frames(3)
  if (v8 % 3) goto ENDING_L_9C0D
  if (!(v12 < 176)) goto ENDING_L_9C0D
  v12 = v12 + 1
ENDING_L_9C0D:
  v8 = v8 - 1
ENDING_L_9C10:
  if (v8 > 56) goto ENDING_L_9BDD
  t17 = sys16_wait_frames(15)
  t18 = sys58_sprites_hide(94, 6)
  t19 = sys16_wait_frames(2)
  v24 = 46
  v26 = (v14 + 5) << 3
  v4 = 0
  goto ENDING_L_9CD4
ENDING_L_9C3C:
  t20 = rand(3)
  v20 = t20
  if (!v4) goto ENDING_L_9C4A
  goto ENDING_L_9C4C
ENDING_L_9C4A:
ENDING_L_9C4C:
  v22 = L
  v16 = v14 - v4
  v8 = 0
  goto ENDING_L_9C87
ENDING_L_9C56:
  v10 = v8 + v4
  t21 = sys9_metasprite_set(v22, v26 - ((v16 - v8) << 3), v20 + 159, 1, v18, (v10 * 12) + (&v122), 0, 126)
  v8 = v8 + 1
  v22 = v22 + v18
ENDING_L_9C87:
  if (v8 < v16) goto ENDING_L_9C56
  if (!(v4 > 2)) goto ENDING_L_9C97
  goto ENDING_L_9C98
ENDING_L_9C97:
ENDING_L_9C98:
  t22 = sys16_wait_frames(L)
  if (!((v26 - (v14 << 3)) < 16)) goto ENDING_L_9CC4
  if (v26 % 8) goto ENDING_L_9CC4
  t23 = sys58_sprites_hide(v24, v18)
  v24 = v24 + v18
  v4 = v4 + 1
ENDING_L_9CC4:
  if (!(v26 < 16)) goto ENDING_L_9CCF
  goto ENDING_L_9CDA
ENDING_L_9CCF:
  v26 = v26 - 1
ENDING_L_9CD4:
  if (v4 < v14) goto ENDING_L_9C3C
ENDING_L_9CDA:
  t24 = sys16_wait_frames(2)
  t25 = sys58_sprites_hide(46, v14 * v18)
  t26 = sys16_wait_frames(2)
  return t26

ENDING_F_9CF5:
  // frame 0
  t1 = sys16_wait_frames(60)
  t2 = RF_3D7C()
  t3 = RF_3EC3(21, 1, 0)
  t4 = sys13_vram_load_obj_tiles(1, 74, $E820, 30)
  t5 = sys11_vram_load_tiles(144, 170, $D300, 30, 2)
  t6 = sys3_palette_dma(ENDING_D_ABEA, 126, 128, 32)
  t7 = RF_3E5A(0, 88, 55, 12, 7, $61DC, g_fh_cbmap0)
  t8 = RF_4F2A(2)
  t9 = RF_3654(30)
  t10 = RF_3DF1(2, 5, 14, 22, 3, $6036, g_fh_cbmap0)
ENDING_L_9D66:
  goto ENDING_L_9D66

ENDING_F_9D6A:
  // frame 2
  t1 = RF_21EA(3, 1)
  t2 = sys11_vram_load_tiles(119, 109, $8000, 29, 2)
  t3 = sys11_vram_load_tiles(228, 336, $9CA0, 29, 1)
  t4 = sys13_vram_load_obj_tiles(240, 120, RD_8DA0, 29)
  t5 = sys11_vram_load_tiles(564, 19, $FB00, 29, 1)
  t6 = sys3_palette_dma(ENDING_D_AA0A, 126, 32, 96)
  t7 = sys3_palette_dma(ENDING_D_AA6A, 126, 160, 32)
  t8 = sys3_palette_dma(ENDING_D_AA6A, 126, 96, 32)
  t9 = RF_3DF1(2, 0, 0, 32, 11, RD_94F4, g_fh_cbmap0)
  t10 = RF_3DF1(2, 0, 32, 32, 11, $97B4, g_fh_cbmap0)
  t11 = RF_3DF1(1, 19, 37, 2, 4, ENDING_D_BC5E, g_fh_cbmap0)
  t12 = RF_3DF1(1, 26, 37, 3, 4, ENDING_D_BC6E, g_fh_cbmap0)
  t13 = sys37_brightness_set(15)
  t14 = ENDING_F_9A55()
  t15 = ENDING_F_99E0()
  t16 = RF_3787(ENDING_D_BCED, 4, 10, 15, 7, 2, 2, 0)
  v2 = t16
  goto ENDING_L_9E59
ENDING_L_9E41:
  t17 = ENDING_F_99ED()
  goto ENDING_L_9E68
ENDING_L_9E47:
  t18 = ENDING_F_9A21()
  goto ENDING_L_9E68
ENDING_L_9E4D:
  t19 = ENDING_F_9A2E()
  goto ENDING_L_9E68
ENDING_L_9E53:
  t20 = ENDING_F_9A48()
  goto ENDING_L_9E68
ENDING_L_9E59:
  switch (L) [-1, 4, ENDING_L_9E68]

ENDING_F_9EBB:
  // frame 2
  v2 = 0
ENDING_L_9EC2:
  t1 = sys22_set_0B7F((v2 << 4) | 2)
  t2 = sys37_brightness_set(15 - v2)
  t3 = RF_3654(3)
  v2 = v2 + 1
  if (v2 < 16) goto ENDING_L_9EC2
  t4 = sys16_wait_frames(180)
  t5 = RF_3D7C()
  t6 = RF_530E(0, 0)
  t7 = RF_3DF1(2, 1, 7, 30, 11, $9E48, g_fh_cbmap0)
  t8 = RF_3DF1(1, 1, 7, 30, 11, $9BB4, g_fh_cbmap0)
  t9 = sys22_set_0B7F(2)
  t10 = RF_4F2A(2)
  t11 = sys16_wait_frames(400)
  t12 = RF_4F48(2)
  t13 = RF_3D7C()
  return t13

ENDING_F_9F37:
  // frame 0
  t1 = RF_3DF1(2, B[(a0 * 2) + ENDING_D_BCF0], (B[(a0 * 2) + ENDING_D_BCF1]) - 1, B[(a0 * 2) + ENDING_D_BCFC], B[(a0 * 2) + ENDING_D_BCFD], W[(a0 * 2) + ENDING_D_BD08], g_fh_cbmap0)
  return t1

ENDING_F_9F6E:
  // frame 4
  t1 = RF_3DF1(2, 2, 20, 28, 7, $82F0, g_fh_cbmap0)
  t2 = RF_3DF1(2, 2, 18, 18, 2, $8248, g_fh_cbmap0)
  t3 = RF_3DF1(2, 16, 20, 14, 2, $8290, g_fh_cbmap0)
  t4 = RF_3DF1(1, 16, 18, 4, 2, $8ACC, g_fh_cbmap0)
  t5 = RF_3DF1(1, 13, 18, 3, 2, RD_8AEC, g_fh_cbmap0)
  return t5

ENDING_F_9FC8:
  // frame 21
  t1 = sys76_lz_decompress(0, $96FB, 22)
  (byte)v1 = 0
  goto ENDING_L_9FFC
ENDING_L_9FE0:
  v21 = ((byte)v1 * 24) + g_cargo
  if (B[v21]) goto ENDING_L_9FF5
  goto ENDING_L_A004
ENDING_L_9FF5:
  (byte)v1 = (byte)v1 + 1
ENDING_L_9FFC:
  if ((byte)v1 < 5) goto ENDING_L_9FE0
ENDING_L_A004:
  t2 = RF_40A5((byte)v1)
  v19 = t2
  (byte)v1 = B[v19 + 20]
  v3 = ((byte)v1 >> 5) & 7
  v5 = ((byte)v1 >> 4) & 1
  v7 = ((byte)v1 >> 2) & 3
  v9 = W[(((v3 * 12) + (v5 * 6)) + (v7 * 2)) + ENDING_D_BD20]
  v13 = (B[(v3 * 2) + ENDING_D_BD14]) * (B[(v3 * 2) + ENDING_D_BD15])
  (byte)$F300 = B[(v3 * 2) + ENDING_D_BD14]
  (byte)$F301 = B[(v3 * 2) + ENDING_D_BD15]
  if (!(v9 < $0400)) goto ENDING_L_A0AF
  t3 = sys11_vram_load_tiles(944, v13, v9 << 5, 127, 1)
  t4 = RF_3DF1(1, 5, 20, B[(v3 * 2) + ENDING_D_BD14], B[(v3 * 2) + ENDING_D_BD15], RD_8B04, g_fh_cbmap0)
ENDING_L_A0AF:
  return

ENDING_F_A0B0:
  // frame 0
  t1 = sys55_sprite_anim_stream(0, 2, 119, a0, 4, 20, 0, RD_8B6D, 22)
  t2 = sys55_sprite_anim_stream(1, 2, 123, a0, 0, 0, 0, RD_8BED, 22)
  t3 = sys55_sprite_anim_stream(2, 2, 127, a0, 0, 0, 0, RD_8C6D, 22)
  t4 = sys55_sprite_anim_stream(3, 2, 131, a0, 0, 0, 0, RD_8CED, 22)
  t5 = sys55_sprite_anim_stream(4, 2, 135, a0, 0, 0, 0, RD_8D6D, 22)
  t6 = sys55_sprite_anim_stream(5, 2, 139, a0, 0, 0, 0, RD_8DED, 22)
  t7 = sys55_sprite_anim_stream(6, 2, 143, a0, 0, 0, 0, RD_8E6D, 22)
  t8 = sys55_sprite_anim_stream(7, 2, 147, a0, 0, 0, 255, RD_8EED, 22)
  return t8

ENDING_F_A156:
  // frame 108
  t1 = sys36_memset_long(126, &v83, 0, 72)
  v7 = ENDING_D_BD68
ENDING_L_A16F:
  v7 = v7 + 1
  t2 = RF_36C5(B[(v7 + 1) - 1])
  goto ENDING_L_A2D4
ENDING_L_A17E:
  (byte)v84 = 0
  goto ENDING_L_A1E4
ENDING_L_A185:
  if (!((W[((byte)v84 * 2) + (&v96)]) == 255)) goto ENDING_L_A1A8
  t3 = sys58_sprites_hide(((byte)v84 * 6) + 10, 6)
  goto ENDING_L_A1DD
ENDING_L_A1A8:
  t4 = sys9_metasprite_set(((byte)v84 * 6) + 10, W[((byte)v84 * 2) + (&v96)], W[((byte)v84 * 2) + (&v108)], 2, 3, ((byte)v84 * 12) + (&v83), 0, 126)
ENDING_L_A1DD:
  (byte)v84 = (byte)v84 + 1
ENDING_L_A1E4:
  if ((byte)v84 < 6) goto ENDING_L_A185
  goto ENDING_L_A2F1
ENDING_L_A1EF:
  v7 = v7 + 1
  (byte)v1 = B[(v7 + 1) - 1]
  v7 = v7 + 1
  (byte)v2 = B[(v7 + 1) - 1]
  v7 = v7 + 1
  (byte)v3 = B[(v7 + 1) - 1]
  W[((byte)v1 * 2) + (&v96)] = (byte)v2
  W[((byte)v1 * 2) + (&v108)] = (byte)v3
  goto ENDING_L_A2F1
ENDING_L_A22E:
  v7 = v7 + 1
  (byte)v1 = B[(v7 + 1) - 1]
  v7 = v7 + 1
  (byte)v4 = B[(v7 + 1) - 1]
  goto ENDING_L_A272
ENDING_L_A248:
  v11 = W[((byte)v4 * 2) + ENDING_D_C24F]
  goto ENDING_L_A285
ENDING_L_A256:
  v11 = W[((byte)v4 * 2) + ENDING_D_C267]
  goto ENDING_L_A285
ENDING_L_A264:
  v11 = W[((byte)v4 * 2) + ENDING_D_C27F]
  goto ENDING_L_A285
ENDING_L_A272:
  switch (L) [0, 6, ENDING_L_A264]

ENDING_F_A2F5:
  // frame 2
  t1 = sys11_vram_load_tiles(119, 32, RD_8B6D, 22, 1)
  t2 = sys76_lz_decompress(0, $8000, 22)
  t3 = sys11_vram_load_tiles(151, 189, 0, 127, 2)
  t4 = sys11_vram_load_tiles(933, 11, $17A0, 127, 2)
  t5 = sys13_vram_load_obj_tiles(240, 60, $8000, 17)
  t6 = sys13_vram_load_obj_tiles(300, 68, g_fh_cbmap0, 29)
  t7 = sys11_vram_load_tiles(416, 449, $8000, 18, 2)
  t8 = RF_3DF1(2, 1, 1, 30, 27, $8478, g_fh_cbmap0)
  t9 = RF_2FB9(ENDING_D_C2B7, 1)
  t10 = RF_2F8F(16, 2)
  t11 = RF_2FB9(ENDING_D_C2BB, 1)
  t12 = RF_4A99()
  t13 = RF_4AC6()
  t14 = RF_4AF7()
  t15 = RF_2FB9(ENDING_D_C2C2, 1)
  t16 = RF_3DF1(2, 2, 5, 28, 15, $21C2, g_fh_cbmap0)
  v2 = 0
ENDING_L_A3AD:
  t17 = ENDING_F_9F37(v2)
  v2 = v2 + 1
  if (v2 < 6) goto ENDING_L_A3AD
  t18 = ENDING_F_9F6E()
  t19 = ENDING_F_9FC8((byte)g_port)
  t20 = ENDING_F_A0B0(1)
  t21 = RF_3E7E(0, 0)
  t22 = RF_3E7E(0, 1)
  t23 = sys26_file_seek(g_fh_fdata, RL_2790, 0, pop())
  t24 = sys29_file_palette_dma(g_fh_fdata, 32, 32)
  t25 = sys26_file_seek(g_fh_fdata, $2890, 0, pop())
  t26 = sys29_file_palette_dma(g_fh_fdata, 96, 32)
  t27 = RF_3EC3(1, 1, 1)
  t28 = sys3_palette_dma(ENDING_D_C297, 126, 208, 32)
  t29 = RF_4F2A(1)
  return t29

ENDING_F_A42F:
  // frame 0
  t1 = RF_21EA(2, 0)
  t2 = ENDING_F_A2F5()
  t3 = RF_4D41(2, 20, 28, 8)
  t4 = ENDING_F_A156()
  t5 = sys16_wait_frames(300)
  t6 = RF_4F65(2, 20, 28, 8, 0, 0)
  t7 = RF_3619(ENDING_D_C2C6, $F302)
  t8 = sys16_wait_frames(360)
  t9 = sys5_tilemap_write(3, 3, 21, 26, 6, $2000)
  t10 = RF_2FB9(ENDING_D_C2C8, 1)
  t11 = sys16_wait_frames(360)
  t12 = sys48_color_math(0, 0, 224)
  t13 = sys39_window_off()
  t14 = RF_4D8B()
  t15 = sys56_anim_control(3, 255)
  t16 = ENDING_F_9A9E()
  t17 = ENDING_F_A0B0(0)
  return t17

ENDING_F_A4B9:
  // frame 2
  t1 = sys16_wait_frames(300)
  t2 = sys37_brightness_set(0)
  t3 = RF_3D7C()
  t4 = sys11_vram_load_tiles(119, 351, $C6A0, 29, 1)
  t5 = sys3_palette_dma(ENDING_D_AA8A, 126, 112, 32)
  t6 = sys3_palette_dma(ENDING_D_AAAA, 126, 80, 32)
  t7 = RF_3DF1(2, 1, 7, 30, 10, $A334, g_fh_cbmap0)
  t8 = RF_3DF1(1, 1, 7, 30, 10, $A0DC, g_fh_cbmap0)
  t9 = RF_4F2A(2)
  t10 = sys16_wait_frames(300)
  t11 = RF_4F48(2)
  t12 = sys16_wait_frames(200)
  t13 = sys11_vram_load_tiles(119, 661, $8000, 30, 1)
  t14 = sys13_vram_load_obj_tiles(240, 10, $D160, 30)
  t15 = sys3_palette_dma(ENDING_D_AAEA, 126, 96, 64)
  t16 = sys3_palette_dma(ENDING_D_AACA, 126, 64, 32)
  t17 = sys3_palette_dma(ENDING_D_AACA, 126, 192, 32)
  t18 = RF_3DF1(2, 1, 7, 30, 10, ENDING_D_AD48, g_fh_cbmap0)
  t19 = RF_3DF1(1, 1, 7, 30, 10, $A640, g_fh_cbmap0)
  t20 = RF_4F2A(2)
  t21 = sys16_wait_frames(250)
  t22 = RF_3DF1(1, 1, 7, 30, 10, ENDING_D_A898, g_fh_cbmap0)
  t23 = sys16_wait_frames(200)
  t24 = RF_3DF1(1, 1, 7, 30, 10, ENDING_D_AAF0, g_fh_cbmap0)
  t25 = sys16_wait_frames(150)
  t26 = sys3_palette_dma(ENDING_D_AB2A, 126, 96, 64)
  t27 = sys16_wait_frames(120)
  t28 = sys3_palette_dma(ENDING_D_AB6A, 126, 96, 64)
  t29 = sys16_wait_frames(120)
  t30 = sys3_palette_dma(ENDING_D_ABAA, 126, 96, 64)
  t31 = sys16_wait_frames(300)
  t32 = RF_4F48(2)
  t33 = sys16_wait_frames(120)
  t34 = RF_3D7C()
  t35 = RF_3DF1(2, 8, 6, 10, 8, ENDING_D_AFA0, g_fh_cbmap0)
  t36 = RF_4F2A(2)
  (byte)$F190 = 0
  v2 = 0
ENDING_L_A64F:
  t37 = RF_2FB9(ENDING_D_C3FD, 1)
  t38 = ENDING_F_9733(W[(v2 * 2) + ENDING_D_C35E])
  t39 = sys5_tilemap_write(3, 8, 16, 21, 6, $2000)
  v2 = v2 + 1
  if (v2 < 4) goto ENDING_L_A64F
  t40 = sys16_wait_frames(120)
  t41 = RF_3DF1(2, 8, 6, 10, 8, ENDING_D_B040, g_fh_cbmap0)
  t42 = sys16_wait_frames(50)
  t43 = RF_3DF1(2, 8, 6, 10, 8, ENDING_D_B0E0, g_fh_cbmap0)
  t44 = sys16_wait_frames(50)
  t45 = RF_3DF1(2, 8, 6, 10, 8, ENDING_D_B180, g_fh_cbmap0)
  t46 = sys16_wait_frames(300)
  t47 = RF_4F48(2)
  t48 = sys4_tilemap_clear(2, 0, 0)
  t49 = sys4_tilemap_clear(3, 0, $2000)
  return t49

ENDING_F_A6E1:
  // frame 2
  t1 = RF_4F2A(1)
  t2 = RF_3E5A(10, ENDING_D_C429, ENDING_D_C473, 3, 5, ENDING_D_BC40, g_fh_cbmap0)
  t3 = sys16_wait_frames(60)
  v2 = 0
ENDING_L_A708:
  t4 = RF_3E5A(10, W[(((v2 * 2) + 1) * 2) + ENDING_D_C429], W[(((v2 * 2) + 1) * 2) + ENDING_D_C473], 3, 5, ENDING_D_BC40, g_fh_cbmap0)
  t5 = RF_3DF1(1, 16, 19, 12, 6, W[(v2 * 2) + ENDING_D_C405], g_fh_cbmap0)
  t6 = sys16_wait_frames(3)
  t7 = RF_3E5A(10, W[(((v2 * 2) + 2) * 2) + ENDING_D_C429], W[(((v2 * 2) + 2) * 2) + ENDING_D_C473], 3, 5, ENDING_D_BC40, g_fh_cbmap0)
  t8 = sys16_wait_frames(3)
  v2 = v2 + 1
  if (v2 < 18) goto ENDING_L_A708
  t9 = sys16_wait_frames(30)
  t10 = sys8_oam_hide_all()
  t11 = sys16_wait_frames(600)
  t12 = RF_4F48(1)
  t13 = ENDING_F_9CF5()
  return t13

ENDING_F_A797:
  // frame 0
  t1 = RF_4F48(1)
  t2 = RF_3D7C()
  t3 = sys4_tilemap_clear(2, 1, 0)
  t4 = RF_530E(0, 0)
  t5 = $8979($F302, g_player_name_ptr)
  t6 = sys36_memset_long(126, $F312, 0, 72)
  (byte)$F28C = 0
  t7 = ENDING_F_9D6A()
  t8 = ENDING_F_9EBB()
  t9 = ENDING_F_A42F()
  t10 = ENDING_F_A4B9()
  t11 = ENDING_F_A6E1()
  return t11
ENDING_D_A7DE:

