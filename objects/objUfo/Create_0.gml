event_inherited();

parent = noone;

decoy_sprite = sCherry;

target_x = 0;
target_y = 0;

decoy_x = 0;
decoy_y = 0;

decoy_xscale = 1;
decoy_yscale = 1;

//0 -- is approaching target/decoy
//1 -- is abducting
//2 -- is leaving
state = 0;

ufo_speed = 8;

decoy_image_blend = c_white;
decoy_image_alpha = 1;

if room == r_neon and global.option_neon_shader {
	image_blend = c_lime;	
}