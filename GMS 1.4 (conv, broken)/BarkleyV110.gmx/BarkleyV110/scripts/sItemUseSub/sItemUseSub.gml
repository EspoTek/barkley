function sItemUseSub(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Id of player, value, effect, duration
	//add percent
	//cures condition global.char_res2[]
	//get minus
	//do all
	//maker sure conditions heal on all
	//Hustle, Zaubered, Diabetes, Glaucoma, Muscled, Time Out
	//cap values
	//area is grabbed before
	//port: item effects are comma-delimited lists ("Single, Cure Diabetes",
	//"Single, Revive, VP +%100") and each part comes through here.  A part with no
	//digits leaves string_digits empty, and GameMaker 2024's real("") raises where
	//GM6 returned 0 -- so every Cure and Revive item crashed on use.  Same fix in
	//sBItemSub, which is the in-battle path.
	var _digits = string_digits(argument0);
	value=(_digits=="") ? 0 : real(_digits);
	effect=string_letters(argument0);
	if (string_count("permanent",string_lower(effect))>0) {
	duration="permanent";
	effect=string_replace(effect,"Permanent","");
	} else duration="temp";
	comm=0; //command id, applied by sItemUseComm (was an execute_string'd code string)
	if (string_count("%",argument0)>0) percent=1;
	else percent=0;
	if (string_count("revive",string_lower(argument0))>0) {
	comm=1;
	} else if (string_count("cure",string_lower(argument0))>0) { //space after efect
	effect=string_replace(effect,"Cure",""); //had string lower
	if (string_count("ailments",string_lower(argument0))>0) comm=2;
	else if (string_count("all",string_lower(argument0))>0) comm=3;
	else comm=4;
	} else {
	effect=string_lower(effect);
	}
	if (duration="permanent") {
	if (effect="vp") { comm=5; }
	if (effect="bp") { comm=6; }
	if (effect="power") { comm=7; }
	if (effect="guard") { comm=8; }
	if (effect="speed") { comm=9; }
	if (effect="brain") { comm=10; }
	} else { //temporary diration
	if (percent=0) {
	if (effect="vp") { comm=11; }
	if (effect="bp") { comm=12; }
	if (effect="power") { comm=13; }
	if (effect="guard") { comm=14; }
	if (effect="speed") { comm=15; }
	if (effect="brain") { comm=16; }
	} else { //percent
	if (effect="vp") { comm=17; }
	if (effect="bp") { comm=18; }
	if (effect="power") { comm=19; }
	if (effect="guard") { comm=20; }
	if (effect="speed") { comm=21; }
	if (effect="brain") { comm=22; }
	}
	}

	//One or all
	if (area="single") {
	player=who;
	sItemUseComm();
	} else {
	for (playe=0; global.party[playe]!=-1; playe+=1) {
	player=global.party[playe];
	sItemUseComm();
	}
	}

	//cap all values
	for (playe=0; global.party[playe]!=-1; playe+=1) {
	player=global.party[playe];
	global.char_chp[player]=min(global.char_hp[player],global.char_chp[player]);
	global.char_czp[player]=min(global.char_zp[player],global.char_czp[player]);
	if (false) { //battle
	global.char_cattack[player]=min(global.char_attack[player],global.char_cattack[player]);
	global.char_cdefense[player]=min(global.char_defense[player],global.char_cdefense[player]);
	global.char_cfootwork[player]=min(global.char_footwork[player],global.char_cfootwork[player]);
	global.char_czauberacity[player]=min(global.char_zauberacity[player],global.char_czauberacity[player]);
	}
	}


}
