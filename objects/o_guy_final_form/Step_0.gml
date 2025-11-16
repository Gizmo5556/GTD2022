if not instance_exists (parent) {
	instance_destroy();
	exit;
}

if not final_form_complete { exit; }

if wave_spawner.wave_in_progress {
	if collision_rectangle(0,0,800,608,objApple,0,0) and cooldown == 0 {
		//eyes begin shooting
		state = 1;	
		
		var apple = scr_get_target(parent.targeting_mode);
		
		if apple != noone {
			//get eyes to look at it
			var d = point_direction(400, 313, apple.x, apple.y);
			d = floor((d+22.5)/45) * 45;
			left_eye.x = 334 + 20 * dcos(d);
			left_eye.y = 313 - 20 * dsin(d);
			right_eye.x = 466 + 20 * dcos(d);
			right_eye.y = 313 - 20 * dsin(d);
	
	
		    cooldown = cooldown_max;
		    a = instance_create_layer(left_eye.x,left_eye.y,"Bullets",o_guy_final_form_bullet);
			b = instance_create_layer(right_eye.x,right_eye.y,"Bullets",o_guy_final_form_bullet);
			a.direction = point_direction(left_eye.x, left_eye.y, apple.x, apple.y);
			a.target = apple;
			b.direction = point_direction(right_eye.x, right_eye.y, apple.x, apple.y);
			b.target = apple;
			if can_launch_energy_shots and num_of_bullets_until_special == 0 {
				num_of_bullets_until_special = num_of_bullets_until_special_max;
				
				var spec_bullet = choose(a, b);
			
				spec_bullet.piercing = special_piercing;
				spec_bullet.clay_atk_power = special_clay_atk;
				spec_bullet.boss_atk_power = special_boss_atk;
				spec_bullet.knockback_power = special_knockback;
				spec_bullet.boss_knockback_power = special_boss_knockback;
				spec_bullet.image_xscale=special_bullet_size;
				spec_bullet.image_yscale=special_bullet_size;
			
			
			
				/*a.piercing = special_piercing;
				a.clay_atk_power = special_clay_atk;
				a.boss_atk_power = special_boss_atk;
				a.knockback_power = special_knockback;
				a.boss_knockback_power = special_boss_knockback;
				a.image_xscale=special_bullet_size;
				a.image_yscale=special_bullet_size;
			
				b.piercing = special_piercing;
				b.clay_atk_power = special_clay_atk;
				b.boss_atk_power = special_boss_atk;
				b.knockback_power = special_knockback;
				b.boss_knockback_power = special_boss_knockback;
				b.image_xscale=special_bullet_size;
				b.image_yscale=special_bullet_size;*/
			
			
				//randomly say funny
				/*if not is_talking and irandom_range(0, 100) == 42 {
					is_talking = true;
					var voice_line_num = irandom_range(0, 3);
				
					switch(voice_line_num) {
						case 0:
						audio_play_sound(snd_guy_bones, 0, 0);
						break;
					
						case 1:
						audio_play_sound(snd_guy_escape, 0, 0);
						break;
					
						case 2:
						audio_play_sound(snd_guy_sex, 0, 0);
						break;
					
						case 3:
						audio_play_sound(snd_guy_destroy, 0, 0);
						break;
					}
				}*/
			}
			//audio_stop_sound(snd_energy_shot);
		    if  global.sfx_limit_map_handler[? "Energy"][0] < MAX_SFX_COUNT {
				audio_play_sound(snd_energy_shot, 0, 0);
				global.sfx_limit_map_handler[? "Energy"][0]++;
			}
		}
		
		else { cooldown = ceil(cooldown_max / 2); }
		
	}
	
	//round in progress but no fruit to shoot
	else {
		state = -1;	
	}
}

//round is not playing and guy is not angry -- have eyes look at player
else if angry_timer == 0 {
	state = 2;
	var d = point_direction(400, 313, mouse_x, mouse_y);
	d = floor((d+22.5)/45) * 45;
	left_eye.x = 334 + 20 * dcos(d);
	left_eye.y = 313 - 20 * dsin(d);
	right_eye.x = 466 + 20 * dcos(d);
	right_eye.y = 313 - 20 * dsin(d);
	
}	

if cooldown > 0 cooldown--
if num_of_bullets_until_special > 0 num_of_bullets_until_special--