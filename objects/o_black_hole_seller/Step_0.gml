///@desc the actual gimmick
if round_cooldown == 0 and position_meeting(mouse_x, mouse_y, id) and not instance_exists(objPlacer) {
	moused = true;
	if mouse_check_button_pressed(mb_left) {
		round_cooldown = round_cooldown_max;
		global.money -= current_price;
		audio_play_sound(sndMoney,0,0);
		//audio_play_sound(snd_blackhole_rumble,0,0);
		num_times_used++;
		global.is_blackhole_turned_off = true;
		with objApple {
			path_speed = scr_get_fruit_speed();	
		}
		current_price = scr_update_bhole_price();
		
	}
}
else {
	moused = false;	
}
/*
with o_black_hole {
	if global.is_blackhole_turned_off {
		global.blackhole_shader_time_uniform = scr_approach(
		global.blackhole_shader_time_uniform , -3000.0, 50.0);
		
	}
	else {
		global.blackhole_shader_time_uniform = scr_approach(
		global.blackhole_shader_time_uniform, 0.0, 50.0);	
	}
}*/
