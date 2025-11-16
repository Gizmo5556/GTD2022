/// @description scrDrawTextOutline(x,y,string,textcolor,outlinecolor)
/// @param x
/// @param y
/// @param string
/// @param textcolor
/// @param outlinecolor
///draws any text with an outline
///argument0 - text X position
///argument1 - text Y position
///argument2 - text string
///argument3 - color of the text inside the outline
///argument4 - color of the text outline
function scrDrawTextOutline(argument0, argument1, argument2, argument3, argument4) {

	var textX = argument0;
	var textY = argument1;
	var textStr = argument2;
	var textColor = argument3;
	var outlineColor = argument4;
	
	var sep = 16;
	var w = 128;
	//second case: use 9999 for wheel event names, which have colorful outlines
	if room == r_options or (room == r_wannafest and outlineColor != c_black) {
		w = 9999;	
	}

	//draw the text outline
	draw_set_color(outlineColor);
	draw_text_ext(textX-1,textY+1,textStr, sep, w);
	draw_text_ext(textX-1,textY,textStr, sep, w);
	draw_text_ext(textX-1,textY-1,textStr, sep, w);
	draw_text_ext(textX+1,textY+1,textStr, sep, w);
	draw_text_ext(textX+1,textY,textStr, sep, w);
	draw_text_ext(textX+1,textY-1,textStr, sep, w);
	draw_text_ext(textX,textY+1,textStr, sep, w);
	draw_text_ext(textX,textY-1,textStr, sep, w);

	//draw the text itself
	draw_set_color(textColor);
	draw_text_ext(textX,textY,textStr, sep, w);



}
