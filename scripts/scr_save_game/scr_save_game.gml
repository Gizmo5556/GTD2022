// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game(){
	
	var save_data = array_create(0)
	
	//tower data
	with objTower {
		var save_struct =
		{
			obj_type_str: "tower",
			obj: object_index,
			x : x,
			y : y,
			num_upgrades : upgrade_count,
			targeting_mode : targeting_mode,
			is_direction_locked : is_direction_locked,
			locked_direction : locked_direction,
			locked_x : locked_x,
			locked_y : locked_y,
			//is needed in case some upgrades were bought with a village discount
			money_spent : total_money_spent,
			
			moon_dist_from_center : moon_dist_from_center,
			moon_relevant_angle : moon_relevant_angle,
			is_on_moon : is_on_moon,
			
			//amd variables so that amd carries over during saving/loading
			amd_active : amd_buff_active,
			amd_shots_left : amd_buff_shots_left,
			amd_boss_boost : amd_received_boss_damage_boost,
			amd_clay_boost : amd_received_clay_damage_boost,
			
			is_on_cointower : is_on_cointower,
			
			//seong vars
			bonus_cooldown : bonus_cooldown,
			bonus_range : bonus_range,
			bonus_piercing : bonus_piercing, 
			bonus_damage : bonus_damage,
			pbd : previous_bosses_destroyed,
			pfd : previous_fruit_destroyed,
			hard_diff : hard_diff,
			are_stats_reset : are_stats_reset,
			
			//geezer
			has_used_spike_storm : has_used_spike_storm,
			ss_spikes_left : ss_spikes_left,
			ss_cooldown : ss_cooldown,
			
			//viridian
			elephant_cooldown : elephant_cooldown,
		}
		//viridian_main is what keeps track of the elephant cooldown that is used
		if object_index == o_viridian_base {
			save_struct.elephant_cooldown = viridian.elephant_cooldown;	
		}
		array_push(save_data, save_struct);
	}
	
	with o_spike_pile {
		save_struct	=
		{
			obj_type_str: "spike_pile",
			x: x,
			y: y,
			speed: speed,
			direction : direction,
			image_angle : image_angle,
			sprite_index : sprite_index,
			img_blend : image_blend,
			is_moving : is_moving,
			can_hit_lead : can_hit_lead,
			can_hit_frozen : can_hit_frozen,
			can_hit_camo : can_hit_camo,
			can_hit_black : can_hit_black,
			clay_atk : clay_atk_power,
			lead_atk : lead_atk_power,
			boss_atk : boss_atk_power,
			spikes_left : spikes_left,
			rounds_left : rounds_left,
			time_left : time_left,
			target_x : target_x,
			target_y : target_y,
			layers_to_pierce : layers_to_pierce,
		}
		array_push(save_data, save_struct);
		
	}
	
	//map specific data
	if room == rGuy {
		save_struct = {
			has_trap1 : instance_exists(o_trap_spikewall1),
			has_trap2 : instance_exists(o_trap_spikewall2),
			has_trap3 : instance_exists(o_trap_spikewall3),
		}
		
	}
	else if room == r_moon {
		save_struct = {
			moon_is_rotating : o_moon.is_rotating,
			moon_angle_left : o_moon.angle_left_to_rotate,
			moon_image_angle : o_moon.image_angle,
		}
		
	}
	else if room == r_machinary {
		save_struct = {
			gear_is_rotating : o_machinary_gear.is_rotating,
			gear_angle_left : o_machinary_gear.angle_left_to_rotate,
			gear_image_angle : o_machinary_gear.image_angle,
		}
		
	}
	else if room == r_guytower {
		save_struct = {
			has_trap : instance_exists(o_trap_evilsave),
		}
		
	}
	else if room == r_dewrace {
		save_struct = {
			has_trap : instance_exists(o_trap_appleguard),
			trap_rbe_left : 0,
			trap_y_pos : 0,
		}
		if instance_exists(o_trap_appleguard) {
			save_struct.trap_rbe_left = o_trap_appleguard.rbe_left;
			save_struct.trap_y_pos = o_trap_appleguard.y;
		}	
		
	}
	else if room == r_butterfly {
		save_struct = {
			blue_times_used : o_tileswitch_blue.num_times_used,
			red_times_used : o_tileswitch_red.num_times_used,
			yellow_times_used : o_tileswitch_yellow.num_times_used,
			pink_times_used : o_tileswitch_pink.num_times_used,
		}
	}
	else if room == r_blackhole {
		save_struct = {
			scale : o_black_hole_gimmick.image_xscale,
			goal_scale : o_black_hole_gimmick.goal_scale,
			is_growing : o_black_hole_gimmick.is_growing,
			seller_rd : o_black_hole_seller.round_cooldown,
			num_times_used : o_black_hole_seller.num_times_used,
			current_price : o_black_hole_seller.current_price,
			glob_bhole_off : global.is_blackhole_turned_off,
		};	
	}
	else if room == r_coinstack {
		save_struct = {
			is_moving : o_coinstack_towerbase.is_moving,
			y_goal : o_coinstack_towerbase.y_goal,
			num_times_used : o_coinstack_towerbase.num_times_used,
			y_val : o_coinstack_towerbase.y,
			coin_path_index : global.coinstack_path_index,
			coin_path_image_index : o_path_coinstack.image_index,
			
		}
	}
	else if room == r_untitled {
		save_struct = {
			has_trap : instance_exists(o_untitled_apple),
		}
	}
	else if room == r_wannafest {
		save_struct = {
			chosen_wheel_option : o_wannafest_handler.chosen_wheel_option,
			wheel_effect_frames_left : o_wannafest_handler.wheel_effect_frames_left,
			wheel_effect_frames_left_max : o_wannafest_handler.wheel_effect_frames_left_max,
		}
	}
	else {
		//if there's nothing to save then push an empty struct -- this makes the loading process easier
		save_struct = {}
	}
	array_push(save_data, save_struct);
	
	
	//game specific data - wave number, money, lives, map, difficulty, etc
	save_struct = {
		wave : global.wave,
		final_wave : global.finalwave,
		money : global.money,
		lives_num : global.life,
		map : room,
		difficulty : global.current_difficulty,
		main_game_complete : objRoundController.main_game_complete,
		is_choosing_to_continue : objRoundController.is_choosing_to_continue,
		is_choosing_freeplay : objRoundController.is_choosing_freeplay,
		is_freeplay_mode : objRoundController.is_freeplay_mode,
		is_main_game : objRoundController.is_main_game,
		can_earn_medal : objRoundController.can_earn_medal,
		number_of_fruit_spawned : global.number_of_fruit_spawned,
		number_of_bosses_spawned : global.number_of_bosses_spawned,
		sabotage_multiplier : global.sabotage_multiplier,
		bs_round_cooldown : objRoundController.bs_round_cooldown,
		bloon_sabotage_timer : objRoundController.bloon_sabotage_timer,
		dead : objRoundController.dead,
	}
	
	array_push(save_data, save_struct);
	
	var file_name = room_get_name(room) + string(global.current_difficulty) + ".sav";
	
	var _string = json_stringify(save_data);
	
	
	//security so it's at least a little difficult to see/modify save data
	//first: convert string to base64, then add some characters at the beginning just to fuck things up
	
	_string = base64_encode(_string);
	_string = "MjU0" + _string; //characters are 64 encoded of the string "254" haha funny :)
	_string = "P" + _string; //just another random character
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, file_name);
	buffer_delete(_buffer);
}