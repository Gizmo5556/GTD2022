if is_spawning {
	
	
	
	if y < 44 {
		y += 3;
		if y > 44 {
			y = 44;	
		}
	}


	
	timer -= 1;

	if timer <= 0 {
		timer = spawn_interval_frames;
		var apple = scr(camo, fortified, regen, super_clay);
		new_path = choose(path_wannafest_rain1, path_wannafest_rain2, path_wannafest_rain3, path_wannafest_rain4, path_wannafest_rain5);
		with apple {
			wannafest_worthless_override = 0.0;
			pth = other.new_path;
			path_start(pth,path_speed,0,true)
		}
		
	}
}


if destroy {
	y -= 2;
	if y < 0 {
		instance_destroy();	
	}
}