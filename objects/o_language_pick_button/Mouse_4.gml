if collision_point(mouse_x,mouse_y,id, 0, 0) {
	global.option_language = language;
	scr_save_medals();
	
	//additionally, regenerate the tower info, since otherwise it will default to English
	scrUpgradePrices();
	scr_set_tower_desc();
	
	io_clear();
	audio_play_sound(sndCoin, 0, 0);
	room_goto(rTitle);
}