//WARNING: for some reason the final_image_angle is slightly off (~40 degrees)
//from the actual final image angle the wheel stops on.
//i have no idea what the issue is but it's close enough so I'm not touching it
//ALSO DON'T try to spin it CLOCKWISE, that also messes with the math which is slightly broken but still works so oh well

wheel_decel = 0.2 * room_speed / 50;
wheel_vel = irandom_range(30, 35) * room_speed / 50;
is_spinning = true;
image_angle = irandom_range(0, 359);
final_image_angle = image_angle;
wheel_options = [];


//wheel_vel = 30.0;
//image_angle = -45;



switch global.wave + 1 {
		
	case 10:
	case 20:
	case 30:
	//NO BOSS_REGEN
		wheel_options = [
		WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH,
		WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN,
		WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN,
		WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN,
		WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH,
		WANNAFEST_WHEEL_OPTIONS.SPEEDUP,
		WANNAFEST_WHEEL_OPTIONS.SPEEDUP,
		WANNAFEST_WHEEL_OPTIONS.SPEEDUP,
		]
		break;
		
	case 40:
	case 50:
	case 60:
	case 70:
	case 80:
	case 90:
	case 100:
	case 110:
	case 120:
	case 130:
	case 140:
		wheel_options = [
		WANNAFEST_WHEEL_OPTIONS.BOSS_REGEN,
		WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN,
		WANNAFEST_WHEEL_OPTIONS.SPEEDUP,
		WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH,
		WANNAFEST_WHEEL_OPTIONS.BOSS_REGEN,
		WANNAFEST_WHEEL_OPTIONS.CHERRY_RAIN,
		WANNAFEST_WHEEL_OPTIONS.SPEEDUP,
		WANNAFEST_WHEEL_OPTIONS.REVERSE_PATH
		]
		break;
		
		
	
				
}

num_options = array_length(wheel_options);
option_size = 360 / num_options //number of degrees each option takes up on the wheel


//figure out which option it will land on. We must do this BEFORE the wheel actually starts, so the effect can be executed immediately
test_wheel_vel = wheel_vel;
test_image_angle = image_angle;
while test_wheel_vel > 0 {
	test_image_angle -= test_wheel_vel; 
	test_wheel_vel -= wheel_decel;
	test_wheel_vel = max(0, test_wheel_vel);
}

//If we don't add 90, it will check the wheel section on the right, rather than on the bottom.
test_final_image_angle = (test_image_angle + 90) % 360;
test_final_image_angle_alt = (test_image_angle) % 360; //without 90. Used to set wheel to correct angle when stopped prematurely.
final_image_angle = test_final_image_angle;


//now get the wheel option enum that it will end up selecting
//angle_to_check = (final_image_angle + wheel_clicker_angle_position) % 360;
final_wheel_option_index = abs(final_image_angle div option_size) //-2 because that fixes it?????????? >:( idk anymore
final_wheel_option = wheel_options[@ final_wheel_option_index]

////////////////////////////////////////////////////////////////////////////

//next, get the sprites to draw
wheel_sprites_to_draw = []
for (var i=0; i<array_length(wheel_options); i++;) {
	wheel_sprites_to_draw[@ i] = global.wheel_sprites_array[wheel_options[@ i]];	
}

// so that sprites are drawn in-between lines and not on the lines. 360 / 16
wheel_draw_angle_offset = 22.5;

audio_play_sound(snd_wheel_spin, 0, 0);