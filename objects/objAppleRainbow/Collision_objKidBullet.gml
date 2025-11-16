if pierced == other.id exit;

if other.piercing==0 {
with(other) instance_destroy()
}
else other.piercing--

audio_play_sound(sndBossHit,0,0)

if hp <= 0 {

thing = other.id;

event_user(0)

instance_destroy()
global.money += scrGetWorth(object_index);

}
else hp --

