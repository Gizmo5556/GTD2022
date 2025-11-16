if other.explosion_power <= 0 {exit;}

if explosion_pierced == other.id {exit;}

if is_camo and not other.can_hit_camo { exit; }

if is_white and not other.can_hit_white {exit;}

if is_frozen and not other.can_hit_frozen {exit;}

if not is_embrittled and (is_lead and not other.can_hit_lead) {exit;}

if spider_piercing_left > 0 {exit;}

other.explosion_power -= 1;

hp -= other.boss_atk_power;
if is_crippled {hp -= EXTRA_CRIPPLE_DAMAGE;}
if is_embrittled {hp -= EXTRA_EMBRITTLE_DAMAGE;}

if other.has_embrittle {
	is_embrittled = true;
	embrittle_time_left = other.embrittle_timer;
	if is_regen {
		is_regen = false;
		if image_blend = c_lime {
			image_blend = original_blend;
		}
	}
	if is_camo {
		is_camo = false;
		image_alpha = 1;
	}
}

if hp <= 0 {
	thing = other.id;
	
	boshy_targeted_by = noone;

	event_user(0)

	global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	instance_destroy()

}

