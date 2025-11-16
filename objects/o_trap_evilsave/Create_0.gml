
//0 -- waiting for fruit to blow up

//1 -- chasing fruit

//2 -- recharging
state = 0;

source_x = x;
source_y = y;

recharge_timer = 0;
recharge_timer_max = 250;

explosion_timer = 0;
explosion_timer_max = 30;

target_direction = point_direction(x, y, 800, 320);

explosions_left = 0;
num_explosions = 5;