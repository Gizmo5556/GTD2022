// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_target_spact(){
	var _list = ds_list_create();
	
	var target = noone;
	
	var rad = radius;
	if argument_count == 1 {
		rad = argument[0];	
	}
	
	collision_circle_list(x, y, radius, o_path_marker, 0, 0, _list, false);
	
	if ds_list_size(_list) > 0 {
		ds_list_shuffle(_list);
		target = _list[|0];
	}
	
	ds_list_destroy(_list);
	return target;
}