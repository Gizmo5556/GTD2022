if state == 0 {
	x = scr_approach(x, decoy_x, ufo_speed);
	y = scr_approach(y, decoy_y - 64, ufo_speed);
	if x == decoy_x and y == decoy_y - 64 {
		state = 1;
		audio_play_sound(snd_ufo, 0, 0);
	}
}

else if state == 1 {
	sprite_index = s_ufo_abduct;
	decoy_y--;
	decoy_xscale = scr_approach(decoy_xscale, 0, 0.01);
	decoy_yscale = scr_approach(decoy_yscale, 0, 0.01);
	
	if decoy_y <= y {
		state = 2;
		audio_stop_sound(snd_ufo);
	}
}

else if state == 2 {
	sprite_index = sprUFO;
	y -= ufo_speed;	
	
}
