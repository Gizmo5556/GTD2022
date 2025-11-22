worth = 1; //overwritten by wannafest handler?

vspeed_orig = irandom_range(0.8 * 150, 1.9 * 150);
hspeed_orig = irandom_range(-2* 150, 2 * 150);

vspeed = vspeed_orig/game_get_speed(gamespeed_fps);
hspeed = hspeed_orig/game_get_speed(gamespeed_fps);

homing = false;

image_index = irandom_range(0, 31)