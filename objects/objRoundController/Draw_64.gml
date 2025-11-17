draw_set_halign(fa_center)
draw_set_valign(fa_top)

if is_choosing_to_continue or is_choosing_freeplay or all_waves_over {
	
	//either say "game over" or "congrats"
	if is_choosing_to_continue {
		draw_sprite(sprGameover, 0, 400, 220);
	}
	else {
		draw_sprite_ext(s_congrats, 0, 400, 180, 2, 1, 0, c_white, 1);
	}
	
	
	draw_set_font(fSmall);
	var text_color = c_white;
	var text_outline_color = c_black;
	switch(room) {
		case r_dewrace:
		case r_guytower:
		case r_blackhole:
		case r_catharsis:
		case r_vibe:
		case r_platform:
		case r_wannafest:
			text_color = c_white;
			text_outline_color = c_black;
			break;
		case r_butterfly:
		case r_moon:
		case rGuy:
		case r_coinstack:
		case r_duloxetine:
		case r_nang:
		default:
			text_color = c_black;
			text_outline_color = c_white;
			break;
	}
	
	if is_choosing_to_continue {
		if not is_freeplay_mode {
			scrDrawTextOutline(550, text_draw_y, "Give up and go back to the map selection screen", text_color, text_outline_color);
			scrDrawTextOutline(250, text_draw_y, "Retry this map and difficulty from the beginning", text_color, text_outline_color);
			scrDrawTextOutline(400, text_draw_y, "Continue this attempt, but you will not earn a medal", text_color, text_outline_color);
		}	
		else {
			scrDrawTextOutline(550, text_draw_y, "Give up and go back to the map selection screen", text_color, text_outline_color);
			scrDrawTextOutline(250, text_draw_y, "Retry this map and difficulty from the beginning", text_color, text_outline_color);
			scrDrawTextOutline(400, text_draw_y, "Continue freeplay mode", text_color, text_outline_color);	
		}
	}
	else if is_choosing_freeplay {
		scrDrawTextOutline(475, text_draw_y, "Go back to the map selection screen", text_color, text_outline_color);
		scrDrawTextOutline(325, text_draw_y, "Continue in freeplay mode until wave 140", text_color, text_outline_color);
	}
	else if all_waves_over {
		scrDrawTextOutline(400, text_draw_y, "Go back to the map selection screen", text_color, text_outline_color);
	}
				
}

//draw lives and money

draw_set_font(fMoney)
draw_set_valign(fa_bottom)
draw_set_halign(fa_center)

draw_set_color(c_green)
draw_text(914,75,string_hash_to_newline("$"+string(floor(global.money))))

draw_set_color(c_red)
draw_set_font(fPrice14)
draw_text(914,32,string_hash_to_newline("Lives: "+string(global.life)))