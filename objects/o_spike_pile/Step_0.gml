if spikes_left <= 0 or time_left <= 0 {
	instance_destroy();
	exit;
}

/*if is_moving {
	x = scr_approach(x, target_x, approach_speed);
	y = scr_approach(y, target_y, approach_speed);
	if x == target_x and y == target_y {
		is_moving = false;	
	}
}*/
if is_moving and speed > 0 and point_distance(x, y, target_x, target_y) <= speed {
	x = target_x;
	y = target_y;
	speed = 0;
	is_moving = false;
}
else if round_controller_id.running and not is_moving {
	time_left--;
}
//get correct frame of sprite to display
//for now, only this line is needed unless GLD spikes are switched back to piles of 50 rather than one singular spike
image_index = min(9, spikes_left - 1);	
/*
if spikes_left >= 30 {
	image_index = 11;
}
else if spikes_left >= 20 {
	image_index = 10;
}
else if spikes_left >= 10 {
	image_index = 9;	
}
else {
	image_index = spikes_left - 1;	
}
*/
