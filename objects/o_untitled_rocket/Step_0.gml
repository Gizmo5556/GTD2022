
if instance_exists(target){
    /*
    angle=point_direction(x,y,target.x,target.y)
    trueangle=approach(trueangle,angle,turnspeed)
    direction=trueangle
    */
    
    // Turn towards the target by two degrees (or less if necessary).
    angle = point_direction(x, y, target.x, target.y);
    trueangle = angle_difference(angle, direction);
    direction += sign(trueangle) * turnspeed;
    //direction += sign(trueangle) * min(2, abs(trueangle));
}

else if instance_exists(objApple) {
	target = instance_nearest(x, y, objApple);
	angle = point_direction(x, y, target.x, target.y);
    trueangle = angle_difference(angle, direction);
    direction += sign(trueangle) * turnspeed;
}

image_angle=direction

//rocket smoke

gg=instance_create(x,y,o_rocket_smoke)
//gg.sprite_index=s_warp
gg.image_blend=$DDDDDD
gg.speed=random_range(2,4)
gg.direction=(direction+(random_range(-20,20)+180))
gg.image_xscale=random_range(.15,.5)
gg.image_yscale=gg.image_xscale
gg.image_angle=random(360)
gg.depth=99

t++

/* */
/*  */

