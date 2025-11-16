spawn_array = [objAppleWhite, objAppleBlack];

for(var i=0; i<2; i++) {
		contains = spawn_array[i];
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
			path_position = other.path_position - (0.01*i)
			
			spider_piercing_left = other.spider_piercing_left;
			pierced = other.thing;
			explosion_pierced = other.thing;
			knockback_id = other.thing;
			wannafest_worthless_override = other.wannafest_worthless_override;
		}
				
	    if exploded a.exploded = true;
		
		if is_camo {
			a.is_camo = true;
			a.image_alpha = 0.5;
		}
	}
	

global.total_fruit_destroyed++;

