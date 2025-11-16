if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	//if there are only camo bloons within range, don't attack
	//we put in a 0 although any number 0 - 3 should work
	var can_target_check = scr_get_target(0);
	
	if can_target_check != noone {
		
		var initial_angle = 0;
		
		if upgrade_count == 5 {initial_angle = irandom_range(0, ceil(360/number_of_bullets));}
		
		cooldown = cooldown_max;
	    spin = irandom_range(-10,10)
	    for(var i=0; i<number_of_bullets; i++) {
	        a=instance_create_layer(x,y,"Bullets",objKidBullet)
	        a.sprite_index = sMiniSpikeRight
	        a.direction = (i/number_of_bullets)*360 + initial_angle
	        a.image_angle = a.direction
	        a.speed = bullet_speed;
			a.piercing = piercing;
			a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
			a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
			a.can_hit_black = can_shoot_black or is_boosted_by_mib;
			a.can_hit_white = can_shoot_white or is_boosted_by_mib;
			a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
			a.clay_atk_power = clay_atk_power;
			a.lead_atk_power = lead_atk_power;
			a.boss_atk_power = boss_atk_power;
			//a.knockback_power = knockback_power;
			//a.boss_knockback_power = boss_knockback_power;
		
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
	
	    audio_sound_pitch(audio_play_sound(sndSpikeTrap,0,0),1.3)
	}
	
	else { cooldown = ceil(cooldown_max/2); }
    
	
}

if cooldown > 0 cooldown--

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false


if room == r_neon and global.option_neon_shader {
	switch upgrade_count {
		case 5:
		case 4:
		case 3:
			image_blend = c_red;
			break;
		case 2:
		case 1:
		case 0:
			image_blend = c_ltgray;
			break;
	}
}

