event_inherited()

contains = objAppleDDT;
num = 2;

max_hp = 12000 * global.health_ramp;

hp = max_hp;

image_speed = 0;

image_xscale *= 1;
image_yscale *= 1;

is_boss = true;

rbe = 12000;

strength = 16;

spawns_super_clays = false;

is_regen = false;
regen_amount = 2.2 * global.health_ramp;
if global.wave + 1 <= 100 {
	regen_amount *= 0.2;
}
else if global.wave + 1 <= 110 {
	regen_amount *= 0.4;	
}
else if global.wave + 1 <= 120 {
	regen_amount *= 0.6;	
}
else if global.wave + 1 <= 130 {
	regen_amount *= 0.8;	
}

is_camo = false;


original_blend = c_white;
if room == r_neon and global.option_neon_shader {
	original_blend = c_orange;	
}

image_blend = original_blend;
