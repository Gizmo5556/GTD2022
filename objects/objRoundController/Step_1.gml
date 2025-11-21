
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