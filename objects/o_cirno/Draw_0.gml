event_inherited();

//tier 2 cirno gets graduation cap
if not (room == r_neon and global.option_neon_shader) {
	
	if can_shoot_camo {
		draw_sprite_ext(s_grad_cap, 0, x, y - 24, 0.1, 0.1, 0, c_white, 1);
	}
	if has_cryo_cannon {
		draw_sprite_ext(s_cirno_gun, 0, x, y + 24, 0.07, 0.07, 0, c_white, 1);	
	}

}