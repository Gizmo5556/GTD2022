var a = instance_create_layer(bbox_left, bbox_top, "Fruit", o_final_boss_transition);
a.is_regen = is_regen;
a.path_position_to_pass_on = path_position;
a.path_to_pass_on = pth;

//audio_stop_sound(global.music);


global.total_fruit_destroyed++;
