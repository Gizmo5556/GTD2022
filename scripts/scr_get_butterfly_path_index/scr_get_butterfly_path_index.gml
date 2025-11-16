// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_butterfly_path_index(blue, red, yellow, pink) {
	
	var path_index_to_return = 0;

	//if none are on or blue is not on, normal/shortest path taken
	if blue {
		//like binary -- e.g., if pink and red are on, then index becomes 6
		path_index_to_return = (4 * pink + 2 * yellow + 1 * red) + 1;
	}
	
	return path_index_to_return;
}