function scr_dd_collision_circle_list(){
	
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
				//fruit can be downdrafted if it's not lead and not a boss
                if (i != noone) {
					if not i.is_camo or (i.is_camo and ( other.is_boosted_by_camo_radar or other.can_shoot_camo )) {//if not i.is_lead or (i.is_lead and other.can_downdraft_lead) {
						if not i.is_boss {//or (i.object_index == objAppleMOAB and other.can_downdraft_moab) {
							ds_list_add(_list,i);
						}
					}
				}
			}
		}
	}
}