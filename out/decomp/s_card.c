S_CARD_F_B003:
  // frame 0
  t1 = S_CARD_F_B04D()
  return t1

S_CARD_F_B00C:
  // frame 2
  t1 = sys24_file_open(W[(a0 * 2) + S_CARD_D_B222])
  v2 = t1
  t2 = sys26_file_seek(v2, 0, 0, pop())
  t3 = sys27_file_read_7e(v2, $B800, $2200)
  t4 = sys25_file_close(v2)
  if (!a1) goto S_CARD_L_B04C
  t5 = (*$B800)()
S_CARD_L_B04C:
  return

S_CARD_F_B04D:
  // frame 0
  t1 = RF_4F48(1)
  t2 = RF_4DD8()
  t3 = $9642()
  t4 = RF_4B55(1, 2, 30, 27, 6)
  t5 = RF_3D7C()
  t6 = $978F()
  t7 = $9825(0)
  t8 = sys76_lz_decompress(0, $CCE7, 22)
  t9 = sys11_vram_load_tiles(416, 404, 0, 127, 1)
  switch ($F99E) {2 cases}

S_CARD_F_B104:
  // frame 5
  v5 = 0
S_CARD_L_B10C:
  t1 = rand(52)
  (byte)v2 = t1
  t2 = rand(52)
  (byte)v3 = t2
  (byte)v1 = B[(byte)v2 + a0]
  B[(byte)v2 + a0] = B[(byte)v3 + a0]
  B[(byte)v3 + a0] = (byte)v1
  v5 = v5 + 1
  if (v5 < 104) goto S_CARD_L_B10C
  return v5 < 104

S_CARD_F_B14C:
  // frame 0
  t1 = RF_3DF1(1, a0, a1, 2, 3, $7374, g_fh_cbmap0)
  return t1

S_CARD_F_B161:
  // frame 0
  t1 = sys26_file_seek(g_fh_fdata, $2710, 0, pop())
  t2 = sys29_file_palette_dma(g_fh_fdata, 48, 64)
  t3 = sys26_file_seek(g_fh_fdata, $2710, 0, pop())
  t4 = sys29_file_palette_dma(g_fh_fdata, 160, 32)
  return t4

S_CARD_F_B1A4:
  // frame 0
  t1 = RF_3DF1(2, 1, 1, 30, 28, $6C5C, g_fh_cbmap0)
  t2 = S_CARD_F_B161()
  t3 = RF_4F2A(1)
  return t3

S_CARD_F_B1C3:
  // frame 0
  t1 = RF_3DF1(1, a0, a1, 2, 1, W[(a3 * 2) + S_CARD_D_B230], g_fh_cbmap0)
  t2 = RF_3DF1(1, a0, a1 + 1, 2, 1, W[(((B[a3 + S_CARD_D_B274]) * 26) + (a2 * 2)) + S_CARD_D_B240], g_fh_cbmap0)
  t3 = RF_3DF1(1, a0, a1 + 2, 2, 1, W[(a3 * 2) + S_CARD_D_B238], g_fh_cbmap0)
  t4 = sys5_tilemap_write(1, a0, a1 - 1, 2, 1, 0)
  return t4
S_CARD_D_B222:

