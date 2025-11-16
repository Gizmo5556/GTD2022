if not instance_exists(parent) {
	instance_destroy();
	exit;
}

if is_being_sucked {
	image_xscale -= shrink;
	image_yscale -= shrink;
	image_angle += spin;
}

if x < 16 or x > 784 {
	hspeed *= -1;
	image_xscale *= -1;
	if x < 16 x = 16;
	else if x > 784 x = 784;
}
if y < 32 or y > 576 {
	vspeed *= -1;
	image_yscale *= -1;
	if y < 32 y = 32;
	else if y > 576 y = 576;
}

if cooldown == 0 and instance_exists(objApple) {
	cooldown = cooldown_max;
	var max_piercing = 999;
	//for waves with low numbers of fruit, such as 40/60/80/100, limit piercing to number of fruit on screen
	if has_tracking {
		max_piercing = instance_number(objApple) - 1;
	}
	var final_piercing = min(piercing, max_piercing);
	for(var i=0; i<number_of_bullets; i++) {
	    a=instance_create_layer(x,y,"Bullets",objKidBullet)
	    a.sprite_index = bullet_sprite;
	    a.direction = (i/number_of_bullets)*360 + initial_angle
	    a.image_angle = a.direction
	    a.speed = bullet_speed;
		a.piercing = final_piercing;
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
		a.is_tracking_advanced = has_tracking;
		a.angle_is_dir = has_tracking;
		
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
}

if has_heart_bombs and instance_exists(objApple) and heart_bomb_cooldown == 0 {
	if instance_place(x, y, o_path_marker) {
		heart_bomb_cooldown = heart_bomb_cooldown_max;
		var a = instance_create_layer(x, y, "Spike_Piles_Top",o_heart_bomb);
		a.can_hit_camo = can_shoot_camo;
		a.can_hit_black = is_boosted_by_mib;
		a.explosion_power = explosion_power;
		a.is_bomb_tracking = are_bombs_tracking;
		if instance_exists(o_heart) {
			a.clay_atk_power += 1;
			a.lead_atk_power += 1;
			a.boss_atk_power += 1;
			a.explosion_power += 7;
		}
		if has_elephant {
			a.clay_atk_power += 4;
			a.lead_atk_power += 4;
			a.boss_atk_power += 4;
			a.explosion_power += 20;
		}
		if amd_buff_active {
			//just to make sure they can actually damage leads
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
			amd_buff_shots_left--;
		}
	
		if brew_buff_active {			
		
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.explosion_power += brew_received_piercing_boost;
			heart_bomb_cooldown = ceil(heart_bomb_cooldown * brew_received_cooldown_boost);
			brew_buff_shots_left--;
		}
	}
	else {heart_bomb_cooldown = ceil(heart_bomb_cooldown_max/4);}
}

if has_fighter_plane and fp_cooldown == 0 {
	if instance_exists(objAppleMOAB) {
		fp_cooldown = fp_cooldown_max;
		var a = instance_create_layer(x,y,"Bullets",o_super_spike);
		a.explosion_power = fp_explosion_power;
		a.clay_atk_power = fp_clay_damage;
		a.lead_atk_power = fp_lead_damage;
		a.boss_atk_power = fp_moab_damage;
		a.explosion_size = 1.25;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		if has_elephant {
			a.lead_atk_power += 1;
			a.clay_atk_power += 1;
			a.boss_atk_power += fp_moab_damage;
			a.explosion_power += 1;
		}
		if amd_buff_active {
			//just to make sure they can actually damage leads
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
			amd_buff_shots_left--;
		}
	
		if brew_buff_active {			
		
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.explosion_power += brew_received_piercing_boost;
			fp_cooldown = ceil(fp_cooldown * brew_received_cooldown_boost);
			brew_buff_shots_left--;
		}
	}
	else {fp_cooldown = ceil(fp_cooldown_max/2);}
}
if has_elephant and elephant_cooldown == 0 and global.is_midpoint_crossed {
	elephant_cooldown = elephant_cooldown_max;
	a = instance_create_layer(x, y, "Spike_Piles_Top", o_elephant);
}

if cooldown > 0 cooldown--;
if heart_bomb_cooldown > 0 heart_bomb_cooldown--;
if fp_cooldown > 0 fp_cooldown--;
if round_controller_id.running and elephant_cooldown > 0 elephant_cooldown--;