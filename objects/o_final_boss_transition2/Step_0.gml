counter++;

if is_regen {
	sprite_to_draw = sprFinalBoss_regen;
}

if not audio_is_playing(sndFinalBossGrating) {
	audio_play_sound(sndFinalBossGrating, 999999, 0);	
}

if counter == 325 {
	o_wave_spawner.last_fruit_spawned = true;
	audio_stop_sound(sndFinalBossGrating)
	//bring back normal room music
	scr_play_music()
	instance_destroy();
}