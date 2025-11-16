if other.explosion_power <= 0 {exit;}

if other.countdown != 1 {exit;}

if other.is_elephant_explosion {
//if less hp than bomb's power, destroy immediately
	if scr_is_weak_to_elephant(other) {
		other.explosion_power--;
		hp = 0;
		event_user(0)
		global.money += scrGetWorth(object_index) * wannafest_worthless_override;
		instance_destroy()
		exit;
	}
	//otherwise, deal 700 damage
	else {
		hp -= other.boss_atk_power;
		other.explosion_power--;
		exit;
	}
}

if explosion_pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_black and not other.can_hit_black {exit;}

if is_lead and not other.can_hit_lead {exit;}

other.explosion_power -= 1;

hp -= other.boss_atk_power;
if is_crippled {hp -= EXTRA_CRIPPLE_DAMAGE;}
if other.extra_dmg_to_fortified_and_moab {
	hp -= 1;
	if is_fortified {
		hp -= 1;	
	}
}
if hp <= 0 {
	thing = other.id;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}

explosion_pierced = other.id;
