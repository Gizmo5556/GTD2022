// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_tower_index(tower){
	switch(tower) {
		case objShootingKid:
			return 0;
			break;
		
		case objTurret:
			return 1;
			break;
			
		case o_miku:
			return 2;
			break;
			
		case objThwomp:
			return 3;
			break;
			
		case objAlien:
			return 4;
			break;
			
		case objTheGuy:
			return 5;
			break;
			
		case o_miketyson_base:
			return 6;
			break;
			
		case o_boshy:
			return 7;
			break;
			
		case o_colonel:
			return 8;
			break;
			
		case o_seong:
			return 9;
			break;
			
		case o_stickykeys:
			return 10;
			break;
			
		case o_heart:
			return 11;
			break;
			
		case o_spact:
			return 12;
			break;
			
		case o_cirno:
			return 13;
			break;
			
		case o_sray:
			return 14;
			break;
			
		case o_geezer:
			return 15;
			break;
		
		case o_viridian_base:
			return 16;
			break;
			
		case o_mayumushi:
			return 17;
			break;
	}
}

function scr_get_obj_tower_from_tower_index(index){
	switch(index) {
		case 0:
			return objShootingKid;
			break;
		
		case 1:
			return objTurret;
			break;
			
		case 2:
			return o_miku;
			break;
			
		case 3:
			return objThwomp;
			break;
			
		case 4:
			return objAlien;
			break;
			
		case 5:
			return objTheGuy;
			break;
			
		case 6:
			return o_miketyson_base;
			break;
			
		case 7:
			return o_boshy;
			break;
			
		case 8:
			return o_colonel;
			break;
			
		case 9:
			return o_seong;
			break;
			
		case 10:
			return o_stickykeys;
			break;
			
		case 11:
			return o_heart;
			break;
			
		case 12:
			return o_spact;
			break;
			
		case 13:
			return o_cirno;
			break;
			
		case 14:
			return o_sray;
			break;
			
		case 15:
			return o_geezer;
			break;
		
		case 16:
			return o_viridian_base;
			break;
			
		case 17:
			return o_mayumushi;
			break;
	}
}