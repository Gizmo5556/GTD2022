event_inherited();

buffer = 64;

contains = noone;
num = 0;

max_hp = 8000 * global.health_ramp;

hp = max_hp;

image_speed = 0;

image_xscale *= 1
image_yscale *= 1;

is_boss = true;

rbe = 8000;

strength = 16;

spawns_super_clays = false;

is_regen = false;

//create four "arms" of the boss
arm_UR = instance_create_layer(x + buffer, y - buffer, "Fruit", o_arm_UR);
arm_UR.parent_boss = id;

arm_UL = instance_create_layer(x - buffer, y - buffer, "Fruit", o_arm_UL);
arm_UL.parent_boss = id;

arm_LR = instance_create_layer(x + buffer, y + buffer, "Fruit", o_arm_LR);
arm_LR.parent_boss = id;

arm_LL = instance_create_layer(x - buffer, y + buffer, "Fruit", o_arm_LL);
arm_LL.parent_boss = id;

arm_array = [arm_UR, arm_UL, arm_LR, arm_LL];

depth += 4;

audio_stop_sound(global.music);
audio_stop_sound(musFinalBoss);
audio_stop_sound(musFinalBoss2);

//phase 1 music is a little quiet so i use a multiplier
audio_sound_gain(musFinalBoss, global.music_volume * 1.75, 0);
audio_sound_gain(musFinalBoss2, 0, 0);
global.music = audio_play_sound(musFinalBoss,999999,true);
var final_boss_mus2 = audio_play_sound(musFinalBoss2, 999999, true);
//mute phase 2 music until phase 2 starts

original_blend = c_white;

image_blend = original_blend;
