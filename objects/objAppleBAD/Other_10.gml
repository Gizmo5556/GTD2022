var a = instance_create_layer(bbox_left, bbox_top, "Fruit", o_final_boss_transition2);
a.is_regen = is_regen;
global.total_fruit_destroyed++;
global.total_bosses_destroyed++;











//spawn 3 DDTs
/*
for(var i=num; i>=0; i--) {
	a=instance_create_layer(x,y,"Fruit",objAppleDDT)
	with a {
			pth = other.pth;
			path_start(pth,scr_get_fruit_speed(),0,true)
			path_position = other.path_position - (0.01*i)
			
			pierced = other.thing;
			knockback_id = other.thing;
		}
	a.spawns_super_clays = spawns_super_clays;
	a.is_regen = is_regen;
	if exploded a.exploded = true;
	a.is_camo = true;
	a.image_alpha = 0.5;
	if is_fortified {
		a.is_fortified = true;
		a.image_xscale *= 2;
		a.image_yscale *= 2;
		a.max_hp *= 2;
		a.hp *= 2;
	}
}

//spawn 2 ZOMGs
for(var i=num; i>=0; i--) {
	a=instance_create(x,y,objAppleZOMG)
	with a {
			pth = other.pth;
			path_start(pth,global.spd,0,true)
			path_position = other.path_position - (0.01*i)
			
			pierced = other.thing;
			knockback_id = other.thing;
		}
	a.spawns_super_clays = spawns_super_clays;
	a.is_regen = is_regen;
	if exploded a.exploded = true;
	if is_camo {
		a.image_alpha = 0.5;
		a.is_camo = true;
	}
	if is_fortified {
		a.is_fortified = true;
		a.image_xscale *= 2;
		a.image_yscale *= 2;
		a.max_hp *= 2;
		a.hp *= 2;
	}
}
*/
