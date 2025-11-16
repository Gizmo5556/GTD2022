if pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

//if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

if id == other.last_pierced_fruit exit;

hp -= other.lead_atk_power;

if knockback_id != other.id and other.knockback_power > 0 {
	path_position -= other.knockback_power;
	knockback_id = other.id;
}
if !other.sound{
	audio_play_sound(sndBossHit,0,0);
	other.sound=true
}

other.piercing--;
if other.piercing < 0 {
	instance_destroy(other);
}
else {
	pierced = other.id;
	if is_rubberized and not other.is_tracking_simple {
		other.is_tracking_simple = true;
	}
}
if other.has_confusion and not is_downdrafted {
	is_downdrafted = true;
	downdraft_counter = 115;
	path_speed = scr_get_fruit_speed();
}

//cirno cryo cannon and icicle impale
if other.is_freezing_bullet {
	frozen_time_left = other.frozen_duration;
	layers_left_to_freeze = other.num_layers_frozen;
	
	is_frozen = true;
	
	image_blend = c_aqua;
	
	path_speed = 0;
	
}

other.last_pierced_fruit = id;

alarm[0] = PIERCED_COOLDOWN;

other.alarm[0] = PIERCED_COOLDOWN;

if hp <= 0 {
	thing = other.id;

	boshy_targeted_by = noone;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}

