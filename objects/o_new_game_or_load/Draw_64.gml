draw_set_halign(fa_center);
draw_set_valign(fa_top);


if global.option_language == global.option_language_options.EN {

	draw_set_font(fPrice14);

	draw_set_color(c_red)

	draw_text(524, 150, "WARNING");//:\nYou already have a save file for the chosen map and difficulty.\nDo you want to load your saved progress or start a new game?");

	draw_set_color(c_white);

	draw_text(524, 150, "\nYou already have a save file for the chosen map and difficulty.\nDo you want to load your saved progress or start a new game?");

	draw_set_font(fSmall);

	draw_text_ext(new_game_button.x, new_game_button.y - 120, "Start a new game and overwrite the save data", 16, 128);

	draw_text_ext(load_save_button.x, load_save_button.y - 120, "Load the save and continue the game", 16, 128);

	draw_text_ext(back_to_maps_button.x, back_to_maps_button.y - 120, "Go back to the map selection screen", 16, 128);

}

else if global.option_language == global.option_language_options.JP {
	draw_set_font(fKHDot16);

	draw_set_color(c_red)

	draw_text(524, 150, "【注意】");

	draw_set_color(c_white);

	draw_text(524, 150, "\n選択したマップと難易度にはセーブデータが存在します。\n続きから始めますか？それとも最初から始めますか？");

	draw_set_font(fKHDot12);

	draw_text_ext(new_game_button.x, new_game_button.y - 120, "初めからして、\nセーブデータを上書きする", 16, 128);

	draw_text_ext(load_save_button.x, load_save_button.y - 120, "続きから始めて\nコンティニューする", 16, 128);

	draw_text_ext(back_to_maps_button.x, back_to_maps_button.y - 120, "マップ選択画面に戻る", 16, 128);
}