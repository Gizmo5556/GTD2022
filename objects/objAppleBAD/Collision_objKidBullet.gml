if pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

if id == other.last_pierced_fruit exit;

hp -= other.boss_atk_power;
if is_crippled {hp -= EXTRA_CRIPPLE_DAMAGE;}

if !other.sound and global.sfx_limit_map_handler[? "Hit"][0] < MAX_SFX_COUNT {
   audio_sound_pitch(audio_play_sound(sndHit,0,0), random_range(0.85, 1.33))
   global.sfx_limit_map_handler[? "Hit"][0]++;
	other.sound=true
}
if hp <= 0 {
	thing = other.id;
	event_user(0)
	
	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}

other.last_pierced_fruit = id;

other.piercing--;
if other.piercing < 0 {
	instance_destroy(other)
}
