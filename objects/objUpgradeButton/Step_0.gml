if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false;

if ind == -999 {
	sprite_index = s_upgrade_max;
	image_index = 0;
}
else {
	image_index = ind;	
}

//there can only be one final upgrade version of the guy tower
if parent_tower.object_index == objTheGuy and instance_exists(o_guy_final_form) and ind mod 5 == 4 {
	ind = -999;
}

if ind != -999 and not has_calculated_price {
	//does this upgrade have a village discount?
	var has_discount = false;
	if parent_tower.is_boosted_by_discount and ind % 5 < 3 { has_discount = true; }

	price = global.upgrade[ind];
	
	if has_discount {
		price *= parent_tower.heart_received_discount_boost;
		//round price and set it to closest multiple of 5
		price = 5 * round(price / 5);
	}
	
	
	
	has_calculated_price = true;
}