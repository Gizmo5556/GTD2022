worth = 1; //overwritten by wannafest handler?

vspeed_orig = irandom_range(0.8 * 150, 1.9 * 150);
hspeed_orig = irandom_range(-2* 150, 2 * 150);

vspeed = vspeed_orig/room_speed;
hspeed = hspeed_orig/room_speed;

homing = false;

image_index = irandom_range(0, 31)