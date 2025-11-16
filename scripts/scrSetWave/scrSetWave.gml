/// @description scrSetWave(num,seconds,object,mode,time,time2)
/// @param wave_num
/// @param fruit_count
/// @param object
/// @param mode
/// @param time
/// @param time2
/// @param is_camo
/// @param is_fortified (only use on clay/lead/boss fruit)
/*
function scrSetWave() {

	
	mode 0: spawn every x frames
	mode 1: spawn 1 on frame x
	mode 2: spawn every x frames starting from frame y
	
	
	var scr;
	var wave_num = argument[0];
	var fruit_count = argument[1];
	var obj = argument[2];
	var mode = argument[3];
	var time = argument[4];
	var is_camo = false;
	var is_fortified = false;
	
	if argument_count >= 7 {
		is_camo = argument[6];
	}
	if argument_count >= 8 {
		is_fortified = argument[7];
	}
	if mode == 2 {
	    var time2 = argument[5];    
	}
	
	

	switch(obj) {
	    case objApple:
	        scr = scrSpawnApple;
	    break;
	    case objAppleBlue:
	        scr = scrSpawnAppleBlue;
	    break;
		case objAppleGreen:
	        scr = scrSpawnAppleGreen;
	    break;
	    case objAppleYellow:
	        scr = scrSpawnAppleYellow;
	    break;
		case objApplePink:
	        scr = scrSpawnApplePink;
	    break;
	    case objAppleWhite:
	        scr = scrSpawnAppleWhite;
	    break;
	    
	    case objAppleRainbow:
	        scr = scrSpawnAppleRainbow;
	    break;
	    case objAppleClay:
	        scr = scrSpawnAppleClay;
	    break;
	    case objMotherCherry:
	        scr = scrSpawnMotherCherry;
	    break;
	    case objBoss:
	        scr = scrSpawnBoss;
	    break;
	}


	if !timeline_exists(global.timeline[wave_num]) {
	    global.timeline[wave_num] = timeline_add()
	}
	
	//timelines are dumb and won't let me put arguments in the script so there has to be a script for every possible fruit
	scr = asset_get_index(scr_get_proper_script_name(script_get_name(scr), is_camo, is_fortified));

	if mode == 0 {
	    for(var i=time; i<(fruit_count+1)*time; i+=time) {
	        timeline_moment_add_script(global.timeline[wave_num],i,scr)
	    }
	}
	else if mode == 1 {
	    timeline_moment_add_script(global.timeline[wave_num],time,scr)
	}  
	else if mode == 2 {
	    for(var i=time2; i<time2 + (fruit_count)*time; i+=time) {
	        timeline_moment_add_script(global.timeline[wave_num],i,scr)
	    }
	}



}
*/