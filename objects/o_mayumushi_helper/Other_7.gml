if sprite_index == main_sprite {
	image_index = 0;
	sprite_index = chomp_sprite;
	
	var a = instance_create(x, y, objExplosion);
	audio_play_sound(snd_mayu_bite, 0, 0);
	a.image_xscale = explosion_size*1.1;
	a.image_yscale = explosion_size;
	a.num_layers_to_pierce = num_layers_to_pierce;
	a.image_alpha = 0;
	a.explosion_power = explosion_power;
	a.can_hit_black = can_hit_black;
	a.can_hit_camo = can_hit_camo;
	a.can_hit_frozen = can_hit_frozen;
	a.can_hit_lead = can_hit_lead;
	a.can_hit_white = can_hit_white;
	a.boss_atk_power = boss_atk_power;
	a.clay_atk_power = clay_atk_power;
	a.lead_atk_power = lead_atk_power;
	a.extra_dmg_to_fortified_and_moab = extra_dmg_to_fortified;
	a.removes_regen_and_camo = removes_regen_and_camo;
}
else if sprite_index == chomp_sprite {
	is_fading = true;
}