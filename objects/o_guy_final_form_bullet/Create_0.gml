event_inherited();

image_speed=0.3

max_piercing = 25;

piercing = max_piercing;

//damage values create approximate equals of DPS to dark champion from btd6
clay_atk_power = 8;

lead_atk_power = 4;

boss_atk_power = 6;

can_hit_camo = true;

can_hit_lead = true;

can_hit_black = true;

can_hit_white = true;

can_hit_frozen = true;

knockback_power = 0.015; // decreased from 0.0275, which is more than the special bullet knockback?
boss_knockback_power = 0.00025;

speed = 30;

sound = false;

image_xscale = 2.5;
image_yscale = 2.5;

is_tracking_simple = false;
is_tracking_advanced = false;

if room == r_neon and global.option_neon_shader {
	image_blend = c_orange;	
}