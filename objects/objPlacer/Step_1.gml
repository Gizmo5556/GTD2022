if mouse_check_button_pressed(mb_left) {
	if not visible {
		mouse_clear(mb_left);
		instance_destroy();
		exit;
	}	
}
