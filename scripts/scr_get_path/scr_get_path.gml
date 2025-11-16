// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_path(is_boss){
	var counter = global.number_of_fruit_spawned;
	if is_boss {
		counter = global.number_of_bosses_spawned;
	}
	
	var pth = pathGuy;
	switch(room) {
	    case rGuy:
	        pth = pathGuy;
			break;
		case r_moon:
			pth = path_moon;
			break;
		case r_guytower:
			pth = global.r_guytower_paths[counter % 2]; //2 because there are 2 possible paths
			break;
		case r_dewrace:
			pth = path_dewrace;
			break;
		case r_butterfly:
			pth = global.r_butterfly_paths[global.butterfly_path_index];
			break;
		case r_catharsis:
			pth = global.r_catharsis_paths[counter % 2];
			break;
		case r_blackhole:
			pth = global.r_blackhole_paths[counter % 2];
			break;
		case r_coinstack:
			pth = global.r_coinstack_path_grid[counter % 2][global.coinstack_path_index];
			break;
		case r_vibe:
			pth = global.r_vibe_paths[counter % 2];
			break;
		case r_platform:
			pth = global.r_platform_paths[counter % 6];
			break;
		case r_untitled:
			pth = path_untitled;
			break;
		case r_ghost:
			pth = path_tribute;
			break;
		case r_bread:
			pth = path_bread;
			break;
		case r_duloxetine:
			pth = path_dulo;
			break;
		case r_nang:
			pth = path_nang;
			break;
		case r_machinary:
			pth = global.r_machinary_grid[global.wave % 4][counter % 2]
			break;
		case r_neon:
			pth = global.r_neon_paths[counter % 2];
			break;
		case r_wannafest:
			pth = o_wannafest_handler.chosen_wheel_option == WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH ? global.r_wannafest_reverse_path : path_wannafest_long;
			break;
	}
	
	return pth;
}