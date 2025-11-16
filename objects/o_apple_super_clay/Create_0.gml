event_inherited();

contains = noone;
num = 0;

max_hp = 68;

hp = max_hp;

//have regen rate be lower, value should be same as normal clays
if global.wave < 80 {
	regen_amount = max_hp/510;
}
else {
	regen_amount = max_hp/150;
}

image_xscale = 0.675
image_yscale = 0.675

rbe = 68;

strength = 10;