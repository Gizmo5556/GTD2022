if pierced == other.id exit;

if is_camo and !other.can_hit_camo { exit; }

hp -= other.clay_atk_power;
if knockback_id != other.id and other.knockback_power > 0 {
	path_position -= other.knockback_power;
	knockback_id = other.id;
}
if !other.sound {
   audio_play_sound(sndHit,0,0)
	other.sound=true
}
if hp <= 0 {
	thing = other.id;
	event_user(0)
	
	audio_play_sound(sndShatter,1,0)
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
