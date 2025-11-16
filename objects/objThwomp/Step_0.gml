if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		cooldown = cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",objThwompProj)
		a.sprite_index = bullet_sprite;
	    a.image_xscale=1
	    a.image_yscale=1
	    a.direction = point_direction(x,y,apple.x,apple.y)
		a.speed = bullet_speed;
		a.image_blend = image_blend;
		a.explosion_sprite = explosion_sprite;
		a.piercing = piercing;
		a.explosion_power = explosion_power;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.frag_can_hit_frozen = frag_can_hit_frozen or is_boosted_by_mib;
		a.frag_can_hit_lead = frag_can_hit_lead or is_boosted_by_mib;
		a.clay_atk_power = clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.boss_atk_power = boss_atk_power;
		a.explosion_size = explosion_size;
		a.is_cluster_bomb = is_cluster_bomb;
		a.knockback_power = knockback_power;
		a.boss_knockback_power = boss_knockback_power;
		a.frag_damage = frag_damage;
		a.num_layers_to_pierce = num_layers_to_pierce;
	
	
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
			a.explosion_power += brew_received_piercing_boost;
		
			brew_buff_shots_left--;
		
		}
		if is_boosted_by_jungle_drums {
			cooldown = ceil(cooldown * heart_received_jungle_boost);
		}
	
		if global.sfx_limit_map_handler[? "Thwomp"][0] < MAX_SFX_COUNT {
			audio_play_sound(sndThwomp, 0, 0);
			global.sfx_limit_map_handler[? "Thwomp"][0]++;
		}
		
   
		
		if apple.x < x {
			image_xscale = abs(image_xscale) * -1;	
		}
		else {
			image_xscale = abs(image_xscale);	
		}
	}
	
	else { cooldown = ceil(cooldown_max/2);}
    
  
}

if cooldown > 0 cooldown--
if cooldown > 0.5*cooldown_max image_alpha = 0 else image_alpha = 1;

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false


if room == r_neon and global.option_neon_shader {
	switch upgrade_count {
		case 5:
			image_blend = c_lime;
			break;
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

