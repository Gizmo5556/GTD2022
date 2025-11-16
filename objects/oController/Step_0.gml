//restart game from title screen
if keyboard_check_pressed(vk_f2) {
	 //must reset global variables and clean up data structures in towers
	room_speed = 50;
	with objTower {instance_destroy();}
	
	//delete dynamically created paths (will be recreated in mainInit script)
	path_delete(path_catharsis2);
	path_delete(path_blackhole1);
	path_delete(path_blackhole2);
	path_delete(path_platform1);
	path_delete(path_platform2);
	path_delete(path_platform3);
	path_delete(path_platform4);
	path_delete(path_platform5);
	path_delete(path_platform6);
	//delete dynamically created surface used for catharsis effect
	surface_free(sprite_surface);
	//has_created_funny_surface = false;
	if instance_exists(o_black_hole) and surface_exists(o_black_hole.surf) {
		surface_free(o_black_hole.surf);	
	}
	
	//clear out particle variables to prevent memory leaks
	part_system_destroy(global.particles);
	part_type_destroy(global.partTypeConfetti);
	part_type_destroy(global.explosionpart);
	
	ds_map_destroy(global.medal_list)
	
	ds_map_destroy(global.sfx_limit_map_handler);
	
    game_restart()
	
	exit;
}
// toggle fullscreen
/*else if keyboard_check_pressed(vk_f4) {
    window_set_fullscreen(not window_get_fullscreen())
	
    alarm[0] = 1
}
*/
else if keyboard_check_pressed(vk_escape) {//or (keyboard_check_pressed(vk_f4) and keyboard_check_direct(vk_alt)) {
    if instance_exists(objRoundController) or room == rEnd or room == r_saved_game_warning {
		if room != r_saved_game_warning {
			audio_stop_all();
		}
		room_goto(r_choosemap)
	}
	else {
		game_end()
	}
	
}
else if keyboard_check_pressed(vk_f9) {
	var filename = date_datetime_string(date_current_datetime());
	//remove forward slashes and colons from filename
	filename = string_lettersdigits(filename);
	filename += ".png";
	screen_save(filename);
	show_debug_message(filename);
	audio_play_sound(snd_screenshot, 0, 0);
}

if room == rTitle {
	if keyboard_check_pressed(vk_shift) or mouse_check_button_pressed(mb_left) {
		room_goto(r_choosemap);	
	}
}


/*
if global.sfx_hit_countdown == 0 {
	if global.sfx_hit_num > 0 {
		global.sfx_hit_num--;
		global.sfx_hit_countdown = 71; //hit sound is 71 frames long approx
	}
}
else {
	global.sfx_hit_countdown--;
}*/


for (var i = 0; i < array_length(global.sfx_limit_map_keys); i++) {
	//get string related to sound effect being processed
	var key = global.sfx_limit_map_keys[i];
	//if sfx_countdown is == 0
	if global.sfx_limit_map_handler[? key][1] == 0 {
		//if sfx_num is > 0
		if global.sfx_limit_map_handler[? key][0] > 0 {
			//sfx_num--
			global.sfx_limit_map_handler[? key][0]--;
			//set sfx_countdown equal to number of frames that sfx lasts
			global.sfx_limit_map_handler[? key][1] = global.sfx_limit_map_handler[? key][2];
		}
	}
	//if sfx_countdown > 0
	else {
		//sfx_countdown--
		global.sfx_limit_map_handler[? key][1]--;	
	}
}





//system to prevent too many overlapping sounds of the same sound
/*if global.sfx_hit_countdown > 0 {
	global.sfx_hit_countdown--;
}
if global.sfx_hit_countdown == 0 and global.sfx_hit_num > 0 {
	global.sfx_hit_num--;
	global.sfx_hit_countdown = 71; //hit sound is 71 frames long approx
}*/

/*

if global.sfx_bosshit_countdown > 0 {
	global.sfx_bosshit_countdown--;
	
}
if global.sfx_bosshit_countdown == 0 and global.sfx_bosshit_num > 0 {
	global.sfx_bosshit_num--;
	if global.sfx_bosshit_num > 0 {
		global.sfx_bosshit_countdown = 16;
	}
}
if global.sfx_clay_countdown > 0 {
	global.sfx_clay_countdown--;
	
}
if global.sfx_clay_countdown == 0 and global.sfx_clay_num > 0 {
	global.sfx_clay_num--;
	if global.sfx_clay_num > 0 {
		global.sfx_clay_countdown = 29;
	}
}
if global.sfx_thwomp_countdown > 0 {
	global.sfx_thwomp_countdown--;
	
}
if global.sfx_thwomp_countdown == 0 and global.sfx_thwomp_num > 0 {
	global.sfx_thwomp_num --;
	if global.sfx_thwomp_num  > 0 {
		global.sfx_thwomp_countdown = 50;
	}
}
if global.sfx_energy_num > 0 {
	global.sfx_energy_countdown--;
	
}
if global.sfx_energy_countdown == 0 and global.sfx_energy_num > 0 {
	global.sfx_energy_num --;
	if global.sfx_energy_num  > 0 {
		global.sfx_energy_countdown = 37;
	}
}

if keyboard_check_pressed(ord("P")) {
	//check if room is a playable map and not something like main menu
	//unfortunately we can't check if the round controller exists since it's deactivated while the game is paused
	
	var is_room_pausable = false;
	for (var i = 0; i < array_length(global.map_list); i++) {
		if room == global.map_list[i] {
			is_room_pausable = true;
		}
	}
	if is_room_pausable {
		//unpause game
		if is_paused {
			instance_activate_all();
			is_paused = false;
			if (sprite_exists(pause_screen)) {
				sprite_delete(pause_screen);
			}
			io_clear();
		}
		//pause game
		else {
			//"turn off" all the objects except for the controller
			pause_screen = sprite_create_from_surface(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height(), false, false, 0, 0);
			instance_deactivate_all(true)
			is_paused = true;
		}
	}
}*/

