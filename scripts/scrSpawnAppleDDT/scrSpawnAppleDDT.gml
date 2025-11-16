function scrSpawnAppleDDT() {
	var a = instance_create_layer(0,0,"Fruit",objAppleDDT)
	if argument_count >= 1 {
		a.is_camo = true;//argument[0];
		if true { //DDTs are always camo
			a.image_alpha = 0.5;	
		}
	}
	if argument_count >= 2 {
		a.is_fortified= argument[1];
		if argument[1] {
			a.max_hp *= 2;
			a.hp = a.max_hp;
			a.image_xscale *= FORTIFIED_SCALE_MODIFIER;
			a.image_yscale *= FORTIFIED_SCALE_MODIFIER;
			a.strength += 0.5;
		}
	}
	//regen
	if argument_count >= 3 {
		a.is_regen = argument[2];
		if argument[2] {
			a.sprite_index = s_prince_yellow_regen;
		}
	}
	if room == r_wannafest and o_wannafest_handler.chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.BOSS_REGEN {
		a.is_regen = true;
		a.sprite_index = s_prince_yellow_regen;
	}
	//spawns super clays?
	if argument_count >= 4 {
		a.spawns_super_clays = argument[3];
	}
	
	
	global.number_of_fruit_spawned++;
	
	return a;
}
