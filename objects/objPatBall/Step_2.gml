//var objSaveBlocker = objSaveBlocker;
//var objBlock = objBlock;

if is_moving {
	speed *= 0.995

	if place_meeting(x,y,oBlock) {
	    x -= hspeed
	    y -= vspeed
	    if place_meeting(x,y+abs(vspeed),oBlock){
	        move_contact_solid(270,abs(vspeed))
	        vspeed = -vspeed * 0.8
	        y += vspeed
	    }
	    else if place_meeting(x,y-abs(vspeed),oBlock) {
	        move_contact_solid(90,abs(vspeed))
	        vspeed = -vspeed * 0.8
	        y += vspeed
	    }
	    if place_meeting(x+hspeed,y,oBlock)  {
	        if hspeed > 0 move_contact_solid(0,hspeed)
	        else move_contact_solid(180,abs(hspeed))
	        hspeed = -hspeed * 0.9
	        x += hspeed
	    }
	}

	if x < -50 or x > room_width+50 or y < -50 or y > 650 {
	    instance_destroy()
	}

	image_angle += spin
}



