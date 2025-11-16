if is_fading {
	image_alpha -= 0.02;
	if image_alpha <= 0 {
		instance_destroy();	
	}
	exit;
}

//update target coords as long as target is still alive
if instance_exists(target) {
	target_x = target.x;
	target_y = target.y;
}
x = scr_approach(x, target_x, approach_amount);
y = scr_approach(y, target_y, approach_amount);
