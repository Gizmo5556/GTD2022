/*if room == r_neon and global.option_neon_shader {
	switch upgrade_count {
		case 5:
		case 4:
		case 0:
			pile_image_blend = c_silver;
			break;
		case 3:
		case 2:
		case 1:
			pile_image_blend = c_green;
			break;
		
		
	}	
}*/

if round_controller_id.running and cooldown == 0 {
	
	var target = scr_get_target_spact();
	
	if target != noone {
		cooldown = cooldown_max;
		var a = instance_create_layer(x, y, "Spike_Piles", o_spike_pile);
		a.sprite_index = spike_pile_sprite;
		a.target_x = target.x + irandom_range(-9, 9);
		a.target_y = target.y + irandom_range(-9, 9);
		//a.image_blend = pile_image_blend;
		if sprite_index == s_spact_mobile {
			a.image_blend = make_color_hsv(irandom_range(50, 75),185,255);
		}
		a.speed = 2;
		a.direction = point_direction(x, y, a.target_x, a.target_y);
		a.image_angle = irandom_range(0, 3) * 90;
		
		a.spikes_left = num_spikes_per_pile;
		a.time_left = spike_time_left;
		a.rounds_left = spike_rounds_left;
		a.can_hit_camo = true;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.clay_atk_power = clay_atk_power;
		a.lead_atk_power = lead_atk_power;
		a.boss_atk_power = boss_atk_power;
		a.layers_to_pierce = layers_to_pierce;
		
		image_speed = 0.35;
		
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
			a.spikes_left += brew_received_piercing_boost;
		
			brew_buff_shots_left--;
		
		}
	
		if is_boosted_by_jungle_drums {
			cooldown = ceil(cooldown * heart_received_jungle_boost);
		}
		
		if fast_start_time_left > 0 {
			cooldown = ceil(cooldown * 0.25);
		}
		
	}
	else {
		cooldown = ceil(cooldown_max/2);
	}
	

}

if cooldown > 0 cooldown--

if fast_start_time_left > 0 fast_start_time_left--;

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false


if room == r_neon and global.option_neon_shader {
	switch upgrade_count {
		case 5:
		case 4:
			image_blend = make_color_hsv(0, 150, 220); 
			break;
		case 3:
		case 2:
		case 1:
			image_blend = make_color_hsv(90, 100, 180);
			break;
		case 0:
			image_blend = c_yellow;
			break;
	}	
}


