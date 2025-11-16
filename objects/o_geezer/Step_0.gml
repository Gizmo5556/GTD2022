if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		change_to_idle_timer = 50;
		cooldown = cooldown_max;
		if sprite_index != s_geezer_octorok {
			sprite_index = s_geezer_angry;
		}
	    a=instance_create_layer(x,y,"Bullets",objKidBullet)
		a.sprite_index = bullet_sprite;
	    a.image_xscale=bullet_size;
	    a.image_yscale=bullet_size;
	    a.direction = point_direction(x,y,apple.x,apple.y)
		a.speed = bullet_speed;
		var max_piercing = 999;
		//for waves with low numbers of fruit, such as 40/60/80/100, limit piercing to number of fruit on screen
		if has_advanced_tracking {
			max_piercing = instance_number(objApple) - 1;
		}
		var final_piercing = min(piercing, max_piercing);
		a.piercing = final_piercing;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		a.clay_atk_power = clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.boss_atk_power = boss_atk_power;
		a.knockback_power = knockback_power;
		a.boss_knockback_power = boss_knockback_power;
		a.is_tracking_advanced = has_advanced_tracking;
		a.angle_is_dir = true;
	
		if amd_buff_active {
			//just to make sure they can actually damage leads
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
		
			amd_buff_shots_left--;
		
		}
	
		if brew_buff_active {
		
			//shorter cooldown
			cooldown = ceil(cooldown * brew_received_cooldown_boost);
		
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.piercing += brew_received_piercing_boost;
		
			brew_buff_shots_left--;
		
		}
	
		if is_boosted_by_jungle_drums {
			cooldown = ceil(cooldown * heart_received_jungle_boost);
		}
	
	    audio_play_sound(sndShoot,0,0)
		
		if apple.x < x {
			image_xscale = abs(image_xscale) * -1;	
		}
		else {
			image_xscale = abs(image_xscale);	
		}
	}
	else { cooldown = ceil(cooldown_max/2);}
	
}

if has_spiny and round_controller_id.running and spiny_cooldown == 0 {
	
	var target = scr_get_target_spact();
	
	if target != noone {
		change_to_idle_timer = 50;
		spiny_cooldown = spiny_cooldown_max;
		sprite_index = s_geezer_spiny;
		var a = instance_create_layer(x, y, "Spike_Piles", o_spiny);
		a.speed = 2;
		a.target_x = target.x + irandom_range(-9, 9);
		a.target_y = target.y + irandom_range(-9, 9);
		a.direction = point_direction(x, y, a.target_x, a.target_y);
		a.can_hit_camo = true;
		a.can_hit_lead = spiny_can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_frozen = spiny_can_shoot_frozen or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.clay_atk_power = spiny_clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.boss_atk_power = spiny_boss_atk_power;
		a.spikes_left = spiny_spike_num;
		
		if amd_buff_active {
			//just to make sure they can actually damage leads
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
		
			amd_buff_shots_left--;
		
		}
	
		if brew_buff_active {
		
			//shorter cooldown
			spiny_cooldown = ceil(spiny_cooldown * brew_received_cooldown_boost);
		
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.spikes_left += brew_received_piercing_boost;
		
			brew_buff_shots_left--;
		
		}
	
		if is_boosted_by_jungle_drums {
			spiny_cooldown = ceil(spiny_cooldown * heart_received_jungle_boost);
		}
		
	}
}

if has_octorok and octorok_cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		
		change_to_idle_timer = 50;
		octorok_cooldown = octorok_cooldown_max;
		sprite_index = s_geezer_octorok;
		var point_dir = point_direction(x,y,apple.x,apple.y);
		
		var dir = point_direction(x,y,apple.x,apple.y)
		
		var istart = 0;
		var iend = 0;
		
		if has_multi_octorok {
			var istart = -1;
			var iend = 1;
		}
	
		for(var i=istart; i<=iend; i++) {
		
		
		    a=instance_create_layer(x,y,"Bullets",o_octorok_bullet)
			a.sprite_index = bullet_sprite;
		    a.image_xscale=bullet_size;
		    a.image_yscale=bullet_size;
		    a.direction = point_dir + (25 * i);
			octorok_draw_angle = point_dir;
			a.speed = bullet_speed;
			a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
			a.can_hit_lead = true;
			a.can_hit_black = can_shoot_black or is_boosted_by_mib;
			a.can_hit_white = can_shoot_white or is_boosted_by_mib;
			a.can_hit_frozen = true;
			a.frag_can_hit_lead = can_shoot_lead or is_boosted_by_mib;
			a.frag_can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
			a.clay_atk_power = octorok_clay_atk_power;
			a.lead_atk_power = lead_atk_power;
			a.boss_atk_power = octorok_boss_atk_power;
			a.knockback_power = knockback_power;
			a.boss_knockback_power = boss_knockback_power;
			a.frag_damage = frag_damage;
	
			if amd_buff_active {
				//just to make sure they can actually damage leads
				a.can_hit_lead = true;
				a.clay_atk_power += amd_received_clay_damage_boost;
				a.boss_atk_power += amd_received_boss_damage_boost;
		
				amd_buff_shots_left--;
		
			}
	
			if brew_buff_active {
		
				//shorter cooldown
				octorok_cooldown = ceil(octorok_cooldown * brew_received_cooldown_boost);
		
				a.clay_atk_power += brew_received_clay_damage_boost;
				a.boss_atk_power += brew_received_boss_damage_boost;
				a.explosion_power += brew_received_piercing_boost;
		
				brew_buff_shots_left--;
		
			}
	
			if is_boosted_by_jungle_drums {
				octorok_cooldown = ceil(octorok_cooldown * heart_received_jungle_boost);
			}
		}
	
	    audio_play_sound(sndShoot,0,0)
		
		if apple.x < x {
			image_xscale = abs(image_xscale) * -1;	
		}
		else {
			image_xscale = abs(image_xscale);	
		}
	}
	else { octorok_cooldown = ceil(octorok_cooldown_max/2);}
	
}

if has_spike_storm and ss_cooldown == 0 and global.is_midpoint_crossed {
	ss_cooldown = ss_cooldown_max;
	//cut in half from normal ss to decrease instance count
	//however spikes per pile is doubled from normal ss to account for this
	ss_spikes_left = 100; 
}
if ss_spikes_left > 0 {
	ss_spikes_left -= 4;
	if choose(-1, 1) == 1 {
		audio_play_sound(sndCherry, 0, 0);
	}
	repeat(4) {
		var target = instance_find(o_path_marker, irandom(instance_number(o_path_marker)-1));
		sprite_index = s_geezer_spiny;
		var a = instance_create_layer(x, y, "Spike_Piles", o_spiny);
		a.speed = 5;
		a.target_x = target.x + irandom_range(-9, 9);
		a.target_y = target.y + irandom_range(-9, 9);
		a.direction = point_direction(x, y, a.target_x, a.target_y);
		a.spikes_left = ss_spikes_per_pile;
		a.can_hit_camo = true;
		a.can_hit_lead = spiny_can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_frozen = spiny_can_shoot_frozen or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.clay_atk_power = spiny_clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.boss_atk_power = spiny_boss_atk_power + 8;
		a.rounds_left = 2;
		a.time_left = 500 + irandom_range(0, 60);
	}
}
if has_cursor and cursor_cooldown == 0 and collision_circle(x,y,radius * 3,objApple,0,0) {
	cursor_target = scr_get_cursor_target();
	if cursor_target != noone {
		
		cursor_cooldown = cursor_cooldown_max;
		
		/*if cursor_target.object_index == objAppleZOMG {
			cursors_left -= 2;	
		}
		else {
			cursors_left -= 1;	
		}*/
		
		cursor = instance_create_layer(x, y, "Bullets", o_cursor);
		cursor.target_x = round(cursor_target.x);
		cursor.target_y = round(cursor_target.y);
		cursor.decoy_image_blend = cursor_target.image_blend;
		cursor.decoy_image_alpha = cursor_target.image_alpha;
		cursor.decoy_sprite = cursor_target.sprite_index;
		cursor.decoy_x = round(cursor_target.x);
		cursor.decoy_y = round(cursor_target.y);
		cursor.decoy_xscale = cursor_target.image_xscale;
		cursor.decoy_yscale = cursor_target.image_yscale;
		cursor.parent_x = round(x);
		cursor.parent_y = round(y);
		var abduction_money_amount = scr_get_worth_ufo(cursor_target.object_index); 
		global.money += abduction_money_amount;
		instance_destroy(cursor_target); 
	}
}

if cooldown > 0 cooldown--;
if spiny_cooldown > 0 spiny_cooldown--;
if octorok_cooldown > 0 octorok_cooldown--;
if cursor_cooldown > 0 cursor_cooldown--;
if round_controller_id.running and ss_cooldown > 0 ss_cooldown--;

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false


if change_to_idle_timer == 0 {
	change_to_idle_timer = change_to_idle_timer_max;
	sprite_index = s_geezer_idle;	
}
else if change_to_idle_timer > 0 {
	change_to_idle_timer--;	
}



if instance_exists(cursor) {
	sprite_index = s_geezer_warp;	
}


if room == r_neon and global.option_neon_shader {
	switch image_index {
		case 0:
			image_blend = c_lime;
			break;
		case 1:
			image_blend = c_red;
			break;
		case 2:
			image_blend = c_orange;
			break;
		case 3:
			image_blend = c_fuchsia;
			break;
		case 4:
			image_blend = c_yellow;
			break;
		case 5:
			image_blend = c_aqua;
			break;
		case 6:
			image_blend = c_green;
			break;
		case 7:
			image_blend = c_purple
			break;
		case 8:
			image_blend = c_white;
			break;
			
	}
}

