//grow blackhole if needed
//also, update path_position comparison variable to determine at which point fruit begins to speed up
with o_black_hole_gimmick {
	if global.wave >= 80 {
		global.blackhole_pathpos_threshold = 0.82;	
		goal_scale = 7;
	}
	else if global.wave >= 60 {
		global.blackhole_pathpos_threshold = 0.85;	
		goal_scale = 5.5;
	}
	else if global.wave >= 40 {
		global.blackhole_pathpos_threshold = 0.92;	
		goal_scale = 4;
	}
	else if global.wave >= 20 {
		global.blackhole_pathpos_threshold = 0.98;	
		goal_scale = 2.5;
	}
	else {
		global.blackhole_pathpos_threshold = 0.99;
	}
	if image_xscale < goal_scale {
		audio_play_sound(snd_blackhole_rumble, 0, 0);
	}
}