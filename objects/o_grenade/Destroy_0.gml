//create fires
if global.sfx_limit_map_handler[? "Explosion"][0] < MAX_SFX_COUNT {
	audio_play_sound(sndExplosion,0,0)
	global.sfx_limit_map_handler[? "Explosion"][0]++;
}

for (var i = 0; i < 5; i++) {
	//a = instance_create_layer(x + (irandom_range(31, 32) * i * (sign(i % 2) - 0.5)), y + irandom_range(-32, 32),"Bullets",o_fire);
	a = instance_create_layer(x, y, "Spike_Piles_Top", o_fire);
	a.image_angle = irandom_range(0, 359);
	//a = instance_create(x, y, o_fire);
	//a.depth = fire_depth; //breaks in catharsis shader
	a.image_xscale = 2;
	a.image_yscale = 2;
	a.image_index = 6;
	//a.image_angle = direction + 270;
	//a.x += dcos(a.image_angle) * 75;
	//a.y -= dcos(a.image_angle) * 75;
	//a.image_angle = irandom_range(0,3) * 90;
	a.explosion_power = fire_piercing;
	a.lead_atk_power = fire_lead_atk;
	a.clay_atk_power = fire_clay_atk;
	a.boss_atk_power = fire_boss_atk;
	a.knockback_power = fire_knockback;
	a.boss_knockback_power = fire_boss_knockback;
	a.image_index = 2 - ceil(i/2);
	a.can_hit_camo = can_hit_camo;
}