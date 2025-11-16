if room == r_neon and global.option_neon_shader {
	var tex = sprite_get_texture(sprite_index, image_index)
	shader_set_uniform_f(neon_texel, texture_get_texel_width(tex)/image_xscale, texture_get_texel_height(tex)/image_yscale);
}
draw_self();