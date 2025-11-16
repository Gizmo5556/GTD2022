/// @description scrGetWorth(obj)
/// @param obj
function scrGetWorth(argument0) {
	var worth = 1;
	switch(argument0){
		
	    case objApple:
		case objAppleGreen:
	    case objAppleBlue:
		case objAppleYellow:
		case objApplePink:
		case objAppleBlack:
		case objAppleWhite:
		case objAppleZebra:
		case objAppleRainbow:
		case objAppleClay:
		case objAppleLead:
		case objAppleMOAB:
		case objAppleBFB:
		case objAppleZOMG:
		case objAppleDDT:
	        worth = 1;
	    break;
		
		case o_apple_super_clay:
			worth = 95;
		break;
		case objBoss_phase1:
			worth = 0;
		break;
		case objAppleBAD:
		case objAppleBAD_extra:
			worth = 13346;
		break;
	}
	worth *= global.income_reduction;
	return worth;



}
