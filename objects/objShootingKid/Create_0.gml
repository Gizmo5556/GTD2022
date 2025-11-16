event_inherited()

image_xscale=2
image_yscale=2

image_speed=0.2

cooldown_max = 47;
cooldown = 0;

bullet_speed = 20;

piercing = 1;

bullet_sprite = sPlayerBullet;

bullet_size = 3;

has_bouncing_bullets = false;
num_bounces = 0;
has_multi_moon = false;

if room == r_neon and global.option_neon_shader {
	image_blend = make_color_hsv(170, 100, 250);
}