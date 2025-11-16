event_inherited();

image_speed=0.2

cooldown_max = 79;
cooldown = 0;

//for other towers this usually means it can pierce 3 fruit, but here it means it pierces 2 layers of one fruit
piercing = 2; 

clay_atk_power = 2;
lead_atk_power = 2;
boss_atk_power = 2;

bullet_sprite = s_spider;

bullet_size = 3;

maim_moab_type = 0;

if room == r_neon and global.option_neon_shader {
	image_blend = c_yellow;	
}