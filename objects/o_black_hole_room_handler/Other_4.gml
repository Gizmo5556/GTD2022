//jump to normal "map" without fake credits intro if there is ZERO save data for this map
var does_data_exist = scr_does_bhole_data_exist() or scr_does_bhole_map_have_medal();

//prepare fake credits
if not does_data_exist {
	is_using_counter = true;
	
	instance_destroy(o_black_hole_seller);
	
	scr_play_music();
	
	with objTowerIcon {
		visible = false;	
	}
	objNextWave.visible = false;
	objRoundController.visible = false;
	objStore.visible = false;
	
	o_black_hole_gimmick.image_xscale = 0.0;
	o_black_hole_gimmick.image_yscale = 0.0;
	
	//create block objects at borders
	for (var i = 0; i < 1028; i += 32) {
		instance_create_layer(i, 0, "fake_end", o_black_hole_block)
		instance_create_layer(i, 576, "fake_end", o_black_hole_block)
	}
	//i starts at 32 to avoid overlapping blocks at corners
	for (var i = 32; i < 576; i += 32) {
		instance_create_layer(0, i, "fake_end", o_black_hole_block)
		instance_create_layer(996, i, "fake_end", o_black_hole_block)
		
	}
	instance_create_layer(100, 100, "fake_end", oPlayerStart);
	repeat(3) {
		instance_create_layer(irandom_range(64, 964), irandom_range(64, 544), "fake_end", objPatBall);	
	}
	instance_create_layer(0, 0, "fake_end", objPatBallMaker);
	
	//move the fake bg to proper location
	with o_black_hole_victim {
		if x > 1030 {
			x -= 1060;
		}
	}
	with oBlock {
		if x < 0 {
			x += 1052;
		}
	}
}
else {
	instance_destroy(oBlock);	
}