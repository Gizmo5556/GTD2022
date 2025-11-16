// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_is_weak_to_elephant(bomb_id){
	
	
	if hp <= bomb_id.boss_atk_power {
		return true;	
	}
	return false;
}