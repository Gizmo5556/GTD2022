/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spikes_left = 6;
time_left = 3500;
layers_to_pierce = 1;
clay_atk_power = 1;
lead_atk_power = 1;
boss_atk_power = 1;

if room == r_neon and global.option_neon_shader {
	image_blend = c_orange;
}