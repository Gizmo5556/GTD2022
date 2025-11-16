round_controller = noone;
if instance_exists(objRoundController) {
	round_controller = objRoundController;	
}

//similar formula used in https://bloons.fandom.com/wiki/Workshop_(BTD6)
current_price = scr_update_tileswitcher_price();