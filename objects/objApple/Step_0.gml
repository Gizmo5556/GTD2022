if is_downdrafted {
	downdraft_counter--;
	
	if downdraft_counter <= 0 {
		is_downdrafted = false;
		path_speed = scr_get_fruit_speed();
	}
	
}

if is_crippled {
	 cripple_timer--;
	 if cripple_timer == 0 {
		is_crippled = false;	 
	 }
}

if is_embrittled {
	 embrittle_time_left--;
	 if embrittle_time_left == 0 {
		is_embrittled = false;	 
	 }
}

//the targeter boshy got destroyed at some point (e.g., selling)
if boshy_targeted_by != noone and not instance_exists(boshy_targeted_by) {
	boshy_targeted_by = noone;	
}

//SPEED STATUS EFFECTS
//sniper clay stun
if stun_timer > 0 {
	stun_timer--;
	if stun_timer == 0 {
		path_speed = scr_get_fruit_speed();	
	}
	/*if slow_duration_left > 0 {
		if is_boss path_speed *= GLUE_SLOW_AMOUNT_BOSS;
		else path_speed *= GLUE_SLOW_AMOUNT;
	}
	if frozen_time_left > 0 {
		path_speed = 0;	
	}*/
}

if slow_duration_left > 0 {
	slow_duration_left--;
	//keep at half speed since snipers can stun clays
	if slow_duration_left == 0 {
		path_speed = scr_get_fruit_speed();	
		image_xscale = abs(image_xscale);
		image_yscale = abs(image_yscale);
		is_rubberized = false;	
	}
	/*if stun_timer > 0 {
		path_speed *= SNIPER_CLAY_STUN_AMOUNT;	
	}
	if frozen_time_left > 0 {
		path_speed = 0;	
	}*/
}

if frozen_time_left > 0 {
	frozen_time_left--;
	
	if frozen_time_left == 0 {
		is_frozen = false;
		layers_left_to_freeze = 0;
		path_speed = scr_get_fruit_speed();
		if is_regen {
			image_blend = c_lime;
		}
		else {image_blend = original_blend;}
	}
	/*if stun_timer > 0 {
		path_speed *= SNIPER_CLAY_STUN_AMOUNT;	
	}
	if slow_duration_left > 0 {
		if is_boss {path_speed *= GLUE_SLOW_AMOUNT_BOSS}
		else {path_speed *= GLUE_SLOW_AMOUNT}
	}*/
}

if impale_time_left > 0 {
	impale_time_left--;
	
	if impale_time_left == 0 {
		path_speed = scr_get_fruit_speed();	
	}
}

if room == r_blackhole and not global.is_blackhole_turned_off and path_position > global.blackhole_pathpos_threshold {
	if path_speed >= 1.5 {
		path_speed += 0.05;	
	}
	else if path_speed >= 1.0 {
		path_speed += 0.025;	
	}
	else {
		path_speed += 0.01;	
	}
}

if room == r_nang {
	var previous_conv_state = conveyor_state;
	var collision = collision_point(x, y, o_nang_conveyor, false, true);
	if collision != noone {
		if collision.object_index == o_nang_right {
			conveyor_state = NANG_RIGHT_CONVEYOR;
		}
		else if collision.object_index == o_nang_left {
			conveyor_state = NANG_LEFT_CONVEYOR;
		}
	}
	else {
		conveyor_state = NANG_NO_CONVEYOR;	
	}
	
	if conveyor_state != previous_conv_state {
		path_speed = scr_get_fruit_speed();	
	}
}