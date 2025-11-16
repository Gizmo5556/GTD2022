event_inherited();

prep_state = 0; //this is for the preparation. "state" is for the attack state and is mainly used in the step event, not end step.


//used for prep_state == 2, when The Guy is stepping forward towards the glass from BG
//start so that sin(step_forward_timer) is 0.5
step_forward_timer = 0; 

audio_play_sound(snd_break, 0, 0);