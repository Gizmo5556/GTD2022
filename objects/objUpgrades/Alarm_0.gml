//find index of object in tower array
var tower_index = scr_get_tower_index(parent.object_index);

num = tower_index;

//calculate ind value for upgrade button
if parent.upgrade_count == 5 {
	upgrade_button.ind = -999;	
}
else {
	//ind ranges from 0 - 4 for kid, 5 - 9 for turret, etc
	upgrade_button.ind = 5 * tower_index + parent.upgrade_count;
}

