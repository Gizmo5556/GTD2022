if not instance_exists(parent) or objRoundController.dead {
    instance_destroy()
    exit;
}
//normally i could just destroy this object if the parent is no longer selected
//however that method means that if i deselect the current tower by selecting a different tower,
//the blue bar on the side is shown for 1 frame as the new upgrades object is loaded
//this bothers me so i had to repeat a bunch of ugly code here so that no "flickering" happens
else if not parent.selected {
	with objTower {
		if selected {
			other.parent = id;
			other.px = x;
			other.py = y;
			break;
		}
	}
	//no other parent was found
	if not parent.selected {
		instance_destroy()
		exit;	
	}
	else {
		with(upgrade_button) instance_destroy();
		with(target_mode_button) instance_destroy();
		with(lock_direction_button) instance_destroy();
		upgrade_button = instance_create_layer(x+114,y+298,"sell_button",objUpgradeButton);
		upgrade_button.parent_tower = parent;
		upgrade_button.has_calculated_price = false;
		var tower_index = scr_get_tower_index(parent.object_index);
		num = tower_index;
		//calculate ind value for upgrade button
		if parent.upgrade_count == 5 {
			upgrade_button.ind = -999;
			upgrade_button.image_index = 0;
			upgrade_button.sprite_index = s_upgrade_max;
		}
		else {
			//ind ranges from 0 - 4 for kid, 5 - 9 for turret, etc
			upgrade_button.ind = 5 * tower_index + parent.upgrade_count;
			upgrade_button.price = global.upgrade[upgrade_button.ind];
			if parent.is_boosted_by_discount and parent.upgrade_count <= 2 {
				upgrade_button.price *= parent.heart_received_discount_boost;	
			}
			upgrade_button.price = 5 * round(upgrade_button.price / 5);
			upgrade_button.image_index = upgrade_button.ind;
		}
		//targeting mode button
		target_mode_button = instance_create_layer(x+114,y+150,"sell_button",o_target_mode_button);
		if parent.can_target {
			target_mode_button.image_alpha = 1;
		}
		else {
			target_mode_button.image_alpha = 0;	
		}

		if parent.object_index == objAlien {
			lock_direction_button = instance_create_layer(x + 114, y + 200, "sell_button", o_lock_direction_button);
		}
		else {
			target_mode_button.y += 24;	
		}
		
	}
}




px = parent.x;
py = parent.y;

buff_array = array_create(0);
if parent.is_boosted_by_village_range {
	array_push(buff_array, "heart");
}

if parent.amd_buff_active {
	array_push(buff_array, "amd");
}
if parent.brew_buff_active {
	array_push(buff_array, "brew");
}
if parent.sray_boosted_num > 0 {
	array_push(buff_array, "sray");	
}

