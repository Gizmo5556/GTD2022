// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_target_untitled(){
	var _list = ds_list_create();
	collision_rectangle_list(256, 96, 800, 576, objApple, 0, false, _list, false)
	ds_list_shuffle(_list);
	var target = _list[|0];
	ds_list_destroy(_list);
	return target;
}