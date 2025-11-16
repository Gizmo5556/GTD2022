speed=5

angle=0
trueangle=0
turnspeed=speed

audio_play_sound(snd_rocket_thrust,0,true)

t = 0;

pemi = part_emitter_create(global.particles);
//part_emitter_region(global.psys,pemi,0.0000,0.0000,0.0000,0.0000,ps_shape_rectangle,ps_distr_gaussian)
//part_emitter_stream(global.psys,pemi,global.explosionpart,2.0000);


