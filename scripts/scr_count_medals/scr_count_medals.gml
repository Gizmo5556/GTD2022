// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_count_medals() {
	
	var total_medals_earned = 0;
	
	for (var i = 0; i < array_length(global.map_list); i++) {
		
		var medal_array = global.medal_list[? room_get_name(global.map_list[i])];
		
		for (var j = 0; j < array_length(medal_array); j++) {
			total_medals_earned += medal_array[j];	
		}
	}
	
	return total_medals_earned;
}