//same as normal get target script but only finds those not already targeted by a boshy
function scr_get_target_glue(targeting_mode){
	
	var target = noone;
	var _list = ds_list_create();
	
	switch(targeting_mode) {
		
		//first
		case 0:
			//get all instances that are within the tower's range
			scr_glue_collision_circle_list(x,y,radius,objApple,0,0,_list);
			
			if ds_list_size(_list) > 0 {
				//now find the instance that is farthest along the path using path_position
				target = _list[|0];
				for (var i = 0; i < ds_list_size(_list); i++) {
					if (_list[|i].path_position > target.path_position) {
						target = _list[|i];	
					}
				}
			}
			break;
			
		//last
		case 1:
			//get all instances that are within the tower's range
			scr_glue_collision_circle_list(x,y,radius,objApple,0,0,_list);
			
			if ds_list_size(_list) > 0 {
			
				//now find the instance that has traveled the path the least (similar to first targeting but with a switched inequality sign)
				target = _list[|0];
				for (var i = 0; i < ds_list_size(_list); i++) {
					if (_list[|i].path_position < target.path_position) {
						target = _list[|i];	
					}
				}
			}
			break;
			
		//close
		case 2:
			//get all instances that are within the tower's range
			//NOTE: we cannot use instance_nearest in this case, we will use our custom collision_circle_list script
			scr_glue_collision_circle_list(x,y,radius,objApple,0,0,_list);
			
			if ds_list_size(_list) > 0 {
				//now find the instance that is closest to boshy
				target = _list[|0];
				//distance from boshy to closest target found so far
				var target_dist = point_distance(x, y, target.x, target.y);
				for (var i = 0; i < ds_list_size(_list); i++) {
					//distance from boshy to new target
					var compared_dist = point_distance(x, y, _list[|i].x, _list[|i].y)
					if (compared_dist < target_dist) {
						target = _list[|i];
						target_dist = compared_dist;
					}
				}
			}
			break;
			
			
		//strong
		case 3:
			//get all instances that are within the tower's range
			scr_glue_collision_circle_list(x,y,radius,objApple,0,0,_list);
			
			if ds_list_size(_list) > 0 {
				//similar to first/last, but now compare the strength variables
				target = _list[|0];
				for (var i = 0; i < ds_list_size(_list); i++) {
					if (_list[|i].strength > target.strength) {
						target = _list[|i];	
					}
					//if two strenghts are equal, choose the one farthest along the path
					else if (_list[|i].strength == target.strength) {
						if (_list[|i].path_position > target.path_position) {
							target = _list[|i];	
						}
					}
				}
			}
			break;
	}
	ds_list_destroy(_list);
	return target;

}