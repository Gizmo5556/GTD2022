///@desc player died or won round

var player_has_died = !dead and global.life <= 0;
var player_wins_round = running && !instance_exists(objApple) && o_wave_spawner.last_fruit_spawned;

if player_has_died or player_wins_round {
	objNextWave.state = 0;
	global.is_midpoint_crossed = false;
	/*with o_geezer {
		has_used_spike_storm = false;
		if spike_storm_round_cooldown > 0 {spike_storm_round_cooldown -= 1;}
	}*/
	//stuff to do whether or not player dies or wins round
	if room == r_butterfly {
		with o_switcher_tile {
			is_activated = false;
			image_alpha = BUTTERFLY_TILE_ALPHA;
		}
		with o_tileswitch_parent {
			triggered_for_current_round = false;
			current_price = scr_update_tileswitcher_price();
		}
		with o_tileswitch_main {
			is_blue_on = false;
			is_yellow_on = false;
			is_red_on = false;
			is_pink_on = false;
		}
		//change path to default (shortest path -- no tile upgrades)
		global.butterfly_path_index = 0;
		//updates which path is visible on map
		scr_update_butterfly_path(0, 0, 0, 0); 
		//remove current path markers
		instance_destroy(o_path_marker);
	}
	else if room == r_blackhole {
		with o_black_hole_seller {
			if round_cooldown > 0 {
				round_cooldown--;
				if round_cooldown == 0 {
					global.is_blackhole_turned_off = false;	
				}
			}
		}
	}
	else if room == r_untitled {
		with o_untitled_trigger_spike {
			is_moving = true;
			vspeed = -4;
		}
		with o_untitled_trigger {
			is_activated = false;	
		}
	}
	else if room == r_machinary {
		//remove current path markers
		instance_destroy(o_path_marker);	
	}
	if bs_round_cooldown > 0 {bs_round_cooldown--;}
	with o_seong {
			are_stats_reset = false;	
	}
	
	if player_has_died {
		//player can no longer earn a completion medal for this map/difficulty -- this saves immediately as well
		can_earn_medal = false; //
		dead=true
		is_choosing_to_continue = true;
		running = false;
		scr_save_game(); //
	
	
	    
		
		o_wave_spawner.wave_in_progress = false;
		audio_stop_sound(musFinalBoss);
		audio_stop_sound(musFinalBoss2);
	    audio_play_sound(sndUhOh,0,0)
		with objApple {instance_destroy();}
	    audio_sound_gain(global.music,0,50);
	    alarm[0] = 50
	    with(objTower) {
	        repeat 200 instance_create(x,y,oPlayerBlood)
	    }
	}
	
	else if player_wins_round {
		running=false
		o_wave_spawner.wave_in_progress = false;
	    //timeline_running = false;
	    global.money += scrGetWaveWorth(global.wave);
	    audio_play_sound(sndCoin,global.sound_volume * 2,0)
	
		with o_spike_pile {
			is_round_active = false;
			rounds_left--;
			if rounds_left == 0 {
				instance_destroy();	
			}
		}
	
		///room specific junk
		//r_butterfly
	
	
		//r_moon
		if room == r_moon {
			o_moon.angle_left_to_rotate = 45;
			o_moon.is_rotating = true;
		}
		else if room == r_machinary {
			o_machinary_gear.angle_left_to_rotate = 90;
			o_machinary_gear.is_rotating = true;
		}
	
	    if global.wave != global.finalwave {
			global.wave ++;
			if global.wave == global.finalwave {
				instance_create(400,304,objFinalWave)
			}
			
			//wannafest wheel/cash spawn
			if room == r_wannafest {
				o_wannafest_handler.check_for_updates = true;
				o_wannafest_handler.update_rounds_left_until_event = true;
			}
		}
		else if global.wave == global.finalwave {
		    if is_freeplay_mode {
				all_waves_over = true;
				//give medal by changing global medal ds map
				var room_index = 0;
			
				for (var i = 0; i < array_length(global.map_list); i++) {
					if global.map_list[i] == room {
						room_index = i;
						break;
					}
				}
				if can_earn_medal {
					//assigning 2 means they have gotten the medal AND they beat freeplay with no continues
					global.medal_list[? room_get_name(global.map_list[room_index])][global.current_difficulty] = 2;
			
					//save new medal data to save file
					scr_save_medals();
				}
			}
			else if is_main_game {
				main_game_complete = true;
				
				audio_play_sound(snd_victory, 0, 0);
				alarm[3] = 75;
				alarm[2] = 175;
			
				//give medal by changing global medal ds map
				var room_index = 0;
			
				for (var i = 0; i < array_length(global.map_list); i++) {
					if global.map_list[i] == room {
						room_index = i;
						break;
					}
				}
			
				if can_earn_medal {
					//assigning 1 means they got the medal, but didn't beat freeplay yet
					global.medal_list[? room_get_name(global.map_list[room_index])][global.current_difficulty] = 1;
			
					//save new medal data to save file
					scr_save_medals();
				}
			
			
				if global.wave < global.max_wave {
					is_choosing_freeplay = true;
				}
				else {
					all_waves_over = true;	
				}
			}
		}
		if room == r_blackhole {
			if (global.wave) % 20 == 0 and global.wave <= 80 {
				with o_black_hole_room_handler {
					event_user(0);	
				}
			}
		}
		
		if global.wave < global.finalwave {
			scr_check_for_infobox_visibile();
		}
		scr_save_game();
    
		scr_update_wave_buffing();
	}
	
}

//periodically checks if a fruit made it past the halfway point
if running and check_fruit_counter > 0 {
	check_fruit_counter--;
	if check_fruit_counter == 0 {
		check_fruit_counter = 37;
		
		//check if a fruit made it halfway through the tracks
		var fruit_is_halfway = false;
		with objApple {
			if path_position > 0.5 {
				fruit_is_halfway = true;
				break;
			}
		}
		if fruit_is_halfway {
			global.is_midpoint_crossed = true;
			//bloon sabotage
			//how many sabotages to stack?
			/*if bs_round_cooldown == 0 {
				bloon_sabotage_timer = 0;
				with o_stickykeys {
					if has_bloon_sabotage {
						other.bloon_sabotage_timer += bloon_sabotage_duration;
					}
				}
				if bloon_sabotage_timer > 0 {
					global.sabotage_multiplier = 0.5;
					with objApple {
						path_speed = scr_get_fruit_speed();	
					}
					bs_round_cooldown = 2; //bs needs the current round + the next round to end before reusing
				}	
			}*/
		}
	}
}