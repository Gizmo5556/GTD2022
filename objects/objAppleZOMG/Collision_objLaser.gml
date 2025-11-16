if is_camo and !other.can_hit_camo { exit; }

thing = other.id;

if !other.sound{
    audio_play_sound(sndBossHit,random_range(0, 0),0);
    other.sound=true
}

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

