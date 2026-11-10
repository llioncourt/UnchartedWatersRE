SCOM_F_9603:
  // frame 0
  t1 = SCOM_F_9955((byte)$F198)
  return t1

SCOM_F_9611:
  // frame 6
  v6 = 0
  v2 = a1 + a0
  goto SCOM_L_964D
SCOM_L_961F:
  v4 = ((B[(B[a1] * 7) + $EB98]) & 15) - 5
  v6 = v6 + ((((((v4 >> 1) + (v4 >> 2)) * 20) + 10) * 3) / (3 - (v4 % 2)))
  a1 = a1 + 1
SCOM_L_964D:
  if (a1 < v2) goto SCOM_L_961F
  return v6 / 5

SCOM_F_9657:
  // frame 12
  v6 = 0
  goto SCOM_L_96BE
SCOM_L_9664:
  v4 = B[v2]
  v10 = (v4 * 7) + g_ships
  if (!(B[v10] <= a2)) goto SCOM_L_96AF
  v12 = ((v4 - 5) * 3) + $E302
  if (!(B[v12] != 255)) goto SCOM_L_96A7
  B[a3 + v6] = B[v12]
  W[(v6 * 2) + a4] = W[v12 + 1]
  v6 = v6 + 1
  B[v10 + 6] = (B[v10 + 6]) & 191
SCOM_L_96A7:
  goto SCOM_L_96B8
SCOM_L_96AF:
  B[v10] = B[v10] - a2
SCOM_L_96B8:
  a2 = L
  if (!a2) goto SCOM_L_96C6
SCOM_L_96BE:
  v2 = L - 1
  if (v2 >= a1) goto SCOM_L_9664
SCOM_L_96C6:
  return v6

SCOM_F_96C8:
  // frame 2
  v2 = (a0 << 4) + g_fleets
  if (!a1) goto SCOM_L_96E6
  t1 = $8A5B(B[v2 + 2], B[v2 + 3], a0)
SCOM_L_96E6:
  B[v2 + 15] = (B[v2 + 15]) | 8
  B[((a0 + 20) * 7) + $E44A] = (B[((a0 + 20) * 7) + $E44A]) | 1
  return (B[((a0 + 20) * 7) + $E44A]) | 1

SCOM_F_96FE:
  // frame 4
  if (!a2) goto SCOM_L_9761
  v2 = a1 + a0
  goto SCOM_L_975B
SCOM_L_970E:
  v4 = ((B[a1] - 5) * 3) + $E302
  if (!(B[v4] == 255)) goto SCOM_L_9754
  B[v4] = B[(a3 + a2) - 1]
  t1 = RF_40A5((B[(B[a1] * 7) + $EB98]) & 15)
  t2 = RL_8898(t1 + 18)
  t3 = RL_8962(W[((a2 - 1) * 2) + a4], t2)
  W[v4 + 1] = t3
  a2 = a2 - 1
SCOM_L_9754:
  if (!a2) goto SCOM_L_9761
  a1 = a1 + 1
SCOM_L_975B:
  if (a1 < v2) goto SCOM_L_970E
SCOM_L_9761:
  return

SCOM_F_9762:
  // frame 2
  v2 = (a0 << 4) + g_fleets
  t1 = RL_8962($EA60 - (W[v2 + 9]), W[(a1 << 4) + g_player_gold])
  W[v2 + 9] = (W[v2 + 9]) + t1
  return (W[v2 + 9]) + t1

SCOM_F_978F:
  // frame 6
  t1 = rand(3)
  if (t1) goto SCOM_L_97B6
  v6 = ((a0 + 20) * 7) + g_player_name_ptr
  t2 = RL_8962((B[v6 + 2]) + 1, 200)
  B[v6 + 2] = t2
SCOM_L_97B6:
  if (!(B[((a0 - 1) * 51) + $DF09])) goto SCOM_L_97C9
  if (!(a1 < 3)) goto SCOM_L_97CF
SCOM_L_97C9:
  t3 = RF_46C6(a0)
  return t3
SCOM_L_97CF:
  v2 = a2 + a1
  goto SCOM_L_97EE
SCOM_L_97D6:
  if (!((B[(B[a2] * 7) + g_ships]) < 20)) goto SCOM_L_97EB
  t4 = RF_46C6(a0)
  return t4
SCOM_L_97EB:
  a2 = a2 + 1
SCOM_L_97EE:
  if (a2 < v2) goto SCOM_L_97D6
  return a2 < v2

SCOM_F_97F5:
  // frame 66
  t1 = RL_8502(a0, &v5)
  v32 = t1
  t2 = RL_8502(a1, &v10)
  v34 = t2
  t3 = SCOM_F_9611(v32, &v5)
  v44 = t3
  t4 = SCOM_F_9611(v34, &v10)
  v46 = t4
  t5 = SCOM_F_9657(v34, &v10, v44, &v15, &v56)
  v40 = t5
  t6 = SCOM_F_9657(v32, &v5, v46, &v20, &v66)
  v42 = t6
  t7 = RL_8502(a0, &v25)
  v36 = t7
  t8 = RL_8502(a1, &v30)
  v38 = t8
  if (v36) goto SCOM_L_9878
  t9 = SCOM_F_96C8(a0, a2)
  goto SCOM_L_98A2
SCOM_L_9878:
  t10 = SCOM_F_978F(a0, v36, &v25)
  t11 = SCOM_F_96FE(v36, &v25, v40, &v15, &v56)
  if (v38) goto SCOM_L_98A2
  t12 = SCOM_F_9762(a0, a1)
SCOM_L_98A2:
  if (v38) goto SCOM_L_98B0
  t13 = SCOM_F_96C8(a1, a2)
  goto SCOM_L_98DA
SCOM_L_98B0:
  t14 = SCOM_F_978F(a1, v38, &v30)
  t15 = SCOM_F_96FE(v38, &v30, v42, &v20, &v66)
  if (v36) goto SCOM_L_98DA
  t16 = SCOM_F_9762(a1, a0)
SCOM_L_98DA:
  return

SCOM_F_98DB:
  // frame 4
  v2 = ((v2 * 2) + 2) << 3
  v4 = (W[((byte)$F28C * 2) + RD_8EC0]) + (((v4 * 2) + 1) << 3)
  t1 = sys10_sprite_move(10, v2, v4, $3B80, 2, 0)
  t2 = sys58_sprites_hide(10, 1)
  t3 = RF_3E7E(1, 1)
  t4 = RF_3EC3(0, 1, 1)
  return t4

SCOM_F_991B:
  // frame 0
  t1 = sys3_palette_dma(SCOM_D_9A14, 126, 208, 32)
  a0 = ((a0 * 2) + 2) << 3
  a1 = (W[((byte)$F28C * 2) + RD_8EC0]) + (((a1 * 2) + 1) << 3)
  t2 = sys10_sprite_move(10, a0, a1, $3B80, 2, 1)
  return t2

SCOM_F_9955:
  // frame 16
  v2 = (byte)$F197
  if (!((byte)g_princess & 1)) goto SCOM_L_999C
  if (!((byte)(g_king_mission+2) > 1)) goto SCOM_L_999C
  if (!((byte)(g_king_mission+2) == 3)) goto SCOM_L_997C
  goto SCOM_L_997F
SCOM_L_997C:
SCOM_L_997F:
  v6 = L
  if (v2 == v6) goto SCOM_L_998E
  if (!((byte)a0 == v6)) goto SCOM_L_999C
SCOM_L_998E:
  t1 = RF_46C6(v2)
  t2 = RF_46C6((byte)a0)
  return t2
SCOM_L_999C:
  v8 = ((byte)a0 << 4) + g_fleets
  v10 = (v2 << 4) + g_fleets
  v12 = (((byte)a0 - 1) * 51) + g_captains
  v14 = ((v2 - 1) * 51) + g_captains
  v16 = 0
  if ((byte)$EF6A) goto SCOM_L_99F7
  if (!((byte)g_fleets == B[v8])) goto SCOM_L_99F7
  if (!((byte)(g_fleets+1) == (B[v8 + 1]))) goto SCOM_L_99F7
  v16 = 1
  t3 = RF_21CA(25)
  t4 = SCOM_F_991B(B[v8 + 2], B[v8 + 3])
SCOM_L_99F7:
  t5 = SCOM_F_97F5(v2, (byte)a0, v16)
  if (!v16) goto SCOM_L_9A13
  t6 = sys16_wait_frames(30)
  t7 = SCOM_F_98DB()
  t8 = RF_229B()
SCOM_L_9A13:
  return
SCOM_D_9A14:

