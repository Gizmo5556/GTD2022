// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_music(){
	
	var mus = musTitle;
	var volume_multiplier = 1.0;

	switch(room) {
	    case rTitle:
		case r_choosemap:
		case r_saved_game_warning:
		case r_options:
			mus = musTitle;
			volume_multiplier = 0.75;
			break;
	    case rGuy:
			mus = musGuyRock;
			volume_multiplier = 0.75;
			break;
		case r_moon:
			if global.option_replace_mooned_music {
				mus = mus_clair_de_lune
				volume_multiplier = 1.0;
			}
			else {
				mus = mus_gateway_galaxy;
				volume_multiplier = 1.0;
			}
			break;
		case r_guytower:
			mus = mus_guytower_main;
			volume_multiplier = 0.67;
			break;
		case r_dewrace:
			mus = mus_dewrace;
			break;
		case r_butterfly:
			mus = mus_butterfly;
			volume_multiplier = 0.8;
			break;
		case r_catharsis:
			mus = mus_catharsis;
			break;
		case r_blackhole:
			if scr_does_bhole_data_exist() or scr_does_bhole_map_have_medal() {
				mus = mus_fog_rolls_in;
				volume_multiplier = 1.6;
			}
			else {
				mus = mus_fake_credits;
				volume_multiplier = 1.0;
			}
			break;
		case r_coinstack:
			mus = mus_coinstack;
			break;
		case r_vibe:
			mus = mus_chill65;
			volume_multiplier = 0.85;
			break;
		case r_platform:
			mus = mus_platform;
			volume_multiplier = 1.67;
			break;
		case r_untitled:
			mus = mus_untitled;
			volume_multiplier = 0.85;
			break;
		case r_ghost:
			if global.option_replace_mooned_music {
				mus = mus_chopin;
				volume_multiplier = 0.725;
			}
			else {
				mus = mus_ghost;
				volume_multiplier = 0.67;
			}
			break;
		case r_bread:
			mus = mus_bread;
			volume_multiplier = 0.67;
			break;
		case r_duloxetine:
			mus = mus_dulo;
			volume_multiplier = 0.67;
			break;
		case r_nang:
			mus = mus_nang;
			volume_multiplier = 1.0;
			break;
		case r_machinary:
			mus = mus_machinary;
			volume_multiplier = 1.0;
			break;
		case r_neon:
			mus = mus_neon;
			volume_multiplier = 1.0;
			break;
		case r_wannafest:
			mus = mus_wannafest;
			volume_multiplier = 0.6;
			break;
	    case rEnd:
			mus = mus_fake_credits;
			volume_multiplier = 1.0;
			break;
	}

	if not audio_is_playing(mus) {
		audio_stop_sound(global.music);
		global.music = mus;
		audio_sound_gain(global.music, global.music_volume * volume_multiplier, 0)
		audio_play_sound(global.music, 999999, true);
	}
	
}