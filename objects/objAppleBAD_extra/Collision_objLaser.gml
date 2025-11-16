if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

thing = other.id;

hp -= other.boss_atk_power;

if hp <= 0 {
	thing = other.id;

	event_user(0)

	global.money += scrGetWorth(object_index);
	instance_destroy()
}

