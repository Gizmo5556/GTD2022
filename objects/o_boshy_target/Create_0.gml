event_inherited();

x = -100;
y = -100;
target = noone;
parent = noone;
spider_timer = 25;

//targeter will find new fruit to target if original is destroyed
targeting_mode = 0;
radius = 2000;

if room == r_neon and global.option_neon_shader {
	image_blend = c_red;	
}