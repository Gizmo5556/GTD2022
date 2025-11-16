//destroy all the created buttons
with(upgrade_button) instance_destroy();
with(target_mode_button) instance_destroy();
with(lock_direction_button) instance_destroy();

//old code
/*with(button[0]) instance_destroy()
with(button[1]) instance_destroy()*/

instance_activate_object(objNextWave);