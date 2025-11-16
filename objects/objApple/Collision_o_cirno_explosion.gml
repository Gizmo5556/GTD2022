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

thing = other.id;


if other.has_embrittle {
	if is_regen {
		is_regen = false;
		if image_blend = c_lime {
			image_blend = original_blend;
		}
	}
	if is_camo {
		is_camo = false;
		image_alpha = 1;
	}
}
boshy_targeted_by = noone;


global.money += scrGetWorth(object_index) * wannafest_worthless_override;

event_user(0)


instance_destroy()
