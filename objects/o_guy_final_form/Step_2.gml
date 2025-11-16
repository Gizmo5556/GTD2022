///@desc state machine -- actual attacking is done in main step event

if not final_form_complete {
	
	if x != 400 or y != 304 {
		x = scr_approach(x, 400, 15);
		y = scr_approach(y, 304, 15);

		image_angle += 8;
	}
	else if x == 400 and y == 304 {
		if first_hole == noone {
			image_alpha = 0;
			first_hole = instance_create_layer(x, y, "guy_finalform_hole", o_small_hole);
			first_hole.sprite_index = s_small_hole;
			audio_play_sound(snd_glass_shatter, 0, 0);
			first_hole_timer = 75;
		}
		else if first_hole_timer > 0 {
			first_hole_timer--;	
		}
	
		else if first_hole_timer == 0 and first_hole.sprite_index != s_small_hole_guy {
			first_hole.sprite_index = s_small_hole_guy;
			first_hole_timer = 75;
		}
	
		else if first_hole_timer == 0 and first_hole.sprite_index == s_small_hole_guy {
			instance_destroy(first_hole);
			image_angle = 0;
			second_hole = instance_create_layer(x, y, "guy_finalform_hole", o_large_hole);
			audio_play_sound(snd_break, 0, 0);
			audio_play_sound(sndShatter, 0, 0);
			image_alpha = 1;
			sprite_index = s_guy_final_form;
			left_eye = instance_create_layer(x - 66, y + 9, "guy_eyes_mouth", o_guy_final_form_eye);
			right_eye = instance_create_layer(x + 66, y + 9, "guy_eyes_mouth", o_guy_final_form_eye);
			mouth = instance_create_layer(x, y + 136, "guy_eyes_mouth", o_guy_final_form_mouth);
				
			//do not show big hole or head on mooned or catharsis -- they look weird there
			if room == r_catharsis or room == r_moon {
				visible = false;
				second_hole.visible = false;
			}
			
			
			
			
			state = 0;
			
			angry_timer = 75;
		
			final_form_complete = true;
		}
	}
}


//stuff to do after transforming
else {
	
	if is_talking and mouth.sprite_index != s_guy_final_form_mouth_talk {
		mouth.sprite_index = s_guy_final_form_mouth_talk;
		talk_timer = 75;
	}

	if talk_timer == 0 and mouth.sprite_index == s_guy_final_form_mouth_talk {
		left_eye.sprite_index = s_guy_final_form_eye;
		right_eye.sprite_index = s_guy_final_form_eye;
		mouth.sprite_index = s_guy_final_form_mouth;
		is_talking = false;	
	}

	if angry_timer > 0 {
		angry_timer--;	
	}
	if talk_timer > 0 {
		talk_timer--;	
	}
	
	if state != -1 {
		//angry
		if state == 0  {
			if not audio_is_playing(snd_guy_angry) {audio_play_sound(snd_guy_angry, 0, 0);}
			left_eye.sprite_index = s_guy_final_form_eye_angry;
			right_eye.sprite_index = s_guy_final_form_eye_angry;
			mouth.sprite_index = s_guy_final_form_mouth_angry;
			if angry_timer == 0 {
				state = -1;
				left_eye.sprite_index = s_guy_final_form_eye;
				right_eye.sprite_index = s_guy_final_form_eye;
				mouth.sprite_index = s_guy_final_form_mouth;
			}
		}
	
		//shooting
		else if state == 1 {
			left_eye.sprite_index = s_guy_final_form_eye_angry;
			right_eye.sprite_index = s_guy_final_form_eye_angry;
		}
	
		//idle -- while round is not playing
		else if state == 2 {
			left_eye.sprite_index = s_guy_final_form_eye;
			right_eye.sprite_index = s_guy_final_form_eye;
		}
	}
	
	//eyes and mouth don't move while round is playing
	else {
		left_eye.sprite_index = s_guy_final_form_eye;
		right_eye.sprite_index = s_guy_final_form_eye;	
	}
}



