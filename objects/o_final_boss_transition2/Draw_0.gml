

if counter >= 0 and counter < 325 {
	if global.option_catharsis_shader and room == r_catharsis {
		shader_set(shader_inv_dest_color);
	
		texture_set_stage (global.shader_inv_dest_color_destination, global.tex);
	
		shader_set_uniform_f( global.shader_inv_dest_color_texel_size, global.texel_w, global.texel_h ); 
		
		draw_sprite_part_ext(sprite_to_draw, 3, 0, 0, 242, sprite_draw_part_height, x_draw, y_draw, 1, 1, c_white, phase1_alpha);
		
		shader_reset();
	}
	else if global.option_neon_shader and room == r_neon {
		shader_set(sh_tijit_neon);
		var tex = sprite_get_texture(sprite_to_draw, 3)
		shader_set_uniform_f(neon_texel, texture_get_width(tex), texture_get_height(tex));
		draw_sprite_part_ext(sprite_to_draw, 3, 0, 0, 242, sprite_draw_part_height, x_draw, y_draw, 1, 1, c_orange, phase1_alpha);
	}
	else {
		draw_sprite_part_ext(sprite_to_draw, 3, 0, 0, 242, sprite_draw_part_height, x_draw, y_draw, 1, 1, c_white, phase1_alpha);
	}
	
	sprite_draw_part_height -= 0.85;
	y_draw += 0.85;
	//shake effect
	if irandom_range(0, 2) == 1 {
		x_draw = x_draw_base + irandom_range(-5, 5);
	}
}
