function sVox(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): map a dialog speaker name to the
	//character's bloop sound, honouring the per-character variant in sat[15..18].
	//Returns -1 for speakers without a voice (dialog stays silent, as shipped).
	var nl;
	nl=string_lower(string(argument0));
	if (string_pos("barkley",nl)>0) return(asset_get_index("mVoxBarkley"+string(global.sat[15])));
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
	if (string_pos("juwanna",nl)>0) return(asset_get_index("mVoxJuwanna"+string(global.sat[26])));
	if (string_pos("3000",nl)>0) return(asset_get_index("mVoxMr3000"+string(global.sat[27])));
	if (string_pos("boyardee",nl)>0) return(asset_get_index("mVoxChef"+string(global.sat[28])));
	if (string_pos("hundley",nl)>0 || string_pos("hughley",nl)>0) return(asset_get_index("mVoxHundley"+string(global.sat[29])));
	return(-1);


}
