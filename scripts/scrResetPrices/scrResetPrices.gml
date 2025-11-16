function scrResetPrices() {
	//tower prices
	global.price[0] = 200; //kid
	global.price[1] = 280; //spike shooter
	global.price[2] = 400; //miku
	global.price[3] = 550; //thwomp
	global.price[4] = 1100; //alien
	global.price[5] = 2500; //the guy
	global.price[6] = 1550; //mike tyson
	global.price[7] = 350; //boshy
	global.price[8] = 900; //colonel
	global.price[9] = 350; //seong
	global.price[10] = 650 //sticky keys
	global.price[11] = 1175 //heart
	global.price[12] = 1000 //spact
	global.price[13] = 500; //cirno
	global.price[14] = 325; //sray
	global.price[15] = 325; //geezer
	global.price[16] = 750; //viridian
	global.price[17] = 650; //mayumushi
	
	//change prices according to price multiplier
	for (var i = 0; i < array_length(global.price); i++) {
		global.price[i] = ceil(global.price[i] * global.price_multiplier);
		
		//round to multiple of 5
		global.price[i] = 5 * (round(global.price[i] / 5))
	}



}
