var explosion = instance_create(x + irandom_range(48, 144), y + irandom_range(120, 208), objExplosion);

explosion.clay_atk_power = 2;
explosion.boss_atk_power = 4;
			
if global.sfx_limit_map_handler[? "Explosion"][0] < MAX_SFX_COUNT {
	audio_play_sound(sndExplosion,0,0)
	global.sfx_limit_map_handler[? "Explosion"][0]++;
}

			
explosion.image_xscale = 2;
explosion.image_yscale = 2;

explosions_left--;

if explosions_left > 0 {
	alarm[0] = 15;	
}
	