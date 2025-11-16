if moused and num_times_used < 6 {
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)

	draw_sprite_ext(s_upgrade_info, 0, draw_x, draw_y, 1, 1, 0, global.image_blend_for_UI, 1);
	
	draw_set_font(fSmall);
	draw_set_color(c_black);
	draw_text_ext(draw_x, draw_y+16, "Permanently add to the coin tower for", 16, 128);
	draw_set_color(c_green);
	draw_text(draw_x, draw_y + 96, "$" + string(ceil(current_price_array[num_times_used])));
	
}