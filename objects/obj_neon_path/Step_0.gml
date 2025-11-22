hue_delta = 150/game_get_speed(gamespeed_fps);

image_blend = make_color_hsv(hue, 100, 50);

hue = (hue + hue_delta) % 255