if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	var apple = scr_get_target_glue(targeting_mode);
	
	if apple != noone {
		cooldown = cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",o_sticky_bullet)
		a.sprite_index = bullet_sprite;
	    a.image_xscale=bullet_size;
	    a.image_yscale=bullet_size;
	    a.direction = point_direction(x,y,apple.x,apple.y)
		a.speed = bullet_speed;
		a.piercing = piercing;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar;
		//moab glue
		a.can_hit_boss = can_shoot_boss or is_boosted_by_mib;

		
		a.has_rubberizer = has_rubberizer;
		a.slow_duration = slow_duration;
		
		a.has_stripping = has_stripping;
	
		//amd does nothing for glue gunner
		/*if amd_buff_active {
			//just to make sure they can actually damage leads
			a.can_hit_lead = true;
			a.lead_atk_power += amd_received_clay_damage_boost;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
		
			amd_buff_shots_left--;
		
		
		}*/
	
		if brew_buff_active {
		
			//shorter cooldown
			cooldown = ceil(cooldown * brew_received_cooldown_boost);
		
			/*a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.piercing += brew_received_piercing_boost;*/
		
			brew_buff_shots_left--;
		
		}
		if is_boosted_by_jungle_drums {
			cooldown = ceil(cooldown * heart_received_jungle_boost);
		}
		if apple.x < x {
			image_xscale = abs(image_xscale) * -1;	
		}
		else {
			image_xscale = abs(image_xscale);	
		}
	
	    //audio_play_sound(sndShoot,0,0)
	}
	else {
		cooldown = floor(cooldown_max/2);	
	}
	
    
}

if has_bloon_sabotage and sabotage_cooldown == 0 and global.is_midpoint_crossed {
	sabotage_cooldown = sabotage_cooldown_max;
	global.sabotage_multiplier = 0.5;
	global.bloon_sabotage_timer += bloon_sabotage_duration;
	with objApple {
		path_speed = scr_get_fruit_speed();	
	}
	if not audio_is_playing(snd_sabotage) {
		audio_play_sound(snd_sabotage, 0, 0);	
	}
	sprite_index = s_stickykeys_2000_sabotage;
}

if round_controller_id.running and sabotage_cooldown > 0 sabotage_cooldown--;
if cooldown > 0 cooldown--

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false



if room == r_neon and global.option_neon_shader {
	switch upgrade_count {
		
		case 0:
			image_blend = c_silver;
			break;
			
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
			image_blend = make_color_hsv(14, 239, 200);
			break;
			
		
	}
}
