//toggle speed up with S
/*
if keyboard_check_pressed(ord("S")) { is_sped_up = not is_sped_up; }

if is_sped_up { room_speed = 50 * global.option_fast_forward_multiplier; }
else { room_speed = 50; }
*/
//player presses backspace -- go back to map selection screen
/*if keyboard_check_pressed(vk_backspace) {
	audio_stop_all();
	room_goto(r_choosemap);
}*/


//sabotage timer/updates
if running and global.bloon_sabotage_timer > 0 and global.sabotage_multiplier < 1.0 {
	global.bloon_sabotage_timer--;
	if global.bloon_sabotage_timer == 0 {
		global.sabotage_multiplier = 1.0;
		//fix speed for every apple
		with objApple {
			path_speed = scr_get_fruit_speed();
		}
	}
}