// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_wave_buffing(){

	//change income reduction for money per pop
	//approx amount of money gained after wave 100 but without any income reduction is 3608100
	if global.wave >= 100 {
		global.income_reduction = 0.0605;	//0.02 in btd6
	}
	else if global.wave >= 85 {
		global.income_reduction = 0.1;
	}
	else if global.wave >= 60 {
		global.income_reduction = 0.2;
	}
	else if global.wave >= 50 {
		global.income_reduction = 0.5;	
	}
	else {
		global.income_reduction = 1.0;	
	}
	
	//ramping after wave 80 -- update after every round ends
	if global.wave >= 124 {
		//speed ramp is same as >= 100 case
		global.speed_ramp = 1.4 + (global.wave - 100 + 1)*0.02;
		//global.health_ramp = 2.75 + (global.wave - 124 + 1)*0.15;
		global.health_ramp = 1.45 + (global.wave - 100 + 1)*0.0325;
	}
	else if global.wave >= 100 {
		global.speed_ramp = 1.4 + (global.wave - 100 + 1)*0.02;
		global.health_ramp = 1.45 + (global.wave - 100 + 1)*0.0325;
	}
	else if global.wave >= 80 {
		global.speed_ramp = 1.0 + (global.wave - 80 + 1)*0.02;
		global.health_ramp = 1.0 + (global.wave - 80 + 1)*0.02;
	}
	else {
		global.speed_ramp = 1.0;
		global.health_ramp = 1.0;
	}
}