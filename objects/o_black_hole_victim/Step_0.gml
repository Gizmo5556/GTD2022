if not is_active {
	//if instance_place(x, y, o_black_hole_victim_sucker) {
	if is_being_sucked {
		is_active = true;
		direction = point_direction(x, y, 400, 304);
		speed = irandom_range(8, 12);
		spin = irandom_range(1, 5) * choose(1, -1);
		
		var dist = point_distance(x, y, 400, 304);
		var scale_init = sign(image_xscale);
		shrink = scale_init/(dist/speed);
		if choose(1,2) == 2 audio_play_sound(sndCherry, 0, 0);
	}
}

else if is_active {
	image_xscale -= shrink;
	image_yscale -= shrink;
	image_angle += spin;
	if image_xscale <= 0 {
		instance_destroy();	
	}
}


if is_wannafest_glass {
	image_angle += spin;
	image_xscale -= shrink;
	image_yscale -= shrink;
	image_alpha -= fade;
}