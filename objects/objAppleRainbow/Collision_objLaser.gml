if pierced == other.id exit;

audio_play_sound(sndBossHit,0,0)

if hp <= 0 {

thing = other.id;

event_user(0)

instance_destroy()
global.money += scrGetWorth(object_index);

}
else hp -= 5

