x = 400;
y = 0;
image_xscale = 1.5;
image_yscale = 1.5;
timer = 5;
is_spawning = false;
new_path = noone;
destroy = false;


spawn_interval_frames = 1000000;
scr = noone;
camo = false;
fortified = false;
regen = false;
super_clay = false;


wave = global.wave + 1

if wave >= 140 {
	scr = scrSpawnAppleDDT
	spawn_interval_frames = 60;
	fortified = true;
	super_clay = true;
}
else if wave >= 130 {
	scr = scrSpawnAppleDDT
	spawn_interval_frames = 50;
	super_clay = true;
}
else if wave >= 120 {
	scr = scrSpawnAppleZOMG
	spawn_interval_frames = 85;
	super_clay = true;
}
else if wave >= 110 {
	scr = scrSpawnAppleBFB
	spawn_interval_frames = 58;
	fortified = true;
	super_clay = true;
}
else if wave >= 100 {
	scr = scrSpawnAppleBFB
	spawn_interval_frames = 40;
	super_clay = true;
}
else if wave >= 90 {
	scr = scrSpawnAppleMOAB
	spawn_interval_frames = 40;
	fortified = true;
	super_clay = true;
}
else if wave >= 80 {
	scr = scrSpawnAppleMOAB
	spawn_interval_frames = 40;
}
else if wave >= 70 {
	scr = scrSpawnAppleClay
	spawn_interval_frames = 25;
	camo = true;
	regen = true;
	fortified = true;
}
else if wave >= 60 {
	scr = scrSpawnAppleClay
	spawn_interval_frames = 25;
}
else if wave >= 50 {
	scr = scrSpawnAppleRainbow
	spawn_interval_frames = 25;
}
else if wave >= 40 {
	scr = scrSpawnAppleZebra
	spawn_interval_frames = 60;
}
else if wave >= 30 {
	scr = scrSpawnAppleWhite
	spawn_interval_frames = 50;
}
else if wave >= 20 {
	scr = scrSpawnAppleYellow
	spawn_interval_frames = 35;
}
else if wave >= 10 {
	scr = scrSpawnApple
	spawn_interval_frames = 25;
}



