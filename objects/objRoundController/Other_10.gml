///@desc Start round


running = true;
o_wave_spawner.last_fruit_spawned = false;
o_wave_spawner.timer = 0;
o_wave_spawner.wave_in_progress = true;

//make all unactivated tiles invisible in butterfly room
if room == r_butterfly {
	with o_switcher_tile {
		if not is_activated {
			image_alpha = 0;	
		}
	}
	//generate markers if map is butterfly
	scr_generate_path_markers();
}

else if room == r_machinary {
	scr_generate_path_markers();	
}

with o_spike_pile {
	is_round_active = true;
}
with o_spact {
	if has_fast_start {
		fast_start_time_left = fast_start_time_left_max;	
	}
}

with o_information_box {
	timer_until_invisible = ceil(6*room_speed); //last for 6 seconds	
}