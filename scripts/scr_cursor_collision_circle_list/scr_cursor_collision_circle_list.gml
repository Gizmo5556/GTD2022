// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cursor_collision_circle_list(){
	var x1,y1,radius,obj,prec,notme,i,_list;
    x1 = argument0;
    y1 = argument1;
    radius = argument2;
    obj = argument3;
    prec = argument4;
    notme = argument5;
	_list = argument6;
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_circle(x1,y1,radius,id,prec,false);
            if (i != noone) {
				if not i.is_camo or (i.is_camo and (other.can_shoot_camo or other.is_boosted_by_camo_radar)) {
					//if i.object_index != objAppleZOMG or (i.object_index == objAppleZOMG and other.cursors_left >= 2) {
						if i.object_index != objAppleBAD and i.object_index != objBoss_phase1 and i.object_index != objAppleBAD_extra {
							ds_list_add(_list,i);
						}
					//}
				}
			}
		}
	}
}