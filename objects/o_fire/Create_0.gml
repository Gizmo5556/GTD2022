event_inherited();

image_speed = 0.4;

upgraded= false



//deal 1 dmg to lead starting off
lead_atk_power = 1;



knockback_power = 0;
boss_knockback_power = 0;

clay_atk_power = 1;



explosion_power = 4;  //fire piercing

can_hit_lead = true;
can_hit_black = true;
can_hit_camo = false;
can_hit_white = true;
can_hit_frozen = true;

if room == r_neon and global.option_neon_shader {
	image_blend = c_orange;
}