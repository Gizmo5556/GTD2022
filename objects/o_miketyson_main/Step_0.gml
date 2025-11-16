if not instance_exists(parent) {
	instance_destroy();
	exit;
}
if is_being_sucked {
	image_xscale -= shrink;
	image_yscale -= shrink;
	image_angle += spin;
}


//there is a fruit that can be attacked
/*if instance_exists(objApple) {
	//target is used for which fruit the tyson will go after rather than which one he's shooting at
	target = scr_get_target(parent.targeting_mode);
	//follow mouse
	if parent.targeting_mode == 4 {
		x = scr_approach(x, mouse_x, pursuit_speed);
		y = scr_approach(y, mouse_y, pursuit_speed);
	}
	//normal targeting mode (pursuit)
	else if collision_rectangle(0, 0, 800, 608, objApple, 0, 0) {
		
		if target != noone {
			x = scr_approach(x, target.x, pursuit_speed);
			y = scr_approach(y, target.y, pursuit_speed);
		}
	}

}*/


if punch_cooldown == 0 {
	
	target = scr_get_target(parent.targeting_mode);
	
	var _list = ds_list_create();

	scr_normal_collision_circle_list(x, y, attack_radius, objApple, 0, 0, _list);

	var size = ds_list_size(_list);
	
	ds_list_destroy(_list);
	
	if size > 0 {
		sprite_index = sprite_punch;
		image_index = 0;
		image_xscale = punching_xscale;
		punching_xscale *= -1;
	
		punch_cooldown = punch_cooldown_max;
		audio_play_sound(snd_miketyson_punch, 0, 0);
		var a=instance_create_layer(x,y,"Bullets",o_miketyson_punch_hitbox)
		a.image_xscale=bullet_size;
		a.image_yscale=bullet_size;
		a.piercing = piercing;
		a.explosion_power = explosion_power;
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
		a.can_downdraft_lead = can_downdraft_lead;
		//a.can_downdraft_moab = can_downdraft_moab;
		a.num_layers_to_pierce = num_layers_to_pierce;
		
		//final upgrade
		if has_explosive_punches {
			if global.sfx_limit_map_handler[? "Explosion"][0] < MAX_SFX_COUNT {
				audio_sound_pitch(audio_play_sound(sndExplosion,0,0), random_range(0.85, 1.1))
				global.sfx_limit_map_handler[? "Explosion"][0]++;
			}

			var b=instance_create_layer(x,y,"Bullets",objExplosion)
			b.image_xscale=explosive_punch_size;
			b.image_yscale=explosive_punch_size;
			b.explosion_power = explosive_punch_power;
			b.can_hit_camo = explosive_punch_can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
			b.can_hit_lead = explosive_punch_can_shoot_lead or is_boosted_by_mib;
			b.can_hit_black = explosive_punch_can_shoot_black or is_boosted_by_mib;
			b.can_hit_white = explosive_punch_can_shoot_white or is_boosted_by_mib;
			b.can_hit_frozen = explosive_punch_can_shoot_frozen or is_boosted_by_mib;
			b.clay_atk_power = explosive_punch_clay_atk;
			b.lead_atk_power = explosive_punch_lead_atk;
			b.boss_atk_power = explosive_punch_boss_atk;
			b.knockback_power = knockback_power;
			b.boss_knockback_power = boss_knockback_power;
			
		}
		
		if amd_buff_active {
			
			a.can_hit_lead = true;
			a.clay_atk_power += amd_received_clay_damage_boost;
			a.boss_atk_power += amd_received_boss_damage_boost;
			
			parent.amd_buff_shots_left--;
		
			
		}
		if brew_buff_active {
			//shorter cooldown
			punch_cooldown = ceil(punch_cooldown * brew_received_cooldown_boost);
			
			a.clay_atk_power += brew_received_clay_damage_boost;
			a.boss_atk_power += brew_received_boss_damage_boost;
			a.explosion_power += brew_received_piercing_boost;
			
			parent.brew_buff_shots_left--;
			
		}
		
		if is_boosted_by_jungle_drums {
			punch_cooldown = ceil(punch_cooldown * heart_received_jungle_boost);
		}
	}
	
}	
else if punch_cooldown == 0 {punch_cooldown = ceil(punch_cooldown_max / 2);}

//follow mouse
if parent.targeting_mode == 4 {
	x = scr_approach(x, mouse_x, pursuit_speed);
	y = scr_approach(y, mouse_y, pursuit_speed);
}
//normal targeting mode (pursuit)
else if collision_rectangle(0, 0, 800, 608, objApple, 0, 0) {
		
	if instance_exists(target) {
		x = scr_approach(x, target.x, pursuit_speed);
		y = scr_approach(y, target.y, pursuit_speed);
	}
}


if has_downdraft and downdraft_cooldown == 0 {
	//get list of fruit within range that can be downdrafted (not lead and not bosses)
	ds_list_clear(downdraft_list);
	scr_dd_collision_circle_list(x, y, attack_radius/dd_radius_divider, objApple, 0, 0, downdraft_list);
	if ds_list_size(downdraft_list) != 0 {
		downdraft_cooldown = downdraft_cooldown_max;
		//choose random fruit from list to downdraft
		ds_list_shuffle(downdraft_list);
		var num_fruit_to_dd = min(downdraft_num_max, ds_list_size(downdraft_list));
		for (var i = 0; i < num_fruit_to_dd; i++) {
			var downdraft_target = downdraft_list[|i];
			with downdraft_target {
				is_downdrafted = true;
				downdraft_counter = other.downdraft_counter_max;
				path_speed = scr_get_fruit_speed();
			
			}
		}
	}	
}


if punch_cooldown > 0 punch_cooldown--;
if downdraft_cooldown > 0 downdraft_cooldown--;