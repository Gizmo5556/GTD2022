if position_meeting(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

if room == r_neon and global.option_neon_shader and upgrade_count >= 1 {
	image_blend = c_yellow;
}