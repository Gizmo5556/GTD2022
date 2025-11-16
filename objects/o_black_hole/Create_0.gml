surf = -1;
surf_w = 800;
surf_h = 608;
tex_transform = shader_get_uniform( sh_blackhole, "tex_transform" );
sampler = shader_get_sampler_index( sh_blackhole, "tex_back" );
time = shader_get_uniform(sh_blackhole, "iTime");
twist_strength = 1.0;
twist_strength_id = shader_get_uniform(sh_blackhole, "twist");


image_xscale = 4.25;
image_yscale = 4.25;

gpu_set_texrepeat(true);

x = 544; //4.25 / 3.125 = 1.36 (i use 3.125 since that xscale seems to place it at the center automatically), 1.36 * 400 = 544
y = 304;