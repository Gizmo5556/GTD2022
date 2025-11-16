if image_xscale < goal_scale {
	image_xscale += 0.0125 * (50 / room_speed);
	image_yscale += 0.0125 * (50 / room_speed);
	is_growing = true;
	if image_xscale >= goal_scale { 
		audio_stop_sound(snd_blackhole_rumble);
		scr_update_sray_boosts()
		scr_update_village_upgrades()
	}
}
else {
	is_growing = false;	
}
