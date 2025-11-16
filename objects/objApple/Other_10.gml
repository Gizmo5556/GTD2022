if contains != noone {
	for(var i=num; i>=0; i--) {
	    a=instance_create_layer(x,y,"Fruit",contains)
	    
		if num_layers_soaked > 1 {
			num_layers_soaked--;
			a.num_layers_soaked = num_layers_soaked;
			a.is_rubberized = is_rubberized;
			
			if slow_duration_left > 0 {
				a.slow_duration_left = slow_duration_left;
			}
			
		}
		
		if layers_left_to_freeze > 0 {
			layers_left_to_freeze--;
			with a {
				layers_left_to_freeze = other.layers_left_to_freeze;
				is_frozen = true;

				image_blend = c_aqua;
				
				frozen_time_left = other.frozen_time_left;

				path_speed = 0;
			}
			
		}
		
		with a {
			pth = other.pth;

			path_start(pth,scr_get_fruit_speed(),0,true)
			if other.is_downdrafted {
				is_downdrafted = true;
				downdraft_counter = other.downdraft_counter;
			}
		
			path_position = max(0.0, other.path_position - (0.01*i));
			
			spider_piercing_left = other.spider_piercing_left;
			pierced = other.pierced;
			alarm[0] = PIERCED_COOLDOWN;
			explosion_pierced = other.explosion_pierced;
			knockback_id = other.knockback_id;
			wannafest_worthless_override = other.wannafest_worthless_override;
		}
				
	    if exploded a.exploded = true;
		
		if is_camo {
			a.is_camo = true;
			a.image_alpha = 0.5;
		}
		
		
	}
	
}

global.total_fruit_destroyed++;

