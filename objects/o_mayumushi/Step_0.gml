if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		cooldown = cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",o_mayumushi_helper)
		a.sprite_index = helper_sprite;
		a.main_sprite = helper_sprite;
		a.chomp_sprite = helper_chomp_sprite;
	    a.image_xscale=large_scale;
	    a.image_yscale=large_scale;
		a.target = apple;
		a.target_x = apple.x;
		a.target_y = apple.y+32;
		a.explosion_power = explosion_power;
		a.explosion_size = explosion_size;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		a.clay_atk_power = clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.boss_atk_power = boss_atk_power;
		a.extra_dmg_to_fortified = extra_dmg_to_fortified;
		a.removes_regen_and_camo = removes_regen_and_camo;
		a.num_layers_to_pierce = num_layers_to_pierce;
		
		image_xscale = large_scale * large_scale_modifier;
		image_yscale = large_scale * large_scale_modifier;
		
		image_index++;
	
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
	
	    audio_play_sound(choose(snd_mayu1, snd_mayu2, snd_mayu3),0,0)
		
	}
	else { cooldown = ceil(cooldown_max/3.5); }
	
    
}

if cooldown > 0 cooldown--

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false


if room == r_neon and global.option_neon_shader and upgrade_count >= 4 {
	image_blend = c_green;
}