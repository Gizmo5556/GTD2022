event_inherited()

image_xscale=1
image_yscale=1

image_speed=0.2

cooldown_max = 60;
cooldown = 0;



bullet_speed = 20;

piercing = 2;

bullet_sprite = s_baseball;

bullet_size = 1;

angle = 0;
spin = 0;

bullet_is_tracking = false;

//moab press variables
has_explosives = false;
explosive_cooldown_max = 150;
explosive_cooldown = 0;
explosion_power = 17;
explosion_lead_atk_power = 1;
explosion_sprite = sprExplosion;
explosion_size = 0.6;
can_explosives_shoot_black = false;


//shimmer/AOE damage
num_bats = 0;

bat_list = ds_list_create();

//4th upgrade -- stats increase as more fruit is popped per round
has_bonus_stats = false;
bonus_cooldown = 1.0;
bonus_damage = 0;
bonus_range = 1.0;
bonus_piercing = 0;

previous_fruit_destroyed = 0;
previous_bosses_destroyed = 0;
pop_count_cap = 400; //at what point do the stats stop increasing?
pop_count_multiplier = 0.8;

max_bonus_cooldown = 0.35;
max_bonus_damage = 2;
max_bonus_range = 1.3;
max_bonus_piercing = 5;

cooldown_divisor = pop_count_cap/(1 - max_bonus_cooldown);
damage_divisor = pop_count_cap/max_bonus_damage;
range_divisor = pop_count_cap/(max_bonus_range - 1);
piercing_divisor = pop_count_cap/max_bonus_piercing;

bonus_cooldown_reset = 1.0;
bonus_damage_reset = 0;
bonus_range_reset = 1.0;
bonus_piercing_reset = 0;

diff = 0;
hard_diff = 0;

//how much RBE should the "bonus counter" go up by if a boss fruit is destroyed
boss_bonus_amount = 8;

overall_reset_multiplier = 0.5;

//determines if seong uses number of bosses destroyed to get bonus stats
//turned on at tier 5
uses_bosses_to_count = false;

are_stats_reset = true;

if room == r_neon and global.option_neon_shader {
	image_blend = c_olive;
}