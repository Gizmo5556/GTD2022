if contains != noone {
	for(var i=0; i<4; i++) {
	    a=instance_create_layer(x,y,"Fruit",contains)
	    with a {
			pth = other.pth;
			path_start(pth,scr_get_fruit_speed(),0,true)
			path_position = other.path_position - (0.01*i)
			
			alarm[0] = PIERCED_COOLDOWN;
			pierced = other.thing;
			knockback_id = other.thing;
			wannafest_worthless_override = other.wannafest_worthless_override;
		}
		a.spawns_super_clays = spawns_super_clays;
		a.is_regen = true;
	    if exploded a.exploded = true;
		a.is_camo = true;
		a.image_alpha = 0.5;
		if is_fortified {
			a.is_fortified = true;
			a.image_xscale *= FORTIFIED_SCALE_MODIFIER;
			a.image_yscale *= FORTIFIED_SCALE_MODIFIER;
			a.max_hp *= 2;
			a.hp *= 2;
		}
	}
}

global.total_fruit_destroyed++;
global.total_bosses_destroyed++;