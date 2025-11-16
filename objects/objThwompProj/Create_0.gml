event_inherited();
spin = choose(-8,8)


//how many fruits can the bullet hit before it's destroyed? 0 means 1, 1 means 2, etc
piercing = 0;

//how much health to subtract from a clay 
clay_atk_power = 1;

lead_atk_power = 1;

boss_atk_power = 1;

can_hit_camo = false;

can_hit_lead = true;

can_hit_black = false;


explosion_power = 14;

explosion_sprite = sprExplosion;

frag_damage = 1;

frags_are_octorok = false;

frag_sprite = sprThwomp;

frag_size = 0.5;

frag_can_hit_frozen = false;

frag_can_hit_lead = false;

explosion_size = 1;

num_layers_to_pierce = 1;

if room == r_neon and global.option_neon_shader {
	image_blend = c_ltgray;
}