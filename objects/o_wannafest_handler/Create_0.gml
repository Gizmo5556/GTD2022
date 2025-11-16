//rounds_to_spawn_money = [5, 25, 45, 65, 85, 105, 125];
//dollar_worth_array = [3.0, 7.0, 10.0, 12.5, 20.0, 50.0, 50.0];

//rounds_to_spin_wheel = [15, 35, 55, 75, 95, 115, 135];

rounds_to_spawn_money = [5, 15, 25, 35, 45, 55, 65, 75, 85, 95, 105, 115, 125, 135];
dollar_worth_array = [2.0, 4.0, 7.0, 10.0, 14.0, 18.0, 25.0, 32.0, 40.0, 52.0, 70.0, 90.0, 110.0, 140.0];

rounds_to_spin_wheel = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140];



state = 0;
check_for_updates = true; //make this true for now, to avoid issues with saving/loading
update_rounds_left_until_event = true; // set this to true so we get it at the start of the game/load save
rounds_left_until_event = 99999;
event_name = "";
text_to_draw = "";
wheel_timer_text = ""; //copy of temp_text_to_draw, but isn't cleared after temp_text_to_draw goes away
temp_text_to_draw = ""; //used to display text different from "X Waves until Y"
draw_color = c_white;


dollar_worth = 1.0;
dollars_to_spawn = 100; //should probably not increase this too much to prevent performance issues

wheel = noone;

chosen_wheel_option = -1;
//covers both cases if an effect lasts for X seconds or X rounds
wheel_effect_frames_left = 0;
wheel_effect_frames_left_max = 0;
wheel_effect_rounds_left = 0;

draw_wheel_timer = false;
draw_main_text = true;

should_draw_gui = false;

//variables from objRoundController
objRC_dead = false;
objRC_is_choosing_to_continue = false;
objRC_is_choosing_freeplay = false;
objRC_all_waves_over = false;
objRC_running = false;

wheel_locked_down = false;



enum WANNAFEST_HANDLER_STATES {
	WAITING_UNTIL_CASH,
	SPAWNING_CASH,
	SPINNING_WHEEL,
	WAITING_UNTIL_SPIN,
	RUNNING_WHEEL_EVENT,
}

enum WANNAFEST_WHEEL_OPTIONS {
	REVERSE_PATH,
	SPEEDUP,
	BOSS_REGEN,
	CHERRY_RAIN,
}

// these sprites should match with what's in WANNAFEST_WHEEL_OPTIONS
global.wheel_sprites_array = [
	s_wfwheel_reverse_path,
	s_wfwheel_speedup,
	s_wfwheel_boss_regen,
	s_wfwheel_cherry_rain,

]


//draw pie vars
pie_rad = 64;
pie_color = c_green;




function draw_pie(xx, yy, value, max, colour, radius, transparency) {	

	if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360/numberofsections
    
	    val = (argument2/argument3) * numberofsections 
    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
	        draw_set_colour(argument4);
	        draw_set_alpha(argument6);
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(argument0, argument1);
        
	        for(i=0; i<=val; i++) {
	            len = (i*sizeofsection)+90; // the 90 here is the starting angle
	            tx = lengthdir_x(argument5, len);
	            ty = lengthdir_y(argument5, len);
	            draw_vertex(argument0+tx, argument1+ty);
	        }
	        draw_primitive_end();
        
	    }
	    draw_set_alpha(1);
	}

}


/*function draw_circular_bar(xx, yy, value, max, colour, radius, transparency, width) {	

	
if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (argument2/argument3) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        piesurface = surface_create(argument5*2,argument5*2)
            
        draw_set_colour(argument4);
        draw_set_alpha(argument6);
        
        surface_set_target(piesurface)
        
        draw_clear_alpha(c_blue,0.7)
        draw_clear_alpha(c_black,0)
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument5, argument5);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(argument5, len);
            ty = lengthdir_y(argument5, len);
            draw_vertex(argument5+tx, argument5+ty);
        }
        
        draw_primitive_end();
        
        draw_set_alpha(1);
        
        draw_set_blend_mode(bm_subtract)
        draw_set_colour(c_black)
        draw_circle(argument5-1, argument5-1,argument5-argument7,false)
        draw_set_blend_mode(bm_normal)

        surface_reset_target()
     
        draw_surface(piesurface,argument0-argument5, argument1-argument5)
        
        surface_free(piesurface)
        
    }
    
}*/