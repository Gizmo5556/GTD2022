event_inherited();
spin = 0;


//how many fruits can the bullet hit before it's destroyed? 0 means 1, 1 means 2, etc
piercing = 0;

//how much health to subtract from a clay 
clay_atk_power = 1;

lead_atk_power = 1;

boss_atk_power = 1;

can_hit_camo = false;

can_hit_lead = true;

can_hit_black = false;

can_hit_frozen = true;

can_hit_white = true;

explosion_size = 2;

explosion_power = 28;

explosion_sprite = s_geezer_fire;

frag_damage = 1;

is_cluster_bomb = true;
frags_are_octorok = true;
frag_sprite = s_octorok_frag;
frag_size = 2;

if room == r_neon and global.option_neon_shader {
	image_blend = c_orange;	
}