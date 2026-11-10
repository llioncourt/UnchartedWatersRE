UMINATO_F_9603:
  // frame 0
  t1 = UMINATO_F_A961()
  return t1

UMINATO_F_960C:
  // frame 6
  v6 = a2 + a4
  goto UMINATO_L_963A
UMINATO_L_961A:
  if (!((v6 - v2) > 3)) goto UMINATO_L_9626
  goto UMINATO_L_9629
UMINATO_L_9626:
UMINATO_L_9629:
  v4 = L
  t1 = sys5_tilemap_write(a0, a1, v2, a3, v4, a5)
UMINATO_L_963A:
  v2 = L
  if (v2 < v6) goto UMINATO_L_961A
  return v2 < v6

UMINATO_F_9642:
  // frame 0
  t1 = RF_604A(3, 8, 21, 23, 6, $2000)
  t2 = RF_604A(1, 7, 20, 25, 8, 0)
  return t2

UMINATO_F_9662:
  // frame 0
  t1 = RF_604A(3, 1, 6, 30, 14, $2000)
  return t1

UMINATO_F_9675:
  // frame 0
  t1 = RF_604A(3, 0, 0, 32, 6, $2000)
  t2 = UMINATO_F_9662()
  return t2

UMINATO_F_968B:
  // frame 6
  v6 = 0
  v4 = 0
  t1 = RF_3E5A(0, ((v4 + 2) << 3) - 1, ((v6 + 12) << 3) - 5, 1, 2, $26CC, g_fh_fdata)
UMINATO_L_96AD:
  t2 = RF_362A(0)
  v2 = t2
  t3 = RF_3D91(v2, 12)
  switch (v2) {4 cases}

UMINATO_F_9762:
  // frame 0
  if ((byte)g_port) goto UMINATO_L_9772
  goto UMINATO_L_978A
UMINATO_L_9772:
  if (!((byte)a0 > 11)) goto UMINATO_L_9788
  if (!((byte)a0 < 31)) goto UMINATO_L_9788
  goto UMINATO_L_978A
UMINATO_L_9788:
UMINATO_L_978A:
  t1 = RF_21EA(8, 1)
  return t1

UMINATO_F_978F:
  // frame 0
  t1 = sys48_color_math(0, 0, 224)
  t2 = sys39_window_off()
  t3 = sys56_anim_control(3, 255)
  return t3

UMINATO_F_97B0:
  // frame 0
  t1 = RF_4D41(a0, a1, a2, a3)
  return t1

UMINATO_F_97BE:
  // frame 2
  v2 = 1
  t1 = UMINATO_F_978F()
  t2 = RF_4D8B()
  v2 = t2
  return t2

UMINATO_F_97CD:
  // frame 4
  g_portrait = -1
  if (!a0) goto UMINATO_L_97E9
  t1 = RF_4B55(1, 20, 31, 8, 3)
  goto UMINATO_L_97F4
UMINATO_L_97E9:
  t2 = RF_4C4B(1, 20, 31, 8, 3)
UMINATO_L_97F4:
  return

UMINATO_F_97F5:
  // frame 2
  t1 = sys11_vram_load_tiles(416, W[($F99C * 6) + UMINATO_D_AB54], W[($F99C * 6) + UMINATO_D_AB56], W[($F99C * 6) + UMINATO_D_AB58], 2)
  return t1

UMINATO_F_9825:
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

UMINATO_F_98CB:
  // frame 16
  v2 = a0 + 2
  v6 = a2 + 2
  v4 = a1 + 3
  v8 = a3 + 3
  goto UMINATO_L_9917
UMINATO_L_98E0:
  goto UMINATO_L_990E
UMINATO_L_98E4:
  goto UMINATO_L_9905
UMINATO_L_98E8:
  goto UMINATO_L_98FC
UMINATO_L_98EC:
  if (!(v12 == v16)) goto UMINATO_L_98FA
  if (!(v10 == v14)) goto UMINATO_L_98FA
  return 0
UMINATO_L_98FA:
UMINATO_L_98FC:
  v14 = L
  if (v14 < v6) goto UMINATO_L_98EC
UMINATO_L_9905:
  v16 = L
  if (v16 < v8) goto UMINATO_L_98E8
UMINATO_L_990E:
  v10 = L
  if (v10 < v2) goto UMINATO_L_98E4
UMINATO_L_9917:
  v12 = L
  if (v12 < v4) goto UMINATO_L_98E0
  return 1

UMINATO_F_9920:
  // frame 12
  v10 = a0 - 1
  v12 = a1 - 2
  v6 = v10 + 2
  v8 = v12 + 4
  goto UMINATO_L_995B
UMINATO_L_9936:
  goto UMINATO_L_9952
UMINATO_L_993A:
  if (!((W[((v4 * 56) + (v2 * 2)) + $F30A]) == 96)) goto UMINATO_L_9950
  return 0
UMINATO_L_9950:
UMINATO_L_9952:
  v2 = L
  if (v2 < v6) goto UMINATO_L_993A
UMINATO_L_995B:
  v4 = L
  if (v4 < v8) goto UMINATO_L_9936
  return 1

UMINATO_F_9964:
  // frame 14
  v8 = a0
  v10 = a1
  v4 = $F302
  v6 = $F304 - 1
  t1 = UMINATO_F_98CB(v8, v10, v4, v6)
  if (t1) goto UMINATO_L_9983
  return 0
UMINATO_L_9983:
  goto UMINATO_L_99AC
UMINATO_L_9987:
  v12 = (v2 * 154) + $F9B2
  v4 = W[v12 + 146]
  v6 = W[v12 + 148]
  t2 = UMINATO_F_98CB(v8, v10, v4, v6)
  if (t2) goto UMINATO_L_99AA
  return 0
UMINATO_L_99AA:
UMINATO_L_99AC:
  v2 = L
  if (v2 < a2) goto UMINATO_L_9987
  return 1

UMINATO_F_99B5:
  // frame 12
  t1 = sys36_memset_long(126, $F9B2, 0, 462)
  if (!((byte)$FB84 == 255)) goto UMINATO_L_99D4
  return (byte)$FB84 == 255
UMINATO_L_99D4:
  v2 = 0
UMINATO_L_99D6:
  v4 = 0
UMINATO_L_99D8:
  t2 = sys26_file_seek(g_fh_cbmap0, W[((((byte)$FB84 * 72) + (v2 * 24)) + (v4 * 2)) + UMINATO_D_AB9C], 0, pop())
  t3 = sys28_file_read(g_fh_cbmap0, 126, ((v2 * 154) + (v4 * 12)) + $F9B2, 12)
  v4 = v4 + 1
  if (v4 < 12) goto UMINATO_L_99D8
  t4 = rand(14)
  v8 = t4 + 6
  t5 = rand(6)
  v10 = t5 + 5
  t6 = UMINATO_F_9964(v8, v10, v2)
  if (!t6) goto UMINATO_L_9A8B
  t7 = UMINATO_F_9920(v8, v10)
  if (!t7) goto UMINATO_L_9A8B
  W[(v2 * 154) + $FA44] = v8
  W[(v2 * 154) + $FA46] = v10
  W[(v2 * 154) + $FA42] = (v2 * 6) + 16
  W[(v2 * 154) + $FA48] = v2 + 1
  t8 = rand(4)
  W[(v2 * 154) + $FA4A] = t8
  v2 = v2 + 1
UMINATO_L_9A8B:
  if (v2 < 3) goto UMINATO_L_99D6
  return v2 < 3

UMINATO_F_9A92:
  // frame 12
  if (!(a1 < 255)) goto UMINATO_L_9B6D
  if (!(a2 < 255)) goto UMINATO_L_9B6D
  if (a5) goto UMINATO_L_9B04
  v2 = a1
  v4 = a2
  v10 = v2 + 2
  v12 = v4 + 3
  goto UMINATO_L_9AFA
UMINATO_L_9ABA:
  goto UMINATO_L_9AF1
UMINATO_L_9ABE:
  if (!((W[((v8 * 56) + (v6 * 2)) + $F30A]) == 32)) goto UMINATO_L_9AEF
  W[((v8 * 56) + (v6 * 2)) + $F30A] = W[((v8 * 56) + (v6 * 2)) + $F652]
UMINATO_L_9AEF:
UMINATO_L_9AF1:
  v6 = L
  if (v6 < v10) goto UMINATO_L_9ABE
UMINATO_L_9AFA:
  v8 = L
  if (v8 < v12) goto UMINATO_L_9ABA
  goto UMINATO_L_9B6D
UMINATO_L_9B04:
  v2 = a1
  v4 = a2
  v10 = v2 + 2
  v12 = v4 + 3
  goto UMINATO_L_9B66
UMINATO_L_9B12:
  goto UMINATO_L_9B5D
UMINATO_L_9B16:
  if (!((W[((v8 * 56) + (v6 * 2)) + $F30A]) >= 48)) goto UMINATO_L_9B5B
  if (!((W[((v8 * 56) + (v6 * 2)) + $F30A]) <= 80)) goto UMINATO_L_9B5B
  W[((v8 * 56) + (v6 * 2)) + $F30A] = W[((v8 * 56) + (v6 * 2)) + $F652]
UMINATO_L_9B5B:
UMINATO_L_9B5D:
  v6 = L
  if (v6 < v10) goto UMINATO_L_9B16
UMINATO_L_9B66:
  v8 = L
  if (v8 < v12) goto UMINATO_L_9B12
UMINATO_L_9B6D:
  if (a5) goto UMINATO_L_9BBA
  v2 = a3
  v4 = a4
  v10 = v2 + 2
  v12 = v4 + 3
  goto UMINATO_L_9BB2
UMINATO_L_9B81:
  goto UMINATO_L_9BA9
UMINATO_L_9B85:
  if (W[((v8 * 56) + (v6 * 2)) + $F30A]) goto UMINATO_L_9BA7
  W[((v8 * 56) + (v6 * 2)) + $F30A] = 32
UMINATO_L_9BA7:
UMINATO_L_9BA9:
  v6 = L
  if (v6 < v10) goto UMINATO_L_9B85
UMINATO_L_9BB2:
  v8 = L
  if (v8 < v12) goto UMINATO_L_9B81
  return v8 < v12
UMINATO_L_9BBA:
  if (!a5) goto UMINATO_L_9C38
  v2 = a3
  v4 = a4
  v10 = v2 + 2
  v12 = v4 + 3
  goto UMINATO_L_9C31
UMINATO_L_9BCE:
  goto UMINATO_L_9C28
UMINATO_L_9BD2:
  if (W[((v8 * 56) + (v6 * 2)) + $F30A]) goto UMINATO_L_9C26
  W[((v8 * 56) + (v6 * 2)) + $F30A] = 64
  if (v8 - v4) goto UMINATO_L_9C0D
  goto UMINATO_L_9C25
UMINATO_L_9C0D:
  if (!((v8 - v4) == 2)) goto UMINATO_L_9C26
UMINATO_L_9C25:
  W[((v8 * 56) + (v6 * 2)) + $F30A] = L
UMINATO_L_9C26:
UMINATO_L_9C28:
  v6 = L
  if (v6 < v10) goto UMINATO_L_9BD2
UMINATO_L_9C31:
  v8 = L
  if (v8 < v12) goto UMINATO_L_9BCE
UMINATO_L_9C38:
  return

UMINATO_F_9C39:
  // frame 10
  v6 = (($F302 + 2) << 3) - 8
  v8 = (($F304 + 4) << 3) - 9
  t1 = sys26_file_seek(g_fh_cbmap0, W[((a0 * 6) + ($F306 * 2)) + UMINATO_D_AB84], 0, pop())
  t2 = sys31_file_metasprite_set(10, v6, v8, 2, 3, 0, g_fh_cbmap0)
  t3 = UMINATO_F_9A92(a0, 255, 255, $F302, $F304, 0)
  if (!a2) goto UMINATO_L_9C93
  return a2
UMINATO_L_9C93:
  if (!((byte)$FB84 == 255)) goto UMINATO_L_9C9E
  return (byte)$FB84 == 255
UMINATO_L_9C9E:
  v2 = 0
UMINATO_L_9CA0:
  v10 = (v2 * 154) + $F9B2
  t4 = rand(3)
  v4 = B[t4 + UMINATO_D_ACBC]
  v6 = (((W[v10 + 146]) + 2) << 3) - 8
  v8 = (((W[v10 + 148]) + 5) << 3) - 9
  t5 = UMINATO_F_9A92(W[v10 + 152], 255, 255, W[v10 + 146], W[v10 + 148], W[v10 + 150])
  t6 = sys9_metasprite_set(W[v10 + 144], v6, v8, 2, 3, (((W[v10 + 152]) + v4) * 12) + v10, 0, 126)
  v2 = v2 + 1
  if (v2 < 3) goto UMINATO_L_9CA0
  return v2 < 3

UMINATO_F_9D15:
  // frame 12
  if (!(a0 > 6)) goto UMINATO_L_9E33
  if (!(a0 < 20)) goto UMINATO_L_9E33
  if (!(a1 > 5)) goto UMINATO_L_9E33
  if (!(a1 < 10)) goto UMINATO_L_9E33
  switch (a2) [0, 4, UMINATO_L_9D7D]

UMINATO_F_9E35:
  // frame 17
  if (!((byte)$FB84 == 255)) goto UMINATO_L_9E4C
  t1 = sys16_wait_frames(1)
  return t1
UMINATO_L_9E4C:
  switch (W[a0 + 150]) {3 cases}

UMINATO_F_9FA9:
  // frame 0
  t1 = sys58_sprites_hide(10, 6)
  return t1

UMINATO_F_9FB7:
  // frame 0
  t1 = sys58_sprites_hide(16, 18)
  return t1

UMINATO_F_9FC7:
  // frame 6
  v2 = (($F302 + 2) << 3) - 8
  v4 = (($F304 + 4) << 3) - 9
  switch (a0) {8 cases}

UMINATO_F_A0F3:
  // frame 0
  if (!(a0 >= 1)) goto UMINATO_L_A106
  if (!(a0 <= 6)) goto UMINATO_L_A106
  return 1
UMINATO_L_A106:
  return 0

UMINATO_F_A108:
  // frame 22
  v6 = (($F302 + 2) << 3) - 8
  v8 = (($F304 + 4) << 3) - 9
  v12 = 0
UMINATO_L_A121:
  W[(v12 * 2) + (&v22)] = 0
  v12 = v12 + 1
  if (v12 < 3) goto UMINATO_L_A121
  v14 = 0
UMINATO_L_A13A:
  v4 = L
  if (v4) goto UMINATO_L_A1C3
UMINATO_L_A13F:
  if (!v4) goto UMINATO_L_A1BB
  t1 = rand(32)
  v12 = t1
  if (v12 & 15) goto UMINATO_L_A161
  v16 = $FA4C
  t2 = UMINATO_F_9E35(v16, &v20, 0)
  v14 = v14 + 1
UMINATO_L_A161:
  if (v12 & 7) goto UMINATO_L_A178
  v16 = $FAE6
  t3 = UMINATO_F_9E35(v16, &v18, 0)
  v14 = v14 + 1
UMINATO_L_A178:
  if (v12 & 3) goto UMINATO_L_A18F
  v16 = $F9B2
  t4 = UMINATO_F_9E35(v16, &v22, 0)
  v14 = v14 + 1
UMINATO_L_A18F:
  t5 = sys26_file_seek(g_fh_cbmap0, W[((a0 * 6) + ($F306 * 2)) + UMINATO_D_AB84], 0, pop())
  t6 = sys31_file_metasprite_set(a2, v6, v8, 2, 3, 0, g_fh_cbmap0)
UMINATO_L_A1BB:
  if (v14) goto UMINATO_L_A20F
  goto UMINATO_L_A216
UMINATO_L_A1C3:
  t7 = RF_362A(0)
  v2 = t7
  if (v2) goto UMINATO_L_A13F
  if (v4 % 16) goto UMINATO_L_A1E2
  v16 = $FA4C
  t8 = UMINATO_F_9E35(v16, &v20, 1)
UMINATO_L_A1E2:
  if (v4 % 8) goto UMINATO_L_A1F6
  v16 = $FAE6
  t9 = UMINATO_F_9E35(v16, &v18, 1)
UMINATO_L_A1F6:
  if (v4 % 4) goto UMINATO_L_A20A
  v16 = $F9B2
  t10 = UMINATO_F_9E35(v16, &v22, 1)
UMINATO_L_A20A:
  goto UMINATO_L_A13A
UMINATO_L_A20F:
  if (!(v14 == 1)) goto UMINATO_L_A21C
UMINATO_L_A216:
  t11 = sys16_wait_frames(1)
UMINATO_L_A21C:
  return v2

UMINATO_F_A21E:
  // frame 18
  v4 = 0
  v2 = $F308
  v12 = 10
UMINATO_L_A22B:
  v8 = $F302
  v10 = $F304
  t1 = UMINATO_F_A108(v2, v4, v12)
  v4 = t1
  v12 = 10
  switch (v4) {9 cases}

UMINATO_F_A49B:
  // frame 0
  if (!a0) goto UMINATO_L_A4B2
  t1 = RF_4B55(1, 1, 31, 27, 3)
  goto UMINATO_L_A4BD
UMINATO_L_A4B2:
  t2 = RF_4C4B(1, 1, 31, 27, 3)
UMINATO_L_A4BD:
  return

UMINATO_F_A4BE:
  // frame 2
  if (!a1) goto UMINATO_L_A4F8
  t1 = sys48_color_math(0, (byte)a0, 224)
  v2 = 0
UMINATO_L_A4D7:
  t2 = sys48_color_math(0, (byte)a0, v2 | 224)
  t3 = sys16_wait_frames(2)
  v2 = v2 + 1
  if (v2 < 9) goto UMINATO_L_A4D7
UMINATO_L_A4F8:
  return

UMINATO_F_A4F9:
  // frame 0
  t1 = UMINATO_F_A49B(1)
  t2 = RF_3DF1(1, 1, 1, 30, 27, $8478, g_fh_cbmap0)
  if (!(a0 == 6)) goto UMINATO_L_A547
  t3 = RF_3DF1(1, 16, 18, 4, 2, $8ACC, g_fh_cbmap0)
  t4 = RF_3DF1(1, 13, 18, 3, 2, RD_8AEC, g_fh_cbmap0)
  t5 = UMINATO_F_9C39(3, $F306, 1)
  goto UMINATO_L_A591
UMINATO_L_A547:
  t6 = RF_3DF1(1, 16, 18, 4, 2, RD_8ADC, g_fh_cbmap0)
  t7 = RF_3DF1(1, B[(a0 * 2) + UMINATO_D_AD82], (B[(a0 * 2) + UMINATO_D_AD83]) - 1, B[(a0 * 2) + UMINATO_D_AD90], B[(a0 * 2) + UMINATO_D_AD91], W[(($F99C * 12) + (a0 * 2)) + UMINATO_D_ACC2], g_fh_cbmap0)
UMINATO_L_A591:
  t8 = UMINATO_F_A4BE(146, 1)
  t9 = UMINATO_F_9FB7()
  t10 = sys75_bg_map_base_set(2, 116)
  t11 = sys48_color_math(0, 0, 224)
  return t11

UMINATO_F_A5B1:
  // frame 0
  t1 = sys75_bg_map_base_set(2, 113)
  t2 = UMINATO_F_A49B(0)
  t3 = sys56_anim_control(3, 255)
  return t3

UMINATO_F_A5CF:
  // frame 4
  v2 = 0
UMINATO_L_A5D6:
  v4 = 0
UMINATO_L_A5D8:
  W[((v2 * 56) + (v4 * 2)) + $F30A] = 0
  v4 = v4 + 1
  if (v4 < 7) goto UMINATO_L_A5D8
  v2 = v2 + 1
  if (v2 < 4) goto UMINATO_L_A5D6
  return v2 < 4

UMINATO_F_A5FB:
  // frame 2
  v2 = 23
UMINATO_L_A603:
  W[(v2 * 2) + $F3EA] = 2
  v2 = v2 + 1
  if (v2 < 26) goto UMINATO_L_A603
  return v2 < 26

UMINATO_F_A617:
  // frame 2
  if (!((byte)g_port < 50)) goto UMINATO_L_A666
  t1 = sys26_file_seek(g_fh_fdata, $2990, 0, pop())
  t2 = sys28_file_read(g_fh_fdata, 126, $F30A, 840)
  v2 = B[(byte)g_port + g_port_flags]
  if (v2 & 4) goto UMINATO_L_A659
  t3 = UMINATO_F_A5CF()
UMINATO_L_A659:
  if (!(v2 & 16)) goto UMINATO_L_A688
  t4 = UMINATO_F_A5FB()
  goto UMINATO_L_A688
UMINATO_L_A666:
  t5 = sys26_file_seek(g_fh_fdata, $2CD8, 0, pop())
  t6 = sys28_file_read(g_fh_fdata, 126, $F30A, 840)
UMINATO_L_A688:
  t7 = RL_88F4($F30A, $F652, 840)
  return t7

UMINATO_F_A696:
  // frame 0
  t1 = RF_2FB9(UMINATO_D_AD9E, 1)
  t2 = RF_4A99()
  t3 = RF_4AC6()
  t4 = RF_4AF7()
  t5 = RF_2FB9(UMINATO_D_ADA2, 1)
  return t5

UMINATO_F_A6B5:
  // frame 5
  (byte)v1 = B[(byte)g_port + g_port_flags]
  (byte)$EF68 = 0
  goto UMINATO_L_A712
UMINATO_L_A6CD:
  if (!((byte)g_port < 50)) goto UMINATO_L_A71C
  if (!(v3 == 1)) goto UMINATO_L_A6E5
  if (!((byte)v1 & 4)) goto UMINATO_L_A70F
UMINATO_L_A6E5:
  if (!(v3 == 2)) goto UMINATO_L_A6F5
  if ((byte)v1 & 16) goto UMINATO_L_A6FC
UMINATO_L_A6F5:
  goto UMINATO_L_A720
UMINATO_L_A6FC:
  if (!(v3 < 8)) goto UMINATO_L_A70F
  (byte)$EF68 = (byte)$EF68 | (1 << v3)
UMINATO_L_A70F:
UMINATO_L_A712:
  v3 = L
  if (v3 < 9) goto UMINATO_L_A6CD
  return v3 < 9
UMINATO_L_A71C:
UMINATO_L_A720:
  if (!L) goto UMINATO_L_A6FC
  goto UMINATO_L_A70F

UMINATO_F_A726:
  // frame 0
  t1 = sys24_file_open(W[(a0 * 2) + UMINATO_D_ADA6])
  $F9A4 = t1
  t2 = sys26_file_seek($F9A4, 0, 0, pop())
  t3 = sys27_file_read_7e($F9A4, $B000, W[(a0 * 2) + UMINATO_D_ADF8])
  t4 = sys25_file_close($F9A4)
  if (!a1) goto UMINATO_L_A773
  t5 = (*$B000)()
UMINATO_L_A773:
  return

UMINATO_F_A774:
  // frame 0
  $F9A6 = 0
  $F9A2 = a2
  t1 = UMINATO_F_A726(a0, a1)
  $F9A2 = 0
  return $F9A6

UMINATO_F_A78F:
  // frame 0
  if (!a0) goto UMINATO_L_A79C
  goto UMINATO_L_A7A1
UMINATO_L_A79C:
  if (a0) goto UMINATO_L_A7A4
UMINATO_L_A7A1:
  $F9AC = L
UMINATO_L_A7A4:
  t1 = UMINATO_F_A726(1, 1)
  $F9AC = 0
  return 0

UMINATO_F_A7AF:
  // frame 6
  v4 = 0
  if (!(a0 != 14)) goto UMINATO_L_A7D7
  v4 = 1
  if (!(a0 == 39)) goto UMINATO_L_A7C9
  goto UMINATO_L_A7D3
UMINATO_L_A7C9:
  if (!$F300) goto UMINATO_L_A7D7
UMINATO_L_A7D3:
  t1 = UMINATO_F_A4F9(a0 - 15)
UMINATO_L_A7D7:
  switch (a0) {9 cases}

UMINATO_F_A89F:
  // frame 4
  if (!((byte)a0 >= 50)) goto UMINATO_L_A8B8
  v2 = B[(byte)a0 + UMINATO_D_ADD8]
  return v2
UMINATO_L_A8B8:
  if ((byte)a0 == 2) goto UMINATO_L_A8C8
  if (!((byte)a0 == 12)) goto UMINATO_L_A8CA
UMINATO_L_A8C8:
  return 5
UMINATO_L_A8CA:
  v4 = ((byte)a0 * 5) + $150A
  t1 = RL_884E(v4)
  v2 = t1
  return v2

UMINATO_F_A8DC:
  // frame 1
  if (!((byte)a0 >= 50)) goto UMINATO_L_A8F0
  goto UMINATO_L_A912
UMINATO_L_A8F0:
  if (!(a1 == 6)) goto UMINATO_L_A907
  if (!((byte)a0 == 47)) goto UMINATO_L_A903
  goto UMINATO_L_A912
UMINATO_L_A903:
  goto UMINATO_L_A912
UMINATO_L_A907:
  if (!(a1 == 5)) goto UMINATO_L_A911
  goto UMINATO_L_A912
UMINATO_L_A911:
UMINATO_L_A912:
  (byte)v1 = L
  return (byte)v1

UMINATO_F_A919:
  // frame 0
  $F306 = 0
  $F300 = 1
  $F9B0 = 0
  $F9AE = 0
  $F9AC = 0
  $F9AA = 0
  $F9A8 = 0
  $F9A6 = 0
  $F99E = 0
  $F99A = 0
  $F9A2 = 0
  $F9A4 = 0
  (byte)$FB81 = 0
  (byte)$FB80 = 0
  $F9A0 = 0
  (byte)$FB83 = 0
  (byte)$FB82 = 0
  (byte)$FB84 = 255
  return 255

UMINATO_F_A961:
  // frame 10
  t1 = UMINATO_F_A919()
  if ((byte)$F28D) goto UMINATO_L_A983
  $F302 = 17
  $F304 = 13
  $F308 = 2
  (byte)$F28D = 1
  goto UMINATO_L_A98F
UMINATO_L_A983:
  $F302 = 3
  $F304 = 11
  $F308 = 0
UMINATO_L_A98F:
  v10 = 1
  v8 = g_fleets
  t2 = $8747(B[v8], B[v8 + 1], B[v8 + 2], B[v8 + 3])
  (byte)g_port = t2
  t3 = UMINATO_F_A89F((byte)g_port)
  $F99C = t3
  t4 = UMINATO_F_A8DC((byte)g_port, $F99C)
  (byte)$FB84 = t4
  t5 = UMINATO_F_A617()
  t6 = UMINATO_F_99B5()
  t7 = RF_2FB9(UMINATO_D_AEFA, 1)
  $F16B = $8000
  if ((byte)$EF65) goto UMINATO_L_A9EB
  t8 = UMINATO_F_A726(1, 1)
  (byte)$EF65 = 1
  goto UMINATO_L_AA1B
UMINATO_L_A9EB:
  if (!((byte)$EF65 == 240)) goto UMINATO_L_A9FF
  (byte)$EF65 = 1
  t9 = UMINATO_F_A696()
  goto UMINATO_L_AA1B
UMINATO_L_A9FF:
  t10 = UMINATO_F_A6B5()
  t11 = RF_2FB9(UMINATO_D_AF04, 1)
  t12 = RF_4A99()
  t13 = RF_4AC6()
  t14 = RF_4AF7()
  t15 = RF_2FB9(UMINATO_D_AF08, 1)
UMINATO_L_AA1B:
  (byte)$F168 = 255
  (byte)$F167 = 255
  (byte)$F166 = 255
  (byte)$F165 = 255
  (byte)$F196 = 0
  t16 = UMINATO_F_97CD(1)
  if (!((byte)g_port < 50)) goto UMINATO_L_AA58
  t17 = UMINATO_F_A774(0, 1, 0)
  if (!t17) goto UMINATO_L_AA6C
  t18 = UMINATO_F_97CD(0)
  t19 = UMINATO_F_A774(2, 1, 2)
  t20 = UMINATO_F_A78F(1)
  return t20
UMINATO_L_AA58:
  t21 = RF_60EE()
  t22 = rand(5)
  t23 = RF_2FB9(W[(t22 * 2) + UMINATO_D_AE1E], 1)
UMINATO_L_AA6C:
  if (!$F9AE) goto UMINATO_L_AA76
  $F9AE = 0
UMINATO_L_AA76:
  t24 = UMINATO_F_9C39($F308, $F306, 0)
  t25 = RF_2FB9(UMINATO_D_AF0C, 1)
  t26 = UMINATO_F_97CD(0)
  v6 = 0
UMINATO_L_AA90:
  t27 = UMINATO_F_A21E()
  v4 = t27
  if (!(v4 > 0)) goto UMINATO_L_AAA3
  if (!(v4 < 7)) goto UMINATO_L_AAA3
  t28 = UMINATO_F_9FA9()
UMINATO_L_AAA3:
  if (v4 == 8) goto UMINATO_L_AAB5
  if (!((byte)$EF68 & (1 << v4))) goto UMINATO_L_AAE7
UMINATO_L_AAB5:
  t29 = UMINATO_F_97CD(1)
  if (!(v4 == 4)) goto UMINATO_L_AADF
  t30 = UMINATO_F_A7AF(39)
  v6 = t30
  if (v6) goto UMINATO_L_AAD7
  $F300 = 0
  t31 = UMINATO_F_A7AF(v4 + 14)
  v6 = t31
UMINATO_L_AAD7:
  $F300 = 1
  goto UMINATO_L_AAE6
UMINATO_L_AADF:
  t32 = UMINATO_F_A7AF(v4 + 14)
UMINATO_L_AAE6:
  v6 = L
UMINATO_L_AAE7:
  t33 = UMINATO_F_97CD(0)
  if (!(byte)g_ending) goto UMINATO_L_AAF3
  return (byte)g_ending
UMINATO_L_AAF3:
  if (!v10) goto UMINATO_L_AB05
  if ((byte)$F196) goto UMINATO_L_AB05
  t34 = UMINATO_F_9762(B[v8 + 1])
UMINATO_L_AB05:
  if (v6) goto UMINATO_L_AB2D
  t35 = UMINATO_F_9C39($F308, $F306, 0)
  t36 = UMINATO_F_97CD(1)
  t37 = UMINATO_F_A774(2, 1, 1)
  t38 = RF_2FB9(UMINATO_D_AF0F, 1)
  t39 = UMINATO_F_97CD(0)
UMINATO_L_AB2D:
  if (!v6) goto UMINATO_L_AA90
  if (!((B[v8 + 15]) & 2)) goto UMINATO_L_AB43
  if ((byte)$F196) goto UMINATO_L_AB43
  goto UMINATO_L_AB4A
UMINATO_L_AB43:
  if (!(v4 == 7)) goto UMINATO_L_AB4E
UMINATO_L_AB4A:
  t40 = UMINATO_F_A78F(1)
UMINATO_L_AB4E:
  (byte)$EA8E = 0
  return 0

