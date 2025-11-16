function scr_boshy_collision_circle_list(){
	
	/// collision_circle_list(x1,y1,radius,obj,prec,notme)
    //
    //  Returns a list data structure populated with the ids of instances 
    //  colliding with a given circle, or noone if no instances found.
    //
    //      x1,y1       center of the collision circle (filled), real
    //      radius      radius of the collision circle (filled), real
    //      obj         object to check for collision (or all), real
    //      prec        true for precise collision checking, bool
    //      notme       true to ignore the calling instance, bool
    //
    /// GMLscripts.com/license
    {
        var x1,y1,radius,obj,prec,notme,i,_list,boshy_id;
        x1 = argument0;
        y1 = argument1;
        radius = argument2;
        obj = argument3;
        prec = argument4;
        notme = argument5;
		_list = argument6;
		boshy_id = argument7;
        with (obj) {
            if (!notme || id != other.id) {
                i = collision_circle(x1,y1,radius,id,prec,false);
				//find fruit that is not being targeted by the current boshy
                if (i != noone) {
					//fruit must either be multi-health (lead/clay/boss) or not be targeted by another boshy
					if ((i.boshy_targeted_by == noone or i.boshy_targeted_by == boshy_id) and i.spider_piercing_left == 0) or i.hp > 1 {
						if not i.is_camo or (i.is_camo and (boshy_id.can_shoot_camo or boshy_id.is_boosted_by_camo_radar)) {
							ds_list_add(_list,i);
						}
					}
				}
			}
		}
	}
}