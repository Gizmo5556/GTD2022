for (var i = 0; i < ds_list_size(bat_list); i++) {
	instance_destroy(bat_list[|i]);	
}

ds_list_destroy(bat_list);