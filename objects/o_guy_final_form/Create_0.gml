event_inherited();

parent = noone;

first_hole = noone;
first_hole_timer = 0;

second_hole = noone;
left_eye = noone;
right_eye = noone;
mouth = noone;

final_form_complete = false;

angry_timer = 0;
talk_timer = 0;

is_talking = false;

wave_spawner = o_wave_spawner.id;

cooldown_max = 4;
cooldown = 0;


can_launch_energy_shots = true;
num_of_bullets_until_special_max = 100;
num_of_bullets_until_special = num_of_bullets_until_special_max;
special_piercing = 49;
special_clay_atk = 12.5;
special_boss_atk = 12.5;
special_knockback = 0.02;
special_boss_knockback = 0.001;
special_bullet_size = 4.5;

radius = 1100;

can_shoot_camo = true;
can_shoot_lead = true;
can_shoot_frozen = true;

if room == r_neon and global.option_neon_shader {
	image_blend = c_white;
}