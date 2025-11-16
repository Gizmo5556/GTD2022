event_inherited();

parent = noone;

//from how far can tyson see fruit?
radius = 2000;

//how close does tyson have to be to attack fruit?
attack_radius = 30;

dd_radius_divider = 2.5;

target = noone;

punch_cooldown = 0;
punch_cooldown_max = 25;

has_downdraft = false;
downdraft_cooldown = 0;
downdraft_cooldown_max = 6;
downdraft_list = ds_list_create();
can_downdraft_lead = false;
can_downdraft_moab = false;

downdraft_counter_max = 115;
downdraft_num_max = 1;


pursuit_speed = 3;

bullet_size = 1;
piercing = 1;

can_shoot_camo = false;
can_shoot_lead = false;
can_shoot_black = true;
can_shoot_frozen = false;
can_shoot_white = true;

clay_atk_power = 2;
lead_atk_power = 2;
boss_atk_power = 2;

knockback_power = 0;
boss_knockback_power = 0;

//the punch is similar to the explosion -- this is how many frames the punch is active
//punch_lifetime = 4;

//used for having tyson "switch" which fist he punches with
punching_xscale = 1;

explosion_power = 6;


//final upgrade - explosive punches that hit hard but can not blow up black bloons/DDTs without support
has_explosive_punches = false;
explosive_punch_power = 120;
explosive_punch_boss_atk = 58;
explosive_punch_clay_atk = 28;
explosive_punch_lead_atk = 28;
explosive_punch_size = 0.85;


explosive_punch_can_shoot_black = false;
explosive_punch_can_shoot_camo = true;
explosive_punch_can_shoot_lead = true;
explosive_punch_can_shoot_white = true;
explosive_punch_can_shoot_frozen = true;


//mike tyson will get the info from the base
//colonel buffing
buffed_by_colonel = noone; //used for when a permabrew colonel is sold or getting other information

amd_buff_active = false;
amd_buff_shots_left = 0;
amd_received_clay_damage_boost = 0;
amd_received_boss_damage_boost = 0;

brew_buff_active = false;
brew_buff_duration_left = 0;
brew_buff_shots_left = 0;
brew_buff_cooldown = 0;

brew_received_range_boost = 1;
brew_received_cooldown_boost = 0;
brew_received_clay_damage_boost = 0;
brew_received_boss_damage_boost = 0;
brew_received_piercing_boost = 0;
brew_received_waiting_duration = 0;

is_boosted_by_camo_radar = false;
is_boosted_by_jungle_drums = false;
is_boosted_by_mib = false;

heart_received_range_boost = 1;
heart_received_jungle_boost = 1;
heart_received_discount_boost = 1;






//used for pursuit targeting
has_punched = false;

sprite_idle = s_miketyson_idle;
sprite_punch = s_miketyson_punch;

num_layers_to_pierce = 2;

is_being_sucked = false;

if room == r_neon and global.option_neon_shader {
	image_blend = make_color_hsv(14, 239, 200);
}
