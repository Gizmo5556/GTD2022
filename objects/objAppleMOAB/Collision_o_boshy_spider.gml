if id == other.target and not other.hit_target {
	
	if is_camo and not other.can_hit_camo {exit;}
	
	if not is_embrittled and (is_lead and not other.can_hit_lead) {exit;}
	
	if is_black and not other.can_hit_black {exit;}
	
	if is_frozen and not other.can_hit_frozen {exit;}
	
	other.hit_target = true;
	
	boshy_targeted_by = noone;
	
	//spider_piercing_left used in end step and user event 0 to pierce multiple layers
	spider_piercing_left = other.spider_piercing_boss;
	
	hp -= (spider_piercing_left);
	if is_crippled {hp -= EXTRA_CRIPPLE_DAMAGE;}
	if is_embrittled {hp -= EXTRA_EMBRITTLE_DAMAGE;}
	
	if stun_timer == 0 {
		if other.maim_moab_type == 1 {
			if object_index != objAppleBAD and object_index != objBoss_phase1 and object_index != objAppleBAD_extra {path_speed = 0;}
			switch object_index {
				case objAppleMOAB:
					stun_timer = 150;
					break;
				case objAppleBFB:
					stun_timer = 75;
					break;
				case objAppleZOMG:
					stun_timer = 38;
					break;
				case objAppleDDT:
					stun_timer = 38;
					break;
			}
		}
		else if other.maim_moab_type == 2 {
			if object_index != objAppleBAD and object_index != objBoss_phase1 and object_index != objAppleBAD_extra {
				path_speed = 0;
				is_crippled = true;
				switch object_index {
					case objAppleMOAB:
						stun_timer = 350;
						break;
					case objAppleBFB:
						stun_timer = 300;
						break;
					case objAppleZOMG:
						stun_timer = 150;
						break;
					case objAppleDDT:
						stun_timer = 200;
						break;
				}
				cripple_timer = stun_timer;
			}
			else {
				cripple_timer = 38;
				is_crippled = true;
			}
			
		}
	}
	
	
	spider_piercing_left -= min(max_hp, spider_piercing_left);
	if hp <= 0 {
		event_user(0)

		global.money += scrGetWorth(object_index) * wannafest_worthless_override;
	
		instance_destroy();
	}
	
	

}

