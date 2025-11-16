event_inherited();

jump = 8.5 * global.grav
jump2 = 7 * global.grav
maxSpeed = 3
maxVSpeed = 9
gravity = 0.4 * global.grav
xscale = 1

frozen = false
super_frozen = false;
djump = true
onPlatform = false
image_speed = 0.2
sprite_index = sPlayerIdle

if global.grav == 1 {
    mask_index = sPlayerMask
}
else {
    mask_index = sPlayerMaskFlip
}

