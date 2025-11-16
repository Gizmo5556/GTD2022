if not instance_exists(parent) {
	instance_destroy();
	exit;
}

spider_timer--;

//original target destroyed, must find new target
if (not instance_exists(target) and instance_exists(objApple)) {
	target = scr_get_target_boshy(targeting_mode, parent);
	if target != noone {
		target.boshy_targeted_by = parent;
	}
	else {
		instance_destroy();	
	}
}

else if instance_exists(target) {
	
	
	if spider_timer == 0 {
		a = instance_create_layer(target.x, -64, "Bullets",o_boshy_spider);
		a.image_xscale = 0.5;
		a.image_yscale = 0.5;
		a.spider_piercing = parent.piercing;
		a.can_hit_lead = parent.can_shoot_lead or parent.is_boosted_by_mib;
		a.can_hit_camo = parent.can_shoot_camo or parent.is_boosted_by_camo_radar or parent.is_boosted_by_mib;
		a.can_hit_black = parent.can_shoot_black or parent.is_boosted_by_mib;
		a.can_hit_white = parent.can_shoot_white or parent.is_boosted_by_mib;
		a.can_hit_frozen = parent.can_shoot_frozen or parent.is_boosted_by_mib;
		a.spider_piercing = parent.piercing;
		a.spider_piercing_clay = parent.clay_atk_power;
		a.spider_piercing_boss = parent.piercing;
		a.maim_moab_type = parent.maim_moab_type;
		a.targeting_mode = parent.targeting_mode;
	
		a.boshy_parent = parent;
		a.target = target;
		
		with parent {
			if amd_buff_active {
				other.a.can_hit_lead = true;
				other.a.spider_piercing_boss += amd_received_boss_damage_boost;
				other.a.spider_piercing_clay += amd_received_clay_damage_boost;
		
				amd_buff_shots_left--;
		
			}
	
			if brew_buff_active {
		
				//shorter cooldown
				cooldown = ceil(cooldown_max * brew_received_cooldown_boost);
		
				other.a.spider_piercing_clay += brew_received_clay_damage_boost;
				other.a.spider_piercing_boss += brew_received_boss_damage_boost;
				other.a.spider_piercing += brew_received_piercing_boost;
		
				brew_buff_shots_left--;
		
			}
			if is_boosted_by_jungle_drums {
				cooldown = ceil(cooldown * heart_received_jungle_boost);
			}
		}
		
		
	
		audio_stop_sound(snd_spider_roar);
		audio_play_sound(snd_spider_roar, 0, 0);
	
		instance_destroy();
	}
}


if spider_timer <= 0 {
	instance_destroy();	
}
