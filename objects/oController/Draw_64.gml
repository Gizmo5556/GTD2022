/*if (is_paused) {
	draw_sprite(pause_screen, 0, 0, 0);
	
	draw_set_alpha(0.4);
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);
	
	draw_set_font(fPrice);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "press P to unpause");
	
}*/
if not surface_exists(sprite_surface) {
	//var w = window_get_width();
	//var h = window_get_height();
	sprite_surface = surface_create(800, 608);
	//sprite_surface = surface_create(w, h);
	surface_set_target(sprite_surface);
	draw_sprite(s_catharsis_spikes_withbg, 0, 0, 0);
	//draw_sprite_ext(s_catharsis_spikes_withbg, 0, 0, 0, w/1028, h/608, 0, c_white, 1);
	surface_reset_target();
	global.tex = surface_get_texture(sprite_surface);
	global.texel_w = texture_get_texel_width(global.tex)
	global.texel_h = texture_get_texel_height(global.tex)

	//has_created_funny_surface = true;
}


/*if surface_exists (sprite_surface) {
	draw_surface(sprite_surface, 0, 0);
}*/