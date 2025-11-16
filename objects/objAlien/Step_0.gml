if can_launch_ufo and ufo_cooldown == 0 and collision_rectangle(32,32,768,576,objApple,0,0) {
	
	ufo_cooldown = ufo_cooldown_max;
	
	//focuses on strong fruit but cannot abduct fruits of too high a strength
	ufo_target = scr_get_ufo_target(); 
	if ufo_target != noone { //there may be fruits within range but none may be abductable (if they are too strong)
		ufo = instance_create_layer(x, y, "Bullets", objUfo);
		//set up where ufo will head to and decoy fruit information (the decoy will be abducted instead of the actual fruit to reduce complexity of code)
		ufo.target_x = ufo_target.x;
		ufo.target_y = ufo_target.y;
		ufo.decoy_image_blend = ufo_target.image_blend;
		ufo.decoy_image_alpha = ufo_target.image_alpha;
		ufo.decoy_sprite = ufo_target.sprite_index;
		ufo.decoy_x = ufo_target.x;
		ufo.decoy_y = ufo_target.y;
		ufo.decoy_xscale = ufo_target.image_xscale;
		ufo.decoy_yscale = ufo_target.image_yscale;
		var abduction_money_amount = scr_get_worth_ufo(ufo_target.object_index); //how much money should be earned for abducting this fruit?
		global.money += abduction_money_amount;
		instance_destroy(ufo_target); //immediately destroy so that no other towers "get" to it first
	}
}

if cooldown == 0 and collision_circle(x,y,radius,objApple,0,0) {
	
	if targeting_mode != 4 {
		var apple = scr_get_target(targeting_mode);
	}
	else {
		var apple = collision_circle(x, y, radius, objApple, 0, 0)
	}
	
	if apple != noone {
		//direction is locked -- no need to calculate apple position/direction/etc
		if is_direction_locked {
			var direction_base = locked_direction;
		}
		else if targeting_mode == 4 {
			var direction_base = point_direction(x, y, mouse_x, mouse_y);
		}
		//direction is not locked
		else {
			var direction_base = point_direction(x,y,apple.x,apple.y);
		}
		cooldown = cooldown_max;
		for (var i = 0; i < num_lasers; i++) {
			a=instance_create_layer(x,y,"Bullets",objLaser)
		
			
			
		    a.direction = direction_base + (360/num_lasers) * i * sign((i % 2) - 0.5);
		    a.image_angle = a.direction;
			
			//main laser
			if i == 0 {
				a.image_yscale = main_laser_size;
				a.sprite_index = main_laser_sprite;
				a.laser_lifetime = main_laser_lifetime;
				a.alarm[0] = main_laser_lifetime;
				a.clay_atk_power = main_laser_clay_atk;
				a.lead_atk_power = main_laser_lead_atk;
				a.boss_atk_power = main_laser_boss_atk;
				
			}
			//secondary lasers
			else {
				a.image_yscale = bullet_size;
				a.sprite_index = bullet_sprite;
				a.laser_lifetime = laser_lifetime;
				a.alarm[0] = laser_lifetime;
				a.clay_atk_power = clay_atk_power;
				a.lead_atk_power = lead_atk_power;
				a.boss_atk_power = boss_atk_power;
			}
			a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
			a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
			a.can_hit_black = can_shoot_black or is_boosted_by_mib;
			a.can_hit_white = can_shoot_white or is_boosted_by_mib;
			a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
			a.piercing = piercing; //not really used
			a.knockback_power = knockback_power;
			a.boss_knockback_power = boss_knockback_power;
		
			if amd_buff_active {
				//just to make sure they can actually damage leads
				a.can_hit_lead = true;
				a.clay_atk_power += amd_received_clay_damage_boost;
				a.boss_atk_power += amd_received_boss_damage_boost;
		
			}
	
			if brew_buff_active {
		
				//shorter cooldown
				cooldown = ceil(cooldown_max * brew_received_cooldown_boost);
		
				a.clay_atk_power += brew_received_clay_damage_boost;
				a.boss_atk_power += brew_received_boss_damage_boost;
				//a.piercing += brew_received_piercing_boost;
			
			}
			if is_boosted_by_jungle_drums {
				cooldown = ceil(cooldown * heart_received_jungle_boost);
			}
		
			
		}
	
		if amd_buff_active {
			amd_buff_shots_left--;
		}
		if brew_buff_active {
			brew_buff_shots_left--;
		}
		audio_play_sound(sndLaser,0,0);
	}
	
	else { cooldown = ceil(cooldown_max/2); }
	
	
	
	
	
	
}
	
	



	


if cooldown > 0 cooldown--;
if ufo_cooldown > 0 ufo_cooldown--;

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false


