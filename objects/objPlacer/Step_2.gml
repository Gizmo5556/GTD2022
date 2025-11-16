///@desc calculate if placeable

x = mouse_x
y = mouse_y

var is_overlapping_another_tower = place_meeting(x,y,objTower);
var is_on_tower_placement_mask = position_meeting(x,y,o_tower_placement_mask)
var is_on_anti_placement_mask = position_meeting(x,y,o_anti_placement_mask_coinstack);

if room == r_blackhole {
	if position_meeting(mouse_x, mouse_y, bhole) or bhole.is_growing {
		is_on_tower_placement_mask = false;
	}
}
	
if x < 0 || y < 0 || x > 800 || y > 608 || is_overlapping_another_tower 
|| not is_on_tower_placement_mask || is_on_anti_placement_mask {
    placeable=false
}
else placeable = true



