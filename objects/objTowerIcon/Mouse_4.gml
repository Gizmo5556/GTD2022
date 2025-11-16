if visible and !objRoundController.dead && !instance_exists(objPlacer) {
	//create placer on uppermost layer that is affected by catharsis shader
    a=instance_create_layer(mouse_x,mouse_y,"Spike_Piles_Top",objPlacer)
    a.ind = ind;
	
	//if player can't afford tower, don't show placer -- placer will destroy itself when clicked
	if global.money < global.price[ind]
	{
		a.visible = false;	
	}
	mouse_clear(mb_left);
}

