event_inherited();

image_speed=0.5

//alarm[0] = 1

countdown = 2;

upgraded= false

can_hit_black = false;

//deal 1 dmg to lead starting off
lead_atk_power = 1;

can_hit_lead = true;

can_hit_white = true;

can_hit_frozen = true;

knockback_power = 0;
boss_knockback_power = 0;

clay_atk_power = 1;

boss_atk_power = 1;

can_hit_camo = false;

explosion_power = 14;

is_elephant_explosion = false;

extra_dmg_to_fortified_and_moab = false;

removes_regen_and_camo = false;

num_layers_to_pierce = 1;

//explosion_layer_stripping = 1;

if room == r_neon and global.option_neon_shader {
	image_blend = c_orange;	
}