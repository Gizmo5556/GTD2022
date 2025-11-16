event_inherited()

image_xscale=1/3;
image_yscale=1/3;

image_speed=0.2


cooldown_max = 72;
cooldown = 0;

bullet_speed = 12;

piercing = 1;

bullet_sprite = sprLeek;

bullet_size = 2;

angle = 0;
spin = 0;

//moab press variables
is_moab_press = false;
moab_press_piercing = 200;
moab_press_atk_power = 30;
moab_press_cooldown_max = 280;
moab_press_cooldown = 0;
moab_press_knockback = 0.009;
moab_press_bullet_sprite = s_cabbage;

mask_index = sprMiku;


if room == r_neon and global.option_neon_shader {
	image_blend = c_aqua;
}

