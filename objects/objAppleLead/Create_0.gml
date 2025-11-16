event_inherited()

contains = objAppleBlack;
num = 1;

original_blend = c_white;

image_blend = original_blend;



image_xscale = 1.1;
image_yscale = 1.1;

strength = 7;

rbe = 23;

max_hp = 1;

hp = max_hp;

regen_amount = max_hp/75;

is_lead = true;

if room == r_neon and global.option_neon_shader {
	
	original_blend = c_dkgray
	
}