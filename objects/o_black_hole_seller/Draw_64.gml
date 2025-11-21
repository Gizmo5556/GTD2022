if moused {
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	
	draw_sprite_ext(s_upgrade_info, 0, draw_x, draw_y, 1, 1, 0, global.image_blend_for_UI, 1);

	if global.option_language == global.option_language_options.EN {
		draw_set_font(fSmall);
		draw_set_color(c_black);
		draw_text_ext(draw_x, draw_y+16, "Weaken the\nblack hole for two rounds for", 16, 128);
		draw_set_color(c_green);
		draw_text(draw_x, draw_y + 96, "$" + string(ceil(current_price)));
	}
	else if global.option_language == global.option_language_options.JP {
		draw_set_font(fKHDot12);
		draw_set_color(c_green);
		draw_text(draw_x, draw_y + 16, "$" + string(ceil(current_price)));
		draw_set_color(c_black);
		draw_text_ext(draw_x, draw_y+40, "で2ウェーブだけ\nブラックホール\nを弱体化する", 16, 128);
		
	}
}