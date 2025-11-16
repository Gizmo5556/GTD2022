if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

//see if colonel buff status matches with miketyson main -- if it doesn't, update everything appropriately
if amd_buff_active != viridian.amd_buff_active {
	viridian.amd_buff_active = amd_buff_active;
	
	viridian.amd_received_clay_damage_boost = amd_received_clay_damage_boost;
	viridian.amd_received_boss_damage_boost = amd_received_boss_damage_boost;
}
if brew_buff_active != viridian.brew_buff_active {
	viridian.brew_buff_active = brew_buff_active;
	
	
	
	viridian.brew_received_range_boost = brew_received_range_boost;
	viridian.brew_received_cooldown_boost = brew_received_cooldown_boost;
	viridian.brew_received_clay_damage_boost = brew_received_clay_damage_boost;
	viridian.brew_received_boss_damage_boost = brew_received_boss_damage_boost;
	viridian.brew_received_piercing_boost = brew_received_piercing_boost;
	viridian.brew_received_waiting_duration = brew_received_waiting_duration;
}
if is_boosted_by_camo_radar != viridian.is_boosted_by_camo_radar {
	viridian.is_boosted_by_camo_radar = is_boosted_by_camo_radar;	
}
if is_boosted_by_jungle_drums != viridian.is_boosted_by_jungle_drums {
	viridian.is_boosted_by_jungle_drums = is_boosted_by_jungle_drums;
	viridian.heart_received_jungle_boost = heart_received_jungle_boost;
}
if is_boosted_by_mib != viridian.is_boosted_by_mib {
	viridian.is_boosted_by_mib = is_boosted_by_mib;	
}