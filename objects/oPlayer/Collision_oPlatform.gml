if global.grav == 1 {
    // touching platform
    if y-vspeed/2 <= other.y {
        
        // snap to platform
        if other.vspeed >= 0 {
            y = other.y-9
            vspeed = other.vspeed
        }
        onPlatform = true
        djump = true
    }
}
else {
    // touching platform
    if y-vspeed/2 >= other.y+other.sprite_height-1 {
    
        // snap to platform
        if other.yspeed <= 0 {
            y = other.y+other.sprite_height+8
            vspeed = other.yspeed
        }
        onPlatform = true
        djump = true
    }
}

