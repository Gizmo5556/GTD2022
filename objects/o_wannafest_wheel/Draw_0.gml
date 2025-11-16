draw_self();

//probably would be easier to draw the icons here instead of messing with an external image editor whenever a change is needed

for (var i=0; i<array_length(wheel_sprites_to_draw); i++) {

	var image_angle_to_draw_at = i * option_size;
	//add the extra 90 degrees, since there is an offset otherwise
	//specifically, since the wheel event icon sprites are below the origin point, drawing at rot=0 will show them as if they were at the wheel's 270 degree mark
	draw_sprite_ext(wheel_sprites_to_draw[@ i], 0, x, y, 1, 1, wheel_draw_angle_offset + image_angle + image_angle_to_draw_at + 90, c_white, 1);
}

//draw logo on top of everything else
draw_sprite_ext(s_wannafest_wheel_logo, 0, x, y, 1, 1, image_angle, c_white, 1);

