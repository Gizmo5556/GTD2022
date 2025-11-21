if moused and not triggered_for_current_round {
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)

	draw_sprite_ext(s_upgrade_info, 0, draw_x, draw_y, 1, 1, 0, global.image_blend_for_UI, 1);
	
	if considered_path_index_to_draw != -1 {
		draw_sprite_ext(s_path_butterfly, considered_path_index_to_draw, 0, 0, 1, 1, 0, c_white, 1.0);
	}
	
	
	if global.option_language == global.option_language_options.EN {
		draw_set_font(fSmall);
		draw_set_color(c_black);
		draw_text_ext(draw_x, draw_y+12, "Activate the " + color + " blocks for one round for", 16, 124);
		draw_set_color(c_green);
		draw_text(draw_x, draw_y + 96, "$" + string(ceil(current_price)));
	}
	else if global.option_language == global.option_language_options.JP {
		draw_set_font(fKHDot12);
		draw_set_color(c_green);
		draw_text(draw_x, draw_y + 12, "$" + string(ceil(current_price)));
		draw_set_color(c_black);
		if color == "blue" { var text = "で1ウェーブだけ\n青\nブロックを\n有効化する"}
		if color == "red" { var text = "で1ウェーブだけ\n赤\nブロックを\n有効化する"}
		if color == "yellow" { var text = "で1ウェーブだけ\n黄\nブロックを\n有効化する"}
		if color == "pink" { var text = "で1ウェーブだけ\nピンク\nブロックを\n有効化する"}

		draw_text_ext(draw_x, draw_y+40, text, 16, 124);
		
	}
	
}