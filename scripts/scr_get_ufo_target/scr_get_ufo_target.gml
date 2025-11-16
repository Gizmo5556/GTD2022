// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_ufo_target(){
	

	//get all instances that are within the tower's range
	var _list = ds_list_create();
	collision_circle_list(x,y,radius,objApple,0,0,_list,false);
			
	//similar to first/last, but now compare the strength variables
	//we cannot intialize target as _list[|0] since that target might be too "strong". however, this means the script might return noone
	var target = noone;
	var target_strength = 0;
	for (var i = 0; i < ds_list_size(_list); i++) {
		if _list[|i].strength <= ufo_max_strength {
			if (_list[|i].strength > target_strength) {
				target = _list[|i];
				target_strength = _list[|i].strength;
			}
			//if two strengths are equal, choose the one farthest along the path
			else if (_list[|i].strength == target_strength) {
				if (_list[|i].path_position > target.path_position) {
					target = _list[|i];	
					target_strength = _list[|i].strength;
				}
			}
		}
	}
	ds_list_destroy(_list);
	return target;
}