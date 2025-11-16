

if is_choosing_direction {
	

	draw_sprite_ext(sprLaser, 0, parent.x, parent.y, 1000, parent.main_laser_size, point_direction(parent.x, parent.y, mouse_x, mouse_y), make_color_rgb(212, 59, 77), 0.5* sin(current_time * 0.01) + 1)
	draw_sprite(s_boshy_target, 0, mouse_x, mouse_y);
	
}

draw_self();