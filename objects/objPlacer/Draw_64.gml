if array_length(buff_array) > 0 {
		var buff_string = "";
		var separation = 18;
		if global.option_buff_icon_visible {
			var left_most_draw_x = 832 - 0.5 * separation * (array_length(buff_array)-1)
			var draw_y = 127;
		}
		else {
			var left_most_draw_x = mouse_x - 0.5 * separation * (array_length(buff_array)-1)
			var draw_y = bbox_top-16;
			//move icons to bottom of tower if tower is really high up
			if draw_y <= 4 {
				draw_y = bbox_bottom + 16;	
			}
		}
		for (var i = 0; i < array_length(buff_array); i++) {
			buff_string = buff_array[i];
			if buff_string == "amd" {
				draw_sprite_ext(s_icon_amd, 0, left_most_draw_x + i * separation, draw_y, 0.5, 0.5, 0, c_white, 1);
			}
			else if buff_string == "heart" {
				draw_sprite_ext(s_icon_heart, 0, left_most_draw_x + i * separation, draw_y, 0.5, 0.5, 0, c_white, 1);
			}
			else if buff_string == "brew" {
				draw_sprite_ext(s_icon_brew, 0, left_most_draw_x + i * separation, draw_y, 0.5, 0.5, 0, c_white, 1);
			}
			else if buff_string == "sray" {
				draw_sprite_ext(s_icon_sray, 0, left_most_draw_x + i * separation, draw_y, 0.5, 0.5, 0, c_white, 1);	
				draw_text(left_most_draw_x + i * separation, draw_y, "x" + string(sray_boost_count))
			}
		}
	}
