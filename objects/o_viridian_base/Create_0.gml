// Inherit the parent event
event_inherited();

viridian = instance_create_layer(x, y, "Towers",o_viridian_main);
viridian.parent = id;

bullet_speed = 8;

piercing = 3;

bullet_sprite = s_viridian_bullet;

bullet_size = 1;

can_target = false;

if room == r_neon and global.option_neon_shader {
	image_blend = make_color_hsv(140, 255, 240);
}

