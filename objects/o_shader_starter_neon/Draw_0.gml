if global.option_neon_shader and room == r_neon {
	
	shader_set(sh_tijit_neon);
	
	//texture_set_stage (global.shader_inv_dest_color_destination, global.tex);
	
	shader_set_uniform_f( global.shader_inv_dest_color_texel_size, global.texel_w, global.texel_h ); 
	
	
}