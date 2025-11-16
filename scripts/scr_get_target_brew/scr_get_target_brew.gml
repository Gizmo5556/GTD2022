// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_target_brew(){
	
	var target = noone;
	var tower;
	var _list = ds_list_create();
	
	//get an ORDERED list -- brew prioritizes those that are closer to the colonel
	collision_circle_list(x, y, radius, objTower, 0, true, _list, true);
	
	if ds_list_size(_list) == 0 { target = noone; }
	else {
		for (var i = 0; i < ds_list_size(_list); i++) {
			tower = _list[|i];
			if tower.object_index != o_colonel and tower.object_index != o_heart and tower.brew_received_waiting_duration == 0 {
				target = tower;
				return target;
			}
		}
	}
	
	ds_list_destroy(_list);
	//just in case the list wasn't empty, but none of the towers are buffable
	return target;

}