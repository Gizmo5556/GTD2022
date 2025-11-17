mainInit()
randomize();
shouldSaveOnRoomStart = false
room_goto(rTitle)

target_depth = 244;
depth = target_depth;

//create a few variables to store shader uniform handles
global.shader_inv_dest_color_destination = shader_get_sampler_index( shader_inv_dest_color, "destination");
global.shader_inv_dest_color_texel_size = shader_get_uniform( shader_inv_dest_color, "texel_size" );
//also define the values of texture size components (used to convert from vertex position to destination texcoord).
global.tex = sprite_get_texture(s_catharsis_spikes2, 0); //sprite_get_texture(s_catharsis_spikes2, 0);
global.texel_w = texture_get_texel_width(global.tex)
global.texel_h = texture_get_texel_height(global.tex)



//has_created_funny_surface = false;

is_paused = false;

hue = 260;
hue_add = 2;

sprite_surface = noone;