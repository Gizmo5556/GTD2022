//tower is id of tower being upgraded
//upgrade num is index of the upgrade
//price is how much money was spent on the upgrade -- by default it is the stored price for that upgrade 
//	without any discounts applied
function scr_upgrade_tower(tower, upgrade_num, price=global.upgrade[upgrade_num]){
	
	//MAKE SURE TO PLACE BREAKS IN PROPER POSITIONS
	
	tower.upgrade_count++;
	tower.total_money_spent += price;
	
	//sets upgrade_num to 0, 1, 2, 3, 4 -- 0 is 1st upgrade, 1 is 2nd upgrade, etc
	upgrade_num = upgrade_num % 5;
	
	switch(tower.object_index) {
	    case objShootingKid:
			switch(upgrade_num) {
				case 0:
					tower.cooldown_max = 40;
					tower.bullet_speed = 30;
					break;
				case 1:
					tower.can_shoot_camo = true;
					tower.base_radius = 144;
					tower.sprite_index = s_kid_glasses;
					break;
				case 2:
					tower.piercing = 5;
					tower.bullet_size = 5;
					break;
				case 3:
				//should be able to break the clay layers in 55 and 63, but not go much beyond that.
				//still sucks against wave 40
					tower.sprite_index = s_kid_moon;
					tower.has_bouncing_bullets = true;
					tower.num_bounces = 1;
					tower.piercing = 50;
					tower.base_radius = 158;
					tower.bullet_speed = 36;
					tower.clay_atk_power = 5;
					tower.bullet_sprite = s_moon;
					tower.bullet_size = 0.28;
					tower.cooldown_max = 33;
					tower.can_shoot_lead = true;
					tower.can_shoot_frozen = true;
					tower.lead_atk_power = 2;
					tower.boss_atk_power = 2;
					break;
				case 4:
				//should still suck against bosses.
				//should do a little damage on wave 40, but rarely break the boss layer
				//should be able to beat or almost beat wave 55 EXCEPT for the boss at the end (no village/alch)
				//should also be able to beat/almost beat wave 63 and 76, no village/alch
				//should also be able to beat/almost beat wave 78, except for the BFB
					tower.piercing = 400;
					tower.has_multi_moon = true;
					tower.num_bounces = 3;
					tower.bullet_size = 0.32;
					tower.bullet_sprite = s_moon;
					//tower.bullet_size = 0.56;
					tower.clay_atk_power = 13;
					tower.lead_atk_power = 25;
					tower.boss_atk_power = 2.5;
					break;
				
		}
		break;
			
		case objTurret:
			switch(upgrade_num) {
				case 0:
					tower.base_radius = 90;
					break;
				case 1:
					tower.cooldown_max = 39;
					tower.bullet_speed = 12;
					break;
				case 2:
					tower.number_of_bullets = 16;
					tower.cooldown_max = 28;
					tower.sprite_index = s_turret_shipment;
					break;
				case 3:
					tower.cooldown_max = 10;
					tower.piercing = 1;
					tower.sprite_index = s_turret_gears;
					break;
				case 4:
				//any less piercing and it's not able to take down waves like 60, 
				//which it should be able to -- honestly maybe it should get more piercing
				//it should also be able to barely beat 76 if placed optimally
				
				//note -- above comment is outdated as of 1.03. turret should be strong against the bosses but not as strong against clays/non-boss fruit.
					tower.piercing = 2; 
					tower.base_radius = 115;
					tower.number_of_bullets = 32;
					tower.cooldown_max = 6;
					tower.lead_atk_power = 1;
					tower.clay_atk_power = 1;
					tower.boss_atk_power = 2;
					break;
				
			}
		break;
			
		case o_miku:
			switch(upgrade_num) {
				case 0:
					tower.base_radius = 160;
					tower.bullet_sprite = sprLeek;
					break;
				case 1:
					tower.cooldown_max = 40;
					tower.bullet_speed = 19;
					tower.bullet_sprite = s_radish;
					tower.sprite_index = s_miku_radish;
					break;
				case 2:
					tower.piercing = 3;
					tower.can_shoot_lead = true;
					tower.can_shoot_frozen = true;
					tower.lead_atk_power = 2;
					tower.clay_atk_power = 2;
					tower.boss_atk_power = 2;
					tower.bullet_sprite = sprBroccoli;
					tower.sprite_index = s_miku_broccoli;
					break;
				case 3:
					//tower.piercing = 5;
					tower.base_radius = 172;
					tower.is_moab_press = true; //all the moab press related data is already in miku's code
					break;
				case 4:
					tower.piercing = 10;
					tower.cooldown_max = 15;
					tower.base_radius = 200;
					tower.moab_press_knockback = 0.02;
					tower.moab_press_atk_power = 400;
					tower.clay_atk_power = 9;
					tower.lead_atk_power = 9;
					tower.moab_press_cooldown_max = 150;
					tower.moab_press_bullet_sprite = s_pizza;
					tower.moab_press_piercing = 300;
					break;
			}
			break;
			
			
		case objThwomp:
			switch(upgrade_num) {
				case 0:
					tower.cooldown_max = 56;
					tower.explosion_size = 0.8;
					tower.explosion_power = 20;
					break;
				case 1:
					tower.bullet_speed = 12;
					tower.is_cluster_bomb = true;
					tower.base_radius = 140;
					tower.piercing = 0; //mini thwomps can hit 1 fruit
					tower.frag_damage = 1;
					break;
				case 2:
					tower.base_radius = 150;
					tower.bullet_speed = 16;
					tower.boss_atk_power = 17;
					tower.clay_atk_power = 2;
					tower.lead_atk_power = 2;
					tower.cooldown_max = 45;
					tower.explosion_size = 1;
					tower.explosion_power = 30;
					tower.num_layers_to_pierce = 2;
					tower.sprite_index = sprThwompTNT;
					break;
				case 3:
					tower.explosion_size = 1.2;
					tower.explosion_power = 50;
					tower.boss_atk_power = 18;
					tower.lead_atk_power = 4;
					tower.clay_atk_power = 5;
					tower.frag_damage = 2;
					tower.piercing = 1;
					tower.knockback_power = 0.015;
					tower.base_radius = 155;
					break;
				case 4:
					tower.can_shoot_black = true;
					tower.piercing = 19;
					tower.boss_atk_power = 30;
					tower.clay_atk_power = 11;
					tower.frag_damage = 7;
					tower.explosion_power = 110;
					tower.explosion_size = 1.5;
					tower.knockback_power = 0.0525;
					tower.boss_knockback_power = 0.02;
					tower.sprite_index = s_thwomp_nuke;
					break;
					
			}
			break;
			
		case objAlien:
			switch(upgrade_num) {
				case 0:
					tower.can_launch_ufo = true;
					break;
				case 1:
					tower.cooldown_max = 65;
					tower.main_laser_lifetime = 2;
					tower.can_shoot_camo = true;
					tower.ufo_cooldown_max = 335;
					break;
				case 2:
					tower.cooldown_max = 45;
					tower.ufo_cooldown_max = 230;
					tower.can_shoot_lead = true;
					tower.image_blend = c_aqua;
					break;
				case 3:
					tower.num_lasers = 4;
					tower.laser_lifetime = 1;
					tower.clay_atk_power = 2;
					tower.boss_atk_power = 2;
					tower.lead_atk_power = 2;
					tower.main_laser_size = 8;
					tower.main_laser_lifetime = 3;
					tower.main_laser_sprite = s_big_laser;
					tower.main_laser_lead_atk = 4;
					tower.main_laser_clay_atk = 4;
					tower.main_laser_boss_atk = 4;
					//visual upgrade change -- done in obj code
					tower.prism = instance_create_layer(tower.x, tower.y, "Towers", o_alien_prism);
					tower.prism.parent_tower = tower;
					break;
				case 4:
					tower.cooldown_max = 32;
					tower.ufo_max_strength = 12.5; //can now abduct fortified MOABs
					tower.ufo_cooldown_max = 175;
					tower.num_lasers = 8;
					tower.laser_lifetime = 2;
					tower.clay_atk_power = 5;
					tower.boss_atk_power = 10;
					tower.lead_atk_power = 5;
					tower.main_laser_lifetime = 3;
					tower.main_laser_lead_atk = 10;
					tower.main_laser_clay_atk = 10;
					tower.main_laser_boss_atk = 28;
					break;
					
			}
			break;
			
			
		case objTheGuy:
			switch(upgrade_num) {
				case 0:
					tower.base_radius = 264;
					tower.sprite_index = s_guy_earth;
					break;
				case 1:
					tower.can_launch_grenades = true;
					tower.piercing = 1;
					break;
				case 2:
					tower.bullet_sprite = s_energy_shot;
					tower.bullet_size = 2;
					tower.piercing = 3;
					tower.fire_piercing = 10;
					tower.fire_boss_atk = 3;
					tower.fire_lead_atk = 4;
					tower.fire_clay_atk = 4;
					tower.lead_atk_power = 2;
					tower.clay_atk_power = 2;
					tower.boss_atk_power = 2;
					tower.grenade_cooldown_max = 225;
					tower.can_shoot_lead = true;
					tower.can_shoot_frozen = true;
					tower.can_shoot_camo = true;
					tower.sprite_index = s_guy_cannon;
					break;
				case 3:
					tower.can_launch_energy_shots = true;
					tower.boss_atk_power = 6;
					tower.piercing = 12;
					tower.knockback_power = 0.001;
					break;
				case 4:
					tower.is_final_form = true;
					tower.base_radius = 1100;
					break;
					
			}
			break;
			
		case o_miketyson_base:
			switch(upgrade_num) {
				case 0:
					tower.mike_tyson.pursuit_speed = 8;
					break;
				case 1:
					//tower.mike_tyson.punch_cooldown_max = 18;
					tower.mike_tyson.explosion_power = 12;
					tower.mike_tyson.bullet_size = 1.25;
					tower.mike_tyson.can_shoot_lead = true;
					tower.mike_tyson.can_shoot_frozen = true;
					tower.mike_tyson.attack_radius = 33;
					tower.mike_tyson.num_layers_to_pierce = 4;
					tower.mike_tyson.boss_atk_power = 4;
					tower.mike_tyson.clay_atk_power = 4;
					tower.mike_tyson.lead_atk_power = 4;
					tower.mike_tyson.sprite_idle = s_miketyson_idle_mosq;
					tower.mike_tyson.sprite_punch = s_miketyson_punch_mosq;
					tower.mike_tyson.sprite_index = s_miketyson_idle_mosq;
					break;
				case 2:
					tower.mike_tyson.has_downdraft = true;
					tower.mike_tyson.downdraft_cooldown_max = 6;
					tower.mike_tyson.can_downdraft_lead = true;
					tower.mike_tyson.explosion_power = 20;
					tower.mike_tyson.bullet_size = 1.375;
					tower.mike_tyson.clay_atk_power = 4.5;
					break;
				case 3:
					//tier 4 tyson should be able to take down wave 63 (not too easily though), but not 80
					//should also just barely be able to take down wave 77 on rGuy
					//in btd6 tier 4 cannot take down wave 76 but that is a bad comparison since
					//regen works differently here
					//should also be able to take down wave 78 if given camo detection
					
					//tower.mike_tyson.explosion_power = 69;
					tower.mike_tyson.pursuit_speed = 20;
					tower.mike_tyson.boss_atk_power = 6.5;
					tower.mike_tyson.clay_atk_power = 6.5;
					tower.mike_tyson.lead_atk_power = 8;
					//tower.mike_tyson.punch_cooldown_max = 8;
					tower.mike_tyson.num_layers_to_pierce = 11;
					//tower.mike_tyson.downdraft_counter_max = 210;
					//tower.mike_tyson.downdraft_cooldown_max = 6;
					//tower.mike_tyson.downdraft_num_max = 11;
					break;
				case 4:
					//tower.mike_tyson.punch_cooldown_max = 20;
					tower.mike_tyson.has_explosive_punches = true;
					//tower.mike_tyson.can_downdraft_moab = true; -- might be too OP
					tower.mike_tyson.explosion_power = 120;
					tower.mike_tyson.boss_atk_power = 50;
					tower.mike_tyson.clay_atk_power = 50;
					tower.mike_tyson.lead_atk_power = 50;
					tower.mike_tyson.num_layers_to_pierce = 32;
					//tower.mike_tyson.downdraft_counter_max = 250;
					//tower.mike_tyson.downdraft_num_max = 20;
					tower.moon = instance_create_layer(tower.x, tower.y, "Towers", o_alien_prism);
					tower.moon.sprite_index = s_moon;
					tower.moon.image_xscale = 0.2;
					tower.moon.image_yscale = 0.2;
					tower.moon.spin = irandom_range(1, 5) * choose(-1, 1);
					tower.moon.parent_tower = tower;
					//tower.mike_tyson.bullet_size = 2; -- also might be too OP
					break;
					
			}
			break;
			
		case o_boshy:
			switch(upgrade_num) {
				//NOTE: boshy really only has 2 separate damage values -- piercing and clay_atk_power
				//clay_atk_power is used for clays and piercing for everything else
				case 0:
					tower.piercing = 3;
					tower.clay_atk_power = 3;
					tower.can_shoot_lead = true;
					tower.can_shoot_frozen = true;
					break;
				case 1:
					tower.cooldown_max = 39;
					tower.piercing = 4;
					tower.clay_atk_power = 4;
					tower.sprite_index = s_boshy_charmer;
					break;
				case 2:
					tower.piercing = 20;
					tower.clay_atk_power = 35;
					break;
				case 3:
					tower.piercing = 30;
					tower.clay_atk_power = 45;
					tower.maim_moab_type = 1;
					break;
				case 4:
					tower.piercing = 80;
					tower.clay_atk_power = 95;
					tower.maim_moab_type = 2;
					tower.sprite_index = s_boshy_dark;
					break;
					
			}
			break;
			
		case o_colonel:
			switch(upgrade_num) {
				case 0:
					tower.amd_shot_count = 13;
					//tower can't use brew yet but changes anyway to reflect perishing potions equivalent
					tower.brew_duration = 300;
					tower.brew_shot_count = 40;
					tower.brew_waiting_duration = 200;
					break;
				case 1:
					tower.amd_cooldown_max = 375;
					tower.brew_cooldown_max = 300;
					break;
				case 2:
					tower.has_brew = true;
					tower.sprite_index = s_colonel_brew;
					break;
				case 3:
					tower.brew_clay_damage_boost = 2;
					tower.brew_boss_damage_boost = 2;
					tower.brew_piercing_boost = 3;
					tower.brew_range_boost = 1.15;
					tower.brew_cooldown_boost = 0.85;
					tower.brew_duration = 650;
					tower.brew_shot_count = 55;
					tower.brew_waiting_duration = 200;
					tower.sprite_index = s_godwin;
					tower.image_xscale = 0.6;
					tower.image_yscale = 0.6;
					break;
				case 4:
					tower.brew_waiting_duration = 1;
					tower.brew_duration = 999999;
					tower.brew_shot_count = 999999;
					tower.sprite_index = s_godwin_perma;
					break;
					
			}
			break;
			
			
		case o_seong:
			switch(upgrade_num) {
				case 0:
					tower.bullet_is_tracking = true; //simple tracking
					tower.piercing = 4;
					break;
				case 1:
					tower.can_shoot_camo = true;
					tower.piercing = 7;
					tower.has_explosives = true;
					break;
				case 2:
					tower.base_radius = 164;
					with tower {
						num_bats = 2;
					//create the actual bats
						var bat = instance_create_layer(x, y, "Bullets", o_baseball_bat)
						ds_list_add(bat_list, bat);
						bat.image_angle = 0;
						bat.spin = -1.75;
						bat.depth = depth + 1;
						bat.parent_tower = id;
						
						bat = instance_create_layer(x, y, "Bullets", o_baseball_bat)
						ds_list_add(bat_list, bat);
						bat.image_angle = 180;
						bat.spin = 1.75;
						bat.depth = depth + 1;
						bat.parent_tower = id;
					}
					
					break;
				case 3:
					tower.has_bonus_stats = true;
					tower.previous_fruit_destroyed = global.total_fruit_destroyed;
					tower.piercing = 8;
					tower.cooldown_max = 50;
					tower.explosive_cooldown_max = 135;
					tower.boss_atk_power = 2;
					tower.clay_atk_power = 2;
					tower.lead_atk_power = 2;
					tower.uses_bosses_to_count = true;
					for (var i = 0; i < ds_list_size(tower.bat_list); i++) {
						tower.bat_list[|i].spin *= 2.4;
					}
					tower.bullet_size = 1.5;
					break;
				case 4:
					with tower {
						//normal stat upgrades
						//piercing = 20;
						boss_atk_power = 2.5;
						clay_atk_power = 6.75;
						lead_atk_power = 6;
						can_shoot_lead = true;
						can_explosives_shoot_black = true;
						
						//upgrades to bonus system -- how much bonus stuff does killing a boss give?
						boss_bonus_amount = 18;
						//pop_count_multiplier = 1.1;
						previous_bosses_destroyed = global.total_bosses_destroyed;
						max_bonus_cooldown = 0.15;
						max_bonus_damage = 2.6;
						max_bonus_range = 1.7;
						max_bonus_piercing = 8;
						cooldown_divisor = pop_count_cap/(1 - max_bonus_cooldown);
						damage_divisor = pop_count_cap/max_bonus_damage;
						range_divisor = pop_count_cap/(max_bonus_range - 1);
						piercing_divisor = pop_count_cap/max_bonus_piercing;
						//unused i think
						bonus_cooldown_reset = 0.8;
						bonus_damage_reset = 2;
						bonus_range_reset = 1.25;
						bonus_piercing_reset = 10;
						overall_reset_multiplier = 0.7;
					}
					
					break;
					
			}
			break;
			
			
		case o_stickykeys:
			switch(upgrade_num) {
				case 0:
					tower.slow_duration = 1200;
					tower.sprite_index = s_stickykeys_syrup;
					break;
				case 1:
					tower.has_rubberizer = true;
					tower.piercing = 1;
					break;
				case 2:
					tower.can_shoot_boss = true;
					tower.bullet_size = 1.5;
					tower.piercing = 2;
					break;
				case 3:
					tower.has_bloon_sabotage = true;
					objRoundController.bs_round_cooldown = 0;
					tower.sprite_index = s_stickykeys_2000;
					break;
				case 4:
					tower.has_stripping = true;
					tower.piercing = 39;
					break;
					
			}
			break;
			
			
		case o_heart:
			switch(upgrade_num) {
				case 0:
					tower.has_discount_upgrade = true;
					tower.sprite_index = s_heart_gold;
					break;
				case 1:
					tower.base_radius = 150;
					tower.discount_multiplier = 0.85;
					break;
				case 2:
					tower.has_camo_radar = true;
					tower.sprite_index = s_heart_camera;
					break;
				case 3:
					tower.has_jungle_drums = true;
					break;
				case 4:
					tower.has_mib = true;
					break;
					
			}
			//after upgrading village, update which towers are boosted by villages
			//(and which boosts they get)
			scr_update_village_upgrades();

			break;
			
		case o_spact:
			switch(upgrade_num) {
				case 0:
					tower.has_fast_start = true;
					tower.cooldown_max = 79;
					tower.sprite_index = s_spact_mobile;
					break;
				case 1:
					tower.cooldown_max = 49;
					tower.spike_time_left = 3750;
					break;
				case 2:
					tower.spike_time_left = 7000;
					tower.spike_rounds_left = 2;
					break;
				case 3:
					tower.sprite_index = s_spact_whet;
					tower.spike_pile_sprite = s_spike_pile_whet;
					tower.lead_atk_power = 2;
					tower.clay_atk_power = 2;
					tower.boss_atk_power = 2;
					tower.layers_to_pierce = 2;
					tower.spike_rounds_left = 3;
					//half cooldown but double spikes per pile to help reduce instance count
					tower.cooldown_max = 98;
					tower.num_spikes_per_pile = 10;
					break;
				case 4:
					tower.sprite_index = s_spact_GLD;
					tower.spike_pile_sprite = s_spike_pile_GLD;
					tower.cooldown_max = 136;
					tower.num_spikes_per_pile = 50;
					tower.lead_atk_power = 10;
					tower.clay_atk_power = 10;
					tower.boss_atk_power = 10;
					tower.layers_to_pierce = 10;
					tower.spike_rounds_left = 4;
					tower.spike_time_left = 15000;
					tower.spike_pile_sprite = s_spike_pile_GLD;
					break;
			}
			break;
			
		case o_cirno:
			switch(upgrade_num) {
				case 0:
					tower.base_radius = 86;
					tower.explosion_size = 2.7;
					break;
				case 1:
					tower.can_shoot_lead = true;
					tower.can_shoot_camo = true;
					tower.cooldown_max = 90;
					tower.frozen_duration = 110;
					/*tower.grad_cap = instance_create_layer(tower.x, tower.y-24, "Towers", o_grad_cap);
					tower.grad_cap.image_xscale = 0.1;
					tower.grad_cap.image_yscale = 0.1;
					tower.grad_cap.depth = tower.depth - 1;*/
					break;
				case 2:
					tower.has_ice_wall = true;
					break;
				case 3:
					tower.base_radius = 172;
					tower.has_cryo_cannon = true;
					tower.can_target = true;
					tower.can_shoot_frozen = true;
					tower.explosion_power = 50;
					
					tower.has_embrittle = true;
					/*tower.cirno_gun = instance_create_layer(tower.x, tower.y+24, "Towers", o_cirno_gun);
					tower.cirno_gun.image_xscale = 0.07;
					tower.cirno_gun.image_yscale = 0.07;
					tower.cirno_gun.depth = tower.depth - 1;*/
					break;
				case 4:
					tower.bullet_sprite = s_impale;
					tower.has_impale = true;
					tower.cryo_boss_atk_power = 50;
					tower.cryo_cooldown_max = 37;
					tower.cryo_piercing = 75;
					tower.can_shoot_white = true;
					tower.can_shoot_frozen = true;
					tower.cryo_layers_to_pierce = 4;
					tower.cryo_clay_atk_power = 4;
					tower.explosion_power = 70;
					break;
			}
			break;
			
			
		case o_sray:
			switch(upgrade_num) {
				case 0:
					tower.can_shoot_camo = true;
					tower.sprite_index = s_sray_glasses;
					break;
				case 1:
					tower.has_confusion = true;
					tower.cooldown_max = 22;
					tower.base_radius = 150;
					tower.bullet_sprite = s_arrow2;
					break;
				case 2:
					tower.are_bullets_tracking = true; //simple tracking
					tower.num_bullets = 2;
					tower.piercing = 3;
					tower.bullet_sprite = s_arrow3;
					tower.sprite_index = s_sray_ambidextrous;
					with tower {scr_calculate_sray_angles();}
					break;
				case 3:
					tower.num_bullets = 5;
					tower.base_radius = 158;
					tower.sprite_index = s_sray_multi;
					with tower {scr_calculate_sray_angles();}
					break;
				case 4:
					tower.num_bullets = 8;
					tower.lead_atk_power = 2;
					tower.clay_atk_power = 2;
					tower.boss_atk_power = 2;
					tower.cooldown_max = 11;
					tower.base_radius = 180;
					tower.bullet_speed = 24;
					tower.bullet_sprite = s_arrow4;
					tower.sprite_index = s_sray_partyrock;
					with tower {scr_calculate_sray_angles();}
					break;
			}
			scr_update_sray_boosts();
			break;
			
			
		case o_geezer:
			switch(upgrade_num) {
				case 0:
					tower.has_spiny = true;
					break;
				case 1:
					tower.has_octorok = true;
					break;
				case 2:
					tower.cooldown_max = 13;
					tower.spiny_cooldown_max = 168;
					tower.octorok_cooldown_max = 56;
					tower.piercing = 15;
					break;
				case 3:
					tower.has_spike_storm = true;
					tower.has_multi_octorok = true;
					tower.frag_damage = 2.5;
					tower.octorok_clay_atk_power = 3;
					tower.octorok_boss_atk_power = 6;
					tower.clay_atk_power = 3;
					break;
				case 4:
					tower.has_cursor = true;
					tower.cooldown_max = 7;
					tower.spiny_cooldown_max = 84;
					tower.octorok_cooldown_max = 28;
					tower.clay_atk_power = 10;
					tower.octorok_clay_atk_power = 3;
					tower.octorok_boss_atk_power = 9;
					tower.piercing = 16;
					tower.frag_damage = 7;
					tower.spiny_spike_num = 10;
					tower.ss_spikes_per_pile = 20;
					tower.spiny_can_shoot_frozen = true;
					tower.spiny_can_shoot_lead = true;
					break;
			}
			break;
			
		case o_viridian_base:
			switch(upgrade_num) {
				case 0:
					tower.viridian.has_heart_bombs = true;
					break;
				case 1:
					tower.viridian.can_shoot_camo = true;
					tower.viridian.heart_bomb_cooldown_max = 75;
					tower.viridian.cooldown_max = 63;
					tower.viridian.sprite_index = s_viridian_pilot;
					break;
				case 2:
					tower.viridian.has_fighter_plane = true;
					tower.viridian.number_of_bullets = 12;
					break;
				case 3:
					tower.viridian.has_tracking = true;
					tower.viridian.are_bombs_tracking = true;
					tower.viridian.piercing = 7;
					tower.viridian.explosion_power = 32;
					break;
				case 4:
					tower.viridian.has_elephant = true;
					tower.viridian.sprite_index = s_viridian_tusk;
					break;
			}
			break;
			
		case o_mayumushi:
			switch(upgrade_num) {
				case 0:
					tower.can_shoot_lead = true;
					tower.can_shoot_frozen = true;
					tower.extra_dmg_to_fortified = true;
					tower.sprite_index = s_mayumushi_sharp;
					tower.helper_sprite = s_mayumushi_helper_sharp;
					tower.helper_chomp_sprite = s_mayumushi_helper_chomp_sharp;
					break;
				case 1:
					tower.can_shoot_camo = true;
					tower.cooldown_max = 81;
					tower.removes_regen_and_camo = true;
					break;
				case 2:
					tower.cooldown_max = 54;
					tower.large_scale = 3;
					tower.explosion_size = 1.0;
					tower.explosion_power = 45;
					tower.num_layers_to_pierce = 2;
					tower.lead_atk_power = 2;
					tower.clay_atk_power = 2;
					tower.boss_atk_power = 2;
					break;
				case 3:
					tower.num_layers_to_pierce = 5;
					tower.lead_atk_power = 5;
					tower.clay_atk_power = 5;
					tower.boss_atk_power = 5;
					tower.large_scale = 4.5;
					tower.explosion_size = 1.5;
					tower.explosion_power = 85;
					tower.sprite_index = s_mayumushi_caterpillar;
					tower.base_scale = 1;
					tower.large_scale_modifier = 0.5;
					break;
				case 4:
					tower.num_layers_to_pierce = 25;
					tower.lead_atk_power = 25;
					tower.clay_atk_power = 50;
					tower.boss_atk_power = 45;
					tower.explosion_power = 200;
					tower.large_scale = 5.625;
					tower.explosion_size = 1.875;
					break;
			}
			break;
	}
	
	//update radius if the tower is already buffed
	with tower {
		scr_update_tower_range();
	}
	
	
}