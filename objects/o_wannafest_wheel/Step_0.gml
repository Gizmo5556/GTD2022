if wheel_vel > 0 {
	is_spinning = true;
	image_angle -= wheel_vel;
	wheel_vel -= wheel_decel;
	wheel_vel = max(0.0, wheel_vel);
	
	if wheel_vel == 0.0 or objRoundController.running {
		is_spinning = false;
		wheel_vel = 0.0;
		image_angle = test_final_image_angle_alt;
		event_user(0);
		alarm[0] = 100;
		audio_stop_sound(snd_wheel_spin);
		audio_play_sound(snd_wheel_spin_stop, 0, 0);
	}
}

if y < 0 and is_spinning {
	y += 20;	
	y = min(0, y);
}

if y < -500 {
	instance_destroy();	
}