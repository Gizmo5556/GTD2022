counter++;
if is_regen {
	image_index_to_draw = 5;
	red_eye_image_index_to_draw = 1;
	phase2_sprite_to_draw = sprFinalBoss_regen;
}

if counter == 430 {
	var a = instance_create_layer(x, y, "Fruit", objAppleBAD);
	with a {
		is_regen = other.is_regen
		if is_regen {
			sprite_index = sprFinalBoss_regen;
		}
		path_start(other.path_to_pass_on, path_speed, 0, true);
		path_position = other.path_position_to_pass_on;
		pth = other.path_position_to_pass_on;
	}
	instance_destroy();
}