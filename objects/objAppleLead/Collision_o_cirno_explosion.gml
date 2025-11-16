if other.explosion_power <= 0 {exit;}

if explosion_pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_white and not other.can_hit_white {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

if is_lead and not other.can_hit_lead {exit;}

if spider_piercing_left > 0 {exit;}

layers_left_to_freeze = other.num_layers_frozen;

frozen_time_left = other.frozen_duration;

other.explosion_power -= 1;

hp -= other.lead_atk_power;
layers_left_to_freeze -= min(max_hp, layers_left_to_freeze);

is_frozen = true;

image_blend = c_aqua;

path_speed = 0;



if hp <= 0 {
	thing = other.id;
	
	boshy_targeted_by = noone;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()

}



