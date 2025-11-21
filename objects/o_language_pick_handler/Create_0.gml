var space_from_border = 250;

english_button = instance_create_layer(space_from_border, 360, "Instances", o_language_pick_button);
english_button.display_text = "English";
english_button.font = fPrice14;
english_button.language = global.option_language_options.EN

english_button = instance_create_layer(room_width - space_from_border, 360, "Instances", o_language_pick_button);
english_button.display_text = "日本語";
english_button.font = fKHDot16;
english_button.language = global.option_language_options.JP
