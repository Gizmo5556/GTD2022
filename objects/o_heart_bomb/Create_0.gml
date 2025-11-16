countdown_max = 150;
countdown = countdown_max;
explosion_sprite = s_heart_bomb_explosion;
explosion_size = 1.6;
piercing = 20;
explosion_power = 20;
clay_atk_power = 1;
lead_atk_power = 1;
boss_atk_power = 1;
can_hit_camo = false;
can_hit_black = false;

is_bomb_tracking = false;
update_timer_max = 25;
update_timer = 0;

image_xscale = 2;
image_yscale = 2;

if room == r_neon and global.option_neon_shader {
	image_blend = c_red;
}