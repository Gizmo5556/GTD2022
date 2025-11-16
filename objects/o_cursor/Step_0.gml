if state == 0 {
	x = scr_approach(x, decoy_x+32, cursor_speed);
	y = scr_approach(y, decoy_y+32, cursor_speed);
	if x == decoy_x+32 and y == decoy_y+32 {
		state = 1;
	}
}

else if state == 1 {
	x = scr_approach(x, parent_x+32, cursor_speed);
	y = scr_approach(y, parent_y+32, cursor_speed);
	decoy_x = x-32;
	decoy_y = y-32;
	if x == parent_x+32 and y == parent_y+32 {
		instance_destroy();
	}
	
}
