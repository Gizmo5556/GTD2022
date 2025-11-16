function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -10; // oPlayer
	global.__objectDepths[1] = 0; // oController
	global.__objectDepths[2] = 100; // oBlock
	global.__objectDepths[3] = 100; // oBlockMini
	global.__objectDepths[4] = 0; // oSlipBlock
	global.__objectDepths[5] = 0; // oSlideBlockL
	global.__objectDepths[6] = 0; // oSlideBlockR
	global.__objectDepths[7] = 0; // oSlideBlock
	global.__objectDepths[8] = -50; // oWater1
	global.__objectDepths[9] = -50; // oWater2
	global.__objectDepths[10] = -50; // oWater3
	global.__objectDepths[11] = 0; // oWaterParent
	global.__objectDepths[12] = 10; // oPlatform
	global.__objectDepths[13] = 0; // oSave
	global.__objectDepths[14] = 0; // oSaveFlip
	global.__objectDepths[15] = 0; // oWalljumpL
	global.__objectDepths[16] = 0; // oWalljumpR
	global.__objectDepths[17] = 0; // oGravityArrowUp
	global.__objectDepths[18] = 0; // oGravityArrowDown
	global.__objectDepths[19] = 0; // oKiller
	global.__objectDepths[20] = 0; // oSpikeUp
	global.__objectDepths[21] = 0; // oSpikeRight
	global.__objectDepths[22] = 0; // oSpikeLeft
	global.__objectDepths[23] = 0; // oSpikeDown
	global.__objectDepths[24] = 0; // oCherry
	global.__objectDepths[25] = 0; // oMiniSpikeUp
	global.__objectDepths[26] = 0; // oMiniSpikeRight
	global.__objectDepths[27] = 0; // oMiniSpikeLeft
	global.__objectDepths[28] = 0; // oMiniSpikeDown
	global.__objectDepths[29] = 0; // oPlayerBullet
	global.__objectDepths[30] = -5; // oPlayerBlood
	global.__objectDepths[31] = 0; // oPlayerStart
	global.__objectDepths[32] = -1000; // objGameover
	global.__objectDepths[33] = 0; // objPath
	global.__objectDepths[34] = 1000000; // objPathH
	global.__objectDepths[35] = 1000000; // objPathV
	global.__objectDepths[36] = 1000000; // objPathC
	global.__objectDepths[37] = 1000000; // objPathC2
	global.__objectDepths[38] = 0; // objApple
	global.__objectDepths[39] = 0; // objAppleBlue
	global.__objectDepths[40] = 0; // objAppleGreen
	global.__objectDepths[41] = 0; // objAppleYellow
	global.__objectDepths[42] = 0; // objAppleWhite
	global.__objectDepths[43] = 0; // objAppleRainbow
	global.__objectDepths[44] = 0; // objAppleClay
	global.__objectDepths[45] = 0; // objMotherCherry
	global.__objectDepths[46] = -100; // objBoss
	global.__objectDepths[47] = 1; // objKidBullet
	global.__objectDepths[48] = 0; // objBabyThwomp
	global.__objectDepths[49] = 0; // objThwompProj
	global.__objectDepths[50] = 1; // objExplosion
	global.__objectDepths[51] = 0; // objTower
	global.__objectDepths[52] = 0; // objShootingKid
	global.__objectDepths[53] = 0; // objTheGuy
	global.__objectDepths[54] = 0; // objTurret
	global.__objectDepths[55] = 0; // objThwomp
	global.__objectDepths[56] = 0; // objAlien
	global.__objectDepths[57] = 1; // objLaser
	global.__objectDepths[58] = 0; // objMiku
	global.__objectDepths[59] = 44; // objRoundController
	global.__objectDepths[60] = -10; // objStore
	global.__objectDepths[61] = -11; // objTowerIcon
	global.__objectDepths[62] = 0; // objPlacer
	global.__objectDepths[63] = -12; // objNextWave
	global.__objectDepths[64] = -11; // objUpgrades
	global.__objectDepths[65] = -12; // objUpgradeButton
	global.__objectDepths[66] = -15; // objUfo
	global.__objectDepths[67] = -9999; // objFinalWave
	global.__objectDepths[68] = 0; // objCredit
	global.__objectDepths[69] = 0; // objPatBall
	global.__objectDepths[70] = -10; // objPatBallMaker


	global.__objectNames[0] = "oPlayer";
	global.__objectNames[1] = "oController";
	global.__objectNames[2] = "oBlock";
	global.__objectNames[3] = "oBlockMini";
	global.__objectNames[4] = "oSlipBlock";
	global.__objectNames[5] = "oSlideBlockL";
	global.__objectNames[6] = "oSlideBlockR";
	global.__objectNames[7] = "oSlideBlock";
	global.__objectNames[8] = "oWater1";
	global.__objectNames[9] = "oWater2";
	global.__objectNames[10] = "oWater3";
	global.__objectNames[11] = "oWaterParent";
	global.__objectNames[12] = "oPlatform";
	global.__objectNames[13] = "oSave";
	global.__objectNames[14] = "oSaveFlip";
	global.__objectNames[15] = "oWalljumpL";
	global.__objectNames[16] = "oWalljumpR";
	global.__objectNames[17] = "oGravityArrowUp";
	global.__objectNames[18] = "oGravityArrowDown";
	global.__objectNames[19] = "oKiller";
	global.__objectNames[20] = "oSpikeUp";
	global.__objectNames[21] = "oSpikeRight";
	global.__objectNames[22] = "oSpikeLeft";
	global.__objectNames[23] = "oSpikeDown";
	global.__objectNames[24] = "oCherry";
	global.__objectNames[25] = "oMiniSpikeUp";
	global.__objectNames[26] = "oMiniSpikeRight";
	global.__objectNames[27] = "oMiniSpikeLeft";
	global.__objectNames[28] = "oMiniSpikeDown";
	global.__objectNames[29] = "oPlayerBullet";
	global.__objectNames[30] = "oPlayerBlood";
	global.__objectNames[31] = "oPlayerStart";
	global.__objectNames[32] = "objGameover";
	global.__objectNames[33] = "objPath";
	global.__objectNames[34] = "objPathH";
	global.__objectNames[35] = "objPathV";
	global.__objectNames[36] = "objPathC";
	global.__objectNames[37] = "objPathC2";
	global.__objectNames[38] = "objApple";
	global.__objectNames[39] = "objAppleBlue";
	global.__objectNames[40] = "objAppleGreen";
	global.__objectNames[41] = "objAppleYellow";
	global.__objectNames[42] = "objAppleWhite";
	global.__objectNames[43] = "objAppleRainbow";
	global.__objectNames[44] = "objAppleClay";
	global.__objectNames[45] = "objMotherCherry";
	global.__objectNames[46] = "objBoss";
	global.__objectNames[47] = "objKidBullet";
	global.__objectNames[48] = "objBabyThwomp";
	global.__objectNames[49] = "objThwompProj";
	global.__objectNames[50] = "objExplosion";
	global.__objectNames[51] = "objTower";
	global.__objectNames[52] = "objShootingKid";
	global.__objectNames[53] = "objTheGuy";
	global.__objectNames[54] = "objTurret";
	global.__objectNames[55] = "objThwomp";
	global.__objectNames[56] = "objAlien";
	global.__objectNames[57] = "objLaser";
	global.__objectNames[58] = "objMiku";
	global.__objectNames[59] = "objRoundController";
	global.__objectNames[60] = "objStore";
	global.__objectNames[61] = "objTowerIcon";
	global.__objectNames[62] = "objPlacer";
	global.__objectNames[63] = "objNextWave";
	global.__objectNames[64] = "objUpgrades";
	global.__objectNames[65] = "objUpgradeButton";
	global.__objectNames[66] = "objUfo";
	global.__objectNames[67] = "objFinalWave";
	global.__objectNames[68] = "objCredit";
	global.__objectNames[69] = "objPatBall";
	global.__objectNames[70] = "objPatBallMaker";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
