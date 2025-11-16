event_inherited();

//shrink back down to this scale after every attack
base_scale = 1;
large_scale = 2;
large_scale_modifier = 1; //used for caterpillar mayumushi

image_xscale = 1;
image_yscale = 1;

//normally 100 but I want to buff this beyond btd6's mortar anyway
//nvm im nerfing this again
cooldown_max = 100; 
cooldown = 0;

explosion_power = 40;
explosion_size = 0.66; //should be about 0.075 * large_scale; make sure to change appropriately in upgrade script

can_shoot_camo = false;
can_shoot_lead = false;
can_shoot_frozen= false;
can_shoot_white = true;
can_shoot_black = true;

clay_atk_power = 1;
lead_atk_power = 1;
boss_atk_power = 1;

can_target = true;

extra_dmg_to_fortified = false;
removes_regen_and_camo = false;
num_layers_to_pierce = 1;

helper_sprite = s_mayumushi_helper;
helper_chomp_sprite = s_mayumushi_helper_chomp;

goal_scale = 6;