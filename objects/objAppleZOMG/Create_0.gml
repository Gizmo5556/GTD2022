event_inherited()

contains = objAppleBFB;
num = 3;

max_hp = 4000 * global.health_ramp;

hp = max_hp;

image_speed = 0;

image_xscale *= 1;
image_yscale *= 1;

is_boss = true;

rbe = 16656;

strength = 15;

spawns_super_clays = false;

is_regen = false;
regen_amount = 1.9 * global.health_ramp;
if global.wave + 1 <= 80 {
	regen_amount *= 0.2;
}
else if global.wave + 1 <= 90 {
	regen_amount *= 0.4;	
}
else if global.wave + 1 <= 100 {
	regen_amount *= 0.6;	
}
else if global.wave + 1 <= 110 {
	regen_amount *= 0.8;	
}

original_blend = c_white;
if room == r_neon and global.option_neon_shader {
	original_blend = c_green;	
}

image_blend = original_blend;