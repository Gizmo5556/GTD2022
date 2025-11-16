if is_rotating {
	image_angle -= 0.2;
	angle_left_to_rotate -= 0.2;
	
	if not audio_is_playing(snd_moon_rotating) { audio_play_sound(snd_moon_rotating, 0, 0); }
	
	with objTower {
		if is_on_moon {
			x = 400 + dcos(moon_relevant_angle) * moon_dist_from_center;
			y = 336 - dsin(moon_relevant_angle) * moon_dist_from_center;
			moon_relevant_angle -= 0.2;
		}
		if object_index == objAlien {
			locked_direction = point_direction(x, y, locked_x, locked_y)	
		}
	}
	with o_baseball_bat {
		x = parent_tower.x;
		y = parent_tower.y;
	}
	with o_alien_prism {
		center_x = parent_tower.x;
		center_y = parent_tower.y;
	}
	
	if angle_left_to_rotate == 0 {
		is_rotating = false;
		audio_stop_sound(snd_moon_rotating);
		audio_play_sound(snd_moon_rotating_done, 0, 0);
		//update buffs -- could be changed if a tower was on star
		scr_update_sray_boosts();
		scr_update_village_upgrades();
	}
}
