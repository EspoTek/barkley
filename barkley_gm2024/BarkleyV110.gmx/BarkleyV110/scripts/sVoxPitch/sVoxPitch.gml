function sVoxPitch(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): per-speaker pitch multiplier on
	//top of the shared bloop. Hellbane speaks with Balthios's exact voice and
	//cadence but ~5Hz higher (5/120 = x1.042), per the user's spec.
	var nl;
	nl=string_lower(string(argument0));
	if (string_pos("hellbane",nl)>0) return(1.042);
	return(1);


}
