event_inherited();

parent = noone;

//from how far can tyson see fruit?
radius = 2000;

bullet_size = 1;
bullet_speed = 8;
piercing = 4;
bullet_sprite = s_viridian_bullet;

cooldown_max = 84;
cooldown = 0;
number_of_bullets = 8;
initial_angle = 0;

has_heart_bombs = false;
heart_bomb_cooldown_max = 100;
heart_bomb_cooldown = 0;
are_bombs_tracking = false;

has_fighter_plane = false;
fp_cooldown_max = 100;
fp_cooldown = 0;
fp_moab_damage = 18;
fp_clay_damage = 1;
fp_lead_damage = 1;
fp_explosion_power = 6;

has_elephant = false;
elephant_cooldown_max = 45 * 50;
elephant_cooldown = 0;
round_controller_id = objRoundController.id;

can_shoot_camo = false;
can_shoot_lead = false;
can_shoot_black = true;
can_shoot_frozen = false;
can_shoot_white = true;

clay_atk_power = 1;
lead_atk_power = 1;
boss_atk_power = 1;

explosion_power = 20;

knockback_power = 0;
boss_knockback_power = 0;

has_tracking = false;

can_target = false;

hspeed = 4 * choose(1, -1);
vspeed = 4 * choose(1, -1);
image_xscale = sign(hspeed);
image_yscale = sign(vspeed);


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

is_being_sucked = false;

if room == r_neon and global.option_neon_shader {
	image_blend = make_color_hsv(140, 255, 240);
}
