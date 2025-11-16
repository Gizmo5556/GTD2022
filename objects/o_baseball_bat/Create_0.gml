event_inherited();

image_xscale = 0.125;
image_yscale = 0.2;

spin = 0;

parent_tower = noone;

if room == r_neon and global.option_neon_shader {
	image_blend = c_dkgray;
}