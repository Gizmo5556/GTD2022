if not instance_exists(parent) or objRoundController.dead {
    instance_destroy()
    exit;
}
if not is_choosing_direction {
	
	if parent.can_target and position_meeting(mouse_x, mouse_y, target_mode_button) {
		if mouse_check_button_pressed(mb_left) {
			
			if parent.object_index != o_miketyson_base and parent.object_index != objAlien {
				//cycle through targeting mode
				parent.targeting_mode = (parent.targeting_mode + 1) % 4
			}
			//mike tyson and alien have extra "follow mouse" option
			else {
				parent.targeting_mode = (parent.targeting_mode + 1) % 5
			}
			
		}
	}
	if parent.can_target {
		target_mode_button.image_alpha = 1;
	}
	else {
		target_mode_button.image_alpha = 0;	
	}

	if parent.object_index == objAlien and position_meeting(mouse_x, mouse_y, lock_direction_button) {
		if mouse_check_button_pressed(mb_left) and parent.is_direction_locked {
			parent.is_direction_locked = false;
		}
		else if mouse_check_button_pressed(mb_left) and not parent.is_direction_locked {
			is_choosing_direction = true;	
		}
	}
}

//choose direction to shoot
else {
	//player can right click to cancel
	if mouse_check_button_pressed(mb_right) {
		is_choosing_direction = false;	
	}
	//make sure player isn't clicking on the store object -- only 
	else if mouse_check_button_pressed(mb_left) and not position_meeting(mouse_x, mouse_y, objStore) {
		mouse_clear(mb_left)
		parent.locked_direction = point_direction(parent.x, parent.y, mouse_x, mouse_y);
		parent.locked_x = mouse_x;
		parent.locked_y = mouse_y;
		parent.is_direction_locked = true;
		is_choosing_direction = false;	
	}
}
