button_sep_x = 328;
//button_sep_y = 296;
easy_maps = [rGuy, r_dewrace, r_vibe, r_untitled, r_bread, r_duloxetine]
easy_names = ["Beginning of the Adventure", "Morning Dew Race", "Get Used To It", "The Little Heart", "A Good Bread Is Born", "Abstractions"];
easy_coord_x = [64, 64 + button_sep_x, 64 + 2 * button_sep_x, 64, 64 + button_sep_x, 64 + 2 * button_sep_x];
easy_coord_y = [56, 56, 56, 352, 352, 352];
intermediate_maps = [r_platform, r_coinstack,  r_ghost, r_catharsis, r_nang, r_guytower]
intermediate_names = ["Platform God Altar", "Coin Stack", "Ghost House", "Catharsis", "WOW", "Final Tower of the Guy"]
intermediate_coord_x = [64 + 3 * button_sep_x, 64 + 4 * button_sep_x, 64 + 5 * button_sep_x, 64 + 3 * button_sep_x, 64 + 4 * button_sep_x, 64 + 5 * button_sep_x];
intermediate_coord_y = [56, 56, 56, 352, 352, 352];
advanced_maps = [r_butterfly, r_moon, r_machinary, r_neon, r_wannafest];
advanced_names = ["Butterfly Remix", "Mooned", "Machinary", "Neon Staircase", "Wheel of Misfortune"];
advanced_coord_x = [64 + 6 * button_sep_x, 64 + 7 * button_sep_x, 64 + 8 * button_sep_x, 64 + 6.5 * button_sep_x, 64 + 7.5 * button_sep_x];
advanced_coord_y = [56, 56, 56, 352, 352];

scale = 0.3;

for (var i = 0; i < array_length(easy_maps); i++) {
	var button = instance_create_layer(easy_coord_x[i], easy_coord_y[i], "buttons", o_map_choice_button);
	button.image_xscale = scale;
	button.image_yscale = scale;
	button.game_room_name = easy_names[i];
	button.map_name = room_get_name(easy_maps[i]);
	button.map_diff = "Beginner";
}

for (var i = 0; i < array_length(intermediate_maps); i++) {
	var button = instance_create_layer(intermediate_coord_x[i], intermediate_coord_y[i], "buttons", o_map_choice_button);
	button.image_xscale = scale;
	button.image_yscale = scale;
	button.game_room_name = intermediate_names[i];
	button.map_name = room_get_name(intermediate_maps[i]);
	button.map_diff = "Intermediate";
}
for (var i = 0; i < array_length(advanced_maps); i++) {
	var button = instance_create_layer(advanced_coord_x[i], advanced_coord_y[i], "buttons", o_map_choice_button);
	button.image_xscale = scale;
	button.image_yscale = scale;
	button.game_room_name = advanced_names[i];
	button.map_name = room_get_name(advanced_maps[i]);
	button.map_diff = "Advanced";
}

var button = instance_create_layer(64 + 9.35 * button_sep_x, 213, "buttons", o_map_choice_button_bhole);
button.image_xscale = scale;
button.image_yscale = scale;

var button = instance_create_layer(64 + 10.66 * button_sep_x, 213, "buttons", o_map_choice_button_end);
button.image_xscale = scale;
button.image_yscale = scale;

//change which map selection buttons are available
//fake credits should only be available if 3 medals have already been earned
//real credits should be available if a medal is earned on the fake credits map

//destroy both bhole and credits map
if scr_count_medals() < 3 {
	instance_destroy(o_map_choice_button_bhole);
	instance_destroy(o_map_choice_button_end);
	global.map_choose_length = 2;
}
//destroy credits map
else if not scr_does_bhole_map_have_medal() {
	o_map_choice_button_bhole.x = 64 + 10 * button_sep_x;
	instance_destroy(o_map_choice_button_end);
	global.map_choose_length = 3;
}
else {
	global.map_choose_length = 3;	
}
with o_arrow_UI {
	if x < 400 {
		shift_amount = global.map_choose_length;	
	}	
}




with o_map_choice_button {
	
	if object_index != o_map_choice_button_end {
		var sprite_index_string = "s_mapicon_" + map_name;
		sprite_index = asset_get_index(sprite_index_string);

		diff_color = c_white;
		switch (map_diff) {
			case "Beginner":
			diff_color = c_lime;
			break;
	
			case "Intermediate":
			diff_color = c_yellow;
			break;
	
			case "Advanced":
			diff_color = c_red;
			break;
		}

		medal_array = global.medal_list[? map_name];


		has_medium_medal = medal_array[0];
		has_hard_medal = medal_array[1];
		has_veryhard_medal = medal_array[2];
		has_impossible_medal = medal_array[3];	
	}
	
}
