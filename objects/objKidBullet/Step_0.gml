if is_tracking_simple or is_tracking_advanced {
	var does_target_exist = instance_exists(target);
	if not does_target_exist {
		if instance_exists(objApple) {
			target = instance_nearest(x,y,objApple);
			does_target_exist = true;
			//only update direction when new target is selected
			//simple tracking simply "bounces off" targets rather than curving to new ones
			if is_tracking_simple {
				direction = point_direction(x, y, target.x, target.y);			
			}
		
			//if a baseball goes after a child of a previous target (e.g., hit a blue fruit, now going for a red fruit)
			//we need to reset the pierced id so the baseball can hit the child
			//if target.pierced == id {
			//	target.pierced = noone;	
			//}
		}
	}
	//make sure current target exists
	//advanced tracking curves to the nearest fruit, including ones it's already hit
	if does_target_exist and is_tracking_advanced {
		
		target_direction = point_direction(x,y, target.x, target.y);
		
		var ang1, ang2, step, d;
		
		ang1=direction;
		ang2=target_direction;
		step=10; //higher step means it locks onto target faster

		d =((ang2-ang1+540.0) mod 360.0)-180.0;
		if (d>0.0) direction = ((ang1+min(d,step)) mod 360.0);
		else direction = 360.0-((360.0-(ang1+max(-step,d))) mod 360.0);
		
		if angle_is_dir image_angle = direction;
		
	}
}

if is_bouncing and bounces_left > 0 {
	if x < 16 or x > 784 {
	hspeed *= -1;
	image_xscale *= -1;
	bounces_left -= 1;
	last_pierced_fruit = noone;
	if x < 16 x = 16;
	else if x > 784 x = 784;
	}
	if y < 32 or y > 576 {
		vspeed *= -1;
		image_yscale *= -1;
		bounces_left -= 1;
		last_pierced_fruit = noone;
		if y < 32 y = 32;
		else if y > 576 y = 576;
	}	
}


if room == r_neon and global.option_neon_shader {
	switch sprite_index {
		case s_arrow:
			image_blend = c_teal;
			break;
		case s_arrow2:
			image_blend = c_yellow;
			break;
		case s_arrow3:
			image_blend = c_red;
			break;
		case s_arrow4:
			image_blend = c_purple;
			break;
		case s_viridian_bullet:
			image_blend = make_color_hsv(0, 170, 220);
			break;
		case sPlayerBullet:
			image_blend = c_yellow;
			break;
		case s_geezer_bullet_red:
			image_blend = make_color_hsv(0, 100, 220);
			break;
		case s_cryo:
		case s_impale:
			image_blend = c_aqua;
			break;
	}	
}