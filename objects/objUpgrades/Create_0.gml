parent = noone
alarm[0]=1
num=0

//sell button
//button[0] = instance_create_layer(x+114,y+500,"sell_button",o_sell_icon)
//button[0].image_blend = c_red;

//upgrade button
upgrade_button = instance_create_layer(x+114,y+298,"sell_button",objUpgradeButton);

//targeting mode button
target_mode_button = instance_create_layer(x+114,y+150,"sell_button",o_target_mode_button);
target_mode_button.image_alpha = 0;

//lock direction button (for alien)
lock_direction_button = instance_create_layer(x + 114, y + 200, "sell_button", o_lock_direction_button);
is_choosing_direction = false;

//parent coordinates
px = 0
py = 0

buff_array = array_create(0)