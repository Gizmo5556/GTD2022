if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	//if there are only camo fruit within range, do not attack
	var apple = scr_get_target(0);
	
	if apple != noone {
		cooldown = cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",o_cirno_explosion)
		a.sprite_index = explosion_sprite;
	    a.image_xscale=explosion_size;
	    a.image_yscale=explosion_size;
		a.final_scale = explosion_size*1.5;
		a.explosion_power = explosion_power;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		a.clay_atk_power = clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.boss_atk_power = boss_atk_power;
		a.explosion_size = explosion_size;
		a.frozen_duration = frozen_duration;
		a.num_layers_frozen = num_layers_frozen;
		
		a.has_embrittle = has_embrittle;
		a.embrittle_timer = embrittle_timer;
	
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
		
		
		audio_play_sound(snd_cirno_attack, 0, 0);
	
	}
	
	else { cooldown = ceil(cooldown_max/2);}
    
  
}

if has_ice_wall and ice_wall_cooldown == 0 and instance_exists(objApple) {
	
	var target = scr_get_target_spact();
	
	if target != noone {
		ice_wall_cooldown = ice_wall_cooldown_max;
		var a = instance_create_layer(x, y, "Spike_Piles_Top", o_icewall);
		a.target_x = target.x;
		a.target_y = target.y;
	}
	
	else ice_wall_cooldown = ceil(ice_wall_cooldown/2);
	
	if is_boosted_by_jungle_drums {
		ice_wall_cooldown = ceil(ice_wall_cooldown * heart_received_jungle_boost);
	}
}

if has_cryo_cannon and cryo_cooldown == 0 and collision_circle(x,y,radius,objApple,0,0) {
	
	var apple = scr_get_target(targeting_mode, radius);
	
	if apple != noone {
		cryo_cooldown = cryo_cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",objKidBullet)
		a.sprite_index = bullet_sprite;
	    a.image_xscale=bullet_size;
	    a.image_yscale=bullet_size;
	    a.direction = point_direction(x,y,apple.x,apple.y)
		a.image_angle = a.direction;
		a.speed = bullet_speed;
		a.piercing = cryo_piercing;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		a.clay_atk_power = cryo_clay_atk_power;
		a.lead_atk_power = cryo_lead_atk_power;
		a.boss_atk_power = cryo_boss_atk_power;
		
		a.is_freezing_bullet = true;
		a.cryo_layers_to_pierce = cryo_layers_to_pierce;
		a.frozen_duration = cryo_frozen_duration;
		a.num_layers_frozen = cryo_frozen_layers;
		
		a.has_impale = has_impale;
	
		if amd_buff_active {
			
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
		
			amd_buff_shots_left--;
		
		}
	
		if brew_buff_active {
		
			//shorter cooldown
			cryo_cooldown = ceil(cryo_cooldown * brew_received_cooldown_boost);
		
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.piercing += brew_received_piercing_boost;
		
			brew_buff_shots_left--;
		
		}
	
		if is_boosted_by_jungle_drums {
			cryo_cooldown = ceil(cryo_cooldown * heart_received_jungle_boost);
		}
	}
	else { cryo_cooldown = ceil(cryo_cooldown_max/2); }
}




if cooldown > 0 cooldown--;
if ice_wall_cooldown > 0 ice_wall_cooldown--;
if cryo_cooldown > 0 cryo_cooldown--;

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

