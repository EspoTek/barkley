function sVox(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): map a dialog speaker name to the
	//character's bloop sound, honouring the per-character variant in sat[15..18].
	//Returns -1 for speakers without a voice (dialog stays silent, as shipped).
	var nl;
	nl=sVoxAlias(argument0); //name plates (the Priest) resolve to the person behind them
	//Name plates that are captions rather than people: the canon warning, the
	//puzzle control legend, the arena rule board. Expository text on screen is
	//nobody speaking, so it stays silent. A "Television" or "Computer" name
	//plate IS someone talking through a speaker, and keeps its voice.
	if (nl="warning" || nl="controls" || nl="b-ball dimension rules") return(-1);
	if (string_pos("barkley",nl)>0 || string_pos("bakley",nl)>0) return(asset_get_index("mVoxBarkley"+string(global.sat[15]))); //Sir/Shade Bakley speak with his voice
	if (string_pos("hoopz",nl)>0) return(asset_get_index("mVoxHoopz"+string(global.sat[16])));
	if (string_pos("jordan",nl)>0) return(asset_get_index("mVoxJordan"+string(global.sat[17])));
	if (string_pos("balthios",nl)>0) return(asset_get_index("mVoxBalthios"+string(global.sat[18])));
	//extended cast, variants in sat[19..29] ("dwarf" deliberately catches every
	//dwarf; Hellbane IS Balthios, so he speaks with Balthios's picked voice)
	if (string_pos("hellbane",nl)>0) return(asset_get_index("mVoxBalthios"+string(global.sat[18])));
	if (string_pos("dwarf",nl)>0) return(asset_get_index("mVoxCyberdwarf"+string(global.sat[19])));
	if (string_pos("vince",nl)>0) return(asset_get_index("mVoxVinceborg"+string(global.sat[20])));
	if (string_pos("lebron",nl)>0) return(asset_get_index("mVoxLebron"+string(global.sat[21])));
	if (string_pos("garnett",nl)>0) return(asset_get_index("mVoxGarnett"+string(global.sat[22])));
	if (string_pos("latta",nl)>0) return(asset_get_index("mVoxLatta"+string(global.sat[23])));
	if (string_pos("vitale",nl)>0) return(asset_get_index("mVoxVitale"+string(global.sat[24])));
	if (string_pos("brimley",nl)>0) return(asset_get_index("mVoxBrimley"+string(global.sat[25])));
	if (string_pos("juwanna",nl)>0 || string_pos("juwina",nl)>0) return(asset_get_index("mVoxJuwanna"+string(global.sat[26]))); //the game also spells her Juwina
	if (string_pos("3000",nl)>0) return(asset_get_index("mVoxMr3000"+string(global.sat[27])));
	if (string_pos("boyardee",nl)>0) return(asset_get_index("mVoxChef"+string(global.sat[28])));
	if (string_pos("hundley",nl)>0 || string_pos("hughley",nl)>0) return(asset_get_index("mVoxHundley"+string(global.sat[29])));
	if (string_pos("pump",nl)>0) return(asset_get_index("mVoxPump"+string(global.sat[30]))); //the Truck Pump, vidcon specialist
	//every other NAMED speaker: stable hash-interpolated voice, drawn from the
	//pool matching their name's class (nameless narration stays silent)
	var vh, vc;
	vh=sVoxHash(nl);
	if (vh<0) return(-1);
	vc=sVoxClass(nl);
	if (vc=1) return(asset_get_index("mVoxNpcF"+string(vh mod 4)));
	if (vc=2) return(asset_get_index("mVoxNpcK"+string(vh mod 2)));
	if (vc=3) return(asset_get_index("mVoxNpcM"+string(vh mod 3)));
	if (vc=4) return(asset_get_index("mVoxNpcR"+string(vh mod 2)));
	return(asset_get_index("mVoxNpc"+string(vh mod 12)));


}
