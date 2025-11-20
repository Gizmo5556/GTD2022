draw_set_halign(fa_center)
draw_set_valign(fa_top)

gpu_set_texfilter(false);
if not is_choosing_direction {

	if global.option_language == global.option_language_options.EN {
		draw_set_font(fSmall);
		draw_set_color(c_black);
		draw_text_ext(x+142, y+72, "Right-click tower to sell for", 16, 180);
		draw_set_color(c_red);
		draw_text(x+142, y + 108, "$" + string(ceil(parent.total_money_spent * global.sell_multiplier)));
		draw_set_font(fSmall);
		draw_set_color(c_black);
	}
	else if global.option_language == global.option_language_options.JP {
		draw_set_font(fKHDot12);
		draw_set_color(c_red);
		draw_text_ext(x+142, y+72, "タワーの売却額 $" + string(ceil(parent.total_money_spent * global.sell_multiplier)), 16, 180);
		draw_set_color(c_black);
		draw_text_ext(x+142, y+108, "(右クリックで売却)", 16, 180);
	}

	
	
	
	//draw tower icon at left
	draw_sprite(sprTowerIcon,num,x+32,y+96)	
	
	if array_length(buff_array) > 0 {
		var buff_string = "";
		var separation = 18;
		if global.option_buff_icon_visible {
			var left_most_draw_x = 832 - 0.5 * separation * (array_length(buff_array)-1)
			var draw_y = 127;
		}
		else {
			var left_most_draw_x = px - 0.5 * separation * (array_length(buff_array)-1)
			var draw_y = parent.bbox_top-16;
			//move icons to bottom of tower if tower is really high up
			if draw_y <= 4 {
				draw_y = parent.bbox_bottom + 16;	
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
				draw_text(left_most_draw_x + i * separation, draw_y, "x" + string(parent.sray_boosted_num))
			}
		}
	}
	
	

	
	//draw targeting mode button and text
	if parent != noone and parent.can_target {
		
		if global.option_language == global.option_language_options.EN {
			draw_set_font(fSmall);
			draw_set_color(c_black);
			switch (parent.targeting_mode) {
				case 0:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "FIRST");
				break;
	
				case 1:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "LAST");
				break;
	
				case 2:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "CLOSE");
				break;
	
				case 3:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "STRONG");
				break;
			
				case 4:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "FOLLOW\nMOUSE");
				break;
			}		
		}
		else if global.option_language == global.option_language_options.JP {
			draw_set_font(fKHDot12);
			draw_set_color(c_black);
			switch (parent.targeting_mode) {
				case 0:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "前列");
				break;
	
				case 1:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "後列");
				break;
	
				case 2:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "接近");
				break;
	
				case 3:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "強力");
				break;
			
				case 4:
				draw_text(target_mode_button.x - 0, target_mode_button.y-12, "マウス狙い");
				break;
			}		
		}
		
	}

	//if tower is alien, draw additional lock/unlock direction button
	if parent.object_index == objAlien and parent.is_direction_locked {
		
		if global.option_language == global.option_language_options.EN {
			draw_set_font(fSmall);
			draw_set_color(c_black);
			draw_text(lock_direction_button.x - 0, lock_direction_button.y-16, "Unlock\nDirection");
		}
		else if global.option_language == global.option_language_options.JP {
			draw_set_font(fKHDot12);
			draw_set_color(c_black);
			draw_text(lock_direction_button.x - 0, lock_direction_button.y-16, "ランダム方向");
		}
	}
	else if parent.object_index == objAlien and not parent.is_direction_locked {
		if global.option_language == global.option_language_options.EN {
			draw_set_font(fSmall);
			draw_set_color(c_black);
			draw_text(lock_direction_button.x - 0, lock_direction_button.y-16, "Lock\nDirection");
		}
		else if global.option_language == global.option_language_options.JP {
			draw_set_font(fKHDot12);
			draw_set_color(c_black);
			draw_text(lock_direction_button.x - 0, lock_direction_button.y-16, "方向ロック");
		}
	}
	
}

//do not draw any of the above if choosing a direction for the alien
else if is_choosing_direction {
	draw_set_color(c_black)
	
	if global.option_language == global.option_language_options.EN {
		draw_set_font(fSmall);
		draw_text_ext(914, 230, "Click where you want this tower to shoot\n\nRight-click to cancel", 16, 128);
	}
	else if global.option_language == global.option_language_options.JP {
		draw_set_font(fKHDot12);
		draw_set_color(c_black);
		draw_text(lock_direction_button.x - 0, lock_direction_button.y-16, "攻撃を発射する\n場所をクリックで選択 \n\n 右クリックでキャンセル");
	}
}
