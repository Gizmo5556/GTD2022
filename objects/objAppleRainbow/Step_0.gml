event_inherited();

if not is_frozen {
	hue = (hue + 2) % 255;
	image_blend = make_color_hsv(hue,255,255)
}



