if is_moving and vspeed > 0 {
	if y >= 512 {
		vspeed = 0;
		y = 512;
		is_moving = false;
	}
}
else if is_moving and vspeed < 0 {
	if y <= 480 {
		vspeed = 0;
		y = 480;
		is_moving = false;
	}
}
