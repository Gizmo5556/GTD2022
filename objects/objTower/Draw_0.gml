if selected {

	draw_set_color(c_lime)
	draw_set_alpha(0.4)

	if global.option_catharsis_shader and room == r_catharsis {
		shader_reset();
		draw_circle(x, y, radius, false);
		shader_set(shader_inv_dest_color);
		texture_set_stage (global.shader_inv_dest_color_destination, global.tex);
		shader_set_uniform_f( global.shader_inv_dest_color_texel_size, global.texel_w, global.texel_h ); 
	
	}
	else if global.option_neon_shader and room == r_neon {
		shader_reset();
		draw_circle(x, y, radius, false);
		shader_set(sh_tijit_neon);
	}

	else {
		draw_circle(x, y, radius, false);
	}
	draw_set_alpha(1);
	
}
if room == r_neon {
	var tex = sprite_get_texture(sprite_index, image_index)
	shader_set_uniform_f(neon_texel, texture_get_texel_width(tex)/image_xscale, texture_get_texel_height(tex)/image_yscale);
}
draw_self();