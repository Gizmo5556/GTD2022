if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
	
		cooldown = cooldown_max;
	
		var dir = point_direction(x,y,apple.x,apple.y)
		
		var istart = 0;
		var iend = 0;
		
		if has_multi_moon {
			var istart = -1;
			var iend = 1;
		}
	
		for(var i=istart; i<=iend; i++) {
	
		    a=instance_create_layer(x,y,"Bullets",objKidBullet)
			a.sprite_index = bullet_sprite;
		    a.image_xscale=bullet_size;
		    a.image_yscale=bullet_size;
		    a.direction = point_direction(x,y,apple.x,apple.y) + (25 * i)
			a.speed = bullet_speed;
			a.piercing = piercing;
			a.is_bouncing = has_bouncing_bullets;
			a.bounces_left = num_bounces;
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
	}
	else { cooldown = ceil(cooldown_max/2); }
	
    
}

if cooldown > 0 cooldown--

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false



if room == r_neon and global.option_neon_shader and upgrade_count >= 4 {
	image_blend = c_ltgray;
}

