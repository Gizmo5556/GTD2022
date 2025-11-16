var has_player_clicked = mouse_check_button_pressed(mb_left);

if position_meeting(mouse_x, mouse_y, new_game_button) {
	if has_player_clicked {
		global.is_loading_save = false;
		room_goto(global.chosen_map);
	}
}

else if position_meeting(mouse_x, mouse_y, load_save_button) {
	if has_player_clicked {
		global.is_loading_save = true;
		room_goto(global.chosen_map);
	}
}
else if position_meeting(mouse_x, mouse_y, back_to_maps_button) {
	if has_player_clicked {
		room_goto(r_choosemap);
	}
}