/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if selected and is_direction_locked {
	draw_sprite_ext(sprLaser, 0, x, y, 1000, main_laser_size, locked_direction, make_color_rgb(212, 59, 77), 0.5* sin(current_time * 0.01) + 1)
	draw_sprite(s_boshy_target, 0, locked_x, locked_y);
}


event_inherited();

