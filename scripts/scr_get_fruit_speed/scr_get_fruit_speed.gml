// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_fruit_speed(){
	
	var base_speed = global.spd * global.speed_ramp;
	
	switch(object_index) {
		case objApple:
			base_speed *= 1.0;
			break;
		case objAppleBlue:
			base_speed *= 1.4;
			break;
		case objAppleGreen:
			base_speed *= 1.8;
			break;
		case objAppleYellow:
			base_speed *= 3.2;
			break;
		case objApplePink:
			base_speed *= 3.5;
			break;
		case objAppleBlack:
			base_speed *= 1.8;
			break;
		case objAppleWhite:
			base_speed *= 2.0;
			break;
		case objAppleZebra:
			base_speed *= 1.8;
			break;
		case objAppleLead:
			base_speed *= 1.0;
			break;
		case objAppleRainbow:
			base_speed *= 2.2;
			break;
		case objAppleClay:
			base_speed *= 2.5;
			break;
		case o_apple_super_clay:
			base_speed *= 2.5;
			break;
		case objAppleMOAB:
			base_speed *= 1.0;
			break;
		case objAppleBFB:
			base_speed *= 0.25;
			break;
		case objAppleZOMG:
			base_speed *= 0.18;
			break;
		case objAppleDDT:
			base_speed *= 2.64;
			break;
		case objAppleBAD:
		case objBoss_phase1:
		case objAppleBAD_extra:
			base_speed *= 0.18;
			//cap speed ramp so freeplay BADs aren't too hard
			base_speed /= global.speed_ramp;
			base_speed *= min(global.speed_ramp, 1.8)
			break;
	}
	
	//status effects
	if object_index != objAppleBAD and object_index != objBoss_phase1 and object_index != objAppleBAD_extra {
		base_speed *= global.sabotage_multiplier;
			
		if frozen_time_left > 0 {
			base_speed = 0;	
		}
		if is_downdrafted {
			base_speed = -3.5;	
		}
		//icicle impale slows moab fruit to ZOMG speed, unless it's a ZOMG, in which case it gets half speed
		if impale_time_left > 0 {
			switch(object_index) {
				case objAppleMOAB:
					base_speed /= 1.0;
					base_speed *= 0.18;
					break;
				case objAppleBFB:
					base_speed /= 0.25;
					base_speed *= 0.18;
					break;
				case objAppleZOMG:
					base_speed *= 0.5;
					break;
				case objAppleDDT:
					base_speed /= 2.64;
					base_speed *= 0.18;
					break;
			}
		}
		//glue gunner
		if slow_duration_left > 0 {
			if is_boss {base_speed *= GLUE_SLOW_AMOUNT_BOSS}
			else {base_speed *= GLUE_SLOW_AMOUNT}
		}
		//sniper clay slow down
		if stun_timer > 0 {base_speed *= SNIPER_CLAY_STUN_AMOUNT;}
		
		//after impale time wears off, bosses still have a permanent 25% slowdown
		if has_permafrost and impale_time_left <= 0 {
			base_speed *= 0.75;	
		}
			
		//do not have sabotage stack with others
		//having permafrost stack with sabotage is fine though
		if slow_duration_left > 0 or stun_timer > 0 or impale_time_left > 0 {
			base_speed /= global.sabotage_multiplier;	
		}
			
	}
	
	if room == r_blackhole and not global.is_blackhole_turned_off and not is_downdrafted {
		base_speed *= 1.375;	
	}
	
	if room == r_nang {
		if conveyor_state == NANG_RIGHT_CONVEYOR and base_speed >= 0 {
			base_speed *= 2;
		}
		if conveyor_state == NANG_RIGHT_CONVEYOR and base_speed < 0 {
			base_speed *= 0.5;
		}
		else if conveyor_state == NANG_LEFT_CONVEYOR  and base_speed >= 0 {
			base_speed *= 0.5;	
		}
		else if conveyor_state == NANG_LEFT_CONVEYOR and base_speed < 0 {
			base_speed *= 2;
		}
	}
	
	if room == r_wannafest and o_wannafest_handler.chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.SPEEDUP {
		if global.wave + 1 == 40 {
			base_speed *= 1.2;	
		}
		else if global.wave + 1 == 100 {
			base_speed *= 1.16;	
		}
		else if global.wave + 1 == 140 {
			base_speed *= 1.2;	
		}
		else {
			base_speed *= 1.35;	
		}
	}
	
	
	return base_speed;
}