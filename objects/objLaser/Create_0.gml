event_inherited();

laser_lifetime = 1; //how many frames does the laser have an actual hitbox
hue = irandom(255)
image_blend = make_color_hsv(hue,150,255)
image_xscale = 1000
image_yscale = 4
alarm[0] = laser_lifetime;


//how many fruits can the bullet hit before it's destroyed? 0 means 1, 1 means 2, etc
max_piercing = 9999;

piercing = max_piercing;

//how much health to subtract from a clay 
clay_atk_power = 1;

lead_atk_power = 1;

boss_atk_power = 1;

can_hit_camo = false;

can_hit_lead = true;

can_hit_black = true;

can_hit_white = true;

can_hit_frozen = true;

knockback_power = 0;
boss_knockback_power = 0;

sound = false;