if id == other.target and not other.hit_target {
	
	if is_camo and not other.can_hit_camo {exit;}
	
	if is_lead and not other.can_hit_lead {exit;}
	
	if is_black and not other.can_hit_black {exit;}
	
	if is_frozen and not other.can_hit_frozen {exit;}
	
	if spider_piercing_left > 0 {exit;}
	
	other.hit_target = true;
	
	boshy_targeted_by = noone;
	
	//spider_piercing_left used in end step and user event 0 to pierce multiple layers
	spider_piercing_left = other.spider_piercing - 1; 
	
	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	
	event_user(0)

	instance_destroy();

}

