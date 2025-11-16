event_inherited()

cooldown_max = 38;
cooldown = 0;

bullet_speed = 20;

bullet_size = 1;

piercing = 1;

bullet_sprite = s_geezer_bullet_red;

has_advanced_tracking = true;

has_spiny = false;
spiny_cooldown_max = 220;
spiny_cooldown = 0;
spiny_can_shoot_frozen = false;
spiny_can_shoot_lead = false;

has_octorok = false;
has_multi_octorok = false;
octorok_cooldown_max = 75;
octorok_cooldown = 0;
octorok_draw_angle = 0;
octorok_clay_atk_power = 1;
octorok_boss_atk_power = 1;
frag_damage = 1;

has_spike_storm = false;
has_used_spike_storm = false;
ss_cooldown_max = 40*50;
ss_cooldown = 0;
ss_spikes_left = 0;
ss_spikes_per_pile = 10;
spiny_clay_atk_power = 1;
spiny_boss_atk_power = 1;
//spike_storm_round_cooldown = 0;
spiny_spike_num = 6;

cursor = noone;
has_cursor = false;
//cursors_left_max = 9999999;
//cursors_left = 9999999;
cursor_cooldown_max = 600;
cursor_cooldown = 0;
cursor_target = noone;

round_controller_id = objRoundController.id;

change_to_idle_timer_max = 115;
change_to_idle_timer = 25;

image_speed = 0.2;

image_xscale = 2;
image_yscale = 2;

octorok_image_blend = c_white;
if room == r_neon and global.option_neon_shader {
	octorok_image_blend = c_orange;	
}