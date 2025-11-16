// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_starting_health(difficulty){
	
	starting_lives = 100;
	switch(difficulty) {
		case 0:
		starting_lives = 200;
		break;
		
		case 1:
		starting_lives = 150;
		break;
		
		case 2:
		starting_lives = 100;
		break;
		
		case 3:
		starting_lives = 1;
		break;
	}
	
	return starting_lives;

}