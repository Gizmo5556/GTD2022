var is_apple_near = collision_circle(x,y,radius,objApple,0,0);
if cooldown == 0 and is_apple_near {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		cooldown = cooldown_max;
		
		image_index = irandom_range(1, 4);
			
		var direction_base = point_direction(x,y,apple.x,apple.y);
	
		for(var i=0; i<num_bullets; i++) {
	        a=instance_create_layer(x,y,"Bullets",objKidBullet)
			a.sprite_index = bullet_sprite;
			a.image_angle = irandom_range(0,3) * 90;
			//a.image_index = irandom_range(0,3);
		    a.image_xscale=bullet_size;
		    a.image_yscale=bullet_size;
		    a.direction = direction_base + angles_list[|i];
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
			
			//party lights has a 15% chance to cause downdraft effect on fruit
			if has_confusion and random(1.0) >= 0.85 {
				a.has_confusion = true;
			}
			
			a.is_tracking_simple = are_bullets_tracking;
		
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
			
			if sray_boosted_num > 0 {
				a.piercing += ceil(a.piercing * sray_boosted_num * 0.08);
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
		if sray_boosted_num > 0 {
			cooldown = ceil(cooldown * power(0.92, sray_boosted_num));	
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

if cooldown > 0 cooldown--;

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false


if room == r_neon and global.option_neon_shader {
	switch upgrade_count {
		case 5:
			image_blend = c_blue;
			break;
		case 4:
			image_blend = c_purple;
			break;
		case 3:
			image_blend = c_red;
			break;
		case 2:
		case 1:
		case 0:
			image_blend = make_color_rgb(215, 160, 64);
			break;
	}	
}
