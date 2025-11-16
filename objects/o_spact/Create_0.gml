/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

round_controller_id = objRoundController.id;

cooldown_max = 87;
cooldown = cooldown_max;

//how long does each spike pile last in frames
spike_time_left = 2500;

//how many rounds does each spike pile last
spike_rounds_left = 1;

num_spikes_per_pile = 5;

spike_pile_sprite = s_spike_pile;

can_shoot_lead = false;
can_shoot_camo = true;
can_shoot_black = true;
can_shoot_frozen = false;
can_shoot_white = true;

lead_atk_power = 1;
clay_atk_power = 1;
boss_atk_power = 1;

image_speed = 0;

can_target = false;

has_fast_start = false;
fast_start_time_left_max = 125;
fast_start_time_left = 0;

layers_to_pierce = 1;


pile_image_blend = c_white;
