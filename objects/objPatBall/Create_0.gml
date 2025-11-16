event_inherited();

sprite_index = choose(sprPatBall,sprMiku,sprThwomp,sprTheGuy,sprBroccoli,sprVeryCool,sprTurretPlace,
s_boshy, s_cirno, s_colonel, s_geezer_idle, s_heart, s_mayumushi, s_miketyson_idle, s_seong, s_spact, s_sray,
s_stickykeys, s_viridian, sprUFO, s_spider, s_impale, s_godwin, s_octorok, s_spiny, s_heart_camera,
s_miketyson_idle_mosq, s_miku_radish, s_pizza, s_baseball,s_moon,s_turret_gears,s_sray_glasses,
s_stickykeys_2000, s_thwomp_nuke, s_viridian_tusk, s_mayumushi_caterpillar);
if sprite_index == sprMiku or sprite_index == s_miku_radish {
	image_xscale = 0.33;
	image_yscale = 0.33;
}
else if sprite_index == s_heart or sprite_index == s_heart_camera {
	image_xscale = 0.2;
	image_yscale = 0.2;
}
else if sprite_index == s_moon {
	image_xscale = 0.33;
	image_yscale = 0.33;
}

image_speed = random_range(0.5, 2.0);

gravity = 0.2

spin = 0

is_moving = true;
