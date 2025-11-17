if not store.show_tower_icons {
	exit;	
}

draw_sprite_ext(sprite_index,image_index,x,y,draw_scale,draw_scale,image_angle,image_blend,image_alpha)
       
draw_set_font(fPrice14)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(text_blend);
    
draw_text(x,y+24+4,string_hash_to_newline("$"+string(price)));


