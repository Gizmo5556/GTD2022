function mainInit() {
	

	display_set_gui_size(1028, 608);
	//make sure appliation surface dimensions are same as room size/view port to avoid weird texture scaling
	window_set_size(1028, 608);
	surface_resize(application_surface, 1028, 608);
	
	// state variables
	global.grav = 1

	// initial save
	global.saveRoom = rGuy
	global.savePlayerX = 100
	global.savePlayerY = 100
	global.saveGrav = 1
	global.savePlayerXScale = 1

	// controls
	global.key_left = vk_left
	global.key_right = vk_right
	global.key_jump = vk_shift
	global.key_shoot = ord("Z")
	global.key_restart = ord("R")
	
	global.option_language_options = {
		EN: "English",
		JP: "日本語"
	}
	global.option_language = global.option_language_options.EN;
	
	////////////////////////////////////////////////////

	// misc
	randomize()
	window_set_caption("Guy Tower Defense 2022")
	
	//player cannot go past 140 waves
	global.max_wave = 139;

	global.spd = 0;
	global.money = 0;
	global.wave = 0;

	global.life = 100;

	global.music = 0;

	global.finalwave = 20;
	
	//0 - medium, 1 - hard, 2 - very hard, 3 - impossible
	global.current_difficulty = 0;
	
	//changes depending on difficulty
	global.price_multiplier = 1.0;
	scrUpgradePrices()
	
	
	
	//create easy-to-access array of maps
	global.map_list[17] = r_wannafest;
	global.map_list[16] = r_neon;
	global.map_list[15] = r_machinary;
	global.map_list[14] = r_nang;
	global.map_list[13] = r_duloxetine;
	global.map_list[12] = r_bread;
	global.map_list[11] = r_ghost;
	global.map_list[10] = r_untitled;
	global.map_list[9] = r_platform;
	global.map_list[8] = r_vibe;
	global.map_list[7] = r_coinstack;
	global.map_list[6] = r_blackhole;
	global.map_list[5] = r_catharsis;
	global.map_list[4] = r_butterfly;
	global.map_list[3] = r_dewrace;
	global.map_list[2] = r_guytower;
	global.map_list[1] = r_moon;
	global.map_list[0] = rGuy;
	

	
	//dictionary between rooms and arrays that represent which medals the player has
	global.medal_list = ds_map_create();
	for (var i = 0; i < array_length(global.map_list); i++) {

		global.medal_list[? room_get_name(global.map_list[i])] = [0, 0, 0, 0];
		
	}
	
	//controls how much money you get per pop in later rounds
	global.income_reduction = 1.0;

	//after round 80, speed and health slowly increase
	global.speed_ramp = 1.0;

	global.health_ramp = 1.0;

	global.is_loading_save = false;
	
	global.music = 0;
	
	//counter used for maps with multiple paths so that fruit is split up evenly
	global.number_of_fruit_spawned = 0;
	global.number_of_bosses_spawned = 0;
	
	global.r_guytower_paths = [path_tower1_alt, path_tower2]
	
	//butterfly room is special and path is effectively chosen by user
	global.r_butterfly_paths = [path_butterfly_normal, path_butterfly_b, path_butterfly_br,
								path_butterfly_by, path_butterfly_bry, path_butterfly_bp,
								path_butterfly_brp, path_butterfly_byp, path_butterfly_bryp];
								
	//global.r_butterfly_path_sprite_layers = ["path_normal", "path_b", "path_br", "path_by", "path_bry", "path_bp", "path_brp", "path_byp", "path_bryp"];
								
	global.butterfly_path_index = 0;
	#macro BUTTERFLY_TILE_ALPHA 0.33
	
	
	//first, fill first row with all the paths already created
	coinstack_paths_arr1 = [path_coinstack0, path_coinstack1, path_coinstack2,
							path_coinstack3, path_coinstack4, path_coinstack5,
							path_coinstack6];
	//next, initialize second row and fill it with flipped versions of the paths in the first row
	coinstack_paths_arr2 = [];
	for (var i = 0; i < array_length(coinstack_paths_arr1); i++) {
		coinstack_paths_arr2[i] = path_duplicate(coinstack_paths_arr1[i]);
		path_mirror(coinstack_paths_arr2[i]);
	}
	//first "row" of grid is paths going from left to right; second row is flipped
	global.r_coinstack_path_grid[0] = coinstack_paths_arr1;
	global.r_coinstack_path_grid[1] = coinstack_paths_arr2;
	global.coinstack_path_index = 0;
	
	//duplicate already created catharsis path and flip it so i don't have to make two of them
	path_catharsis2 = path_duplicate(path_catharsis1);
	path_mirror(path_catharsis2);
	//path_shift(path_catharsis2, 416, 0);
	global.r_catharsis_paths = [path_catharsis1, path_catharsis2];
	
	//constructing black hole paths -- it's probably easier just to use math to create them
	path_blackhole1 = path_add();
	path_set_closed(path_blackhole1, false);
	path_set_precision(path_blackhole1, 4);
	path_set_kind(path_blackhole1, 1);
	
	var n = 100;
	var a = 6;
	var b = 6;
	for (var i = 3.4; i > 0.1; i-=0.1) {
		path_add_point(path_blackhole1, n * i * cos(a * i) + 375, n * i * sin(b * i) + 304, 100);
	}
	
	//fruit will go for center of blackhole -- add 4 points because path is curved
	path_add_point(path_blackhole1, 400, 304, 100);
	path_add_point(path_blackhole1, 400, 304, 100);
	path_add_point(path_blackhole1, 400, 304, 100);
	path_add_point(path_blackhole1, 400, 304, 100);
	
	//make spiral more ellipse-like
	path_rescale(path_blackhole1, 1.25, 1);
	
	path_blackhole2 = path_duplicate(path_blackhole1);
	path_flip(path_blackhole2);
	path_mirror(path_blackhole2);
	path_shift(path_blackhole2, 6, -49);
	
	
	global.r_blackhole_paths = [path_blackhole1, path_blackhole2];
	
	global.blackhole_shader_time_uniform = 0.0;
	global.is_blackhole_turned_off = false;
	
	global.r_vibe_paths = [path_vibe1, path_vibe2];
	
	
	
	path_machinary2 = path_duplicate(path_machinary1);
	path_reverse(path_machinary2);
	
	path_machinary3 = path_duplicate(path_machinary1);
	path_flip(path_machinary3);
	path_shift(path_machinary3, 0, -96);
	
	path_machinary4 = path_duplicate(path_machinary3);
	path_reverse(path_machinary4);
	
	path_machinary5 = path_duplicate(path_machinary3);
	path_mirror(path_machinary5);
	path_shift(path_machinary5, 96, 0);
	
	path_machinary6 = path_duplicate(path_machinary5);
	path_reverse(path_machinary6);
	
	path_machinary7 = path_duplicate(path_machinary5);
	path_flip(path_machinary7);
	path_shift(path_machinary7, 0, 96);
	
	path_machinary8 = path_duplicate(path_machinary7);
	path_reverse(path_machinary8);

	global.r_machinary_grid = [
								[path_machinary1, path_machinary2],
								[path_machinary3, path_machinary4],
								[path_machinary5, path_machinary6],
								[path_machinary7, path_machinary8]
							   ]
	global.r_machinary_pathmarkerlist = [path_machinary1, 
										path_machinary2, 
										path_machinary3, 
										path_machinary4, 
										path_machinary5, 
										path_machinary6,
										path_machinary7,
										path_machinary8]
	
	
	
	//global.r_neon_paths = [path_neon2, path_neon3, path_neon1]
	//path_reverse(path_neon3_newer);
	//path_reverse(path_neon1_newer);
	global.r_neon_paths = [path_neon3_newer, path_neon1_newer]
	
	
	//used for REVERSE_PATH wheel event
	global.r_wannafest_reverse_path = path_duplicate(path_wannafest_long)
	path_reverse(global.r_wannafest_reverse_path);
	
	
	
	
	//construct platform paths
	//all paths should go clockwise in spiral
	//vars for circle used in all paths
	var x_center = 400;
	var y_center = 240;
	n = 25;
	a = 7.85;
	
	#region //platform1
	//from upper center to bottom right
	path_platform1 = path_add();
	path_set_closed(path_platform1, false);
	path_set_precision(path_platform1, 4);
	path_set_kind(path_platform1, 1);
	
	path_add_point(path_platform1, 240, -32, 100);
	repeat(3) {
		path_add_point(path_platform1, 240, 80, 100);
	}
	repeat(3) {
		path_add_point(path_platform1, 400, 80, 100);
	}
	for (var i = 0.0; i <= 3.4; i+=0.1) {
		path_add_point(path_platform1, n * i * cos(a * i) + x_center, n * i * sin(a * i) + y_center, 100);
	}
	repeat(3) {
		path_add_point(path_platform1, 400, 320, 100);
	}
	repeat(3) {
		path_add_point(path_platform1, 400, 400, 100);
	}
	repeat(3) {
		path_add_point(path_platform1, 592, 400, 100);
	}
	repeat(3) {
		path_add_point(path_platform1, 592, 336, 100);
	}
	path_add_point(path_platform1, 832, 336, 100);
	#endregion
	
	#region //platform2
	//from bottom right to upper center
	path_platform2 = path_add();
	path_set_closed(path_platform2, false);
	path_set_precision(path_platform2, 4);
	path_set_kind(path_platform2, 1);
	
	path_add_point(path_platform2, 832, 336, 100);

	repeat(3) {
		path_add_point(path_platform2, 592, 336, 100);
	}
	repeat(3) {
		path_add_point(path_platform2, 592, 400, 100);
	}
	
	repeat(3) {
		path_add_point(path_platform2, 400, 400, 100);
	}
	
	for (var i = 0.0; i <= 3.4; i+=0.1) {
		path_add_point(path_platform2, n * i * -cos(a * i) + x_center, n * i * -sin(a * i) + y_center, 100);
	}
	
	repeat(3) {
		path_add_point(path_platform2, 400, 160, 100);
	}
	repeat(3) {
		path_add_point(path_platform2, 400, 80, 100);
	}
	repeat(3) {
		path_add_point(path_platform2, 240, 80, 100);
	}
	path_add_point(path_platform2, 240, -32, 100);
	#endregion
	
	#region //platform3
	//from bottom left to upper right
	path_platform3 = path_add();
	path_set_closed(path_platform3, false);
	path_set_precision(path_platform3, 4);
	path_set_kind(path_platform3, 1);
	
	path_add_point(path_platform3, 176, 544, 100);
	
	repeat(3) {
		path_add_point(path_platform3, 176, 240, 100);	
	}
	
	for (var i = 0.0; i <= 3.4; i+=0.1) {
		path_add_point(path_platform3, n * i * cos(a * i - pi/2) + x_center, n * i * sin(a * i - pi/2) + y_center, 100);
	}
	
	repeat(3) {
		path_add_point(path_platform3, 480, 240, 100);	
	}
	repeat(3) {
		path_add_point(path_platform3, 688, 240, 100);	
	}
	
	path_add_point(path_platform3, 688, -32, 100);	
	
	
	#endregion
	
	#region //platform4
	//from top right to bottom left
	path_platform4 = path_add();
	path_set_closed(path_platform4, false);
	path_set_precision(path_platform4, 4);
	path_set_kind(path_platform4, 1);
	
	path_add_point(path_platform4, 688, -32, 100);	
	repeat(3) {
		path_add_point(path_platform4, 688, 240, 100);	
	}
	repeat(3) {
		path_add_point(path_platform4, 480, 240, 100);	
	}
	for (var i = 0.0; i <= 3.4; i+=0.1) {
		path_add_point(path_platform4, n * i * cos(a * i + pi/2) + x_center, n * i * sin(a * i + pi/2) + y_center, 100);
	}
	repeat(3) {
		path_add_point(path_platform4, 320, 240, 100);	
	}
	repeat(3) {
		path_add_point(path_platform4, 176, 240, 100);	
	}
	path_add_point(path_platform4, 176, 544, 100);
	#endregion

	#region //platform5
	//from upper left to slightly upper right
	
	path_platform5 = path_add();
	path_set_closed(path_platform5, false);
	path_set_precision(path_platform5, 4);
	path_set_kind(path_platform5, 1);
	
	path_add_point(path_platform5, -32, 144, 100);	
	
	repeat(3) {
		path_add_point(path_platform5, 240, 144, 100);	
	}
	repeat(3) {
		path_add_point(path_platform5, 240, 240, 100);	
	}
	for (var i = 0.0; i <= 3.4; i+=0.1) {
		path_add_point(path_platform5, n * i * cos(a * i - pi/2) + x_center, n * i * sin(a * i - pi/2) + y_center, 100);
	}
	repeat(3) {
		path_add_point(path_platform5, 480, 240, 100);	
	}
	repeat(3) {
		path_add_point(path_platform5, 592, 240, 100);	
	}
	repeat(3) {
		path_add_point(path_platform5, 592, 112, 100);	
	}
	repeat(3) {
		path_add_point(path_platform5, 496, 112, 100);	
	}
	path_add_point(path_platform5, 496, -32, 100);	
	#endregion
	
	#region //platform6
	//from slightly upper right to upper left
	path_platform6 = path_add();
	path_set_closed(path_platform6, false);
	path_set_precision(path_platform6, 4);
	path_set_kind(path_platform6, 1);
	
	path_add_point(path_platform6, 496, -32, 100);	
	
	repeat(3) {
		path_add_point(path_platform6, 496, 112, 100);	
	}
	repeat(3) {
		path_add_point(path_platform6, 592, 112, 100);	
	}
	repeat(3) {
		path_add_point(path_platform6, 592, 240, 100);	
	}
	for (var i = 0.0; i <= 3.4; i+=0.1) {
		path_add_point(path_platform6, n * i * cos(a * i + pi/2) + x_center, n * i * sin(a * i + pi/2) + y_center, 100);
	}
	repeat(3) {
		path_add_point(path_platform6, 320, 240, 100);	
	}
	repeat(3) {
		path_add_point(path_platform6, 240, 240, 100);	
	}
	repeat(3) {
		path_add_point(path_platform6, 240, 144, 100);	
	}
	path_add_point(path_platform6, -32, 144, 100);	
	
	global.r_platform_paths = [path_platform1, path_platform2, path_platform3, path_platform4, path_platform5, path_platform6];
	
	
	
	
	
	
	
	#endregion
	
	
	#macro GLUE_SLOW_AMOUNT 0.25
	#macro GLUE_SLOW_AMOUNT_BOSS 0.625
	
	//bloon sabotage speed multiplier
	global.sabotage_multiplier = 1.0;
	global.bloon_sabotage_timer = 0;
	
	
	global.total_fruit_destroyed = 0;
	
	audio_channel_num(128);
	global.music_volume = 0.35;
	global.sound_volume = 0.3;
	
	
	global.sell_multiplier = 0.9;
	
	//boshy stun slow amount
	#macro SNIPER_CLAY_STUN_AMOUNT 0.5
	
	//how much to change image scale of fortified fruit
	#macro FORTIFIED_SCALE_MODIFIER 1.5
	
	//tier 5 boshy
	#macro EXTRA_CRIPPLE_DAMAGE 5
	
	#macro EXTRA_EMBRITTLE_DAMAGE 1
	
	//how long to wait before resetting pierced vars
	#macro PIERCED_COOLDOWN 5
	
	
	//NANG conveyor belt states
	#macro NANG_NO_CONVEYOR 0
	#macro NANG_RIGHT_CONVEYOR 1
	#macro NANG_LEFT_CONVEYOR -1
	
	
	global.image_blend_for_UI = c_white;
	
	///////////////////
	//SOUND EFFECT BULLSHIT
	///////////////////
	/*global.sfx_hit_num = 0;
	global.sfx_hit_countdown = 0;
	global.sfx_bosshit_num = 0;
	global.sfx_bosshit_countdown = 0;
	global.sfx_clay_num = 0;
	global.sfx_clay_countdown = 0;
	global.sfx_thwomp_num = 0;
	global.sfx_thwomp_countdown = 0;
	global.sfx_energy_num = 0;
	global.sfx_energy_countdown = 0;*/
	
	//create array to easily store information
	//first column is sfx_xxx_num, second column is sfx_xxx_countdown, third column is how many frames the sound effect lasts
	global.sfx_limit_map_handler = ds_map_create();
	
	global.sfx_limit_map_handler[? "Hit"] = [0, 0, 71];
	global.sfx_limit_map_handler[? "BossHit"] = [0, 0, 16];
	global.sfx_limit_map_handler[? "Clay"] = [0, 0, 29]; //shatter sound
	global.sfx_limit_map_handler[? "Thwomp"] = [0, 0, 50];
	global.sfx_limit_map_handler[? "Energy"] = [0, 0, 14]; //lowered from 37 frames since most of the sound effect is silence
	global.sfx_limit_map_handler[? "Explosion"] = [0, 0, 50]; //lowered for similar reasons
	global.sfx_limit_map_handler[? "sndMoney"] = [0, 0, 14]; //this row is really only needed for wannafest's cash rain event
	
	//store keys in separate array to speed up iteration process in controller's step event
	global.sfx_limit_map_keys = ["Hit", "BossHit", "Clay", "Thwomp", "Energy", "Explosion", "sndMoney"];
	
	#macro MAX_SFX_COUNT 3
	
	///////////////////
	//OPTIONS
	///////////////////
	global.option_show_infobox = true;
	global.option_catharsis_shader = false;
	global.option_neon_shader = false;
	global.option_replace_mooned_music = false;
	global.option_fast_forward_multiplier = 3.0;
	global.option_fullscreen = false;
	//false -- show on tower when selected; true -- show on tower icon in upgrades menu
	global.option_buff_icon_visible = false;
	
	//when a fruit's path_position variable is >= this global var on blackhole map, start increasing fruit speed
	global.blackhole_pathpos_threshold = 1.0;
	
	
	//updated each round -- has a fruit made it 50% through the track?
	global.is_midpoint_crossed = false;
	
	
	/// Prepare The Confetti
	// Create Particle System
	global.particles = part_system_create();

	// Create Confetti Particle Type
	global.partTypeConfetti = part_type_create();
	
	//untitled rocket explosion
	global.explosionpart = part_type_create();
	part_type_shape(global.explosionpart,pt_shape_square);
	part_type_color_rgb(global.explosionpart,255,255,83,255,165,0);
	part_type_alpha3(global.explosionpart,0.3189,0.8847,0.0000);
	part_type_life(global.explosionpart,15.0000,25.0000);
	part_type_size(global.explosionpart,0.0750,0.1500,0.0100,0.0230);
	part_type_speed(global.explosionpart,1.500,3.75,0.01,0.0777);
	part_type_direction(global.explosionpart,0.0000,360.0000,0.0000,0.8181);
	part_type_orientation(global.explosionpart,0.0000,360.0000,-0.8774,-2.6925,0);
	part_type_gravity(global.explosionpart,0.0000,270.0000);
	part_type_blend(global.explosionpart,false);
	
	global.map_choose_length = 1;
	
	
	scr_load_medals();
	scr_update_sound_volumes();
	scrResetPrices();
	scrUpgradePrices();
	scr_set_tower_desc();
	
}
