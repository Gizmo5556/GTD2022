/// @description  set interpolation for whether the game is in fullscreen or not (have to delay by a frame)
/// @param have to delay by a frame
gpu_set_texfilter(false);

//switching between windowed and fullscreen will destroy the surface anyway
//this is just for peace of mind
if surface_exists(sprite_surface) {
	surface_free(sprite_surface)
}
