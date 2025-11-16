is_being_sucked = true;
direction = point_direction(x, y, 400, 304);
speed = parent.speed;
spin = irandom_range(1, 5) * choose(1, -1);
		
var dist = point_distance(x, y, 400, 304);
var scale_init = sign(image_xscale);
shrink = scale_init/(dist/speed);
//if choose(1,2) == 2 audio_play_sound(sndCherry, 0, 0);