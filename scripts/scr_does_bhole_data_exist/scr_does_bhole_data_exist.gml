// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_does_bhole_data_exist(){
	
	for (var i = 0; i < 4; i++) {
		if file_exists("r_blackhole" + string(i) + ".sav") {
			return true;	
		}
	}
	return false;
}