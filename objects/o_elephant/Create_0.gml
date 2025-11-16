countdown_max = 40;
countdown = countdown_max;
spin = irandom_range(1, 5) * choose(1, -1);
audio_play_sound(snd_elephant, 0, 0);

//make elephant random color
image_blend = make_color_hsv(irandom_range(1, 255),255,255);