event_inherited();

image_speed=0.3

last_pierced_fruit = noone;

//how many fruits can the bullet hit before it's destroyed? 0 means 1, 1 means 2, etc
max_piercing = 0;

piercing = max_piercing;

//how much health to subtract from a clay 
clay_atk_power = 1;

lead_atk_power = 1;

boss_atk_power = 1;

can_hit_camo = false;

can_hit_lead = false;

can_hit_black = true;

sound = false;

angle_is_dir = false;

has_confusion = false;

//simple tracking bullets will only lock onto a new target once they hit their current target
is_tracking_simple = false;
is_tracking_advanced = false;

target = noone;

knockback_power = 0;
boss_knockback_power = 0;


is_freezing_bullet = false;
cryo_layers_to_pierce = 0;
frozen_duration = 0;
num_layers_frozen = 0;
has_impale = false;

is_bouncing = false;
bounces_left = 1;

is_moab_press = false; //only used for miku moab press attack