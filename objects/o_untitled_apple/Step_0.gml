if active==false and delay<1{
    if collision_rectangle(256, 96, 800, 576, objApple, 0, false) {
        child=instance_create(x,y,o_untitled_rocket)
		child.target = scr_get_target_untitled();
        child.direction=point_direction(x,y,child.target.x, child.target.y)
        audio_play_sound(snd_rocket_fire,0,0)
    }
}

active=instance_exists(child)


if active=true{
    delay=20
}
delay--
