if recharge_left == 0 and round_controller.running {
	
	if y > y_dest {
		speed = spd;
	}
	else if y <= y_dest {
		speed = 0;
		y = y_dest;
	}
}
else {
	speed = 0;	
	
	if recharge_left > 0 {
		image_alpha = 1 - recharge_left/recharge_time;
		recharge_left--;
	}
}

if rbe_left < 0.25*rbe_left_max {
	sprite_index = s_trap_appleguard4;
}
else if rbe_left < 0.5 * rbe_left_max {
	sprite_index = s_trap_appleguard3;
}
else if rbe_left < 0.75 * rbe_left_max {
	sprite_index = s_trap_appleguard2;
}
else {
	sprite_index = s_trap_appleguard;
}