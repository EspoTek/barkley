function sItemUseComm() {
	//Applies overworld item effect `comm` (id set in sItemUseSub) to `player`.
	//Reads the calling instance's comm/player/value/effect vars — replaces the
	//original execute_string(comm) code strings one-for-one.
	switch (comm) {
	case 0: break;
	case 1: global.char_chp[player]=max(global.char_chp[player],1); break;
	case 2: break; //was "x=x;" (cure ailments no-op)
	case 3: global.char_res2[player]=""; break;
	case 4: global.char_res2[player]=string_replace(global.char_res2[player],effect+" ",""); break;
	//permanent
	case 5: global.char_hp[player]+=value; if (global.char_chp[player]>0) global.char_chp[player]+=value; break;
	case 6: global.char_zp[player]+=value; global.char_czp[player]+=value; break;
	case 7: global.char_attack[player]+=value; break;
	case 8: global.char_defense[player]+=value; break;
	case 9: global.char_footwork[player]+=value; break;
	case 10: global.char_zauberacity[player]+=value; break;
	//temporary, flat
	case 11: if (global.char_chp[player]>0) global.char_chp[player]+=value; break;
	case 12: global.char_czp[player]+=value; break;
	case 13: global.char_cattack[player]+=value; break;
	case 14: global.char_cdefense[player]+=value; break;
	case 15: global.char_cfootwork[player]+=value; break;
	case 16: global.char_czauberacity[player]+=value; break;
	//temporary, percent
	case 17: if (global.char_chp[player]>0) global.char_chp[player]+=floor((global.char_hp[player]/100)*value); break;
	case 18: global.char_czp[player]+=floor((global.char_zp[player]/100)*value); break;
	case 19: global.char_cattack[player]+=floor(global.char_attack[player]/100)*value; break;
	case 20: global.char_cdefense[player]+=floor(global.char_defense[player]/100)*value; break;
	case 21: global.char_cfootwork[player]+=floor(global.char_footwork[player]/100)*value; break;
	case 22: global.char_czauberacity[player]+=floor(global.char_zauberacity[player]/100)*value; break;
	}



}
