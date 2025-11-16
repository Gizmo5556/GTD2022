event_inherited()

image_speed = 0.8;

cooldown_max = 70;
cooldown = 0;

num_lasers = 1;

can_shoot_lead = false;
can_shoot_frozen = false;

is_direction_locked = false;
locked_direction = 0;
locked_x = 0;
locked_y = 0;


bullet_sprite = sprLaser;
bullet_speed = 0;
//main laser
main_laser_lifetime = 1;
main_laser_size = 4;
main_laser_sprite = sprLaser;
main_laser_lead_atk = 4;
main_laser_clay_atk = 4;
main_laser_boss_atk = 4;

//side lasers
bullet_size = 6;
laser_lifetime = 1;
clay_atk_power = 4;
boss_atk_power = 4;
lead_atk_power = 4;

can_launch_ufo = false;
ufo_max_strength = 10.5; //ufos can capture up to fortified super clays, then MOABs later
ufo_cooldown_max = 360;
ufo_cooldown = 0;

can_shoot_frozen = true;

prism = noone;

if room == r_neon and global.option_neon_shader {
	image_blend = c_lime;	
}