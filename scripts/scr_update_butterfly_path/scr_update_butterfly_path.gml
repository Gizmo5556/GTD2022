// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_butterfly_path(blue, red, yellow, pink){
	
	var path_index_to_set = scr_get_butterfly_path_index(blue, red, yellow, pink);
	
	global.butterfly_path_index = path_index_to_set;
	
	o_path_butterfly.image_index = path_index_to_set;
		
}