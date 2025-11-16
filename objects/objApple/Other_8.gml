if not is_downdrafted {
	audio_play_sound(sndDeath,0,0)

	global.life -= rbe;
	
	//global.money += scr_get_worth_ufo(object_index);

	instance_destroy()
}
//prevent fruit from going back to beginning of path and getting stuck/losing lives
else {
	is_downdrafted = false;
	downdraft_counter = 0;
	path_speed = scr_get_fruit_speed();
	path_start(pth, path_speed, 0 ,true)	
}



