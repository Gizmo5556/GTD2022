// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_target_amd(){
	
	var target = noone;
	var no_amd_list = ds_list_create();
	var yes_amd_list = ds_list_create();
	
	//acidic mixture dip (base buff that colonel has) selects a tower at random, but choose those without any AMD buff first
	//get all instances that are within the tower's range
	//towers without amd go in no_amd_list
	
	var i;	
	
	with (objTower) {
		//do not bother adding towers that are colonels or villages (no point in buffing them)
		if id.object_index != o_colonel	and id.object_index != o_heart {
			i = collision_circle(other.x, other.y, other.radius, id, 0, false);
			if i != noone {
				if i.amd_buff_active {
					ds_list_add(yes_amd_list, i);	
				}
				else {
					ds_list_add(no_amd_list, i);	
				}
			}
		}
	}
	
	//if there are any towers in the no_amd_list list, then choose from there first
	if ds_list_size(no_amd_list) > 0 {
		ds_list_shuffle(no_amd_list);
		target = no_amd_list[|0];
	}
	else if ds_list_size(yes_amd_list) > 0 {
		ds_list_shuffle(yes_amd_list);
		target = yes_amd_list[|0];
	}
			
			
	ds_list_destroy(no_amd_list);
	ds_list_destroy(yes_amd_list);
	return target;

}