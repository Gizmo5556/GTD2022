// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calculate_sray_angles(){
	for (var i = 0; i < num_bullets; i++) {
		var ang = (bullet_spread * ceil(i/2) * sign((i % 2) - 0.5)) - ((bullet_spread/2) * (num_bullets % 2 == 0));
		ds_list_add(angles_list, ang);
	}
}