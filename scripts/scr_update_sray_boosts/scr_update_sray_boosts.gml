// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_sray_boosts(){
	
	//reset boost variables
	with o_sray {
		sray_boosted_num = 0;
	}
	
	var _list = ds_list_create();
	
	with o_sray {
		if not is_being_sold {
			
			//fill list with all srays within range, INCLUDING ITSELF
			collision_circle_list(x, y, radius, o_sray, 0, false, _list, false);
			
			//if tower is at least tier 3, add boost to all srays within range
			if upgrade_count >= 3 {
				for (var i = 0; i < ds_list_size(_list); i++) {
					_list[|i].sray_boosted_num = min(20, _list[|i].sray_boosted_num + 1);	
				}
			}
					
			
			ds_list_clear(_list);
		}
	}
	
	ds_list_destroy(_list)
	
}