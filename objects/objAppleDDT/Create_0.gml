event_inherited()

contains = o_apple_super_clay;
//num = 3;

max_hp = 400 * global.health_ramp;

hp = max_hp;

image_xscale *= 0.75
image_yscale *= 0.75

rbe = 816;

strength = 14;

spawns_super_clays = false;

is_camo = true;

is_lead = true;

is_black = true;

is_regen = false;
regen_amount = 1 * global.health_ramp;
if global.wave + 1 <= 90 {
	regen_amount *= 0.2;
}
else if global.wave + 1 <= 100 {
	regen_amount *= 0.4;	
}
else if global.wave + 1 <= 110 {
	regen_amount *= 0.6;	
}
else if global.wave + 1 <= 120 {
	regen_amount *= 0.8;	
}


original_blend = c_white;
if room == r_neon and global.option_neon_shader {
	original_blend = c_yellow;	
}

image_blend = original_blend;