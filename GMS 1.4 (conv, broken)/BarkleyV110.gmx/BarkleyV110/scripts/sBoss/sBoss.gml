function sBoss(argument0) {
	for (w=0; w<10; w+=1) ene[w]="";
	//Catacomb
	if (argument0="oBDreadref") { global.b_music=mBattle; ene[0]="oBDreadref,10,48,96"; global.b_back=0; }
	if (argument0="oBKobebryant") { global.b_music=mBattle; ene[0]="oBKobebryant,13,48,96"; global.b_back=0; }
	if (argument0="oBBallmonster") { global.b_music=mEpicbattle; ene[0]="oBBallmonster,12,56,112"; global.b_back=0; }
	//Sewer
	if (argument0="JordanVince") {
	global.b_music=mEternity;
	ene[0]="oBJordan,16,72,96";ene[1]="oBVinceE,14,24,128";
	global.b_back=2;
	}
	if (argument0="oBBodyguard0") {
	global.b_music=mBattle;
	ene[0]="oBBodyguard,13,48,128";ene[1]="oBBodyguard,13,72,80";
	global.b_back=3;
	}
	if (argument0="oBBodyguard1") { //toll guard, was 20
	global.b_music=mBattle;
	ene[0]="oBBodyguard,28,48,96";
	global.b_back=1;
	}
	if (argument0="oBBodyguard2") { global.b_music=mBattle; ene[0]="oBBodyguard,15,48,96"; global.b_back=3; }
	if (argument0="oBAllard") { global.b_music=mEpicbattle; ene[0]="oBAllard,18,52,110"; global.b_back=3; }
	//Proto
	if (argument0="oBGhostdad") { global.b_music=mEpicbattle; ene[0]="oBGhostdad,20,48,130"; global.b_back=4; }
	//Spalding
	if (argument0="oBCreelman") { global.b_music=mEpicbattle; ene[0]="oBCreelman,22,56,110"; global.b_back=5; }
	//Liberty
	if (argument0="oBDuergar") { global.b_music=mEpicbattle; ene[0]="oBDuergar,23,48,112"; global.b_back=12; } //BACK HERE
	if (argument0="oBReginald") { global.b_music=mEpicbattle; ene[0]="oBReginald,24,48,96"; global.b_back=11; } //BACK HERE
	if (argument0="oBDiabeasty") { global.b_music=mEpicbattle; ene[0]="oBDiabeasty,24,48,101"; global.b_back=6; } //BACK HERE
	if (argument0="oBVince") { global.b_music=mEternity; ene[0]="oBVinceE1,24,48,96"; global.b_back=13; } //BACK HERE
	//Cuchulainn
	if (argument0="oBRobocop") { global.b_music=mBattle; ene[0]="oBRobocop,19,48,96"; global.b_back=7; }
	if (argument0="oBMaster") { global.b_music=mBattle; ene[0]="oBMaster,19,48,96"; global.b_back=7; }
	if (argument0="oBKratos") { global.b_music=mBattle; ene[0]="oBKratos,19,48,96"; global.b_back=7; }
	if (argument0="oBCryptspider") { //this is correct
	global.b_back=7;
	global.b_music=mEpicbattle;
	ene[0]="oBCryptSpider,22,48,112";
	}
	//Necron
	if (argument0="Jordan") {
	global.b_music=mSweet;
	ene[0]="oBJordan2,26,48,106"; //23
	global.b_back=9; //court
	}
	if (argument0="oBShadow0") { //level 26
	global.b_music=mSpace;
	ene[0]="oBShadow0,29,56,160";
	global.b_back=8;
	}
	if (argument0="oBTrex") {
	global.b_music=mFinal;
	ene[0]="oBTrex,26,40,112";
	global.b_back=8;
	}
	//Secret
	if (argument0="Ghastly") { global.b_music=mEpicbattle; ene[0]="oBGhastly,26,56,112"; global.b_back=4; }
	if (argument0="Goya") { global.b_music=mBattle; ene[0]="oBBodyguard,22,48,96"; global.b_back=4; }
	//Arena
	if (argument0="oBHellorc") { global.b_music=mBattle; global.b_back=10; ene[0]="oBHellorc,18,40,112"; }
	if (argument0="oBDoomhell") { global.b_music=mBattle; global.b_back=10; ene[0]="oBDoomhell,18,40,112"; }
	if (argument0="oBBloodghoul") { global.b_music=mBattle; global.b_back=10; ene[0]="oBBloodghoul,18,40,112"; }
	if (argument0="oBDelmon") { global.b_music=mBattle; global.b_back=10; ene[0]="oBDelmon,18,40,142"; }
	if (argument0="oBGarnett") { global.b_music=mEpicbattle; global.b_back=10; ene[0]="oBGarnett,18,40,112"; }
	//sCinema(oBarkley,'code',cine_0461);
	//sCinema(oBarkley,'code',cine_0006);



}
