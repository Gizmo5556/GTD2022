if other.explosion_power <= 0 {exit;}

if other.countdown != 1 {exit;}

if other.is_elephant_explosion {
	other.explosion_power--;
	global.money += scr_get_worth_ufo(object_index);
	global.total_fruit_destroyed++;
	instance_destroy(id);
	exit;
}

if explosion_pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

other.explosion_power -= 1;

hp -= other.lead_atk_power;

if is_fortified and other.extra_dmg_to_fortified_and_moab {
	hp -= 1;	
}

if other.removes_regen_and_camo {
	is_camo = false;
	image_alpha = 1;
	is_regen = false;
	if frozen_time_left > 0 {
		image_blend = original_blend;	
	}
}

if knockback_id != other.id and other.knockback_power > 0 {
	path_position -= other.knockback_power;
	knockback_id = other.id;
}

explosion_pierced = other.id;

if hp <= 0 {
	thing = other.id;
	
	boshy_targeted_by = noone;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}


