part_particles_create(global.particles,x,y,global.explosionpart,30); //change 30 to the number of particles you'd like to burst
audio_play_sound(snd_explosion_rocket,0,0)

var a=instance_create_layer(other.x,other.y,"Bullets",objExplosion)
a.explosion_power = 25
a.visible = false;
a.image_xscale=0.25;
a.image_yscale=0.25;
a.can_hit_camo = true;
a.can_hit_lead = true;
a.can_hit_black = false;
a.can_hit_frozen = true;
a.can_hit_white = true;
a.clay_atk_power = 3;
a.lead_atk_power = 2;
a.boss_atk_power = 3;

instance_destroy(self,true)
