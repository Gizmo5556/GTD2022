event_inherited()

contains = objAppleMOAB;
num = 3;

max_hp = 700 * global.health_ramp;

hp = max_hp;

image_speed = 0

image_xscale *= 0.75
image_yscale *= 0.75

is_boss = true;

rbe = 3164;

strength = 13;

spawns_super_clays = false;

is_regen = false;
regen_amount = 1.5 * global.health_ramp;
if global.wave + 1 <= 60 {
	regen_amount *= 0.2;
}
else if global.wave + 1 <= 70 {
	regen_amount *= 0.4;	
}
else if global.wave + 1 <= 80 {
	regen_amount *= 0.6;	
}
else if global.wave + 1 <= 90 {
	regen_amount *= 0.8;	
}

original_blend = c_white;
if room == r_neon and global.option_neon_shader {
	original_blend = c_red;	
}

image_blend = original_blend;