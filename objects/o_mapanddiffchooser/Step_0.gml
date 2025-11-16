if is_map_chosen {
		map_chosen_x = map_chosen.x;
		map_chosen_y = map_chosen.y;
		
		if map_chosen.object_index == o_map_choice_button_end {
			room_goto(rEnd);
		}
		else if map_chosen.object_index == o_map_choice_button_bhole {
			o_map_choice_button_bhole.game_room_name = "Clear?";	
		}
		
		//place buttons in right spots -- 20 px on left and right and 24 px between each button
		o_diff_medium_button.x = other.map_chosen_x + 32;
		o_diff_medium_button.y = other.map_chosen_y + 16;
		
		o_diff_hard_button.x = other.map_chosen_x + 144;
		o_diff_hard_button.y = other.map_chosen_y + 16;
		
		o_diff_veryhard_button.x = other.map_chosen_x + 32;
		o_diff_veryhard_button.y = other.map_chosen_y + 104;
		
		o_diff_impossible_button.x = other.map_chosen_x + 144;
		o_diff_impossible_button.y = other.map_chosen_y + 104;
		with o_diff_choice_button {
		if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id)
		{
			global.current_difficulty = difficulty;
			global.chosen_map = asset_get_index(other.map_chosen.map_name);
			
			if file_exists(other.map_chosen.map_name + string(difficulty) + ".sav") {
				room_goto(r_saved_game_warning);
			}
			else {
				room_goto(asset_get_index(other.map_chosen.map_name));	
			}
		}
		
	}
}

with o_map_choice_button {
	if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) {
		other.map_chosen = id;
		other.is_map_chosen = true;
		
		
		
	}
}


