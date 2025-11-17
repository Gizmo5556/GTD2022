function scr_save_medals(){
	
	var save_data = array_create(0)
	
	var size = ds_map_size(global.medal_list);
	
	var key = ds_map_find_first(global.medal_list);
	
	save_struct = 
	{
		music_vol : global.music_volume,
		sound_vol : global.sound_volume,
		ff_mult : global.option_fast_forward_multiplier,
		show_infobox : global.option_show_infobox,
		catharsis_shader : global.option_catharsis_shader,
		neon_shader : global.option_neon_shader,
		mooned_music : global.option_replace_mooned_music,
		fullscreen : global.option_fullscreen,
		buff_icon : global.option_buff_icon_visible,
		language: global.option_language,
	}
	array_push(save_data, save_struct);
	
	//save medal information
	for (var i = 0; i < size; i++) {
		var array = global.medal_list[? key];
		var save_struct = 
		{
			map_name : key,
			has_medium : array[0],
			has_hard : array[1],
			has_veryhard : array[2],
			has_impossible : array[3],
		}
		array_push(save_data, save_struct);
		
		key = ds_map_find_next(global.medal_list, key);
	}
	
	
	var _string = json_stringify(save_data);
	
	
	//encoding, similar in scr_save_game
	_string = base64_encode(_string);
	_string = "Njk0MjE" + _string; //garbage
	_string = "DK" + _string;
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "medals.sav");
	buffer_delete(_buffer);
}