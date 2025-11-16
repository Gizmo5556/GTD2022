//checks which towers are within range of a village and applies the appropriate upgrades to those towers
//you should call this script whenever a village is sold, when any tower is bought,
//or when a village gets an upgrade
function scr_update_village_upgrades(){
	//first, reset all the appropriate variables so that it would be as if no village is present
	with objTower {
		is_boosted_by_village_range = false;
		is_boosted_by_jungle_drums = false;
		is_boosted_by_discount = false;
		is_boosted_by_mib = false;
		is_boosted_by_camo_radar = false;
		heart_received_discount_boost = 1.0;
		heart_received_jungle_boost = 1.0;
		heart_received_range_boost = 1.0;
		scr_update_tower_range();
	}
	
	//now, for each village on screen, get the towers within range of that village
	//and apply the appropriate upgrades to those towers
	
	var _list = ds_list_create();
	with o_heart {
		if not is_being_sold {
			collision_circle_list(x, y, radius, objTower, false, true, _list, false);
			for (var i = 0; i < ds_list_size(_list); i++) {
				var tower = _list[|i];
				//use bitwise OR ( the | operator) so that a "weaker" village doesn't overwrite the upgrades
				//of a stronger village, in case a tower is within range of 2+ villages
				tower.is_boosted_by_village_range |= has_heart_range_upgrade;
				tower.is_boosted_by_discount |= has_discount_upgrade;
				tower.is_boosted_by_jungle_drums |= has_jungle_drums;
				tower.is_boosted_by_camo_radar |= has_camo_radar;
				tower.is_boosted_by_mib |= has_mib;
			
				//update received boost numbers, just in case they vary between villages
				if has_heart_range_upgrade {
					if tower.heart_received_range_boost < heart_range_multiplier {
						tower.heart_received_range_boost = heart_range_multiplier;
					
						with tower {
							scr_update_tower_range();
						}
					
					}
				}
				if has_jungle_drums {
					if tower.heart_received_jungle_boost > jungle_drums_boost_multiplier {
						tower.heart_received_jungle_boost = jungle_drums_boost_multiplier;	
					}
				}
				if has_discount_upgrade {
					if tower.heart_received_discount_boost > discount_multiplier {
						tower.heart_received_discount_boost = discount_multiplier;
					}
				}
			}
			//empty list for next village
			ds_list_clear(_list)
		}
	}
	ds_list_destroy(_list);
	
	with o_wannafest_throne_buff {
		var tower = instance_place(x, y, objTower);
		if tower != noone {
			with tower {
				tower.is_boosted_by_village_range = true;
				tower.is_boosted_by_discount = true;
				tower.is_boosted_by_jungle_drums = true;
				tower.is_boosted_by_camo_radar = true;
				tower.is_boosted_by_mib = true;
			
				tower.heart_received_range_boost = 1.10;
				tower.heart_received_discount_boost = 0.85;
				tower.heart_received_jungle_boost = 0.85;
			
				tower.brew_buff_active = true;
				tower.brew_buff_duration_left = 999999999;
				tower.brew_buff_shots_left = 999999999;
				tower.brew_received_range_boost = 1.15;
				tower.brew_received_cooldown_boost = 0.85;
				tower.brew_received_clay_damage_boost = 2;
				tower.brew_received_boss_damage_boost = 2;
				tower.brew_received_piercing_boost = 3;
				tower.brew_received_waiting_duration = 9999999999;
		
				tower.buffed_by_colonel = id;
		
				//update radius
				scr_update_tower_range();
			}
		}
	}
}