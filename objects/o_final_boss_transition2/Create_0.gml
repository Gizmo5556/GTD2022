counter = 0;
sprite_draw_part_height = 251;
y_draw_base = y-121;
y_draw = y_draw_base;
x_draw_base = x;
x_draw = x_draw_base;

phase1_alpha = 0.67;

is_regen = false;


audio_stop_all();
audio_sound_pitch(audio_play_sound(sndThwomp,0,0),0.4);
audio_play_sound(sndFinalBossExplosion, 999999, 0);
audio_play_sound(sndFinalBossGrating, 999999, 0);

sprite_to_draw = sprFinalBoss;

neon_texel = shader_get_uniform(sh_tijit_neon, "u_texel");