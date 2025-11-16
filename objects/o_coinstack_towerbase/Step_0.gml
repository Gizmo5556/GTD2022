var pos_meet = position_meeting(mouse_x, mouse_y, id) and mouse_y > 560;

if pos_meet and not is_moving and y > min_y_value
and not round_controller.running  
and not round_controller.dead
and not round_controller.is_choosing_to_continue
and not round_controller.is_choosing_freeplay
and not round_controller.all_waves_over
and not instance_exists(objPlacer) {
	with objTower {
		if moused {
			other.moused = false;
			exit;
		}
	}
	moused = true;	
	if mouse_check_button_pressed(mb_left) and global.money >= current_price_array[num_times_used] {
		global.money -= current_price_array[num_times_used];
		audio_play_sound(sndMoney,0,0);
		is_moving = true;
		y_goal -= y_shift_amount;
		num_times_used++;
		global.coinstack_path_index = num_times_used;
		o_path_coinstack.image_index = global.coinstack_path_index;
		instance_destroy(o_path_marker);
		scr_generate_path_markers();
	}
}
else {
	moused = false;	
}


if is_moving {
	y--;
	with objTower {
		if is_on_cointower {
			y--;	
		}
		if object_index == objAlien {
			locked_direction = point_direction(x, y, locked_x, locked_y);	
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
	if y_goal == y {
		is_moving = false;
		//update buffs -- could be changed if a tower was near coinstack but not on top of it
		scr_update_sray_boosts();
		scr_update_village_upgrades();
	}
}

