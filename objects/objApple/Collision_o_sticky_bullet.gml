if is_camo and !other.can_hit_camo { exit; }

if is_boss and !other.can_hit_boss { exit; }

if is_downdrafted {exit;}

other.piercing--;

num_layers_soaked = other.num_layers_to_soak;

if slow_duration_left < other.slow_duration {
	
	slow_duration_left = other.slow_duration;
	
	//prevent clay sniper stuns and glue from stacking/interfering with one another
	stun_timer = 0;
	
	path_speed = scr_get_fruit_speed();
	
	if other.has_rubberizer {
		is_rubberized = true;
	}
	
	image_xscale = -abs(image_xscale);
	image_yscale = -abs(image_yscale);
		
}

if other.has_stripping and (is_regen or is_camo or is_fortified) {
	if is_regen {
		is_regen = false;
		if image_blend = c_lime {
			image_blend = original_blend;
		}
	}
	if is_camo {
		is_camo = false;
		image_alpha = 1;
	}
	if is_fortified and (object_index != objAppleZOMG and object_index != objAppleDDT) {
		is_fortified = false;
		hp /= 2;
		max_hp /= 2;
		image_xscale /= FORTIFIED_SCALE_MODIFIER;
		image_yscale /= FORTIFIED_SCALE_MODIFIER;
	}
}

if other.piercing<0 {
with(other) instance_destroy()
}
else other.piercing--

