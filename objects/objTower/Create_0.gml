upgrade[0] = false
upgrade[1] = false
upgrade[2] = false
upgrade[3] = false
upgrade[4] = false

ufo = noone;

can_shoot_camo = false;
can_shoot_black = true;
can_shoot_lead = false;
can_shoot_frozen = false;
can_shoot_white = true;

lead_atk_power = 1;
clay_atk_power = 1;
boss_atk_power = 1;


tower_index = scr_get_tower_index(object_index);
//keep track of how much money has been spent on this tower for proper selling
total_money_spent = global.price[tower_index];


//how many upgrades have been applied to this tower?
upgrade_count = 0;

//0=first/1=last/2=close/3=strong/4=follow mouse (only used for certain towers)
targeting_mode = 0;

//does this tower even have targeting modes? (e.g., spike turret)
can_target = true;


//how much do projectiles knock stuff back? 0.01 is 1% of the path, 0.5 is 50%, etc
knockback_power = 0;
boss_knockback_power = 0;

piercing = 0;

//used for certain towers like the alien
is_direction_locked = false;
locked_direction = 0;
locked_x = 0;
locked_y = 0;

//moon map stuff
moon_relevant_angle = 0;
moon_dist_from_center = 0;
is_on_moon = false;

//cointower
is_on_cointower = false;

//colonel buffing
buffed_by_colonel = noone; //used for when a permabrew colonel is sold or getting other information

amd_buff_active = false;
amd_buff_shots_left = 0;
amd_received_boss_damage_boost = 0;
amd_received_clay_damage_boost = 0;

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



//village variables

is_boosted_by_village_range = false;
is_boosted_by_mib = false;
is_boosted_by_jungle_drums = false;
is_boosted_by_camo_radar = false;
is_boosted_by_discount = false;

heart_received_range_boost = 1;
heart_received_jungle_boost = 1;
heart_received_discount_boost = 1;

//used for when a village is sold but we still need to update all the tower's village boosts
is_being_sold = false;


//unused except for with seong towers
bonus_cooldown = 1.0;
bonus_damage = 0;
bonus_range = 1.0;
bonus_piercing = 0;
previous_fruit_destroyed = 0;
previous_bosses_destroyed = 0;
hard_diff = 0;
are_stats_reset = true;


//geezer vars
has_used_spike_storm = false;
ss_spikes_left = 0;
ss_cooldown = 0;
//spike_storm_round_cooldown = 0;


//viridian var
elephant_cooldown = 0;

sray_boosted_num = 0;

//used in black hole room -- id of blackhole that expands
bhole = noone;
if room == r_blackhole {
	bhole = o_black_hole_gimmick.id;	
}
is_being_sucked = false;
mike_tyson = noone;
viridian = noone;



base_radius = scrGetRadius(object_index);
radius = base_radius;


//UI stuff
selected=false;
moused=false;


//neon shader
neon_texel = shader_get_uniform(sh_tijit_neon, "u_texel")

