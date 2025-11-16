if other.is_moving exit;

if is_camo and not other.can_hit_camo { exit; }

if is_lead and not other.can_hit_lead {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

if other.spikes_left <= 0 {exit;}

if spider_piercing_left > 0 {exit;}

//if is_black and not other.can_hit_black {exit;} -- this line is only really needed for objExplosion


spider_piercing_left = other.layers_to_pierce - 1;


if  global.sfx_limit_map_handler[? "BossHit"][0] < MAX_SFX_COUNT  {
	audio_sound_pitch(audio_play_sound(sndBossHit,0,0), random_range(0.85, 1.33))
	 global.sfx_limit_map_handler[? "BossHit"][0]++;
}

global.money += scrGetWorth(object_index) * wannafest_worthless_override;

boshy_targeted_by = noone;

other.spikes_left--;

event_user(0)

instance_destroy()

