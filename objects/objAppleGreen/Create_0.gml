event_inherited()

contains = objAppleBlue;

original_blend = c_green;

image_blend = original_blend;

strength = 3;

rbe = 3;

if room == r_neon and global.option_neon_shader {
	
	original_blend = make_color_hsv(90, 100, 180);
	
}