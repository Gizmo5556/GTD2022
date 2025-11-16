if other.explosion_power <= 0 {exit;}

if pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

other.explosion_power -= 1;

hp -= other.boss_atk_power;
if knockback_id != other.id and other.boss_knockback_power > 0 {
	path_position -= other.boss_knockback_power;
	knockback_id = other.id;
}
if hp <= 0 {
	thing = other.id;

	event_user(0)

	global.money += scrGetWorth(object_index);
	instance_destroy()
}

pierced = other.id;
