if moused {
	if selected {
		selected = false;	
	}
	else {
		var is_any_other_tower_selected = false;
	    with objTower {
			if selected { 
				is_any_other_tower_selected = true;
				//deselect already selected tower
				selected = false;
				other.selected = true;
				break;
			}
		}
		if not is_any_other_tower_selected {
			selected = true;	
		}
	}
	
	
}
else if mouse_x < (800) && selected {
	
	selected=false;
	
	//do not deselect the tower when choosing a locked direction for the tower to shoot
	if instance_exists(objUpgrades) and objUpgrades.is_choosing_direction == true {
		selected=true;
	}
	
}
