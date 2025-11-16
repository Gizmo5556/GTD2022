event_inherited();

can_shoot_white = false;

can_shoot_frozen = false;

cooldown_max = 120;
cooldown = cooldown_max;

explosion_size = 2;

explosion_power = 40;

explosion_sprite = s_cirno_explosion;

frozen_duration = 75;

num_layers_frozen = 1;

lead_atk_power = 1;
clay_atk_power = 1;
boss_atk_power = 1;


can_target = false;


has_ice_wall = false;
ice_wall_cooldown_max = 325;
ice_wall_cooldown = ice_wall_cooldown_max;



has_cryo_cannon = false;
has_impale = false;
cryo_cooldown_max = 25; //cut in half to make tier 4 cirno an easier stepping stool for tier 5 -- price is adjusted accordingly
cryo_cooldown = cryo_cooldown_max;

has_embrittle = false;
embrittle_timer = 100;

cryo_piercing = 30;
cryo_layers_to_pierce = 1; //2 layers in total
cryo_lead_atk_power = 2;
cryo_clay_atk_power = 2;
cryo_boss_atk_power = 2;

cryo_frozen_duration = 75;
cryo_frozen_layers = 1;

bullet_sprite = s_cryo;
bullet_size = 1;
bullet_speed = 18;


//visual change for tier 2
grad_cap = noone;
cirno_gun = noone;

if room == r_neon and global.option_neon_shader {
	image_blend = c_aqua;	
}