if has_amd and amd_cooldown == 0 and objRoundController.running { //make sure colonel can't stack AMD while rounds aren't playing
	
	var target = scr_get_target_amd();
	
	if target != noone {
		amd_cooldown = amd_cooldown_max;
		
		target.amd_buff_active = true;
		target.amd_buff_shots_left += amd_shot_count;
		target.amd_received_clay_damage_boost = amd_clay_damage_boost;
		target.amd_received_boss_damage_boost = amd_boss_damage_boost;
		if target.x < x {
			image_xscale = abs(image_xscale);	
		}
		else {
			image_xscale = abs(image_xscale) * -1;	
		}
	}
	else {
		amd_cooldown = floor(amd_cooldown_max/2);	
	}
}

if has_brew and brew_cooldown == 0 {
	var target = scr_get_target_brew();
	
	if target != noone {
		brew_cooldown = brew_cooldown_max;
		
		target.brew_buff_active = true;
		target.brew_buff_duration_left = brew_duration;
		target.brew_buff_shots_left = brew_shot_count;
		target.brew_received_range_boost = brew_range_boost;
		target.brew_received_cooldown_boost = brew_cooldown_boost;
		target.brew_received_clay_damage_boost = brew_clay_damage_boost;
		target.brew_received_boss_damage_boost = brew_boss_damage_boost;
		target.brew_received_piercing_boost = brew_piercing_boost;
		target.brew_received_waiting_duration = brew_waiting_duration;
		
		target.buffed_by_colonel = id;
		
		if target.x < x {
			image_xscale = abs(image_xscale);	
		}
		else {
			image_xscale = abs(image_xscale) * -1;	
		}
			
		
		//update radius
		with target {
			scr_update_tower_range();
		}
	}
	
	else {
		brew_cooldown = floor(brew_cooldown_max/2);	
	}
}


if amd_cooldown > 0 amd_cooldown--;
if brew_cooldown > 0 brew_cooldown--;


if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

if room == r_neon and global.option_neon_shader and upgrade_count >= 4 {
	image_blend = c_yellow;
}