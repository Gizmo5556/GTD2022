// Inherit the parent event
event_inherited();

mike_tyson = instance_create_layer(x, y, "Towers",o_miketyson_main);
mike_tyson.parent = id;

bullet_speed = 0; //this is a melee unit

piercing = 3;

bullet_sprite = s_miketyson_punch;

bullet_size = 1; //size of punch hitbox

explosion_power = 4;

//tier 5 object -- similar to alien prism from tier 4
moon = noone;

if room == r_neon and global.option_neon_shader {
	image_blend = make_color_hsv(14, 239, 200);
}