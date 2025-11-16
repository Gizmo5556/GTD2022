// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_can_spawn_fruit(time_start, fruit_count, time_interval){
	return timer >= time_start and (timer - time_start) % time_interval == 0 and timer < time_start + time_interval*fruit_count;
}