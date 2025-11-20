if visible and (mouse_check_button_pressed(mb_left) and collision_point(mouse_x,mouse_y,id, 0, 0)) {
	visible = false;
	io_clear();
}

if visible and timer_until_invisible > 0 and not objRoundController.running {
	timer_until_invisible -= 1;	
}

if timer_until_invisible <= 0 {
	visible = false;	
}