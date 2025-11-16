if other.is_moving exit;

if is_camo and not other.can_hit_camo { exit; }

if not is_embrittled and (is_lead and not other.can_hit_lead) {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

if other.spikes_left <= 0 {exit;}

//if is_black and not other.can_hit_black {exit;} -- this line is only really needed for objExplosion


var atk_power = other.boss_atk_power;

//calculate how much damage to deal and how many spikes to use up
var damage_dealt = 0;
var spikes_to_remove = 0;

//if max damage in pile is still less than remaining fruit hp
if other.spikes_left * atk_power < hp {
	damage_dealt = other.spikes_left * atk_power;
	spikes_to_remove = other.spikes_left;
}
else {
	damage_dealt = hp;
	spikes_to_remove = ceil(hp/atk_power);
}

hp -= damage_dealt;
if is_crippled { hp -= EXTRA_CRIPPLE_DAMAGE; }
if is_embrittled {hp -= EXTRA_EMBRITTLE_DAMAGE;}

other.spikes_left -= spikes_to_remove;

if hp <= 0 {

	boshy_targeted_by = noone;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}



