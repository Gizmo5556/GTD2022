if cooldown == 0 && collision_circle(x,y,radius,objApple,0,0) {
	
	//special script to get targets not already being targeted and have no spider piercing
	var apple = scr_get_target_boshy(targeting_mode, id);
	
	if apple != noone {
		cooldown = cooldown_max;
	    a=instance_create_layer(x,y,"Bullets",o_boshy_target)
		a.sprite_index = s_boshy_target
		apple.boshy_targeted_by = id;
		a.target = apple;
		a.targeting_mode = targeting_mode;
		a.parent = id;
	}
	else {
		cooldown = floor(cooldown_max/2);	
	}
    
}

if cooldown > 0 cooldown--

if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

