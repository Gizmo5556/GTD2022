image_index = state;
if saved_state == 1 {
	game_set_speed(50, gamespeed_fps);
}
else {
	game_set_speed(50*global.option_fast_forward_multiplier, gamespeed_fps);
}

