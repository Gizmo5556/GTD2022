ind=0
t=0

cooldown = 10

placeable = false;

alien_index = 0;

angle = 0;

index = 0;

obj = noone;

rad = 0;

scale = 1;

bhole = noone;

if room == r_blackhole {
	bhole = o_black_hole_gimmick.id;	
}

neon_texel = shader_get_uniform(sh_tijit_neon, "u_texel")

draw_blend = c_white;

