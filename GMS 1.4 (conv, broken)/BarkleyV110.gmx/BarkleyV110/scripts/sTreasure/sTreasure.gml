function sTreasure(argument0, argument1) {
	//Must have a dialog or unset dialog
	if (argument1=1) { image_index=global.treasure[argument0]; image_speed=0; exit; }
	if (global.treasure[argument0]=1) exit;
	oBarkley.move="";
	//0 is / was oven
	//Catacombs
	if (argument0=1) { //Cata2, by pool of water cinema
	sCinema(oBarkley,"item","Volleyball",1);
	}
	if (argument0=2) { //Cata2, by pool of water cinema
	sCinema(oBarkley,"item","Jersey",1);
	}
	if (argument0=3) { //After dread ref
	sCinema(oBarkley,"item","Protein Paste",5);
	}
	if (argument0=4) { //Before dread ref
	sCinema(oBarkley,"item","Ecto Cooler",3);
	}
	if (argument0=5) { //Canopic Urn
	sCinema(oBarkley,"item","Ecto Cooler",3);
	}
	if (argument0=6) { //Beside puzzle room in same room
	sCinema(oBarkley,"item","Chicken Dew",2);
	}
	if (argument0=7) { //SPlit down 2 paths room, before puzzle room
	sCinema(oBarkley,"item","Jacket",1);
	}
	if (argument0=8) { //Right before bball monster
	sCinema(oBarkley,"item","Bapes",1);
	}
	//Sewers
	if (argument0=9) { //Right when you enter sewers
	global.dialog=0;
	sCinema(oBarkley,"item","Ice Zauber",1); //was 2
	}
	if (argument0=10) { //Crevice 0, pre-cesspool
	global.dialog=0;
	//sCinema(oBarkley,'item',"Jam Spirit",1);
	sCinema(oBarkley,"item","Chicken Dew",1); //
	}
	if (argument0=11) { //crevice1
	global.dialog=0;
	//sCinema(oBarkley,'item',"Team Spirit",1);
	sCinema(oBarkley,"item","Chicken Dew",1); //
	}
	if (argument0=12) { //dekembe
	global.dialog=0;
	sCinema(oBarkley,"item","Chicken Dew",2);
	}
	if (argument0=13) { //sewers2, main lobby
	global.dialog=0;
	sCinema(oBarkley,"item","Facemask",1);
	}
	//spalding has it's own items, 
	//6d - BBall Juice
	//10d - Dwarfbane
	//23d - Time Zauber
	//36d - Final Gun
	//Cuchulainn
	if (argument0=14) { //Main room
	global.dialog=0;
	sCinema(oBarkley,"item","Chicken Dew",5);
	}
	if (argument0=15) { //Main room
	global.dialog=0;
	sCinema(oBarkley,"item","Pumps",1);
	}
	if (argument0=16) { //Main room
	global.dialog=0;
	sCinema(oBarkley,"item","BBall Juice",5);
	}
	if (argument0=17) { //Maze
	global.dialog=0;
	sCinema(oBarkley,"item","Chicken Fry",2);
	}
	if (argument0=18) { //Maze
	global.dialog=0;
	sCinema(oBarkley,"item","Bloody Zauber",1);
	}
	if (argument0=19) { //Maze
	global.dialog=0;
	sItem("gold",1000); 
	sCinema(oBarkley,"code",cine_0153);
	sCinema(oBarkley,"dialog","Captured $1000 Neo-Shekels!");
	sCinema(oBarkley,"code",cine_0074);
	}
	//Liberty road
	if (argument0=20) {
	global.dialog=0;
	sCinema(oBarkley,"item","Ultimate Wristband",1);
	}
	//technical code
	global.treasure[argument0]=1;
	image_index=1; image_speed=0;

	sound_play(mChest);


}
