///@desc UI Handling for getting game over, completing the main waves, and completing freeplay
var has_player_clicked = mouse_check_button_pressed(mb_left);

//player got a game over -- create buttons
if is_choosing_to_continue and not instance_exists(o_back_to_maps_button) {
	map_button = instance_create_layer(550, 400, "top_layer_UI", o_back_to_maps_button);
	map_button.image_xscale = 2;
	map_button.image_yscale = 2;
	continue_button = instance_create_layer(400, 400, "top_layer_UI", o_continue_button);
	continue_button.image_xscale = 2;
	continue_button.image_yscale = 2;
	if is_freeplay_mode {
		continue_button.sprite_index = s_freeplay_button;	
	}
	retry_button = instance_create_layer(250, 400, "top_layer_UI", o_retry_level_button);
	retry_button.image_xscale = 2;
	retry_button.image_yscale = 2;
}

//player mouses over or clicks one of the three buttons after game over
else if is_choosing_to_continue {
	//go back to choosing a map
	if position_meeting(mouse_x, mouse_y, map_button) {
		if has_player_clicked {
			audio_stop_sound(musDeath);
			is_choosing_to_continue = false;
			audio_stop_all();
			scr_play_music();
			alarm[0] = -1; //stop game over music from starting if it hasn't already
			room_goto(r_choosemap);	
			
		}
	}
	//retry level from first round
	else if position_meeting(mouse_x, mouse_y, retry_button) {
		if has_player_clicked {
			audio_stop_sound(musDeath);
			global.wave = 0;
			is_choosing_to_continue = false;
			if not audio_is_playing(global.music) or audio_sound_get_gain(global.music) <= 0 {
				audio_stop_all();	
			}
			scr_play_music();
			alarm[0] = -1; //stop game over music from starting if it hasn't already
			room_restart();	
		}
	}
	//continue from current round, but forfeit completion medal
	else if position_meeting(mouse_x, mouse_y, continue_button) {
		if has_player_clicked {
			audio_stop_sound(musDeath);
			is_choosing_to_continue = false;
			global.life = scr_get_starting_health(global.current_difficulty);
			//with objApple {instance_destroy();}
			with map_button instance_destroy();
			with retry_button instance_destroy();
			with continue_button instance_destroy();
			running = false;
			dead = false;
			last_fruit_spawned = true;
			if not audio_is_playing(global.music) or audio_sound_get_gain(global.music) <= 0 {
				audio_stop_all();	
			}
			scr_play_music();
			alarm[0] = -1; //stop game over music from starting if it hasn't started already
			if room == r_wannafest and o_wannafest_handler.wheel_locked_down {
				o_wannafest_handler.wheel_locked_down = false;
				o_wannafest_handler.check_for_updates = true;
				o_wannafest_handler.update_rounds_left_until_event = true;
			}
			
		}
	}
}


//player just beat main "game"
else if is_choosing_freeplay and not instance_exists(o_back_to_maps_button) {
	map_button = instance_create_layer(475, 400, "top_layer_UI", o_back_to_maps_button);
	map_button.image_xscale = 2;
	map_button.image_yscale = 2;
	
	freeplay_button = instance_create_layer(325, 400, "top_layer_UI", o_freeplay_button);
	freeplay_button.image_xscale = 2;
	freeplay_button.image_yscale = 2;
	
}
//player is choosing to either go back to map selection or continue with freeplay mode
else if is_choosing_freeplay {
	//choosing to go back to map selection
	if position_meeting(mouse_x, mouse_y, map_button) {
		if has_player_clicked {
			is_choosing_freeplay = false;
			part_particles_clear(global.particles);
			room_goto(r_choosemap);	
		}
	}
	//choosing to continue with freeplay mode
	else if freeplay_button != noone and position_meeting(mouse_x, mouse_y, freeplay_button) {
		if has_player_clicked {
			is_choosing_freeplay = false;
			is_freeplay_mode = true;
			global.wave++;
			global.finalwave = global.max_wave;
			with map_button instance_destroy();
			with freeplay_button instance_destroy();
			
		}
	}
}

//player just beat all available waves
else if all_waves_over and not instance_exists(o_back_to_maps_button) {
	map_button = instance_create_layer(400, 400, "top_layer_UI", o_back_to_maps_button);
	map_button.image_xscale = 2;
	map_button.image_yscale = 2;
}

else if all_waves_over {
	if position_meeting(mouse_x, mouse_y, map_button) {
		if has_player_clicked {
			is_choosing_freeplay = false;
			room_goto(r_choosemap);	
		}
	}
}