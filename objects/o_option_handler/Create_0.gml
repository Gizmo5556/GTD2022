y_draw_base = 88;
y_diff = 60;

x_draw_base_left = 450;
x_draw_base_right = 633;

x_right_button = 714;
x_left_button = 552;

back_to_maps_button = instance_create(82, 564, o_back_to_maps_button);
back_to_maps_button.image_xscale = 2;
back_to_maps_button.image_yscale = 2;

music_inc_volume = instance_create(x_right_button, y_draw_base, o_button_right_arrow);
music_dec_volume = instance_create(x_left_button, y_draw_base, o_button_right_arrow);

music_dec_volume.image_xscale = -1;

sound_inc_volume = instance_create(x_right_button, y_draw_base + y_diff, o_button_right_arrow);
sound_dec_volume = instance_create(x_left_button, y_draw_base + y_diff, o_button_right_arrow);

sound_dec_volume.image_xscale = -1;

ff_inc_mult = instance_create(x_right_button, y_draw_base + 2*y_diff, o_button_right_arrow);
ff_dec_mult = instance_create(x_left_button, y_draw_base + 2*y_diff, o_button_right_arrow);

ff_dec_mult.image_xscale = -1;

toggle_infobox = instance_create(x_right_button, y_draw_base + 3*y_diff, o_button_checkbox);
toggle_infobox.image_index = global.option_show_infobox;

toggle_catharsis_shader = instance_create(x_right_button, y_draw_base + 4*y_diff, o_button_checkbox);
toggle_catharsis_shader.image_index = global.option_catharsis_shader;

toggle_neon_shader = instance_create(x_right_button, y_draw_base + 5*y_diff, o_button_checkbox);
toggle_neon_shader.image_index = global.option_neon_shader;

toggle_mooned_music = instance_create(x_right_button, y_draw_base + 6*y_diff, o_button_checkbox);
toggle_mooned_music.image_index = global.option_replace_mooned_music;

toggle_fullscreen = instance_create(x_right_button, y_draw_base + 7*y_diff, o_button_checkbox);
toggle_fullscreen.image_index = window_get_fullscreen();
global.option_fullscreen = window_get_fullscreen();

toggle_buff_icons_right = instance_create(x_right_button, y_draw_base + 8*y_diff,  o_button_right_arrow);

toggle_buff_icons_left = instance_create(x_left_button, y_draw_base + 8*y_diff,  o_button_right_arrow);
toggle_buff_icons_left.image_xscale = -1;


if global.music_volume == 1.0 {
	music_inc_volume.image_alpha = 0	
}
else if global.music_volume == 0.0{
	music_dec_volume.image_alpha = 0	
}
else {
	music_inc_volume.image_alpha = 1
	music_dec_volume.image_alpha = 1
}

if global.option_buff_icon_visible {
	toggle_buff_icons_right.image_alpha = 0;
}
else {
	toggle_buff_icons_left.image_alpha = 0;	
}


volume_increment = 0.05;
ff_increment = 0.5;

/*res_width_array = [640, 720, 720, 800, 1024, 1152, 1280, 1280, 1366, 1400, 1440, 1600, 1680, 1920];
res_height_array = [480, 400, 480, 600, 768, 864, 720, 800, 768, 1050, 900, 900, 1050, 1080];*/