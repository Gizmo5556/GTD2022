function scrUpgradePrices() {
	//upgrade prices and names for 
	
	//Kid
	global.upgrade[0] = 90; // Better Gun
	global.upgrade[1] = 250; // Excellent Vision
	global.upgrade[2] = 400; // Sharpened Bullets
	global.upgrade[3] = 1850; // Moon-o-pult
	global.upgrade[4] = 16000; // The Chosen One
	
	//Spike Turret
	global.upgrade[5] = 85; // Longer Barrels
	global.upgrade[6] = 400; // Slippery Spikes
	global.upgrade[7] = 650; // Spike Shipment
	global.upgrade[8] = 3200; // Greased Gears
	global.upgrade[9] = 20000; // Spike Storm
	
	//Miku
	global.upgrade[10] = 100; // Long Range Leek
	global.upgrade[11] = 375; // Rapid Radishes
	global.upgrade[12] = 750; // Boiled Broccoli
	global.upgrade[13] = 2300; // Queen Cabbage
	global.upgrade[14] = 50000; // Veggie Deluxe Pizza
	
	//Thwomp
	global.upgrade[15] = 400; // Extra Gunpowder
	global.upgrade[16] = 500; // Baby Thwomps
	global.upgrade[17] = 1650; // Ballistic Bombs
	global.upgrade[18] = 4800; // Shockwave
	global.upgrade[19] = 54000; //Tsar Thwompa
	
	// Marcianito
	global.upgrade[20] = 450; // UFO Buddy
	global.upgrade[21] = 1100; // Alien Tech
	global.upgrade[22] = 1750; // Supercharged Batteries
	global.upgrade[23] = 7500; // Prism
	global.upgrade[24] = 57850; // UFO PORNO
	
	// The Guy
	global.upgrade[25] = 1200; // Mr. Worldwide
	global.upgrade[26] = 3500; // Incendiary Grenades
	global.upgrade[27] = 4000; // Screen-Clearing Cannon
	global.upgrade[28] = 8250; // Critical Shots
	global.upgrade[29] = 60000; // True Form
	
	// Mike Tyson
	global.upgrade[30] = 400; // Dance like a fly...
	global.upgrade[31] = 2000; // ...Bite like a mosquito!
	global.upgrade[32] = 3000; // Initmidation
	global.upgrade[33] = 17500; // Below the Belt // reduced to account for paying for downdraft instead of razor rotors
	global.upgrade[34] = 45000; // The Baddest Man on the Planet
	
	// Boshy
	global.upgrade[35] = 300; // Aggressive Spiders
	global.upgrade[36] = 800; // Spider Charmer
	global.upgrade[37] = 3250; // Journey to the Center of the Fruit
	global.upgrade[38] = 6250; // Potent Venom
	global.upgrade[39] = 32500; // Arachnophobia
	
	// Colonel Schwarlitz
	global.upgrade[40] = 250; // General Schwarlitz
	global.upgrade[41] = 650; // Colonel-in-chief
	global.upgrade[42] = 1375; // Battle Cry
	global.upgrade[43] = 3250; // Colonel Godwin
	global.upgrade[44] = 54000; // Cry of the Last TIS
	
	// Lee Ho-Seong
	global.upgrade[45] = 270; // Curveball
	global.upgrade[46] = 780; // Fastball
	global.upgrade[47] = 1500; // Slugger's Scanner
	global.upgrade[48] = 4000; // Loading the Bases
	global.upgrade[49] = 23500; // Grand Slam
	
	// Sticky Keys
	global.upgrade[50] = 120; // Stickier Keys
	global.upgrade[51] = 500; // Rubber Fruit
	global.upgrade[52] = 3000; // Larger Glitches
	global.upgrade[53] = 4250; // Millennium Bug
	global.upgrade[54] = 11000; // Privilege De-escalation
	
	// Heart
	global.upgrade[55] = 400; // Heart of Gold
	global.upgrade[56] = 600; // Stronger Heartbeats
	global.upgrade[57] = 1675; // Aorta on Alert
	global.upgrade[58] = 1725; // Pumpin' Blood
	global.upgrade[59] = 7250; // Versatile Veins
	
	// Spike Factory
	global.upgrade[60] = 550; // Mobilization
	global.upgrade[61] = 1200; // Faster Conveyor Belts
	global.upgrade[62] = 1650; // Titanium Tips
	global.upgrade[63] = 3600; // Whetstones
	global.upgrade[64] = 30000; // Good Level Design
	
	// Cirno
	global.upgrade[65] = 150; // Larger Wings
	global.upgrade[66] = 525; // Cirno's Perfect Fruit Class
	global.upgrade[67] = 750; // Wall of Ice
	global.upgrade[68] = 4200; // Ice Sign "Icicle Fall"
	global.upgrade[69] = 27500; // The Strongest
	
	// DJ Sray
	global.upgrade[70] = 175; // Cool DJ Glasses
	global.upgrade[71] = 650; // Blinding Lights
	global.upgrade[72] = 1300; // Ambidextrous
	global.upgrade[73] = 2750; // Multi-Disc Scratching
	global.upgrade[74] = 30000; // It's "Party Rock Is"
	
	// Geezer
	global.upgrade[75] = 400; // Spiny Shells
	global.upgrade[76] = 875; // I'm so hungry I could...
	global.upgrade[77] = 3400; // Additional RAM
	global.upgrade[78] = 5000; // Superfluous Spinies
	global.upgrade[79] = 25000; // It's you!
	
	// Captain Viridian
	global.upgrade[80] = 200; // loVely explosiVes
	global.upgrade[81] = 1000; // expeditiVe aViation Vehicle
	global.upgrade[82] = 1650; // executiVe Vaporizer
	global.upgrade[83] = 2750; // perseVerance
	global.upgrade[84] = 16750; // iVory saVior
	
	// Mayumushi
	global.upgrade[85] = 650; // Sharper Teeth
	global.upgrade[86] = 1000; // Specialized Chompers
	global.upgrade[87] = 1600; // Feeding Frenzy
	global.upgrade[88] = 7850; // The Very Hungry Mayumushi
	global.upgrade[89] = 31000; // Gourmet Meal

	
	
	
	
	if global.option_language == global.option_language_options.EN {
		//kid
		global.upgradeText[0] = "Better Gun";
		global.upgradeText[1] = "Excellent\nVision";
		global.upgradeText[2] = "Sharpened\nBullets";
		global.upgradeText[3] = "Moon-o-pult";
		global.upgradeText[4] = "The Chosen One";
	
		global.upgradeDesc[0] = "Faster firing for faster fruit";
		global.upgradeDesc[1] = "Grants a much larger range and camo detection";
		global.upgradeDesc[2] = "Bullets pierce many more fruit and become larger";
		global.upgradeDesc[3] = "Launch mini-moons with more piercing and clay-crushing power";
		global.upgradeDesc[4] = "\"NO! I WANNA BE THE GUY!\"";
	
	
	
	
		//spike shooter
		global.upgradeText[5] = "Longer Barrels";
		global.upgradeText[6] = "Slippery Spikes";
		global.upgradeText[7] = "Spike Shipment";
		global.upgradeText[8] = "Greased Gears";
		global.upgradeText[9] = "Spike Storm";
	
		global.upgradeDesc[5] = "Slightly increases range";
		global.upgradeDesc[6] = "Spikes fire and travel faster";
		global.upgradeDesc[7] = "More spikes per volley and shoots slightly faster";
		global.upgradeDesc[8] = "Shoots spikes incredibly fast";
		global.upgradeDesc[9] = "Turns the screen into a level 99 avoidance";
	
	
	
		//miku
	
		global.upgradeText[10] = "Long Range Leek";
		global.upgradeText[11] = "Rapid Radishes";
		global.upgradeText[12] = "Boiled Broccoli";
		global.upgradeText[13] = "Queen Cabbage";
		global.upgradeText[14] = "Veggie Deluxe Pizza";
	
		global.upgradeDesc[10] = "Slightly increases range";
		global.upgradeDesc[11] = "Vegetables fire and travel faster";
		global.upgradeDesc[12] = "Can melt lead and frozen fruit\nAlso improves piercing and damage";
		global.upgradeDesc[13] = "Single, powerful shots that can knockback bosses";
		global.upgradeDesc[14] = "Once your pizza's delivered...";
	
	
	
	
		//thwomp
	
		global.upgradeText[15] = "Extra Gunpowder";
		global.upgradeText[16] = "Baby Thwomps"
		global.upgradeText[17] = "Ballistic Bombs";
		global.upgradeText[18] = "Shockwave";
		global.upgradeText[19] = "Tsar Thwompa";
	
		global.upgradeDesc[15] = "Fire faster with larger explosions";
		global.upgradeDesc[16] = "Explosions create mini-thwomps to do extra damage, including against black fruit";
		global.upgradeDesc[17] = "Deals more damage to bosses and clays";
		global.upgradeDesc[18] = "Shockwaves destroy even more fruit and can knock them back";
		global.upgradeDesc[19] = "Massive explosions with incredible knockback, even against boss fruit";
	
	
	
	
		//alien
	
	
		global.upgradeText[20] = "UFO Buddy";
		global.upgradeText[21] = "Alien Tech";
		global.upgradeText[22] = "Supercharged Batteries";
		global.upgradeText[23] = "Prism";
		global.upgradeText[24] = "UFO PORNO";
	
		global.upgradeDesc[20] = "Occasionally sends a UFO to abduct powerful fruit, including camo fruit";
		global.upgradeDesc[21] = "Advanced-tech lasers pierce through more layers and can hit camo fruit";
		global.upgradeDesc[22] = "All attacks are faster and can penetrate lead fruit";
		global.upgradeDesc[23] = "Shoots 4 lasers in all directions, with the main laser dealing much more damage";
		global.upgradeDesc[24] = "Shoots 8 lasers at once, dealing massive damage to boss fruit\nUFOs can now abduct Blue Devils";

	
	
		//the guy
	
		global.upgradeText[25] = "Mr. Worldwide";
		global.upgradeText[26] = "Incendiary Grenades";
		global.upgradeText[27] = "Screen-Clearing Cannon";
		global.upgradeText[28] = "Critical Shots";
		global.upgradeText[29] = "True Form";
	
		global.upgradeDesc[25] = "Greatly increases range";
		global.upgradeDesc[26] = "Throws grenades that spread fire and can damage lead fruit\nAlso increasing piercing";
		global.upgradeDesc[27] = "Bullets pierce more and can damage camo and lead fruit\nAlso boosts grenade attacks";
		global.upgradeDesc[28] = "Deals much more damage to boss fruit\nEvery few shots is critical and knocks back fruit";
		global.upgradeDesc[29] = "\"Yeah, I did have sex with your mother.\"";
	
	
		//mike tyson
		global.upgradeText[30] = "Dance like a fly...";
		global.upgradeText[31] = "...Bite like a\nmosquito!";
		global.upgradeText[32] = "Intimidation";
		global.upgradeText[33] = "Below the Belt";
		global.upgradeText[34] = "The Baddest Man\non the Planet";
	
		global.upgradeDesc[30] = "Moves much faster towards its target";
		global.upgradeDesc[31] = "Punch faster, hit more, and can attack lead and frozen fruit";
		global.upgradeDesc[32] = "Scares off fruit close to Mike, causing them to briefly move backwards";
		global.upgradeDesc[33] = "Attacks much faster and deals significant damage to clays and bosses";
		global.upgradeDesc[34] = "Everyone has a plan 'till they get punched in the mouth";
	

	
	
		//boshy
		global.upgradeText[35] = "Aggressive Spiders";
		global.upgradeText[36] = "Spider Charmer";
		global.upgradeText[37] = "Journey to the\nCenter of the\nFruit";
		global.upgradeText[38] = "Potent Venom";
		global.upgradeText[39] = "Arachnophobia";
	
		global.upgradeDesc[35] = "Spiders bite through another layer and can damage lead and frozen fruit";
		global.upgradeDesc[36] = "Spiders are summoned much more quickly and bite through four layers";
		global.upgradeDesc[37] = "Bites through a whopping 20 layers of fruit, with bonus damage to clays";
		global.upgradeDesc[38] = "Deals even more damage and stuns bosses";
		global.upgradeDesc[39] = "Spiders deal massive damage, stun for longer, and temporarily debuff boss fruit\nDebuffed fruit take extra damage from all sources";
	

		//colonel
		global.upgradeText[40] = "General Schwarlitz";
		global.upgradeText[41] = "Colonel-in-chief";
		global.upgradeText[42] = "Battle Cry";
		global.upgradeText[43] = "Colonel Godwin";
		global.upgradeText[44] = "Cry of the Last TIS";
	
		global.upgradeDesc[40] = "Towers remain buffed for longer";
		global.upgradeDesc[41] = "Buffs towers more quickly";
		global.upgradeDesc[42] = "A second, longer buff that grants more damage, range, pierce, and attack speed";
		global.upgradeDesc[43] = "Battle Cry is even more powerful and lasts longer ";
		global.upgradeDesc[44] = "Battle Cry effects last forever as long as the Colonel is present";
	
	
		//seong
		global.upgradeText[45] = "Curveball";
		global.upgradeText[46] = "Fastball";
		global.upgradeText[47] = "Slugger's Scanner";
		global.upgradeText[48] = "Loading the Bases";
		global.upgradeText[49] = "Grand Slam";
	
		global.upgradeDesc[45] = "Baseballs track fruit and pierce slightly more";
		global.upgradeDesc[46] = "Baseballs pierce more and can hit camo fruit\nHave a chance to explode";
		global.upgradeDesc[47] = "Spawns two bats that remove camo properties from fruit, including Yellow Princes";
		global.upgradeDesc[48] = "Becomes more powerful during the round as towers destroy fruit\nAlso improves Scanner";
		global.upgradeDesc[49] = "Receives even stronger buffs and retains more of the bonus stats between rounds\nAlso allows attacks to damage any fruit type";
	
	
	
		//sticky keys
		global.upgradeText[50] = "Stickier Keys";
		global.upgradeText[51] = "Rubber Fruit";
		global.upgradeText[52] = "Larger Glitches";
		global.upgradeText[53] = "Millennium Bug";
		global.upgradeText[54] = "Privilege\nDe-escalation";
	
		global.upgradeDesc[50] = "Glitched fruit are now affected for much longer";
		global.upgradeDesc[51] = "Bullets that hit glitched fruit get coated in rubberizer, allowing them to bounce between fruit";
		global.upgradeDesc[52] = "Glitches affect most boss fruit and pierce more fruit at once";
		global.upgradeDesc[53] = "All fruit are slowed down by 50% if they get halfway through\nNeeds 60 seconds to recharge\nDuration stacks";
		global.upgradeDesc[54] = "Glitches remove camo, regen, and fortified properties from most fruit";

	
	
		//heart
		global.upgradeText[55] = "Heart of Gold";
		global.upgradeText[56] = "Stronger Heartbeats";
		global.upgradeText[57] = "Aorta on Alert";
		global.upgradeText[58] = "Pumpin' Blood";
		global.upgradeText[59] = "Versatile Veins";
	
		global.upgradeDesc[55] = "Towers in range get a 10% discount on upgrades tier 3 or less";
		global.upgradeDesc[56] = "Gains a larger range of influence\nDiscount increases to 15%";
		global.upgradeDesc[57] = "Grants camo detection to towers within range";
		global.upgradeDesc[58] = "Towers in range gain additional attack speed";
		global.upgradeDesc[59] = "Towers in range are able to attack any type of fruit";
	
	
	
		//spact
		global.upgradeText[60] = "Mobilization";
		global.upgradeText[61] = "Faster Conveyor Belts";
		global.upgradeText[62] = "Titanium Tips";
		global.upgradeText[63] = "Whetstones";
		global.upgradeText[64] = "Good Level Design";
	
		global.upgradeDesc[60] = "Spike piles spawn faster during the start of each round\nAlso slightly improves base production speed";
		global.upgradeDesc[61] = "Base production rate is greatly increased\nAlso, spike piles last 50% longer";
		global.upgradeDesc[62] = "Spike piles last for two rounds each and take much longer to expire";
		global.upgradeDesc[63] = "Spikes deal double damage and last another round";
		global.upgradeDesc[64] = "Exchanges production speed for highly resistant and lethal spikes";

	
		//cirno
		global.upgradeText[65] = "Larger Wings";
		global.upgradeText[66] = "Cirno's Perfect\nFruit Class";
		global.upgradeText[67] = "Wall of Ice";
		global.upgradeText[68] = "Ice Sign \"Icicle Fall\"";
		global.upgradeText[69] = "The Strongest";
	
		global.upgradeDesc[65] = "Increases range and attack radius";
		global.upgradeDesc[66] = "Attacks are faster and freeze for longer, and can now damage lead and camo fruit";
		global.upgradeDesc[67] = "Creates a wall of ice on nearby paths that damage fruit crossing it, including white fruit";
		global.upgradeDesc[68] = "Gains a projectile attack with increased range and damage\nBase attack removes camo and regen, and makes clays/bosses take more damage"
		global.upgradeDesc[69] = "Icicles decimate bosses and slow them down, even after they thaw";

	
	
		//sray
		global.upgradeText[70] = "Cool DJ Glasses";
		global.upgradeText[71] = "Blinding Lights";
		global.upgradeText[72] = "Ambidextrous";
		global.upgradeText[73] = "Multi-Disc Scratching";
		global.upgradeText[74] = "It's \"Party Rock Is\"";
	
		global.upgradeDesc[70] = "Allows detection of camo fruit";
		global.upgradeDesc[71] = "Attacks have a chance to confuse fruit, causing them to briefly turn around\nAlso improves attack speed and range";
		global.upgradeDesc[72] = "Fires two homing arrows at once\nAlso grants a stackable buff to nearby Srays that increases pierce and attack speed";
		global.upgradeDesc[73] = "Fires five arrows at once, and gain a slight range boost";
		global.upgradeDesc[74] = "Attacks incredibly fast and throws 8 arrows at once";
	

		//geezer
		global.upgradeText[75] = "Spiny Shells";
		global.upgradeText[76] = "I'm so hungry\nI could...";
		global.upgradeText[77] = "Additional RAM";
		global.upgradeText[78] = "Superfluous Spinies";
		global.upgradeText[79] = "It's you!";
	
		global.upgradeDesc[75] = "Throws out sharp spiny shells onto the nearby track";
		global.upgradeDesc[76] = "Summons an octorok to launch exploding bullets";
		global.upgradeDesc[77] = "Increases firing speed for all attacks\nMain attack gains high piercing";
		global.upgradeDesc[78] = "If fruit makes it halfway through, covers tracks with boss-destroying spinies\nNeeds 40 seconds to recharge\nImproves other attacks";
		global.upgradeDesc[79] = "Sends out cursors to capture boss fruit\nAlso improves all other attacks";
	
	
		//viridian
		global.upgradeText[80] = "loVely explosiVes";
		global.upgradeText[81] = "expeditiVe\naViation Vehicle";
		global.upgradeText[82] = "executiVe Vaporizer";
		global.upgradeText[83] = "perseVerance";
		global.upgradeText[84] = "iVory saVior";
	
		global.upgradeDesc[80] = "Drops heart bombs onto the track\nExplosions are stronger if a Heart tower is present";
		global.upgradeDesc[81] = "Fires spikes and heart bombs faster, and can damage camo fruit";
		global.upgradeDesc[82] = "Specialized spikes lock onto boss fruit and deal high damage\nAlso improves base attack";
		global.upgradeDesc[83] = "High-pierce spikes and bombs automatically seek out nearby fruit";
		global.upgradeDesc[84] = "If fruit makes it halfway through, deploys the ELEPHANT\nNeeds 45 seconds to recharge\nImproves other attacks";
	
	
		//mayumushi
		global.upgradeText[85] = "Sharper Teeth";
		global.upgradeText[86] = "Specialized Chompers"
		global.upgradeText[87] = "Feeding Frenzy";
		global.upgradeText[88] = "The Very Hungry\nMayumushi";
		global.upgradeText[89] = "Gourmet Meal";
	
		global.upgradeDesc[85] = "Can bite through lead and frozen fruit\nDoes more damage to fortified fruit"
		global.upgradeDesc[86] = "Gains camo detection and slightly faster attack speed\nAttacks remove camo and regen properties from non-boss fruit";
		global.upgradeDesc[87] = "Devour two layers of fruit with each rapid bite\nSize of bites are also increased";
		global.upgradeDesc[88] = "Huge bites crush up to five layers of fruit, and can consume twice as many fruit at once";
		global.upgradeDesc[89] = "Enormous bites deal massive damage, with up to 200 fruit at once!";
		
	}
	
	else if global.option_language == global.option_language_options.JP {
		//kid
		global.upgradeText[0] = "ちょっといい銃";
		global.upgradeText[1] = "高視力";
		global.upgradeText[2] = "研ぎ澄まされた弾丸";
		global.upgradeText[3] = "月の魔法";
		global.upgradeText[4] = "The Chosen One";
	
		global.upgradeDesc[0] = "Faster firing for faster fruit";
		global.upgradeDesc[1] = "Grants a much larger range and camo detection";
		global.upgradeDesc[2] = "Bullets pierce many more fruit and become larger";
		global.upgradeDesc[3] = "Launch mini-moons with more piercing and clay-crushing power";
		global.upgradeDesc[4] = "\"NO! I WANNA BE THE GUY!\"";
	
	
		//spike shooter
		global.upgradeText[5] = "ロング砲塔";
		global.upgradeText[6] = "つるつる針";
		global.upgradeText[7] = "針大量出荷";
		global.upgradeText[8] = "油塗り針";
		global.upgradeText[9] = "針の嵐";
	
		global.upgradeDesc[5] = "Slightly increases range";
		global.upgradeDesc[6] = "Spikes fire and travel faster";
		global.upgradeDesc[7] = "More spikes per volley and shoots slightly faster";
		global.upgradeDesc[8] = "Shoots spikes incredibly fast";
		global.upgradeDesc[9] = "Turns the screen into a level 99 avoidance";
	
	
	
		//miku
	
		global.upgradeText[10] = "広範囲ネギ";
		global.upgradeText[11] = "高速ダイコン";
		global.upgradeText[12] = "茹でブロッコリー";
		global.upgradeText[13] = "女王キャベツ";
		global.upgradeText[14] = "野菜もりもりピザ";
	
		global.upgradeDesc[10] = "Slightly increases range";
		global.upgradeDesc[11] = "Vegetables fire and travel faster";
		global.upgradeDesc[12] = "Can melt lead and frozen fruit\nAlso improves piercing and damage";
		global.upgradeDesc[13] = "Single, powerful shots that can knockback bosses";
		global.upgradeDesc[14] = "Once your pizza's delivered...";
	
	
	
	
		//thwomp
	
		global.upgradeText[15] = "火薬追加";
		global.upgradeText[16] = "ベイビードッスン"
		global.upgradeText[17] = "弾道爆弾";
		global.upgradeText[18] = "衝撃波";
		global.upgradeText[19] = "核ドッスン";
	
		global.upgradeDesc[15] = "Fire faster with larger explosions";
		global.upgradeDesc[16] = "Explosions create mini-thwomps to do extra damage, including against black fruit";
		global.upgradeDesc[17] = "Deals more damage to bosses and clays";
		global.upgradeDesc[18] = "Shockwaves destroy even more fruit and can knock them back";
		global.upgradeDesc[19] = "Massive explosions with incredible knockback, even against boss fruit";
	
	
	
	
		//alien
	
	
		global.upgradeText[20] = "UFO仲間";
		global.upgradeText[21] = "エイリアンテクノロジー";
		global.upgradeText[22] = "超超供給バッテリー";
		global.upgradeText[23] = "プリズム";
		global.upgradeText[24] = "UFOポルノ";
	
		global.upgradeDesc[20] = "Occasionally sends a UFO to abduct powerful fruit, including camo fruit";
		global.upgradeDesc[21] = "Advanced-tech lasers pierce through more layers and can hit camo fruit";
		global.upgradeDesc[22] = "All attacks are faster and can penetrate lead fruit";
		global.upgradeDesc[23] = "Shoots 4 lasers in all directions, with the main laser dealing much more damage";
		global.upgradeDesc[24] = "Shoots 8 lasers at once, dealing massive damage to boss fruit\nUFOs can now abduct Blue Devils";

	
	
		//the guy
	
		global.upgradeText[25] = "世界最強の視野";
		global.upgradeText[26] = "火の玉グレネード";
		global.upgradeText[27] = "画面すっきり砲台";
		global.upgradeText[28] = "クリティカルショット";
		global.upgradeText[29] = "真の姿";
	
		global.upgradeDesc[25] = "Greatly increases range";
		global.upgradeDesc[26] = "Throws grenades that spread fire and can damage lead fruit\nAlso increasing piercing";
		global.upgradeDesc[27] = "Bullets pierce more and can damage camo and lead fruit\nAlso boosts grenade attacks";
		global.upgradeDesc[28] = "Deals much more damage to boss fruit\nEvery few shots is critical and knocks back fruit";
		global.upgradeDesc[29] = "\"Yeah, I did have sex with your mother.\"";
	
	
		//mike tyson
		global.upgradeText[30] = "空中を飛び回れ...";
		global.upgradeText[31] = "...蚊のように刺される！";
		global.upgradeText[32] = "威嚇";
		global.upgradeText[33] = "下腹部狙い";
		global.upgradeText[34] = "地球一のボクサー";
	
		global.upgradeDesc[30] = "Moves much faster towards its target";
		global.upgradeDesc[31] = "Punch faster, hit more, and can attack lead and frozen fruit";
		global.upgradeDesc[32] = "Scares off fruit close to Mike, causing them to briefly move backwards";
		global.upgradeDesc[33] = "Attacks much faster and deals significant damage to clays and bosses";
		global.upgradeDesc[34] = "Everyone has a plan 'till they get punched in the mouth";
	

	
	
		//boshy
		global.upgradeText[35] = "攻撃的クモ";
		global.upgradeText[36] = "クモ使い";
		global.upgradeText[37] = "りんごの核心への旅";
		global.upgradeText[38] = "毒グモ";
		global.upgradeText[39] = "クモ恐怖症";
	
		global.upgradeDesc[35] = "Spiders bite through another layer and can damage lead and frozen fruit";
		global.upgradeDesc[36] = "Spiders are summoned much more quickly and bite through four layers";
		global.upgradeDesc[37] = "Bites through a whopping 20 layers of fruit, with bonus damage to clays";
		global.upgradeDesc[38] = "Deals even more damage and stuns bosses";
		global.upgradeDesc[39] = "Spiders deal massive damage, stun for longer, and temporarily debuff boss fruit\nDebuffed fruit take extra damage from all sources";
	

		//colonel
		global.upgradeText[40] = "大佐将軍";
		global.upgradeText[41] = "リーダー大佐";
		global.upgradeText[42] = "バトルの雄叫び";
		global.upgradeText[43] = "ゴッドウィン大佐";
		global.upgradeText[44] = "LAST TISの雄叫び";
	
		global.upgradeDesc[40] = "Towers remain buffed for longer";
		global.upgradeDesc[41] = "Buffs towers more quickly";
		global.upgradeDesc[42] = "A second, longer buff that grants more damage, range, pierce, and attack speed";
		global.upgradeDesc[43] = "Battle Cry is even more powerful and lasts longer ";
		global.upgradeDesc[44] = "Battle Cry effects last forever as long as the Colonel is present";
	
	
		//seong
		global.upgradeText[45] = "変化球";
		global.upgradeText[46] = "速球";
		global.upgradeText[47] = "強打者スキャナー";
		global.upgradeText[48] = "満塁";
		global.upgradeText[49] = "満塁ホームラン";
	
		global.upgradeDesc[45] = "Baseballs track fruit and pierce slightly more";
		global.upgradeDesc[46] = "Baseballs pierce more and can hit camo fruit\nHave a chance to explode";
		global.upgradeDesc[47] = "Spawns two bats that remove camo properties from fruit, including Yellow Princes";
		global.upgradeDesc[48] = "Becomes more powerful during the round as towers destroy fruit\nAlso improves Scanner";
		global.upgradeDesc[49] = "Receives even stronger buffs and retains more of the bonus stats between rounds\nAlso allows attacks to damage any fruit type";
	
	
	
		//sticky keys
		global.upgradeText[50] = "べたつキー";
		global.upgradeText[51] = "ゴムりんご";
		global.upgradeText[52] = "ビッグバグ";
		global.upgradeText[53] = "2000年問題バグ";
		global.upgradeText[54] = "特権降格";
	
		global.upgradeDesc[50] = "Glitched fruit are now affected for much longer";
		global.upgradeDesc[51] = "Bullets that hit glitched fruit get coated in rubberizer, allowing them to bounce between fruit";
		global.upgradeDesc[52] = "Glitches affect most boss fruit and pierce more fruit at once";
		global.upgradeDesc[53] = "All fruit are slowed down by 50% if they get halfway through\nNeeds 60 seconds to recharge\nDuration stacks";
		global.upgradeDesc[54] = "Glitches remove camo, regen, and fortified properties from most fruit";

	
	
		//heart
		global.upgradeText[55] = "金ピカハート";
		global.upgradeText[56] = "力強い鼓動";
		global.upgradeText[57] = "大動脈警報";
		global.upgradeText[58] = "血液拍出";
		global.upgradeText[59] = "万能すぎる静脈";
	
		global.upgradeDesc[55] = "Towers in range get a 10% discount on upgrades tier 3 or less";
		global.upgradeDesc[56] = "Gains a larger range of influence\nDiscount increases to 15%";
		global.upgradeDesc[57] = "Grants camo detection to towers within range";
		global.upgradeDesc[58] = "Towers in range gain additional attack speed";
		global.upgradeDesc[59] = "Towers in range are able to attack any type of fruit";
	
	
	
		//spact
		global.upgradeText[60] = "大量動員";
		global.upgradeText[61] = "高速ベルトコンベア";
		global.upgradeText[62] = "チタンチップ";
		global.upgradeText[63] = "砥石";
		global.upgradeText[64] = "Good Level Design";
	
		global.upgradeDesc[60] = "Spike piles spawn faster during the start of each round\nAlso slightly improves base production speed";
		global.upgradeDesc[61] = "Base production rate is greatly increased\nAlso, spike piles last 50% longer";
		global.upgradeDesc[62] = "Spike piles last for two rounds each and take much longer to expire";
		global.upgradeDesc[63] = "Spikes deal double damage and last another round";
		global.upgradeDesc[64] = "Exchanges production speed for highly resistant and lethal spikes";

	
		//cirno
		global.upgradeText[65] = "ビッグウィング";
		global.upgradeText[66] = "チルノのパーフェクト\nりんご教室";
		global.upgradeText[67] = "氷の壁";
		global.upgradeText[68] = "氷符「アイシクルフォール」";
		global.upgradeText[69] = "超最強";
	
		global.upgradeDesc[65] = "Increases range and attack radius";
		global.upgradeDesc[66] = "Attacks are faster and freeze for longer, and can now damage lead and camo fruit";
		global.upgradeDesc[67] = "Creates a wall of ice on nearby paths that damage fruit crossing it, including white fruit";
		global.upgradeDesc[68] = "Gains a projectile attack with increased range and damage\nBase attack removes camo and regen, and makes clays/bosses take more damage"
		global.upgradeDesc[69] = "Icicles decimate bosses and slow them down, even after they thaw";

	
	
		//sray
		global.upgradeText[70] = "かっこいいDJサングラス";
		global.upgradeText[71] = "まぶしい光";
		global.upgradeText[72] = "両利き";
		global.upgradeText[73] = "かっこいいDJスクラッチ";
		global.upgradeText[74] = "違う、\"Party Rock Is\"だよ";
	
		global.upgradeDesc[70] = "Allows detection of camo fruit";
		global.upgradeDesc[71] = "Attacks have a chance to confuse fruit, causing them to briefly turn around\nAlso improves attack speed and range";
		global.upgradeDesc[72] = "Fires two homing arrows at once\nAlso grants a stackable buff to nearby Srays that increases pierce and attack speed";
		global.upgradeDesc[73] = "Fires five arrows at once, and gain a slight range boost";
		global.upgradeDesc[74] = "Attacks incredibly fast and throws 8 arrows at once";
	

		//geezer
		global.upgradeText[75] = "トゲゾー甲羅";
		global.upgradeText[76] = "今めっちゃ腹ペコ...";
		global.upgradeText[77] = "RAM追加";
		global.upgradeText[78] = "余計なトゲ甲羅";
		global.upgradeText[79] = "君か！";
	
		global.upgradeDesc[75] = "Throws out sharp spiny shells onto the nearby track";
		global.upgradeDesc[76] = "Summons an octorok to launch exploding bullets";
		global.upgradeDesc[77] = "Increases firing speed for all attacks\nMain attack gains high piercing";
		global.upgradeDesc[78] = "If fruit makes it halfway through, covers tracks with boss-destroying spinies\nNeeds 40 seconds to recharge\nImproves other attacks";
		global.upgradeDesc[79] = "Sends out cursors to capture boss fruit\nAlso improves all other attacks";
	
	
		//viridian
		global.upgradeText[80] = "愛らしい爆発";
		global.upgradeText[81] = "高速航空機";
		global.upgradeText[82] = "強力蒸発装置";
		global.upgradeText[83] = "忍耐強い針";
		global.upgradeText[84] = "救世主、ゾウ";
	
		global.upgradeDesc[80] = "Drops heart bombs onto the track\nExplosions are stronger if a Heart tower is present";
		global.upgradeDesc[81] = "Fires spikes and heart bombs faster, and can damage camo fruit";
		global.upgradeDesc[82] = "Specialized spikes lock onto boss fruit and deal high damage\nAlso improves base attack";
		global.upgradeDesc[83] = "High-pierce spikes and bombs automatically seek out nearby fruit";
		global.upgradeDesc[84] = "If fruit makes it halfway through, deploys the ELEPHANT\nNeeds 45 seconds to recharge\nImproves other attacks";
	
	
		//mayumushi
		global.upgradeText[85] = "鋭い歯";
		global.upgradeText[86] = "大食い特化"
		global.upgradeText[87] = "大量餌やり";
		global.upgradeText[88] = "はらぺこまゆむし";
		global.upgradeText[89] = "グルメ料理";
	
		global.upgradeDesc[85] = "Can bite through lead and frozen fruit\nDoes more damage to fortified fruit"
		global.upgradeDesc[86] = "Gains camo detection and slightly faster attack speed\nAttacks remove camo and regen properties from non-boss fruit";
		global.upgradeDesc[87] = "Devour two layers of fruit with each rapid bite\nSize of bites are also increased";
		global.upgradeDesc[88] = "Huge bites crush up to five layers of fruit, and can consume twice as many fruit at once";
		global.upgradeDesc[89] = "Enormous bites deal massive damage, with up to 200 fruit at once!";
	}

	

	//update using price multiplier
	for (var i = 0; i < array_length(global.upgrade); i++) {
		global.upgrade[i] = ceil(global.upgrade[i] * global.price_multiplier);
		//round to multiple of 5
		global.upgrade[i] = 5 * (round(global.upgrade[i] / 5))
	}


}
