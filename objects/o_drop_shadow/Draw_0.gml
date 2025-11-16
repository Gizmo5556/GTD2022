
//Create surface if it doesn't exist
if(!surface_exists(surf)) {
    surf = surface_create(1600, 1216);
}

//Clear the surface, then draw shadow sprites onto surface (at full opacity)
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

event_user(0);


surface_reset_target();

//Draw the surface
draw_surface_ext(surf,0,0,1,1,0,c_white,.35);


//x+3-view_xview[0]+(.5*view_wview[0]),y+3-view_yview[0]+(.5*view_hview[0])


