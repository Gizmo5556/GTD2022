image_xscale = 2;
image_yscale = 2;

if instance_exists(objRoundController) {
	round_controller = objRoundController;	
}

y_dest = 176;

spd = 0.1;

state = 0;

rbe_left_max = 700;

rbe_left = rbe_left_max;

start_y = y;

recharge_time = 250;
recharge_left = 0;

direction = 90;