if visible and cooldown == 0 && placeable {
	//change money amount
	audio_play_sound(sndMoney, 0, 0);
	global.money -= global.price[ind];
	//create appropriate tower
	
	var tower_to_create;
	
    switch(ind) {
        case 0:
            tower_to_create = objShootingKid;
        break;
        case 1:
            tower_to_create = objTurret;
        break;
        case 2:
            tower_to_create = o_miku;
        break;
        case 3:
            tower_to_create = objThwomp;
        break;
        case 4:
            tower_to_create = objAlien;
        break;
        case 5:
            tower_to_create = objTheGuy;
        break;
		case 6:
            tower_to_create = o_miketyson_base;
        break;
		case 7:
			tower_to_create = o_boshy;
		break;
		case 8:
			tower_to_create = o_colonel;
		break;
		case 9:
			tower_to_create = o_seong;
		break;
		case 10:
			tower_to_create = o_stickykeys;
		break;
		case 11:
			tower_to_create = o_heart;
		break;
		case 12:
			tower_to_create = o_spact;
		break;
		case 13:
			tower_to_create = o_cirno;
		break;
		case 14:
			tower_to_create = o_sray;
		break;
		case 15:
			tower_to_create = o_geezer;
		break;
		case 16:
			tower_to_create = o_viridian_base;
		break;
		case 17:
			tower_to_create = o_mayumushi;
		break;
    }
	
	tower = instance_create_layer(x,y,"Towers",tower_to_create);
	
	if room == r_moon
	and instance_position(tower.x, tower.y, o_tower_placement_mask_moon) {
		//we need to give the tower the distance from the moon and what starting "angle" value to give it
		tower.moon_dist_from_center = point_distance(tower.x, tower.y, o_moon.x, o_moon.y);
		tower.moon_relevant_angle = point_direction(o_moon.x, o_moon.y, tower.x, tower.y);
		tower.is_on_moon = true;
		
	}
	
	//tower will move when coinstack grows if the tower is on the "above ground" portion of the coinstack
	if room == r_coinstack and instance_position(tower.x, tower.y, o_coinstack_towerbase) and tower.y < 480 {
		tower.is_on_cointower = true;
	}
	
	//must update which towers are boosted by villages
	scr_update_village_upgrades();
    
    audio_play_sound(sndPlace,0,0)
	
	mouse_clear(mb_left);
	
	instance_destroy()
}

