///@desc handling for start of fake credits sequence and bhole reveal

if not is_using_counter exit;

counter++;

if counter < 750 {
	credits_y_offset += 0.85;	
}

//stop music and object movement, start breaking screen
else if counter == 750 {
	audio_stop_all();
	instance_destroy(objPatBallMaker);
	with objPatBall {
		is_moving = false;
		hspeed = 0;
		vspeed = 0;
		speed = 0;
		gravity = 0;
		image_speed = 0;
	}
	with oPlayer {
		super_frozen = true;
		hspeed = 0;
		vspeed = 0;
		speed = 0;
		gravity = 0;
		image_speed = 0;
	}
	audio_play_sound(snd_blackhole_impact, 0, 0);
	shake = true;
	alarm[0] = shake_duration;
}

else if counter == 850 {
	audio_play_sound(snd_blackhole_impact, 0, 0);
	shake = true;
	alarm[0] = shake_duration;
}
else if counter == 940 {
	with o_black_hole_victim {
		//multiplier added to speed up black hole "sucking"
		dist_to_center = 0.45*max(0, ceil(point_distance(x, y, 400, 304)) + 0);
		alarm[0] = dist_to_center;
	}	
}
else if counter == 950 {
	audio_play_sound(snd_blackhole_impact, 0, 0);
	audio_play_sound(snd_blackhole_suck, 0, 0);
	shake = true;
	alarm[0] = shake_duration;
	//instance_create_depth(400, 304, depth, o_black_hole_victim_sucker);	
}

else if counter == 1300 {
	audio_play_sound(snd_blackhole_grow, 0, 0);
	audio_play_sound(snd_blackhole_rumble, 0, 0);
}

else if counter == 1700 {
	audio_sound_gain(mus_fog_rolls_in, 0, 0);
	global.music = audio_play_sound(mus_fog_rolls_in, 0, true);
	//audio_sound_gain(mus, 0, 0);
	audio_sound_gain(mus_fog_rolls_in, global.music_volume*1.6, 0);
	objNextWave.visible = true;
	objRoundController.visible = true;
	objStore.visible = true;
	//need to activate tower icons to mess with them
	instance_activate_object(objTowerIcon)
	with objTowerIcon {visible = true;}	
	instance_deactivate_object(objTowerIcon)
	
	instance_create_layer(400, 304, "Traps", o_black_hole_seller);
	
	instance_destroy(oBlock);
	//set correct variables for blackhole
	event_user(0);
}


if counter >= 1300 and counter <= 1550 {
	o_black_hole_gimmick.image_xscale += 0.005;
	o_black_hole_gimmick.image_yscale += 0.005;
}

if shake {
	camera_set_view_pos(view_camera[0], view_x + random_range(-shake_range, shake_range),
	view_y + random_range(-shake_range, shake_range));
}
else {
	camera_set_view_pos(view_camera[0], view_x, view_y);
}