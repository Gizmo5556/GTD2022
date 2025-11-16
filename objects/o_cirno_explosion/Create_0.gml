event_inherited();

upgraded= false

final_scale = 1;

spin = irandom_range(-5, 5);
if spin == 0 {spin = 1;}

alarm[0] = 4;


can_hit_black = true;

can_hit_lead = false;

can_hit_white = false;

can_hit_frozen = false;

clay_atk_power = 0;

can_hit_camo = false;

explosion_power = 40;

num_layers_frozen = 1;

if room == r_neon and global.option_neon_shader {
	image_blend = c_aqua;	
}