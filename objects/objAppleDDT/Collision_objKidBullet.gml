if pierced == other.id exit;

if is_camo and !other.can_hit_camo { exit; }

if !other.can_hit_black {exit;}

if !other.can_hit_lead {exit;}

hp -= other.boss_atk_power;
if knockback_id != other.id and other.boss_knockback_power > 0 {
	path_position -= other.boss_knockback_power;
	knockback_id = other.id;
}
if !other.sound {
   audio_play_sound(sndHit,0,0)
	other.sound=true
}
if hp <= 0 {
	thing = other.id;
	event_user(0)
	
	global.money += scrGetWorth(object_index);
	instance_destroy()
}

if other.piercing==0 {
with(other) instance_destroy()
}
else { 
	other.piercing--;
	pierced = other.id;
}
