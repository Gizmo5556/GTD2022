event_inherited()

contains = objAppleClay
num = 3;

max_hp = 200 * global.health_ramp;

hp = max_hp;

image_speed = 0;

if object_index == objAppleMOAB {
	image_xscale *= 0.5
	image_yscale *= 0.5
}


is_boss = true;

rbe = 616;

strength = 12;

spawns_super_clays = false;

is_regen = false;
regen_amount = 1 * global.health_ramp;
//if this is the first boss on wave 40, or the second on 50, make the regen a bit easier.
if global.wave + 1 <= 40 {
	regen_amount *= 0.2;
}
else if global.wave + 1 <= 50 {
	regen_amount *= 0.4;	
}
else if global.wave + 1 <= 60 {
	regen_amount *= 0.6;	
}
else if global.wave + 1 <= 70 {
	regen_amount *= 0.8;	
}


original_blend = c_white;
if room == r_neon and global.option_neon_shader {
	original_blend = c_aqua;	
}

image_blend = original_blend;

global.number_of_bosses_spawned++;

