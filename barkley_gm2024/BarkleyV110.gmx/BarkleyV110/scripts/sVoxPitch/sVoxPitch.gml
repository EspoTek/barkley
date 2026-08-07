function sVoxPitch(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): per-speaker pitch multiplier on
	//top of the shared bloop. Hellbane speaks with Balthios's exact voice and
	//cadence but ~5Hz higher (5/120 = x1.042), per the user's spec.
	var nl;
	nl=string_lower(string(argument0));
	if (string_pos("hellbane",nl)>0) return(1.042);
	//hash-voiced NPCs: stable per-name pitch flavour (x0.92 - x1.12) so two
	//NPCs sharing a pool voice still sound like different people
	if (string_pos("barkley",nl)>0 || string_pos("hoopz",nl)>0 || string_pos("jordan",nl)>0 || string_pos("balthios",nl)>0) return(1);
	if (string_pos("dwarf",nl)>0 || string_pos("vince",nl)>0 || string_pos("lebron",nl)>0 || string_pos("garnett",nl)>0) return(1);
	if (string_pos("latta",nl)>0 || string_pos("vitale",nl)>0 || string_pos("brimley",nl)>0 || string_pos("juwanna",nl)>0) return(1);
	if (string_pos("3000",nl)>0 || string_pos("boyardee",nl)>0 || string_pos("hundley",nl)>0 || string_pos("hughley",nl)>0) return(1);
	var vh;
	vh=sVoxHash(nl);
	if (vh>=0) return(0.92+((vh div 500) mod 5)*0.05);
	return(1);


}
