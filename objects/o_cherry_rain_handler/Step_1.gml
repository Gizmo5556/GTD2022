if objRoundController.running {
	is_spawning = true;
}
else {
	is_spawning = false;
}

if o_wannafest_handler.wheel_effect_frames_left <= 0 {
	is_spawning = false;
	destroy = true;
}


