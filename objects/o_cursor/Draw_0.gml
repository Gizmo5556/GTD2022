if state != 2 {
	draw_sprite_ext(decoy_sprite, 0, decoy_x, decoy_y, decoy_xscale, decoy_yscale,
		0, decoy_image_blend, decoy_image_alpha);
}
draw_self();
