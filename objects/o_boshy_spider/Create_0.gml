event_inherited();

speed = 11;
direction = 270;

target = noone;

//spider will find new target if original one is destroyed before the spider reaches that target
targeting_mode = 0;
radius = 2000;

hit_target = false;

boshy_parent = noone;

if room == r_neon and global.option_neon_shader {
	image_blend = c_orange;
}