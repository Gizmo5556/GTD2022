does_placer_exist = instance_exists(objPlacer);
does_upgrades_UI_exist = instance_exists(objUpgrades)
moused = instance_position(mouse_x, mouse_y, id);
show_tower_icons = moused and not does_placer_exist and not does_upgrades_UI_exist

if not show_tower_icons {
	instance_deactivate_object(objTowerIcon);
}
else {
	instance_activate_object(objTowerIcon);
}
