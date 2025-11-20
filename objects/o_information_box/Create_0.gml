image_xscale = 2;
image_yscale = 2;
image_blend = global.image_blend_for_UI;

//initialize array with empty strings
for (var i = 1; i <= global.max_wave + 1; i++) {
	info_array[i] = "";	
}

//replace ones
info_array[100] = "The final final boss...\nGood luck!"
info_array[99] = "Almost there! But first have some fortified Yellow Devils :)"
info_array[98] = "Tons of fortified Devils this round."
info_array[95] = "Many, many camo fruit and Yellow Devils this round."
info_array[90] = "The Yellow Devil is a very fast boss fruit, but also has camo, lead, and black properties."
info_array[80] = "The final boss of very hard mode, the Green Devil! Very slow but very tough, it contains 4 Red Devils."
info_array[78] = "Surges of camo clays this wave."
info_array[76] = "Incoming: a ton of regenerative clays smooshed together. Get ready!"
//info_array[63] = "Lots of tightly-packed clays this round. You'll need a lot of firepower to take them down!"
info_array[62] = "Fortified Blue Devils up next."
//info_array[61] = "From here on out, clay fruit become much more dangerous and have 6x the usual amount of health. They won't create any rainbow fruit though."
info_array[60] = "The final boss of hard mode, the Red Devil! It has a ton of health and contains 4 Blue Devils."
info_array[59] = "Camo lead fruit and regenerative clays..."
info_array[45] = "Expect fortified lead and clay fruit soon. They are larger and have much more health."
info_array[40] = "The first boss fruit, the Blue Devil! At least that's what I'm calling it."
info_array[38] = "Clay fruit take several hits to destroy and contain 2 rainbow fruit."
info_array[35] = "Rainbow fruit are quick and contain 2 zebra fruit."
info_array[28] = "Lead fruit must be destroyed by explosions or powerful shots."
info_array[26] = "Zebra fruit have both white and black properties..."
info_array[24] = "Camo fruit are transparent and hard to detect."
info_array[22] = "White fruit are immune to freezing."
info_array[20] = "Black fruit are immune to explosions and contain 2 pink fruit."
info_array[3] = "You get $1 for each layer of fruit you destroy, and some bonus cash at the end of each round."

visible = false;

timer_until_invisible = 0;