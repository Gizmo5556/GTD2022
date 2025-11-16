//calculate bonus stats for 4th and 5th upgrades
if has_bonus_stats {
	
	var is_round_running = objRoundController.running;
	
	//reset bonus stats when rounds aren't active
	if not is_round_running and not are_stats_reset {
		/*bonus_cooldown = max(bonus_cooldown, bonus_cooldown_reset);
		bonus_damage = min(bonus_damage, bonus_damage_reset);
		bonus_range = min(bonus_range, bonus_range_reset);
		bonus_piercing = min(bonus_piercing, bonus_piercing_reset);*/
			
			
			
		bonus_cooldown = min(bonus_cooldown/overall_reset_multiplier, 1.0);
		bonus_damage = max(bonus_damage * overall_reset_multiplier, 0);
		//for range, apply the reset to only the "extra" portion of the bonus multiplier -- e.g., if the bonus range is 1.75, apply it to 0.75 instead of 1.75
		bonus_range = 1.0 + max((bonus_range - 1.0)*overall_reset_multiplier, 0.0);
		bonus_piercing = max(bonus_piercing*overall_reset_multiplier, 0);
			
		//var temp_diff = (bonus_damage * damage_divisor)
		hard_diff = min(hard_diff, pop_count_cap) * overall_reset_multiplier;
		//boss_diff = min(boss_diff, pop_count_cap/boss_bonus_amount) * overall_reset_multiplier;
			
		var new_pfd = global.total_fruit_destroyed - (hard_diff/pop_count_multiplier);
		//var new_pbd = global.total_bosses_destroyed - (boss_diff/(pop_count_multiplier*boss_bonus_amount));
		
		
			
		previous_fruit_destroyed = new_pfd ;
		previous_bosses_destroyed = global.total_bosses_destroyed;
			
		scr_update_tower_range();
			
		are_stats_reset = true;
	}
	else if is_round_running {
			
		hard_diff = floor(pop_count_multiplier*(global.total_fruit_destroyed - previous_fruit_destroyed));
			
		//boss_diff = floor(pop_count_multiplier * boss_bonus_amount * (global.total_bosses_destroyed - previous_bosses_destroyed));	
		
		hard_diff += floor(pop_count_multiplier * boss_bonus_amount * (global.total_bosses_destroyed - previous_bosses_destroyed));
			
		//bonuses are maxed out at 400 RBE popped
		diff = min(hard_diff, pop_count_cap);
			
		//lock to closest multiple of 25
		//diff = 25 * floor(diff / 25);
			
			
			
		if diff >= 25 {
			bonus_cooldown = (1 - diff/cooldown_divisor); //ranges from 1 to 0.x
			bonus_damage = (0 + diff/damage_divisor); //ranges from 0 to x
			bonus_range = (1 + diff/range_divisor); //ranges from 1 to 1.x
			bonus_piercing = (0 + diff/piercing_divisor); //ranges from 0 to x
			
			scr_update_tower_range();
		}
	}
}





var is_apple_near = collision_circle(x,y,radius,objApple,0,0);
if cooldown == 0 {
	if is_apple_near {
	
		var apple = scr_get_target(targeting_mode);
	
		if apple != noone {
			cooldown = cooldown_max;
		    a=instance_create_layer(x,y,"Bullets",o_baseball)
			a.sprite_index = bullet_sprite;
		    a.image_xscale=bullet_size;
		    a.image_yscale=bullet_size;
		    a.direction = point_direction(x,y,apple.x,apple.y)
			a.speed = bullet_speed;
			a.target = apple;
			var max_piercing = 999;
			//for waves with low numbers of fruit, such as 40/60/80/100, limit piercing to number of fruit on screen
			if bullet_is_tracking {
				max_piercing = instance_number(objApple) - 1;
			}
			var final_piercing = min(piercing, max_piercing);
			a.piercing = final_piercing;
			a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
			a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
			a.can_hit_black = can_shoot_black or is_boosted_by_mib;
			a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
			a.can_hit_white = can_shoot_white or is_boosted_by_mib;
			a.clay_atk_power = clay_atk_power;
			a.lead_atk_power = lead_atk_power;
			a.boss_atk_power = boss_atk_power;
			//a.knockback_power = knockback_power;
			//a.boss_knockback_power = boss_knockback_power;
	
			a.is_tracking_advanced = bullet_is_tracking;
	
			if has_bonus_stats {
				cooldown = ceil(cooldown * bonus_cooldown);
				a.clay_atk_power += bonus_damage;
				a.boss_atk_power += bonus_damage;
				a.piercing += bonus_piercing;
			}
	
			if amd_buff_active {
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
			if apple.x < x {
			image_xscale = abs(image_xscale) * -1;	
			}
			else {
				image_xscale = abs(image_xscale);	
			}
		}
	}
	
	else { cooldown = ceil(cooldown_max / 2.5); }
}


if has_explosives and explosive_cooldown == 0 {
	
	if is_apple_near {
		var apple = scr_get_target(targeting_mode);
	
	    explosive_cooldown = explosive_cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",o_baseball_explode)
		a.sprite_index = bullet_sprite;
	    a.image_xscale= bullet_size;
	    a.image_yscale= bullet_size;
	    a.direction = point_direction(x,y,apple.x,apple.y)
		a.speed = bullet_speed;
		a.target = apple;
		a.explosion_sprite = explosion_sprite;
		a.piercing = piercing;
		a.explosion_power = explosion_power;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = true
		a.can_hit_black = can_explosives_shoot_black or is_boosted_by_mib;
		a.can_hit_frozen = true;
		a.can_hit_white = true;
	
		a.clay_atk_power = clay_atk_power;
		a.lead_atk_power = explosion_lead_atk_power;
		a.boss_atk_power = boss_atk_power;
		a.explosion_size = explosion_size;
		a.knockback_power = knockback_power;
		a.boss_knockback_power = boss_knockback_power;
	
		if has_bonus_stats {
			explosive_cooldown = ceil(explosive_cooldown * bonus_cooldown);
			a.clay_atk_power += bonus_damage;
			a.boss_atk_power += bonus_damage;
			a.lead_atk_power += bonus_damage;
			a.explosion_power += bonus_piercing;
		}
	
		if amd_buff_active {
			//just to make sure they can actually damage leads
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
		
			amd_buff_shots_left--;
		
			if amd_buff_shots_left == 0 {
				amd_buff_active = false;	
			}
		
		}
	
		if brew_buff_active {
		
			//shorter cooldown
			//NOTE: we use explosive_cooldown in ceil() instead of explosive_cooldown_max so that it stacks
			//with the bonus stats in upgrades 4 and 5 if necessary
			explosive_cooldown = ceil(explosive_cooldown * brew_received_cooldown_boost);
		
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.explosion_power += brew_received_piercing_boost;
		
			brew_buff_shots_left--;
		
			if brew_buff_shots_left == 0 {
				brew_buff_active = false;
				radius = base_radius;
			}
		}
		if is_boosted_by_jungle_drums {
			explosive_cooldown = ceil(explosive_cooldown * heart_received_jungle_boost);
		}
	}
	else { cooldown = ceil(cooldown_max / 2.5); }
	
}


if cooldown > 0 cooldown--;
if explosive_cooldown > 0 explosive_cooldown--;



if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

