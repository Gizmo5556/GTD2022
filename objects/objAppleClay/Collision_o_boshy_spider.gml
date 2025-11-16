if id == other.target and not other.hit_target {
	
	if is_camo and not other.can_hit_camo {exit;}
	
	if is_lead and not other.can_hit_lead {exit;}
	
	if is_black and not other.can_hit_black {exit;}
	
	if not is_embrittled and (is_frozen and not other.can_hit_frozen) {exit;}
	
	other.hit_target = true;

	boshy_targeted_by = noone;

	//spider_piercing_left used in end step and user event 0 to pierce multiple layers
	spider_piercing_left = other.spider_piercing_clay;
	
	//snipers slow down clays for a short time (no upgrades neeeded)
	if not is_downdrafted and stun_timer == 0 and slow_duration_left == 0 {
		stun_timer = 37;
		path_speed = scr_get_fruit_speed();
	}
	
	
	hp -= (spider_piercing_left);
	if is_embrittled {hp -= EXTRA_EMBRITTLE_DAMAGE;}
	spider_piercing_left -= min(max_hp, spider_piercing_left);
	if hp <= 0 {
		event_user(0)
		
		if global.sfx_limit_map_handler[? "Clay"][0] < MAX_SFX_COUNT {
			audio_play_sound(sndShatter,1,0)
			 global.sfx_limit_map_handler[? "Clay"][0]++;
		
		}

		global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	
		instance_destroy();
	}
	
}

