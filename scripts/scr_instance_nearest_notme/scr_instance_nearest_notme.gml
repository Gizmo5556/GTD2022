// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_instance_nearest_notme(x, y, obj){
	instance_deactivate_object(self);
    var n = instance_nearest(x, y, obj);
    instance_activate_object(self);
    return n;
}