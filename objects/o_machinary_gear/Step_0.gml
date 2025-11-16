if is_rotating {
	
	image_index = 1;
	
	image_angle -= 0.4;
	angle_left_to_rotate -= 0.4;
	
	if not audio_is_playing(snd_machinary_gears) { audio_play_sound(snd_machinary_gears, 0, 0); }
	
	if angle_left_to_rotate == 0 {
		is_rotating = false;
		image_index = 0;
		audio_stop_sound(snd_machinary_gears);
		audio_play_sound(snd_moon_rotating_done, 0, 0);
	}
	with o_machinary_gear_bg {
		if not reverse {	
			image_angle = other.image_angle + initial_angle;
		}
		else {
			image_angle = 180 - other.image_angle + initial_angle;
		}
	}

}

