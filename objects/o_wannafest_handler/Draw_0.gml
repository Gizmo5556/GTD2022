if should_draw_gui {
	//don't show timer if wheel event name is being displayed
	if draw_wheel_timer and temp_text_to_draw == "" {
		draw_pie(400, 112, wheel_effect_frames_left, wheel_effect_frames_left_max, pie_color, pie_rad, 1);
		//draw_set_color(c_black);
		//draw_circle(400, 128, pie_rad, true);
		//draw_circle(400, 128, pie_rad/4, false);
		draw_sprite(global.wheel_sprites_array[@ chosen_wheel_option], 0, 400, 112 - 128)
		//draw_set_font(fSmall);
		//draw_set_color(c_white);
		//draw_text(400, 140, wheel_timer_text);
	
	}

	//if the timer is visible, and text is being drawn that isn't wheel event text, don't draw the text
	if draw_main_text and not (draw_wheel_timer and temp_text_to_draw == "") {
		draw_set_halign(fa_center)
		draw_set_valign(fa_bottom)
		draw_set_color(draw_color);
		draw_set_font(fMoney);
		draw_text(400, 128, text_to_draw)
		//draw_set_font(fMoney);
		//scrDrawTextOutline(400, 120, text_to_draw, c_white, draw_color);
	}
}