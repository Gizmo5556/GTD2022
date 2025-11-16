// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_tower_range(){
	var rad = base_radius;
	
	if object_index == o_seong {
		rad *= bonus_range;		
	}
	
	
	if brew_buff_active {
		rad *= brew_received_range_boost;
	}
	
	if is_boosted_by_village_range {
		rad *= heart_received_range_boost;	
	}
	radius = rad;
}