event_inherited();

//acidic mixture dip -- lets other towers damage lead fruit and do more damage to clays/bosses
has_amd = true;

amd_cooldown_max = 500;
amd_cooldown = 0;
//how many shots does this last for?
amd_shot_count = 10;
amd_clay_damage_boost = 1;
amd_boss_damage_boost = 1;

//berserker brew -- more pierce, range, attack speed, and damage
has_brew = false;

brew_cooldown_max = 400;
brew_cooldown = 0;

brew_clay_damage_boost = 1;
brew_boss_damage_boost = 1;
brew_piercing_boost = 2;
brew_range_boost = 1.1; //multiplier for range
brew_cooldown_boost = 0.9; //mutliplier for cooldown_max

//how many frames does this last?
brew_duration = 250;
//brew can also end after this many attacks
brew_shot_count = 25;

//after a tower loses the brew buff, they must wait this many frames before receiving the buff from ANY colonel
brew_waiting_duration = 250;


can_target = false;

if room == r_neon and global.option_neon_shader {
	image_blend = c_purple;	
}