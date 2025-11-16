if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

thing = other.id;

hp -= other.lead_atk_power;
if knockback_id != other.id and other.knockback_power > 0 {
	path_position -= other.knockback_power;
	knockback_id = other.id;
}
if hp <= 0 {
	thing = other.id;
	
	boshy_targeted_by = noone;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}



