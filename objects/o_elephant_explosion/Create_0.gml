event_inherited();

image_speed=0.25

//alarm[0] = 1

countdown = 2;

is_elephant_explosion = true;

explosion_power = 1000;
boss_atk_power = 550;

extra_dmg_to_fortified = false;

removes_regen_and_camo = false;

image_xscale = 5;
image_yscale = 5;

if room == r_neon and global.option_neon_shader {
	image_blend = c_orange;
}