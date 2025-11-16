part_particles_create(global.particles,x,y,global.explosionpart,30); //change 30 to the number of particles you'd like to burst
audio_play_sound(snd_explosion_rocket,0,0)
instance_destroy(self,true)
