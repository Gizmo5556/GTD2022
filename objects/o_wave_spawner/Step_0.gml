if wave_in_progress and not last_fruit_spawned {
	
	
	
	switch(global.wave+1) {
		
		
		case 1:
			if scr_can_spawn_fruit(0, 20, 40) {
				scrSpawnApple();	
			}
			if timer >= 20*40 {last_fruit_spawned = true;}
			break;
			
			
		case 2:
			if scr_can_spawn_fruit(0, 35, 30) {
				scrSpawnApple();	
			}
			if timer >= 35*30 {last_fruit_spawned = true;}
			break;
			
			
		case 3:
			if scr_can_spawn_fruit(0, 25, 35) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(100, 5, 50) {
				scrSpawnAppleBlue();	
			}
			if timer >= 25*35 {last_fruit_spawned = true;}
			break;
			
			
		case 4:
			if scr_can_spawn_fruit(0, 35, 25) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(125, 18, 40) {
				scrSpawnAppleBlue();	
			}
			if timer >= 25*35 {last_fruit_spawned = true;}
			break;
			
			
		case 5:
			if scr_can_spawn_fruit(0, 27, 25) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(300, 5, 25) {
				scrSpawnApple();	
			}
			if timer >= 27*25 {last_fruit_spawned = true;}
			break;
			
			
		case 6:
			if scr_can_spawn_fruit(0, 4, 20) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(140, 15, 15) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(375, 15, 20) {
				scrSpawnAppleBlue();	
			}
			if timer >= 375+15*20 {last_fruit_spawned = true;}
			break;
			
			
		case 7:
			if scr_can_spawn_fruit(0, 10, 15) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(150, 5, 25) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(300, 20, 15) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(600, 10, 15) {
				scrSpawnAppleBlue();	
			}
			if timer >= 600+10*15 {last_fruit_spawned = true;}
			break;
			
			
		case 8:
			if scr_can_spawn_fruit(0, 20, 17) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(380, 10, 10) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(570, 14, 37) {
				scrSpawnAppleGreen();	
			}		
			if timer >= 570+14*37 {last_fruit_spawned = true;}
			break;
			
			
		case 9:
			if scr_can_spawn_fruit(0, 30, 32) {
				scrSpawnAppleGreen();	
			}	
			if timer >= 30*32 {last_fruit_spawned = true;}
			break;
			
			
		case 10:
			if scr_can_spawn_fruit(0, 80, 18) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(1475, 22, 14) {
				scrSpawnAppleBlue();	
			}	
			if timer >= 1475+22*14 {last_fruit_spawned = true;}
			break;
			
			
		case 11:
			if scr_can_spawn_fruit(0, 6, 7) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(65, 12, 20) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(350, 12, 25) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(700, 3, 30) {
				scrSpawnAppleYellow();	
			}	
			if timer >= 700+3*30 {last_fruit_spawned = true;}
			break;
			
			
		case 12:
			if scr_can_spawn_fruit(0, 10, 20) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(225, 15, 12) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(400, 5, 28) {
				scrSpawnAppleYellow();	
			}	
			if timer >= 400+5*28 {last_fruit_spawned = true;}
			break;
			
			
		case 13:
			if scr_can_spawn_fruit(0, 50, 17) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(915, 23, 24) {
				scrSpawnAppleGreen();	
			}
			if timer >= 915+23*24 {last_fruit_spawned = true;}
			break;
			
			
		case 14:
			if scr_can_spawn_fruit(0, 49, 15) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(125, 15, 20) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(450, 10, 20) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(720, 9, 25) {
				scrSpawnAppleYellow();	
			}
			if timer >= 720+9*25 {last_fruit_spawned = true;}
			break;
			
			
		case 15:
			if scr_can_spawn_fruit(0, 20, 25) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(150, 15, 15) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(430, 12, 15) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(630, 10, 20) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(885, 5, 24) {
				scrSpawnApplePink();	
			}
			if timer >= 885+5*24 {last_fruit_spawned = true;}
			break;
			
			
		case 16:
			if scr_can_spawn_fruit(0, 40, 18) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(600, 8, 22) {
				scrSpawnAppleYellow();	
			}
			if timer >= 600+8*22 {last_fruit_spawned = true;}
			break;
			
			
		case 17:
			if scr_can_spawn_fruit(0, 6, 20) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(140, 6, 5) {
				scrSpawnAppleYellow();	
			}
			if timer >= 140 + 6*5 {last_fruit_spawned = true;}
			break;
			
			
		case 18:
			if scr_can_spawn_fruit(0, 60, 14) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(850, 20, 11) {
				scrSpawnAppleGreen();	
			}
			if timer >= 850+20*11 {last_fruit_spawned = true;}
			break;
			
			
		case 19:
			if scr_can_spawn_fruit(0, 10, 10) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(200, 9, 13) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(425, 15, 27) {
				scrSpawnApplePink();	
			}
			if timer >= 425+15*27 {last_fruit_spawned = true;}
			break;
			
			
		case 20:
			if scr_can_spawn_fruit(0, 6, 50) {
				scrSpawnAppleBlack();	
			}
			if timer >= 6*50 {last_fruit_spawned = true;}
			break;
			
		
			
		case 21:
			if scr_can_spawn_fruit(0, 30, 17) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(585, 10, 35) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(585, 14, 45) {
				scrSpawnApplePink();	
			}
			if timer >= 585+14*45 {last_fruit_spawned = true;}
			break;
			
				
		
		case 22:
			if scr_can_spawn_fruit(0, 16, 48) {
				scrSpawnAppleWhite();	
			}
			if timer >= 16*48 {last_fruit_spawned = true;}
			break;
			
			
		
		
		case 23:
			if scr_can_spawn_fruit(0, 7, 52) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(26, 7, 52) {
				scrSpawnAppleWhite();	
			}
			if timer >= 26+7*52 {last_fruit_spawned = true;}
			break;
			
			
		case 24:
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleGreen(true);	
			}
			if scr_can_spawn_fruit(55, 20, 10) {
				scrSpawnAppleBlue();	
			}
			if timer >= 55+20*10 {last_fruit_spawned = true;}
			break;
			
			
		//tested on moon up to this point /\
			
		case 25:
			if scr_can_spawn_fruit(0, 25, 20) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(240, 25, 15) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(400, 2, 40) {
				scrSpawnApplePink();	
			}
			if timer >= 240+25*15 {last_fruit_spawned = true;}
			break;
			
			
		case 26:
			if scr_can_spawn_fruit(0, 23, 20) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(150, 4, 75) {
				scrSpawnAppleZebra();	
			}
			if timer >= 23*20 {last_fruit_spawned = true;}
			break;
			
			
		case 27:
			if scr_can_spawn_fruit(0, 100, 9) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(900, 60, 9) {
				scrSpawnAppleBlue();	
			}
			if scr_can_spawn_fruit(1500, 45, 9) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(2000, 45, 9) {
				scrSpawnAppleYellow();	
			}
			if timer >= 2000+45*9 {last_fruit_spawned = true;}
			break;
			
			
		case 28:
			if scr_can_spawn_fruit(0, 6, 40) {
				scrSpawnAppleLead();	
			}
			if timer >= 6*40 {last_fruit_spawned = true;}
			break;
			
			
		case 29:
			if scr_can_spawn_fruit(0, 65, 5) {
				scrSpawnAppleYellow();	
			}
			if timer >= 65*5 {last_fruit_spawned = true;}
			break;
			
			
		case 30:
			if scr_can_spawn_fruit(0, 9, 36) {
				scrSpawnAppleLead();	
			}
			if timer >= 9*36 {last_fruit_spawned = true;}
			break;
			
			
		case 31:
			if scr_can_spawn_fruit(0, 8, 50) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(25, 8, 50) {
				scrSpawnAppleWhite();	
			}
			if scr_can_spawn_fruit(460, 10, 70) {
				scrSpawnAppleZebra();	
			}
			if timer >= 460+10*70 {last_fruit_spawned = true;}
			break;
			
			
		case 32:
			if scr_can_spawn_fruit(0, 15, 54) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(0, 2, 5) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(67, 15, 54) {
				scrSpawnAppleWhite();	
			}
			if scr_can_spawn_fruit(100, 3, 5) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(250, 4, 10) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(450, 5, 10) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(650, 8, 12) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(900, 5, 25) {
				scrSpawnAppleWhite();	
			}
			if timer >= 900+5*25 {last_fruit_spawned = true;}
			break;
			
			
		case 33:
			if scr_can_spawn_fruit(0, 20, 22) {
				scrSpawnApple(true);	
			}
			if scr_can_spawn_fruit(100, 13, 18) {
				scrSpawnAppleYellow(true);	
			}
			if timer >= 20*22 {last_fruit_spawned = true;}
			break;
			
			
		case 34:
			if scr_can_spawn_fruit(0, 160, 8) {
				scrSpawnAppleYellow();	
			}
			if scr_can_spawn_fruit(640, 6, 110) {
				scrSpawnAppleZebra();	
			}
			if timer >= 640+6*110 {last_fruit_spawned = true;}
			break;
			
			
		case 35:
			if scr_can_spawn_fruit(0, 30, 40) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(0, 25, 40) {
				scrSpawnAppleWhite();	
			}
			if scr_can_spawn_fruit(300, 35, 20) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(1000, 5, 40) {
				scrSpawnAppleRainbow();	
			}
			if timer >= 1000+5*40 {last_fruit_spawned = true;}
			break;
			
			
		case 36:
			if scr_can_spawn_fruit(0, 35, 3) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(140, 5, 5) {
				scrSpawnAppleGreen(true);	
			}
			if scr_can_spawn_fruit(240, 35, 3) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(400, 5, 5) {
				scrSpawnAppleGreen(true);
			}
			if scr_can_spawn_fruit(500, 35, 3) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(650, 5, 5) {
				scrSpawnAppleGreen(true);
			}
			if scr_can_spawn_fruit(800, 35, 3) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(970, 5, 5) {
				scrSpawnAppleGreen(true);
			}
			if timer >= 970+5*5 {last_fruit_spawned = true;}
			break;
			
			
		case 37:
			if scr_can_spawn_fruit(0, 25, 50) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(25, 25, 50) {
				scrSpawnAppleWhite();	
			}
			if scr_can_spawn_fruit(1325, 7, 65) {
				scrSpawnAppleWhite(true);	
			}
			if scr_can_spawn_fruit(1800, 10, 25) {
				scrSpawnAppleZebra();	
			}
			if scr_can_spawn_fruit(2100, 15, 20) {
				scrSpawnAppleLead();	
			}
			if timer >= 2100+15*20 {last_fruit_spawned = true;}
			break;
			
			
		case 38:
			if scr_can_spawn_fruit(0, 42, 13) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(160, 17, 20) {
				scrSpawnAppleWhite();	
			}
			if scr_can_spawn_fruit(320, 14, 20) {
				scrSpawnAppleLead();	
			}
			if scr_can_spawn_fruit(600, 10, 52) {
				scrSpawnAppleZebra();	
			}
			if scr_can_spawn_fruit(1300, 2, 50) {
				scrSpawnAppleClay();	
			}
			if timer >= 1300+2*50 {last_fruit_spawned = true;}
			break;
			
			
		case 39:
			if scr_can_spawn_fruit(0, 10, 15) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(0, 10, 15) {
				scrSpawnAppleWhite();	
			}
			if scr_can_spawn_fruit(175, 20, 25) {
				scrSpawnAppleZebra();	
			}
			if scr_can_spawn_fruit(600, 20, 35) {
				scrSpawnAppleRainbow();	
			}
			if timer >= 605+20*35 {last_fruit_spawned = true;}
			break;
			
			
		case 40:
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 1*10 {last_fruit_spawned = true;}
			break;
			
			
		case 41:
			if scr_can_spawn_fruit(0, 60, 8) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(500, 60, 16) {
				scrSpawnAppleZebra();	
			}
			if timer >= 500+60*16 {last_fruit_spawned = true;}
			break;
			
			
		case 42:
			if scr_can_spawn_fruit(0, 6, 10) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(5, 5, 10) {
				scrSpawnAppleRainbow(true);	
			}
			if timer >= 6*10 {last_fruit_spawned = true;}
			break;
			
			
		case 43:
			if scr_can_spawn_fruit(0, 10, 52) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(0, 7, 100) {
				scrSpawnAppleClay();	
			}
			if timer >= 7*100 {last_fruit_spawned = true;}
			break;
			
			
		case 44:
			if scr_can_spawn_fruit(0, 50, 8) {
				scrSpawnAppleZebra();	
			}
			if timer >= 50*8 {last_fruit_spawned = true;}
			break;
			
		
		//fortified lead and camo pink
		case 45:
			if scr_can_spawn_fruit(0, 25, 30) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(750, 22, 70) {
				scrSpawnApplePink(true);	
			}
			if scr_can_spawn_fruit(500, 192, 5) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(1000, 4, 40) {
				scrSpawnAppleLead(false, true);	
			}
			if timer >= 500+192*5 {last_fruit_spawned = true;}
			break;
			
			
		case 46:
			if scr_can_spawn_fruit(0, 6, 55) {
				scrSpawnAppleClay(false, true);	
			}
			if timer >= 6*55 {last_fruit_spawned = true;}
			break;
			
			
		case 47:
			if scr_can_spawn_fruit(0, 70, 10) {
				scrSpawnApplePink(true);	
			}
			if scr_can_spawn_fruit(150, 12, 58) {
				scrSpawnAppleClay();	
			}
			
			if timer >= 150+12*58 {last_fruit_spawned = true;}
			break;
			
			
		case 48:
			if scr_can_spawn_fruit(0, 50, 20) {
				scrSpawnApplePink();	
			}
			if scr_can_spawn_fruit(10, 66, 20) {
				scrSpawnApplePink(true);	
			}
			if scr_can_spawn_fruit(0, 40, 27) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(500, 3, 150) {
				scrSpawnAppleClay(false, true);	
			}
			if timer >= 10+66*20 {last_fruit_spawned = true;}
			break;
			
			
		case 49:
			if scr_can_spawn_fruit(0, 343, 6) {
				scrSpawnAppleGreen();	
			}
			if scr_can_spawn_fruit(400, 20, 20) {
				scrSpawnAppleZebra();	
			}
			if scr_can_spawn_fruit(1000, 30, 10) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(1500, 18, 25) {
				scrSpawnAppleClay();	
			}
			if timer >= 1500+18*25 {last_fruit_spawned = true;}
			break;
			
			
		case 50:
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleMOAB();	
			}
			if scr_can_spawn_fruit(75, 20, 20) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(100, 8, 25) {
				scrSpawnAppleLead(false, true);	
			}
			if scr_can_spawn_fruit(75, 20, 3) {
				scrSpawnApple();	
			}
			if scr_can_spawn_fruit(400, 1, 10) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 400+1*10 {last_fruit_spawned = true;}
			break;
			
			
		case 51:
			if scr_can_spawn_fruit(0, 5, 6) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(3, 5, 6) {
				scrSpawnAppleRainbow(true);	
			}
			if scr_can_spawn_fruit(25, 15, 20) {
				scrSpawnAppleClay(true);	
			}
			if timer >= 25+15*20 {last_fruit_spawned = true;}
			break;
		
		
		case 52:
			if scr_can_spawn_fruit(0, 25, 20) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(500, 10, 15) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(650, 2, 150) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 650+2*150 {last_fruit_spawned = true;}
			break;
			
			
		case 53:
			if scr_can_spawn_fruit(0, 80, 15) {
				scrSpawnApplePink(true);	
			}
			if scr_can_spawn_fruit(250, 3, 125) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 250+3*125 {last_fruit_spawned = true;}
			break;
			
		
		case 54:
			if scr_can_spawn_fruit(0, 35, 15) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(220, 2, 125) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 220+2*125 {last_fruit_spawned = true;}
			break;
			
			
		case 55:
			if scr_can_spawn_fruit(0, 9, 4) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(200, 9, 4) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(400, 9, 4) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(600, 9, 4) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(700, 1, 10) {
				scrSpawnAppleMOAB();	
			}
			if scr_can_spawn_fruit(800, 9, 4) {
				scrSpawnAppleClay();	
			}
			if timer >= 800+9*4 {last_fruit_spawned = true;}
			break;
			
			
		case 56:
			if scr_can_spawn_fruit(0, 40, 5) {
				scrSpawnAppleRainbow(true);	
			}
			if scr_can_spawn_fruit(80, 1, 10) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 40*5 {last_fruit_spawned = true;}
			break;
			
			
		case 57:
			if scr_can_spawn_fruit(0, 40, 10) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(0, 2, 50) {
				scrSpawnAppleMOAB();	
			}
			if scr_can_spawn_fruit(200, 2, 50) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 40*10 {last_fruit_spawned = true;}
			break;
			
			
		case 58:
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleMOAB();	
			}
			if scr_can_spawn_fruit(0, 5, 5) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(30, 10, 30) {
				scrSpawnAppleClay(false, true);	
			}
			if scr_can_spawn_fruit(30, 10, 15) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(185, 1, 10) {
				scrSpawnAppleMOAB();	
			}
			if scr_can_spawn_fruit(300, 3, 40) {
				scrSpawnAppleMOAB();	
			}
			if timer >= 300+3*40 {last_fruit_spawned = true;}
			break;
			
		
		//camo lead and regen clay
		case 59:
			if scr_can_spawn_fruit(0, 20, 5) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(115, 10, 5) {
				scrSpawnAppleClay(false, false, true);	
			}
			if scr_can_spawn_fruit(175, 50, 10) {
				scrSpawnAppleLead(true);	
			}
			if timer >= 175+50*10 {last_fruit_spawned = true;}
			break;
			
		//second boss
		case 60:
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleBFB();	
			}
			if timer >= 1*10 {last_fruit_spawned = true;}
			break;
			
			
		
			
		case 61:
			if scr_can_spawn_fruit(0, 150, 8) {
				scrSpawnAppleZebra();	
			}
			if scr_can_spawn_fruit(1000, 5, 50) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if timer >= 150*8 {last_fruit_spawned = true;}
			break;
			
			
		//fortified MOABS
		case 62:
			if scr_can_spawn_fruit(0, 100, 7) {
				scrSpawnAppleLead();	
			}
			if scr_can_spawn_fruit(0, 41, 15) {
				scrSpawnAppleBlack();	
			}
			if scr_can_spawn_fruit(400, 5, 80) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(850, 15, 5) {
				scrSpawnAppleRainbow(true);	
			}
			if scr_can_spawn_fruit(1100, 2, 150) {
				scrSpawnAppleMOAB(false, true, false);	
			}
			if timer >= 1100+2*150 {last_fruit_spawned = true;}
			break;
			
			
		case 63:
			if scr_can_spawn_fruit(0, 75, 30) {
				scrSpawnAppleLead();	
			}
			if scr_can_spawn_fruit(375, 40, 2) {
				scrSpawnAppleClay();
			}
			if scr_can_spawn_fruit(1275, 40, 2) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(2175, 42, 2) {
				scrSpawnAppleClay();	
			}
			if timer >= 75*30 {last_fruit_spawned = true;}
			break;
			
			
		case 64:
			if scr_can_spawn_fruit(0, 2, 150) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(75, 1, 10) {
				scrSpawnAppleMOAB(false, true, false);	
			}
			if scr_can_spawn_fruit(475, 2, 150) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(550, 1, 10) {
				scrSpawnAppleMOAB(false, true, false);	
			}
			if scr_can_spawn_fruit(975, 2, 150) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(1050, 1, 10) {
				scrSpawnAppleMOAB(false, true, false);	
			}
			if timer >= 975+2*150{last_fruit_spawned = true;}
			break;
			
			
		case 65:
			if scr_can_spawn_fruit(0, 100, 8) {
				scrSpawnAppleZebra();	
			}
			if scr_can_spawn_fruit(850, 70, 8) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(1410, 50, 8) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(950, 3, 150) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(1500, 2, 150) {
				scrSpawnAppleBFB(false, false, false);	
			}
			
			if timer >= 1410+50*8{last_fruit_spawned = true;}
			break;
			
			
		case 66:
			if scr_can_spawn_fruit(0, 2, 50) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(250, 2, 50) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(500, 4, 50) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(750, 3, 100) {
				scrSpawnAppleMOAB(false, true, false);	
			}
			
			if timer >= 750+3*100{last_fruit_spawned = true;}
			break;
			
			
		//camo fortified regen clays	
		case 67:
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleClay(true, true, true);	
			}
			if scr_can_spawn_fruit(50, 8, 50) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(350, 12, 10) {
				scrSpawnAppleClay(true, true, true);	
			}			
			if timer >= 350+12*10 {last_fruit_spawned = true;}
			break;
			
			
		case 68:
			if scr_can_spawn_fruit(0, 4, 50) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(50, 1, 10) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if timer >= 4*50 {last_fruit_spawned = true;}
			break;
		
		
		case 69:
			if scr_can_spawn_fruit(0, 25, 4) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(50, 40, 8) {
				scrSpawnAppleLead(false, true);	
			}
			if scr_can_spawn_fruit(50, 40, 8) {
				scrSpawnAppleBlack(false, true);	
			}
			if scr_can_spawn_fruit(200, 25, 4) {
				scrSpawnAppleClay();	
			}
			if timer >= 50+40*8 {last_fruit_spawned = true;}
			break;
			
			
		case 70:
		
			if scr_can_spawn_fruit(0, 200, 5) {
				scrSpawnAppleRainbow();
			}
			if scr_can_spawn_fruit(1000, 4, 150) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(1000, 120, 5) {
				scrSpawnAppleWhite(true);	
			}
			
			if timer >=1000+4*150 {last_fruit_spawned = true;}
			break;
			
		
		
		case 71:
		
			if scr_can_spawn_fruit(0, 30, 10) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(150, 10, 50) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if timer >= 150+10*50 {last_fruit_spawned = true;}
			break;
			
			
		case 72:
		
			if scr_can_spawn_fruit(0, 38, 16) {
				scrSpawnAppleClay(false, false, true);	
			}
			if scr_can_spawn_fruit(175, 2, 140) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if timer >= 38*16 {last_fruit_spawned = true;}
			break;
			
		
		case 73:
		
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if scr_can_spawn_fruit(50, 4, 15) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(150, 1, 10) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if scr_can_spawn_fruit(200, 4, 15) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if timer >= 200+4*15 {last_fruit_spawned = true;}
			break;
			
			
		case 74:
		
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if scr_can_spawn_fruit(0, 50, 18) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(500, 60, 28) {
				scrSpawnAppleClay(false, true);	
			}
			if scr_can_spawn_fruit(1050, 25, 20) {
				scrSpawnAppleClay(true, true, true);	
			}
			if timer >= 1050+25*20 {last_fruit_spawned = true;}
			break;
			
			
		case 75:
		
			if scr_can_spawn_fruit(0, 7, 100) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if scr_can_spawn_fruit(0, 14, 5) {
				scrSpawnAppleLead();	
			}
			if scr_can_spawn_fruit(300, 3, 75) {
				scrSpawnAppleMOAB(false, true, false);	
			}
			if scr_can_spawn_fruit(75, 14, 5) {
				scrSpawnAppleLead(false, true);	
			}
			if timer >= 7*100 {last_fruit_spawned = true;}
			break;
		
		
		//a bunch of clays packed tightly
		//waiting period of 2 frames is closer to btd6 but because regen works differently here,
		//i wanted to nerf it to 3 frames
		case 76:
		
			if scr_can_spawn_fruit(0, 60, 3) {
				scrSpawnAppleClay(false, false, true);	
			}
			if timer >= 60*3 {last_fruit_spawned = true;}
			break;
			
			
		case 77:
		
			if scr_can_spawn_fruit(0, 11, 200) {
				scrSpawnAppleMOAB(false, false, false);	
			}
			if scr_can_spawn_fruit(1050, 5, 50) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if timer >= 11*200 {last_fruit_spawned = true;}
			break;
			
			
		case 78:
		
			if scr_can_spawn_fruit(0, 150, 10) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(200, 80, 8) {
				scrSpawnAppleBlack(true);	
			}
			if scr_can_spawn_fruit(375, 75, 2) {
				scrSpawnAppleClay();	
			}
			if scr_can_spawn_fruit(750, 1, 10) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if scr_can_spawn_fruit(1125, 72, 2) {
				scrSpawnAppleClay(true);	
			}
			if timer >= 150*10 {last_fruit_spawned = true;}
			break;
			
			
		case 79:
		
			if scr_can_spawn_fruit(0, 500, 8) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(2000, 4, 200) {
				scrSpawnAppleBFB(false, false, false);	
			}
			if scr_can_spawn_fruit(3200, 2, 400) {
				scrSpawnAppleBFB(false, true, false);	
			}
			if timer >= 3200+2*400 {last_fruit_spawned = true;}
			break;
			
			
		case 80:
		
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleZOMG(false, false, false);	
			}
			if timer >= 1*10 {last_fruit_spawned = true;}
			break;
			
		
		////////////////////////////////////////////
		////////////////////////////////////////////
		//WARNING: AFTER THIS POINT, ALL BOSSES MUST SPAWN SUPER CLAYS TO DECREASE LAG
		////////////////////////////////////////////
		////////////////////////////////////////////
			
		case 81:
		
			if scr_can_spawn_fruit(0, 17, 200) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if timer >= 17*200 {last_fruit_spawned = true;}
			break;
			
			
		//10 BFBs and 5 fortified BFBs	
		case 82:
		
			if scr_can_spawn_fruit(0, 10, 180) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(2100, 5, 165) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if timer >= 2100+5*165 {last_fruit_spawned = true;}
			break;
			
		
		//groups of clays/fortified clays/regen clays and 30 MOABS
		case 83:
		
			if scr_can_spawn_fruit(0, 40, 85) {
				scrSpawnAppleSuperClay();	
			}
			if scr_can_spawn_fruit(5, 40, 85) {
				scrSpawnAppleSuperClay(false, true);	
			}
			if scr_can_spawn_fruit(10, 40, 85) {
				scrSpawnAppleSuperClay(false, false, true);	
			}
			if scr_can_spawn_fruit(2200, 30, 17) {
				scrSpawnAppleMOAB(false, false, false, true);	
			}
			if timer >= 10+40*85 {last_fruit_spawned = true;}
			break;
			
			
		case 84:
		
			if scr_can_spawn_fruit(0, 50, 17) {
				scrSpawnAppleMOAB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(275, 10, 20) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			if timer >= 50*17 {last_fruit_spawned = true;}
			break;
			
			
		case 85:
		
			if scr_can_spawn_fruit(0, 2, 250) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if timer >= 2*250 {last_fruit_spawned = true;}
			break;
			
			
		case 86:
		
			if scr_can_spawn_fruit(0, 5, 50) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if timer >= 5*50 {last_fruit_spawned = true;}
			break;
		
		
		case 87:
		
			if scr_can_spawn_fruit(0, 4, 125) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if timer >= 4*125 {last_fruit_spawned = true;}
			break;
			
			
		case 88:
		
			if scr_can_spawn_fruit(0, 2, 50) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(25, 18, 13) {
				scrSpawnAppleMOAB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(250, 8, 15) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if timer >= 250+8*15 {last_fruit_spawned = true;}
			break;
			
			
		case 89:
		
			if scr_can_spawn_fruit(0, 20, 25) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(550, 8, 90) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if timer >= 550+8*90 {last_fruit_spawned = true;}
			break;
			
			
		//camo regen fortified lead + DDTs
		
		case 90:
		
			if scr_can_spawn_fruit(0, 50, 10) {
				scrSpawnAppleLead(true, true, true);	
			}
			if scr_can_spawn_fruit(300, 3, 50) {
				scrSpawnAppleDDT(true, false, false, true);	
			}
			if timer >= 50*10 {last_fruit_spawned = true;}
			break;
			
			
		case 91:
		
			if scr_can_spawn_fruit(0, 100, 15) {
				scrSpawnAppleSuperClay(false, true, false);	
			}
			if scr_can_spawn_fruit(350, 20, 15) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			
			if timer >= 100*15 {last_fruit_spawned = true;}
			break;
			
			
		case 92:
		
			if scr_can_spawn_fruit(0, 50, 45) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(800, 4, 300) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			
			if timer >= 50*45 {last_fruit_spawned = true;}
			break;
			
			
		case 93:
		
			if scr_can_spawn_fruit(0, 10, 150) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(500, 6, 35) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			
			if timer >= 10*150 {last_fruit_spawned = true;}
			break;
			
		
		case 94:
		
			if scr_can_spawn_fruit(0, 25, 25) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(315, 6, 150) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if timer >= 315+6*150 {last_fruit_spawned = true;}
			break;
			
			
		//tons of camo pinks, camo fortified regrow leads, fortified MOABs, and DDTs	
		case 95:
		
			if scr_can_spawn_fruit(0, 117, 3) {
				scrSpawnAppleRainbow(true);	
			}
			if scr_can_spawn_fruit(300, 75, 3) {
				scrSpawnAppleLead(true, true, true);	
			}
			if scr_can_spawn_fruit(600, 75, 2) {
				scrSpawnAppleLead(true, true, true);	
			}
			if scr_can_spawn_fruit(800, 100, 3) {
				scrSpawnAppleLead(true, true, true);	
			}
			if scr_can_spawn_fruit(750, 30, 35) {
				scrSpawnAppleDDT(true, false, false, true);	
			}
			if scr_can_spawn_fruit(1150, 50, 20) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if timer >= 1150+50*20 {last_fruit_spawned = true;}
			break;
		
		
		case 96:
			
			if scr_can_spawn_fruit(0, 40, 25) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(0, 3, 125) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(25, 10, 38) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(525, 10, 35) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(525, 3, 125) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(1000, 10, 38) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if timer >= 1000+10*38 {last_fruit_spawned = true;}
			break;
			
			
		case 97:
		
			if scr_can_spawn_fruit(0, 2, 400) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if timer >= 2*400 {last_fruit_spawned = true;}
			break;
			
			
		case 98:
		
			if scr_can_spawn_fruit(0, 30, 19) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(50, 8, 12) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if timer >= 30*19 {last_fruit_spawned = true;}
			break;
			
			
		case 99:
		
			if scr_can_spawn_fruit(0, 60, 10) {
				scrSpawnAppleMOAB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(425, 9, 45) {
				scrSpawnAppleDDT(true, true, false, true);	
			}
			if timer >= 425+9*45 {last_fruit_spawned = true;}
			break;
			
			
		case 100:
		
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleBAD(false, false, false, true);	
			}
			//last_fruit_spawned is controlled by final boss object for this round
			if timer >= 9999999 {last_fruit_spawned = true;}
			break;
			
		case 101:
			
			if scr_can_spawn_fruit(0, 105, 10) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(500, 50, 2) {
				scrSpawnAppleSuperClay(false, true, false);	
			}
			if scr_can_spawn_fruit(575, 10, 20) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if timer >= 105*10 {last_fruit_spawned = true;}
			break;
			
		case 102:
			
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(450, 18, 95) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(750, 12, 150) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(750, 1, 10) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if scr_can_spawn_fruit(800, 3, 100) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(750, 3, 100) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(1500, 2, 10) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if timer >= 750+12*150 {last_fruit_spawned = true;}
			break
			
		case 103:
			
			if scr_can_spawn_fruit(1700, 10, 250) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if scr_can_spawn_fruit(750, 23, 3) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(0, 100, 25) {
				scrSpawnAppleMOAB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(0, 50, 50) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(1700, 23, 3) {
				scrSpawnAppleRainbow();	
			}
			
			if timer >= 1700+10*250 {last_fruit_spawned = true;}
			break;
			
		case 104:
			
			if scr_can_spawn_fruit(0, 150, 9) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(150, 200, 7) {
				scrSpawnAppleLead(false, true, false);	
			}
			if scr_can_spawn_fruit(150, 47, 3) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(150, 200, 5) {
				scrSpawnAppleSuperClay();	
			}
			if scr_can_spawn_fruit(800, 25, 20) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(800, 14, 23) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			
			if timer >= 150+200*7 {last_fruit_spawned = true;}
			break;
			
		case 105:
			
			if scr_can_spawn_fruit(0, 100, 3) {
				scrSpawnAppleSuperClay();	
			}
			if scr_can_spawn_fruit(150, 25, 75) {
				scrSpawnAppleLead(false, true, false);	
			}
			if scr_can_spawn_fruit(300, 300, 3) {
				scrSpawnAppleSuperClay(false, true);	
			}
			if scr_can_spawn_fruit(1000, 30, 2) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if timer >= 300+300*3 {last_fruit_spawned = true;}
			break;
			
		case 106:
			
			if scr_can_spawn_fruit(0, 33, 50) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(75, 33, 47) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(350, 27, 43) {
				scrSpawnAppleDDT(false, true, false, true);	
			}
			
			if timer >= 33*50 {last_fruit_spawned = true;}
			break;
			
		case 107:
		
			if scr_can_spawn_fruit(0, 100, 5) {
				scrSpawnAppleSuperClay(false, true);	
			}
			if scr_can_spawn_fruit(125, 104, 3) {
				scrSpawnAppleRainbow(true);	
			}
			if scr_can_spawn_fruit(300, 3, 50) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if scr_can_spawn_fruit(600, 3, 50) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if scr_can_spawn_fruit(900, 4, 50) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			
			if timer >= 900+4*50 {last_fruit_spawned = true;}
			break;
			
		case 108:
		
			if scr_can_spawn_fruit(0, 9, 45) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(450, 10, 55) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			
			if timer >= 450+10*45 {last_fruit_spawned = true;}
			break;
			
		case 109:
		
			if scr_can_spawn_fruit(100, 4, 50) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(0, 30, 18) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(85, 15, 15) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(94, 15, 30) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(230, 15, 25) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			
			if timer >= 230+15*25 {last_fruit_spawned = true;}
			break;
			
		case 110:
		
			if scr_can_spawn_fruit(0, 25, 100) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(150, 18, 60) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(1350, 12, 58) {
				scrSpawnAppleDDT(false, true, false, true);	
			}
			if timer >= 25*100 {last_fruit_spawned = true;}
			break;
		
		case 111:
		
			if scr_can_spawn_fruit(0, 9, 200) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if scr_can_spawn_fruit(900, 22, 95) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}		
			
			if timer >= 900+22*95 {last_fruit_spawned = true;}
			break;
			
		case 112:
		
			if scr_can_spawn_fruit(0, 27, 40) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(320, 21, 45) {
				scrSpawnAppleDDT(false, true, false, true);	
			}		
			
			if timer >= 320+21*45 {last_fruit_spawned = true;}
			break;
			
		case 113:
		
			if scr_can_spawn_fruit(0, 42, 40) {
				scrSpawnAppleSuperClay(true);	
			}
			if scr_can_spawn_fruit(20, 42, 40) {
				scrSpawnAppleSuperClay(false, true);	
			}
			if scr_can_spawn_fruit(0, 75, 15) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(200, 15, 38) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			
			if timer >= 75*15 {last_fruit_spawned = true;}
			break;
			
		case 114:
		
			if scr_can_spawn_fruit(0, 24, 20) {
				scrSpawnAppleMOAB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(200, 36, 20) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(200, 12, 25) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(500, 8, 30) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(500, 5, 40) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(900, 3, 150) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if scr_can_spawn_fruit(900, 9, 50) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(1100, 6, 50) {
				scrSpawnAppleDDT(false, true, false, true);	
			}
			
			
			if timer >= 1100+6*50 {last_fruit_spawned = true;}
			break;
			
		case 115:
			
			if scr_can_spawn_fruit(0, 9, 50) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(200, 6, 50) {
				scrSpawnAppleDDT(false, true, false, true);	
			}
			if scr_can_spawn_fruit(200, 5, 40) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(500, 3, 100) {
				scrSpawnAppleZOMG(false, true, false, true);	
			}
			if scr_can_spawn_fruit(500, 12, 25) {
				scrSpawnAppleBFB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(800, 8, 30) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(800, 24, 20) {
				scrSpawnAppleMOAB(false, false, false, true);	
			}
			if scr_can_spawn_fruit(1100, 36, 20) {
				scrSpawnAppleMOAB(false, true, false, true);	
			}
			
			if timer >= 1100+36*20 {last_fruit_spawned = true;}
			break;
			
		case 116:
		
			if scr_can_spawn_fruit(0, 94, 5) {
				scrSpawnAppleRainbow();	
			}
			if scr_can_spawn_fruit(0, 18, 28) {
				scrSpawnAppleBFB(false, true, false, true);	
			}
			if scr_can_spawn_fruit(300, 8, 12) {
				scrSpawnAppleDDT(false, true, false, true);	
			}		
			
			if timer >= 18*28 {last_fruit_spawned = true;}
			break;
			
		case 117:
		
			if scr_can_spawn_fruit(0, 250, 3) {
				scrSpawnAppleLead();	
			}
			if scr_can_spawn_fruit(0, 27, 38) {
				scrSpawnAppleDDT(false, false, false, true);	
			}
			if scr_can_spawn_fruit(500, 18, 40) {
				scrSpawnAppleDDT(false, true, false, true);	
			}		
			
			if timer >= 500+18*40 {last_fruit_spawned = true;}
			break;
			
		case 118:
		
			if scr_can_spawn_fruit(0, 12, 50) {
				scrSpawnAppleZOMG(false, false, false, true);	
			}
			if scr_can_spawn_fruit(400, 30, 40) {
				scrSpawnAppleDDT(false, true, false, true);	
			}	
		
			
			if timer >= 12*50 {last_fruit_spawned = true;}
			break;
			
		//BADextra can be spawned without the "super clay" argument
			
		case 119:
		
			if scr_can_spawn_fruit(0, 2, 250) {
				scrSpawnAppleBADextra();
			}
			if scr_can_spawn_fruit(650, 1, 10) {
				scrSpawnAppleBADextra();
			}
		
			
			if timer >= 650+1*10 {last_fruit_spawned = true;}
			break;
			
		case 120:
		
			if scr_can_spawn_fruit(0, 12, 95) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(0, 12, 50) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			if scr_can_spawn_fruit(100, 24, 35) {
				scrSpawnAppleMOAB(false, true, false, true);
			}
			
			if timer >= 12*95 {last_fruit_spawned = true;}
			break;
			
		case 121:
		
			if scr_can_spawn_fruit(0, 14, 50) {
				scrSpawnAppleBFB(false, true, false, true);
			}
			if scr_can_spawn_fruit(350, 28, 37) {
				scrSpawnAppleMOAB(false, true, false, true);
			}
			if scr_can_spawn_fruit(500, 6, 100) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			
			if timer >= 500+6*100 {last_fruit_spawned = true;}
			break;
			
		case 122:
		
			if scr_can_spawn_fruit(0, 20, 55) {
				scrSpawnAppleBFB(false, true, false, true);
			}
			if scr_can_spawn_fruit(0, 40, 42) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			if scr_can_spawn_fruit(1600, 225, 3) {
				scrSpawnAppleLead(false, true);
			}
			
			if timer >= 1600+225*3 {last_fruit_spawned = true;}
			break;
			
		case 123:
		
			if scr_can_spawn_fruit(0, 200, 10) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			if scr_can_spawn_fruit(0, 8, 300) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			
			if timer >= 8*300 {last_fruit_spawned = true;}
			break;
			
		case 124:
		
			if scr_can_spawn_fruit(0, 75, 37) {
				scrSpawnAppleBFB(false, true, false, true);
			}
			
			if timer >= 75*37 {last_fruit_spawned = true;}
			break;
			
		case 125:
		
			if scr_can_spawn_fruit(0, 21, 250) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(250, 42, 125) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			if scr_can_spawn_fruit(2200, 63, 75) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			
			if timer >= 2200+63*75 {last_fruit_spawned = true;}
			break;
			
		case 126:
		
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleLead(true, true, true);
			}
			if scr_can_spawn_fruit(250, 99, 13) {
				scrSpawnAppleDDT(false, false, false, true);
			}
			
			if timer >= 250+99*13 {last_fruit_spawned = true;}
			break;
			
		case 127:
		
			if scr_can_spawn_fruit(0, 48, 10) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			if scr_can_spawn_fruit(400, 24, 15) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			
			if timer >= 400+24*15 {last_fruit_spawned = true;}
			break;
			
		case 128:
		
			if scr_can_spawn_fruit(0, 39, 30) {
				scrSpawnAppleDDT(false, true, false, true);
			}
			if scr_can_spawn_fruit(200, 200, 3) {
				scrSpawnAppleSuperClay(true, true);
			}
			if scr_can_spawn_fruit(450, 30, 15) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			
			if timer >= 39*30 {last_fruit_spawned = true;}
			break;
			
		case 129:
		
			if scr_can_spawn_fruit(0, 7, 188) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			if scr_can_spawn_fruit(75, 77, 3) {
				scrSpawnAppleLead(true, true, false);
			}
			if scr_can_spawn_fruit(150, 19, 3) {
				scrSpawnAppleRainbow(true);
			}
			if scr_can_spawn_fruit(220, 77, 5) {
				scrSpawnAppleSuperClay(true);
			}
			if scr_can_spawn_fruit(400, 7, 131) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(525, 18, 50) {
				scrSpawnAppleDDT(false, false, false, true);
			}
			
			
			if timer >= 525+18*50 {last_fruit_spawned = true;}
			break;
			
		case 130:
		
			if scr_can_spawn_fruit(0, 84, 15) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			if scr_can_spawn_fruit(250, 66, 25) {
				scrSpawnAppleMOAB(false, true, false, true);
			}
			if scr_can_spawn_fruit(1250, 48, 40) {
				scrSpawnAppleDDT(false, false, false, true);
			}
			if scr_can_spawn_fruit(1650, 6, 40) {
				scrSpawnAppleDDT(false, true, false, true);
			}
			
			
			if timer >= 1650+6*40 {last_fruit_spawned = true;}
			break;
			
		case 131:
		
			if scr_can_spawn_fruit(0, 18, 183) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			
			if timer >= 18*183 {last_fruit_spawned = true;}
			break;
			
		case 132:
		
			if scr_can_spawn_fruit(0, 5, 10) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(250, 1, 10) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(500, 3, 10) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			if scr_can_spawn_fruit(500, 23, 2) {
				scrSpawnAppleRainbow(true);
			}
			if scr_can_spawn_fruit(1000, 5, 10) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(1250, 1, 10) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(1500, 3, 10) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			if scr_can_spawn_fruit(1500, 24, 2) {
				scrSpawnAppleRainbow(true);
			}
			if timer >= 1500+24*2 {last_fruit_spawned = true;}
			break;
			
		case 133:
		
			if scr_can_spawn_fruit(0, 6, 8) {
				scrSpawnAppleMOAB(false, true, false, true);
			}
			if scr_can_spawn_fruit(50, 6, 8) {
				scrSpawnAppleBFB(false, true, false, true);
			}
			if scr_can_spawn_fruit(100, 2, 25) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			if scr_can_spawn_fruit(200, 6, 8) {
				scrSpawnAppleMOAB(false, true, false, true);
			}
			if scr_can_spawn_fruit(250, 6, 8) {
				scrSpawnAppleBFB(false, true, false, true);
			}
			if scr_can_spawn_fruit(300, 2, 25) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			if scr_can_spawn_fruit(400, 27, 4) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			if scr_can_spawn_fruit(460, 6, 4) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			if scr_can_spawn_fruit(500, 9, 80) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			
			if timer >= 500+9*80 {last_fruit_spawned = true;}
			break;
			
		case 134:
		
			if scr_can_spawn_fruit(0, 12, 8) {
				scrSpawnAppleBFB(false, true, false, true);
			}
			if scr_can_spawn_fruit(120, 28, 5) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			
			if timer >= 120+28*5 {last_fruit_spawned = true;}
			break;
			
		case 135:
		
			if scr_can_spawn_fruit(0, 21, 50) {
				scrSpawnAppleDDT(false, true, false, true);
			}
			if scr_can_spawn_fruit(500, 14, 180) {
				scrSpawnAppleZOMG(false, true, false, true);
			}
			
			if timer >= 500+14*180 {last_fruit_spawned = true;}
			break;
			
		case 136:
		
			if scr_can_spawn_fruit(0, 96, 15) {
				scrSpawnAppleMOAB(false, true, false, true);
			}
			if scr_can_spawn_fruit(500, 14, 60) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			
			if timer >= 96*15 {last_fruit_spawned = true;}
			break;
			
		case 137:
		
			if scr_can_spawn_fruit(0, 9, 48) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(200, 12, 15) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			if scr_can_spawn_fruit(450, 24, 4) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			if scr_can_spawn_fruit(850, 9, 48) {
				scrSpawnAppleZOMG(false, false, false, true);
			}
			if scr_can_spawn_fruit(1050, 12, 15) {
				scrSpawnAppleBFB(false, false, false, true);
			}
			if scr_can_spawn_fruit(1300, 24, 4) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			
			if timer >= 1300+24*4 {last_fruit_spawned = true;}
			break
			
		case 138:
		
			if scr_can_spawn_fruit(0, 20, 50) {
				scrSpawnAppleDDT(false, true, false, true);
			}
			if scr_can_spawn_fruit(265, 20, 45) {
				scrSpawnAppleDDT(false, true, false, true);
			}
			if scr_can_spawn_fruit(500, 20, 75) {
				scrSpawnAppleDDT(false, true, false, true);
			}
			if scr_can_spawn_fruit(750, 21, 55) {
				scrSpawnAppleDDT(false, true, false, true);
			}
			if scr_can_spawn_fruit(750, 45, 30) {
				scrSpawnAppleDDT(false, false, false, true);
			}
			
			if timer >= 750+45*30 {last_fruit_spawned = true;}
			break;
			
		case 139:
		
			if scr_can_spawn_fruit(0, 108, 15) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			if scr_can_spawn_fruit(250, 42, 20) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			if scr_can_spawn_fruit(375, 72, 19) {
				scrSpawnAppleMOAB(false, true, false, true);
			}
			if scr_can_spawn_fruit(500, 31, 21) {
				scrSpawnAppleMOAB(false, false, false, true);
			}
			
			if timer >= 375+72*19 {last_fruit_spawned = true;}
			break;
			
		case 140:
		
			if scr_can_spawn_fruit(0, 1, 10) {
				scrSpawnAppleBADextra(false, true, false, true);
			}
			if scr_can_spawn_fruit(2750, 1, 10) {
				scrSpawnAppleBADextra(false, false, false, true);
			}
			
			if timer >= 2750+1*10 {last_fruit_spawned = true;}
			break;
	}
	
	timer++;
}
