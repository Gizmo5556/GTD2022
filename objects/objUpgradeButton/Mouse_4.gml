if ind != -999 and !objRoundController.dead && !upgraded && global.money >= price {
	//tiered upgrades -- check that the previous upgrade has been purchased
	global.money -= price;
	audio_play_sound(sndMoney,0,0)
	    
		
	//funny
	if other.ind mod 5 == 4 and parent_tower.object_index == o_miku {
		audio_play_sound(snd_miku_fun,0,0);
	}
		
		
	scr_upgrade_tower(objUpgrades.parent, ind, price);
		
	if ind % 5 != 4 {
		ind++;	
	}
	else {
		ind = -999;	
	}
	
	//must recalculate price for next upgrade
	has_calculated_price = false;
		
}

