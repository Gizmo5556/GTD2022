event_inherited()

contains = objAppleRainbow
num = 1;

max_hp = 10;

hp = max_hp;

//regenerates one "layer" every 3 seconds, aka max_hp every 150 frames
//but double it because normally it drops 2 children bloons, so divide by 75 instead
regen_amount = max_hp/75;

image_speed = 0;

image_xscale = 0.675
image_yscale = 0.675

rbe = 104;

strength = 10;

is_regen = false;

original_blend = make_color_rgb(160, 65, 27);

image_blend = original_blend;