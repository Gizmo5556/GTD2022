if room == r_blackhole {
	if not is_being_sucked and bhole.is_growing and collision_point(x, y, bhole, 0, 0) {
		is_being_sucked = true;
		if instance_exists(mike_tyson) {
			mike_tyson.alarm[0] = 1;
		}
		else if instance_exists(viridian) {
			viridian.alarm[0] = 1;
		}
		direction = point_direction(x, y, 400, 304);
		speed = irandom_range(4, 6);
		spin = irandom_range(1, 5) * choose(1, -1);
		
		var dist = point_distance(x, y, 400, 304);
		var scale_init = sign(image_xscale);
		shrink = 0.5 * scale_init/(dist/speed);
		audio_play_sound(sndCherry, 0, 0);
	}
	if is_being_sucked {
		selected = false;
		image_xscale -= shrink;
		image_yscale -= shrink;
		image_angle += spin;
		if image_xscale <= 0 {
			global.money += total_money_spent;
			audio_play_sound(snd_sell, 0, 0);
			instance_destroy();
		}
		exit;
	}
}



if selected {
	
	//create upgrades window if needed
	if not instance_exists(objUpgrades) {
		a=instance_create(800,0,objUpgrades)
		a.parent = id;
		a.upgrade_button.parent_tower = id;
		
		if object_index != objAlien {
			instance_destroy(a.lock_direction_button);
			a.target_mode_button.y += 24;
		}
	}
	
	
	if mouse_check_button_pressed(mb_right) and position_meeting(mouse_x, mouse_y, id) and  not instance_exists(objPlacer) {
		global.money += ceil(global.sell_multiplier * total_money_spent); //you can sell towers for 70% of the money spent on them (including upgrades)
		audio_play_sound(snd_sell, 0, 0);
		
		//if tower is a village, we need to update which towers are boosted by villages
		//NOTE: we cannot simply put this in the destroy event and run the script since the
		//heart that is being sold would still be "there", although maybe deactivating it
		//would work? idk but this works anyway so
		if object_index == o_heart {
			is_being_sold = true;
			scr_update_village_upgrades();
		}
		//similar case for sray tower tier 5 upgrade boosts
		else if object_index == o_sray {
			is_being_sold = true;
			scr_update_sray_boosts();
		}
		instance_destroy(id);
		exit;
	}
}

if amd_buff_shots_left == 0 {
	amd_buff_active = false;
}	

//after a tower loses its buff from a colonel, it must wait for some time before it can receive another buff
if not brew_buff_active and brew_received_waiting_duration > 0 {
	brew_received_waiting_duration--;	
}
//if brew buff is active, update timer
else if brew_buff_active {
	brew_buff_duration_left--;
	
	if brew_buff_duration_left == 0 or brew_buff_shots_left == 0 or not instance_exists(buffed_by_colonel)  {
		brew_buff_active = false;
		//we set this to 1.0 just in case it's used in any towers' step functions, such as seong's
		brew_received_range_boost = 1.0;
		scr_update_tower_range();
	}
}

