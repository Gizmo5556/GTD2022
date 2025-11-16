function scrSpawnAppleZebra() {
	var a = instance_create_layer(0,0,"Fruit",objAppleZebra);
	if argument_count >= 1 {
		a.is_camo = argument[0];
		if argument[0] {
			a.image_alpha = 0.5;	
		}
	}



	global.number_of_fruit_spawned++;
	
	return a;


}
