countdown--;
if countdown == 0 {
	instance_create_layer(400, 304, "Spike_Piles_Top", o_elephant_explosion);
	audio_play_sound(snd_elephant_explosion, 0, 0);
	instance_destroy()
}
image_xscale = countdown/countdown_max;
image_yscale = image_xscale;

image_angle += spin;