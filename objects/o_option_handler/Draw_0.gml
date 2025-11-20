if global.option_language == global.option_language_options.EN {
	draw_set_font(fPrice14);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);

	draw_set_color(c_white);

	scrDrawTextOutline(80, 488, "Save and\nreturn to\nmaps", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base, "Music Volume", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base, string(round(global.music_volume * 100)), c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + y_diff, "Sound Volume", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base + y_diff, string(round(global.sound_volume * 100)), c_white, c_black);
	
	scrDrawTextOutline(x_draw_base_left, y_draw_base + 2*y_diff, "Language", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base + 2*y_diff, global.option_language, c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 3*y_diff, "Fast Forward\nMultiplier", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base + 3*y_diff, "x" + string(string_format(global.option_fast_forward_multiplier, 1, 1)), c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 4*y_diff, "Toggle Info Box during waves", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 5*y_diff, "Toggle black and white effect\nin Catharsis map", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 6*y_diff, "Toggle neon effect\nin Neon Staircase map", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 7*y_diff, "Censor stream-killing Nintendo music", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 8*y_diff, "Toggle fullscreen", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 9*y_diff, "Buff Icon\nPlacement", c_white, c_black);
	if global.option_buff_icon_visible {
		scrDrawTextOutline(x_draw_base_right, y_draw_base + 10*y_diff, "On upgrade\nscreen", c_white, c_black);
	}
	else {
		scrDrawTextOutline(x_draw_base_right, y_draw_base + 10*y_diff, "Near tower", c_white, c_black);	
	}
}

else if global.option_language == global.option_language_options.JP {
	draw_set_font(fKHDot16);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);

	draw_set_color(c_white);

	scrDrawTextOutline(80, 488, "保存してマッ\n\nプ選択に戻る", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base, "BGM音量", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base, string(round(global.music_volume * 100)), c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + y_diff, "SFX音量", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base + y_diff, string(round(global.sound_volume * 100)), c_white, c_black);
	
	scrDrawTextOutline(x_draw_base_left, y_draw_base + 2*y_diff, "言語", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base + 2*y_diff, global.option_language, c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 3*y_diff, "早送り時の倍速速度", c_white, c_black);
	scrDrawTextOutline(x_draw_base_right, y_draw_base + 3*y_diff, "x" + string(string_format(global.option_fast_forward_multiplier, 1, 1)), c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 4*y_diff, "説明ボックスを表示する", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 5*y_diff, "catharsisマップでタワーを白黒にする", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 6*y_diff, "neon階段マップでタワーをネオン化させる", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 7*y_diff, "任天堂の音楽を削除して入れ替える(検閲回避用)", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 8*y_diff, "フルスクリーン", c_white, c_black);

	scrDrawTextOutline(x_draw_base_left, y_draw_base + 9*y_diff, "バフアイコンの場所", c_white, c_black);
	if global.option_buff_icon_visible {
		scrDrawTextOutline(x_draw_base_right, y_draw_base + 10*y_diff, "アップグレード画面", c_white, c_black);
	}
	else {
		scrDrawTextOutline(x_draw_base_right, y_draw_base + 10*y_diff, "タワーの近く", c_white, c_black);	
	}
}