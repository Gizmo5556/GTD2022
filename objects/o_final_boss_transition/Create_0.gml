counter = 0;
sprite_draw_part_height = 131;
y_draw_base = y;
y_draw = y_draw_base;
x_draw_base = x;
x_draw = x_draw_base;

phase1_alpha = 0.67;
phase2_alpha = 0;
alpha_change = 0.01;

is_regen = false;
image_index_to_draw = 0;
red_eye_image_index_to_draw = 0;
phase2_sprite_to_draw = sprFinalBoss;

path_position_to_pass_on = 0;

audio_play_sound(sndFinalBossExplosion, 999999, 0);
audio_play_sound(sndFinalBossGrating, 999999, 0);


neon_texel = shader_get_uniform(sh_tijit_neon, "u_texel");
