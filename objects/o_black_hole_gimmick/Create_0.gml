surf = -1;
surf_w = 1028;
surf_h = 608;
sampler = shader_get_sampler_index( sh_blackhole_simple, "tex_back" );
tex_transform = shader_get_uniform( sh_blackhole_simple, "tex_transform" );

image_xscale = 1.255;
image_yscale = 1.255;

goal_scale = 0.0;

is_growing = false;

gpu_set_texrepeat(true)

x = 400;
y = 304;