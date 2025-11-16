if hspeed != 0 or vspeed != 0 or yspeed != 0 {

    if bounce {
        if not place_free(x+hspeed,y) {
            hspeed = -hspeed
        }
        
        if not place_free(x,y+vspeed+yspeed)  {
            if vspeed != 0 {
                yspeed = -vspeed
                vspeed = 0
            }
            else {
                vspeed = -yspeed
                yspeed = 0
            }
        }
    }
    
    y += yspeed
    
    if global.grav == 1 {
        with instance_place(x,y-2,oPlayer) {
            y += other.vspeed + other.yspeed
            if place_free(x+other.hspeed,y) x += other.hspeed
        }
    }
    else {
        with instance_place(x,y+2,oPlayer) {
            y += other.vspeed + other.yspeed
            if place_free(x+other.hspeed,y) x += other.hspeed
        }
    }
    
    if vspeed < 0 {
        yspeed = vspeed
        vspeed = 0
    }
    if yspeed > 0 {
        vspeed = yspeed
        yspeed = 0
    }
}

