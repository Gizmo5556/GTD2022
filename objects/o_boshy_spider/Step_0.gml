if not instance_exists(boshy_parent) or y > 700 {
	instance_destroy();
	exit;
}

if hit_target {
	exit;
}

if instance_exists(target) {
	x = target.x;	
}
//original target destroyed, must find new target
else if instance_exists(objApple) {
	target = scr_get_target_boshy(targeting_mode, boshy_parent);
	if target != noone {
		target.boshy_targeted_by = boshy_parent;
	}
	else {
		instance_destroy();	
	}
}