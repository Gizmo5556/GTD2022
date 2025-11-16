x = abs(x);

if is_camo and !other.can_hit_camo { exit; }

if pierced == other.id exit;

if is_frozen and not other.can_hit_frozen {exit;}

if is_white and not other.can_hit_white exit;

if id == other.last_pierced_fruit exit;

if spider_piercing_left > 0 {exit;}

//cirno cryo cannon and icicle impale
//is freezing bullet and can freeze the fruit
if other.is_freezing_bullet and (not is_white or (is_white and other.can_hit_white)) {
	spider_piercing_left = other.cryo_layers_to_pierce;
	frozen_time_left = other.frozen_duration;
	layers_left_to_freeze = spider_piercing_left + 1;
}
//is freezing bullet but cannot hit this fruit
else if other.is_freezing_bullet {
	exit;	
}

if !other.sound and  global.sfx_limit_map_handler[? "BossHit"][0] < MAX_SFX_COUNT {
	 global.sfx_limit_map_handler[? "BossHit"][0]++;
   audio_sound_pitch(audio_play_sound(sndBossHit,0,0), random_range(0.85, 1.33))
	other.sound=true
}
if knockback_id != other.id and other.knockback_power > 0 {
	path_position -= other.knockback_power;
	knockback_id = other.id;
}
if other.has_confusion and not is_downdrafted {
	is_downdrafted = true;
	downdraft_counter = 115;
}
other.last_pierced_fruit = id;

thing = other.id;

other.piercing--;
if other.piercing < 0 {
	instance_destroy(other);
}
else {
	pierced = other.id;
	if is_rubberized and not other.is_tracking_simple and not other.is_tracking_advanced {
		other.is_tracking_simple = true;
	}
}

global.money += scrGetWorth(object_index) * wannafest_worthless_override;

boshy_targeted_by = noone;

other.alarm[0] = PIERCED_COOLDOWN;

event_user(0)
instance_destroy()

