///@desc not used i guess? idk one day i checked in here and it was all commented out so i guess i won't touch it

/*if instance_exists(objUpgrades) and objUpgrades.is_choosing_direction { exit; }

var c = c_white;
var scale = 1;
var xx = 0;
if moused { scale = 1.1; xx = 4 }

//upgrade button is green with "SOLD" written if bought, red if can't purchase, gray if unavailable
//if upgraded {c = c_lime;}
//else if upgrade is available
//else {
	//not bought but available -- normal blend
	if ind != -999 {
		if global.money >= global.upgrade[ind] {
			c = c_white;	
		}
		//not bought and unavailable
		else {
			c = c_gray;
		}
	}
	
//}



draw_sprite_ext(sprite_index,image_index,x-xx,y-xx,scale,scale,image_angle,c,1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draws upgrade name

draw_set_font(fPrice)

if ind != -999 and not has_calculated_price {
	//does this upgrade have a village discount?
	var has_discount = false;
	if parent_tower.is_boosted_by_discount and ind % 5 < 3 { has_discount = true; }

	price = global.upgrade[ind];
	
	if has_discount {
		price *= parent_tower.heart_received_discount_boost;
		//round price and set it to closest multiple of 5
		price = 5 * round(price / 5);
	}
	
	
	
	has_calculated_price = true;
}



if ind != -999 {
	draw_text(x,y-60,"$ "+string(price));
	
	draw_set_font(fSmall)
	draw_text(x,y+sprite_height/2+16,global.upgradeText[ind]);

	draw_set_color(c_black);
	draw_text_ext(x, y + sprite_height/2 + 96, global.upgradeDesc[ind], 16, 220);
}
else {
	draw_set_font(fSmall)
	draw_text(x,y+sprite_height/2+16,"UPGRADES MAXED!");	
}

*/