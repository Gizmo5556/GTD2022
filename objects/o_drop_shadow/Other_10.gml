with o_drop_shadow_block{
	if visible {
		draw_sprite_ext(sprWhite, 0, x + 3, y + 3, image_xscale, image_yscale, 0, 0, 1);	
	}
  
}
with objTower {
	if visible {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, image_angle, 0, 1);	
	}
}
with o_bullet_parent {
	if visible {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, image_angle, 0, 1);	
	}
}
with o_fruit_layer_parent {
	if visible and image_alpha > 0 {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, 0, 0, 1);	
	}
}
with o_spikepile_layer_parent {
	if visible and image_alpha > 0 {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, image_angle, 0, 1);	
	}
}
with o_tower_layer_parent {
	if visible and image_alpha > 0 {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, image_angle, 0, 1);	
	}
}
with o_alien_prism {
	if visible and image_alpha > 0 {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, 0, 0, 1);	
	}
}
with o_untitled_trigger {
	if visible and image_alpha > 0 {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, 0, 0, 1);	
	}
}
with o_untitled_apple {
	if visible and image_alpha > 0 {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, 0, 0, 1);	
	}
}
with o_trap_seller_untitled {
	if visible and image_alpha > 0 {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, 0, 0, 1);	
	}
}
