if pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if not is_embrittled and (is_lead and not other.can_hit_lead) {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

if id == other.last_pierced_fruit exit;

hp -= other.boss_atk_power;
if is_crippled {hp -= EXTRA_CRIPPLE_DAMAGE;}
if is_embrittled {hp -= EXTRA_EMBRITTLE_DAMAGE;}

if knockback_id != other.id and other.boss_knockback_power > 0 {
	path_position -= other.boss_knockback_power;
	knockback_id = other.id;
}

if stun_timer == 0 and other.is_moab_press {
	if object_index != objAppleBAD and object_index != objBoss_phase1 and object_index != objAppleBAD_extra {path_speed = 0;}
		switch object_index {
			case objAppleMOAB:
				stun_timer += 75;
				break;
			case objAppleBFB:
				stun_timer += 38;
				break;
			case objAppleZOMG:
				stun_timer += 19;
				break;
			case objAppleDDT:
				stun_timer += 19;
				break;
		}	
}

if !other.sound and  global.sfx_limit_map_handler[? "Hit"][0] < MAX_SFX_COUNT  {
    audio_sound_pitch(audio_play_sound(sndHit,0,0), random_range(0.85, 1.33))
     global.sfx_limit_map_handler[? "Hit"][0]++;
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

//cirno cryo cannon and icicle impale
if other.is_freezing_bullet and other.has_impale {
	has_permafrost = true;
	impale_time_left = other.frozen_duration;
	path_speed = scr_get_fruit_speed();
	
}

other.last_pierced_fruit = id;

alarm[0] = PIERCED_COOLDOWN;

other.alarm[0] = PIERCED_COOLDOWN;

if hp <= 0 {
	thing = other.id;
	event_user(0)
	
	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}

