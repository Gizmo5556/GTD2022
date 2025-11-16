event_inherited();

is_boss = false;
if object_index == objAppleMOAB or object_get_parent(object_index) == objAppleMOAB {
	is_boss = true;	
}

pth = scr_get_path(is_boss);

//what children fruit does this contain and how many (minus one)?
contains = noone;
num = 0;

//id of bullet that most recently pierced it -- prevents same bullet from piercing it twice
pierced = noone;

exploded = 1 //idk what this is used for? oops

thing = noone;

explosion_pierced = noone;

is_camo = false; //can also be changed via a spawn script
is_fortified = false;
is_lead = false;
is_black = false;
is_regen = false;
is_white = false;
is_frozen = false;

if is_camo {
	image_alpha = 0.5;	
}

//arbitrary strength variable for "strong" targeting mode
strength = 1;

//red bloon equivalent -- used to calculate how many lives to lose if fruit finishes path
rbe = 1;

//what recently knocked back this fruit? prevents the same bullet/explosion from knocking back the same fruit twice
knockback_id = noone;

is_downdrafted = false;

//for boshy tower -- which boshy is targeting this fruit (if any)?
boshy_targeted_by = noone;
spider_piercing_left = 0;

//used for the last upgrade of boshy -- crippled boss fruit takes extra damage
is_crippled = false;
cripple_timer = 0;

//for fruit that are slowed down or stunned, except via downdraft by tyson
stun_timer = 0;

//mostly used for lead, clay, and boss fruit
hp = 1;

//sticky keys can rubberize a fruit so that bullets bounch off of them
is_rubberized = false;
num_layers_soaked = 0;
slow_duration_left = 0;

frozen_time_left = 0;

layers_left_to_freeze = 0;

//icicle impale
has_permafrost = false;
impale_time_left = 0;


is_embrittled = false;
embrittle_time_left = 0;

conveyor_state = NANG_NO_CONVEYOR;

wannafest_worthless_override = 1.0; //set this to 0.0 to make this fruit give 0 money. used for cherry rain
























path_speed = scr_get_fruit_speed();

path_start(pth,path_speed,0,true)

image_speed = 1/15;

original_blend = c_red;

image_blend = original_blend;