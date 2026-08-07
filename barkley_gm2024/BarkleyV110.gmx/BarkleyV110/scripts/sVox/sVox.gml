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
	return(-1);


}
