t++
angle = 15*sin((2*pi/60)*t)

if cooldown > 0 cooldown--

alien_index += 0.8;
draw_blend = c_white;

switch(ind) {
    case 0:
        spr = sPlayerFall;
        scale = 2;
        obj = objShootingKid;
		draw_blend = make_color_hsv(170, 100, 250);
    break;
    case 1:
        spr = sprTurretPlace;
        obj = objTurret;
		draw_blend = c_ltgray;
    break;
    case 2:
        spr = sprMiku;
		scale = 1/3;
        obj = o_miku;
		draw_blend = c_aqua;
    break;
    case 3:
        spr = sprThwomp;
        obj = objThwomp;
		draw_blend = c_ltgray;
    break;
    case 4:
        spr = sprVeryCool;
        obj = objAlien;
		draw_blend = c_lime;
        index = alien_index;
    break;
    case 5:
        spr = sprTheGuyFalling;
        obj = objTheGuy;
		draw_blend = make_color_hsv(170, 100, 250);
    break;
	case 6:
		spr = s_miketyson_head;
		obj = o_miketyson_base;
		draw_blend = make_color_hsv(14, 239, 200);
	break;
	case 7:
		spr = s_boshy;
		obj = o_boshy;
		draw_blend = c_yellow;
	break;
	case 8:
		spr = s_colonel;
		obj = o_colonel;
		draw_blend = c_purple;
	break;
	case 9:
		spr = s_seong;
		obj = o_seong;
		draw_blend = c_olive;
	break;
	case 10:
		spr = s_stickykeys;
		obj = o_stickykeys;
		draw_blend = c_silver;
		//scale = 0.5;
	break;
	case 11:
		spr = s_heart;
		obj = o_heart;
		scale = 0.25;
		draw_blend = c_red;
	break;
	case 12:
		spr = s_spact;
		obj = o_spact;
		draw_blend = c_yellow;
	break;
	case 13:
		spr = s_cirno;
		obj = o_cirno;
		draw_blend = c_aqua;
	break;
	case 14:
		spr = s_sray;
		obj = o_sray;
		draw_blend = make_color_rgb(215, 160, 64);
		scale = 0.5;
	break;
	case 15:
		spr = s_geezer_idle;
		obj = o_geezer;
		draw_blend = c_lime;
		scale = 2;
	break;
	case 16:
		spr = s_viridian_head;
		obj = o_viridian_base;
		draw_blend = make_color_hsv(140, 255, 240);
	break;
	case 17:
		spr = s_mayumushi;
		obj = o_mayumushi;
		draw_blend = c_white;
	break;
}

if room != r_neon or not global.option_neon_shader {
	draw_blend = c_white;	
}

sprite_index = spr;

heart_rad_bonus = 1.0;

colonel_rad_bonus = 1.0;

sray_boost_count = 0;

buff_array = array_create(0);

//show updated range if tower were placed within range of a heart
with o_heart {
	//if proposed tower placement coords are within range of a heart
	if collision_circle(x, y, radius, other, 0, 0) {
		other.heart_rad_bonus = heart_range_multiplier;
		array_push(other.buff_array, "heart");
		break;
	}
}

with o_colonel {
	//if proposed tower placement coords are within range of a heart
	if collision_circle(x, y, radius, other, 0, 0) {
		if has_brew {
			var is_brew_already_pushed = false;
			for (var i = 0; i < array_length(other.buff_array); i++) {
				if other.buff_array[i] == "brew" {
					is_brew_already_pushed = true;
				}
			}
			if not is_brew_already_pushed {
				array_push(other.buff_array, "brew");
			}
			
			other.colonel_rad_bonus = max(brew_range_boost, other.colonel_rad_bonus);
		}
		var is_amd_already_pushed = false;
		for (var i = 0; i < array_length(other.buff_array); i++) {
			if other.buff_array[i] == "amd" {
				is_amd_already_pushed = true;
			}
		}
		if not is_amd_already_pushed {
			array_push(other.buff_array, "amd");
		}
	}
}

with o_wannafest_throne_buff {
	if other.placeable and instance_place(x, y, other) {
		other.colonel_rad_bonus = 1.15;
		other.heart_rad_bonus = 1.10;
		array_push(other.buff_array, "heart");
		array_push(other.buff_array, "brew");
	}
}

if obj == o_sray {
	with o_sray {
		if collision_circle(x, y, radius, other, 0, 0) and upgrade_count >= 3 {
			other.sray_boost_count = min(other.sray_boost_count + 1, 20);
			var is_sray_already_pushed = false;
			for (var i = 0; i < array_length(other.buff_array); i++) {
				if other.buff_array[i] == "sray" {
					is_sray_already_pushed = true;
				}
			}
			if not is_sray_already_pushed {
				array_push(other.buff_array, "sray");
			}
		}
	}
}


rad = scrGetRadius(obj) * heart_rad_bonus * colonel_rad_bonus;
