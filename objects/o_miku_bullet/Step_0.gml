image_angle += spin;

if room == r_neon and global.option_neon_shader {
	switch sprite_index {
		case sprLeek:
			image_blend = c_lime;
			break;
		case s_radish:
			image_blend = c_red;
			break;
		case sprBroccoli:
		case s_cabbage:
			image_blend = c_green;
			break;
		case s_pizza:
			image_blend = c_orange;
			break;
	}	
}