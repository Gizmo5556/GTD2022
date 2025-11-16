///@desc state machine -- actual attacking is done in main step event

if not final_form_complete {
	
	if prep_state == 0 {
		//ascend above the screen, wait 50 frames	
		y -= 16;
		if y < -350 {
			//when finished ascending, change to main sprite
			prep_state = 1;
			sprite_index = s_guy_final_form_wannafest_face;
			layer = layer_get_id("guy_finalform_bg");
			y = 800;
			x = 400;
			image_xscale = 0.5;
			image_yscale = 0.5;
		}
	}
	else if prep_state == 1 {
		//ascend as big face guy behind the window
		y -= 10
		if y < 300 {
			y = 300;
			prep_state = 2;
		}
	}
	else if prep_state == 2 {
		//step forward towards glass
		step_forward_timer += 1;
		x = (400 - 16) + 32 * dsin(9.5 * step_forward_timer + 30);
		y -= 1;
		var xx = choose(-step_forward_timer, step_forward_timer);
		var yy = choose(-step_forward_timer, step_forward_timer);
		camera_set_view_pos(view_camera[0], xx/10, yy/10);
		if step_forward_timer % 15 == 0 {
			audio_play_sound(snd_wannafest_guy_step, 0, 0);
		}
		image_xscale += 0.008;
		image_yscale += 0.008;
			
		if step_forward_timer >= 72 {
			camera_set_view_pos(view_camera[0], 0, 0);
			prep_state = 3;
			layer = layer_get_id("guy_finalform");
			image_xscale = 1;
			image_yscale = 1;
			x = 400;
			y = 304;
			image_angle = 0;
			audio_play_sound(snd_break, 0, 0);
			
			image_alpha = 1;
			sprite_index = s_guy_final_form;
			left_eye = instance_create_layer(x - 66, y + 9, "guy_eyes_mouth", o_guy_final_form_eye);
			right_eye = instance_create_layer(x + 66, y + 9, "guy_eyes_mouth", o_guy_final_form_eye);
			mouth = instance_create_layer(x, y + 136, "guy_eyes_mouth", o_guy_final_form_mouth);
			
			
			//don't do this if the glass is already "broken"
			var layer_id = layer_get_id("Backgrounds_2");
			var back_id = layer_background_get_id(layer_id);
			if layer_background_get_sprite(back_id) == s_wannafest_bg_actual2 {
				layer_background_sprite(back_id, s_wannafest_bg_actual3);
				audio_play_sound(sndShatter, 0, 0);
				for (var i=0; i<35; i++;) {
					var obj = choose(Object200, Object201, Object202, Object203, Object204, Object205,
						Object206, Object207, Object208, Object209, Object210);
					obj = instance_create_layer(0, 0, "cash_rain", obj)
					with obj {
						image_xscale = 0.5;
						image_yscale = 0.5;
						image_alpha = 0.3;
						x = irandom_range(215, 580);
						y = irandom_range(120, 320);
						direction = 180 - point_direction(x, y, 400, 216) + irandom_range(-15, 15);
						speed = point_distance(x, y, 400, 216)/25; //closer to center of glass pane == less speed
						image_angle = irandom_range(0, 360);
						is_wannafest_glass = true;
						shrink = -0.035; //set to negative to have grow effect
						fade = 0.006;
						spin = irandom_range(-10, 10);
					}
				}	
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



