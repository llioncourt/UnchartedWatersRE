INITOP_F_9603:
  // frame 0
  t1 = INITOP_F_972A()
  return t1

INITOP_F_960C:
  // frame 0
  t1 = sys34_screen_off()
  t2 = sys65_apu_upload($8000, 13)
  t3 = sys35_screen_on()
  return t3

INITOP_F_9628:
  // frame 0
  $F18C = 0
  $F18A = 0
  $F188 = 0
  $F18E = 31
  (byte)$F190 = 0
  return 0

INITOP_F_9641:
  // frame 0
  (byte)$F198 = 0
  (byte)$F197 = 0
  (byte)$F196 = 0
  (byte)$F195 = 0
  (byte)$F194 = 0
  (byte)$F193 = 0
  (byte)$F192 = 0
  t1 = sys36_memset_long(126, $F199, 0, 21)
  t2 = sys36_memset_long(126, $F1AE, 0, 196)
  (byte)$F273 = 0
  (byte)$F272 = 0
  (byte)$F274 = 255
  $F275 = 0
  (byte)$F277 = 0
  D[$F278] = 0
  $F286 = 3
  $F288 = 0
  $F28A = 0
  (byte)$F28C = 0
  (byte)$F28F = 0
  (byte)$F28E = 0
  (byte)$F28D = 0
  (byte)$F294 = 255
  (byte)$F293 = 255
  (byte)$F292 = 255
  (byte)$F291 = 255
  (byte)$F290 = 255
  $F297 = -1
  g_portrait = -1
  return -1

INITOP_F_96CD:
  // frame 6
  v2 = $EF64
  v4 = ($1287 - $1064) + 1
  t1 = sys26_file_seek(g_fh_sgdata, $1064, 0, pop())
  t2 = sys28_file_read(g_fh_sgdata, 126, v2, v4)
  return t2

INITOP_F_96FE:
  // frame 0
  (byte)$EA89 = 255
  (byte)$EA8A = 5
  t1 = sys8_oam_hide_all()
  t2 = RF_3D7C()
  t3 = RF_530E(0, 0)
  t4 = RF_2FB9(INITOP_D_ADF4, 0)
  t5 = RF_2F8F(0, 0)
  return t5

INITOP_F_972A:
  // frame 2
  t1 = INITOP_F_960C()
  t2 = INITOP_F_9628()
  t3 = INITOP_F_9641()
  t4 = INITOP_F_96CD()
  t5 = INITOP_F_AD8D()
  t6 = INITOP_F_96FE()
  t7 = INITOP_F_9ECB()
  t8 = RF_4F05()
  t9 = RF_3D7C()
  t10 = RF_530E(0, 0)
  return t10

INITOP_F_9751:
  // frame 0
  t1 = sys48_color_math(0, 0, 224)
  t2 = sys39_window_off()
  return t2

INITOP_F_9768:
  // frame 18
  t1 = sys26_file_seek(g_fh_fdata, a1, 0, pop())
  t2 = sys28_file_read(g_fh_fdata, 126, &v18, 15)
  v3 = &v18
  goto INITOP_L_97BE
INITOP_L_9795:
  v3 = v3 + 1
  a0 = a0 + 1
  if (!((B[(a0 + 1) - 1]) != (B[(v3 + 1) - 1]))) goto INITOP_L_97A9
  return 0
INITOP_L_97A9:
  if (B[v3]) goto INITOP_L_97BA
  if (B[a0]) goto INITOP_L_97B8
  goto INITOP_L_97B9
INITOP_L_97B8:
INITOP_L_97B9:
  return
INITOP_L_97BA:
INITOP_L_97BE:
  (byte)v1 = L
  if ((byte)v1 < 11) goto INITOP_L_9795
  return 1

INITOP_F_97CB:
  // frame 4
  v2 = $DF04
  v4 = ($1062 - 4) + 1
  t1 = sys26_file_seek(g_fh_sgdata, 4, 0, pop())
  t2 = sys28_file_read(g_fh_sgdata, 126, v2, v4)
  t3 = sys26_file_seek(g_fh_sgdata, 0, 0, pop())
  return t3

INITOP_F_980E:
  // frame 0
  t1 = RF_3D5C(3)
  t2 = INITOP_F_9751()
  t3 = RF_4F65(6, 3, 20, 25, 2, 0)
  t4 = RF_2F8F(9, 8)
  t5 = RF_2FB9(INITOP_D_ADFC, 1)
  t6 = RF_2F8F(9, 11)
  t7 = RF_2FB9(INITOP_D_AE0A, 1)
  t8 = RF_2F8F(10, 24)
  t9 = RF_2FB9(INITOP_D_AE15, 1)
  return t9

INITOP_F_9853:
  // frame 2
  t1 = RF_2F8F(7, 25)
  t2 = RF_2FB9(a0, 1)
  t3 = RF_2FB9(INITOP_D_AE21, 1)
  t4 = RF_3CFF()
  v2 = t4
  return v2

INITOP_F_9873:
  // frame 55
  t1 = INITOP_F_97CB()
  t2 = INITOP_F_9751()
  t3 = RF_3D5C(3)
  t4 = RF_4F65(2, 2, 27, 26, 2, 0)
INITOP_L_988F:
  t5 = RF_2F8F(7, 25)
  t6 = RF_2FB9(INITOP_D_AE55, 1)
INITOP_L_989E:
  t7 = RF_6557(12, &v34, 0)
  (byte)v7 = t7
  if (!(byte)v7) goto INITOP_L_9918
  v53 = 1
INITOP_L_98B4:
  t8 = INITOP_F_9768(&v34, W[(v53 * 7) + g_player_name_ptr])
  if (!t8) goto INITOP_L_990B
  (byte)v7 = 30
  t9 = sys5_tilemap_write(3, 3, 25, 24, 2, $2000)
  t10 = RF_2F8F(6, 25)
  t11 = RF_2FB9(INITOP_D_AE68, 1)
  t12 = sys16_wait_frames(60)
  t13 = sys8_oam_hide_all()
  t14 = sys5_tilemap_write(3, 6, 25, 21, 2, $2000)
  goto INITOP_L_9918
INITOP_L_990B:
  v53 = v53 + 1
  if (v53 < 41) goto INITOP_L_98B4
INITOP_L_9918:
  if ((byte)v7 == 30) goto INITOP_L_989E
  if ((byte)v7) goto INITOP_L_9935
  t15 = RF_2F8F(10, 24)
  t16 = RF_40DE(g_hero_name)
INITOP_L_9935:
  t17 = INITOP_F_9853(INITOP_D_AE7F)
  if (!t17) goto INITOP_L_988F
  if (!(byte)v7) goto INITOP_L_994C
  goto INITOP_L_994F
INITOP_L_994C:
INITOP_L_994F:
  t18 = $8979(g_hero_name, INITOP_D_AE88)
  g_player_name_ptr = g_hero_name
  t19 = RF_3D5C(3)
  t20 = INITOP_F_9751()
  t21 = sys5_tilemap_write(3, 9, 4, 14, 17, $2000)
  t22 = RF_4F65(6, 3, 20, 25, 2, 0)
  t23 = RF_2F8F(10, 5)
  t24 = RF_40DE(g_player_name_ptr)
INITOP_L_998B:
  t25 = sys5_tilemap_write(3, 23, 26, 1, 1, $2000)
  goto INITOP_L_99EF
INITOP_L_999E:
  t26 = rand(30)
  B[(byte)v7 + (&v6)] = t26 + 40
  t27 = RF_2F8F(10, ((byte)v7 * 2) + 6)
  t28 = RF_3619(INITOP_D_AE94, W[((byte)v7 * 2) + INITOP_D_AE24])
  t29 = RF_2F8F(19, ((byte)v7 * 2) + 6)
  t30 = RF_3619(INITOP_D_AE97, B[(byte)v7 + (&v6)])
INITOP_L_99EF:
  (byte)v7 = L
  if ((byte)v7 < 5) goto INITOP_L_999E
  t31 = rand(40)
  (byte)v8 = (t31 + 1) / 40
  t32 = rand(30)
  t33 = rand(50)
  (byte)v1 = (((t33 + 20) * (byte)v8) + t32) + 40
  t34 = RF_2F8F(10, ((byte)v7 * 2) + 7)
  t35 = RF_3619(INITOP_D_AE9B, (byte)v1)
  t36 = INITOP_F_9853(INITOP_D_AEA8)
  if (!t36) goto INITOP_L_998B
  t37 = sys36_memset_long(126, &v19, 0, 5)
  t38 = sys5_tilemap_write(3, 7, 26, 18, 1, $2000)
INITOP_L_9A60:
  t39 = sys5_tilemap_write(3, 7, 25, 18, 2, $2000)
  t40 = RF_2F8F(9, 22)
  t41 = RF_2FB9(INITOP_D_AEB1, 1)
  t42 = RF_2F8F(9, 24)
  t43 = RF_2FB9(INITOP_D_AEBF, 1)
  goto INITOP_L_9AD1
INITOP_L_9A91:
  (byte)v1 = (byte)v1 + (B[(byte)v7 + (&v19)])
  B[(byte)v7 + (&v19)] = 0
  t44 = RF_2F8F(19, ((byte)v7 * 2) + 6)
  t45 = RF_3619(INITOP_D_AECC, B[(byte)v7 + (&v6)])
INITOP_L_9AD1:
  (byte)v7 = L
  if ((byte)v7 < 5) goto INITOP_L_9A91
  t46 = RF_2F8F(19, ((byte)v7 * 2) + 7)
  t47 = RF_3619(INITOP_D_AED0, (byte)v1)
  v51 = 0
  v55 = 0
  v53 = 12
INITOP_L_9AFC:
  t48 = RF_3E5A(0, 71, (((v51 * 2) + 7) << 3) - 5, 1, 2, $26CC, g_fh_fdata)
  t49 = RF_3D91(v55, v53)
  v53 = 12
  t50 = RF_362A(0)
  v55 = t50
  switch (t50) {10 cases}

INITOP_F_9DAA:
  // frame 5
  t1 = INITOP_F_9873()
  v3 = t1
  goto INITOP_L_9DD0
INITOP_L_9DB8:
  v5 = ((byte)v1 * 51) + g_captains
  W[v5 + 7] = v5 + 9
INITOP_L_9DD0:
  (byte)v1 = L
  if ((byte)v1 < 20) goto INITOP_L_9DB8
  return v3

INITOP_F_9DDF:
  // frame 5
  t1 = sys23_memcpy_long(112, $1062, 126, &v1, 1)
  if (!((byte)v1 != 75)) goto INITOP_L_9E10
  t2 = RF_2F8F(10, 24)
  t3 = RF_2FB9(INITOP_D_AF26, 1)
  return 0
INITOP_L_9E10:
  v3 = ($EF62 - g_captains) + 1
  t4 = sys23_memcpy_long(112, 5, 126, g_captains, v3)
  t5 = RF_2F8F(10, 24)
  t6 = RF_2FB9(INITOP_D_AF38, 1)
  return 1

INITOP_F_9E3D:
  // frame 2
  t1 = INITOP_F_9DDF()
  v2 = t1
  return v2

INITOP_F_9E48:
  // frame 6
  t1 = sys37_brightness_set(0)
  t2 = sys76_lz_decompress(0, $ACC0, 12)
  t3 = sys11_vram_load_tiles(152, 840, 0, 127, 2)
  t4 = RF_3DF1(2, 1, 1, 30, 28, $73D8, g_fh_cbmap0)
  t5 = RF_3E7E(0, 0)
  t6 = RF_3E7E(0, 1)
  t7 = RF_3EC3(14, 3, 0)
  t8 = RF_4F2A(2)
INITOP_L_9E97:
  t9 = INITOP_F_980E()
  t10 = RF_3787(INITOP_D_AF47, 2, 8, 9, 0, 3, 2, 0)
  v6 = t10
  switch (v6) {2 cases}

INITOP_F_9ECB:
  // frame 0
  t1 = RF_21EA(17, 1)
  t2 = INITOP_F_9E48()
  if (!t2) goto INITOP_L_9EE0
  t3 = INITOP_F_A3E5()
INITOP_L_9EE0:
  t4 = RF_4F48(1)
  t5 = sys48_color_math(0, 0, 224)
  t6 = sys39_window_off()
  if ((byte)$EA89 & 4) goto INITOP_L_9F04
  t7 = sys61_sound_stop()
INITOP_L_9F04:
  (byte)$F192 = 0
  (byte)$F193 = 0
  (byte)$F194 = 0
  (byte)$F195 = 0
  (byte)$EF6A = 255
  return 255

INITOP_F_9F1B:
  // frame 2
  if (!a1) goto INITOP_L_9F59
  t1 = sys48_color_math(0, (byte)a0, 224)
  v2 = 0
INITOP_L_9F34:
  t2 = sys48_color_math(0, (byte)a0, v2 | 224)
  t3 = sys16_wait_frames(1)
  v2 = v2 + 1
  if (v2 <= 31) goto INITOP_L_9F34
  goto INITOP_L_9F89
INITOP_L_9F59:
  v2 = 32
INITOP_L_9F5C:
  t4 = sys48_color_math(0, (byte)a0, (v2 - 1) | 224)
  t5 = sys16_wait_frames(1)
  v2 = v2 - 1
  if (v2 != 1) goto INITOP_L_9F5C
  t6 = sys48_color_math(0, 0, 224)
INITOP_L_9F89:
  return

INITOP_F_9F8A:
  // frame 4
  t1 = sys37_brightness_set(0)
  t2 = sys34_screen_off()
  t3 = sys11_vram_load_tiles(1, 133, $E820, 30, 1)
  t4 = sys13_vram_load_obj_tiles(1, 74, $E820, 30)
  t5 = sys11_vram_load_tiles(144, 170, INITOP_D_D300, 30, 2)
  t6 = sys35_screen_on()
  t7 = sys3_palette_dma(INITOP_D_B848, 126, 64, 32)
  t8 = sys4_tilemap_clear(2, 0, $3001)
  t9 = RF_3DF1(1, 11, 10, 12, 7, $61DC, g_fh_cbmap0)
  v2 = 0
INITOP_L_9FF8:
  t10 = sys37_brightness_set(v2)
  t11 = sys16_wait_frames(1)
  v2 = v2 + 1
  if (v2 < 15) goto INITOP_L_9FF8
  t12 = sys16_wait_frames(20)
  v2 = 1
INITOP_L_A019:
  t13 = sys3_palette_dma((v2 << 5) + INITOP_D_B848, 126, 64, 32)
  t14 = RF_3DF1(1, 11, 10, 12, 5, W[((v2 - 1) * 2) + INITOP_D_BA24], g_fh_cbmap0)
  v2 = v2 + 1
  if (v2 < 6) goto INITOP_L_A019
  t15 = RF_3DF1(1, 11, 10, 12, 7, $61DC, g_fh_cbmap0)
  v2 = 6
INITOP_L_A05B:
  t16 = sys3_palette_dma((v2 << 5) + INITOP_D_B848, 126, 64, 32)
  t17 = sys16_wait_frames(0)
  v2 = v2 + 1
  if (v2 < 9) goto INITOP_L_A05B
  v2 = 9
INITOP_L_A080:
  t18 = sys3_palette_dma((v2 << 5) + INITOP_D_B848, 126, 64, 32)
  t19 = sys16_wait_frames(0)
  v2 = v2 - 1
  if (v2 > 5) goto INITOP_L_A080
  v2 = 4
INITOP_L_A0A5:
  t20 = sys3_palette_dma((v2 << 5) + INITOP_D_B848, 126, 64, 32)
  t21 = sys16_wait_frames(1)
  v2 = v2 - 1
  if (v2 > 0) goto INITOP_L_A0A5
  t22 = RF_3DF1(1, 11, 10, 12, 7, $61DC, g_fh_cbmap0)
  t23 = sys3_palette_dma(INITOP_D_B848, 126, 64, 32)
  t24 = sys16_wait_frames(10)
  v2 = 10
INITOP_L_A0EE:
  t25 = sys3_palette_dma((v2 << 5) + INITOP_D_B848, 126, 64, 32)
  t26 = sys16_wait_frames(4)
  v2 = v2 + 1
  if (v2 < 14) goto INITOP_L_A0EE
  t27 = sys3_palette_dma(INITOP_D_B9E8, 126, 128, 32)
  t28 = RF_3E5A(0, 88, 79, 12, 7, $61DC, g_fh_cbmap0)
  t29 = sys16_wait_frames(20)
  t30 = sys4_tilemap_clear(1, 0, 0)
  t31 = sys4_tilemap_clear(2, 0, 0)
  t32 = sys16_wait_frames(1)
  t33 = sys3_palette_dma(INITOP_D_B6C8, 126, 16, 32)
  t34 = RF_3DF1(2, 9, 17, 14, 2, $61A2, g_fh_cbmap0)
  t35 = INITOP_F_9F1B(131, 0)
  t36 = sys16_wait_frames(120)
  t37 = RF_4F48(2)
  t38 = sys8_oam_hide_all()
  t39 = sys4_tilemap_clear(2, 0, 0)
  t40 = sys4_tilemap_clear(1, 0, 0)
  t41 = INITOP_F_A4C3(15)
  if (!$F320) goto INITOP_L_A1A4
  return $F320
INITOP_L_A1A4:
  t42 = RF_3DF1(2, 2, 14, 28, 2, $6132, g_fh_cbmap0)
  t43 = sys37_brightness_set(15)
  t44 = INITOP_F_A4C3(180)
  if (!$F320) goto INITOP_L_A1C9
  return $F320
INITOP_L_A1C9:
  t45 = RF_4F48(2)
  t46 = sys37_brightness_set(0)
  t47 = sys4_tilemap_clear(2, 0, 0)
  t48 = INITOP_F_A4C3(15)
  if (!$F320) goto INITOP_L_A1E9
  return $F320
INITOP_L_A1E9:
  t49 = RF_3DF1(2, 12, 11, 8, 3, $60BA, g_fh_cbmap0)
  t50 = RF_3DF1(2, 7, 15, 18, 2, $60EA, g_fh_cbmap0)
  t51 = sys37_brightness_set(15)
  t52 = INITOP_F_A4C3(180)
  if (!$F320) goto INITOP_L_A21D
  return $F320
INITOP_L_A21D:
  t53 = RF_4F48(2)
  t54 = sys37_brightness_set(0)
  t55 = RF_3D7C()
  t56 = RF_3E7E(0, 0)
  t57 = RF_3E7E(0, 1)
  t58 = INITOP_F_A4C3(15)
  if (!$F320) goto INITOP_L_A244
  return $F320
INITOP_L_A244:
  return

INITOP_F_A245:
  // frame 2
  v2 = 0
INITOP_L_A24C:
  t1 = RF_3EC3(2, v2, 0)
  v2 = v2 + 1
  if (v2 < 8) goto INITOP_L_A24C
  v2 = 0
INITOP_L_A25E:
  t2 = RF_3EC3(2, v2, 1)
  v2 = v2 + 1
  if (v2 < 8) goto INITOP_L_A25E
  return v2 < 8

INITOP_F_A26F:
  // frame 0
  t1 = sys48_color_math(0, 0, 224)
  t2 = sys39_window_off()
  return t2

INITOP_F_A286:
  // frame 0
INITOP_L_A28B:
  a0 = a0 - 1
  if (!((a0 - 1) + 1)) goto INITOP_L_A2A9
  t1 = RF_362A(0)
  if (!t1) goto INITOP_L_A29F
  $F320 = 1
  return 1
INITOP_L_A29F:
  t2 = sys16_wait_frames(1)
  goto INITOP_L_A28B
INITOP_L_A2A9:
  return

INITOP_F_A2AA:
  // frame 11
  t1 = $8979(&v7, INITOP_D_BA2E)
INITOP_L_A2BA:
  (byte)v1 = B[a0]
  if (!B[a0]) goto INITOP_L_A3E4
  goto INITOP_L_A3D1
INITOP_L_A2C8:
  t2 = RF_2FB9(INITOP_D_BA31, 1)
  goto INITOP_L_A3DE
INITOP_L_A2D3:
  a0 = a0 + 1
  (byte)v2 = B[a0]
  goto INITOP_L_A35D
INITOP_L_A2DE:
  (byte)v6 = (byte)v2
  goto INITOP_L_A37A
INITOP_L_A2E7:
  t3 = INITOP_F_A286(60)
  goto INITOP_L_A37A
INITOP_L_A2F0:
  goto INITOP_L_A31B
INITOP_L_A2F6:
  v9 = 13
  v11 = 5
  goto INITOP_L_A32A
INITOP_L_A2FF:
  v9 = 7
  v11 = 6
  goto INITOP_L_A32A
INITOP_L_A308:
  v9 = 20
  v11 = 6
  goto INITOP_L_A32A
INITOP_L_A312:
  v9 = 13
  v11 = 5
  goto INITOP_L_A32A
INITOP_L_A31B:
  switch (L) [0, 4, INITOP_L_A32A]

INITOP_F_A3E5:
  // frame 2
  t1 = INITOP_F_A26F()
  t2 = RF_3D5C(3)
  t3 = sys16_wait_frames(15)
  t4 = sys60_sound_play(13, 1)
  t5 = sys76_lz_decompress(0, INITOP_D_B214, 31)
  t6 = sys11_vram_load_tiles(119, 17, 0, 127, 1)
  t7 = sys3_palette_dma(INITOP_D_B0E8, 126, 96, 32)
  t8 = sys6_tilemap_copy(1, 5, 12, 22, 10, INITOP_D_D240, 126)
  t9 = sys38_window_shape(45, 109, 211, 171, 32, 1)
  t10 = sys48_color_math(32, 82, 224)
  (byte)$F300 = 0
  t11 = $8979($F301, g_player_name_ptr)
  t12 = RF_40A5(0)
  t13 = $8979($F310, t12)
  v2 = 0
INITOP_L_A475:
  $F320 = 0
  t14 = sys5_tilemap_write(3, 6, 14, 20, 7, $2000)
  t15 = RF_2FB9(INITOP_D_BA33, 1)
  t16 = INITOP_F_A2AA(W[(v2 * 2) + INITOP_D_B2A4])
  v2 = v2 + 1
  if (v2 < 22) goto INITOP_L_A475
  t17 = RF_4F48(1)
  t18 = RF_2281()
  t19 = RF_4DD8()
  t20 = RF_3D7C()
  t21 = INITOP_F_A26F()
  t22 = RF_3E7E(0, 0)
  t23 = RF_3E7E(0, 1)
  return t23

INITOP_F_A4C3:
  // frame 0
INITOP_L_A4C8:
  a0 = a0 - 1
  if (!((a0 - 1) + 1)) goto INITOP_L_A4EA
  t1 = RF_362A(0)
  if (!(t1 == $1000)) goto INITOP_L_A4E0
  $F320 = 1
  return 1
INITOP_L_A4E0:
  t2 = sys16_wait_frames(1)
  goto INITOP_L_A4C8
INITOP_L_A4EA:
  return

INITOP_F_A4EB:
  // frame 2
  if (!a0) goto INITOP_L_A516
  v2 = 0
INITOP_L_A4F6:
  t1 = sys37_brightness_set(v2)
  t2 = INITOP_F_A4C3(6)
  if (!$F320) goto INITOP_L_A509
  return $F320
INITOP_L_A509:
  v2 = v2 + 1
  if (v2 < 16) goto INITOP_L_A4F6
  goto INITOP_L_A535
INITOP_L_A516:
  v2 = 16
INITOP_L_A519:
  t3 = sys37_brightness_set(v2 - 1)
  t4 = INITOP_F_A4C3(6)
  if (!$F320) goto INITOP_L_A52E
  return $F320
INITOP_L_A52E:
  v2 = v2 - 1
  if (v2) goto INITOP_L_A519
INITOP_L_A535:
  return

INITOP_F_A536:
  // frame 2
  if (!a1) goto INITOP_L_A579
  t1 = sys48_color_math(0, (byte)a0, 224)
  v2 = 0
INITOP_L_A54F:
  t2 = sys48_color_math(0, (byte)a0, v2 | 224)
  t3 = INITOP_F_A4C3(8)
  if (!$F320) goto INITOP_L_A56C
  return $F320
INITOP_L_A56C:
  v2 = v2 + 1
  if (v2 <= 31) goto INITOP_L_A54F
  goto INITOP_L_A5AE
INITOP_L_A579:
  v2 = 32
INITOP_L_A57C:
  t4 = sys48_color_math(0, (byte)a0, (v2 - 1) | 224)
  t5 = INITOP_F_A4C3(8)
  if (!$F320) goto INITOP_L_A59A
  return $F320
INITOP_L_A59A:
  v2 = v2 - 1
  if (v2 != 1) goto INITOP_L_A57C
  t6 = sys48_color_math(0, 0, 224)
INITOP_L_A5AE:
  return

INITOP_F_A5AF:
  // frame 2
  if (!(a0 < 11)) goto INITOP_L_A5C3
  v2 = (a0 * 3) + 32
  goto INITOP_L_A60F
INITOP_L_A5C3:
  if (!(a0 < 22)) goto INITOP_L_A5D4
  v2 = ((a0 - 11) * 3) + 1
  goto INITOP_L_A60F
INITOP_L_A5D4:
  if (!(a0 < 32)) goto INITOP_L_A5E6
  v2 = ((a0 - 22) * 3) + 34
  goto INITOP_L_A60F
INITOP_L_A5E6:
  if (!(a0 < 35)) goto INITOP_L_A5F6
  v2 = (a0 - 32) * 3
  goto INITOP_L_A60F
INITOP_L_A5F6:
  if (!(a0 < 42)) goto INITOP_L_A607
  v2 = ((a0 - 32) * 3) + 1
  goto INITOP_L_A60F
INITOP_L_A607:
  v2 = ((a0 - 42) * 3) + 32
INITOP_L_A60F:
  return v2

INITOP_F_A611:
  // frame 12
  t1 = sys37_brightness_set(0)
  t2 = sys60_sound_play(1, 0)
  t3 = sys75_bg_map_base_set(3, 122)
  t4 = sys76_lz_decompress(0, INITOP_D_B208, 31)
  t5 = sys11_vram_load_tiles(1, 141, 0, 127, 1)
  if (!$F320) goto INITOP_L_A66C
  t6 = sys6_tilemap_copy(1, 18, 11, 10, 12, INITOP_D_BAA6, 126)
  t7 = sys3_palette_dma(INITOP_D_AF48, 126, 0, 128)
  return t7
INITOP_L_A66C:
  t8 = sys76_lz_decompress(0, INITOP_D_B20A, 31)
  t9 = sys11_vram_load_tiles(206, 694, 0, 127, 2)
  t10 = sys6_tilemap_copy(2, 0, 1, 32, 28, INITOP_D_BB96, 126)
  t11 = sys6_tilemap_copy(1, 18, 11, 10, 12, INITOP_D_BAA6, 126)
  t12 = sys3_palette_dma(INITOP_D_AF48, 126, 0, 128)
  t13 = INITOP_F_A4C3(10)
  if (!$F320) goto INITOP_L_A6C2
  return $F320
INITOP_L_A6C2:
  t14 = INITOP_F_A4EB(1)
  if (!$F320) goto INITOP_L_A6CE
  return $F320
INITOP_L_A6CE:
  t15 = sys17_bg_scroll(3, 0, 0)
  t16 = sys4_tilemap_clear(3, 0, $2000)
  t17 = sys4_tilemap_clear(3, 1, $2000)
  t18 = sys76_lz_decompress(0, INITOP_D_B20C, 31)
  t19 = sys38_window_shape(16, 28, 248, 212, 4, 1)
  v12 = 0
  t20 = sys11_vram_load_tiles(1, 504, 0, 127, 3)
  v2 = 0
INITOP_L_A71A:
  t21 = sys6_tilemap_copy(3, 2, (v2 * 3) + 32, 28, 2, W[(v2 * 2) + INITOP_D_B28E], 126)
  v2 = v2 + 1
  if (v2 < 9) goto INITOP_L_A71A
  v4 = 0
  v2 = 0
  goto INITOP_L_A804
INITOP_L_A744:
  t22 = sys69_auto_move(1, 0, v2 * 24, 0, 1, 3, 24, 3)
  t23 = INITOP_F_A5AF(v2 - 1)
  v8 = t23
  t24 = INITOP_F_A5AF(v2 - 10)
  v10 = t24
  if (!(v2 < 38)) goto INITOP_L_A7BA
  if (!(v2 > 9)) goto INITOP_L_A7BA
  t25 = sys5_tilemap_write(3, 2, v10, 28, 2, $2000)
  t26 = sys11_vram_load_tiles((v4 * 56) + 1, 56, (v2 - 1) * 896, 127, 3)
  t27 = sys6_tilemap_copy(3, 2, v8, 28, 2, W[(v4 * 2) + INITOP_D_B28E], 126)
  v4 = v4 + 1
  if (!(v4 > 8)) goto INITOP_L_A7BA
  v4 = 0
INITOP_L_A7BA:
  goto INITOP_L_A7F0
INITOP_L_A7BD:
  t28 = RF_362A(0)
  if (!(t28 == $1000)) goto INITOP_L_A7F0
  t29 = sys69_auto_move(0, 0, 0, 0, 0, 0, 0, 3)
  $F320 = 1
  t30 = sys4_tilemap_clear(3, 0, $2000)
  t31 = sys4_tilemap_clear(3, 1, $2000)
  return t31
INITOP_L_A7F0:
  t32 = sys69_auto_move(2, 0, 0, 0, 0, 0, 0, 3)
  if (t32) goto INITOP_L_A7BD
  v2 = v2 + 1
INITOP_L_A804:
  if (v2 < 47) goto INITOP_L_A744
  t33 = INITOP_F_A4C3(60)
  if (!$F320) goto INITOP_L_A817
INITOP_L_A817:
  t34 = sys4_tilemap_clear(3, 0, $2000)
  t35 = sys4_tilemap_clear(3, 1, $2000)
  t36 = INITOP_F_A4C3(2)
  if (!$F320) goto INITOP_L_A837
  return $F320
INITOP_L_A837:
  t37 = sys39_window_off()
  t38 = sys17_bg_scroll(3, 0, 0)
  v2 = 0
INITOP_L_A848:
  t39 = rand(2)
  t40 = sys17_bg_scroll(1, v2, t39)
  t41 = INITOP_F_A4C3(6)
  if (!$F320) goto INITOP_L_A862
  return $F320
INITOP_L_A862:
  v2 = v2 + 1
  if (v2 < 56) goto INITOP_L_A848
  return v2 < 56

INITOP_F_A86D:
  // frame 0
  t1 = sys55_sprite_anim_stream(0, 2, $0AFC, a0, 4, 48, 0, INITOP_D_B210, 31)
  t2 = sys55_sprite_anim_stream(1, 2, $0B00, a0, 0, 0, 0, INITOP_D_B210 + 128, 31)
  t3 = sys55_sprite_anim_stream(2, 2, $0B04, a0, 0, 0, 0, INITOP_D_B210 + 256, 31)
  t4 = sys55_sprite_anim_stream(3, 2, $0B08, a0, 0, 0, 15, INITOP_D_B210 + 384, 31)
  return t4

INITOP_F_A8D0:
  // frame 0
  t1 = sys73_hdma_effect_on(1, 38, INITOP_D_BA3E, 126)
  t2 = INITOP_L_ADE8()
  t3 = sys48_color_math(32, 83, 224)
  return t3

INITOP_F_A8F4:
  // frame 2
  if (!(a0 < 64)) goto INITOP_L_A906
  v2 = 48
  goto INITOP_L_A971
INITOP_L_A906:
  if (!(a0 < 96)) goto INITOP_L_A913
  v2 = 56
  goto INITOP_L_A971
INITOP_L_A913:
  if (!(a0 < 104)) goto INITOP_L_A920
  v2 = 64
  goto INITOP_L_A971
INITOP_L_A920:
  if (!(a0 < 128)) goto INITOP_L_A92E
  v2 = 80
  goto INITOP_L_A971
INITOP_L_A92E:
  if (!(a0 < 240)) goto INITOP_L_A93C
  v2 = 88
  goto INITOP_L_A971
INITOP_L_A93C:
  if (!(a0 < 264)) goto INITOP_L_A94A
  v2 = 80
  goto INITOP_L_A971
INITOP_L_A94A:
  if (!(a0 < 272)) goto INITOP_L_A958
  v2 = 64
  goto INITOP_L_A971
INITOP_L_A958:
  if (!(a0 < 304)) goto INITOP_L_A966
  v2 = 56
  goto INITOP_L_A971
INITOP_L_A966:
  if (!(a0 < 336)) goto INITOP_L_A971
  v2 = 48
INITOP_L_A971:
  return v2

INITOP_F_A973:
  // frame 0
  if (!(a0 < 96)) goto INITOP_L_A985
  a1 = a1 + 1
  goto INITOP_L_A996
INITOP_L_A985:
  if (!(a0 < 264)) goto INITOP_L_A993
  a1 = a1 - 1
  goto INITOP_L_A996
INITOP_L_A993:
  a1 = a1 + 1
INITOP_L_A996:
  return a1

INITOP_F_A998:
  // frame 18
  if (!$F320) goto INITOP_L_A9B9
  t1 = sys37_brightness_set(0)
  t2 = rand(2)
  t3 = sys17_bg_scroll(1, 55, t2)
INITOP_L_A9B9:
  t4 = sys48_color_math(0, 130, 224)
  v2 = 0
INITOP_L_A9C8:
  t5 = sys48_color_math(0, 130, v2 | 224)
  if (!$F320) goto INITOP_L_A9E1
  v2 = 30
INITOP_L_A9E1:
  if (v2 % 6) goto INITOP_L_AA22
  t6 = sys3_palette_dma(((v2 / 6) << 5) + INITOP_D_B108, 126, 48, 32)
  t7 = INITOP_F_A4C3(6)
  if (!$F320) goto INITOP_L_AA1F
  t8 = sys37_brightness_set(0)
  t9 = sys3_palette_dma(INITOP_D_B1A8, 126, 48, 32)
  goto INITOP_L_AA4F
INITOP_L_AA1F:
  goto INITOP_L_AA45
INITOP_L_AA22:
  t10 = INITOP_F_A4C3(4)
  if (!$F320) goto INITOP_L_AA45
  t11 = sys37_brightness_set(0)
  t12 = sys3_palette_dma(INITOP_D_B1A8, 126, 48, 32)
  goto INITOP_L_AA4F
INITOP_L_AA45:
  v2 = v2 + 1
  if (v2 <= 31) goto INITOP_L_A9C8
INITOP_L_AA4F:
  t13 = RF_3EC3(2, 2, 0)
  t14 = RF_3D5C(2)
  t15 = sys76_lz_decompress(0, INITOP_D_B20E, 31)
  t16 = sys11_vram_load_tiles(206, 502, 0, 127, 2)
  t17 = sys11_vram_load_tiles(764, 16, INITOP_D_B210, 31, 2)
  t18 = sys76_lz_decompress(0, INITOP_D_B212, 31)
  t19 = sys11_vram_load_tiles(1, 206, 0, 127, 3)
  t20 = sys13_vram_load_obj_tiles(256, 42, $18D0, 127)
  t21 = sys6_tilemap_copy(2, 0, 2, 608, 1, INITOP_D_C296, 126)
  t22 = sys6_tilemap_copy(2, 0, 21, 32, 7, INITOP_D_C7EA, 126)
  t23 = sys6_tilemap_copy(3, 5, 49, 22, 11, INITOP_D_C9AA, 126)
  t24 = INITOP_F_A86D(1)
INITOP_L_AAE6:
  t25 = RF_223A()
  if (!t25) goto INITOP_L_AAFD
  t26 = INITOP_F_A4C3(1)
  if (!$F320) goto INITOP_L_AAFA
  goto INITOP_L_AAFD
INITOP_L_AAFA:
  goto INITOP_L_AAE6
INITOP_L_AAFD:
  if ($F320) goto INITOP_L_AB09
  t27 = INITOP_F_A4C3(60)
INITOP_L_AB09:
  if (!$F320) goto INITOP_L_AB0F
INITOP_L_AB0F:
  t28 = sys3_palette_dma(INITOP_D_B088, 126, 32, 32)
  t29 = sys3_palette_dma(INITOP_D_B068, 126, 64, 32)
  t30 = sys3_palette_dma(INITOP_D_B1C8, 126, 112, 32)
  t31 = sys3_palette_dma(INITOP_D_B0A8, 126, 0, 32)
  t32 = sys3_palette_dma(INITOP_D_B0A8, 126, 144, 32)
  t33 = sys3_palette_dma(INITOP_D_B0C8, 126, 208, 32)
  t34 = sys60_sound_play(12, 0)
  if (!$F320) goto INITOP_L_AB75
  goto INITOP_L_AB7D
INITOP_L_AB75:
  t35 = INITOP_F_A536(130, 0)
INITOP_L_AB7D:
  t36 = sys48_color_math(0, 130, 224)
  t37 = sys37_brightness_set(15)
  t38 = sys6_tilemap_copy(1, 18, 21, 10, 2, INITOP_D_C772, 126)
  v4 = 0
INITOP_L_ABA4:
  if (!$F320) goto INITOP_L_ABAD
  goto INITOP_L_ABF1
INITOP_L_ABAD:
  v2 = 0
INITOP_L_ABAF:
  t39 = sys6_tilemap_copy(1, 18, 21, 10, 2, W[(v2 * 2) + INITOP_D_B224], 126)
  t40 = sys6_tilemap_copy(1, 22, 11, 2, 1, W[(v2 * 2) + INITOP_D_B216], 126)
  t41 = INITOP_F_A4C3(5)
  v2 = v2 + 1
  if (v2 < 7) goto INITOP_L_ABAF
  v4 = v4 + 1
  if (v4 < 5) goto INITOP_L_ABA4
INITOP_L_ABF1:
  v12 = 510
  v4 = 0
  v2 = 0
  goto INITOP_L_AC5B
INITOP_L_ABFC:
  if (!$F320) goto INITOP_L_AC06
  v12 = 360
INITOP_L_AC06:
  t42 = sys17_bg_scroll(3, 0, v12)
  if (v4 % 6) goto INITOP_L_AC4E
  t43 = sys6_tilemap_copy(1, 18, 21, 10, 2, W[(v2 * 2) + INITOP_D_B224], 126)
  t44 = sys6_tilemap_copy(1, 22, 11, 2, 1, W[(v2 * 2) + INITOP_D_B216], 126)
  v2 = v2 + 1
  if (!(v2 > 6)) goto INITOP_L_AC4B
  v2 = 0
INITOP_L_AC4B:
  goto INITOP_L_AC53
INITOP_L_AC4E:
  t45 = INITOP_F_A4C3(1)
INITOP_L_AC53:
  v12 = v12 - 2
  v4 = v4 + 1
INITOP_L_AC5B:
  if (v12 > 358) goto INITOP_L_ABFC
  t46 = sys3_palette_dma(INITOP_D_B1E8, 126, 208, 32)
  if (!$F320) goto INITOP_L_ACA1
  t47 = sys6_tilemap_copy(1, 14, 24, 18, 3, INITOP_D_D3F8, 126)
  t48 = sys9_metasprite_set(0, 40, 143, 22, 2, INITOP_D_CB8E, 0, 126)
  $F320 = 0
INITOP_L_ACA1:
  v18 = 0
  v4 = 0
INITOP_L_ACA5:
  v2 = 0
INITOP_L_ACA7:
  t49 = sys6_tilemap_copy(1, 18, 21, 10, 2, W[(v2 * 2) + INITOP_D_B224], 126)
  t50 = sys6_tilemap_copy(1, 22, 11, 2, 1, W[(v2 * 2) + INITOP_D_B216], 126)
  t51 = RF_362A(0)
  if (t51) goto INITOP_L_ACDC
  v18 = 1
INITOP_L_ACDC:
  if (!(v18 == 1)) goto INITOP_L_ACEF
  t52 = RF_362A(0)
  if (!(t52 == $1000)) goto INITOP_L_ACEF
  return t52 == $1000
INITOP_L_ACEF:
  if (!(v4 < 2)) goto INITOP_L_AD0F
  t53 = RF_362A(0)
  if (!(t53 == $1000)) goto INITOP_L_AD05
  $F320 = 1
INITOP_L_AD05:
  t54 = sys16_wait_frames(6)
  goto INITOP_L_AD1B
INITOP_L_AD0F:
  t55 = INITOP_F_A4C3(6)
  if (!$F320) goto INITOP_L_AD1B
  return $F320
INITOP_L_AD1B:
  v2 = v2 + 1
  if (v2 < 7) goto INITOP_L_ACA7
  if (!$F320) goto INITOP_L_AD2D
  goto INITOP_L_AD61
INITOP_L_AD2D:
  if (!(v4 == 1)) goto INITOP_L_AD47
  t56 = sys6_tilemap_copy(1, 14, 24, 18, 3, INITOP_D_D3F8, 126)
  goto INITOP_L_AD61
INITOP_L_AD47:
  if (!(v4 == 3)) goto INITOP_L_AD61
  t57 = sys9_metasprite_set(0, 40, 143, 22, 2, INITOP_D_CB8E, 0, 126)
INITOP_L_AD61:
  v4 = v4 + 1
  if (v4 < 15) goto INITOP_L_ACA5
  return v4 < 15

INITOP_F_AD6B:
  // frame 0
  if (!$F320) goto INITOP_L_AD76
INITOP_L_AD76:
  t1 = INITOP_F_A245()
  t2 = INITOP_F_A611()
  if (!$F320) goto INITOP_L_AD82
INITOP_L_AD82:
  t3 = INITOP_F_A998()
  if (!$F320) goto INITOP_L_AD8C
  return $F320
INITOP_L_AD8C:
  return

INITOP_F_AD8D:
  // frame 2
  t1 = RF_530E(0, 0)
  t2 = sys8_oam_hide_all()
  t3 = RF_3D7C()
  $F320 = 0
  t4 = INITOP_F_9F8A()
  t5 = INITOP_F_AD6B()
  t6 = sys16_wait_frames(1)
  t7 = sys37_brightness_set(0)
  t8 = RF_2281()
  t9 = sys74_hdma_effect_off()
  t10 = sys8_oam_hide_all()
  t11 = sys75_bg_map_base_set(3, 121)
  t12 = INITOP_F_A26F()
  t13 = INITOP_F_A86D(0)
  t14 = RF_530E(0, 0)
  t15 = RF_20CC()
  t16 = sys37_brightness_set(15)
  return t16
INITOP_L_ADE8:

