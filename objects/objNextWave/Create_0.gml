//state == 0: round is not playing
//state == 1: round is playing at normal speed
//state == 2: round is playing and sped up
state = 0;

//switch to this state after going from state 0
//changes if player speeds up room or not
saved_state = 1; 