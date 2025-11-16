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