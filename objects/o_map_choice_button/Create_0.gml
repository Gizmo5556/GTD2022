//ds_list_destroy(medal_array);

/*
has_medium_medal = true;
has_hard_medal = true;
has_veryhard_medal = true;
has_impossible_medal = true;

image_yscale = medal_array;*/

// time = shader_get_uniform(sh_medal_shine, "iTime");

// Create Event
_uniUV         = shader_get_uniform(sh_medal_rainbow, "u_uv");
_uniTime       = shader_get_uniform(sh_medal_rainbow, "u_time");
_uniSpeed      = shader_get_uniform(sh_medal_rainbow, "u_speed");
_uniSection    = shader_get_uniform(sh_medal_rainbow, "u_section");
_uniSaturation = shader_get_uniform(sh_medal_rainbow, "u_saturation"); 
_uniBrightness = shader_get_uniform(sh_medal_rainbow, "u_brightness");
_uniMix        = shader_get_uniform(sh_medal_rainbow, "u_mix");

_time  = 0;
_speed = 1.0;
_section = 0.5;
_saturation = 0.7;
_brightness = 0.8;
_mix = 0.5; 

show_difficulty = true;