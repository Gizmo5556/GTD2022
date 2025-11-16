if other.explosion_power <= 0 {exit;}

if pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

other.explosion_power -= 1;

if other.stripping_power >= 1 and (is_regen or is_camo or is_fortified) {
	is_regen = false;
	if is_camo {
		is_camo = false;
		image_alpha = 1;
	}
	if is_fortified {
		is_fortified = false;
		hp /= 2;
		max_hp /= 2;
		image_xscale /= 2;
		image_yscale /= 2;
	}
}

hp -= other.clay_atk_power;
if knockback_id != other.id and other.knockback_power > 0 {
	path_position -= other.knockback_power;
	knockback_id = other.id;
}
if hp <= 0 {
	thing = other.id;

	event_user(0)

	global.money += scrGetWorth(object_index);
	audio_play_sound(sndShatter,0,0);
	instance_destroy()
}

pierced = other.id;
