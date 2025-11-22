draw_self()

draw_set_color(c_white)




/*draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_font(fSmall)
draw_text(400,600,"Press 'S' to toggle Fast Forward")*/

//do not show tower icons
if not show_tower_icons {
	draw_set_color(c_black)
	
	//if player is placing tower, show tower name, description, and large icon
	if does_placer_exist {
		var ind = objPlacer.ind;
		draw_sprite_ext(sprTowerIcon,ind,914, 168, 2, 2, 0, c_white, 1);
		
		draw_set_valign(fa_top);
		draw_set_halign(fa_center);
		if global.option_language == global.option_language_options.EN {
			draw_set_font(fPrice14);
			draw_text_ext(914, 232, global.tower_name[ind], 16, 220);
			draw_set_font(fSmall);
			draw_text_ext(914, 282, global.tower_desc[ind], 16, 220);
		}
		else if global.option_language == global.option_language_options.JP {
			draw_set_font(fKHDot16);
			draw_text_ext(914, 232, global.tower_name[ind], 16, 220);
			draw_set_font(fKHDot12);
			draw_text_ext(914, 282, global.tower_desc[ind], 16, 220);
		}
	}
	else {
		draw_set_valign(fa_bottom);
		draw_set_halign(fa_center);
		if global.option_language == global.option_language_options.EN {
			draw_set_font(fSmall);
			draw_text(912, 304, "Hover over\nto see towers");
			draw_set_font(fPrice14)
			draw_text(912,200,"Wave: "+string(global.wave+1) + "/" + string(global.finalwave + 1))
		}
		else if global.option_language == global.option_language_options.JP {
			draw_set_font(fKHDot12);
			draw_text(912, 304, "カーソルを合わせて\nショップを表示する");
			draw_set_font(fKHDot16)
			draw_text(912,200,"ウェーブ："+string(global.wave+1) + "/" + string(global.finalwave + 1))
		}
	}
}