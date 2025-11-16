event_inherited();

if hp < 0.225*max_hp {
	image_index = 4;
	if arm_UR.sprite_index != sprExplosion {arm_UR.sprite_index = sprExplosion; audio_play_sound(sndExplosion, 0, 0);}
}
else if hp < 0.45*max_hp {
	image_index = 3;
	if arm_UL.sprite_index != sprExplosion {arm_UL.sprite_index = sprExplosion; audio_play_sound(sndExplosion, 0, 0);}
}
else if hp < 0.675*max_hp {
	image_index = 2;
	if arm_LL.sprite_index != sprExplosion {arm_LL.sprite_index = sprExplosion; audio_play_sound(sndExplosion, 0, 0);}
}
else if hp < 0.9*max_hp image_index = 1

if is_regen {
	image_index = 5;	
}

original_blend = c_white;
if room == r_neon and global.option_neon_shader {
	switch image_index {
		case 0:
			original_blend = c_white;
			break;
		case 1:
			original_blend = c_blue;
			break;
		case 2:
			original_blend = c_fuchsia;
			break;
		case 3:
			original_blend = c_yellow;
			break;
		case 4:
			original_blend = c_red;
			break;
	}
}

image_blend = original_blend;


arm_UR.x = x + buffer;
arm_UR.y = y - buffer;

arm_UL.x = x - buffer;
arm_UL.y = y - buffer;

arm_LR.x = x + buffer;
arm_LR.y = y + buffer;

arm_LL.x = x - buffer;
arm_LL.y = y + buffer;