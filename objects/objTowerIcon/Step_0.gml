/*if not store.show_tower_icons {
	image_alpha = 0;
	exit;
}
else {
	image_alpha = 1;	
}*/

if instance_position(mouse_x, mouse_y, id) {
    moused=true
}
else moused=false

if moused { draw_scale = 1.1;}
else {draw_scale = 1; }

if global.money < price {
	image_blend = c_gray;
	text_blend = c_maroon;
}
else {
	image_blend = c_white;	
	text_blend = c_green;
}

price = global.price[ind];