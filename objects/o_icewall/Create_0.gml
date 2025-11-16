event_inherited();

state = 0;

spin = irandom_range(-9, 9);

lifetime = 275;

cooldown_max = 5;
cooldown = cooldown_max;

target_x = 0;
target_y = 0;

final_x_scale = 0.5;
final_y_scale = 0.5;

if room == r_neon and global.option_neon_shader {
	image_blend = c_aqua;	
}