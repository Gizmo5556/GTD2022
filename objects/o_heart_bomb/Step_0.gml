image_speed = countdown_max/countdown;

if countdown == 0 {
	image_speed = 1;
	sprite_index = s_heart_bomb_break;
	if global.sfx_limit_map_handler[? "Explosion"][0] < MAX_SFX_COUNT {
		audio_sound_pitch(audio_play_sound(sndExplosion,0,0), random_range(0.85, 1.1))
		global.sfx_limit_map_handler[? "Explosion"][0]++;
	}

	a=instance_create_layer(other.x,other.y,"Bullets",objExplosion)
	a.explosion_power = explosion_power;
	a.sprite_index = explosion_sprite;
	a.image_xscale=explosion_size;
	a.image_yscale=explosion_size;
	a.piercing = piercing;
	a.can_hit_camo = can_hit_camo;
	a.can_hit_lead = true;
	a.can_hit_black = can_hit_black;
	a.can_hit_frozen = true;
	a.can_hit_white = true;
	a.clay_atk_power = clay_atk_power;
	a.lead_atk_power = lead_atk_power;
	a.boss_atk_power = boss_atk_power
}

if is_bomb_tracking {
	speed = 1;
	update_timer--;
	if update_timer <= 0 and instance_exists(objApple) {
		update_timer = update_timer_max; 
		var target = noone;
		if instance_exists(objApple) {
			target = instance_nearest(x, y, objApple);
			direction = point_direction(x, y, target.x, target.y);
		}
		
		
	}
}

countdown--;