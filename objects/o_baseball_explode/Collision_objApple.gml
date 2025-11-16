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
a.can_hit_lead = can_hit_lead;
a.can_hit_black = can_hit_black;
a.can_hit_white = can_hit_white;
a.can_hit_frozen = can_hit_frozen;
a.clay_atk_power = clay_atk_power;
a.lead_atk_power = lead_atk_power;
a.boss_atk_power = boss_atk_power
a.boss_knockback_power = boss_knockback_power;
a.knockback_power = knockback_power;



instance_destroy()

