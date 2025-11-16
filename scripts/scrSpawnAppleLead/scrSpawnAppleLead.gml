function scrSpawnAppleLead() {
	var a = instance_create_layer(0,0,"Fruit",objAppleLead)
	if argument_count >= 1 {
		a.is_camo = argument[0];
		if argument[0] {
			a.image_alpha = 0.5;	
		}
	}
	if argument_count >= 2 {
		a.is_fortified= argument[1];
		if argument[1] {
			a.hp += 3; //lead fortified get 3 extra hp
			a.max_hp += 3;
			a.image_xscale *= FORTIFIED_SCALE_MODIFIER;
			a.image_yscale *= FORTIFIED_SCALE_MODIFIER;
			a.strength += 0.5;
		}
	}


	global.number_of_fruit_spawned++;
	
	return a;
}
