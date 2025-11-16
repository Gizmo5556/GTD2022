if moused and not triggered_for_current_round {
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)

	draw_sprite_ext(s_upgrade_info, 0, draw_x, draw_y, 1, 1, 0, global.image_blend_for_UI, 1);
	
	if considered_path_index_to_draw != -1 {
		draw_sprite_ext(s_path_butterfly, considered_path_index_to_draw, 0, 0, 1, 1, 0, c_white, 1.0);
	}
	
	
	draw_set_font(fSmall);
	draw_set_color(c_black);
	draw_text_ext(draw_x, draw_y+12, "Activate the " + color + " blocks for one round for", 16, 124);
	draw_set_color(c_green);
	draw_text(draw_x, draw_y + 96, "$" + string(ceil(current_price)));
	
}