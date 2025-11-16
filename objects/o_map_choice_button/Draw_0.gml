function set_medal_shader(_sprite, _x, _y) {
	// Draw Event
	shader_set(sh_medal_rainbow);
	var uv = sprite_get_uvs(sprite_index, image_index);
	shader_set_uniform_f(_uniUV, uv[0], uv[2]);
	shader_set_uniform_f(_uniSpeed, _speed);
	shader_set_uniform_f(_uniTime, _time);
	shader_set_uniform_f(_uniSaturation, _saturation);
	shader_set_uniform_f(_uniBrightness, _brightness);
	shader_set_uniform_f(_uniSection, _section);
	shader_set_uniform_f(_uniMix, _mix);
	draw_sprite(_sprite, 0, _x, _y);
	shader_reset();

}


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fSmall);
draw_set_color(c_white);
//draw_text(x + sprite_width / 2, y - 32, game_name);
draw_text(x + sprite_width / 2, y - 32, game_room_name);
draw_set_color(diff_color);
if show_difficulty {
	draw_text(x + sprite_width / 2, y - 16, map_diff);
}
draw_self();

if has_medium_medal {
	var _x = x + 20;
	var _y = y + 150;
	var _sprite = s_medal_medium;

	if has_medium_medal == 2 {
		set_medal_shader(_sprite, _x, _y);
	}
	else {
		draw_sprite(_sprite, 0, _x, _y)
	}
}
if has_hard_medal {
	var _x = x + 85;
	var _y = y + 150;
	var _sprite = s_medal_hard;
	if has_hard_medal == 2 {
		set_medal_shader(_sprite, _x, _y);
	}
	else {
		draw_sprite(_sprite, 0, _x, _y)
	}
}	
if has_veryhard_medal {
	var _x = x + 150;
	var _y = y + 150;
	var _sprite = s_medal_veryhard;
	if has_veryhard_medal == 2 {
		set_medal_shader(_sprite, _x, _y);
	}
	else {
		draw_sprite(_sprite, 0, _x, _y)
	}
}	
if has_impossible_medal {
	var _x = x + 215;
	var _y = y + 150;
	var _sprite = s_medal_impossible;
	if has_impossible_medal == 2 {
		set_medal_shader(_sprite, _x, _y);
	}
	else {
		draw_sprite(_sprite, 0, _x, _y)
	}
}	
