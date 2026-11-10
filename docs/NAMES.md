# Nomes

Gerado de `tools_snes/names.py`. O que não tem nome aqui mantém o rótulo de endereço; toda função de bytecode ganhou uma linha de resumo (syscalls, variáveis, chamadas) acima do rótulo.

## Syscalls

| nº | nome | argumentos ($54, $56, ...) |
|---:|---|---|
| 1 | `display_init` |  |
| 2 | `display_reset` |  |
| 3 | `palette_dma` | src addr, src bank, first color, byte count |
| 4 | `tilemap_clear` | map (1-3), screens, fill |
| 5 | `tilemap_write` |  |
| 6 | `tilemap_copy` |  |
| 7 | `tilemap_read` |  |
| 8 | `oam_hide_all` |  |
| 9 | `metasprite_set` | sprite, ... |
| 10 | `sprite_move` | sprite, ... |
| 11 | `vram_load_tiles` | first tile, tile count, src addr, src bank, layer (3 = 2bpp) |
| 12 | `vram_load_tiles_2bpp` | unused; assembled for 8-bit A, runs with 16-bit A |
| 13 | `vram_load_obj_tiles` | first tile, tile count, src addr, src bank |
| 14 | `vram_read_tiles` | first tile, tile count, dst addr, dst bank |
| 15 | `pad_read` | pad number -> buttons |
| 16 | `wait_frames` | frames |
| 17 | `bg_scroll` | layer, x, y |
| 18 | `anim_path` |  |
| 19 | `sprite_commit` |  |
| 20 | `layers_enable` | main screen, sub screen |
| 21 | `hv_counter_read` |  |
| 22 | `set_0B7F` | value |
| 23 | `memcpy_long` | src bank, src addr, dst bank, dst addr, bytes |
| 24 | `file_open` | name pointer -> handle |
| 25 | `file_close` | handle |
| 26 | `file_seek` | handle, offset (32-bit), mode |
| 27 | `file_read_7e` | handle, dst addr in $7E, bytes |
| 28 | `file_read` | handle, dst bank, dst addr, bytes |
| 29 | `file_palette_dma` | handle, first color, byte count |
| 30 | `file_tilemap_copy` |  |
| 31 | `file_metasprite_set` |  |
| 32 | `file_vram_load_tiles` |  |
| 33 | `file_vram_load_obj_tiles` |  |
| 34 | `screen_off` |  |
| 35 | `screen_on` |  |
| 36 | `memset_long` | dst addr, dst bank, value, bytes |
| 37 | `brightness_set` | level 0-15 |
| 38 | `window_shape` |  |
| 39 | `window_off` |  |
| 40 | `tile_put` |  |
| 41 | `mode7_init` |  |
| 42 | `bg_block_put` |  |
| 43 | `bg_block_put2` |  |
| 44 | `file_bg_block_put` |  |
| 45 | `file_bg_block_put2` |  |
| 46 | `mode7_center` | x, y |
| 47 | `mode7_matrix` | a, b, c, d |
| 48 | `color_math` | CGWSEL, CGADSUB, COLDATA |
| 49 | `grid_open` | width, height (1-32) |
| 50 | `grid_cell` | x, y |
| 51 | `file_anim_frames` |  |
| 52 | `anim_frames` |  |
| 53 | `file_anim_53` |  |
| 54 | `file_anim_54` |  |
| 55 | `sprite_anim_stream` | slot, mode, first tile, ..., frames, ..., ..., src addr, src bank |
| 56 | `anim_control` |  |
| 57 | `sprites_offset` | first sprite, count, delta |
| 58 | `sprites_hide` | first sprite, count |
| 59 | `palette_cycle` |  |
| 60 | `sound_play` | track, effect |
| 61 | `sound_stop` |  |
| 62 | `apu_ports_read` |  |
| 63 | `sound_effect` |  |
| 64 | `file_rom_address` | handle -> bank:address |
| 65 | `apu_upload` | src addr, src bank |
| 66 | `obj_size_set` |  |
| 67 | `file_metasprite_67` |  |
| 68 | `counter_0B27_read` |  |
| 69 | `auto_move` |  |
| 70 | `tilemap_copy_wait` |  |
| 71 | `bg_mode_set` | BGMODE |
| 72 | `metasprite_72` |  |
| 73 | `hdma_effect_on` |  |
| 74 | `hdma_effect_off` |  |
| 75 | `bg_map_base_set` | layer, BGnSC |
| 76 | `lz_decompress` | dst addr in $7F, src addr, src bank |
| 77 | `file_anim_77` |  |
| 78 | `anim_78` |  |

## Rotinas do motor (banco $00)

| endereço | nome |
|---|---|
| $8488 | `nmi_vram_dma` |
| $8512 | `dma_run` |
| $8CD2 | `inidisp_set` |
| $8D4C | `cgram_dma_now` |
| $8D84 | `vram_dma_now` |
| $8E2F | `wait_nmi` |
| $912C | `tilemap_args` |
| $9341 | `oam_entry_set` |
| $93B9 | `tile_dma_args_4bpp` |
| $93DB | `tile_dma_args_2bpp` |
| $97F3 | `lz_decompress` |
| $98E9 | `lz_getbits` |
| $9C3D | `file_to_rom` |
| $9CBF | `file_copy` |
| $9CFB | `mvn_copy` |
| $B83D | `apu_src_bank_next` |
| $B855 | `apu_upload_ipl` |

## Variáveis

| endereço | nome | bytes |
|---|---|---:|
| $7E:0900 | `e_oam` | 544 |
| $7E:0B29 | `e_bgmode` | 1 |
| $7E:0B3E | `e_brightness` | 1 |
| $7E:0B3F | `e_obsel` | 1 |
| $7E:0B51 | `e_pads` | 4 |
| $7E:0B55 | `e_frame_wait` | 1 |
| $7E:0B56 | `e_nmi_jobs` | 1 |
| $7E:0B57 | `e_vram_job` | 1 |
| $7E:0B6D | `e_dma_bytes` | 2 |
| $7E:0B6F | `e_dma_src` | 3 |
| $7E:0B72 | `e_dma_vram` | 2 |
| $7E:0DD6 | `e_tm` | 1 |
| $7E:0DD7 | `e_ts` | 1 |
| $7E:0DD8 | `e_screen_off` | 1 |
| $7E:0E04 | `e_sound_req` | 6 |
| $7E:0E09 | `e_apu_busy` | 1 |
| $7E:0E1A | `e_lz_bits` | 2 |
| $7E:0E1C | `e_lz_next` | 2 |
| $7E:0E1E | `e_lz_avail` | 2 |
| $7E:0E20 | `e_lz_need` | 2 |
| $7E:0E22 | `e_lz_dist` | 2 |
| $7E:0E24 | `e_lz_flags` | 1 |
| $7E:DF05 | `g_captains` | 1020 |
| $7E:E444 | `g_player_name_ptr` | 2 |
| $7E:E564 | `g_fleets` | 336 |
| $7E:E56D | `g_player_gold` | 4 |
| $7E:E56F | `g_player_items` | 4 |
| $7E:E6B4 | `g_ports` | 700 |
| $7E:E998 | `g_days_at_sea` | 2 |
| $7E:E9A6 | `g_cargo` | 216 |
| $7E:EA8B | `g_day` | 1 |
| $7E:EA8C | `g_month` | 1 |
| $7E:EA8D | `g_year` | 1 |
| $7E:EA8F | `g_relations` | 6 |
| $7E:EAB0 | `g_hero_name` | 17 |
| $7E:EAC1 | `g_hero_stats` | 5 |
| $7E:EB92 | `g_ships` | 70 |
| $7E:EE72 | `g_palace_savings` | 2 |
| $7E:EE74 | `g_fame` | 2 |
| $7E:EE76 | `g_title` | 2 |
| $7E:EE78 | `g_port_flags` | 50 |
| $7E:EEBE | `g_nations` | 16 |
| $7E:EF54 | `g_king_mission` | 9 |
| $7E:EF61 | `g_princess` | 1 |
| $7E:EF69 | `g_port` | 1 |
| $7E:EF84 | `g_zone_attr` | 3 |
| $7E:EFA7 | `g_map_blocks_ofs` | 2 |
| $7E:EFA9 | `g_map_chunks_ofs` | 2 |
| $7E:F169 | `g_ending` | 1 |
| $7E:F27E | `g_fh_sgdata` | 2 |
| $7E:F280 | `g_fh_cbmap0` | 2 |
| $7E:F282 | `g_fh_fdata` | 2 |
| $7E:F284 | `g_fh_kdata` | 2 |
| $7E:F295 | `g_portrait` | 1 |

## Funções de bytecode

| módulo | endereço | nome |
|---|---|---|
| cminato | $96CA | `rival_merchant_trade` |
| cminato | $9AFF | `rival_fleet_home` |
| cminato | $A102 | `rival_pick_destination` |
| ibento | $983A | `mission_crates_set` |
| ibento | $985D | `mission_letter_set` |
| ibento | $9A97 | `mission_treasure_set` |
| ibento | $9B5D | `mission_princess_set` |
| ibento | $9C71 | `mission_pick` |
| ibento | $9D79 | `king_summons_check` |
| koueki | $C2E1 | `port_alliance_check` |
| maituki | $A3BB | `monthly_index_recovery` |
| oukyu | $B047 | `palace_enter` |
| oukyu | $B2D3 | `palace_mission_princess` |
| oukyu | $B79C | `palace_mission_letter` |
| oukyu | $B9B3 | `palace_mission_crates` |
| root | $21BE | `syscall` |
| root | $22A8 | `face_block_load` |
| root | $3F4F | `map_rom_read` |
| root | $41CD | `item_best_power` |
| root | $4353 | `port_owner_update` |
| root | $5449 | `map_load_zone` |
| root | $54D9 | `map_open` |
| root | $8272 | `deadline_check` |
| root | $837B | `portrait_compose` |
| senfe | $B131 | `treasure_fleet_set` |
| uarugo | $A445 | `daily_supplies` |
| uarugo | $AD00 | `port_discovered` |
| ucom | $B273 | `navigation_item_use` |
| um_sub | $B19D | `merchant_order_delivered` |
| um_sub | $C3FF | `wanted_item_delivered` |
