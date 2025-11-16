// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_generate_path_markers(){
	///@desc this script mimicks an object going along the active path(s) of the map and lays down an invisible marker every "step"
	//these markers can be used for various purposes, but mostly for stuff that needs to be put somewhere on the path
	//itself (e.g., spike piles from the spike factory)

	var path_step_amount = 0;

	var path_x = 0;

	var path_y = 0;

	var pos = 0;

	//create temporary array of paths that the generator needs to take
	var array;

	if room == r_guytower {
		array = global.r_guytower_paths;	
	}
	else if room == r_catharsis {
		array = global.r_catharsis_paths;	
	}
	else if room == r_platform {
		array = global.r_platform_paths;	
	}
	else if room == r_vibe {
		array = global.r_vibe_paths;	
	}
	else if room == r_blackhole {
		array = global.r_blackhole_paths;	
	}
	else if room == r_machinary {
		array = global.r_machinary_grid[global.wave % 4];
	}
	else if room == r_neon {
		array = global.r_neon_paths;	
	}
	else {
		array[0] = scr_get_path(false); //returns same path id that each fruit gets upon spawning
	}

	//for each active path
	for (var i = 0; i < array_length(array); i++) {
	
		
		//how many pixels to keep markers apart
		var marker_spacing = 32;
		
		
		//calculate length of each step -- changes depending on path so that
		//distance between markers remains the same per map
		path_step_amount = marker_spacing / path_get_length(array[i]);
		
		pos = 0;
	
		//create markers until end of current path is reached
		while pos < 1.0 {
			path_x = path_get_x(array[i], pos);
			path_y = path_get_y(array[i], pos);
			//do not create path markers off screen
			if path_x >= 0 and path_x <= 800 and path_y >= 0 and path_y <= 608 {
				instance_create(path_x, path_y, o_path_marker);
			}
			pos += path_step_amount;
		}
	}

}