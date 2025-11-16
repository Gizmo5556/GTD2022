// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_does_bhole_map_have_medal(){
	var medal_array = global.medal_list[? room_get_name(r_blackhole)];
	for (var i = 0; i < array_length(medal_array); i++) {
		if medal_array[i] == 1 {
			return true;	
		}
	}
	return false;
}