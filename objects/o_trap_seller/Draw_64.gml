if moused {
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	//trap_draw_position_type determines in which "direction" is the "buy this...?" text box is drawn
	//0 -- to the right, 1 -- upper right, 2 -- above, continuing counter-clockwise until 8 -- lower left
	
	//var x_offset = 0*dcos(45*trap_draw_position_type);
	//var y_offset = 0*dsin(45*trap_draw_position_type);
	//draw_sprite(s_upgrade_info, 0, mouse_x + x_offset, mouse_y - 128 - y_offset);
	
	draw_sprite_ext(s_upgrade_info, 0, draw_x, draw_y, 1, 1, 0, global.image_blend_for_UI, 1);

	
	if global.option_language == global.option_language_options.EN {
		draw_set_font(fSmall);
		draw_set_color(c_black);
		draw_text_ext(draw_x, draw_y+20, "Permanently\nbuy this\n" + name + " for", 16, 128);
		draw_set_color(c_green);
		draw_text(draw_x, draw_y + 96, "$" + string(ceil(trap_price)));
	}
	else if global.option_language == global.option_language_options.JP {
		draw_set_font(fKHDot12);
		draw_set_color(c_black);
		
		if name == "trap" {
			draw_text_ext(draw_x, draw_y+20, "トラップを", 16, 128);
			draw_set_color(c_green);
			draw_text(draw_x, draw_y + 58, "$" + string(ceil(trap_price)));
			draw_set_color(c_black);
			draw_text_ext(draw_x, draw_y + 96, "で購入する", 16, 128);
		}
		else if name == "fruit ally" {
			draw_text_ext(draw_x, draw_y+20, "りんご仲間を", 16, 128);
			draw_set_color(c_green);
			draw_text(draw_x, draw_y + 58, "$" + string(ceil(trap_price)));
			draw_set_color(c_black);
			draw_text_ext(draw_x, draw_y + 96, "で購入する", 16, 128);
		}
	}
}