//still in snowflake form, moving to final position
if state == 0 {
	image_angle += spin;
	x = scr_approach(x, target_x, 6);
	y = scr_approach(y, target_y, 6);
	
	if x == target_x and y == target_y {
		state = 1;
		image_angle = 0;
		sprite_index = s_icewall;
		//frog easter egg
		if irandom_range(1, 9) == 9 {sprite_index = s_icewall_alt;}
		image_xscale = 0.05;
		image_yscale = 0.05;
	}
}
//wall is inactive and shrinks before destroying itself
else if state == 3 {
	image_xscale = scr_approach(image_xscale, 0, 0.03);
	image_yscale = scr_approach(image_yscale, 0, 0.03);
	
	if image_xscale == 0 and image_yscale == 0 {
		instance_destroy();	
	}
}


if lifetime > 0 and state != 0 {
	if state == 1 {
		image_xscale = scr_approach(image_xscale, final_x_scale, 0.03);
		image_yscale = scr_approach(image_yscale, final_y_scale, 0.03);	
		if image_xscale == final_x_scale and image_yscale == final_y_scale {
			state = 2;	
		}
	}
	if cooldown == 0 {
		var a = instance_create_layer(x, y, "Spike_Piles_Top", objExplosion);
		cooldown = cooldown_max;
		a.image_alpha = 0;
		a.image_xscale = 0.35;
		a.image_yscale = 0.35;
		a.explosion_power = 20;
		a.can_hit_camo = true;
		a.can_hit_lead = true;
		a.can_hit_black = true;
		a.can_hit_frozen = true;
		a.can_hit_white = true;
		a.clay_atk_power = 1;
		a.lead_atk_power = 1;
		a.boss_atk_power = 1;
	}
	
	if cooldown > 0 {
		cooldown--;	
	}
	
	lifetime--;
	
	if lifetime == 0 {
		state = 3;	
	}
}

