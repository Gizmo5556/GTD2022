hue = (hue + hue_add);;
if abs(hue) >= 25 {
	hue_add *= -1;
}
image_blend = make_color_hsv(hue,255,255)

if not instance_exists(target) {
	target = instance_nearest(x, y, objAppleMOAB);
}

if is_tracking_advanced and instance_exists(target) {
		
	target_direction = point_direction(x,y, target.x, target.y);
		
	var ang1, ang2, step, d;
		
	ang1=direction;
	ang2=target_direction;
	step=5; //higher step means it locks onto target faster

	d =((ang2-ang1+540.0) mod 360.0)-180.0;
	if (d>0.0) direction = ((ang1+min(d,step)) mod 360.0);
	else direction = 360.0-((360.0-(ang1+max(-step,d))) mod 360.0);
	
	image_angle = direction;
		
}

speed += 0.2;