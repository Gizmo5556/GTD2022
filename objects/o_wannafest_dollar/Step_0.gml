
var dist = point_distance(x, y, mouse_x, mouse_y)


if dist <= 24 {
	global.money += worth;
	
	if global.sfx_limit_map_handler[? "sndMoney"][0] < MAX_SFX_COUNT {
		audio_play_sound(sndMoney,0,0);
		global.sfx_limit_map_handler[? "sndMoney"][0]++;
	}
	instance_destroy();
}
else if dist <= 80 {
	homing = true;	
}
else {
	vspeed = vspeed_orig/room_speed;
	hspeed = hspeed_orig/room_speed;	
}


if homing {
	hspeed = 0;
	vspeed = 0;
	direction = point_direction(x, y, mouse_x, mouse_y);
	speed = 15;
}
else {
	//wrap horizontally, but destroy if it falls to ground
	//don't run this if it's homing
	if x < 0 and hspeed < 0 {
		x += 800;	
	}
	else if x > 800 and hspeed > 0 {
		x -= 800;	
	}

	if y > room_height + 16 {
		global.money += worth;
		instance_destroy();
	}	
}