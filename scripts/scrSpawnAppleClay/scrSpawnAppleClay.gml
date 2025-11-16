function scrSpawnAppleClay() {
	var a = instance_create_layer(0,0,"Fruit",objAppleClay)
	if argument_count >= 1 {
		a.is_camo = argument[0];
		if argument[0] {
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
			a.image_blend = c_lime;	
		}
	}
	
	
	global.number_of_fruit_spawned++;
	
	return a;
}
