///@desc Switch states as needed
//this variable is turned on whenever the player wins a round that isn't the final round

with objRoundController {
	other.objRC_dead = dead;
	other.objRC_is_choosing_to_continue = is_choosing_to_continue;
	other.objRC_is_choosing_freeplay = is_choosing_freeplay;
	other.objRC_all_waves_over = all_waves_over;
	other.objRC_running = running;
}


if check_for_updates {
	
	var rounds_until_money = 999999;
	var index_of_next_money_event = -1;
	var rounds_until_spin = 999999;
	var index_of_next_spin_event = -1;
	
	//look for the next round that each type of event will trigger
	for (var i = 0; i < array_length(rounds_to_spawn_money); i++) {
		//check each round num until we find one that is greater than the current round. then find difference
		var round_num = rounds_to_spawn_money[@ i]
		if round_num >= global.wave + 1 {
			rounds_until_money = round_num - global.wave - 1;
			index_of_next_money_event = i;
			break; // to prevent choosing the highest number in the array every single time
		}
	}
	for (var i = 0; i < array_length(rounds_to_spin_wheel); i++) {
		//check each round num until we find one that is greater than the current round. then find difference
		var round_num = rounds_to_spin_wheel[@ i]
		if round_num >= global.wave + 1 {
			rounds_until_spin = round_num - global.wave - 1
			index_of_next_spin_event = i;
			break; // to prevent choosing the highest number in the array every single time
		}
	}
	
	// bugfix -- if game is beat and save is reloaded, the wheel can spawn a 2nd time if its final wave event ended during that wave.
	// OR, if the player dies and the save is reloaded, the wheel will respawn even if the event had some time left over
	// If this var is true, force WAITING_UNTIL_CASH state. objRoundController will fix this when out of the dead/is_choosing_... menus. Probably not an easier way without refactoring.
	wheel_locked_down = objRC_dead or objRC_is_choosing_to_continue or objRC_is_choosing_freeplay or objRC_all_waves_over
	
	//whichever number is lower indicates which event will happen next
	if rounds_until_money < rounds_until_spin or wheel_locked_down or wheel_effect_frames_left > 0 {
		if rounds_until_money == 0 {
			state = WANNAFEST_HANDLER_STATES.SPAWNING_CASH;
			rounds_left_until_event = rounds_until_spin;
			event_name = "Wheel of Misfortune";
			
			//actual event
			dollar_worth = dollar_worth_array[@ index_of_next_money_event];
			alarm[0] = dollars_to_spawn + 1;
			alarm[1] = dollars_to_spawn + 200;
			
			
		}
		else {
			state = WANNAFEST_HANDLER_STATES.WAITING_UNTIL_CASH;
			rounds_left_until_event = rounds_until_money;
			event_name = "Money Mania";	
		}
		
	}
	else if rounds_until_spin < rounds_until_money {
		if rounds_until_spin == 0 {
			state = WANNAFEST_HANDLER_STATES.SPINNING_WHEEL;
			rounds_left_until_event = rounds_until_money;
			event_name = "Money Mania";
			
			wheel = instance_create_layer(400, -350, "wheel", o_wannafest_wheel);
			chosen_wheel_option = wheel.final_wheel_option;
		
			//probably best to keep the amount of seconds the same regardless of waves
			//for example cherry rain may last 15 seconds but reverse path could last 60 seconds
			//better to scale how effective these events are in other ways, if possible?
			if chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH {
				wheel_effect_frames_left = 60 * 50;
			}
			else if chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.SPEEDUP {
				wheel_effect_frames_left = 50 * 50;
			}
			else if chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.BOSS_REGEN {
				wheel_effect_frames_left = 35 * 50;
			}
			else if chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN {
				wheel_effect_frames_left = 20 * 50;
			}
		
		
			wheel_effect_frames_left_max = wheel_effect_frames_left;	
		}
		else {
			state = WANNAFEST_HANDLER_STATES.WAITING_UNTIL_SPIN;
			rounds_left_until_event = rounds_until_spin;
			event_name = "Wheel of Misfortune";	
		}
	}
	
	check_for_updates = false;	
}


//in some cases, like with the Money Mania event, we just want to update the stuff that will be used in text drawing
//so we'll have this minor chunk possible to call without calling "check_for_updates"
if update_rounds_left_until_event {
	
	if state == WANNAFEST_HANDLER_STATES.WAITING_UNTIL_CASH or state == WANNAFEST_HANDLER_STATES.SPINNING_WHEEL {
		
		for (var i = 0; i < array_length(rounds_to_spawn_money); i++) {
			//check each round num until we find one that is greater than the current round. then find difference
			var round_num = rounds_to_spawn_money[@ i]
			if round_num > global.wave + 1 {
				rounds_left_until_event = round_num - global.wave - 1
				event_name = "Money Mania";
				break; // to prevent choosing the highest number in the array every single time
			}
		}
		
	}
	else if state == WANNAFEST_HANDLER_STATES.WAITING_UNTIL_SPIN or state == WANNAFEST_HANDLER_STATES.SPAWNING_CASH {
		
		for (var i = 0; i < array_length(rounds_to_spin_wheel); i++) {
			//check each round num until we find one that is greater than the current round. then find difference
			var round_num = rounds_to_spin_wheel[@ i]
			if round_num > global.wave + 1 {
				rounds_left_until_event = round_num - global.wave - 1
				event_name = "Wheel of Misfortune";
				break; // to prevent choosing the highest number in the array every single time
			}
		}
		
	}
	
	update_rounds_left_until_event = false;
	
}

should_draw_gui = not(objRC_is_choosing_to_continue
or objRC_is_choosing_freeplay or 
objRC_all_waves_over);

if instance_exists(o_wannafest_wheel) and o_wannafest_wheel.is_spinning {
	should_draw_gui = false;
}



if chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN and wheel_effect_frames_left > 0 and not instance_exists(o_cherry_rain_handler) {
	instance_create_layer(-400, -400, "cherry_rain_clouds", o_cherry_rain_handler)
}

