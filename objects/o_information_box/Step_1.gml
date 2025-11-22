if visible and (mouse_check_button_pressed(mb_left) and collision_point(mouse_x,mouse_y,id, 0, 0)) {
	visible = false;
	io_clear();
}

//only decrement the timer when the round IS RUNNING. 
//Otherwise it could disappear too quickly without the player doing anything.
if visible and timer_until_invisible > 0 and objRoundController.running {
	timer_until_invisible -= 1;	
}

if timer_until_invisible <= 0 {
	visible = false;	
}