if global.option_catharsis_shader and room == r_catharsis {
	shader_set(shader_inv_dest_color);
	
	texture_set_stage (global.shader_inv_dest_color_destination, global.tex);
	
	shader_set_uniform_f( global.shader_inv_dest_color_texel_size, global.texel_w, global.texel_h ); 
	
}
if global.option_neon_shader and room == r_neon {
	shader_set(sh_tijit_neon);
	var tex = sprite_get_texture(s_final_boss_phase1, 0);
	shader_set_uniform_f(neon_texel, texture_get_width(tex), texture_get_height(tex));
}

if counter >= 0 and counter < 200 {
	draw_sprite_part_ext(s_final_boss_phase1, image_index_to_draw, 0, 0, 141, sprite_draw_part_height, x_draw, y_draw, 1, 1, c_white, phase1_alpha);
	sprite_draw_part_height -= 0.32;
	y_draw += 0.32;
	//shake effect
	if irandom_range(0, 2) == 1 {
		x_draw = x_draw_base + irandom_range(-5, 5);
	}
}
else if counter >= 150 and counter < 250 {
	draw_sprite_part_ext(s_final_boss_phase1, image_index_to_draw, 0, 0, 141, sprite_draw_part_height, x_draw, y_draw, 1, 1, c_white, phase1_alpha);
}
else if counter >= 250 and counter < 300 {
	draw_sprite_part_ext(s_final_boss_phase1_red_eyes, image_index_to_draw, 0, 0, 141, sprite_draw_part_height, x_draw, y_draw, 1, 1, c_white, phase1_alpha);
}
else if counter == 300 {
	audio_sound_gain(musFinalBoss, 0, 2000);
	audio_sound_gain(musFinalBoss2, global.music_volume * 1.75, 1750);
}
else if counter > 300 and counter <= 430 {
	draw_sprite_part_ext(s_final_boss_phase1_red_eyes, red_eye_image_index_to_draw, 0, 0, 141, sprite_draw_part_height, x_draw, y_draw, 1, 1, c_white, phase1_alpha);
	phase1_alpha -= alpha_change;
	draw_sprite_ext(phase2_sprite_to_draw, 0, x_draw_base + 60, y_draw_base + 62, 1, 1, 0, c_white, phase2_alpha)
	phase2_alpha += alpha_change;
}


if global.option_catharsis_shader and room == r_catharsis {
	shader_reset();	
}
if global.option_neon_shader and room == r_neon {
	shader_reset();	
}