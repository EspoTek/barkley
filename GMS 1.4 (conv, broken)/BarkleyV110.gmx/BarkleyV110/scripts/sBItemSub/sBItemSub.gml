function sBItemSub(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Arg0 is delimited item effect, must call itemuse before
	//port: as in sItemUseSub -- a delimited effect part with no digits ("Revive",
	//"Cure All") leaves string_digits empty, and real("") raises under GameMaker
	//2024 where GM6 returned 0.  This is the in-battle path, so it took out using
	//any Cure or Revive item in a fight.
	var _digits = string_digits(argument0);
	value=(_digits=="") ? 0 : real(_digits);
	effect=string_letters(argument0);
	duration="temp";
	comm=0; //command id, applied by sBItemComm (was an execute_string'd code string)

	if (string_count("%",argument0)>0) percent=1;
	else percent=0;
	//Cure ailments
	if (string_count("revive",string_lower(argument0))>0) {
	comm=1;
	} else if (string_count("cure",string_lower(argument0))>0) { //space after efect
	effect=string_lower(string_replace(effect,"Cure",""));
	if (string_count("ailments",string_lower(argument0))>0) comm=2;
	else if (string_count("all",string_lower(argument0))>0) comm=3;
	else comm=4;
	} else {
	effect=string_lower(effect);
	}
	//Set code for stat modify
	if (percent=0) {
	if (effect="vp") { comm=5; }
	if (effect="bp") { comm=6; }
	if (effect="power") { comm=7; }
	if (effect="guard") { comm=8; }
	if (effect="speed") { comm=9; }
	if (effect="brain") { comm=10; }
	} else { //percent
	if (effect="vp") { comm=11; }
	if (effect="bp") { comm=12; }
	if (effect="power") { comm=13; }
	if (effect="guard") { comm=14; }
	if (effect="speed") { comm=15; }
	if (effect="brain") { comm=16; }
	}
	//apply code on objects - ADD DAMAGE OBJECT SHOWING EFFECT
	if (area="single") {
	player=who;
	sBItemComm();
	} else {
	for (playe=0; global.party[playe]!=-1; playe+=1) {
	player=global.b_pid[playe];
	sBItemComm();
	}
	}
	//cap all values
	sVerifyStats();


}
