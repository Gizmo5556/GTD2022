/// @description scrGetWorth(obj)
/// @param obj
function scr_get_worth_ufo(obj_ind) {
	var worth = 0;
	switch(obj_ind){
		
	    case objApple:
	        worth = 1;
			break;
		case objAppleBlue:
			worth = 2;
			break;
		case objAppleGreen:
			worth = 3;
			break;
		case objAppleYellow:
			worth = 4;
			break;
		case objApplePink:
			worth = 5;
			break;
		case objAppleBlack:
		case objAppleWhite:
			worth = 11;
			break;
		case objAppleZebra:
			worth = 23;
			break;
		case objAppleLead:
			worth = 23;
			break;
		case objAppleRainbow:
			worth = 47;
			break;
		case objAppleClay:
			//1 worth for the clay fruit + either 47 * 1 or 47 * 2 for the rainbow fruit
			worth = 95;
			break;
		case o_apple_super_clay:
			//1 worth for the clay fruit + either 47 * 1 or 47 * 2 for the rainbow fruit
			worth = 95;
			break;
		case objAppleMOAB:
			worth = 381;
			break;
		case objAppleBFB:
			worth = 1525;
			break;
		case objAppleZOMG:
			worth = 6101;
			break;
		case objAppleDDT:
			worth = 381; //spawns 4 camo regen clays
			break;
		case objAppleBAD:
		case objAppleBAD_extra:
			worth = 13346; //2 ZOMGs and 3 DDTs
			break;

	}
	worth *= global.income_reduction;
	return worth;



}
