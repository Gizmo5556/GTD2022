event_inherited()

image_xscale=0.25
image_yscale=0.25

has_heart_range_upgrade = true; //tower starts with this
has_camo_radar = false;
has_jungle_drums = false;
has_discount_upgrade = false;
has_mib = false;

jungle_drums_boost_multiplier = 0.85;
discount_multiplier = 0.9;
heart_range_multiplier = 1.1;

can_target = false;

if room == r_neon and global.option_neon_shader {
	image_blend = c_red;
}

