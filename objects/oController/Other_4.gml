//only used for blackhole ma

if room != r_blackhole and instance_exists(oPlayer) {
	instance_destroy(oPlayer)	
}
with oPlayerStart {
    if not instance_exists(oPlayer) {
        instance_create_layer(x+17,y+23,"fake_end",oPlayer)
    }
}

game_set_speed(50, gamespeed_fps);

global.number_of_bosses_spawned = 0;
global.number_of_fruit_spawned = 0;


//control music for each room
scr_play_music();


//if room is one of the levels, calculate prices, lives, etc
if instance_exists (objRoundController) {
		switch(global.current_difficulty) {
		case 0: //medium
			global.money = 800;
	        global.spd = 1.296; //90% of hard
	        global.life = scr_get_starting_health(global.current_difficulty);
	        global.finalwave = 39;
			global.price_multiplier = 0.85;
			global.wave = 0;
			global.sell_multiplier = 0.85;
			scrResetPrices();
			scrUpgradePrices();
			break;
		case 1: //hard
			global.money = 750;
	        global.spd = 1.44;
	        global.life = scr_get_starting_health(global.current_difficulty);
	        global.finalwave = 59;
			global.price_multiplier = 1.0;
			global.wave = 0;
			global.sell_multiplier = 0.7;
			scrResetPrices();
			scrUpgradePrices();
			break;
		case 2: //very hard
			global.money = 700;
	        global.spd = 1.512; //5% faster than hard
	        global.life = scr_get_starting_health(global.current_difficulty);
	        global.finalwave = 79;
			global.price_multiplier = 1.08;
			global.wave = 0;
			global.sell_multiplier = 0.7;
			scrResetPrices();
			scrUpgradePrices();
			break;
		case 3: //impossible
			//174893
			global.money = 650 //174893
	        global.spd = 1.584; //10% faster than hard
	        global.life = scr_get_starting_health(global.current_difficulty);
	        global.finalwave = 99;
			global.price_multiplier = 1.08;
			global.wave = 0;
			global.sell_multiplier = 0.0;
			scrResetPrices();
			scrUpgradePrices();
			break;
	}
	global.total_fruit_destroyed = 0;
	global.total_bosses_destroyed = 0;
	//reset to 0 so it's a fresh number between maps in a single session
	global.number_of_fruit_spawned = 0;
	
	//reset cointstack path index before loading save
	if room == r_coinstack {
		global.coinstack_path_index = 0;	
	}

	//load saved game if player chose to do so
	if global.is_loading_save {
		scr_load_game();	//may overwrite some of the global defaults above
		global.is_loading_save = false;
	}

	//do this after loading game so ramping/buffing/etc is ready at beginning
	scr_update_wave_buffing();
	
	global.bloon_sabotage_timer = 0;
	global.sabotage_multiplier = 1.0;
	global.is_midpoint_crossed = false;
	
	if room == r_blackhole {
		with o_black_hole_room_handler {
			event_user(0);		
		}
	}

}

if instance_exists(objRoundController) {
	
	instance_create_layer(400, 500, "top_layer_UI", o_information_box);
	
	with objRoundController {
		if not dead and not is_choosing_freeplay and not is_choosing_to_continue {
			scr_check_for_infobox_visibile();	
		}
	}
	
	//path markers in butterfl must be re-generated on demand
	//for butterfly it must be re-generated each round
	if room != r_butterfly and room != r_machinary {
		scr_generate_path_markers();	
	}
	
}






