// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(){
	
	var file_name = room_get_name(room) + string(global.current_difficulty) + ".sav";
	
	if (file_exists(file_name)) {
		var _buffer = buffer_load(file_name);
		var _string = buffer_read(_buffer, buffer_string);
		
		//decode string
		//first get rid of garbage characters
		_string = string_delete(_string, 1, 5);
		_string = base64_decode(_string);
		
		
		
		
		buffer_delete(_buffer);
		
		var load_data = json_parse(_string);

		//first, load game data
		var load_struct = array_pop(load_data);
		
		global.wave = load_struct.wave;
		global.finalwave = load_struct.final_wave;
		global.money = load_struct.money;
		global.life = load_struct.lives_num;
		global.number_of_fruit_spawned = load_struct.number_of_fruit_spawned;
		global.number_of_bosses_spawned = load_struct.number_of_bosses_spawned;
		global.sabotage_multiplier = load_struct.sabotage_multiplier;
		objRoundController.main_game_complete = load_struct.main_game_complete;
		objRoundController.is_freeplay_mode = load_struct.is_freeplay_mode;
		objRoundController.is_main_game = load_struct.is_main_game;
		objRoundController.can_earn_medal = load_struct.can_earn_medal;
		objRoundController.bs_round_cooldown = load_struct.bs_round_cooldown;
		objRoundController.bloon_sabotage_timer = load_struct.bloon_sabotage_timer;
		objRoundController.is_choosing_freeplay = load_struct.is_choosing_freeplay;
		objRoundController.is_choosing_to_continue = load_struct.is_choosing_to_continue;
		objRoundController.dead = load_struct.dead;

		//now load map specific data -- will be empty if there is nothing to load
		load_struct = array_pop(load_data);
		
		if room == rGuy {
			with o_trap_seller {
				if load_struct.has_trap1 and trap_obj == o_trap_spikewall1 {
					instance_create_layer(trap_source_x, trap_source_y, "Traps", trap_obj);
					instance_destroy();
				}
				if load_struct.has_trap2 and trap_obj == o_trap_spikewall2 {
					instance_create_layer(trap_source_x, trap_source_y, "Traps", trap_obj);
					instance_destroy();
				}
				if load_struct.has_trap3 and trap_obj == o_trap_spikewall3 {
					instance_create_layer(trap_source_x, trap_source_y, "Traps", trap_obj);
					instance_destroy();
				}
			}
		}
		
		else if room == r_moon {
			o_moon.angle_left_to_rotate = load_struct.moon_angle_left;
			o_moon.is_rotating = load_struct.moon_is_rotating;
			o_moon.image_angle = load_struct.moon_image_angle;
		}
		else if room == r_machinary {
			o_machinary_gear.angle_left_to_rotate = load_struct.gear_angle_left;
			o_machinary_gear.is_rotating = load_struct.gear_is_rotating;
			o_machinary_gear.image_angle = load_struct.gear_image_angle;
		}
		else if room == r_guytower {
			with o_trap_seller {
				if load_struct.has_trap {
					instance_create_layer(trap_source_x, trap_source_y, "Traps", trap_obj);
					instance_destroy();
				}
			}
			
		}
		else if room == r_dewrace {
			with o_trap_seller {
				if load_struct.has_trap {
					var a = instance_create_layer(trap_source_x, trap_source_y, "Traps", trap_obj);
					instance_destroy();
					a.y = load_struct.trap_y_pos;
					a.rbe_left = load_struct.trap_rbe_left
				}
			}
			
		}
		else if room == r_butterfly {
			o_tileswitch_blue.num_times_used = load_struct.blue_times_used;
			o_tileswitch_red.num_times_used = load_struct.red_times_used;
			o_tileswitch_yellow.num_times_used = load_struct.yellow_times_used;
			o_tileswitch_pink.num_times_used = load_struct.pink_times_used;
		}
		else if room == r_blackhole {
			o_black_hole_gimmick.image_xscale = load_struct.scale;
			o_black_hole_gimmick.image_yscale = load_struct.scale;
			o_black_hole_gimmick.goal_scale = load_struct.goal_scale;
			o_black_hole_gimmick.is_growing = load_struct.is_growing;
			o_black_hole_seller.round_cooldown = load_struct.seller_rd;
			o_black_hole_seller.num_times_used = load_struct.num_times_used;
			o_black_hole_seller.current_price = load_struct.current_price;
			global.is_blackhole_turned_off = load_struct.glob_bhole_off;
		}
		else if room == r_coinstack {
			o_coinstack_towerbase.y = load_struct.y_val;
			o_coinstack_towerbase.y_goal = load_struct.y_goal;
			o_coinstack_towerbase.is_moving = load_struct.is_moving;
			o_coinstack_towerbase.num_times_used = load_struct.num_times_used;
			global.coinstack_path_index = load_struct.coin_path_index;
			o_path_coinstack.image_index = load_struct.coin_path_image_index;
		}
		else if room == r_untitled {
			with o_trap_seller {
				if load_struct.has_trap {
					instance_create_layer(trap_source_x, trap_source_y, "Traps", trap_obj);
					instance_destroy();
				}
			}
		}
		else if room == r_wannafest {
			o_wannafest_handler.chosen_wheel_option = load_struct.chosen_wheel_option;
			o_wannafest_handler.wheel_effect_frames_left = load_struct.wheel_effect_frames_left;
			o_wannafest_handler.wheel_effect_frames_left_max = load_struct.wheel_effect_frames_left_max;
		}
		/*else if room == r_catharsis {
				
		}*/
		
		//finally, load tower info and anything else needed
		while (array_length(load_data) > 0) {
			load_struct = array_pop(load_data);
			if load_struct.obj_type_str == "spike_pile" {
				var pile = instance_create_layer(load_struct.x, load_struct.y, "Spike_Piles", o_spike_pile);
				pile.image_angle = load_struct.image_angle;
				pile.sprite_index = load_struct.sprite_index;
				pile.speed = load_struct.speed;
				pile.direction = load_struct.direction;
				pile.layers_to_pierce = load_struct.layers_to_pierce;
				pile.is_moving = load_struct.is_moving;
				pile.can_hit_lead = load_struct.can_hit_lead;
				pile.can_hit_frozen = load_struct.can_hit_frozen;
				pile.can_hit_black = load_struct.can_hit_black;
				pile.can_hit_camo = load_struct.can_hit_camo;
				pile.clay_atk_power = load_struct.clay_atk;
				pile.lead_atk_power = load_struct.lead_atk;
				pile.boss_atk_power = load_struct.boss_atk;
				pile.spikes_left = load_struct.spikes_left;
				pile.rounds_left = load_struct.spikes_left;
				pile.time_left = load_struct.time_left;
				pile.target_x = load_struct.target_x;
				pile.target_y = load_struct.target_y;
				pile.image_blend = load_struct.img_blend;
			}
			else if load_struct.obj_type_str == "tower" {
				var tower = instance_create_layer(load_struct.x, load_struct.y, "Towers", load_struct.obj);
				tower.targeting_mode = load_struct.targeting_mode;
				tower.is_direction_locked = load_struct.is_direction_locked;
				tower.locked_direction = load_struct.locked_direction;
				
				tower.locked_x = load_struct.locked_x;
				tower.locked_y = load_struct.locked_y;
			
				tower.moon_relevant_angle = load_struct.moon_relevant_angle;
				tower.moon_dist_from_center = load_struct.moon_dist_from_center;
				tower.is_on_moon = load_struct.is_on_moon;
				
				tower.amd_buff_active = load_struct.amd_active;
				tower.amd_buff_shots_left = load_struct.amd_shots_left;
				tower.amd_received_boss_damage_boost = load_struct.amd_boss_boost;
				tower.amd_received_clay_damage_boost = load_struct.amd_clay_boost;
				
				tower.is_on_cointower = load_struct.is_on_cointower;
				
				tower.bonus_cooldown = load_struct.bonus_cooldown;
				tower.bonus_range = load_struct.bonus_range;
				tower.bonus_piercing = load_struct.bonus_piercing;
				tower.bonus_damage = load_struct.bonus_damage;
				tower.previous_bosses_destroyed = load_struct.pbd;
				tower.previous_fruit_destroyed = load_struct.pfd;
				tower.hard_diff = load_struct.hard_diff;
				tower.are_stats_reset = load_struct.are_stats_reset;
				
				tower.has_used_spike_storm = load_struct.has_used_spike_storm;
				tower.ss_spikes_left = load_struct.ss_spikes_left;
				tower.ss_cooldown = load_struct.ss_cooldown;
				
				tower.elephant_cooldown = load_struct.elephant_cooldown;
				if tower.object_index == o_viridian_base {
					tower.viridian.elephant_cooldown = tower.elephant_cooldown;	
				}
				
				
				
				
				for (var i = 0; i < load_struct.num_upgrades; i++) {
					scr_upgrade_tower(tower, i + 5*tower.tower_index);	
				}
				tower.total_money_spent = load_struct.money_spent;
			}
		}
	}
	
	scr_update_village_upgrades();
	scr_update_sray_boosts();
	with objTower {
		scr_update_tower_range();
	}
	//update some vars for blackhole room if needed
	
}