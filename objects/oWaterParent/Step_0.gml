if place_meeting(x,y,oPlayer) {
    with oPlayer
    {
        if other.refresh_djump {
            djump = true
        }
        if vspeed*global.grav > 2 {
            vspeed = 2*global.grav
        }
    }
}

