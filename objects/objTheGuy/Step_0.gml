if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

//if transformed, have this tower do nothing except detect if it's clicked 
//-- o_guy_final_form will take care of the rest

//final form and not done transforming
if transform_stage != 1 and is_final_form {
	//just got upgrade
	if transform_stage == 0 and not instance_exists(o_guy_final_form){
		sprite_index = s_guy_face;
		if room == r_wannafest {
			var obj = o_guy_final_form_wannafest;	
		}
		else {
			var obj = o_guy_final_form;	
		}
		guy = instance_create_layer(x, y, "guy_finalform", obj); // this will move to center of room and break through wall
		guy.parent = id;
		transform_stage = 1;
	}
}

if transform_stage == 1 { exit; }

var is_apple_present = collision_circle(x,y,radius,objApple,0,0)

if can_launch_grenades and grenade_cooldown == 0 and is_apple_present {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		grenade_cooldown = grenade_cooldown_max;
	
		a = instance_create_layer(x, y, "Bullets",o_grenade);
		a.image_xscale = 3;
		a.image_yscale = 3;
		a.direction = point_direction(x,y,apple.x,apple.y);
		a.speed = bullet_speed;
		a.target = apple;
		a.piercing = 0;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar;
		a.can_hit_lead = true;
		a.can_hit_black = true;
		a.can_hit_white = true;
		a.can_hit_frozen = true;
		//the stats for the grenade itself
		a.clay_atk_power = 1;
		a.lead_atk_power = 1;
		a.boss_atk_power = 1;
		a.knockback_power = 0;
		a.boss_knockback_power = 0;
		//stats for the fire it spawns
		a.fire_piercing = fire_piercing;
		a.fire_lead_atk = fire_lead_atk;
		a.fire_clay_atk = fire_clay_atk;
		a.fire_boss_atk = fire_boss_atk;
		a.fire_knockback = fire_knockback;
		a.fire_boss_knockback = fire_boss_knockback;
		
		if apple.x < x {
			image_xscale = abs(image_xscale) * -1;	
		}
		else {
			image_xscale = abs(image_xscale);	
		}
	}
	
	
	else { cooldown = ceil(cooldown_max/2); }
}

if cooldown == 0 and is_apple_present {
	
	var apple = scr_get_target(targeting_mode);
	
	if apple != noone {
		cooldown = cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",objKidBullet)
		a.sprite_index = bullet_sprite;
	    a.direction = point_direction(x,y,apple.x,apple.y)
		a.speed = bullet_speed;
		a.target = apple;
		a.image_blend = bullet_image_blend;
		a.can_hit_camo = can_shoot_camo or is_boosted_by_camo_radar or is_boosted_by_mib;
		a.can_hit_lead = can_shoot_lead or is_boosted_by_mib;
		a.can_hit_black = can_shoot_black or is_boosted_by_mib;
		a.can_hit_white = can_shoot_white or is_boosted_by_mib;
		a.can_hit_frozen = can_shoot_frozen or is_boosted_by_mib;
		if can_launch_energy_shots and num_of_bullets_until_special == 0 {
			num_of_bullets_until_special = num_of_bullets_until_special_max;
			a.piercing = special_piercing;
			a.clay_atk_power = special_clay_atk;
			a.boss_atk_power = special_boss_atk;
			a.knockback_power = special_knockback;
			a.boss_knockback_power = special_boss_knockback;
			a.image_xscale=special_bullet_size;
			a.image_yscale=special_bullet_size;
		}
		else {
			a.piercing = piercing;
			a.clay_atk_power = clay_atk_power;
		
			a.boss_atk_power = boss_atk_power;
			a.knockback_power = knockback_power;
			a.boss_knockback_power = boss_knockback_power;
			a.image_xscale=bullet_size;
			a.image_yscale=bullet_size;
		}
		a.lead_atk_power = lead_atk_power;
	
		if amd_buff_active {
				//just to make sure they can actually damage leads
				a.can_hit_lead = true;
				a.clay_atk_power += amd_received_clay_damage_boost;
				a.boss_atk_power += amd_received_boss_damage_boost;
				amd_buff_shots_left--;
		
		}
	
		if brew_buff_active {
		
				//shorter cooldown
				cooldown = ceil(cooldown_max * brew_received_cooldown_boost);
		
				a.clay_atk_power += brew_received_clay_damage_boost;
				a.boss_atk_power += brew_received_boss_damage_boost;
				a.piercing += brew_received_piercing_boost;
				brew_buff_shots_left--;
		
		}
	
		if is_boosted_by_jungle_drums {
			cooldown = ceil(cooldown * heart_received_jungle_boost);
		}

	
	    if bullet_sprite == sPlayerBullet {
			audio_play_sound(sndShoot,0,0)
		}
		else if global.sfx_limit_map_handler[? "Energy"][0] < MAX_SFX_COUNT {
			audio_play_sound(snd_energy_shot, 0, 0);
			global.sfx_limit_map_handler[? "Energy"][0]++;
		}
		if apple.x < x {
			image_xscale = abs(image_xscale) * -1;	
		}
		else {
			image_xscale = abs(image_xscale);	
		}
	}
	
	else { cooldown = ceil(cooldown_max/2); }
	
}







if cooldown > 0 cooldown--
if grenade_cooldown > 0 grenade_cooldown--
if num_of_bullets_until_special > 0 num_of_bullets_until_special--

if room == r_neon and global.option_neon_shader {
	switch bullet_sprite {
		case sPlayerBullet:
			bullet_image_blend = c_white;
			break;
		case s_energy_shot:
			bullet_image_blend = c_orange;
			break;
			
	}
}

