image_angle += spin;

image_xscale = scr_approach(image_xscale, final_scale, 0.05);
image_yscale = scr_approach(image_yscale, final_scale, 0.05);

if image_xscale == final_scale {
	image_alpha = scr_approach(image_alpha, 0, 0.05);	
	if image_alpha == 0 {instance_destroy();}
}



