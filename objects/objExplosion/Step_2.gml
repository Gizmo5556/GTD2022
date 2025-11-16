if countdown > 0 {
	countdown--;

	if countdown <= 0 {
		mask_index = sprNothing;
		explosion_power = 0;

	}
}

if sprite_index == s_heart_bomb_explosion {
	image_blend = make_color_hsv(170, 100, 250);	
}