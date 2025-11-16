//need to draw the player a pixel off in the y-axis when flipped for some reason
var drawY = y
if global.grav == -1 drawY += 1

draw_sprite_ext(sprite_index,image_index,x,drawY,xscale,global.grav,
image_angle,image_blend,image_alpha)

