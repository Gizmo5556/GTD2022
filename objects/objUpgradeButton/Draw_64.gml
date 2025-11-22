if instance_exists(objUpgrades) and objUpgrades.is_choosing_direction { exit; }

var c = c_white;
var scale = 1;
if moused { scale = 1.1; }

//upgrade button is green with "SOLD" written if bought, red if can't purchase, gray if unavailable
//if upgraded {c = c_lime;}
//else if upgrade is available
//else {
//not bought but available -- normal blend
if ind != -999 {
	if global.money >= price {
		c = c_white;	
	}
	//not bought and unavailable
	else {
		c = c_gray;
	}
}
	
//}



draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c, 1);



//draws upgrade name
if global.option_language == global.option_language_options.EN {
	draw_set_font(fPrice14);
}
else if global.option_language == global.option_language_options.JP {
	draw_set_font(fKHDot16);
}
draw_set_halign(fa_center);
draw_set_valign(fa_top);
if ind != -999 {
	draw_text(x,y-70,"$ "+string(price));
	
	if global.option_language == global.option_language_options.EN {
		draw_set_font(fSmall)
	}
	else if global.option_language == global.option_language_options.JP {
		draw_set_font(fKHDot12);
	}
	draw_text(x,y+sprite_height/2+8,global.upgradeText[ind]);

	draw_set_color(c_black);
	draw_text_ext(x, y + sprite_height/2 + 80, global.upgradeDesc[ind], 16, 220);
}
else {
	if global.option_language == global.option_language_options.EN {
		draw_set_font(fSmall)
		draw_text(x,y+sprite_height/2+16,"UPGRADES MAXED!");
	}
	else if global.option_language == global.option_language_options.JP {
		draw_set_font(fKHDot12)
		draw_text(x,y+sprite_height/2+16,"最高アップグレード！");
	}
}

