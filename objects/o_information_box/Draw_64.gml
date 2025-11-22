draw_self();

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_set_color(c_black);

if global.option_language == global.option_language_options.EN {
	draw_set_font(fPrice14);
	draw_text_ext(x, y, info_array[global.wave + 1], 16, 600);
}
else if global.option_language == global.option_language_options.JP {
	draw_set_font(fKHDot16);
	//draw lines further apart
	draw_text_ext(x, y, info_array[global.wave + 1], 24, 600);
}



if global.option_language == global.option_language_options.EN {
	draw_set_font(fSmall);
	draw_text(x, y + 84, "Click to dismiss");	
}
else if global.option_language == global.option_language_options.JP {
	draw_set_font(fKHDot12);
	draw_text(x, y + 84, "クリックで閉じる");
}