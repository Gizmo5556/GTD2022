if !surface_exists( surf ) { 
	surf = surface_create( surf_w, surf_h );
	surface_copy_part( surf, 0, 0, application_surface, 0, 0, surf_w, surf_h );
	//surface_copy(surf, 0, 0, application_surface)
}
surface_copy_part( surf, 0, 0, application_surface, 0, 0, surf_w, surf_h );
shader_set( sh_blackhole_simple );
shader_set_uniform_f(
    tex_transform, 
    sprite_width  / (surf_w), 
    sprite_height / (surf_h), 
    ( x - sprite_width/2)/1028, 
    ( y - sprite_height/2)/608,
	
)


texture_set_stage( sampler, surface_get_texture( surf ) );
draw_self();
shader_reset();