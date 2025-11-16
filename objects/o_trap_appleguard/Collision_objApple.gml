//this trap can destroy up to a MOAB, regardless of lead/camo/etc
if not other.is_boss or (other.object_index == objAppleMOAB or other.object_index == objAppleDDT) {
	rbe_left -= other.rbe;
	global.money += scr_get_worth_ufo(other.object_index);
	audio_play_sound(sndBossHit, 0 , 0);
	instance_destroy(other);
	
	if rbe_left < 0 {
		audio_play_sound(sndShatter, 0, 0);
		y = start_y;
		recharge_left = recharge_time;
		rbe_left = rbe_left_max;
	}
}
