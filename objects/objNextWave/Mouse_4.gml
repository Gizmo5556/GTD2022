if state == 0 {
	with(objRoundController) {
		if visible and not (running or dead or is_choosing_freeplay or is_choosing_to_continue or all_waves_over) {
			event_user(0);	
			other.state = other.saved_state;
		}
	}
}
else if state == 1 {
	state = 2;
	saved_state = 2;
}
else if state == 2 {
	state = 1;
	saved_state = 1;
}

