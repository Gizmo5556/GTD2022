if position_meeting(mouse_x, mouse_y, id) and not round_controller.dead
and not round_controller.is_choosing_to_continue
and not round_controller.is_choosing_freeplay
and not round_controller.all_waves_over
and not instance_exists(objPlacer) {
	moused = true;
	
	if mouse_check_button_pressed(mb_left) and global.money >= trap_price and not instance_exists(objPlacer) {
		global.money -= trap_price;
		
		audio_play_sound(sndMoney,0,0)
		
		trap = instance_create_layer(trap_source_x, trap_source_y, "Traps", trap_obj);
		instance_destroy();
		
		/*trap.trigger_TL_x = trap_trigger_corner_TL_x;
		trap.trigger_TL_y = trap_trigger_corner_TL_y;
		trap.trigger_BR_x = trap_trigger_corner_BR_x;
		trap.trigger_BR_y = trap_trigger_corner_BR_y;*/
	}	
}
else {
	moused = false;	
}