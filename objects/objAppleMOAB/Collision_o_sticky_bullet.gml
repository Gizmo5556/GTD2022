//moab glue has half the slowing power and half the duration
if is_camo and !other.can_hit_camo { exit; }

if is_boss and !other.can_hit_boss { exit; }

num_layers_soaked = 0;

if slow_duration_left < other.slow_duration {
	
	slow_duration_left = ceil(other.slow_duration/2);
	
	path_speed = scr_get_fruit_speed()
	
	if other.has_rubberizer {
		is_rubberized = true;
	}
	
	image_xscale = -abs(image_xscale);
	image_yscale = -abs(image_yscale);
		
}

if other.has_stripping and (is_regen or is_camo or is_fortified) {
	if is_regen and (object_index != objAppleZOMG and object_index != objAppleDDT) {
		is_regen = false;
		image_blend = original_blend;
	}
	if is_camo and object_index != objAppleDDT {
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

other.piercing--;
if other.piercing < 0 { instance_destroy(other) }


