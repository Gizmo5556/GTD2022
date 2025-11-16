sprite_index = spr;

image_xscale = scale;
image_yscale = scale;

//draw_self();
/*
if global.option_catharsis_shader and room == r_catharsis {
	shader_set(shader_inv_dest_color);
	
	texture_set_stage (global.shader_inv_dest_color_destination, global.tex);
	
	shader_set_uniform_f( global.shader_inv_dest_color_texel_size, global.texel_w, global.texel_h ); 
	
	draw_sprite_ext(spr,index,x,y,scale,scale,angle,c_white,1)
	
	shader_reset();
}
else {
	draw_sprite_ext(spr,index,x,y,scale,scale,angle,c_white,1)	
}*/
if global.option_neon_shader and room == r_neon {
	shader_set(sh_tijit_neon);
	var tex = sprite_get_texture(sprite_index, image_index);
	shader_set_uniform_f(neon_texel, texture_get_texel_width(tex)/scale, texture_get_texel_height(tex)/scale);
}
draw_sprite_ext(spr,index,x,y,scale,scale,angle,draw_blend,1)	

if global.option_catharsis_shader and room == r_catharsis {
	shader_reset();
}
if global.option_neon_shader and room == r_neon {
	shader_reset();	
}

if placeable {
    draw_set_color(c_green)
}
else draw_set_color(c_red)

draw_set_alpha(0.4)

draw_circle(x,y,rad,false)

draw_set_color(c_white)
draw_set_alpha(1)

draw_set_font(fSmall);
draw_text(x, y - 16, "Right-click to cancel");


if global.option_catharsis_shader and room == r_catharsis {
	shader_set(shader_inv_dest_color);
	texture_set_stage (global.shader_inv_dest_color_destination, global.tex);
	shader_set_uniform_f( global.shader_inv_dest_color_texel_size, global.texel_w, global.texel_h ); 
}
if global.option_neon_shader and room == r_neon {
	shader_set(sh_tijit_neon);
}