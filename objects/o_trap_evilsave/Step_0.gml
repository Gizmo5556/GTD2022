if state == 0 {
	image_index = 0;
	if collision_rectangle(640, 288, 800, 448, objApple, 0, 0){
		state = 1;
		audio_play_sound(snd_roar_fast, 0, 0);
	}
}

else if state == 1 {
	if not instance_exists(objApple) {
		state = 0;
		speed = 0;
		x = source_x;
		y = source_y;
	}
	else if speed == 0 {
		speed = 5;
		direction = target_direction; //head for exit to protect it
		explosion_timer = explosion_timer_max;
	}
	
	if explosion_timer > 0 {
		
		explosion_timer--;
		
		if explosion_timer = 0 {
			
			explosions_left = num_explosions;
			
			alarm[0] = 1;
			
			image_alpha = 0;
			speed = 0;
			state = 2
			x = source_x;
			y = source_y;
			recharge_timer = recharge_timer_max;
		}
	}	
}

else if state == 2 {
	image_index = 0;
	image_alpha = 1-(recharge_timer/recharge_timer_max);
	
	recharge_timer--;
	
	if recharge_timer == 0 {
		state = 0;	
	}
}