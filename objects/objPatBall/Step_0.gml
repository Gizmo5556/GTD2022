//var objPlayer = objPlayer;
//var objPatBall = objPatBall;
//var objBullet = objBullet;

event_inherited();

if is_moving {
	if place_meeting(x,y,oPlayer) {
    var len = point_distance(oPlayer.x,oPlayer.y,x,y);
    var dir = point_direction(oPlayer.x,oPlayer.y,x,y);
    hspeed += lengthdir_x(len,dir)/5
    vspeed += lengthdir_y(len,dir)/5
    spin = random_range(-4,4)
	}
	var ball = instance_place(x,y,objPatBall);//position
	if ball != noone {
	    var len = point_distance(ball.x,ball.y,x,y);
	    var dir = point_direction(ball.x,ball.y,x,y);
	    hspeed += lengthdir_x(len,dir)/3
	    vspeed += lengthdir_y(len,dir)/3
	}
	var bullet = instance_place(x,y,oPlayerBullet)
	if bullet != noone {
	    //hspeed += bullet.hspeed/4
	    //with bullet instance_destroy()
	    hspeed += bullet.hspeed/8
	}
}



