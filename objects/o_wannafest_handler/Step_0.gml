/// @desc execute the code depending on the state chosen from begin step

if wheel_effect_frames_left > 0 and objRC_running {
	wheel_effect_frames_left -= 1;
	if wheel_effect_frames_left <= 0 {
		//for SPEEDUP/BOSS_REGEN, undo the event midround if needed
		var old_option = chosen_wheel_option;
		chosen_wheel_option = -1; //need to set this before calling get_fruit_speed()
		if old_option == WANNAFEST_WHEEL_OPTIONS.SPEEDUP {
			with objApple {
				path_speed = scr_get_fruit_speed();
			}
		}
		else if old_option == WANNAFEST_WHEEL_OPTIONS.BOSS_REGEN {
			with objAppleMOAB {
				sprite_index = s_prince_blue;
				is_regen = false;
			}
			with objAppleBFB {
				sprite_index = s_prince_red;
				is_regen = false;
			}
			with objAppleZOMG {
				sprite_index = s_prince_green_og;
				is_regen = false;
			}
			with objAppleDDT {
				sprite_index = s_prince_yellow;
				is_regen = false;
			}
			with objAppleBAD {
				sprite_index = sprFinalBoss;
				is_regen = false;
			}
			with objBoss_phase1 {
				sprite_index = s_final_boss_phase1;
				is_regen = false;
			}
			with objAppleBAD_extra {
				sprite_index = sprFinalBoss;
				is_regen = false;
			}
		}
	}
}





if state == WANNAFEST_HANDLER_STATES.SPAWNING_CASH {
	var xx = irandom_range(0, 800);
	var yy = irandom_range(-8, -32);
	var dollar = instance_create_layer(xx, yy, "cash_rain", o_wannafest_dollar);
	dollar.worth = dollar_worth //* global.income_reduction not sure if i should include income_reduction or not
	
	//this one stays the same in both EN and JP translations
	temp_text_to_draw = "MONEY MANIA!!!!!"
}

//text_to_draw
if alarm[1] < 2 and temp_text_to_draw == "" and rounds_left_until_event > 0 {
	/*if state == WANNAFEST_HANDLER_STATES.WAITING_UNTIL_CASH or state == WANNAFEST_HANDLER_STATES.WAITING_UNTIL_SPIN {
		var middle = rounds_left_until_event == 1 ? " Wave" : " Waves";
		text_to_draw = string(rounds_left_until_event) + string(middle) + " Until\n" + string(event_name);
	}
	else if state == WANNAFEST_HANDLER_STATES.SPINNING_WHEEL and chosen_wheel_option == -1 {
		text_to_draw = "?????????";	
	}*/
	if global.option_language == global.option_language_options.EN {
		var middle = rounds_left_until_event == 1 ? " Wave" : " Waves";
		if rounds_left_until_event <= 10 {
			text_to_draw = string(rounds_left_until_event) + string(middle) + " Until\n" + string(event_name);
		}
		else {
			//if this is the final wave (global.max_wave), rounds_left_until_event will be 999999
			//therefore, don't display text except for the wheel event activated on that wave
			text_to_draw = "";
		}
	}
	else if global.option_language == global.option_language_options.JP {
		var middle = "ウェーブ後に"; //same for singular and plural Wave
		if rounds_left_until_event <= 10 {
			if event_name == "Money Mania" {
				text_to_draw = string(rounds_left_until_event) + "ウェーブ後にMoney Mania";
			}
			else if event_name == "Wheel of Misfortune" {
				text_to_draw = "不幸のルーレットが回るまで後" + string(rounds_left_until_event) + "ウェーブ";
			}
		}
		else {
			text_to_draw = "";
		}
	}
}
else if alarm[1] > 0 {
	if global.option_language == global.option_language_options.EN {
		switch chosen_wheel_option {
			case WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH:
				temp_text_to_draw = "Reverse Path!"
				break;
			case WANNAFEST_WHEEL_OPTIONS.SPEEDUP:
				temp_text_to_draw = "Speed Up!"
				break;
			case WANNAFEST_WHEEL_OPTIONS.BOSS_REGEN:
				temp_text_to_draw = "Regen Bosses!"
				break;
			case WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN:
				temp_text_to_draw = "Fruit Rain!";
				break;
		}
	}
	else if global.option_language == global.option_language_options.JP {
		switch chosen_wheel_option {
			case WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH:
				temp_text_to_draw = "ルート反転！"
				break;
			case WANNAFEST_WHEEL_OPTIONS.SPEEDUP:
				temp_text_to_draw = "スピードアップ！"
				break;
			case WANNAFEST_WHEEL_OPTIONS.BOSS_REGEN:
				temp_text_to_draw = "ボスの怒り！"
				break;
			case WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN:
				temp_text_to_draw = "りんごの雨！";
				break;
		}
	}
	text_to_draw = temp_text_to_draw;
	wheel_timer_text = temp_text_to_draw;
}





//draw_color

if alarm[1] > 0 and alarm[1] % 25 == 0 {
	draw_color = make_color_hsv(irandom_range(0, 255), 255, 255);	
}
if alarm[1] < 2 and (state == WANNAFEST_HANDLER_STATES.WAITING_UNTIL_CASH or state == WANNAFEST_HANDLER_STATES.WAITING_UNTIL_SPIN) {
	draw_color = c_white;	
}



//should we draw the wheel circle timer and sprite representing the wheel event
if wheel_effect_frames_left > 0 and (not instance_exists(o_wannafest_wheel) or o_wannafest_wheel.is_spinning == false) {
	draw_wheel_timer = true;	
}
else {
	draw_wheel_timer = false;	
}

draw_main_text = not objRC_dead and not objRC_is_choosing_freeplay and not objRC_is_choosing_to_continue and not objRC_all_waves_over


pie_color = merge_color(c_red, c_green, wheel_effect_frames_left/wheel_effect_frames_left_max);