if other.explosion_power <= 0 {exit;}

if other.countdown != 1 {exit;}

if other.is_elephant_explosion {
//if less hp than bomb's power, destroy immediately
	if scr_is_weak_to_elephant(other) {
		other.explosion_power--;
		global.money += scr_get_worth_ufo(object_index);
		global.total_fruit_destroyed++;
		global.total_bosses_destroyed++;
		instance_destroy(id);
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

if not is_embrittled and (is_lead and not other.can_hit_lead) {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

other.explosion_power -= 1;

hp -= other.boss_atk_power;

//+1 extra dmg if moab, +2 if fortified moab
if other.extra_dmg_to_fortified_and_moab {
	hp -= 1;
	if is_fortified {
		hp -= 1;	
	}
}
if is_crippled {hp -= EXTRA_CRIPPLE_DAMAGE;}
if is_embrittled {hp -= EXTRA_EMBRITTLE_DAMAGE;}
if knockback_id != other.id and other.boss_knockback_power > 0 {
	path_position -= other.boss_knockback_power;
	knockback_id = other.id;
}
explosion_pierced = other.id;
if hp <= 0 {
	thing = other.id;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()
}

