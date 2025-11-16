var pos_meet = position_meeting(mouse_x, mouse_y, id);

with o_tileswitch_main {
	other.is_blue_on = is_blue_on;
	other.is_red_on = is_red_on;
	other.is_yellow_on = is_yellow_on;
	other.is_pink_on = is_pink_on;
}

if pos_meet
and not triggered_for_current_round
and not round_controller.running  
and not round_controller.dead
and not round_controller.is_choosing_to_continue
and not round_controller.is_choosing_freeplay
and not round_controller.all_waves_over
and not instance_exists(objPlacer) {
	moused = true;
	
	with tiles_to_activate {
		image_alpha = 1;
	}
	
	if not triggered_for_current_round {
			switch (tiles_to_activate) {
			case o_switcher_tile_blue :
				is_blue_considered = true;
				break;
		
			case o_switcher_tile_red :
				is_red_considered = true;
				break;
		
			case o_switcher_tile_yellow :
				is_yellow_considered = true;
				break;
			
			case o_switcher_tile_pink :
				is_pink_considered = true;
				break;
		}
	}
	
	
	considered_path_index_to_draw = scr_get_butterfly_path_index(is_blue_considered or is_blue_on, 
															is_red_considered or is_red_on,
															is_yellow_considered or is_yellow_on,
															is_pink_considered or is_pink_on);
									
	//make current path invisible
	o_path_butterfly.image_alpha = 0;
	
	if mouse_check_button_pressed(mb_left) and global.money >= current_price {
		global.money -= current_price;
		audio_play_sound(sndMoney,0,0);
		triggered_for_current_round = true;
		
		//make visible again
		o_path_butterfly.image_alpha = 1;
		
		with tiles_to_activate {
			image_alpha = 1;
			is_activated = true;
		}
		switch (tiles_to_activate) {
			case o_switcher_tile_blue :
				o_tileswitch_main.is_blue_on = true;
				break;
		
			case o_switcher_tile_red :
				o_tileswitch_main.is_red_on = true;
				break;
		
			case o_switcher_tile_yellow :
				o_tileswitch_main.is_yellow_on = true;
				break;
			
			case o_switcher_tile_pink :
				o_tileswitch_main.is_pink_on = true;
				break;
		}
		with o_tileswitch_main {
			scr_update_butterfly_path(is_blue_on, is_red_on, is_yellow_on, is_pink_on);
		}
		
		
		num_times_used++;
	}
}

else if moused and not pos_meet {
	moused = false;
	with tiles_to_activate {
		if not is_activated {
			image_alpha = BUTTERFLY_TILE_ALPHA;
		}
	}
	is_blue_considered = false;
	is_red_considered = false;
	is_yellow_considered = false;
	is_pink_considered = false;
	considered_path_index_to_draw = -1;
	o_path_butterfly.image_alpha = 1;
}