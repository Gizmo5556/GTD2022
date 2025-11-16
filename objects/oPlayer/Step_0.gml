/// @description  standard player movement (with YoYoYoDude1's fixed vines)
/// @param with YoYoYoDude1's fixed vines

event_inherited();

var notOnBlock = place_free(x,y+global.grav)
var onVineL = place_meeting(x-1,y,oWalljumpL) and notOnBlock
var onVineR = place_meeting(x+1,y,oWalljumpR) and notOnBlock
var slipBlockTouching = instance_place(x,y+4*global.grav,oSlipBlock)

var h = 0
if not super_frozen {
	
	if not frozen {
	    if keyboard_check_direct(global.key_right) {
	        h = 1
	    }
	    else if keyboard_check_direct(global.key_left) {
	        h = -1
	    }
	}

	// moving
	if h != 0 {
	    if not onVineL and not onVineR {
	        xscale = h
	    }
	    if (h == -1 and not onVineR) or (h == 1 and not onVineL) {
	        if slipBlockTouching == noone {
	            hspeed = maxSpeed * h
	        }
	        else {
	            if (h == 1 and hspeed < maxSpeed) or (h == -1 and hspeed > -maxSpeed) {
	                hspeed += slipBlockTouching.slip * h
	            }
	        }
	        sprite_index = sPlayerRunning
	        image_speed = 0.5
	    }
	}
	// not moving
	else {
	    if slipBlockTouching == noone {
	        hspeed = 0
	    }
	    else {
	        if hspeed > 0 {
	            hspeed -= slipBlockTouching.slip
	            if hspeed <= 0 hspeed = 0
	        }
	        else if hspeed < 0 {
	            hspeed += slipBlockTouching.slip
	            if hspeed >= 0 hspeed = 0
	        }
	    }
	    sprite_index = sPlayerIdle
	    image_speed = 0.2
	}

	// set jump/fall sprite
	if not onPlatform {
	    if vspeed*global.grav < -0.05 {
	        sprite_index = sPlayerJump
	    }
	    else if vspeed*global.grav > 0.05 {
	        sprite_index = sPlayerFall
	    }
	}

	// fall off platform
	if onPlatform and not place_meeting(x,y+4*global.grav,oPlatform) {
	    onPlatform = false
	}

	// slide block
	var slideBlockTouching = instance_place(x,y+global.grav,oSlideBlock)
	if slideBlockTouching != noone {
	    hspeed += slideBlockTouching.h
	}

	// terminal velocity
	if abs(vspeed) > maxVSpeed {
	    vspeed = sign(vspeed)*maxVSpeed
	}

	// jump, shoot, suicide
	if not frozen {
	    if keyboard_check_pressed(global.key_shoot) playerShoot()
	    if keyboard_check_pressed(global.key_jump) playerJump()
	    if keyboard_check_released(global.key_jump) playerVJump()
	}

	// walljumps
	if onVineL or onVineR {
	    if onVineR xscale = -1
	    else xscale = 1
	    vspeed = 2*global.grav
	    sprite_index = sPlayerSliding
	    image_speed = 0.5
    
	    // pressed away from the vine
	    if (onVineL and keyboard_check_pressed(global.key_right))
	    or (onVineR and keyboard_check_pressed(global.key_left)) {
        
	        // jumping off vine
	        if keyboard_check(global.key_jump) {
	            if onVineR hspeed = -15
	            else hspeed = 15
	            vspeed = -9 * global.grav
	            audio_play_sound(sndWallJump,0,false)
	            sprite_index = sPlayerJump
	        }
        
	        // falling off vine
	        else {
	            if onVineR hspeed = -3
	            else hspeed = 3
	            sprite_index = sPlayerFall
	        }
	    }
	}


}
