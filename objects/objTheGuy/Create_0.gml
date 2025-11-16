event_inherited()

image_speed=0.2

cooldown_max = 4;
cooldown = 0;

bullet_speed = 25;

piercing = 0;

bullet_sprite = sPlayerBullet;

bullet_size = 4;

//2nd upgrade
can_launch_grenades = false;

//final upgrade
is_final_form = false;
transform_stage = 0;

grenade_cooldown_max = 335;
grenade_cooldown = 0;
fire_piercing = 10;
fire_clay_atk = 2;
fire_lead_atk = 2;
fire_boss_atk = 1;
fire_knockback = 0;
fire_boss_knockback = 0;

can_launch_energy_shots = false;
num_of_bullets_until_special_max = 40;
num_of_bullets_until_special = num_of_bullets_until_special_max;
special_piercing = 44;
special_clay_atk = 8;
special_boss_atk = 4;
special_knockback = 0.005;
special_boss_knockback = 0.0006;
special_bullet_size = 4.5;

can_shoot_lead = false;
can_shoot_frozen = false;

bullet_image_blend = c_white;

if room == r_neon and global.option_neon_shader {
	image_blend = make_color_hsv(170, 100, 250);
}
