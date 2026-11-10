RF_2003:
  // frame 0
  t1 = RF_219E()
  return t1

RF_200C:
  // frame 0
  t1 = sys24_file_open(W[(a0 * 2) + RD_8ACE])
  $F27C = t1
  t2 = sys26_file_seek($F27C, 0, 0, pop())
  t3 = sys27_file_read_7e($F27C, $9600, W[(a0 * 2) + RD_8B31])
  t4 = sys25_file_close($F27C)
  if (!a1) goto RL_2059
  t5 = (*$9600)()
RL_2059:
  return

RF_205A:
  // frame 258
  v258 = &v256
  W[v258] = 2
  v258 = v258 + 2
  W[v258] = 9
  v258 = v258 + 2
  W[v258] = 105
  v258 = v258 + 2
  W[v258] = 113
  v258 = v258 + 2
  W[v258] = 121
  v258 = v258 + 2
  W[v258] = 8
  v258 = v258 + 2
  W[v258] = 17
  v258 = v258 + 2
  W[v258] = 0
  t1 = sys1_display_init(&v256)
  return t1

RF_20CC:
  // frame 0
  t1 = sys21_hv_counter_read()
  t2 = sys34_screen_off()
  t3 = sys76_lz_decompress(0, $9D00, 12)
  t4 = sys11_vram_load_tiles(0, 353, 0, 127, 3)
  t5 = sys76_lz_decompress(0, $A60D, 12)
  t6 = sys11_vram_load_tiles(1, 34, 0, 127, 1)
  t7 = sys13_vram_load_obj_tiles(224, 9, $A727, 12)
  t8 = sys11_vram_load_tiles(352, 54, $A867, 12, 3)
  t9 = sys35_screen_on()
  t10 = RF_3D7C()
  t11 = sys48_color_math(0, 0, 224)
  t12 = sys20_layers_enable(23, 23)
  t13 = RF_530E(0, 0)
  t14 = RF_3E7E(0, 0)
  t15 = RF_3E7E(0, 1)
  return t15

RF_2159:
  // frame 0
  t1 = sys24_file_open(RD_8B47)
  g_fh_sgdata = t1
  t2 = sys24_file_open(RD_8B4E)
  g_fh_cbmap0 = t2
  t3 = sys24_file_open(RD_8B55)
  g_fh_fdata = t3
  t4 = sys24_file_open(RD_8B5B)
  g_fh_kdata = t4
  return t4

RF_218F:
  // frame 0
  t1 = RF_205A()
  t2 = RF_2159()
  t3 = RF_20CC()
  return t3

RF_219E:
  // frame 0
  t1 = RF_218F()
  (byte)g_ending = 0
  t2 = RF_200C(0, 1)
  t3 = RF_82A5()
  t4 = RF_200C(10, 1)
  return t4
RD_21BA:

RF_21CA:
  // frame 0
  if (!(a0 < 23)) goto RL_21D7
  return a0 < 23
RL_21D7:
  if (!((byte)$EA89 & 4)) goto RL_21E9
  t1 = sys63_sound_effect(a0 - 22)
RL_21E9:
  return

RF_21EA:
  // frame 0
  if (!((byte)a0 > 22)) goto RL_21F9
  return (byte)a0 > 22
RL_21F9:
  if (!((byte)$EA89 & 4)) goto RL_2239
  if ((byte)a0 != (byte)$F277) goto RL_2213
  t1 = RF_223A()
  if (t1) goto RL_2239
RL_2213:
  t2 = sys61_sound_stop()
  if (!((byte)$F277 != (byte)a0)) goto RL_222B
  (byte)$F277 = (byte)a0
RL_222B:
  t3 = sys60_sound_play((byte)a0, (byte)a1)
RL_2239:
  return

RF_223A:
  // frame 2
  if (!((byte)$EA89 & 4)) goto RL_2263
  t1 = sys62_apu_ports_read()
  v2 = t1 & 255
  if (!v2) goto RL_2261
  if (v2 > 22) goto RL_2261
  goto RL_2262
RL_2261:
RL_2262:
  return
RL_2263:
  return 0

RF_2265:
  // frame 0
  if (!((byte)$EA89 & 4)) goto RL_2280
  t1 = sys60_sound_play((byte)$F277, (byte)a0)
RL_2280:
  return

RF_2281:
  // frame 0
  if (!((byte)$EA89 & 4)) goto RL_2294
  t1 = sys61_sound_stop()
RL_2294:
  (byte)$F277 = 255
  return 255

RF_229B:
  // frame 0
  t1 = sys63_sound_effect(0)
  return t1

face_block_load:
  // frame 4
  v4 = (a2 * 896) + $8820
  if (a5) goto RL_22C6
  goto RL_22D6
RL_22C6:
RL_22D6:
  t1 = sys11_vram_load_tiles(((a5 - 1) * 28) + 710, 28, v4, 24, 1)
  t2 = sys26_file_seek(g_fh_cbmap0, W[(a5 * 2) + RD_8B62], 0, 44)
  t3 = sys30_file_tilemap_copy(1, a0, a1, 7, 4, g_fh_cbmap0)
  v2 = a2 >> 1
  if (!(a3 == 255)) goto RL_230D
  a3 = 2
RL_230D:
  if (a5) goto RL_2331
  goto RL_2354
RL_2331:
RL_2354:
  t4 = sys11_vram_load_tiles(((a5 - 1) * 15) + 850, 15, W[(((v2 * 18) + (a3 * 6)) + (a4 * 2)) + RD_8B7A], 24, 1)
  t5 = sys26_file_seek(g_fh_cbmap0, W[(a5 * 2) + RD_8B6E], 0, 72)
  t6 = sys30_file_tilemap_copy(1, a0 + 2, a1, 5, 3, g_fh_cbmap0)
  return t6

RF_2380:
  // frame 0
  t1 = RF_40A5(a2)
  t2 = RL_884E(t1 + 20)
  t3 = RF_40A5(a2)
  t4 = RL_884E(t3 + 20)
  t5 = RF_40A5(a2)
  t6 = RL_884E(t5 + 20)
  t7 = face_block_load(a0, a1, (t6 >> 5) & 7, (t4 >> 4) & 1, (t2 >> 2) & 3, a3)
  return t7

RF_23C0:
  // frame 0
  return B[(a0 * 24) + $E9BC]

RF_23CF:
  // frame 2
  if (a2) goto RL_23D9
  return a2
RL_23D9:
  a2 = a2 - 1
  v2 = (a2 * 288) + $8040
  t1 = sys11_vram_load_tiles(35, 9, v2, 24, 1)
  t2 = RF_3DF1(1, a0, a1, 3, 3, $466E, g_fh_cbmap0)
  return t2

RF_2401:
  // frame 6
  v6 = (a2 * 24) + g_cargo
  v4 = (a2 * 7) + g_ships
  t1 = RF_40A5((B[v4 + 6]) & 15)
  v2 = t1
  t2 = RF_4DD8()
  t3 = RF_2FB9(RD_8BB0, 1)
  t4 = RF_50AB(a0, a1, 0)
  t5 = RF_2380(a0 + 2, a1 + 1, (B[v4 + 6]) & 15, 0)
  t6 = RF_23CF(a0 + 10, a1 + 2, B[(a2 * 24) + $E9BD])
  t7 = RF_2F8F(a0 + 14, a1 + 2)
  t8 = RF_2FB9(RD_8BB4, 0)
  t9 = RF_40DE(v2)
  t10 = RF_2F8F(a0 + 14, a1 + 4)
  t11 = RF_23C0(a2)
  t12 = RF_3608(RD_8BBB, t11)
  t13 = RF_2F8F(a0 + 2, a1 + 6)
  t14 = RF_2FB9(RD_8BCA, 0)
  t15 = RF_40DE(W[((B[(a2 * 24) + g_cargo]) * 7) + g_player_name_ptr])
  t16 = RF_2F8F(a0 + 2, a1 + 8)
  t17 = RF_43F6(a2)
  t18 = RF_3608(RD_8BD6, B[(a2 * 7) + g_ships], t17)
  t19 = RF_2F8F(a0 + 2, a1 + 9)
  t20 = RF_44AA(a2)
  t21 = RF_3608(RD_8BF1, B[(a2 * 7) + $EB94], t20)
  t22 = RF_2F8F(a0 + 2, a1 + 10)
  t23 = RF_4439(a2)
  t24 = RF_3608(RD_8C0C, B[(a2 * 7) + $EB93], t23)
  t25 = RF_2F8F(a0 + 2, a1 + 11)
  t26 = RF_40A5((B[(a2 * 7) + $EB98]) & 15)
  t27 = RL_8898(t26 + 18)
  t28 = RF_45A5(a2)
  t29 = RF_3608(RD_8C27, t28, t27)
  t30 = RF_2F8F(a0 + 2, a1 + 12)
  t31 = RF_40A5((B[(a2 * 7) + $EB98]) & 15)
  t32 = RF_3608(RD_8C42, W[(a2 * 7) + $EB96], W[t31 + 15])
  t33 = RF_2F8F(a0 + 2, a1 + 13)
  t34 = RF_2FB9(RD_8C5D, 0)
  t35 = RL_8875(((((B[v4 + 6]) >> 4) & 3) * 2) + $1C33)
  t36 = RF_40DE(t35)
  t37 = RF_2FB9(RD_8C64, 0)
  t38 = RF_2F8F(a0 + 21, a1 + 13)
  t39 = RL_884E(v2 + 17)
  t40 = RF_3608(RD_8C67, B[v4 + 3], t39)
  t41 = RF_2F8F(a0 + 13, a1 + 18)
  t42 = RF_3608(RD_8C6F, (W[v6 + 16]) / 10, (W[v6 + 18]) / 10, W[v6 + 20])
  t43 = RF_4B2A(a0 + 11, a1 + 17, 0)
  t44 = RF_4B2A(a0 + 17, a1 + 17, 1)
  t45 = RF_4B2A(a0 + 23, a1 + 17, 2)
  t46 = RF_2F18()
  t47 = RF_2FB9(RD_8C7F, 1)
  return t47

RF_260E:
  // frame 2
  if (a2) goto RL_2618
  return a2
RL_2618:
  goto RL_263E
RL_261C:
  t1 = sys11_vram_load_tiles(87, 2, $8000, 24, 1)
  t2 = RF_3DF1(1, a0, a1, 1, 2, $46D6, g_fh_cbmap0)
  a0 = a0 + 1
RL_263E:
  v2 = L
  if (v2 < a2) goto RL_261C
  return v2 < a2

RF_2646:
  // frame 10
  if (a0) goto RL_2651
  return 0
RL_2651:
  v2 = g_ships
  v4 = g_ships + 35
  v6 = g_cargo
  v8 = 0
  goto RL_267A
RL_2661:
  if (!((B[v2 + 6]) & 64)) goto RL_2673
  if (!(B[v6] == a0)) goto RL_2673
  return 1
RL_2673:
  v6 = v6 + 24
  v2 = v2 + 7
RL_267A:
  if (v2 < v4) goto RL_2661
  return 2

RF_2682:
  // frame 6
  v2 = (a2 * 7) + g_player_name_ptr
  v4 = (a2 * 10) + $EAC0
  t1 = RF_4DD8()
  t2 = RF_2FB9(RD_8CA2, 1)
  t3 = RF_50AB(a0, a1, 0)
  t4 = RF_604A(3, a0 + 1, a1 + 9, 28, 1, $20F9)
  t5 = RF_604A(3, a0 + 1, a1 + 14, 28, 1, $20F9)
  if (a2) goto RL_26D6
  goto RL_26DA
RL_26D6:
RL_26DA:
  t6 = RF_4E29(a0 + 2, L, a2, 0)
  t7 = RF_2F8F(a0 + 8, a1 + 4)
  if (a2) goto RL_271B
  v6 = (byte)g_title
  if (!v6) goto RL_271B
  t8 = RF_260E(a0 + 8, a1 + 1, v6)
  t9 = RL_8875((v6 * 2) + $1C56)
  t10 = RF_40DE(t9)
  t11 = RF_2FB9(RD_8CA6, 0)
RL_271B:
  t12 = RF_40DE(W[v2])
  t13 = RF_2F8F(a0 + 8, a1 + 6)
  t14 = RF_2FB9(RD_8CA8, 0)
  t15 = RF_4190(a2)
  t16 = RF_40A5(t15)
  t17 = RF_40DE(t16)
  t18 = RF_2F8F(a0 + 22, a1 + 6)
  t19 = RF_3608(RD_8CAF, B[v4])
  if (a2) goto RL_2776
  t20 = RF_2F8F(a0 + 1, a1 + 8)
  t21 = RF_3608(RD_8CB8, g_fame, g_player_gold)
  goto RL_2790
RL_2776:
  t22 = RF_2F8F(a0 + 8, a1 + 8)
  t23 = RF_3608(RD_8CD0, B[((a2 - 1) * 2) + $E970])
RL_2790:
  t24 = RF_2F8F(a0 + 1, a1 + 11)
  t25 = RF_3608(RD_8CDD, W[v4 + 6], B[v2 + 2])
  t26 = RF_2F8F(a0 + 1, a1 + 13)
  t27 = RF_3608(RD_8CF8, W[v4 + 8], B[v2 + 3])
  t28 = RF_2F8F(a0 + 1, a1 + 16)
  t29 = RF_3608(RD_8D13, B[v4 + 1], B[v4 + 2])
  t30 = RF_2F8F(a0 + 1, a1 + 17)
  t31 = RF_3608(RD_8D30, B[v4 + 5], B[v4 + 4])
  t32 = RF_2F8F(a0 + 1, a1 + 18)
  t33 = RF_3608(RD_8D4D, B[v4 + 3])
  t34 = RF_2F18()
  t35 = RF_4DD8()
  t36 = RF_2FB9(RD_8D5E, 1)
  return t36

RF_281B:
  // frame 0
  t1 = sys76_lz_decompress(0, $8000, 23)
  t2 = sys11_vram_load_tiles(168, 15, 384, 127, 2)
  t3 = sys11_vram_load_tiles(160, 8, 0, 127, 1)
  t4 = RF_3DF1(2, 0, 0, 32, 30, RD_8D74, g_fh_cbmap0)
  t5 = sys5_tilemap_write(1, 3, 4, 1, 1, RD_8D6E)
  t6 = sys5_tilemap_write(1, 28, 4, 1, 1, RD_8D6A)
  t7 = sys5_tilemap_write(1, 3, 25, 1, 1, RD_8D70)
  t8 = sys5_tilemap_write(1, 28, 25, 1, 1, RD_8D6C)
  t9 = sys5_tilemap_write(1, 3, 5, 1, 20, RD_8D64)
  t10 = sys5_tilemap_write(1, 28, 5, 1, 20, RD_8D62)
  t11 = sys5_tilemap_write(1, 4, 4, 24, 1, RD_8D66)
  t12 = sys5_tilemap_write(1, 4, 25, 24, 1, RD_8D68)
  return t12

RF_28CC:
  // frame 8
  if (!(a0 >= 8)) goto RL_28D8
  return a0 >= 8
RL_28D8:
  t1 = RF_4F05()
  t2 = sys56_anim_control(0, 0)
  t3 = RF_3D7C()
  t4 = sys37_brightness_set(0)
  (byte)$F28C = 0
  t5 = RF_530E(0, 0)
  t6 = RF_281B()
  if (!(a0 == 1)) goto RL_290A
  v2 = 9
  v4 = 6
  v6 = 14
  goto RL_2911
RL_290A:
  v2 = 10
  v4 = 7
  v6 = 12
RL_2911:
  v8 = L
  t7 = sys76_lz_decompress(0, W[(a0 * 2) + RD_8D72], 23)
  if (!(a0 == 1)) goto RL_2933
  goto RL_2935
RL_2933:
RL_2935:
  t8 = sys11_vram_load_tiles(184, L, 0, 127, 2)
  t9 = RF_3DF1(2, v2, v4, v6, v8, RD_8C5C, g_fh_cbmap0)
  t10 = RF_2FB9(RD_8D82, 1)
  t11 = RF_3E7E(0, 0)
  t12 = RF_3EC3(15, 3, 0)
  t13 = RF_3EC3(3, 7, 0)
  t14 = RF_3EC3(a0 + 4, 2, 0)
  t15 = RF_4F2A(1)
  t16 = RF_2FB9(RD_8D8D, 1)
  return t16

RF_2980:
  // frame 0
  return

RF_2986:
  // frame 8
  v8 = a0 / 5
  if (!(a0 / 5)) goto RL_299C
  v4 = 240
  goto RL_29C0
RL_299C:
  v8 = B[(a0 * 24) + g_cargo]
  v2 = (v8 * 10) + $EAC0
  v4 = (((B[v2 + 2]) * 2) + (B[v2 + 1])) + (B[v2 + 3])
RL_29C0:
  v6 = B[(L * 7) + $E447]
  return (((v4 * v6) / 8) + v4) / 8

RF_29D2:
  // frame 10
  a0 = a0 * 5
  v8 = (a0 * 7) + g_ships
  v10 = ((a0 * 7) + g_ships) + 35
  v2 = 200
  v4 = 0
  goto RL_2A2A
RL_29F0:
  if (!((B[v8 + 6]) & 64)) goto RL_2A24
  v4 = v4 + 1
  t1 = RF_2986(a0)
  t2 = RL_8962(((((B[v8 + 1]) / 2) * t1) / 100) + ((B[v8 + 1]) / 2), 100)
  v6 = t2
  if (!(v2 > v6)) goto RL_2A24
  v2 = v6
RL_2A24:
  a0 = a0 + 1
  v8 = v8 + 7
RL_2A2A:
  if (v8 < v10) goto RL_29F0
  if (v4) goto RL_2A36
  return 0
RL_2A36:
  return v2

RF_2A38:
  // frame 12
  a0 = a0 * 5
  v10 = (a0 * 7) + g_ships
  v12 = ((a0 * 7) + g_ships) + 35
  v2 = 200
  v4 = 0
  goto RL_2A90
RL_2A56:
  if (!((B[v10 + 6]) & 64)) goto RL_2A8A
  v4 = v4 + 1
  t1 = RF_2986(a0)
  t2 = RL_8962(((((B[v10 + 2]) / 2) * t1) / 100) + ((B[v10 + 2]) / 2), 100)
  v8 = t2
  if (!(v2 > v8)) goto RL_2A8A
  v2 = v8
RL_2A8A:
  a0 = a0 + 1
  v10 = v10 + 7
RL_2A90:
  if (v10 < v12) goto RL_2A56
  if (v4) goto RL_2A9C
  return 0
RL_2A9C:
  return v2

RF_2A9E:
  // frame 2
  v2 = (a0 << 4) + g_fleets
  t1 = RF_29D2(a0)
  t2 = RL_84D0((byte)$EF82, B[v2 + 8])
  return ((((byte)$EF83 * 400) - (((((t2 + 1) >> 1) * 2) * t1) * (byte)$EF83)) / 450) * ((B[v2 + 15]) & 1)

RF_2AE0:
  // frame 8
  v2 = (a0 << 4) + g_fleets
  t1 = RL_84D0((byte)$EF82, B[v2 + 8])
  v6 = t1
  t2 = RF_2A38(a0)
  v4 = ((t2 * (byte)$EF83) / 26) * ((B[(a0 << 4) + $E573]) & 1)
  if (!(v6 > 2)) goto RL_2B24
  goto RL_2B25
RL_2B24:
RL_2B25:
  v8 = L + 1
  t3 = RL_892B(-(v6 - 2))
  t4 = RF_2A9E(a0)
  v4 = v4 + ((t4 / v8) * t3)
  t5 = RL_84D0(((byte)(g_zone_attr+2) >> 6) & 7, B[v2 + 8])
  v6 = t5
  if (!(v6 > 2)) goto RL_2B5D
  goto RL_2B5E
RL_2B5D:
RL_2B5E:
  v8 = L + 1
  t6 = RL_892B(-(v6 - 2))
  v4 = v4 + ((((((byte)(g_zone_attr+2) >> 3) & 3) * ((B[(a0 << 4) + $E573]) & 1)) / v8) * t6)
  if (!(v4 < 0)) goto RL_2B90
  goto RL_2B91
RL_2B90:
RL_2B91:
  v4 = L
  return v4

RF_2B94:
  // frame 0
  t1 = RF_3619(RD_8DFA, W[(a1 * 2) + RD_8DB2], a2 + 1, a0 + $05DC)
  return t1

RF_2BB1:
  // frame 0
RL_2BB6:
  t1 = RF_223A()
  if (t1) goto RL_2BB6
  t2 = RF_4F48(2)
  t3 = RF_3654(30)
  t4 = RF_3D7C()
  t5 = sys56_anim_control(0, 0)
  t6 = RF_3EC3(21, 1, 0)
  t7 = sys13_vram_load_obj_tiles(1, 74, $E820, 30)
  t8 = sys11_vram_load_tiles(144, 170, $D300, 30, 2)
  t9 = sys3_palette_dma(RD_8D92, 126, 128, 32)
  t10 = RF_3E5A(0, 88, 55, 12, 7, $61DC, g_fh_cbmap0)
  t11 = RF_4F2A(2)
  t12 = RF_3654(30)
  t13 = RF_3DF1(2, 5, 14, 22, 3, $6036, g_fh_cbmap0)
RL_2C33:
  goto RL_2C33

RF_2C36:
  // frame 8
  t1 = sys23_memcpy_long(112, $1062, 126, &v1, 1)
  if (!((byte)v1 == 75)) goto RL_2CA4
  t2 = sys23_memcpy_long(112, $0B8D, 126, &v2, 1)
  t3 = sys23_memcpy_long(112, $0B8C, 126, &v3, 1)
  t4 = sys23_memcpy_long(112, $0B8B, 126, &v4, 1)
  t5 = RF_2FB9(RD_8E06, 1)
  t6 = RF_2B94((byte)v2, (byte)v3, (byte)v4)
RL_2CA4:
  t7 = RF_2FB9(RD_8E18, 1)
  t8 = RF_3CFF()
  if (!t8) goto RL_2CEC
  (byte)$EF62 = 75
  v8 = ($EF62 - g_captains) + 1
  t9 = sys23_memcpy_long(126, g_captains, 112, 5, v8)
  (byte)$EF62 = 0
  if ((byte)$EF6A) goto RL_2CE1
  t10 = RF_5C3E()
  goto RL_2CE4
RL_2CE1:
  t11 = RF_60B2()
RL_2CE4:
  t12 = RF_2FB9(RD_8E22, 1)
RL_2CEC:
  if ((byte)$EF6A) goto RL_2CF8
  t13 = RF_5C3E()
  goto RL_2CFB
RL_2CF8:
  t14 = RF_60B2()
RL_2CFB:
  t15 = RF_2FB9(RD_8E32, 1)
  t16 = RF_3CFF()
  if (!t16) goto RL_2D37
  t17 = RF_2FB9(RD_8E3C, 1)
  t18 = RF_3CFF()
  if (!t18) goto RL_2D37
  if (!(byte)$EF6A) goto RL_2D31
  t19 = sys48_color_math(0, 0, 224)
  t20 = sys39_window_off()
  t21 = RF_4D8B()
RL_2D31:
  t22 = RF_2281()
  t23 = RF_2BB1()
RL_2D37:
  return 0

RF_2D39:
  // frame 2
  t1 = RF_3619(RD_8E4A, (byte)$EA8A)
  t2 = RF_3C4E(RD_8E6A, 1, 10, 1)
  v2 = t2
  if (!(v2 != (-1))) goto RL_2D5F
  (byte)$EA8A = v2
RL_2D5F:
  return 0

RF_2D61:
  // frame 2
  if ((byte)$EF6A) goto RL_2D79
  t1 = RF_59A3((byte)$F274)
  goto RL_2D9C
RL_2D79:
  v2 = (byte)(g_fleets+1)
  if ((byte)g_port) goto RL_2D88
  goto RL_2D9C
RL_2D88:
  if (!(v2 > 11)) goto RL_2D9A
  if (!(v2 < 31)) goto RL_2D9A
  goto RL_2D9C
RL_2D9A:
RL_2D9C:
  t2 = RF_21EA(8, 1)
  return t2

RF_2DA1:
  // frame 4
  v2 = (byte)$EA89 & 4
  if (!v2) goto RL_2DB6
  goto RL_2DB9
RL_2DB6:
RL_2DB9:
  t1 = RF_3619(RD_8E6B, L)
  if (!v2) goto RL_2DCC
  goto RL_2DCF
RL_2DCC:
RL_2DCF:
  t2 = RF_2FB9(L, 1)
  t3 = RF_3CFF()
  v4 = t3
  if (!v4) goto RL_2E11
  if (v2) goto RL_2DF8
  (byte)$EA89 = (byte)$EA89 | 4
  (byte)$EA89 = (byte)$EA89 | 8
  t4 = RF_2D61()
  goto RL_2E11
RL_2DF8:
  t5 = RF_2281()
  (byte)$EA89 = (byte)$EA89 & 251
  (byte)$EA89 = (byte)$EA89 & 247
RL_2E11:
  return 0

RF_2E13:
  // frame 12
  if ((byte)$EF6A) goto RL_2E31
  v8 = 0
  if (!((byte)$F28C == 1)) goto RL_2E2C
  goto RL_2E35
RL_2E2C:
  goto RL_2E35
RL_2E31:
  v8 = 23
RL_2E35:
  v10 = L
  t1 = RF_4D41(v8, v10, 8, 8)
  t2 = sys5_tilemap_write(1, v8, v10, 8, 8, 0)
  if ((byte)$EF6A) goto RL_2E61
  t3 = RF_3DF1(1, v8, v10, 8, 8, $5F46, g_fh_cbmap0)
  goto RL_2E6B
RL_2E61:
  t4 = RF_4F65(v8, v10, 8, 8, 0, 0)
RL_2E6B:
  v4 = v8 + 2
  v6 = v10 + 1
  v2 = 0
RL_2E73:
  t5 = RF_2F8F(v4, v6)
  t6 = RF_2FB9(W[(v2 * 2) + RD_8E8C], 1)
  v6 = v6 + 2
  v2 = v2 + 1
  if (v2 < 3) goto RL_2E73
  v12 = 0
  if ((byte)$EF6A) goto RL_2EA2
  t7 = RF_5C91()
  goto RL_2EA5
RL_2EA2:
  t8 = RF_60EE()
RL_2EA5:
  t9 = RF_2FB9(RD_8EA9, 1)
  t10 = RF_3787(RD_8EBF, 3, v8 + 1, v10 + 2, 0, 2, 3, 1)
  v2 = t10
  if (!(v2 == (-1))) goto RL_2ECC
  v12 = 1
  goto RL_2EF4
RL_2ECC:
  if ((byte)$EF6A) goto RL_2ED8
  t11 = RF_5C3E()
  goto RL_2EDB
RL_2ED8:
  t12 = RF_60B2()
RL_2EDB:
  t13 = (*(W[((v2 - 1) * 2) + RD_8E92]))()
  v12 = t13
  if ((byte)$EF6A) goto RL_2EF1
  t14 = RF_5C3E()
  goto RL_2EF4
RL_2EF1:
  t15 = RF_60B2()
RL_2EF4:
  if (!v12) goto RL_2EA5
  t16 = sys48_color_math(0, 0, 224)
  t17 = sys39_window_off()
  t18 = RF_4D8B()
  t19 = sys56_anim_control(3, 255)
  return 0

RF_2F18:
  // frame 0
  t1 = sys16_wait_frames(1)
RL_2F24:
  t2 = sys15_pad_read(0)
  if (t2) goto RL_2F24
  t3 = sys15_pad_read(1)
  if (t3) goto RL_2F24
RL_2F36:
  t4 = sys15_pad_read(0)
  if (t4) goto RL_2F48
  t5 = sys15_pad_read(1)
  if (!t5) goto RL_2F36
RL_2F48:
  return

RF_2F49:
  // frame 0
  if (!($F188 < 0)) goto RL_2F5A
  goto RL_2F6B
RL_2F5A:
  if (!($F188 > 31)) goto RL_2F68
  goto RL_2F6B
RL_2F68:
RL_2F6B:
  $F188 = L
  if (!($F18A < 0)) goto RL_2F7A
  goto RL_2F8B
RL_2F7A:
  if (!($F18A > 29)) goto RL_2F88
  goto RL_2F8B
RL_2F88:
RL_2F8B:
  $F18A = L
  return

RF_2F8F:
  // frame 0
  if (!(a0 >= 0)) goto RL_2F9E
  $F188 = a0
RL_2F9E:
  if (!(a1 >= 0)) goto RL_2FA8
  $F18A = a1
RL_2FA8:
  t1 = RF_2F49()
  return t1

RF_2FAC:
  // frame 0
  $F18A = a0
  t1 = RF_2F49()
  return t1

RF_2FB9:
  // frame 152
  if ($F188 >= 31) goto RL_2FCF
  if (!($F188 < 0)) goto RL_2FD5
RL_2FCF:
  $F188 = $F18E
RL_2FD5:
  if ($F18A >= 29) goto RL_2FE6
  if (!($F18A < 0)) goto RL_2FEA
RL_2FE6:
  $F18A = 0
RL_2FEA:
  v136 = 0
  v140 = 0
  v138 = $F188
  v148 = 0
  v130 = &v128
  v132 = &v64
  v146 = (byte)$F190 & 7
  goto RL_3336
RL_3013:
  v152 = (v146 << 10) + $2000
  (byte)v134 = B[a0 + 1]
  if (!((byte)v133 >= 32)) goto RL_30B5
  if (!((byte)v133 <= 127)) goto RL_30B5
  v132 = v132 + 2
RL_3049:
  W[(v132 + 2) - 2] = L
  v130 = v130 + 2
RL_3055:
  W[(v130 + 2) - 2] = L
RL_3056:
  $F188 = $F188 + 1
  v140 = v140 + 1
RL_3064:
  if (v148) goto RL_307D
  if ($F188 > $F18E) goto RL_307D
  if (!(v140 > 32)) goto RL_3333
RL_307D:
  if (!v140) goto RL_3314
  if ($F288) goto RL_32A9
  if (!a1) goto RL_32A0
  t1 = RL_88F4(&v64, v130, v140 * 2)
RL_30A3:
  t2 = sys6_tilemap_copy(3, v138, $F18A, v140, 2, &v128, 0)
  goto RL_3304
RL_30B5:
  if (!((byte)v133 >= 160)) goto RL_3108
  if (!((byte)v133 <= 221)) goto RL_3108
  if (!v136) goto RL_30D7
  goto RL_30DA
RL_30D7:
RL_30DA:
  (byte)v133 = L
  if ((byte)v134 == 222) goto RL_3056
  if ((byte)v134 == 223) goto RL_3056
  v132 = v132 + 2
  goto RL_3049

RF_33DB:
  // frame 4
  v2 = 0
  goto RL_33F0
RL_33E5:
  v2 = (v2 * 10) + v4
  W[a0] = W[a0] + 1
RL_33F0:
  v4 = B[W[a0]] - 48
  if ((B[W[a0]] - 48) < 10) goto RL_33E5
  return v2

RF_33FD:
  // frame 2
  if (!(a1 < 10)) goto RL_3429
  W[a0] = W[a0] + 1
  B[(W[a0] + 1) - 1] = a1 + 48
  return 1
RL_3429:
  t1 = RF_33FD(a0, a1 / 10, pop())
  v2 = t1
  t2 = RF_33FD(a0, a1 % 10, pop())
  return v2 + 1

RF_3453:
  // frame 179
  v29 = &v179
  v3 = a0
  goto RL_346E
RL_3463:
  v29 = v29 + 1
  B[(v29 + 1) - 1] = (byte)v1
RL_346E:
  v3 = v3 + 1
  (byte)v1 = B[(v3 + 1) - 1]
  if (!(B[(v3 + 1) - 1])) goto RL_35FA
  if (!((byte)v1 == 37)) goto RL_3463
  v15 = &v13
  v25 = 6
  v21 = 0
  v17 = 0
  v19 = 0
  (byte)v1 = B[v3]
  if (!((byte)v1 == 45)) goto RL_34AE
  v21 = 1
  v3 = v3 + 1
  (byte)v1 = B[v3 + 1]
RL_34AE:
  if (!((byte)v1 >= 48)) goto RL_34CB
  if (!((byte)v1 <= 57)) goto RL_34CB
  t1 = RF_33DB(&v3)
  goto RL_34CC
RL_34CB:
RL_34CC:
  v23 = L
  v3 = v3 + 1
  (byte)v1 = B[(v3 + 1) - 1]
  if (!((B[(v3 + 1) - 1]) == 46)) goto RL_34F5
  t2 = RF_33DB(&v3)
  v25 = t2
  v17 = 1
  v3 = v3 + 1
  (byte)v1 = B[(v3 + 1) - 1]
RL_34F5:
  t3 = RF_36C5((byte)v1)
  if (!(t3 == 76)) goto RL_3510
  v19 = 1
  v3 = v3 + 1
  (byte)v1 = B[(v3 + 1) - 1]
RL_3510:
  t4 = RF_36C5((byte)v1)
  switch (t4) {5 cases}

RF_3608:
  // frame 2
  v2 = &a1
  t1 = RF_3453(a0, v2, 0)
  return t1

RF_3619:
  // frame 2
  v2 = &a1
  t1 = RF_3453(a0, v2, 1)
  return t1

RF_362A:
  // frame 2
  if (!a0) goto RL_363E
  t1 = sys15_pad_read((a0 - 1) % 2)
  return t1
RL_363E:
  t2 = sys15_pad_read(0)
  v2 = t2
  if (!v2) goto RL_364D
  goto RL_3653
RL_364D:
  t3 = sys15_pad_read(1)
RL_3653:
  return

RF_3654:
  // frame 0
  goto RL_3663
RL_365C:
  t1 = sys16_wait_frames(1)
RL_3663:
  a0 = a0 - 1
  if ((a0 - 1) + 1) goto RL_365C
  return (a0 - 1) + 1

RF_366B:
  // frame 6
RL_3671:
  v2 = L
  if (B[v2] == 32) goto RL_369A
  if (B[v2] == 9) goto RL_369A
RL_3687:
  v6 = L
  if (48 <= B[v2]) goto RL_369F
RL_3695:
  return v6
RL_369A:
  goto RL_3671
RL_369F:
  if (!(B[v2] <= 57)) goto RL_3695
  v2 = v2 + 1
  goto RL_3687

RF_36C5:
  // frame 0
  if (!(97 <= (byte)a0)) goto RL_36E6
  if (!((byte)a0 <= 122)) goto RL_36E6
  goto RL_36E9
RL_36E6:
RL_36E9:
  return

RF_36EA:
  // frame 0
  if (!(65 <= (byte)a0)) goto RL_370B
  if (!((byte)a0 <= 90)) goto RL_370B
  goto RL_370E
RL_370B:
RL_370E:
  return

RF_370F:
  // frame 0
  t1 = sys15_pad_read(0)
  if (!t1) goto RL_3721
RL_371D:
  goto RL_372B
RL_3721:
  t2 = sys15_pad_read(1)
  if (t2) goto RL_371D
RL_372B:
  return

RF_372C:
  // frame 0
  t1 = RF_362A(0)
  return t1

RF_3737:
  // frame 0
  goto RL_3751
RL_373F:
  t1 = RF_370F()
  if (!t1) goto RL_3747
  return 1
RL_3747:
  t2 = sys16_wait_frames(1)
  a0 = a0 - 1
RL_3751:
  if (a0 > 0) goto RL_373F
  return 0

RF_3759:
  // frame 0
RL_375E:
  if (!$F275) goto RL_3768
  t1 = (*$F275)()
RL_3768:
  t2 = RF_3737(20)
  if (!$F275) goto RL_3778
  t3 = (*$F275)()
RL_3778:
  t4 = RF_3737(20)
  if (!t4) goto RL_375E
  t5 = RF_362A(0)
  return t5

RF_3787:
  // frame 14
  v4 = a2
  v6 = a3
  v8 = 1
  v10 = 0
  v12 = a1 / a6
  v14 = a1 - (v12 * a6)
  t1 = RF_2FB9(a0, 1)
RL_37A8:
  t2 = RF_3E5A(0, (v4 << 3) - 1, ((W[((byte)$F28C * 2) + RD_8EC0]) + (v6 << 3)) - 4, 1, 2, $26CC, g_fh_fdata)
  if (!a5) goto RL_37D6
  goto RL_37D7
RL_37D6:
RL_37D7:
  if (!a4) goto RL_37E8
  goto RL_37E9
RL_37E8:
RL_37E9:
  v2 = ((((v4 - a2) / L) * a6) + ((v6 - a3) / L)) + 1
  t3 = RF_3D91(v10, 12)
  t4 = RF_362A(0)
  v10 = t4
  switch (t4) {7 cases}

RF_3935:
  // frame 50
  v22 = a1
  goto RL_3948
RL_3945:
RL_3948:
  v32 = L
  v22 = v22 / 10
  if ((v22 / 10 != 0)) goto RL_3945
  v30 = 0
  v22 = a1
  goto RL_39A8
RL_396E:
  B[(v32 - v30) + (&v13)] = (v22 % 10) + 48
  v22 = v22 / 10
  v30 = v30 + 1
RL_39A8:
  if (v30 < v32) goto RL_396E
  v22 = a0
  goto RL_39BE
RL_39BB:
RL_39BE:
  v34 = L
  v22 = v22 / 10
  if ((v22 / 10 != 0)) goto RL_39BB
  v30 = 0
  v22 = a0
  goto RL_3A38
RL_39E4:
  if (!(v30 < v34)) goto RL_3A24
  B[(v32 - v30) + (&v19)] = (v22 % 10) + 48
  v22 = v22 / 10
  goto RL_3A33
RL_3A24:
  B[(v32 - v30) + (&v19)] = 48
RL_3A33:
  v30 = v30 + 1
RL_3A38:
  if (v30 < v32) goto RL_39E4
  t1 = RL_88F4(&v18, &v6, v32)
  B[v32 + (&v6)] = 0
  v36 = $F188 << 3
  v38 = ($F18A << 3) - 1
  v26 = 0
  v46 = 0
  v44 = 0
  v48 = 0
  v42 = 0
  v28 = 0
  v40 = $F188
RL_3A82:
  v50 = 1
  goto RL_3C32
RL_3A88:
  $F188 = v40
  t2 = RF_2FB9(&v6, 1)
  t3 = sys19_sprite_commit(4, (v28 << 3) + v36, (W[((byte)$F28C * 2) + RD_8EC0]) + v38, $30E4, 0)
  t4 = sys16_wait_frames(3)
  if (!(v44 == 1)) goto RL_3AEA
  if (v46) goto RL_3AEA
  v30 = 10
RL_3ACC:
  t5 = RF_362A(0)
  if (t5 != v42) goto RL_3AEA
  t6 = sys16_wait_frames(1)
  v30 = v30 - 1
  if (v30 > 0) goto RL_3ACC
RL_3AEA:
  if (!(v44 == 1)) goto RL_3AF4
  v46 = 1
RL_3AF4:
  t7 = RF_362A(0)
  v42 = t7
  switch (t7) {6 cases}

RF_3C4E:
  // frame 0
  t1 = RF_2FB9(a0, 1)
  t2 = RF_3619(RD_8EC6, a1, a2)
  t3 = RF_3935(a1, a2, (byte)a3)
  return t3

RF_3C6D:
  // frame 0
  t1 = RF_3C4E(a0, a1, a2, 1)
  return t1

RF_3C7B:
  // frame 0
  t1 = RF_3C4E(a0, 1, a1, 1)
  return t1

RF_3C89:
  // frame 0
  t1 = sys5_tilemap_write(3, $F188, a0 / 8, 1, 1, $2000)
  t2 = sys19_sprite_commit(6, $F188 << 3, (W[((byte)$F28C * 2) + RD_8EC0]) + a0, $30E6, 0)
  return t2

RF_3CBE:
  // frame 0
RL_3CC3:
  t1 = RF_3C89(($F18A << 3) + 8)
  if (!$F275) goto RL_3CD8
  t2 = (*$F275)()
RL_3CD8:
  t3 = RF_3737(20)
  t4 = sys58_sprites_hide(0, 9)
  if (!$F275) goto RL_3CF0
  t5 = (*$F275)()
RL_3CF0:
  t6 = RF_3737(20)
  if (!t6) goto RL_3CC3
  t7 = RF_362A(0)
  return t7

RF_3CFF:
  // frame 2
  t1 = RF_2FB9(RD_8ECF, 1)
RL_3D0C:
  t2 = RF_362A(0)
  if (t2) goto RL_3D0C
RL_3D14:
  t3 = RF_3CBE()
  v2 = t3
  if (v2 == 128) goto RL_3D28
  if (!(v2 == 512)) goto RL_3D3A
RL_3D28:
  t4 = RF_2FB9(RD_8ED6, 1)
RL_3D30:
  t5 = RF_362A(0)
  if (t5) goto RL_3D30
  return 1
RL_3D3A:
  if (v2 == $8000) goto RL_3D4A
  if (!(v2 == 256)) goto RL_3D14
RL_3D4A:
  t6 = RF_2FB9(RD_8ED8, 1)
RL_3D52:
  t7 = RF_362A(0)
  if (t7) goto RL_3D52
  return 0

RF_3D5C:
  // frame 0
  t1 = sys8_oam_hide_all()
  if (!(a0 == 3)) goto RL_3D72
  goto RL_3D73
RL_3D72:
RL_3D73:
  t2 = sys4_tilemap_clear(a0, 0, L)
  return t2

RF_3D7C:
  // frame 0
  t1 = RF_3D5C(1)
  t2 = RF_3D5C(2)
  t3 = RF_3D5C(3)
  return t3

RF_3D91:
  // frame 0
  goto RL_3DAA
RL_3D99:
  t1 = RF_362A(0)
  if (t1 != a0) goto RL_3DB1
  t2 = sys16_wait_frames(1)
RL_3DAA:
  a1 = a1 - 1
  if ((a1 - 1) + 1) goto RL_3D99
RL_3DB1:
  return

RF_3DB2:
  // frame 0
  goto RL_3DC9
RL_3DBA:
  t1 = RF_362A(0)
  if (t1) goto RL_3DD0
  t2 = sys16_wait_frames(1)
RL_3DC9:
  a0 = a0 - 1
  if ((a0 - 1) + 1) goto RL_3DBA
RL_3DD0:
  return

RF_3DD1:
  // frame 0
  t1 = RF_3DB2(a0 * 6)
  return t1

RF_3DDF:
  // frame 0
  t1 = RF_3DD1(((byte)$EA8A * a0) * 3)
  return t1

RF_3DF1:
  // frame 6
  v2 = (a4 << 5) + a3
  t1 = sys7_tilemap_read(a0, a1, a2, v2, 1, 0, 127)
  t2 = sys26_file_seek(a6, a5, 0, pop())
  v4 = 0
  goto RL_3E44
RL_3E1F:
  t3 = sys28_file_read(a6, 127, v4, a3 * 2)
  v4 = v4 + 64
  t4 = sys26_file_seek(a6, a3 * 2, 1, pop())
RL_3E44:
  v6 = L
  if (v6 < a4) goto RL_3E1F
  t5 = sys6_tilemap_copy(a0, a1, a2, v2, 1, 0, 127)
  return t5

RF_3E5A:
  // frame 0
  t1 = sys26_file_seek(a6, a5, 0, pop())
  t2 = sys31_file_metasprite_set(a0, a1, a2, a3, a4, 0, a6)
  return t2

RF_3E7E:
  // frame 0
  t1 = sys26_file_seek(g_fh_fdata, ((byte)a0 << 8) + $1CF0, 0, pop())
  if (!(byte)a1) goto RL_3EA9
  goto RL_3EAA
RL_3EA9:
RL_3EAA:
  t2 = sys29_file_palette_dma(g_fh_fdata, L, 256)
  if (!(byte)a1) goto RL_3EC2
  t3 = RF_3EC3(22, 0, 1)
RL_3EC2:
  return

RF_3EC3:
  // frame 0
  t1 = sys26_file_seek(g_fh_fdata, ((byte)a0 << 5) + $1FF0, 0, pop())
  if (!(byte)a2) goto RL_3EED
  goto RL_3EEE
RL_3EED:
RL_3EEE:
  t2 = sys29_file_palette_dma(g_fh_fdata, ((byte)a1 << 4) + L, 32)
  return t2

rng:
  // frame 0
  D[$F278] = (D[$F278] * 1103515245) + 12345
  return long$20(D[$F278]) & $7FFF

RF_3F31:
  // frame 0
  D[$F278] = a0
  return a0

rand:
  // frame 0
  if (a0) goto RL_3F49
  return 0
RL_3F49:
  t1 = rng()
  return t1 % a0

map_rom_read:
  // frame 4
  if (!(D[a0] < 32768)) goto RL_3F66
  goto RL_3F7D
RL_3F66:
  if (!(D[a0] < 65536)) goto RL_3F7C
  v2 = 1
  goto RL_3F84
RL_3F7C:
RL_3F7D:
  v2 = L
RL_3F84:
  v4 = L
  v2 = v2 + 10
  D[a0] = D[a0] + a2
  goto RL_3FC3
RL_3F9C:
  a1 = a1 + 1
  t1 = sys23_memcpy_long(v2, v4, 126, (a1 + 1) - 1, 1)
  if (!(v4 == (-1))) goto RL_3FBD
  v4 = $8000
  v2 = v2 + 1
  goto RL_3FC0
RL_3FBD:
  v4 = v4 + 1
RL_3FC0:
  a2 = a2 - 1
RL_3FC3:
  if (a2) goto RL_3F9C
  return a2

RF_3FC8:
  // frame 0
  t1 = sys26_file_seek(a0, a1, 0, pop())
  t2 = sys28_file_read(a0, a2, a3, a4)
  return t2

RF_3FE6:
  // frame 0
  t1 = RF_2F8F(25, 4)
  t2 = RF_3608(RD_8F3D, a0, W[(a1 * 2) + RD_8EDA], a1)
  return t2

RF_4004:
  // frame 2
  t1 = RF_2F8F(25, 2)
  t2 = RF_3C6D(RD_8F46, 0, 10)
  v2 = t2
  t3 = RF_3FE6(RD_8F52, v2)
  switch (v2) [0, 11, RL_4046]

RF_4079:
  // frame 0
  (byte)$F16A = a1
  switch (a0) {3 cases}

RF_40A5:
  // frame 0
  if (!(a0 < 5)) goto RL_40BA
  goto RL_40C1
RL_40BA:
RL_40C1:
  return L + R

RF_40C3:
  // frame 0
  if (!(a0 != 31)) goto RL_40DA
  goto RL_40DD
RL_40DA:
RL_40DD:
  return

RF_40DE:
  // frame 15
  if (!(a0 > $2CD9)) goto RL_40F0
  goto RL_4114
RL_40F0:
  t1 = sys26_file_seek(g_fh_fdata, a0, 0, a0)
  t2 = sys28_file_read(g_fh_fdata, 126, &v15, 15)
RL_4114:
  t3 = RF_2FB9(&v15, 0)
  return t3

RF_4119:
  // frame 6
  a0 = a0 * 5
  v4 = (a0 * 7) + g_ships
  v6 = ((a0 * 7) + g_ships) + 35
  v2 = 0
  goto RL_4146
RL_4133:
  if (!((B[v4 + 6]) & 64)) goto RL_4143
  v2 = v2 + (W[v4 + 4])
RL_4143:
  v4 = v4 + 7
RL_4146:
  if (v4 < v6) goto RL_4133
  return v2

RF_414E:
  // frame 10
  if (!a0) goto RL_415A
  return 50
RL_415A:
  v6 = g_ships
  v8 = g_ships + 35
  v10 = g_cargo
  v2 = 0
  v4 = 0
  goto RL_4186
RL_416B:
  if (!((B[v6 + 6]) & 64)) goto RL_417F
  v2 = v2 + (B[v10 + 22])
  v4 = v4 + 1
RL_417F:
  v10 = v10 + 24
  v6 = v6 + 7
RL_4186:
  if (v6 < v8) goto RL_416B
  return v2 / v4

RF_4190:
  // frame 8
  v2 = g_ships
  v4 = g_ships + 35
  v6 = g_cargo
  v8 = 0
  goto RL_41C1
RL_41A5:
  if (!((B[v2 + 6]) & 64)) goto RL_41B7
  if (!(B[v6] == a0)) goto RL_41B7
  return v8
RL_41B7:
  v8 = v8 + 1
  v6 = v6 + 24
  v2 = v2 + 7
RL_41C1:
  if (v2 < v4) goto RL_41A5
  t1 = RF_4190(0)
  return t1

item_best_power:
  // frame 14
  v12 = $1824
  v14 = $1824 + 64
  v2 = g_player_items
  v6 = 0
  v4 = 0
  goto RL_4219
RL_41E4:
  if (!((W[((v4 >> 4) * 2) + v2]) & (1 << (v4 & 15)))) goto RL_4213
  t1 = RL_884E(v12 + 1)
  v10 = t1
  if (!(v6 < t1)) goto RL_4213
  t2 = RL_884E(v12)
  if (!(t2 == a0)) goto RL_4213
  v6 = v10
RL_4213:
  v4 = v4 + 1
  v12 = v12 + 2
RL_4219:
  if (v12 < v14) goto RL_41E4
  return v6

RF_4221:
  // frame 6
  v2 = $E99C
  v6 = 0
  v4 = 0
  goto RL_4240
RL_4230:
  B[a0] = B[v2]
  v4 = v4 + 1
  v2 = v2 + 1
  v6 = v6 + 1
  a0 = a0 + 1
RL_4240:
  if (!(v6 < 10)) goto RL_424F
  if (B[v2] != 255) goto RL_4230
RL_424F:
  return v4

RF_4251:
  // frame 10
  t1 = RF_4221(a0)
  v8 = t1
  if (v8) goto RL_4262
  return 0
RL_4262:
  t2 = RF_4190(0)
  v10 = t2
  v6 = 0
  v2 = a0
  v4 = a0 + v8
  goto RL_428B
RL_4272:
  t3 = RF_4190(B[a0])
  if (!(t3 == v10)) goto RL_4288
  B[v2] = B[a0]
  v2 = v2 + 1
  v6 = v6 + 1
RL_4288:
  a0 = a0 + 1
RL_428B:
  if (a0 < v4) goto RL_4272
  return v6

RF_4293:
  // frame 10
  t1 = RF_4221(a0)
  v10 = t1
  if (v10) goto RL_42A4
  return 0
RL_42A4:
  t2 = RF_4190(0)
  v8 = t2
  v6 = 0
  v2 = a0
  v4 = a0 + v10
  goto RL_42CD
RL_42B4:
  t3 = RF_4190(B[a0])
  if (!(t3 != v8)) goto RL_42CA
  B[v2] = B[a0]
  v2 = v2 + 1
  v6 = v6 + 1
RL_42CA:
  a0 = a0 + 1
RL_42CD:
  if (a0 < v4) goto RL_42B4
  return v6

RF_42D5:
  // frame 8
  v2 = g_ships
  v4 = g_ships + 35
  v6 = g_cargo
  v8 = 0
  goto RL_4304
RL_42EA:
  if (!((B[v2 + 6]) & 64)) goto RL_42FD
  B[a0] = B[v6]
  a0 = a0 + 1
  v8 = v8 + 1
RL_42FD:
  v6 = v6 + 24
  v2 = v2 + 7
RL_4304:
  if (v2 < v4) goto RL_42EA
  return v8

RF_430C:
  // frame 22
  t1 = RF_4251(&v10)
  v20 = t1
  if (v20) goto RL_4322
  return 255
RL_4322:
  v16 = 0
  v12 = &v10
  v14 = (&v10) + v20
  goto RL_434B
RL_432E:
  v22 = (B[v12] * 7) + g_player_name_ptr
  if (!(v16 < (B[v22 + 3]))) goto RL_4348
  v16 = B[v22 + 3]
  v18 = B[v12]
RL_4348:
  v12 = v12 + 1
RL_434B:
  if (v12 < v14) goto RL_432E
  return v18

port_owner_update:
  // frame 6
  v2 = (a0 * 14) + $E6BC
  if (!(((B[v2 + a1]) + a2) > 100)) goto RL_4376
  a2 = 100 - (B[v2 + a1])
RL_4376:
  B[v2 + a1] = (B[v2 + a1]) + a2
  v6 = (B[v2] + (B[v2 + 1])) + (B[v2 + 2])
  if (!(v6 > 100)) goto RL_43C4
  a2 = v6 - 100
RL_439A:
  v4 = 0
RL_439C:
  if (!(v4 != a1)) goto RL_43B7
  if (!(B[v2 + v4])) goto RL_43B7
  if (!a2) goto RL_43B7
  B[v2 + v4] = (B[v2 + v4]) - 1
  a2 = a2 - 1
RL_43B7:
  v4 = v4 + 1
  if (v4 < 3) goto RL_439C
  if (a2) goto RL_439A
RL_43C4:
  B[a0 + g_port_flags] = (B[a0 + g_port_flags]) & 252
  v4 = 0
RL_43D3:
  if (!(79 < (B[v2 + v4]))) goto RL_43EC
  B[a0 + g_port_flags] = (B[a0 + g_port_flags]) | (v4 + 1)
RL_43EC:
  v4 = v4 + 1
  if (v4 < 3) goto RL_43D3
  return v4 < 3

RF_43F6:
  // frame 4
  t1 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t2 = RL_884E(t1 + 20)
  v2 = ((t2 >> 5) & 7) * 10
  t3 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t4 = RL_884E(t3 + 20)
  v4 = (t4 & 3) * 10
  return (v2 + v4) + 20

RF_4439:
  // frame 6
  t1 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t2 = RL_884E(t1 + 20)
  v2 = (t2 >> 5) & 7
  t3 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t4 = RL_884E(t3 + 20)
  v4 = (t4 >> 2) & 3
  t5 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t6 = RL_884E(t5 + 20)
  v6 = (t6 >> 4) & 1
  return ((((((20 - v2) * 100) / 20) * (10 - v4)) / 10) * (4 - v6)) / 4

RF_44AA:
  // frame 8
  t1 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t2 = RL_884E(t1 + 20)
  v4 = (t2 >> 5) & 7
  t3 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t4 = RL_884E(t3 + 20)
  v6 = (t4 >> 2) & 3
  t5 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t6 = RL_884E(t5 + 20)
  v8 = (t6 >> 4) & 1
  v2 = (((((v6 * 10) + 100) * (10 - v4)) / 10) * (v8 + 3)) / 4
  if (!(v2 > 100)) goto RL_4521
  goto RL_4522
RL_4521:
RL_4522:
  return

RF_4523:
  // frame 4
  t1 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t2 = RL_884E(t1 + 20)
  v4 = (t2 >> 5) & 7
  v2 = (((((v4 % 2) * v4) * 50) + (((v4 + 2) / 2) * 300)) + ((v4 / 5) * 50)) + $FF38
  return v2

RF_4565:
  // frame 8
  v8 = (a0 * 24) + g_cargo
  v4 = v8 + 6
  v6 = (v8 + 6) + 10
  v2 = 0
  goto RL_4586
RL_457D:
  v2 = v2 + W[v4]
  v4 = v4 + 2
RL_4586:
  if (v4 < v6) goto RL_457D
  return ((((W[v8 + 16]) / 10) + ((W[v8 + 18]) / 10)) + (W[v8 + 20])) + v2

RF_45A5:
  // frame 8
  v8 = (a0 * 24) + g_cargo
  v2 = v8 + 6
  v4 = (v8 + 6) + 10
  v6 = 0
  goto RL_45C6
RL_45BD:
  v6 = v6 + W[v2]
  v2 = v2 + 2
RL_45C6:
  if (v2 < v4) goto RL_45BD
  return ((((W[v8 + 16]) / 10) + ((W[v8 + 18]) / 10)) + (W[v8 + 20])) + v6

RF_45E5:
  // frame 2
  v2 = (a0 * 7) + g_ships
  t1 = RF_45A5(a0)
  return (t1 + (B[v2 + 3])) + (W[v2 + 4])

RF_4604:
  // frame 6
  (byte)a0 = (byte)a0 * 5
  v2 = 0
  goto RL_4643
RL_4618:
  v6 = (((byte)a0 + v4) * 7) + g_ships
  if (!((B[v6 + 6]) & 64)) goto RL_4641
  t1 = RF_40A5((B[v6 + 6]) & 15)
  t2 = RL_8898(t1 + 15)
  v2 = v2 + t2
RL_4641:
RL_4643:
  v4 = L
  if (v4 < 5) goto RL_4618
  return v2

RF_464C:
  // frame 12
RL_4651:
  v2 = 0
  v8 = $1000
  v8 = v8 + (a0 << 10)
  t1 = rand(4)
  v12 = t1
  v8 = v8 + (v12 << 8)
  t2 = rand(4)
  v12 = t2
  v8 = v8 + (v12 << 6)
  t3 = rand(4)
  v12 = t3
  v8 = v8 + (v12 << 4)
  t4 = rand(4)
  v12 = t4
  v8 = v8 + ((v12 * 2) * 2)
  t5 = rand(4)
  v12 = t5
  v8 = v8 + v12
  v4 = $E44B
  v6 = $E44B + 287
  goto RL_46BA
RL_46A8:
  v10 = W[v4 + 4]
  if (!(v10 == v8)) goto RL_46B7
  v2 = 1
  goto RL_46C0
RL_46B7:
  v4 = v4 + 7
RL_46BA:
  if (v4 < v6) goto RL_46A8
RL_46C0:
  if (v2) goto RL_4651
  return v8

RF_46C6:
  // frame 4
  v2 = ((a0 - 1) * 51) + g_captains
  t1 = RL_884E(a0 + 212)
  B[v2 + 5] = t1
  B[v2 + 4] = 4
  W[v2 + 7] = v2 + 9
  B[W[v2 + 7]] = 0
  v4 = ((B[v2 + 5]) * 19) + $0FD8
  t2 = RL_884E(v4 + 15)
  B[v2] = t2
  t3 = RL_884E(v4 + 16)
  B[v2 + 1] = t3
  t4 = RL_884E(v4 + 17)
  B[v2 + 2] = t4
  t5 = RL_884E(v4 + 18)
  B[v2 + 3] = t5
  return t5

RF_472D:
  // frame 0
  goto RL_475F
RL_4735:
  t1 = sys15_pad_read(1)
  if (t1) goto RL_4768
  t2 = RF_3C89(($F18A + 1) << 3)
  t3 = sys16_wait_frames(2)
  t4 = sys58_sprites_hide(6, 1)
  t5 = sys16_wait_frames(2)
RL_475F:
  t6 = sys15_pad_read(0)
  if (!t6) goto RL_4735
RL_4768:
  t7 = sys58_sprites_hide(6, 1)
RL_4770:
  t8 = sys15_pad_read(0)
  if (t8) goto RL_4770
  t9 = sys15_pad_read(1)
  if (t9) goto RL_4770
  return t9

RF_4783:
  // frame 4
  t1 = RF_4F65(a0, a1, 10, (a2 * a4) + 2, 0, 0)
  goto RL_47B6
RL_479B:
  t2 = RF_2F8F(a0 + 2, ((v2 * a4) + a1) + 2)
  t3 = RF_40DE(W[(v2 * 2) + a3])
RL_47B6:
  v2 = L
  if (v2 < a2) goto RL_479B
  t4 = RF_3787(RD_8F56, a2, a0 + 1, a1 + 2, 0, a4, a2, 1)
  v4 = t4
  if (!(v4 == (-1))) goto RL_47DE
  goto RL_47E0
RL_47DE:
RL_47E0:
  return

RF_47E1:
  // frame 8
  t1 = RF_5E4F()
  v2 = 8
  if (!((byte)$F28C == 1)) goto RL_47F7
  goto RL_47F9
RL_47F7:
RL_47F9:
  v4 = L
  goto RL_4823
RL_47FE:
  t2 = RF_2F8F((((v6 / a4) * a0) + v2) + 1, (((v6 % a4) * a1) + v4) + 1)
  t3 = RF_2FB9(W[(v6 * 2) + a2], 0)
RL_4823:
  v6 = L
  if (v6 < a3) goto RL_47FE
  t4 = RF_3787(RD_8F57, a3, v2, v4 + 1, a0, a1, a4, 1)
  v8 = t4
  if (!(v8 == (-1))) goto RL_4849
  goto RL_484B
RL_4849:
RL_484B:
  return

RF_484C:
  // frame 6
  v4 = a0 + 1
  goto RL_487C
RL_4858:
  t1 = RF_2F8F(((v2 / a6) * a2) + v4, ((v2 % a6) * a3) + a1)
  t2 = RF_2FB9(W[(v2 * 2) + a4], 1)
RL_487C:
  v2 = L
  if (v2 < a5) goto RL_4858
  t3 = RF_3787(RD_8F58, a5, a0, a1 + 1, a2, a3, a6, 1)
  v6 = t3
  if (!(v6 == (-1))) goto RL_48A4
  goto RL_48A6
RL_48A4:
RL_48A6:
  return

RF_48A7:
  // frame 8
  t1 = RF_5E4F()
  v4 = 8
  if (!((byte)$F28C == 1)) goto RL_48BD
  goto RL_48BF
RL_48BD:
RL_48BF:
  v6 = L
  goto RL_48E8
RL_48C4:
  t2 = RF_2F8F((((v2 / a4) * a0) + v4) + 1, ((v2 % a4) * a1) + v6)
  t3 = RF_2FB9(W[(v2 * 2) + a2], 1)
RL_48E8:
  v2 = L
  if (v2 < a3) goto RL_48C4
  t4 = RF_3787(RD_8F59, a3, v4, v6 + 1, a0, a1, a4, 2)
  v8 = t4
  if (!(v8 <= a3)) goto RL_490A
  v8 = v8 - 1
RL_490A:
  return v8

RF_490C:
  // frame 1
  t1 = RF_3787(RD_8F5A, a3, a0, a1, 0, a2, a3, 1)
  (byte)v1 = t1
  if (!((byte)v1 == 255)) goto RL_4930
  return 255
RL_4930:
  (byte)v1 = (byte)v1 - 1
  return (byte)v1 - 1

RF_4938:
  // frame 2
  t1 = RF_3FC8(g_fh_cbmap0, ((byte)(g_fleets+8) * 2) + $21AA, 126, v2, 2)
  t2 = sys10_sprite_move(22, ((byte)(g_fleets+2) + 2) << 3, (((byte)(g_fleets+3) + 1) << 3) - 1, v2, 2, 0)
  return t2

RF_496B:
  // frame 8
  v6 = g_fleets
  v2 = (((B[v6 + 2]) * 2) << 3) + 16
  v4 = ((((B[v6 + 3]) * 2) << 3) + (W[((byte)$F28C * 2) + RD_8EC0])) + 8
  t1 = RF_3FC8(g_fh_cbmap0, ((B[v6 + 8]) * 2) + $21AA, 126, &v8, 2)
  t2 = sys10_sprite_move(22, v2, v4, v8, 2, 1)
  return t2

RF_49B5:
  // frame 6
  v6 = g_fleets
  (byte)v3 = B[v6 + 8]
  (byte)v4 = B[v6 + 8]
  t1 = sys16_wait_frames(1)
  t2 = RF_496B()
  v2 = 0
RL_49D3:
  if (!((byte)v4 != (B[v6 + 8]))) goto RL_49E8
  t3 = RF_496B()
  (byte)v4 = B[v6 + 8]
RL_49E8:
  t4 = RF_3D91(v2, 12)
  t5 = RF_3759()
  v2 = t5
  switch (v2) {12 cases}

RF_4A99:
  // frame 0
  if (!((byte)$EF6A == 255)) goto RL_4AA9
  return (byte)$EF6A == 255
RL_4AA9:
  if (!((byte)$EF6A == 1)) goto RL_4AB7
  t1 = RF_2F8F(11, 3)
RL_4AB7:
  t2 = RF_3608(RD_8F5C, (byte)g_year + $05DC)
  return t2

RF_4AC6:
  // frame 0
  if (!((byte)$EF6A == 255)) goto RL_4AD6
  return (byte)$EF6A == 255
RL_4AD6:
  if (!((byte)$EF6A == 1)) goto RL_4AE4
  t1 = RF_2F8F(3, 3)
RL_4AE4:
  t2 = RL_8875(((byte)g_month * 2) + $1CA8)
  t3 = RF_40DE(t2)
  return t3

RF_4AF7:
  // frame 2
  if (!((byte)$EF6A == 255)) goto RL_4B07
  return (byte)$EF6A == 255
RL_4B07:
  if (!((byte)$EF6A == 1)) goto RL_4B1B
  t1 = RF_2F8F(7, 3)
  goto RL_4B1E
RL_4B1B:
RL_4B1E:
  v2 = L
  t2 = RF_3608(v2, (byte)g_day + 1)
  return t2

RF_4B2A:
  // frame 0
  t1 = RF_3DF1(3, a0, a1, 2, 2, W[(a2 * 2) + RD_8F69], g_fh_cbmap0)
  return t1

RF_4B44:
  // frame 0
  t1 = RF_2FB9(a0, 1)
  t2 = RF_3DDF(1)
  return t2

RF_4B55:
  // frame 4
  v4 = $F16B
  goto RL_4B7E
RL_4B62:
  t1 = sys7_tilemap_read(2, a0, v2, a2, a4, v4, 127)
  v4 = v4 + ((a2 * a4) * 2)
RL_4B7E:
  v2 = L
  if ((v2 + a4) < (a1 + a3)) goto RL_4B62
  t2 = sys7_tilemap_read(2, a0, v2, a2, (a1 + a3) - v2, v4, 127)
  $F16B = $F16B + ((a2 * a3) * 2)
  v4 = $F16B
  goto RL_4BCE
RL_4BB2:
  t3 = sys7_tilemap_read(1, a0, v2, a2, a4, v4, 127)
  v4 = v4 + ((a2 * a4) * 2)
RL_4BCE:
  v2 = L
  if ((v2 + a4) < (a1 + a3)) goto RL_4BB2
  t4 = sys7_tilemap_read(1, a0, v2, a2, (a1 + a3) - v2, v4, 127)
  $F16B = $F16B + ((a2 * a3) * 2)
  v4 = $F16B
  goto RL_4C1E
RL_4C02:
  t5 = sys7_tilemap_read(3, a0, v2, a2, a4, v4, 127)
  v4 = v4 + ((a2 * a4) * 2)
RL_4C1E:
  v2 = L
  if ((v2 + a4) < (a1 + a3)) goto RL_4C02
  t6 = sys7_tilemap_read(3, a0, v2, a2, (a1 + a3) - v2, v4, 127)
  $F16B = $F16B + ((a2 * a3) * 2)
  return $F16B + ((a2 * a3) * 2)

RF_4C4B:
  // frame 4
  $F16B = $F16B - ((a2 * a3) * 2)
  v4 = $F16B
  goto RL_4C80
RL_4C64:
  t1 = sys6_tilemap_copy(3, a0, v2, a2, a4, v4, 127)
  v4 = v4 + ((a2 * a4) * 2)
RL_4C80:
  v2 = L
  if ((v2 + a4) < (a1 + a3)) goto RL_4C64
  t2 = sys6_tilemap_copy(3, a0, v2, a2, (a1 + a3) - v2, v4, 127)
  $F16B = $F16B - ((a2 * a3) * 2)
  v4 = $F16B
  goto RL_4CD0
RL_4CB4:
  t3 = sys6_tilemap_copy(1, a0, v2, a2, a4, v4, 127)
  v4 = v4 + ((a2 * a4) * 2)
RL_4CD0:
  v2 = L
  if ((v2 + a4) < (a1 + a3)) goto RL_4CB4
  t4 = sys6_tilemap_copy(1, a0, v2, a2, (a1 + a3) - v2, v4, 127)
  $F16B = $F16B - ((a2 * a3) * 2)
  v4 = $F16B
  goto RL_4D20
RL_4D04:
  t5 = sys6_tilemap_copy(2, a0, v2, a2, a4, v4, 127)
  v4 = v4 + ((a2 * a4) * 2)
RL_4D20:
  v2 = L
  if ((v2 + a4) < (a1 + a3)) goto RL_4D04
  t6 = sys6_tilemap_copy(2, a0, v2, a2, (a1 + a3) - v2, v4, 127)
  return t6

RF_4D41:
  // frame 0
  if (!($F16D < 3)) goto RL_4D8A
  t1 = RF_4B55(a0, a1, a2, a3, 5)
  $F16D = $F16D + 1
  W[($F16D * 2) + $F16F] = a0
  W[($F16D * 2) + $F175] = a1
  W[($F16D * 2) + $F17B] = a2
  W[($F16D * 2) + $F181] = a3
RL_4D8A:
  return

RF_4D8B:
  // frame 0
  if (!($F16D >= 0)) goto RL_4DD6
  if (!($F16D < 3)) goto RL_4DD6
  t1 = RF_4C4B(W[($F16D * 2) + $F16F], W[($F16D * 2) + $F175], W[($F16D * 2) + $F17B], W[($F16D * 2) + $F181], 5)
  $F16D = $F16D - 1
  return 1
RL_4DD6:
  return 0

RF_4DD8:
  // frame 0
  if (!((byte)$F290 != 255)) goto RL_4E17
  if (!((byte)$F291 != 255)) goto RL_4E17
  t1 = sys5_tilemap_write(1, (byte)$F290, (byte)$F291, 5, 6, 0)
  t2 = sys5_tilemap_write(3, (byte)$F290 - 1, (byte)$F291 - 1, 7, 8, $2000)
RL_4E17:
  (byte)$F294 = 255
  (byte)$F291 = 255
  (byte)$F290 = 255
  g_portrait = -1
  return -1

RF_4E29:
  // frame 8
  v2 = 0
  if (!(a3 == 3)) goto RL_4E64
  if (!a2) goto RL_4E4C
  if (a2 == 4) goto RL_4E4C
  if (a2 == 5) goto RL_4E4C
  if (!(a2 == 6)) goto RL_4E63
RL_4E4C:
  v4 = a2
  (byte)$F294 = 64
RL_4E53:
  switch ((byte)$F294) {2 cases}

RF_4F05:
  // frame 1024
  t1 = sys36_memset_long(126, &v1024, 0, 512)
  t2 = sys3_palette_dma(&v1024, 126, 0, 512)
  return t2

RF_4F2A:
  // frame 2
  v2 = 0
RL_4F31:
  t1 = sys37_brightness_set(v2)
  t2 = RF_3654(a0)
  v2 = v2 + 1
  if (v2 < 16) goto RL_4F31
  return v2 < 16

RF_4F48:
  // frame 2
  v2 = 15
RL_4F4F:
  t1 = sys37_brightness_set(v2)
  t2 = RF_3654(a0)
  v2 = v2 - 1
  if (v2 >= 0) goto RL_4F4F
  return v2 >= 0

RF_4F65:
  // frame 12
  v10 = (a0 + a2) - 1
  v12 = (a1 + a3) - 1
  t1 = sys48_color_math(0, 0, 224)
  t2 = sys39_window_off()
  t3 = sys26_file_seek(g_fh_cbmap0, $64DC, 0, pop())
  t4 = sys28_file_read(g_fh_cbmap0, 127, 0, (a2 * a3) * 2)
  v2 = 0
  goto RL_5039
RL_4FAD:
  goto RL_5030
RL_4FB1:
  if (v8) goto RL_4FCE
  if (v6) goto RL_4FBD
  goto RL_5002
RL_4FBD:
  if (!(v6 < (a2 - 1))) goto RL_4FCA
  goto RL_5002
RL_4FCA:
  goto RL_5002
RL_4FCE:
  if (!(v8 < (a3 - 1))) goto RL_4FEC
  if (v6) goto RL_4FDF
  goto RL_5002
RL_4FDF:
  if (v6 < (a2 - 1)) goto RL_502B
  goto RL_5002
RL_4FEC:
  if (v6) goto RL_4FF4
  goto RL_5002
RL_4FF4:
  if (!(v6 < (a2 - 1))) goto RL_5001
  goto RL_5002
RL_5001:
RL_5002:
  v4 = L
  t5 = sys26_file_seek(g_fh_fdata, ((a4 << 4) + (v4 * 2)) + $26D0, 0, pop())
  t6 = sys28_file_read(g_fh_fdata, 127, v2, 2)
RL_502B:
  v2 = v2 + 2
RL_5030:
  v6 = L
  if (v6 < a2) goto RL_4FB1
RL_5039:
  v8 = L
  if (v8 < a3) goto RL_4FAD
  t7 = RF_532F(3, a0, a1, a2, a3, 0, 127)
  t8 = sys56_anim_control(0, 0)
  if ((byte)$EF6A) goto RL_5074
  a1 = a1 + (W[((byte)$F28C * 2) + RD_8F70])
  v12 = v12 + (W[((byte)$F28C * 2) + RD_8F70])
RL_5074:
  t9 = sys38_window_shape((a0 << 3) + 2, (a1 << 3) + 2, ((v10 + 1) << 3) - 2, ((v12 + 1) << 3) - 2, 32, 1)
  t10 = sys48_color_math(32, 83, 224)
  t11 = RF_2FB9(RD_8F76, 1)
  return t11

RF_50AB:
  // frame 2
  if (!a2) goto RL_50B8
  goto RL_50BA
RL_50B8:
RL_50BA:
  v2 = L
  t1 = RF_3DF1(2, a0, a1, 30, v2, W[(a2 * 2) + RD_8F7A], g_fh_cbmap0)
  return t1

RF_50D1:
  // frame 0
  t1 = RF_604A(3, a0 + 1, a1 + 1, a2 - 2, a3 - 2, $2000)
  if (!a4) goto RL_50F8
  if (!(a4 == 8)) goto RL_5110
RL_50F8:
  t2 = RF_3DF1(1, a0, a1, a2, a3, W[(a4 * 2) + RD_8F7E], g_fh_cbmap0)
  goto RL_513B
RL_5110:
  t3 = RF_3DF1(3, a0, a1, a2, a3, W[(a4 * 2) + RD_8F7E], g_fh_cbmap0)
  t4 = RF_604A(1, a0 + 1, a1 + 1, a2 - 2, a3 - 2, $0409)
RL_513B:
  return

RF_513C:
  // frame 16
  v2 = (((a1 * 3) + a0) * 49) + $EFAB
  v4 = ((((a1 * 3) + a0) * 49) + $EFAB) + 49
  t1 = sys36_memset_long(127, $E000, 0, $2000)
  t2 = sys26_file_seek(g_fh_cbmap0, $BE4A, 0, pop())
  t3 = sys28_file_read(g_fh_cbmap0, 127, $E800, $0690)
  a1 = 0
  a0 = 0
  goto RL_52EE
RL_5188:
  v6 = ((((a1 * 2) * 2) * 60) + (((a0 * 2) * 2) * 2)) + $E002
  v8 = ((((a1 * 2) * 2) * 60) + (((a0 * 2) * 2) * 2)) + $E802
  goto RL_52D3
RL_51AE:
  v16 = 0
  (byte)v14 = 18
  t4 = RF_3FC8(g_fh_fdata, (((B[v2] * 2) * 2) + (byte)v13) + $25F8, 126, &v14, 1)
  if (!(byte)v14) goto RL_52CF
  if (!((byte)v14 == 17)) goto RL_51E5
  goto RL_51E6
RL_51E5:
RL_51E6:
  v16 = L
  if (!((byte)v13 >> 1)) goto RL_51F4
  goto RL_51F5
RL_51F4:
RL_51F5:
  if (!((byte)v13 & 1)) goto RL_5203
  goto RL_5204
RL_5203:
RL_5204:
  v10 = ((L * 2) + (L * 2)) + v6
  if (!((byte)v13 >> 1)) goto RL_5217
  goto RL_5218
RL_5217:
RL_5218:
  if (!((byte)v13 & 1)) goto RL_5226
  goto RL_5227
RL_5226:
RL_5227:
  v12 = ((L * 2) + (L * 2)) + v8
  if (!(v16 == 1)) goto RL_527E
  t5 = sys26_file_seek(g_fh_fdata, ((byte)v14 << 3) + $24D0, 0, pop())
  t6 = sys28_file_read(g_fh_fdata, 127, v10, 4)
  t7 = sys26_file_seek(g_fh_fdata, ((byte)v14 << 3) + $24D4, 0, pop())
  t8 = sys28_file_read(g_fh_fdata, 127, v10 + 60, 4)
RL_527E:
  if (!(v16 == 2)) goto RL_52CF
  t9 = sys26_file_seek(g_fh_fdata, ((byte)v14 << 3) + $24D0, 0, pop())
  t10 = sys28_file_read(g_fh_fdata, 127, v12, 4)
  t11 = sys26_file_seek(g_fh_fdata, ((byte)v14 << 3) + $24D4, 0, pop())
  t12 = sys28_file_read(g_fh_fdata, 127, v12 + 60, 4)
RL_52CF:
RL_52D3:
  (byte)v13 = L
  if ((byte)v13 < 4) goto RL_51AE
  a0 = a0 + 1
  if ((a0 + 1) < 7) goto RL_52EB
  a1 = a1 + 1
  a0 = 0
RL_52EB:
  v2 = v2 + 1
RL_52EE:
  if (v2 < v4) goto RL_5188
  t13 = sys11_vram_load_tiles(119, 72, ((((byte)$F164 * 2) * 2) * 576) + $8000, 16, 2)
  return t13

RF_530E:
  // frame 0
  t1 = sys17_bg_scroll(1, a0, a1)
  t2 = sys17_bg_scroll(2, a0, a1)
  t3 = sys17_bg_scroll(3, a0, a1)
  return t3

RF_532F:
  // frame 2
  goto RL_5353
RL_5338:
  t1 = sys6_tilemap_copy(a0, a1, v2, a3, 7, a5, a6)
  a5 = a5 + (a3 * 14)
RL_5353:
  v2 = L
  if ((v2 + 7) < (a2 + a4)) goto RL_5338
  t2 = sys6_tilemap_copy(a0, a1, v2, a3, (a2 + a4) - v2, a5, a6)
  return t2

RF_5375:
  // frame 2
  goto RL_5399
RL_537E:
  t1 = sys7_tilemap_read(a0, a1, v2, a3, 7, a5, a6)
  a5 = a5 + (a3 * 14)
RL_5399:
  v2 = L
  if ((v2 + 7) < (a2 + a4)) goto RL_537E
  t2 = sys7_tilemap_read(a0, a1, v2, a3, (a2 + a4) - v2, a5, a6)
  return t2

RF_53BB:
  // frame 0
  if (!(byte)$F193) goto RL_53D4
  goto RL_53DF
RL_53D4:
RL_53DF:
  t1 = RF_532F(2, 1, 1, 30, 28, $E800, 127)
  t2 = RF_532F(1, 1, 1, 30, 28, $E000, 127)
  return t2

RF_53F5:
  // frame 2
  v2 = (((a0 * 2) * 2) + ((a1 * 2) * 60)) + $E002
  t1 = sys26_file_seek(g_fh_cbmap0, $21A2, 0, pop())
  t2 = sys28_file_read(g_fh_cbmap0, 127, v2, 4)
  t3 = sys26_file_seek(g_fh_cbmap0, $21A6, 0, pop())
  t4 = sys28_file_read(g_fh_cbmap0, 127, v2 + 60, 4)
  return t4

map_load_zone:
  // frame 28
  v4 = (((a1 * 24) + a0) * 5) + 4
  t1 = map_rom_read(&v4, &v6, 2)
  t2 = map_rom_read(&v4, g_zone_attr, 3)
  v4 = (v6 * 18) + g_map_blocks_ofs
  t3 = map_rom_read(&v4, &v24, 18)
  v26 = &v24
  v28 = (&v24) + 18
  goto RL_54D0
RL_549E:
  v4 = (W[v26] * 49) + g_map_chunks_ofs
  t4 = map_rom_read(&v4, a2, 49)
  a2 = a2 + 49
  v26 = v26 + 2
RL_54D0:
  if (v26 < v28) goto RL_549E
  return v26 < v28

map_open:
  // frame 4
  v4 = 0
  t1 = map_rom_read(&v4, g_map_blocks_ofs, 2)
  t2 = map_rom_read(&v4, g_map_chunks_ofs, 2)
  t3 = map_load_zone(a0, a1, $EFAB)
  if (!((byte)g_month > 2)) goto RL_5521
  if (!((byte)g_month < 9)) goto RL_5521
  goto RL_5524
RL_5521:
RL_5524:
  (byte)$EF82 = L & 15
  if (!((byte)g_month > 2)) goto RL_5541
  if (!((byte)g_month < 9)) goto RL_5541
  goto RL_5544
RL_5541:
RL_5544:
  (byte)$EF83 = L & 15
  return L & 15

RF_554A:
  // frame 0
  t1 = RF_53F5(a0, a1)
  a0 = (a0 * 2) + 2
  a1 = (a1 * 2) + 1
  t2 = RF_3DF1(1, a0, a1, 2, 2, $21A2, g_fh_cbmap0)
  return t2

RF_556D:
  // frame 9
  t1 = RL_85D4(a2, a0 >> 1, a1 >> 1)
  v2 = t1
  v4 = ((a1 & 1) * 2) + (a0 & 1)
  a0 = (a0 * 2) + 2
  a1 = (a1 * 2) + 1
  t2 = RL_884E((((v2 * 2) * 2) + v4) + $25F8)
  (byte)v7 = t2
  if (!((byte)$F193 == 1)) goto RL_55C4
  if (!(byte)v7) goto RL_55BB
  if (!((byte)v7 == 17)) goto RL_55C4
RL_55BB:
  goto RL_55D1
RL_55C4:
RL_55D1:
  t3 = RF_3DF1(2, a0, a1, 2, 2, ((byte)v7 << 3) + $2568, g_fh_fdata)
  return t3

RF_55DB:
  // frame 0
  a0 = (a0 * 2) + 2
  a1 = (a1 * 2) + 1
  t1 = sys5_tilemap_write(1, a0, a1, 2, 2, 0)
  return t1

RF_55F4:
  // frame 4
  if (!((byte)(g_fleets+15) & 2)) goto RL_5602
  return (byte)(g_fleets+15) & 2
RL_5602:
  a0 = ((a0 * 2) << 3) + 16
  a1 = (B[(byte)$F28C + RD_8F90]) + ((a1 * 2) << 3)
  if (!((byte)(g_fleets+15) & 32)) goto RL_563D
  t1 = sys58_sprites_hide(22, 4)
  t2 = sys9_metasprite_set(18, a0, a1, 2, 2, RD_8F93, 0, 126)
  return t2
RL_563D:
  if ((byte)(g_fleets+15) & 1) goto RL_5667
  t3 = sys26_file_seek(g_fh_cbmap0, RD_21BA, 0, pop())
  t4 = sys31_file_metasprite_set(22, a0, a1, 2, 2, 0, g_fh_cbmap0)
  return t4
RL_5667:
  if (!((byte)$F193 == 1)) goto RL_5675
  t5 = rand(8)
  a2 = t5
RL_5675:
  t6 = sys26_file_seek(g_fh_cbmap0, (a2 * 2) + $21AA, 0, pop())
  t7 = sys31_file_metasprite_set(22, a0, a1, 1, 1, 2, g_fh_cbmap0)
  return t7

RF_569A:
  // frame 4
  v2 = (a2 << 4) + g_fleets
  B[v2 + 8] = (B[v2 + 8]) % 8
  v4 = (B[v2 + 8]) % 8
  if (a2) goto RL_56BC
  t1 = RF_55F4(a0, a1, v4)
  return t1
RL_56BC:
  a0 = (a0 * 2) + 2
  a1 = (a1 * 2) + 1
  t2 = sys6_tilemap_copy(1, a0, a1, 2, 2, (v4 << 3) + RD_8F9B, 126)
  return t2

RF_56D9:
  // frame 8
  v2 = 0
  v4 = 0
  goto RL_572F
RL_56E4:
  v6 = (W[((v2 * 2) * 2) + $EF87]) + a0
  v8 = (W[((v2 * 2) * 2) + $EF89]) + a1
  if (!(v6 >= 0)) goto RL_572C
  if (!(v6 <= 13)) goto RL_572C
  if (!(v8 >= 0)) goto RL_572C
  if (!(v8 <= 13)) goto RL_572C
  t1 = RL_8616((byte)$F272, (byte)$F273, v6, v8)
  if (!t1) goto RL_572C
  B[a2 + v4] = v2
  v4 = v4 + 1
RL_572C:
  v2 = v2 + 1
RL_572F:
  if (v2 < 8) goto RL_56E4
  return v4

RF_5737:
  // frame 16
  t1 = RF_56D9(B[a0], B[a1], &v8)
  v10 = t1
  if (v10) goto RL_5751
  return 1
RL_5751:
  t2 = rand(v10)
  v12 = B[t2 + (&v8)]
  B[a0] = B[a0] + (W[((v12 * 2) * 2) + $EF87])
  B[a1] = B[a1] + (W[((v12 * 2) * 2) + $EF89])
  B[(a2 << 4) + $E56C] = v12
  return 0

RF_5788:
  // frame 0
RL_578D:
  t1 = rand(2)
  if (!t1) goto RL_57A7
  t2 = rand(2)
  B[a0] = t2 * 13
  t3 = rand(14)
  goto RL_57B6
RL_57A7:
  t4 = rand(14)
  B[a0] = t4
  t5 = rand(2)
RL_57B6:
  B[a1] = L
  t6 = RL_8616((byte)$F272, (byte)$F273, B[a0], B[a1])
  if (!t6) goto RL_578D
  return t6

RF_57CD:
  // frame 4
  v2 = (a0 << 4) + g_fleets
  (byte)$F272 = B[v2]
  (byte)$F273 = B[v2 + 1]
  if ((B[v2 + 2]) == 255) goto RL_5814
  t1 = RL_8616((byte)$F272, (byte)$F273, B[v2 + 2], B[v2 + 3])
  if (t1) goto RL_581E
  t2 = RF_5737(v2 + 2, v2 + 3, a0)
  if (!t2) goto RL_581E
RL_5814:
  t3 = RF_5788(v2 + 2, v2 + 3)
RL_581E:
  W[v2 + 4] = 12
  W[v2 + 6] = 12
  t4 = RF_569A(B[v2 + 2], B[v2 + 3], a0)
  t5 = RL_89FC(B[v2 + 2], B[v2 + 3], a0)
  return t5

RF_5843:
  // frame 0
  t1 = sys36_memset_long(126, $F199, 255, 21)
  t2 = sys36_memset_long(126, $F1AE, 255, 196)
  return t2

RF_586A:
  // frame 2
  v2 = g_fleets
  if (!(byte)$F28C) goto RL_5891
  if ((B[v2 + 3]) < 6) goto RL_5899
  if (!((B[v2 + 3]) > 7)) goto RL_589D
RL_5889:
  goto RL_589A
RL_588D:
  goto RL_58A8
RL_5891:
  if (!((B[v2 + 3]) < 7)) goto RL_5889
RL_5899:
RL_589A:
  (byte)$F28C = L
RL_589D:
  if ((byte)$F28C == 1) goto RL_588D
RL_58A8:
  t1 = RF_530E(0, L)
  t2 = sys16_wait_frames(1)
  return t2

RF_58B6:
  // frame 0
  switch (a1) [0, 4, RL_599F]

RF_59A3:
  // frame 0
  return B[a0 + RD_8FDB]

RF_59AF:
  // frame 47
  t1 = RF_5843()
  v29 = a0 % 3
  v33 = a1 % 3
  v31 = a0 / 3
  v35 = a1 / 3
  v39 = B[(a1 / 6) + RD_8FDE]
  if (!((byte)$F274 != v39)) goto RL_59F5
  if ((byte)$F193) goto RL_59F0
  t2 = RF_59A3(v39)
  t3 = RF_21EA(t2, 1)
RL_59F0:
  (byte)$F274 = v39
RL_59F5:
  v43 = v35
  if (!(v43 < 6)) goto RL_5A07
  goto RL_5A0B
RL_5A07:
RL_5A0B:
  v43 = L
  if (!(v43 < 4)) goto RL_5A1B
  goto RL_5A1F
RL_5A1B:
RL_5A1F:
  v43 = L
  if (!((byte)$F164 != v43)) goto RL_5A2F
  (byte)$F164 = v43
RL_5A2F:
  if ((byte)$F165 != v31) goto RL_5A41
  if (!((byte)$F166 != v35)) goto RL_5A53
RL_5A41:
  t4 = map_open(v31, v35)
  (byte)$F165 = v31
  (byte)$F166 = v35
RL_5A53:
  if ((byte)$F167 != v29) goto RL_5A69
  if ((byte)$F168 != v33) goto RL_5A69
  goto RL_5A6A
RL_5A69:
RL_5A6A:
  v47 = L
  if (!v47) goto RL_5ABF
  t5 = sys58_sprites_hide(22, 4)
  t6 = RF_513C(v29, v33)
  (byte)$F167 = v29
  (byte)$F168 = v33
  v41 = ((byte)(g_zone_attr+2) >> 6) & 7
  t7 = sys11_vram_load_tiles(191, 16, (v41 << 9) + $BEDE, 16, 2)
  t8 = sys11_vram_load_tiles(207, 16, (v41 << 9) + $CEDE, 16, 2)
RL_5ABF:
  t9 = RL_87E0(a0, a1, &v21)
  (byte)$EF81 = t9
  if (!t9) goto RL_5B58
  v37 = 0
  v23 = &v21
  v25 = (byte)$EF81 + (&v21)
  goto RL_5B4B
RL_5AE2:
  if (!((B[B[v23] + g_port_flags]) & 8)) goto RL_5B36
  v45 = (B[v23] * 19) + $0FD8
  if (!v47) goto RL_5B1B
  t10 = RL_884E(v45 + 18)
  t11 = RL_884E(v45 + 17)
  t12 = RF_53F5(t11, t10)
  goto RL_5B46
RL_5B1B:
  t13 = RL_884E(v45 + 18)
  t14 = RL_884E(v45 + 17)
  t15 = RF_554A(t14, t13)
  goto RL_5B46
RL_5B36:
  B[v37 + $EF6D] = B[v23]
  v37 = v37 + 1
RL_5B46:
  v23 = v23 + 1
RL_5B4B:
  if (v23 < v25) goto RL_5AE2
  (byte)$EF81 = v37
RL_5B58:
  if (!v47) goto RL_5B89
  t16 = RF_586A()
  t17 = RF_5BBB((byte)$EA8E / 5)
  t18 = RF_53BB()
  if ((byte)$F193) goto RL_5B89
  t19 = RF_58B6(0, 0, 0)
  t20 = RF_58B6(1, ((byte)(g_zone_attr+2) >> 3) & 3, v41)
RL_5B89:
  t21 = RL_8560(a0, a1, &v21)
  v27 = t21
  if (!t21) goto RL_5BBA
  v23 = &v21
  v25 = (&v21) + v27
  goto RL_5BB2
RL_5BA5:
  t22 = RF_57CD(B[v23])
  v23 = v23 + 1
RL_5BB2:
  if (v23 < v25) goto RL_5BA5
RL_5BBA:
  return

RF_5BBB:
  // frame 2
  v2 = B[(a0 % 6) + RD_9154]
  t1 = sys26_file_seek(g_fh_fdata, (((byte)$F164 << 7) + (v2 << 5)) + $22D0, 0, pop())
  t2 = sys29_file_palette_dma(g_fh_fdata, 32, 32)
  return t2

RF_5BF4:
  // frame 0
  if (!((byte)$F28C == 1)) goto RL_5C0A
  goto RL_5C0C
RL_5C0A:
RL_5C0C:
  t1 = RF_50D1(7, L, 18, 8, 1, 0)
  return t1

RF_5C13:
  // frame 2
  a0 = a0 - 1
  if (!((byte)$F28C == 1)) goto RL_5C27
  goto RL_5C29
RL_5C27:
RL_5C29:
  v2 = L
  t1 = RF_2F8F(8, ((a0 * 2) + v2) + 1)
  t2 = RF_2FB9(RD_915A, 1)
  return t2

RF_5C3E:
  // frame 0
  t1 = RF_5BF4()
  t2 = RF_5C13(1)
  return t2

RF_5C4C:
  // frame 0
  t1 = RF_5BF4()
  t2 = RF_5C13(2)
  return t2

RF_5C5A:
  // frame 4
  (byte)$F28F = 2
  if (!((byte)$F28C == 1)) goto RL_5C6F
  goto RL_5C71
RL_5C6F:
RL_5C71:
  v4 = L
  t1 = RF_4E29(25, v4 + 1, a0, a1)
  t2 = RF_5BF4()
  t3 = RF_2F8F(8, v4 + 1)
  t4 = RF_2FB9(RD_9164, 1)
  return t4

RF_5C91:
  // frame 0
  t1 = RF_430C()
  t2 = RF_5C5A(t1, 0)
  return t2

RF_5CA0:
  // frame 0
  t1 = RF_3DF1(1, a0, a1, 2, 2, W[(a2 * 2) + RD_916B], g_fh_cbmap0)
  a0 = a0 + 2
  a1 = a1 + 1
  a3 = a3 % 10
  t2 = RF_3DF1(1, a0, a1, 1, 1, W[(a3 * 2) + RD_917B], g_fh_cbmap0)
  return t2

RF_5CDA:
  // frame 2
  v2 = (byte)$EF83
  t1 = RF_3DF1(1, a0, a1, 5, 8, $BC8A, g_fh_cbmap0)
  a0 = a0 + 1
  a1 = a1 + 2
  if (!v2) goto RL_5D09
  t2 = RF_5CA0(a0, a1, (byte)$EF82, v2)
RL_5D09:
  v2 = ((byte)(g_zone_attr+2) >> 3) & 3
  a1 = a1 + 3
  if (!v2) goto RL_5D29
  t3 = RF_5CA0(a0, a1, ((byte)(g_zone_attr+2) >> 6) & 7, v2)
RL_5D29:
  return

RF_5D2A:
  // frame 25
  t1 = RL_8502(0, &v5)
  v11 = t1
  v17 = 0
  v15 = 0
  v13 = 0
  v7 = &v5
  v9 = (&v5) + v11
  goto RL_5D8A
RL_5D4E:
  v23 = (B[v7] * 24) + g_cargo
  v25 = (B[v7] * 7) + g_ships
  v15 = v15 + (W[v23 + 18])
  v17 = v17 + (W[v23 + 16])
  v13 = v13 + (W[v25 + 4])
  v7 = v7 + 1
RL_5D8A:
  if (v7 < v9) goto RL_5D4E
  v19 = (v13 * (byte)$E99A) / 100
  v21 = (v13 * (byte)$E99B) / 100
  v19 = v15 / (v19 + 1)
  v21 = v17 / (v21 + 1)
  t2 = RL_8962(v19, $03E8)
  v19 = t2
  t3 = RL_8962(v21, $03E8)
  v21 = t3
  t4 = RF_4B2A(a0, a1, 1)
  t5 = RF_2F8F(a0 + 3, a1)
  t6 = RF_3608(RD_9196, v19)
  t7 = RF_2F8F(a0 + 3, a1 + 1)
  t8 = RF_3608(RD_9199, RD_918F)
  t9 = RF_4B2A(a0, a1 + 3, 0)
  t10 = RF_2F8F(a0 + 3, a1 + 3)
  t11 = RF_3608(RD_919C, v21)
  t12 = RF_2F8F(a0 + 3, a1 + 4)
  t13 = RF_3608(RD_919F, RD_918F)
  return t13

RF_5E4F:
  // frame 4
  v2 = 2
  if (!((byte)$F28C == 1)) goto RL_5E62
  goto RL_5E64
RL_5E62:
RL_5E64:
  v4 = L
  t1 = RF_2FB9(RD_91A2, 0)
  if ((byte)$F28F) goto RL_5E79
  t2 = RF_5CDA(v2, v4)
RL_5E79:
  if (!(byte)$F28F) goto RL_5E87
  if (!((byte)$F28F == 2)) goto RL_5EF6
RL_5E87:
  t3 = sys4_tilemap_clear(3, 0, $2000)
  t4 = sys6_tilemap_copy(1, v2 + 5, v4, 23, 8, RD_8FE4, 126)
  t5 = RF_2F8F(v2 + 6, v4)
  t6 = RF_4AC6()
  t7 = RF_2F8F(v2 + 10, v4)
  t8 = RF_4AF7()
  t9 = RF_2F8F(v2 + 13, v4)
  t10 = RF_4A99()
  t11 = RF_2F8F(v2 + 19, v4)
  t12 = RF_3608(RD_91AC, g_days_at_sea)
  t13 = RF_5D2A(v2 + 19, v4 + 2)
  (byte)$F294 = 255
  (byte)$F291 = 255
  (byte)$F290 = 255
  g_portrait = -1
  goto RL_5F0A
RL_5EF6:
  t14 = RF_4DD8()
  t15 = sys5_tilemap_write(3, v2 + 6, v4 + 1, 12, 6, $2000)
RL_5F0A:
  (byte)$F28F = 1
  return 1

RF_5F0F:
  // frame 0
  (byte)$F28F = 0
  t1 = RF_5E4F()
  return t1

RF_5F1C:
  // frame 0
  t1 = RF_5375(1, 1, 1, 30, 28, $E000, 127)
  if ((byte)$F193) goto RL_5F45
  goto RL_5F50
RL_5F45:
RL_5F50:
  t2 = RF_5375(2, 2, 1, 28, 28, $D800, 127)
  return t2

RF_5F56:
  // frame 0
  t1 = sys48_color_math(0, 0, 224)
  t2 = sys39_window_off()
  t3 = sys56_anim_control(3, 255)
  t4 = sys4_tilemap_clear(3, 0, 0)
  t5 = RF_532F(1, 1, 1, 30, 28, $E000, 127)
  if ((byte)$F193) goto RL_5FA2
  goto RL_5FAD
RL_5FA2:
RL_5FAD:
  t6 = RF_532F(2, 2, 1, 28, 28, $D800, 127)
  t7 = RF_586A()
  t8 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  (byte)$F294 = 255
  (byte)$F291 = 255
  (byte)$F290 = 255
  g_portrait = -1
  (byte)$F28F = 0
  return 0

RF_5FDB:
  // frame 0
  if (!(byte)$F28F) goto RL_5FFA
  (byte)$F294 = 255
  (byte)$F291 = 255
  (byte)$F290 = 255
  g_portrait = -1
  t1 = RF_5F56()
RL_5FFA:
  return

RF_5FFB:
  // frame 10
  v2 = ((byte)(g_fleets+2) * 2) + 2
  v4 = ((byte)(g_fleets+3) * 2) + 1
  v10 = 0
  v6 = a0 + a2
  v8 = a1 + a3
  if (!(v2 >= a0)) goto RL_6048
  if (!(v2 < v6)) goto RL_6048
  if (!(v4 >= a1)) goto RL_6048
  if (!(v4 < v8)) goto RL_6048
  v10 = 1
  if (!((byte)(g_fleets+15) & 32)) goto RL_603F
  goto RL_6042
RL_603F:
RL_6042:
  t1 = sys58_sprites_hide(22, 4)
RL_6048:
  return v10

RF_604A:
  // frame 6
  v6 = a2 + a4
  goto RL_6078
RL_6058:
  if (!((v6 - v2) > 5)) goto RL_6064
  goto RL_6067
RL_6064:
RL_6067:
  v4 = L
  t1 = sys5_tilemap_write(a0, a1, v2, a3, v4, a5)
RL_6078:
  v2 = L
  if (v2 < v6) goto RL_6058
  return v2 < v6

RF_6080:
  // frame 0
  t1 = RF_50D1(7, 20, 25, 8, 0, 0)
  t2 = RF_2FB9(RD_91B4, 1)
  return t2

RF_609A:
  // frame 0
  t1 = RF_2F8F(8, (a0 * 2) + 19)
  t2 = RF_2FB9(RD_91BE, 1)
  return t2

RF_60B2:
  // frame 0
  t1 = RF_6080()
  t2 = RF_609A(1)
  return t2

RF_60C0:
  // frame 0
  t1 = RF_6080()
  t2 = RF_609A(3)
  return t2

RF_60CE:
  // frame 0
  t1 = RF_50D1(7, 20, 25, 8, 0, 0)
  t2 = RF_4E29(2, 21, a0, a1)
  t3 = RF_609A(1)
  return t3

RF_60EE:
  // frame 0
  t1 = RF_430C()
  t2 = RF_60CE(t1, 0)
  return t2

RF_60FD:
  // frame 2
  v2 = 3
  return 3

RF_6105:
  // frame 0
  t1 = RF_2F8F(10, 24)
  t2 = RF_2FB9(RD_91F5, 0)
  return t2

RF_611A:
  // frame 10
  v4 = 177
  goto RL_618A
RL_6127:
  switch (v2) [-36, 29, RL_616C]

RF_61C2:
  // frame 10
  v4 = 33
  goto RL_61FE
RL_61CE:
  switch (v2) {5 cases}

RF_6218:
  // frame 0
  if (!((B[(a1 + a0) - 1]) == 179)) goto RL_622B
  return 1
RL_622B:
  if (!((B[(a1 + a0) - 1]) >= 182)) goto RL_6245
  if (!((B[(a1 + a0) - 1]) <= 196)) goto RL_6245
  return 1
RL_6245:
  if (!((B[(a1 + a0) - 1]) >= 202)) goto RL_625F
  if (!((B[(a1 + a0) - 1]) <= 206)) goto RL_625F
  return 2
RL_625F:
  return 0

RF_6261:
  // frame 4
  v2 = ((((a1 - 7) >> 1) * 10) + ((a0 - 6) >> 1)) + 1
  goto RL_628B
RL_627B:
  if (!((W[(v4 * 2) + RD_91C8]) == v2)) goto RL_6289
  return 1
RL_6289:
RL_628B:
  v4 = L
  if (v4 <= 9) goto RL_627B
  if (!(v2 == 66)) goto RL_629B
  return 2
RL_629B:
  if (!(v2 == 69)) goto RL_62A4
  return 3
RL_62A4:
  return 0

RF_62A6:
  // frame 4
  v4 = 1
  if (!(a1 > 10)) goto RL_62B9
  goto RL_62BC
RL_62B9:
RL_62BC:
  t1 = RF_2F8F(13, 24)
  goto RL_62E4
RL_62C4:
  if (B[a0 + v2]) goto RL_62CD
  v4 = 0
RL_62CD:
  if (!v4) goto RL_62D8
  goto RL_62DA
RL_62D8:
RL_62DA:
  t2 = RF_3608(RD_91FA, L)
RL_62E4:
  v2 = L
  if (v2 <= (a1 - 2)) goto RL_62C4
  return v2 <= (a1 - 2)

RF_62F0:
  // frame 0
  if (!(a0 >= 1)) goto RL_62FE
  a0 = a0 - 1
RL_62FE:
  B[a1 + a0] = 0
  return a0

RF_6306:
  // frame 2
  t1 = sys5_tilemap_write(3, 3, 26, 26, 1, $2000)
  t2 = RF_2F8F(3, 25)
  t3 = RF_2FB9(RD_9201, 1)
  t4 = RF_3CFF()
  v2 = t4
  if (!t4) goto RL_6332
  return v2
RL_6332:
  t5 = sys5_tilemap_write(3, 3, 26, 26, 1, $2000)
  return v2

RF_6343:
  // frame 30
  v2 = 6
  v10 = 6
  v4 = 7
  v12 = 7
  v8 = 2
  v16 = 0
  v28 = 0
  v26 = 0
  v18 = 1
  v22 = 0
  t1 = RF_62A6(a0, a2)
  goto RL_6552
RL_6363:
  v30 = 0
  if (!(v26 != 1)) goto RL_6391
  t2 = RF_3E5A(0, (v10 << 3) - 1, (v12 << 3) - 5, 1, 2, $26CC, g_fh_fdata)
  t3 = RF_3D91(v6, 7)
  t4 = RF_362A(0)
  v6 = t4
RL_6391:
  switch (v6) {12 cases}

RF_6557:
  // frame 151
  t1 = RF_60FD(1, 0)
  t2 = sys36_memset_long(126, a1, 95, (byte)a0)
  B[a1] = 0
  t3 = sys5_tilemap_write(3, 5, 6, 22, 15, $2000)
  t4 = RF_3DF1(3, 7, 7, 19, 13, (a2 * 988) + $320E, g_fh_fdata)
  t5 = RF_611A(&v130)
  t6 = RF_61C2(&v65)
  t7 = RF_6343(a1, &v130, (byte)a0, a2)
  (byte)v131 = t7
  return (byte)v131

RF_65BE:
  // frame 0
  t1 = RF_2F8F(8, (a0 * 2) + 19)
  t2 = RF_2FB9(RD_920A, 1)
  return t2

RF_65D6:
  // frame 0
  t1 = RF_50D1(7, 20, 23, 8, 5, 0)
  t2 = RF_2FB9(RD_9214, 1)
  return t2

RF_65F0:
  // frame 0
  t1 = RF_430C()
  t2 = RF_4E29(2, 21, t1, 0)
  t3 = RF_50D1(7, 20, 23, 8, 5, 0)
  t4 = RF_65BE(1)
  return t4

RF_6613:
  // frame 0
  if (!((byte)(g_fleets+15) & 2)) goto RL_6626
  t1 = RF_60EE()
  goto RL_6629
RL_6626:
  t2 = RF_65F0()
RL_6629:
  return

RF_662A:
  // frame 2
  v2 = g_fleets
  if (!((B[v2 + 15]) & 2)) goto RL_6641
  t1 = RF_60EE()
  goto RL_666C
RL_6641:
  if (!a0) goto RL_664B
  t2 = RF_5C91()
  goto RL_666C
RL_664B:
  if (!((byte)$F28C == 1)) goto RL_665D
  goto RL_665F
RL_665D:
RL_665F:
  t3 = RF_604A(3, 8, L + 1, 16, 6, $2000)
  t4 = RF_5C13(1)
RL_666C:
  return

RF_666D:
  // frame 2
  v2 = g_fleets
  if (!((B[v2 + 15]) & 2)) goto RL_6686
  t1 = RF_609A(a0)
  goto RL_6699
RL_6686:
  if (!(a1 == 1)) goto RL_6694
  t2 = RF_5C13(a0)
  goto RL_6699
RL_6694:
  t3 = RF_65BE(a0)
RL_6699:
  return

RF_669A:
  // frame 2
  v2 = g_fleets
  if (!((B[v2 + 15]) & 2)) goto RL_66B1
  t1 = RF_6080()
  goto RL_66BE
RL_66B1:
  if (!a0) goto RL_66BB
  t2 = RF_5C91()
  goto RL_66BE
RL_66BB:
  t3 = RF_65D6()
RL_66BE:
  return

RF_66BF:
  // frame 0
  t1 = RF_669A(0)
  t2 = RF_666D(a0, 0)
  return t2

RF_66D0:
  // frame 0
  return (W[(a0 * 24) + $E9B8]) / 10

RF_66E1:
  // frame 0
  return W[(a0 * 24) + $E9BA]

RF_66F0:
  // frame 0
  return (W[(a0 * 24) + $E9B6]) / 10

RF_6701:
  // frame 32
  v32 = g_fleets
  if (!((B[v32 + 15]) & 2)) goto RL_6721
  t1 = RF_604A(3, 1, 6, 30, 14, $2000)
RL_6721:
  t2 = RF_2FB9(RD_9224, 1)
  t3 = RF_4F65(a1, a2, 30, 14, 0, 0)
  t4 = sys5_tilemap_write(3, a1 + 20, a2 + 1, 1, 12, $20FA)
  t5 = RF_2F8F(a1 + 1, a2 + 1)
  t6 = RF_2FB9(RD_922E, 1)
  t7 = RF_3DF1(3, a1 + 16, a2 + 1, 2, 2, $45EE, g_fh_cbmap0)
  t8 = RF_4B2A(a1 + 10, a2 + 1, a0)
  v28 = 0
  v26 = 0
  v2 = 0
  v4 = 0
  goto RL_6842
RL_6782:
  v30 = (v2 * 7) + g_ships
  if (!((B[v30 + 6]) & 64)) goto RL_683F
  t9 = RF_40A5(v2)
  t10 = RL_8898(t9 + 18)
  W[(v4 * 2) + (&v14)] = t10
  v26 = v26 + (W[(v4 * 2) + (&v14)])
  t11 = RF_4565(v2)
  W[(v4 * 2) + (&v24)] = t11
  v28 = v28 + (W[(v4 * 2) + (&v24)])
  t12 = RF_2F8F(a1 + 2, ((v4 * 2) + a2) + 4)
  t13 = RF_40A5((B[v30 + 6]) & 15)
  t14 = RF_40DE(t13)
  t15 = RF_2F8F(a1 + 9, ((v4 * 2) + a2) + 3)
  t16 = (*(W[(a0 * 2) + RD_921E]))(2)
  t17 = RF_3619(RD_9233, t16)
  t18 = RF_2F8F(a1 + 13, ((v4 * 2) + a2) + 3)
  t19 = RF_3619(RD_9237, W[(v4 * 2) + (&v24)], W[(v4 * 2) + (&v14)])
  v4 = v4 + 1
RL_683F:
  v2 = v2 + 1
RL_6842:
  if (v2 < 5) goto RL_6782
  t20 = RF_2F8F(a1 + 21, a2 + 9)
  t21 = RF_3619(RD_923F)
  t22 = RF_2F8F(a1 + 23, a2 + 11)
  t23 = RF_3608(RD_9245, v28)
  t24 = RF_2F8F(a1 + 24, a2 + 12)
  t25 = RF_3608(RD_9248, v26)
  return t25

RF_6883:
  // frame 18
  v16 = 0
  v2 = 0
  v4 = 0
  goto RL_68C3
RL_6890:
  v18 = (v2 * 7) + g_ships
  if (!((B[v18 + 6]) & 64)) goto RL_68C0
  t1 = RF_4565(v2)
  W[(v4 * 2) + (&v14)] = t1
  v16 = v16 + (W[(v4 * 2) + (&v14)])
  v4 = v4 + 1
RL_68C0:
  v2 = v2 + 1
RL_68C3:
  if (v2 < 5) goto RL_6890
  t2 = RF_2FB9(RD_9253, 1)
  t3 = RF_2F8F(a3 + 9, ((a2 * 2) + a4) + 3)
  t4 = (*(W[(a0 * 2) + RD_924D]))(2)
  t5 = RF_3619(RD_925D, t4)
  t6 = RF_2F8F(a3 + 13, ((a2 * 2) + a4) + 3)
  t7 = RF_3619(RD_9261, W[(a2 * 2) + (&v14)])
  t8 = RF_2F8F(a3 + 23, a4 + 11)
  t9 = RF_3608(RD_9265, v16)
  return t9

RF_6925:
  // frame 6
  v6 = 0
  t1 = RF_4565(a0)
  t2 = RF_40A5(a0)
  t3 = RL_8898(t2 + 18)
  v2 = t3 - t1
  if (v2) goto RL_6954
  t4 = RF_666D(1, 1)
  t5 = RF_4B44(RD_9268)
  return v6
RL_6954:
  t6 = RF_666D(1, 1)
  t7 = RF_3C4E(RD_9279, 0, v2, 1)
  v4 = t7
  if (v4 == (-1)) goto RL_6970
  if (v4) goto RL_6972
RL_6970:
  return 0
RL_6972:
  if (!(v4 != (-1))) goto RL_6993
  W[(a0 * 24) + $E9B8] = (W[(a0 * 24) + $E9B8]) + (v4 * 10)
  t8 = RF_6883(1, a0, a1, a2, a3)
RL_6993:
  return v6

RF_6995:
  // frame 8
  v8 = 1
  t1 = RF_6701(1, a2, a3)
  v2 = 0
RL_69A5:
  t2 = RF_662A(v8)
  v8 = 0
  t3 = RF_2FB9(RD_9288, 1)
  t4 = RF_490C(a2 + 1, a3 + 4, 2, a0)
  v4 = t4
  if (!(v4 != 255)) goto RL_69EE
  v6 = W[((B[a1 + v4]) * 24) + $E9B8]
  t5 = RF_669A(1)
  t6 = RF_666D(1, 1)
  t7 = RF_6925(B[a1 + v4], v4, a2, a3)
  v2 = t7
RL_69EE:
  if (v4 == 255) goto RL_69FC
  if (!(v2 == 1)) goto RL_69A5
RL_69FC:
  return

RF_69FD:
  // frame 0
  t1 = RF_40A5(a0)
  t2 = RL_8898(t1 + 15)
  return t2

RF_6A0E:
  // frame 0
  t1 = RF_69FD(a0)
  t2 = RF_3619(RD_929C, W[(a0 * 7) + $EB96], t1)
  return t2

RF_6A2A:
  // frame 16
  t1 = RF_69FD(a3)
  t2 = RL_8962((W[(a3 * 7) + $EB96]) + W[a0], t1)
  v2 = t2
  t3 = RF_669A(1)
  t4 = RF_666D(1, 1)
  t5 = RF_3C4E(RD_92A4, 0, v2, 1)
  v4 = t5
  if (!(v4 == (-1))) goto RL_6A66
  return v4 == (-1)
RL_6A66:
  v6 = W[(a3 * 7) + $EB96]
  v16 = (a3 * 24) + g_cargo
  if (!(v4 < v6)) goto RL_6AE2
  v10 = (v6 - v4) * (B[v16 + 22])
  v14 = W[a1] * W[a0]
  W[a1] = (v10 + v14) / ((v6 - v4) + W[a0])
  goto RL_6B32
RL_6AE2:
  v10 = (B[v16 + 22]) * v6
  v14 = (v4 - v6) * W[a1]
  B[v16 + 22] = (v14 + v10) / v4
RL_6B32:
  W[a0] = L
  W[(a3 * 7) + $EB96] = v4
  t6 = RF_2FB9(RD_92B2, 1)
  t7 = RF_2F8F(a4 + 8, (a2 * 2) + a5)
  t8 = RF_6A0E(a3)
  if (!((byte)(g_fleets+15) & 2)) goto RL_6B66
  goto RL_6B6C
RL_6B66:
RL_6B6C:
  t9 = RF_2F8F(a4 + 5, L)
  t10 = RF_3619(RD_92B6, W[a0])
  return t10

RF_6B80:
  // frame 6
  v4 = a0
  v6 = g_fleets
  if (!((B[v6 + 15]) & 2)) goto RL_6B95
  v4 = 5
RL_6B95:
  if (!(a3 == 255)) goto RL_6B9F
  a3 = 0
RL_6B9F:
  t1 = RF_4F65(a4 - 2, a5 - 1, 18, (v4 * 2) + 4, 0, 0)
  goto RL_6C00
RL_6BB8:
  t2 = RF_2F8F(a4 + 8, (v2 * 2) + a5)
  t3 = RF_6A0E(B[a1 + v2])
  t4 = RF_40A5((B[((B[a1 + v2]) * 7) + $EB98]) & 15)
  W[(v2 * 2) + a2] = t4
  t5 = RF_2F8F(a4, ((v2 * 2) + a5) + 1)
  t6 = RF_40DE(W[(v2 * 2) + a2])
RL_6C00:
  v2 = L
  if (v2 < a0) goto RL_6BB8
  t7 = RF_2F8F(a4 + 5, (v4 * 2) + a5)
  t8 = RF_3619(RD_92BF, a3)
  return t8

RF_6C1E:
  // frame 45
  v45 = 1
  t1 = RL_8502(0, &v5)
  v21 = t1
  t2 = RF_6B80(v21, &v5, &v15, a0, a1, a2)
  goto RL_6C64
RL_6C46:
  W[(v17 * 2) + (&v37)] = W[((B[v17 + (&v5)]) * 7) + $EB96]
RL_6C64:
  v17 = L
  if (v17 < v21) goto RL_6C46
  v39 = 1
  if (!(a0 == 255)) goto RL_6C7D
  goto RL_6C7E
RL_6C7D:
RL_6C7E:
  v27 = L
  v25 = 90
RL_6C84:
  t3 = RF_662A(v45)
  v45 = 0
  t4 = RF_2FB9(RD_92C8, 1)
  t5 = RF_490C(a1 - 1, a2 + 1, 2, v21)
  v19 = t5
  if (!(v19 != 255)) goto RL_6CCC
  t6 = RF_6A2A(&v27, &v25, v19, B[v19 + (&v5)], a1, a2, v21)
  goto RL_6D72
RL_6CCC:
  t7 = RF_669A(1)
  if (!v27) goto RL_6D56
  t8 = RF_666D(2, 1)
  t9 = RF_2FB9(RD_92D4, 1)
  if ((byte)$F28C) goto RL_6CEF
  goto RL_6CFD
RL_6CEF:
  if (!((byte)$F28C == 1)) goto RL_6CFB
  goto RL_6CFD
RL_6CFB:
RL_6CFD:
  v23 = L
  t10 = RF_2F8F(8, v23)
  t11 = RF_2FB9(RD_92F0, 1)
  t12 = RF_3787(RD_92FD, 2, 8, v23 + 1, 8, 1, 1, 1)
  v43 = t12
  if (!(v43 == (-1))) goto RL_6D2F
  goto RL_6D32
RL_6D2F:
RL_6D32:
  v19 = L
  switch (v19) {3 cases}

RF_6DB5:
  // frame 4
  v2 = 0
  goto RL_6DD2
RL_6DBF:
  if (!(W[(v4 * 2) + a0])) goto RL_6DD0
  v2 = v2 + (W[(v4 * 2) + a0])
RL_6DD0:
RL_6DD2:
  v4 = L
  if (v4 < 8) goto RL_6DBF
  return (W[a0 + 16]) - v2

RF_6DE0:
  // frame 0
  t1 = RF_604A(3, (a0 * 14) + 2, a1, a0 + 13, (16 - a1) + 3, $2000)
  return t1

RF_6DFD:
  // frame 18
  v16 = 3
  v18 = 3
  t1 = RL_8502(0, &v14)
  v4 = t1 - 1
  goto RL_6E3D
RL_6E15:
  t2 = RF_2F8F(v16, ((v2 * 2) + v18) + 1)
  t3 = RF_40A5((B[((B[v2 + (&v14)]) * 7) + $EB98]) & 15)
  t4 = RF_40DE(t3)
RL_6E3D:
  v2 = L
  if (v2 <= v4) goto RL_6E15
RL_6E44:
  t5 = RF_666D(1, 0)
  t6 = RF_669A(0)
  t7 = RF_2FB9(RD_931F, 1)
  t8 = RF_490C(v16 - 1, v18 + 1, 2, v4 + 1)
  v6 = t8
  if (!(v6 != 255)) goto RL_6EB1
  t9 = RF_65D6()
  t10 = RF_65BE(1)
  t11 = RF_2FB9(RD_932F, 0)
  t12 = RF_40A5((B[((B[v6 + (&v14)]) * 7) + $EB98]) & 15)
  t13 = RF_40DE(t12)
  t14 = RF_2F8F(8, 25)
  t15 = RF_3CFF()
  v8 = t15
  if (!v8) goto RL_6E44
  return B[v6 + (&v14)]
RL_6EB1:
  return 255

RF_6EB5:
  // frame 10
  v10 = (a0 * 24) + g_cargo
  v6 = v10 + 1
  v8 = v10 + 6
  v2 = 3
  goto RL_6EF0
RL_6ECF:
  if (!(W[(v4 * 2) + v8])) goto RL_6EEE
  B[a1 + v2] = B[v6 + v4]
  W[(v2 * 2) + a3] = W[(v4 * 2) + v8]
  v2 = v2 + 1
RL_6EEE:
RL_6EF0:
  v4 = L
  if (v4 < 5) goto RL_6ECF
  goto RL_6F0C
RL_6EFA:
  B[a1 + v2] = 255
  W[(v2 * 2) + a3] = 0
  v2 = v2 + 1
RL_6F0C:
  if (v2 < 8) goto RL_6EFA
  v4 = 0
RL_6F14:
  B[a1 + v4] = v4 + 26
  v4 = v4 + 1
  if (v4 < 3) goto RL_6F14
  W[a3] = (W[v10 + 18]) / 10
  W[a3 + 2] = (W[v10 + 16]) / 10
  W[a3 + 4] = W[v10 + 20]
  t1 = RF_40A5((B[(a0 * 7) + $EB98]) & 15)
  t2 = RL_8898(t1 + 18)
  W[a3 + 16] = t2
  return t2

RF_6F5B:
  // frame 0
  t1 = RF_666D(3, 0)
  t2 = RF_6DB5(a0)
  t3 = RF_3619(RD_934B, t2)
  return t3

RF_6F74:
  // frame 10
  v10 = 0
  t1 = RF_2FB9(RD_935C, 1)
  v2 = 0
  goto RL_6FE9
RL_6F88:
  if (!((B[a1 + v4]) != 255)) goto RL_6FE7
  if (!(v4 < 3)) goto RL_6FB2
  t2 = RF_2F8F(3, (v2 * 2) + 3)
  t3 = RF_2FB9(W[(v4 * 2) + RD_9307], 1)
  goto RL_6FCE
RL_6FB2:
  t4 = RF_2F8F(3, (v2 * 2) + 4)
  t5 = RL_8875(((B[a1 + v4]) * 2) + $1B49)
  t6 = RF_40DE(t5)
RL_6FCE:
  t7 = RF_2F8F(12, (v2 * 2) + 3)
  t8 = RF_3619(RD_9360, W[(v4 * 2) + a3])
  v2 = v2 + 1
RL_6FE7:
RL_6FE9:
  v4 = L
  if (v4 < 8) goto RL_6F88
  v6 = 0
  goto RL_703D
RL_6FF5:
  if (!(W[(v4 * 2) + a2])) goto RL_703B
  v8 = 0
RL_6FFF:
  if (!((B[a1 + v8]) == v4)) goto RL_700D
  v10 = 1
  goto RL_7016
RL_700D:
  v8 = v8 + 1
  if (v8 < 8) goto RL_6FFF
RL_7016:
  if (!(v2 < 8)) goto RL_7039
  if (v10) goto RL_7039
  t9 = RF_2F8F(3, (v2 * 2) + 3)
  t10 = RF_2FB9(RD_9364, 1)
  v2 = v2 + 1
  v6 = 1
  goto RL_7045
RL_7039:
  v10 = 0
RL_703B:
RL_703D:
  v4 = L
  if (v4 < 26) goto RL_6FF5
RL_7045:
  goto RL_705C
RL_7049:
  t11 = RF_2F8F(3, (v4 * 2) + 3)
  t12 = RF_2FB9(RD_9372, 1)
RL_705C:
  v4 = L
  if (v4 < 8) goto RL_7049
  t13 = RF_6F5B(a3)
  return (v2 - 1) - v6

RF_706D:
  // frame 10
  v10 = (a0 * 24) + g_cargo
  v2 = v10 + 1
  v8 = v10 + 6
  v6 = 0
RL_7083:
  B[v2 + v6] = 255
  W[(v6 * 2) + v8] = 0
  v6 = v6 + 1
  if (v6 < 5) goto RL_7083
  v4 = 0
  goto RL_70C5
RL_70A1:
  if (!((B[a1 + v6]) != 255)) goto RL_70C3
  B[v2 + v4] = B[a1 + v6]
  W[(v4 * 2) + v8] = W[(v6 * 2) + a3]
  v4 = v4 + 1
RL_70C3:
RL_70C5:
  v6 = L
  if (v6 < 8) goto RL_70A1
  W[v10 + 18] = W[a3] * 10
  W[v10 + 16] = (W[a3 + 2]) * 10
  W[v10 + 20] = W[a3 + 4]
  return W[a3 + 4]

RF_70E8:
  // frame 6
  v2 = 0
  v6 = 3
  goto RL_7127
RL_70F4:
  if (!(W[(v2 * 2) + a2])) goto RL_7124
  v4 = 0
RL_70FE:
  if (!((B[a0 + v4]) != 255)) goto RL_711B
  if (!((B[a0 + v4]) == v2)) goto RL_711B
  B[a1 + v6] = v2
  v6 = v6 + 1
RL_711B:
  v4 = v4 + 1
  if (v4 < 8) goto RL_70FE
RL_7124:
  v2 = v2 + 1
RL_7127:
  if (v2 < 26) goto RL_70F4
  goto RL_713C
RL_7132:
  B[a1 + v2] = 255
RL_713C:
  v2 = L
  if (v2 < 29) goto RL_7132
  v2 = 26
RL_7147:
  B[(a1 + v2) - 26] = v2
  v2 = v2 + 1
  if (v2 < 29) goto RL_7147
  return v6 - 1

RF_715C:
  // frame 8
  v2 = 0
  v4 = 0
  v8 = 0
  goto RL_71AB
RL_716A:
  if (!(W[(v4 * 2) + a2])) goto RL_71A8
  v6 = 0
RL_7174:
  if (!((B[a0 + v6]) != 255)) goto RL_718D
  if (!((B[a0 + v6]) == v4)) goto RL_718D
  v2 = 1
  goto RL_7196
RL_718D:
  v6 = v6 + 1
  if (v6 < 8) goto RL_7174
RL_7196:
  if (v2) goto RL_71A6
  B[a1 + v8] = v4
  v8 = v8 + 1
  goto RL_71A8
RL_71A6:
  v2 = 0
RL_71A8:
  v4 = v4 + 1
RL_71AB:
  if (v4 < 26) goto RL_716A
  goto RL_71C0
RL_71B6:
  B[a1 + v4] = 255
RL_71C0:
  v4 = L
  if (v4 < 29) goto RL_71B6
  if (v8) goto RL_71D0
  return 255
RL_71D0:
  return v8 - 1

RF_71D3:
  // frame 4
  v4 = 0
  t1 = RF_2FB9(RD_9379, 1)
  goto RL_7242
RL_71E6:
  if (!(v4 < 3)) goto RL_7206
  t2 = RF_2F8F(17, (v4 * 2) + 3)
  t3 = RF_2FB9(W[(v2 * 2) + RD_9307], 1)
  goto RL_7223
RL_7206:
  t4 = RF_2F8F(17, (v4 * 2) + 4)
  t5 = RL_8875(((B[a0 + v2]) * 2) + $1B49)
  t6 = RF_40DE(t5)
RL_7223:
  t7 = RF_2F8F(26, (v4 * 2) + 3)
  t8 = RF_3619(RD_937D, W[((B[a0 + v2]) * 2) + a1])
  v4 = v4 + 1
RL_7242:
  v2 = L
  if (!((B[a0 + v2]) != 255)) goto RL_7254
  if (v2 < 8) goto RL_71E6
RL_7254:
  return

RF_7255:
  // frame 6
  t1 = RF_6DE0(1, 3)
  t2 = RF_2FB9(RD_9381, 1)
  v6 = 0
  goto RL_72E1
RL_7270:
  if (!((B[a2 + v2]) != 255)) goto RL_72F0
  goto RL_7297
RL_727F:
  if (!((B[a1 + v4]) == (B[a2 + v2]))) goto RL_7295
  t3 = RF_2FB9(RD_9385, 1)
RL_7295:
RL_7297:
  v4 = L
  if (!(B[a1 + v4])) goto RL_72A5
  if (v4 < 5) goto RL_727F
RL_72A5:
  t4 = RF_2F8F(17, (v6 * 2) + 4)
  t5 = RL_8875(((B[a2 + v2]) * 2) + $1B49)
  t6 = RF_40DE(t5)
  t7 = RF_2F8F(26, (v6 * 2) + 3)
  t8 = RF_3619(RD_9389, W[((B[a2 + v2]) * 2) + a3])
  v6 = v6 + 1
RL_72E1:
  v2 = L
  if (!(v6 < 8)) goto RL_72EF
  if (v2 < 29) goto RL_7270
RL_72EF:
  return
RL_72F0:
  return

RF_72F1:
  // frame 2
  t1 = RF_2FB9(RD_938D, 1)
  v2 = 0
RL_7300:
  if (!((B[a1 + v2]) == (B[a2 + a0]))) goto RL_7328
  t2 = RF_2F8F(26, (v2 * 2) + 3)
  t3 = RF_3619(RD_9391, W[((B[a2 + a0]) * 2) + a3])
RL_7328:
  v2 = v2 + 1
  if (v2 < 8) goto RL_7300
  return v2 < 8

RF_7332:
  // frame 97
  v2 = 2
  v4 = 4
  v6 = 8
  v16 = 0
  v95 = 0
  v12 = 1
  v24 = 0
  t1 = RF_6DE0(1, 3)
  t2 = RF_70E8(a2, &v57, a3)
  v20 = t2
  t3 = RF_715C(a2, &v86, a3)
  v22 = t3
  t4 = RF_71D3(&v57, a3)
RL_736A:
  t5 = RF_362A(0)
  v18 = t5
  if (!(v18 != $8000)) goto RL_7AAB
  t6 = RF_6DB5(a4)
  v93 = t6
  v6 = 8
  t7 = RF_3E5A(0, (v2 << 3) - 1, (((v95 * 2) + v4) << 3) - 5, 1, 2, $26CC, g_fh_fdata)
  switch (v18) {6 cases}

RF_7AAC:
  // frame 34
  t1 = sys36_memset_long(126, &v8, 255, 8)
  t2 = sys36_memset_long(126, &v34, 0, 18)
  t3 = RF_6EB5(a0, &v8, a1, &v34)
  t4 = RF_6DE0(0, 3)
  t5 = RF_6F74(a0, &v8, a1, &v34)
  v16 = t5
  t6 = RF_7332(v16, a0, &v8, a1, &v34)
  t7 = RF_706D(a0, &v8, a1, &v34)
  return t7

RF_7B11:
  // frame 2
  t1 = RF_2F8F(3, 2)
  t2 = RF_2FB9(RD_945D, 0)
  v2 = 0
RL_7B26:
  t3 = RF_2F8F((v2 * 14) + 12, 2)
  t4 = RF_2FB9(RD_9463, 0)
  v2 = v2 + 1
  if (v2 < 2) goto RL_7B26
  t5 = RF_2F8F(17, 2)
  t6 = RF_2FB9(RD_9467, 0)
  return t6

RF_7B51:
  // frame 8
  t1 = RF_604A(3, 0, 0, 32, 20, $2000)
  v6 = 0
  v8 = g_fleets
  (byte)$F28C = 0
  t2 = RF_530E(0, 0)
  t3 = RF_4F65(1, 1, 30, 19, 2, 0)
  if ((B[v8 + 15]) & 2) goto RL_7B91
  if (!((B[v8 + 15]) & 32)) goto RL_7B9D
RL_7B91:
  t4 = sys36_memset_long(126, a0, 0, 58)
RL_7B9D:
  t5 = RF_6613()
  t6 = sys5_tilemap_write(3, 15, 3, 1, 16, $20FA)
RL_7BAE:
  t7 = sys5_tilemap_write(3, 3, 2, 26, 1, $2000)
  t8 = RF_6DE0(0, 3)
  t9 = RF_2FB9(RD_946F, 1)
  t10 = RF_6DFD()
  v2 = t10
  if (!(v2 == 255)) goto RL_7C1A
  v4 = 0
RL_7BD8:
  if (!(W[(v4 * 2) + a0])) goto RL_7BE5
  v6 = 1
  goto RL_7BEF
RL_7BE5:
  v4 = v4 + 1
  if (v4 < 26) goto RL_7BD8
RL_7BEF:
  t11 = RF_669A(0)
  t12 = RF_666D(1, 0)
  if (!v6) goto RL_7C05
  goto RL_7C09
RL_7C05:
RL_7C09:
  t13 = RF_2FB9(RD_9491, 1)
  t14 = RF_3CFF()
  if (t14) goto RL_7C15
  v2 = 0
RL_7C15:
  v6 = 0
  goto RL_7C36
RL_7C1A:
  t15 = RF_2FB9(RD_949A, 1)
  t16 = RF_7B11()
  t17 = RF_7AAC(v2, a0)
  t18 = sys8_oam_hide_all()
  t19 = RF_6DE0(1, 3)
RL_7C36:
  if (v2 != 255) goto RL_7BAE
  return v2 != 255

RF_7C3F:
  // frame 2
  t1 = RF_49B5()
  v2 = t1
  t2 = RF_55F4((byte)(g_fleets+2), (byte)(g_fleets+3), (byte)(g_fleets+8))
  return v2

RF_7C5A:
  // frame 0
  t1 = RF_3E7E(1, 0)
  t2 = RF_3E7E(1, 1)
  t3 = RF_3EC3(0, 1, 1)
  t4 = sys76_lz_decompress(0, $A400, 16)
  t5 = sys11_vram_load_tiles(288, 53, 0, 127, 1)
  t6 = sys11_vram_load_tiles(352, 89, $0720, 127, 1)
  t7 = sys11_vram_load_tiles(448, 23, $1240, 127, 1)
  t8 = sys13_vram_load_obj_tiles(320, 4, $06A0, 127)
  t9 = sys76_lz_decompress(0, $B1CF, 16)
  t10 = sys11_vram_load_tiles(256, 32, 0, 127, 2)
  t11 = sys11_vram_load_tiles(232, 4, $0600, 127, 2)
  t12 = sys76_lz_decompress(0, $B804, 16)
  t13 = sys13_vram_load_obj_tiles(256, 36, 0, 127)
  t14 = sys13_vram_load_obj_tiles(304, 12, $0480, 127)
  t15 = sys13_vram_load_obj_tiles(352, 4, $0600, 127)
  t16 = sys11_vram_load_tiles(544, 96, $DCDE, 16, 1)
  t17 = sys11_vram_load_tiles(672, 28, $8000, 15, 1)
  t18 = sys11_vram_load_tiles(640, 16, $EC9E, 16, 1)
  t19 = sys13_vram_load_obj_tiles(384, 18, $EA5E, 16)
  return t19

RF_7D57:
  // frame 2
  if ((byte)$EF6A) goto RL_7D63
  return (byte)$EF6A
RL_7D63:
  t1 = sys36_memset_long(127, $D800, 0, $27FF)
  t2 = RF_4F48(1)
  t3 = RF_3D7C()
  t4 = RF_7C5A()
  (byte)$F274 = 255
  $EF66 = -1
  (byte)$EF6A = 0
  v2 = g_fleets
  if (!((B[v2 + 3]) < 7)) goto RL_7D9C
  goto RL_7D9D
RL_7D9C:
RL_7D9D:
  (byte)$F28C = L
  t5 = RF_59AF(B[v2], B[v2 + 1])
  if ((byte)$F193) goto RL_7DB6
  t6 = RF_4F2A(1)
RL_7DB6:
  return

RF_7DB7:
  // frame 0
  if (!((byte)$EF6A != 1)) goto RL_7DCE
  t1 = RF_58B6(0, 0, 0)
  t2 = RF_4F05()
RL_7DCE:
  (byte)$F28C = 0
  t3 = RF_530E(0, 0)
  return t3

RF_7DD9:
  // frame 0
  t1 = RF_4F48(1)
  t2 = RF_58B6(0, 0, 0)
  (byte)$F28C = 0
  t3 = RF_530E(0, 0)
  return t3

RF_7DF5:
  // frame 2
  if (a0 % 4) goto RL_7E04
  goto RL_7E05
RL_7E04:
RL_7E05:
  v2 = L
  if (a0 % 100) goto RL_7E15
  if (a0 % 400) goto RL_7E1C
RL_7E15:
RL_7E16:
  v2 = v2 - L
  return v2
RL_7E1C:
  goto RL_7E16

RF_7E20:
  // frame 2
  v2 = W[(a1 * 2) + RD_949E]
  if (!(a1 == 1)) goto RL_7E42
  t1 = RF_7DF5(a0 + $05DC)
  if (!t1) goto RL_7E42
  v2 = v2 + 1
RL_7E42:
  return v2

RF_7E44:
  // frame 15
  t1 = RL_8502(0, &v11)
  v4 = t1
  v2 = 0
  v13 = &v11
  v15 = (&v11) + v4
  goto RL_7E75
RL_7E61:
  v2 = v2 + (B[(B[v13] * 24) + $E9BD])
  v13 = v13 + 1
RL_7E75:
  if (v13 < v15) goto RL_7E61
  v2 = (v2 / v4) + 1
  v6 = (byte)(g_zone_attr+2) & 7
  v4 = ((v6 * 6) + 1) / v2
  t2 = rand(600)
  if (!(t2 < v4)) goto RL_7EC1
  t3 = rand(3)
  if (t3) goto RL_7EB5
  if (!(v4 > 1)) goto RL_7EB5
  if (!(v6 > 5)) goto RL_7EB5
  goto RL_7EBE
RL_7EB5:
  if (!((byte)$EF83 >= 7)) goto RL_7EC1
RL_7EBE:
  (byte)$F192 = L
RL_7EC1:
  return

RF_7EC2:
  // frame 0
  if (!((byte)$EF6A == 1)) goto RL_7ED0
  return (byte)$EF6A == 1
RL_7ED0:
  t1 = RF_5BBB(a0)
  t2 = rand(3)
  if (!((byte)g_month > 2)) goto RL_7EF3
  if (!((byte)g_month < 9)) goto RL_7EF3
  goto RL_7EF6
RL_7EF3:
RL_7EF6:
  (byte)$EF82 = (((L & 15) + t2) + 7) & 7
  t3 = rand(2)
  if (!((byte)g_month > 2)) goto RL_7F1E
  if (!((byte)g_month < 9)) goto RL_7F1E
  goto RL_7F21
RL_7F1E:
RL_7F21:
  (byte)$EF83 = (L & 15) + t3
  t4 = RF_7E44()
  if (!((byte)(g_fleets+15) & 32)) goto RL_7F49
  if ((byte)(g_fleets+15) & 64) goto RL_7F49
  if (!(a0 < 3)) goto RL_7F49
  t5 = RF_200C(6, 1)
RL_7F49:
  return

RF_7F4A:
  // frame 0
  if (!(a0 & $0F30)) goto RL_7F59
  return 1
RL_7F59:
  return 0

RF_7F5B:
  // frame 0
  if (!(a0 & $C0C0)) goto RL_7F6A
  return 1
RL_7F6A:
  return 0

RF_7F6C:
  // frame 0
  t1 = sys55_sprite_anim_stream(0, 2, 640, a0, 4, 40, 0, $EC9E, 16)
  t2 = sys55_sprite_anim_stream(1, 2, 644, a0, 0, 0, 0, $ED1E, 16)
  t3 = sys55_sprite_anim_stream(2, 2, 648, a0, 0, 0, 0, $ED9E, 16)
  t4 = sys55_sprite_anim_stream(3, 2, 652, a0, 0, 0, 15, $EE1E, 16)
  return t4

RF_7FC3:
  // frame 6
  v6 = $D800
  v4 = 0
RL_7FCE:
  v2 = 0
RL_7FD0:
  if (!(v4 & 1)) goto RL_7FE0
  goto RL_7FE3
RL_7FE0:
RL_7FE3:
  t1 = sys23_memcpy_long(126, L, 127, v6, 4)
  v6 = v6 + 4
  v2 = v2 + 1
  if (v2 < 15) goto RL_7FD0
  v4 = v4 + 1
  if (v4 < 29) goto RL_7FCE
  t2 = sys6_tilemap_copy(2, 2, 1, 28, 28, $D800, 127)
  t3 = RF_3EC3(19, 4, 0)
  t4 = RF_21EA(1, 1)
  t5 = RF_7F6C(1)
  return t5

RF_8029:
  // frame 12
  t1 = rand(20)
  if (t1) goto RL_803D
  t2 = RF_200C(1, 1)
RL_803D:
  v4 = g_fleets
  v2 = 0
RL_8043:
  if ((B[v4 + 15]) & 8) goto RL_8099
  B[v4 + 15] = (B[v4 + 15]) & 239
  if (!((B[v4 + 15]) & 2)) goto RL_8099
  if (v2) goto RL_8071
  t3 = RF_7DB7()
  t4 = RF_200C(7, 1)
  (byte)$EA8E = 0
  goto RL_8090
RL_8071:
  v10 = ((v2 - 1) * 51) + g_captains
  if (B[v10 + 6]) goto RL_808A
  t5 = RF_4079(2, v2)
  goto RL_8090
RL_808A:
  B[v10 + 6] = (B[v10 + 6]) - 1
RL_8090:
  B[v4 + 15] = (B[v4 + 15]) | 16
RL_8099:
  if ((byte)g_ending) goto RL_8264
  v4 = v4 + 16
  v2 = v2 + 1
  if (v2 < 21) goto RL_8043
  goto RL_8264
RL_80B0:
  if (!(byte)$F193) goto RL_80CA
  (byte)$F194 = (byte)$F194 + 1
  if (!((byte)$F194 > 60)) goto RL_80CA
  (byte)$F193 = 2
RL_80CA:
  if ((byte)$EA8E % 5) goto RL_80E2
  if ((byte)$EF6A) goto RL_80E2
  t6 = RF_7EC2((byte)$EA8E / 5)
RL_80E2:
  v4 = g_fleets
  v6 = g_fleets
  v8 = g_fleets + 336
  v2 = 0
  goto RL_8251
RL_80F0:
  (byte)$F198 = v2
  if (!((B[v6 + 15]) & 32)) goto RL_813B
  t7 = RF_362A(0)
  v12 = t7
  t8 = RF_7F4A(v12)
  if (t8) goto RL_8115
  t9 = RF_7F5B(v12)
  if (t9) goto RL_8115
  v12 = 0
RL_8115:
  if ((byte)$F193) goto RL_813B
  if (!v12) goto RL_813B
  if ((B[v6 + 15]) & 16) goto RL_813B
  if (!((B[v6 + 15]) & 32)) goto RL_813B
  B[v6 + 15] = (B[v6 + 15]) & 191
RL_813B:
  if ((B[v4 + 15]) & 8) goto RL_8244
  if ((B[v4 + 15]) & 16) goto RL_8244
  if ((B[v4 + 15]) & 32) goto RL_8244
  (byte)$F197 = 0
  if (v2) goto RL_8160
  t10 = RF_7D57()
RL_8160:
  t11 = RF_362A(0)
  v12 = t11
  t12 = RF_7F4A(v12)
  if (t12) goto RL_8178
  t13 = RF_7F5B(v12)
  if (t13) goto RL_8178
  v12 = 0
RL_8178:
  if ((byte)$F193) goto RL_81C2
  if (!v12) goto RL_81C2
  if ((B[v6 + 15]) & 16) goto RL_81C2
  if ((B[v6 + 15]) & 32) goto RL_81C2
  t14 = RF_7F4A(v12)
  if (!t14) goto RL_81AA
  if (!((B[v6 + 15]) & 1)) goto RL_81AA
  t15 = RF_7C3F()
  goto RL_81B0
RL_81AA:
  t16 = RF_200C(4, 1)
RL_81B0:
  if (!(byte)$F197) goto RL_81C2
  if (!((byte)$F197 != 1)) goto RL_81C2
  (byte)$F198 = 0
RL_81C2:
  t17 = rand(60)
  if (!t17) goto RL_81EF
  if ((B[v4 + 15]) & 16) goto RL_81FB
  if (!((B[v4] / 3) == (byte)$F165)) goto RL_81FB
  if (!(((B[v4 + 1]) / 3) == (byte)$F166)) goto RL_81FB
RL_81EF:
  if ((byte)$F197) goto RL_81FB
  t18 = RF_4079(3, v2)
RL_81FB:
  if (!(byte)$F197) goto RL_8244
  (byte)$F197 = (byte)$F197 - 1
  if (!(byte)$F198) goto RL_8214
  if ((byte)$F197) goto RL_823E
RL_8214:
  if ((B[v6 + 15]) & 16) goto RL_8244
  t19 = RF_7DD9()
  t20 = RF_4079(36, (byte)$F198)
  t21 = RF_7D57()
  if (!(byte)$F193) goto RL_8244
  t22 = RF_7FC3()
  t23 = RF_4F2A(1)
  goto RL_8244
RL_823E:
  t24 = RF_200C(9, 1)
RL_8244:
  if ((byte)g_ending) goto RL_8257
  v2 = v2 + 1
  v4 = v4 + 16
RL_8251:
  if (v4 < v8) goto RL_80F0
RL_8257:
  if ((byte)g_ending) goto RL_826D
  (byte)$EA8E = (byte)$EA8E + 1
RL_8264:
  if ((byte)$EA8E < 30) goto RL_80B0
RL_826D:
  (byte)$EA8E = 0
  return 0

deadline_check:
  // frame 4
  (byte)g_year = (byte)g_year + 1
  if (!((byte)g_year > 21)) goto RL_828B
  (byte)g_ending = 3
RL_828B:
  v2 = $EAC0
  v4 = $EAC0 + 210
  goto RL_829E
RL_8296:
  B[v2] = B[v2] + 1
  v2 = v2 + 10
RL_829E:
  if (v2 < v4) goto RL_8296
  return v2 < v4

RF_82A5:
  // frame 2
  goto RL_82EC
RL_82AD:
  t1 = RF_7E20((byte)g_year, (byte)g_month)
  v2 = t1
  goto RL_82CD
RL_82BD:
  t2 = RF_8029()
  if ((byte)g_ending) goto RL_82D5
  (byte)g_day = (byte)g_day + 1
RL_82CD:
  if ((byte)g_day < v2) goto RL_82BD
RL_82D5:
  if ((byte)g_ending) goto RL_82F4
  (byte)g_day = 0
  t3 = RF_200C(2, 1)
  (byte)g_month = (byte)g_month + 1
RL_82EC:
  if ((byte)g_month < 12) goto RL_82AD
RL_82F4:
  if ((byte)g_ending) goto RL_8307
  (byte)g_month = 0
  t4 = deadline_check()
  if (!(byte)g_ending) goto RL_82EC
RL_8307:
  return

RF_8308:
  // frame 10
  if (!(g_portrait < 33)) goto RL_831B
  goto RL_831D
RL_831B:
RL_831D:
  v2 = L
  if (!(g_portrait < 33)) goto RL_832D
  goto RL_8332
RL_832D:
RL_8332:
  v6 = L
  v8 = ((v6 * 960) + ((v6 + 1) * 2)) + $8000
  if (!a0) goto RL_834B
  goto RL_834D
RL_834B:
RL_834D:
  v4 = L
  if (!a0) goto RL_8358
  goto RL_835B
RL_8358:
RL_835B:
  v10 = L
  t1 = sys11_vram_load_tiles(v4, 30, v8, v2, 1)
  t2 = RF_3DF1(1, (byte)$F290, (byte)$F291, 5, 6, v10, g_fh_cbmap0)
  return t2

portrait_compose:
  // frame 978
  v2 = (a1 & $0C00) >> 10
  v4 = (a1 & 768) >> 8
  v6 = (a1 & 192) >> 6
  v8 = (a1 & 48) >> 4
  v10 = (a1 & 12) >> 2
  v12 = a1 & 3
  v18 = (v2 * 40) + RD_94BE
  v14 = (v2 * 20) + RD_955E
  v16 = v14 + 16
  t1 = sys23_memcpy_long(27, (W[((v12 * 2) + v18) + 32]) + $8000, 126, (W[v16] << 5) + (&v978), (W[v16 + 2]) << 5)
  v16 = v14
  t2 = sys23_memcpy_long(27, (W[(v4 * 2) + v18]) + $8000, 126, (W[v16] << 5) + (&v978), (W[v16 + 2]) << 5)
  v16 = v14 + 4
  t3 = sys23_memcpy_long(27, (W[((v6 * 2) + v18) + 8]) + $8000, 126, (W[v16] << 5) + (&v978), (W[v16 + 2]) << 5)
  v16 = v14 + 8
  t4 = sys23_memcpy_long(27, (W[((v8 * 2) + v18) + 16]) + $8000, 126, (W[v16] << 5) + (&v978), (W[v16 + 2]) << 5)
  v16 = v14 + 12
  t5 = sys23_memcpy_long(27, (W[((v10 * 2) + v18) + 24]) + $8000, 126, (W[v16] << 5) + (&v978), (W[v16 + 2]) << 5)
  t6 = sys11_vram_load_tiles(a0, 30, &v978, 126, 1)
  return t6

RF_8495:
  // frame 4
  if (!a0) goto RL_84A3
  goto RL_84A5
RL_84A3:
RL_84A5:
  v2 = L
  if (!a0) goto RL_84B0
  goto RL_84B3
RL_84B0:
RL_84B3:
  v4 = L
  t1 = portrait_compose(v2, g_portrait)
  t2 = RF_3DF1(1, (byte)$F290, (byte)$F291, 5, 6, v4, g_fh_cbmap0)
  return t2
RL_84D0:

