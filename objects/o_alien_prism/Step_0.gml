time += 1;

/*if room == r_moon and o_moon.is_rotating {
	center_x = parent_tower.x;
	center_y = parent_tower.y;
}*/

x = center_x + dcos(time * rotation_speed) * radius;
y = center_y - dsin(time * rotation_speed) * radius;

image_angle += spin;



if room == r_neon and global.option_neon_shader {
	switch sprite_index {
		case s_alien_prism:
			image_blend = c_aqua;
			break;
		
		case s_moon:
			image_blend = c_ltgray;
			break;
	}

}
