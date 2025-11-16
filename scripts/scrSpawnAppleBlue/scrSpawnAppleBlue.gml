function scrSpawnAppleBlue() {
	var a = instance_create_layer(0,0,"Fruit",objAppleBlue)
	if argument_count >= 1 {
		a.is_camo = argument[0];
		if argument[0] {
			a.image_alpha = 0.5;	
		}
	}
	if argument_count >= 2 {
		a.is_fortified= argument[1];	
	}
	
	
	
	global.number_of_fruit_spawned++;
	
	return a;

}
