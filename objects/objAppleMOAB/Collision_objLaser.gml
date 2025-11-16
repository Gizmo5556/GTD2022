if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if not is_embrittled and (is_lead and not other.can_hit_lead) {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

thing = other.id;

hp -= other.boss_atk_power;
if is_crippled {hp -= EXTRA_CRIPPLE_DAMAGE;}
if is_embrittled {hp -= EXTRA_EMBRITTLE_DAMAGE;}
if knockback_id != other.id and other.boss_knockback_power > 0 {
	path_position -= other.boss_knockback_power;
	knockback_id = other.id;
}

if hp <= 0 {
	thing = other.id;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}

