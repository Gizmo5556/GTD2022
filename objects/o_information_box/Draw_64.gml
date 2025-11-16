draw_self();

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_set_color(c_black);

draw_set_font(fPrice);

draw_text_ext(x, y, info_array[global.wave + 1], 16, 600);

draw_set_font(fSmall);

draw_text(x, y + 84, "Click to dismiss");