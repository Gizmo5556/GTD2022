if global.option_catharsis_shader and room == r_catharsis {
	shader_set(shader_inv_dest_color);
	
	texture_set_stage (global.shader_inv_dest_color_destination, global.tex);
	
	shader_set_uniform_f( global.shader_inv_dest_color_texel_size, global.texel_w, global.texel_h ); 
	
	
}