var is_apple_near = collision_circle(x,y,radius,objApple,0,0);
if cooldown == 0 and is_apple_near {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		cooldown = cooldown_max;
	
		dir = point_direction(x,y,apple.x,apple.y);
	
		for(var i=-1; i<=1; i++) {
	        a=instance_create_layer(x,y,"Bullets",o_miku_bullet)
			a.sprite_index = bullet_sprite;
		    a.image_xscale=bullet_size;
		    a.image_yscale=bullet_size;
		    a.direction = (25*i) + dir;
			a.speed = bullet_speed;
			a.target = apple;
			a.piercing = piercing;
			a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
			a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
			a.can_hit_black = can_shoot_black or is_boosted_by_mib;
			a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
			a.can_hit_white = can_shoot_white or is_boosted_by_mib;
			a.clay_atk_power = clay_atk_power;
			a.lead_atk_power = lead_atk_power;
			a.boss_atk_power = boss_atk_power;
			a.knockback_power = knockback_power;
			a.boss_knockback_power = boss_knockback_power;
		
			if amd_buff_active {
				//just to make sure they can actually damage leads
				a.can_hit_lead = true;
				a.clay_atk_power += amd_received_clay_damage_boost;
				a.boss_atk_power += amd_received_boss_damage_boost;
		
			}
	
			if brew_buff_active {
		
				a.clay_atk_power += brew_received_clay_damage_boost;
				a.boss_atk_power += brew_received_boss_damage_boost;
				a.piercing += brew_received_piercing_boost;
			
			}
	    }
		if amd_buff_active {
			amd_buff_shots_left--;	
		}
		if brew_buff_active {
			cooldown = ceil(cooldown * brew_received_cooldown_boost);
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
	}
	
	else { cooldown = ceil(cooldown_max/2); }
	
    
}
if is_moab_press and moab_press_cooldown == 0 and is_apple_near {
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		moab_press_cooldown = moab_press_cooldown_max;
		dir = point_direction(x,y,apple.x,apple.y);
		a=instance_create_layer(x,y,"Bullets",o_miku_bullet)
		a.sprite_index = moab_press_bullet_sprite;
	    a.image_xscale=bullet_size;
		a.image_yscale=bullet_size;
		a.direction = dir;
		a.speed = bullet_speed;
		a.is_moab_press = is_moab_press;
		a.piercing = moab_press_piercing;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.clay_atk_power = clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.knockback_power = knockback_power;
		a.boss_atk_power = moab_press_atk_power;
		a.boss_knockback_power = moab_press_knockback;
	
		if amd_buff_active {
			//just to make sure they can actually damage leads
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
		
			amd_buff_shots_left--;
		
		}
	
		if brew_buff_active {
		
			//shorter cooldown
			moab_press_cooldown = ceil(moab_press_cooldown * brew_received_cooldown_boost);
	
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.piercing += brew_received_piercing_boost;
		
			brew_buff_shots_left--;
			
		}
		if is_boosted_by_jungle_drums {
			moab_press_cooldown = ceil(moab_press_cooldown * heart_received_jungle_boost);
		}
	}
	
	else {moab_press_cooldown = ceil(moab_press_cooldown_max/2); }
	
	
}





if cooldown > 0 cooldown--;

if moab_press_cooldown > 0 moab_press_cooldown--;

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false





if room == r_neon and global.option_neon_shader {
	switch upgrade_count {
		case 2:
			image_blend = make_color_hsv(0, 100, 220);
			break;
		case 5:
		case 4:
		case 3:
			image_blend = make_color_hsv(100, 100, 180);
			break;
	}
}

