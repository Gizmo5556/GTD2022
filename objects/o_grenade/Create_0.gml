event_inherited()

//how many fruits can the bullet hit before it's destroyed? 0 means 1, 1 means 2, etc
max_piercing = 0;

piercing = max_piercing;

//how much health to subtract from a clay 
clay_atk_power = 1;

lead_atk_power = 1;

can_hit_camo = false;

can_hit_lead = true;

can_hit_black = true;

fire_piercing = 2;

spin = irandom_range(-8, 8);

fire_piercing = 0;

fire_lead_atk = 1;

fire_clay_atk = 1;

fire_boss_atk = 1;

fire_knockback = 1;

fire_boss_knockback = 1;

sound = false;

fire_depth = objStore.depth - 1; //used so fire stays "on top" of the boss fruit

if room == r_neon and global.option_neon_shader {
	image_blend = c_green;
}