if spider_piercing_left > 0 {
	spider_piercing_left--;
	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	
	instance_destroy();
}