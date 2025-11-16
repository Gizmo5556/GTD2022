event_inherited()

image_xscale=1/2;
image_yscale=1/2;

image_speed=0


can_shoot_camo = false;
can_shoot_white = true;
can_shoot_black = true;
can_shoot_lead = false;
can_shoot_frozen = false;





cooldown_max = 35;
cooldown = 0;

bullet_speed = 18;

piercing = 1;

bullet_sprite = s_arrow;

bullet_size = 0.5;

are_bullets_tracking = false;

//how many tier 3+ srays boosting this sray?
sray_boosted_num = 0;

has_confusion = false;

num_bullets = 1;
bullet_spread = 15;
//store which angles to shoot at for quick calculations
//e.g., for 2 bullets one will be at -7.5 degrees and another at 7.5 degrees
angles_list = ds_list_create();
ds_list_add(angles_list, 0);

scr_update_sray_boosts();


