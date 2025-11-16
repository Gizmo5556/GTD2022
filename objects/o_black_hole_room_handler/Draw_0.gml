if counter < 750 {
	draw_sprite_ext(s_credits, 0, 514, 608 - credits_y_offset, 1, 1, 0, c_white, 1);	
}
else if counter >= 750 and counter <= 850 {
	draw_sprite_ext(s_black_hole_crack, 0, 400, 304, 2, 2, 0, c_white, 1);
}
else if counter > 850 and counter <= 950 {
	draw_sprite_ext(s_black_hole_crack, 1, 400, 304, 2, 2, 0, c_white, 1);
}



