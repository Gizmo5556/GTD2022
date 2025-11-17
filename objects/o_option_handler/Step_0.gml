if mouse_check_button_pressed(mb_left) {

	
	if position_meeting(mouse_x, mouse_y, back_to_maps_button) {
		scr_save_medals();
		scr_update_sound_volumes();
		window_set_fullscreen(global.option_fullscreen)
		audio_play_sound(sndCoin, 0, 0);
		oController.alarm[0] = 1;
		room_goto(r_choosemap);
	}
	
	else if position_meeting(mouse_x, mouse_y, music_inc_volume) {
		
		global.music_volume = min(1.0, global.music_volume + volume_increment);
		audio_sound_gain(global.music, global.music_volume*0.75, 0);
		if global.music_volume == 1.0 {
			music_inc_volume.image_alpha = 0	
		}
		else {
			music_inc_volume.image_alpha = 1
			music_dec_volume.image_alpha = 1
		}
	}
	else if position_meeting(mouse_x, mouse_y, music_dec_volume) {
		
		global.music_volume = max(0.0, global.music_volume - volume_increment);
		audio_sound_gain(global.music, global.music_volume*0.75, 0);
		if global.music_volume == 0.0 {
			music_dec_volume.image_alpha = 0	
		}
		else {
			music_inc_volume.image_alpha = 1
			music_dec_volume.image_alpha = 1
		}
	}
	else if position_meeting(mouse_x, mouse_y, sound_inc_volume) {
		
		global.sound_volume = min(1.0, global.sound_volume + volume_increment);
		audio_sound_gain(snd_energy_shot, global.sound_volume*0.4, 0);
		audio_play_sound(snd_energy_shot, 999999, 0);
		
		if global.sound_volume == 1.0 {
			sound_inc_volume.image_alpha = 0	
		}
		else {
			sound_inc_volume.image_alpha = 1
			sound_dec_volume.image_alpha = 1
		}
		
	}
	else if position_meeting(mouse_x, mouse_y, sound_dec_volume) {
		
		global.sound_volume = max(0.0, global.sound_volume - volume_increment);	
		audio_sound_gain(snd_energy_shot, global.sound_volume*0.4, 0);
		audio_play_sound(snd_energy_shot, 999999, 0);
		
		if global.sound_volume == 0.0 {
			sound_dec_volume.image_alpha = 0	
		}
		else {
			sound_inc_volume.image_alpha = 1
			sound_dec_volume.image_alpha = 1
		}
		
	}
	else if position_meeting(mouse_x, mouse_y, ff_inc_mult) {
		
		global.option_fast_forward_multiplier = min(5.0, global.option_fast_forward_multiplier + ff_increment);	
	}
	else if position_meeting(mouse_x, mouse_y, ff_dec_mult) {
		
		global.option_fast_forward_multiplier = max(1.5, global.option_fast_forward_multiplier - ff_increment);	
	}
	else if position_meeting(mouse_x, mouse_y, toggle_infobox) {
		
		global.option_show_infobox = not global.option_show_infobox;
		toggle_infobox.image_index = global.option_show_infobox;
		
	}
	else if position_meeting(mouse_x, mouse_y, toggle_catharsis_shader) {
		
		global.option_catharsis_shader = not global.option_catharsis_shader;
		toggle_catharsis_shader.image_index = global.option_catharsis_shader;
		
	}
	else if position_meeting(mouse_x, mouse_y, toggle_neon_shader) {
		
		global.option_neon_shader = not global.option_neon_shader;
		toggle_neon_shader.image_index = global.option_neon_shader;
		
	}
	else if position_meeting(mouse_x, mouse_y, toggle_mooned_music) {
		global.option_replace_mooned_music = not global.option_replace_mooned_music;
		toggle_mooned_music.image_index = global.option_replace_mooned_music;
	}
	
	else if position_meeting(mouse_x, mouse_y, toggle_fullscreen) {
		global.option_fullscreen = not global.option_fullscreen;
		toggle_fullscreen.image_index = global.option_fullscreen;
	}
	
	else if position_meeting(mouse_x, mouse_y, toggle_buff_icons_right) {
		global.option_buff_icon_visible = true;
		toggle_buff_icons_right.image_alpha = 0;
		toggle_buff_icons_left.image_alpha = 1;
	}
	else if position_meeting(mouse_x, mouse_y, toggle_buff_icons_left) {
		global.option_buff_icon_visible = false;
		toggle_buff_icons_left.image_alpha = 0
		toggle_buff_icons_right.image_alpha = 1
	}
	
	else if position_meeting(mouse_x, mouse_y, toggle_language_right) {
		global.option_language = global.option_language_options.JP;
		toggle_language_right.image_alpha = 0;
		toggle_language_left.image_alpha = 1;
	}
	else if position_meeting(mouse_x, mouse_y, toggle_language_left) {
		global.option_language = global.option_language_options.EN;
		toggle_language_left.image_alpha = 0
		toggle_language_right.image_alpha = 1
	}

}