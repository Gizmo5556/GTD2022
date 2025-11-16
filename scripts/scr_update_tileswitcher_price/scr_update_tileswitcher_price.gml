// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_tileswitcher_price(){
	return sign(num_times_used) * 
		(const_a * floor((global.wave) / const_b) + const_c * (num_times_used - 1) + const_d);
} 