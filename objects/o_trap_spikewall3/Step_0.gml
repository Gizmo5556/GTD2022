
//waiting to detect fruit
if state == 0 {
	if collision_rectangle(32, 384, 624, 480, objApple, 0, 0) {
		state = 1;
		audio_play_sound(sndSpikeTrap, 0, 0);
	}
}

//moving towards fruit
else if state == 1 {
	direction = 180;
	speed = 60;
	if x <= 80 {
		x = 80;
		speed = 0;
		state = 2;
		alarm[0] = 100;
	}
}

else if state == 2 { //turn off mask so wall doesn't hit fruit on the way back
	mask_index = sprNothing;	
}

else if state == 3 {
	direction = 0;
	speed = 3;
	
	if x >= 832 {
		x = 832;
		state = 0;
		mask_index = s_trap_spikewall;	
	}
}