"""Names for syscalls, engine routines, RAM variables and decoded bytecode functions.

Each name comes from reading the code (see docs/GAME_RULES.md, docs/NOTES.md, docs/ASSETS.md).
Unnamed items keep their address label.
"""

# syscall number -> (name, arguments $54, $56, ...)
SYS = {
    1: ('display_init', ''),
    2: ('display_reset', ''),
    3: ('palette_dma', 'src addr, src bank, first color, byte count'),
    4: ('tilemap_clear', 'map (1-3), screens, fill'),
    5: ('tilemap_write', ''),
    6: ('tilemap_copy', ''),
    7: ('tilemap_read', ''),
    8: ('oam_hide_all', ''),
    9: ('metasprite_set', 'sprite, ...'),
    10: ('sprite_move', 'sprite, ...'),
    11: ('vram_load_tiles', 'first tile, tile count, src addr, src bank, layer (3 = 2bpp)'),
    12: ('vram_load_tiles_2bpp', 'unused; assembled for 8-bit A, runs with 16-bit A'),
    13: ('vram_load_obj_tiles', 'first tile, tile count, src addr, src bank'),
    14: ('vram_read_tiles', 'first tile, tile count, dst addr, dst bank'),
    15: ('pad_read', 'pad number -> buttons'),
    16: ('wait_frames', 'frames'),
    17: ('bg_scroll', 'layer, x, y'),
    18: ('anim_path', ''),
    19: ('sprite_commit', ''),
    20: ('layers_enable', 'main screen, sub screen'),
    21: ('hv_counter_read', ''),
    22: ('set_0B7F', 'value'),
    23: ('memcpy_long', 'src bank, src addr, dst bank, dst addr, bytes'),
    24: ('file_open', 'name pointer -> handle'),
    25: ('file_close', 'handle'),
    26: ('file_seek', 'handle, offset (32-bit), mode'),
    27: ('file_read_7e', 'handle, dst addr in $7E, bytes'),
    28: ('file_read', 'handle, dst bank, dst addr, bytes'),
    29: ('file_palette_dma', 'handle, first color, byte count'),
    30: ('file_tilemap_copy', ''),
    31: ('file_metasprite_set', ''),
    32: ('file_vram_load_tiles', ''),
    33: ('file_vram_load_obj_tiles', ''),
    34: ('screen_off', ''),
    35: ('screen_on', ''),
    36: ('memset_long', 'dst addr, dst bank, value, bytes'),
    37: ('brightness_set', 'level 0-15'),
    38: ('window_shape', ''),
    39: ('window_off', ''),
    40: ('tile_put', ''),
    41: ('mode7_init', ''),
    42: ('bg_block_put', ''),
    43: ('bg_block_put2', ''),
    44: ('file_bg_block_put', ''),
    45: ('file_bg_block_put2', ''),
    46: ('mode7_center', 'x, y'),
    47: ('mode7_matrix', 'a, b, c, d'),
    48: ('color_math', 'CGWSEL, CGADSUB, COLDATA'),
    49: ('grid_open', 'width, height (1-32)'),
    50: ('grid_cell', 'x, y'),
    51: ('file_anim_frames', ''),
    52: ('anim_frames', ''),
    53: ('file_anim_53', ''),
    54: ('file_anim_54', ''),
    55: ('sprite_anim_stream', 'slot, mode, first tile, ..., frames, ..., ..., src addr, src bank'),
    56: ('anim_control', ''),
    57: ('sprites_offset', 'first sprite, count, delta'),
    58: ('sprites_hide', 'first sprite, count'),
    59: ('palette_cycle', ''),
    60: ('sound_play', 'track, effect'),
    61: ('sound_stop', ''),
    62: ('apu_ports_read', ''),
    63: ('sound_effect', ''),
    64: ('file_rom_address', 'handle -> bank:address'),
    65: ('apu_upload', 'src addr, src bank'),
    66: ('obj_size_set', ''),
    67: ('file_metasprite_67', ''),
    68: ('counter_0B27_read', ''),
    69: ('auto_move', ''),
    70: ('tilemap_copy_wait', ''),
    71: ('bg_mode_set', 'BGMODE'),
    72: ('metasprite_72', ''),
    73: ('hdma_effect_on', ''),
    74: ('hdma_effect_off', ''),
    75: ('bg_map_base_set', 'layer, BGnSC'),
    76: ('lz_decompress', 'dst addr in $7F, src addr, src bank'),
    77: ('file_anim_77', ''),
    78: ('anim_78', ''),
}

# engine bank $00 routines
BANK0 = {
    0x8CD2: 'inidisp_set', 0x8E2F: 'wait_nmi', 0x8512: 'dma_run', 0x8488: 'nmi_vram_dma',
    0x8D4C: 'cgram_dma_now', 0x8D84: 'vram_dma_now', 0x93B9: 'tile_dma_args_4bpp', 0x93DB: 'tile_dma_args_2bpp',
    0x97F3: 'lz_decompress', 0x98E9: 'lz_getbits', 0x9C3D: 'file_to_rom', 0x9CBF: 'file_copy', 0x9CFB: 'mvn_copy',
    0xB855: 'apu_upload_ipl', 0xB83D: 'apu_src_bank_next', 0x9341: 'oam_entry_set', 0x912C: 'tilemap_args',
}

# RAM ($7E), name -> (address, bytes)
RAM = {
    'g_captains': (0xDF05, 51 * 20), 'g_player_name_ptr': (0xE444, 2), 'g_fleets': (0xE564, 16 * 21),
    'g_player_gold': (0xE56D, 4), 'g_player_items': (0xE56F, 4), 'g_ports': (0xE6B4, 14 * 50),
    'g_days_at_sea': (0xE998, 2), 'g_cargo': (0xE9A6, 24 * 9), 'g_day': (0xEA8B, 1), 'g_month': (0xEA8C, 1),
    'g_year': (0xEA8D, 1), 'g_relations': (0xEA8F, 6), 'g_hero_name': (0xEAB0, 17), 'g_hero_stats': (0xEAC1, 5),
    'g_ships': (0xEB92, 7 * 10), 'g_palace_savings': (0xEE72, 2), 'g_fame': (0xEE74, 2), 'g_title': (0xEE76, 2),
    'g_port_flags': (0xEE78, 50), 'g_nations': (0xEEBE, 16), 'g_zone_attr': (0xEF84, 3),
    'g_map_blocks_ofs': (0xEFA7, 2), 'g_map_chunks_ofs': (0xEFA9, 2),
    'g_king_mission': (0xEF54, 9), 'g_princess': (0xEF61, 1), 'g_port': (0xEF69, 1), 'g_ending': (0xF169, 1),
    'g_fh_sgdata': (0xF27E, 2), 'g_fh_cbmap0': (0xF280, 2), 'g_fh_fdata': (0xF282, 2), 'g_fh_kdata': (0xF284, 2),
    'g_portrait': (0xF295, 1),
}

# engine variables (bank $00 code, low RAM)
ERAM = {
    'e_oam': (0x0900, 0x220), 'e_brightness': (0x0B3E, 1), 'e_obsel': (0x0B3F, 1), 'e_pads': (0x0B51, 4),
    'e_frame_wait': (0x0B55, 1), 'e_nmi_jobs': (0x0B56, 1), 'e_vram_job': (0x0B57, 1), 'e_dma_bytes': (0x0B6D, 2),
    'e_dma_src': (0x0B6F, 3), 'e_dma_vram': (0x0B72, 2), 'e_tm': (0x0DD6, 1), 'e_ts': (0x0DD7, 1),
    'e_screen_off': (0x0DD8, 1), 'e_sound_req': (0x0E04, 6), 'e_apu_busy': (0x0E09, 1), 'e_lz_bits': (0x0E1A, 2),
    'e_lz_next': (0x0E1C, 2), 'e_lz_avail': (0x0E1E, 2), 'e_lz_need': (0x0E20, 2), 'e_lz_dist': (0x0E22, 2),
    'e_lz_flags': (0x0E24, 1), 'e_bgmode': (0x0B29, 1),
}

# bytecode functions, (module, address) -> name
FUNCS = {
    ('root', 0x21BE): 'syscall', ('root', 0x3F3E): 'rand', ('root', 0x3F01): 'rng', ('root', 0x3F4F): 'map_rom_read', ('root', 0x5449): 'map_load_zone',
    ('root', 0x54D9): 'map_open', ('root', 0x837B): 'portrait_compose', ('root', 0x41CD): 'item_best_power',
    ('root', 0x4353): 'port_owner_update', ('root', 0x8272): 'deadline_check', ('root', 0x22A8): 'face_block_load',
    ('cminato', 0x96CA): 'rival_merchant_trade', ('cminato', 0x9AFF): 'rival_fleet_home',
    ('cminato', 0xA102): 'rival_pick_destination',
    ('ibento', 0x983A): 'mission_crates_set', ('ibento', 0x985D): 'mission_letter_set',
    ('ibento', 0x9A97): 'mission_treasure_set', ('ibento', 0x9B5D): 'mission_princess_set',
    ('ibento', 0x9C71): 'mission_pick', ('ibento', 0x9D79): 'king_summons_check',
    ('koueki', 0xC2E1): 'port_alliance_check', ('maituki', 0xA3BB): 'monthly_index_recovery',
    ('oukyu', 0xB047): 'palace_enter', ('oukyu', 0xB2D3): 'palace_mission_princess',
    ('oukyu', 0xB79C): 'palace_mission_letter', ('oukyu', 0xB9B3): 'palace_mission_crates',
    ('senfe', 0xB131): 'treasure_fleet_set', ('uarugo', 0xA445): 'daily_supplies',
    ('uarugo', 0xAD00): 'port_discovered', ('ucom', 0xB273): 'navigation_item_use',
    ('um_sub', 0xB19D): 'merchant_order_delivered', ('um_sub', 0xC3FF): 'wanted_item_delivered',
}


def ram_symbol(v, engine=False):
    """Symbol text for a RAM address, or None."""
    tab = ERAM if engine else RAM
    for nm, (a, n) in tab.items():
        if v == a: return nm
    best = None
    for nm, (a, n) in tab.items():
        if a < v < a + n and (best is None or a > tab[best][0]): best = nm
    return f'{best}+{v - tab[best][0]}' if best else None


def ram_inc():
    L = ['; RAM variables ($7E), named in tools_snes/names.py', '']
    for nm, (a, n) in sorted(list(RAM.items()) + list(ERAM.items()), key=lambda x: x[1][0]):
        L.append(f'{nm} = ${a:04X}  ; {n} bytes')
    return '\n'.join(L) + '\n'
