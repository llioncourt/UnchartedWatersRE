IBENTO_F_9603:
  // frame 0
  t1 = king_summons_check()
  return t1

IBENTO_F_960C:
  // frame 2
  v2 = (a0 * 49) + $F300
  return B[((a2 * 7) + v2) + a1]

IBENTO_F_9623:
  // frame 2
  t1 = IBENTO_F_960C(a0, a1, a2)
  v2 = t1
  if (!(v2 > 4)) goto IBENTO_L_963D
  if (v2 < 17) goto IBENTO_L_965D
IBENTO_L_963D:
  if (!(v2 > 20)) goto IBENTO_L_964B
  if (v2 < 25) goto IBENTO_L_965D
IBENTO_L_964B:
  if (!(v2 > 28)) goto IBENTO_L_9659
  if (v2 < 41) goto IBENTO_L_965D
IBENTO_L_9659:
  goto IBENTO_L_965E
IBENTO_L_965D:
IBENTO_L_965E:
  return

IBENTO_F_965F:
  // frame 4
  v4 = 0
IBENTO_L_9666:
  v2 = 0
IBENTO_L_9668:
  t1 = IBENTO_F_9623(a0, v2, v4)
  if (!t1) goto IBENTO_L_9674
  return 1
IBENTO_L_9674:
  v2 = v2 + 1
  if (v2 < 7) goto IBENTO_L_9668
  v4 = v4 + 1
  if (v4 < 7) goto IBENTO_L_9666
  return 0

IBENTO_F_9688:
  // frame 2
  v2 = 0
IBENTO_L_968F:
  t1 = IBENTO_F_965F(v2)
  if (!t1) goto IBENTO_L_9699
  return 0
IBENTO_L_9699:
  v2 = v2 + 1
  if (v2 < 9) goto IBENTO_L_968F
  return 1

IBENTO_F_96A4:
  // frame 0
  if (!((((B[(a0 >> 1) + IBENTO_D_9DCE]) >> (((1 - (a0 & 1)) * 2) * 2)) & (8 >> ((a2 * 2) + a1))) & 15)) goto IBENTO_L_96D1
  goto IBENTO_L_96D2
IBENTO_L_96D1:
IBENTO_L_96D2:
  return

IBENTO_F_96D3:
  // frame 4
  t1 = RF_40C3(a0)
  v2 = t1
  v4 = v2
  t2 = rand(2)
  W[v2 + 15] = ((((byte)g_title / 3) + t2) + 1) * $0FA0
  t3 = rand(12)
  t4 = $8979(v4, W[(t3 * 2) + IBENTO_D_9DE9])
  t5 = $89A1(v4, IBENTO_D_9EBB)
  t6 = rand(13)
  t7 = $89A1(v4, W[(t6 * 2) + IBENTO_D_9E01])
  return t7

IBENTO_F_9721:
  // frame 25
  if ((byte)(g_king_mission+8)) goto IBENTO_L_9808
  t1 = RL_88F4(g_zone_attr, &v3, 3)
  v25 = 0
  t2 = map_rom_read(&v25, g_map_blocks_ofs, 2)
  t3 = map_rom_read(&v25, g_map_chunks_ofs, 2)
IBENTO_L_975A:
  t4 = rand(24)
  v17 = t4
  t5 = rand(12)
  v19 = t5
  t6 = map_load_zone(v17, v19, $F300)
  t7 = IBENTO_F_9688()
  if (t7) goto IBENTO_L_975A
  t8 = RL_88F4(&v3, g_zone_attr, 3)
IBENTO_L_9786:
  t9 = rand(3)
  v5 = t9
  t10 = rand(3)
  v7 = t10
  t11 = rand(7)
  v9 = t11
  t12 = rand(7)
  v11 = t12
  t13 = IBENTO_F_9623((v7 * 3) + v5, v9, v11)
  if (!t13) goto IBENTO_L_9786
  t14 = IBENTO_F_960C((v7 * 3) + v5, v9, v11)
  v21 = t14
IBENTO_L_97C7:
  t15 = rand(2)
  v13 = t15
  t16 = rand(2)
  v15 = t16
  t17 = IBENTO_F_96A4(v21, v13, v15)
  if (t17) goto IBENTO_L_97C7
  (byte)$EF5D = (v17 * 3) + v5
  (byte)$EF5E = (v19 * 3) + v7
  (byte)$EF5F = (v9 * 2) + v13
  (byte)$EF60 = (v11 * 2) + v15
IBENTO_L_9808:
  (byte)(g_king_mission+3) = 31
  t18 = IBENTO_F_96D3(31)
  return t18

IBENTO_F_9814:
  // frame 0
  B[a0] = 0
  a0 = a0 + 1
  B[a0] = a1
  a0 = a0 + 1
  return a0

IBENTO_F_9827:
  // frame 0
  B[a0] = 1
  a0 = a0 + 1
  B[a0] = a1
  a0 = a0 + 1
  return a0

mission_crates_set:
  // frame 2
  (byte)(g_king_mission+2) = 0
  t1 = rand(3)
  v2 = t1 + (byte)g_title
  (byte)(g_king_mission+3) = B[v2 + IBENTO_D_9EBD]
  (byte)g_princess = 1
  return 1

mission_letter_set:
  // frame 3
  (byte)(g_king_mission+2) = 1
  t1 = rand(2)
  (byte)v1 = t1 + 1
  (byte)(g_king_mission+3) = (byte)v1
  (byte)g_princess = 1
  return 1

IBENTO_F_987A:
  // frame 20
  (byte)(g_king_mission+2) = 2
  v8 = (B[(byte)g_king_mission + g_port_flags]) & 3
  v4 = $EED2
  B[v4] = 3
  v4 = v4 + 1
  B[v4] = 0
  v16 = 1
  if (!v8) goto IBENTO_L_9916
  v2 = g_relations
  v8 = v8 - 1
  v10 = 101
  goto IBENTO_L_98D9
IBENTO_L_98AF:
  if (!(v14 != v8)) goto IBENTO_L_98D7
  if (!((B[(B[(((v8 * 2) * 2) + v14) + IBENTO_D_9EC9]) + v2]) < v10)) goto IBENTO_L_98D7
  v12 = v14
  v10 = B[(B[(((v8 * 2) * 2) + v14) + IBENTO_D_9EC9]) + v2]
IBENTO_L_98D7:
IBENTO_L_98D9:
  v14 = L
  if (v14 < 3) goto IBENTO_L_98AF
  if (!(v10 < 51)) goto IBENTO_L_9916
  v14 = (v12 * 5) + 4
  v18 = (v14 << 4) + g_fleets
  v20 = ((v14 << 4) + g_fleets) + 32
  goto IBENTO_L_9910
IBENTO_L_98FA:
  if ((B[v18 + 15]) & 8) goto IBENTO_L_9909
  v16 = 0
  v6 = v14
  goto IBENTO_L_9916
IBENTO_L_9909:
  v14 = v14 + 1
  v18 = v18 + 16
IBENTO_L_9910:
  if (v18 < v20) goto IBENTO_L_98FA
IBENTO_L_9916:
  if (!v16) goto IBENTO_L_9947
  v14 = 16
  v18 = (v14 << 4) + g_fleets
  v20 = ((v14 << 4) + g_fleets) + 80
  goto IBENTO_L_9941
IBENTO_L_992B:
  if ((B[v18 + 15]) & 8) goto IBENTO_L_993A
  v16 = 0
  v6 = v14
  goto IBENTO_L_9947
IBENTO_L_993A:
  v14 = v14 + 1
  v18 = v18 + 16
IBENTO_L_9941:
  if (v18 < v20) goto IBENTO_L_992B
IBENTO_L_9947:
  if (!v16) goto IBENTO_L_994C
  return v16
IBENTO_L_994C:
  (byte)(g_king_mission+3) = v6
  (byte)g_princess = 1
  return 1

IBENTO_F_9955:
  // frame 10
  v4 = g_player_name_ptr
  v6 = g_player_name_ptr + 287
IBENTO_L_9962:
  v10 = 0
  t1 = rand(90)
  t2 = RL_8875((t1 * 2) + $04FF)
  v2 = t2
  goto IBENTO_L_9987
IBENTO_L_9979:
  if (!(W[v8] == v2)) goto IBENTO_L_9985
  v10 = 1
  goto IBENTO_L_998E
IBENTO_L_9985:
IBENTO_L_9987:
  v8 = L
  if (v8 < v6) goto IBENTO_L_9979
IBENTO_L_998E:
  if (v10) goto IBENTO_L_9962
  W[a0] = v2
  return v2

IBENTO_F_9996:
  // frame 10
  v2 = (a0 * 7) + g_player_name_ptr
  v4 = g_player_name_ptr
  t1 = IBENTO_F_9955(v2)
  t2 = rand(5)
  t3 = RL_8962(t2 + (B[v4 + 2]), 50)
  B[v2 + 2] = t3
  t4 = rand(5)
  t5 = RL_8962(t4 + (B[v4 + 3]), 50)
  B[v2 + 3] = t5
  v10 = ((a0 - 1) * 2) + $E970
  t6 = rand(20)
  B[v10 + 1] = t6
  B[v10] = 0
  t7 = RF_464C(0)
  W[v2 + 4] = t7
  B[v2 + 6] = (B[v2 + 6]) | 1
  return (B[v2 + 6]) | 1

IBENTO_F_99FF:
  // frame 22
  t1 = RF_4221(&v10)
  v16 = t1
IBENTO_L_9A0D:
  t2 = rand(20)
  v18 = t2 + 1
  v22 = 0
  if ((B[(v18 * 7) + $E44A]) & 2) goto IBENTO_L_9A43
  v12 = &v10
  v14 = (&v10) + v16
  goto IBENTO_L_9A3A
IBENTO_L_9A2E:
  if (!(B[v12] == v18)) goto IBENTO_L_9A37
  v22 = 1
IBENTO_L_9A37:
  v12 = v12 + 1
IBENTO_L_9A3A:
  if (v12 < v14) goto IBENTO_L_9A2E
  goto IBENTO_L_9A45
IBENTO_L_9A43:
  v22 = 1
IBENTO_L_9A45:
  if (v22) goto IBENTO_L_9A0D
  if ((B[(v18 * 7) + $E44A]) & 1) goto IBENTO_L_9A5B
  t3 = IBENTO_F_9996(v18)
IBENTO_L_9A5B:
  B[(v18 * 7) + $E44A] = (B[(v18 * 7) + $E44A]) | 2
  return v18

IBENTO_F_9A6A:
  // frame 6
IBENTO_L_9A6F:
  v4 = 0
  t1 = rand(20)
  v6 = t1
  v2 = a0 + a1
  goto IBENTO_L_9A8B
IBENTO_L_9A7F:
  if (!(B[a0] == v6)) goto IBENTO_L_9A88
  v4 = 1
IBENTO_L_9A88:
  a0 = a0 + 1
IBENTO_L_9A8B:
  if (a0 < v2) goto IBENTO_L_9A7F
  if (v4) goto IBENTO_L_9A6F
  return v6

mission_treasure_set:
  // frame 19
  v19 = g_fleets
  (byte)(g_king_mission+2) = 3
  v7 = $EED2
  B[v7] = 3
  v7 = v7 + 1
  t1 = rand(2)
  v11 = (((byte)g_title / 3) + t1) + 1
  v9 = 0
  v15 = 0
  goto IBENTO_L_9B0F
IBENTO_L_9ACB:
  t2 = rand(2)
  if (!t2) goto IBENTO_L_9AE3
  t3 = IBENTO_F_99FF()
  v13 = t3
  t4 = IBENTO_F_9814(v7, v13)
  goto IBENTO_L_9B08
IBENTO_L_9AE3:
  t5 = IBENTO_F_9A6A(&v5, v15)
  v13 = t5
  B[v15 + (&v5)] = v13
  v15 = v15 + 1
  t6 = IBENTO_F_9827(v7, v13)
IBENTO_L_9B08:
  v7 = L
  v9 = v9 + 1
IBENTO_L_9B0F:
  if (v9 < v11) goto IBENTO_L_9ACB
  t7 = rand(3)
  if (!t7) goto IBENTO_L_9B26
  (byte)(g_king_mission+8) = 0
  goto IBENTO_L_9B51
IBENTO_L_9B26:
  t8 = rand(15)
  v17 = t8 + 6
  if ((B[(v17 << 4) + $E573]) & 8) goto IBENTO_L_9B26
  (byte)(g_king_mission+8) = v17
  W[(v17 << 4) + $E571] = (W[(v17 << 4) + $E571]) | $8000
IBENTO_L_9B51:
  B[v7] = 9
  (byte)g_princess = 1
  t9 = IBENTO_F_9721()
  return t9

mission_princess_set:
  // frame 20
  (byte)(g_king_mission+2) = 4
  v4 = $EED2
  B[v4] = 3
  v4 = v4 + 1
  B[v4] = 0
  v2 = g_relations
  v6 = 101
  goto IBENTO_L_9B9A
IBENTO_L_9B7E:
  if (!((B[(B[v12 + IBENTO_D_9ED9]) + v2]) < v6)) goto IBENTO_L_9B98
  v8 = v12
  v6 = B[(B[v12 + IBENTO_D_9ED9]) + v2]
IBENTO_L_9B98:
IBENTO_L_9B9A:
  v12 = L
  if (v12 < 3) goto IBENTO_L_9B7E
  v16 = 1
  if (!(v6 < 51)) goto IBENTO_L_9BD9
  v12 = (v8 * 5) + 4
  v18 = (v12 << 4) + g_fleets
  v20 = ((v12 << 4) + g_fleets) + 32
  goto IBENTO_L_9BD3
IBENTO_L_9BBD:
  if ((B[v18 + 15]) & 8) goto IBENTO_L_9BCC
  v16 = 0
  v14 = v12
  goto IBENTO_L_9BD9
IBENTO_L_9BCC:
  v12 = v12 + 1
  v18 = v18 + 16
IBENTO_L_9BD3:
  if (v18 < v20) goto IBENTO_L_9BBD
IBENTO_L_9BD9:
  if (!v16) goto IBENTO_L_9C0A
  v12 = 16
  v18 = (v12 << 4) + g_fleets
  v20 = ((v12 << 4) + g_fleets) + 80
  goto IBENTO_L_9C04
IBENTO_L_9BEE:
  if ((B[v18 + 15]) & 8) goto IBENTO_L_9BFD
  v16 = 0
  v14 = v12
  goto IBENTO_L_9C0A
IBENTO_L_9BFD:
  v12 = v12 + 1
  v18 = v18 + 16
IBENTO_L_9C04:
  if (v18 < v20) goto IBENTO_L_9BEE
IBENTO_L_9C0A:
  if (!v16) goto IBENTO_L_9C0F
  return v16
IBENTO_L_9C0F:
  (byte)(g_king_mission+3) = v14
  (byte)g_princess = 1
  return 1

IBENTO_F_9C18:
  // frame 2
IBENTO_L_9C1D:
  t1 = rand(28)
  v2 = t1 + 1
  if (!((B[v2 + g_port_flags]) & 8)) goto IBENTO_L_9C1D
  return v2

IBENTO_F_9C32:
  // frame 2
IBENTO_L_9C37:
  t1 = rand(28)
  v2 = t1 + 1
  if (!((B[v2 + g_port_flags]) & 8)) goto IBENTO_L_9C37
  if (!((B[v2 + g_port_flags]) & 4)) goto IBENTO_L_9C37
  return v2

IBENTO_F_9C57:
  // frame 2
IBENTO_L_9C5C:
  t1 = rand(28)
  v2 = t1 + 1
  if (!((B[v2 + g_port_flags]) & 8)) goto IBENTO_L_9C5C
  return v2

mission_pick:
  // frame 8
  if (!((byte)g_princess & 1)) goto IBENTO_L_9CC3
  if ((byte)(g_king_mission+2) == 3) goto IBENTO_L_9C8E
  if (!((byte)(g_king_mission+2) == 2)) goto IBENTO_L_9CC3
IBENTO_L_9C8E:
  if (!(byte)(g_king_mission+8)) goto IBENTO_L_9CA5
  W[((byte)(g_king_mission+8) << 4) + $E571] = (W[((byte)(g_king_mission+8) << 4) + $E571]) & $7FFF
IBENTO_L_9CA5:
  v6 = $E44B
  v8 = $E44B + 140
  goto IBENTO_L_9CBD
IBENTO_L_9CB0:
  B[v6 + 6] = (B[v6 + 6]) & 253
  v6 = v6 + 7
IBENTO_L_9CBD:
  if (v6 < v8) goto IBENTO_L_9CB0
IBENTO_L_9CC3:
  $EF52 = $EED2
  switch (a0) [0, 4, IBENTO_L_9D24]

king_summons_check:
  // frame 2
  if ((byte)g_princess & 8) goto IBENTO_L_9DCD
  if (!((byte)(g_king_mission+2) != 4)) goto IBENTO_L_9DCD
  if (!(g_fame > ((((byte)g_title + 1) * ((byte)g_title + 1)) * 400))) goto IBENTO_L_9DAA
  goto IBENTO_L_9DBB
IBENTO_L_9DAA:
  t1 = RL_8962((byte)$E447 / 5, 3)
  t2 = rand(t1)
IBENTO_L_9DBB:
  v2 = L
  if (!v2) goto IBENTO_L_9DC8
  t3 = rand(2)
  if (!t3) goto IBENTO_L_9DCD
IBENTO_L_9DC8:
  t4 = mission_pick(v2)
IBENTO_L_9DCD:
  return
IBENTO_D_9DCE:

