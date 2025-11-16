// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_medals(){
	
	if (file_exists("medals.sav")) {
		var _buffer = buffer_load("medals.sav");
		var _string = buffer_read(_buffer, buffer_string);
		
		//decode string
		_string = string_delete(_string, 1, 9);
		_string = base64_decode(_string);
		
		
		
		buffer_delete(_buffer);
		
		var load_data = json_parse(_string);
		
		//iterate through load_data until only one item is left -- the last struct has the options rather than medal info
		while (array_length(load_data) > 1) {
			var load_struct = array_pop(load_data);
			global.medal_list[? load_struct.map_name] = [load_struct.has_medium, load_struct.has_hard, load_struct.has_veryhard, load_struct.has_impossible];
		}
		
		//option info
		load_struct = array_pop(load_data);
		global.music_volume = load_struct.music_vol;
		global.sound_volume = load_struct.sound_vol;
		global.option_fast_forward_multiplier = load_struct.ff_mult;
		global.option_show_infobox = load_struct.show_infobox;
		global.option_catharsis_shader = load_struct.catharsis_shader;
		global.option_replace_mooned_music = load_struct.mooned_music;
		global.option_fullscreen = load_struct.fullscreen;
		//try/catch statement for variables created after beta testing -- this way beta version saves won't be unloadable
		try {
			global.option_buff_icon_visible = load_struct.buff_icon;
		}
		catch(_exception) {
			global.option_buff_icon_visible = false;
		}
		try {
			global.option_neon_shader = load_struct.neon_shader;	
		}
		catch (_exception) {
			global.option_neon_shader = false;	
		}
		window_set_fullscreen(global.option_fullscreen);
	}
	
	
}