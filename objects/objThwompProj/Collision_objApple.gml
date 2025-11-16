if global.sfx_limit_map_handler[? "Explosion"][0] < MAX_SFX_COUNT {
	audio_sound_pitch(audio_play_sound(sndExplosion,0,0), random_range(0.85, 1.1))
	global.sfx_limit_map_handler[? "Explosion"][0]++;
}

var a=instance_create_layer(other.x,other.y,"Bullets",objExplosion)
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
a.boss_knockback_power = boss_knockback_power;
a.knockback_power = knockback_power;
a.num_layers_to_pierce = num_layers_to_pierce;

if is_cluster_bomb {
	var i = irandom(360)
    repeat(8) {
        var b=instance_create_layer(x,y,"Bullets",objBabyThwomp)
        b.direction = i
        b.speed = 8
		b.sprite_index = frag_sprite;
		b.image_xscale = frag_size;
		b.image_yscale = frag_size;
		if frags_are_octorok {
			b.image_index = irandom_range(0, 2);	
		}
		b.piercing = piercing;
		b.can_hit_camo = can_hit_camo;
		b.can_hit_lead = frag_can_hit_lead;
		b.can_hit_black = true;
		b.can_hit_frozen = frag_can_hit_frozen;
		b.can_hit_white = true;
		//fragments 
		b.clay_atk_power = frag_damage;
		b.lead_atk_power = frag_damage;
		b.boss_atk_power = frag_damage;
		b.boss_knockback_power = 0;
		b.knockback_power = 0;
        i += (360/8)
	}
	if not frags_are_octorok {
		if global.sfx_limit_map_handler[? "Thwomp"][0] < MAX_SFX_COUNT {
			audio_sound_pitch(audio_play_sound(sndThwomp,0,0),1.5)
			global.sfx_limit_map_handler[? "Thwomp"][0]++;
		}
	}
}


instance_destroy()

