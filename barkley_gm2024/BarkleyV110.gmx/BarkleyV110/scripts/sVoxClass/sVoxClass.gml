function sVoxClass(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): classify a hash-voiced speaker by
	//name markers so the interpolated voice fits the species/gender.
	//0=male(default) 1=female 2=kid 3=monster/spooky 4=robot. Famous casts are
	//resolved before this ever runs. NOTE: no "bird" marker -- Larry Bird.
	var nl;
	nl=string_lower(string(argument0));
	if (string_pos("droid",nl)>0 || string_pos("android",nl)>0 || string_pos("mech",nl)>0 || string_pos("robot",nl)>0) return(4);
	if (string_pos("cog",nl)>0 || string_pos("clock",nl)>0) return(4);
	if (string_pos("bainshee",nl)>0 || string_pos("banshee",nl)>0) return(1); //shrieks high, not growls
	if (string_pos("ghoul",nl)>0 || string_pos("skele",nl)>0 || string_pos("phantom",nl)>0 || string_pos("spectre",nl)>0) return(3);
	if (string_pos("zomb",nl)>0 || string_pos("mutant",nl)>0 || string_pos("monster",nl)>0 || string_pos("spider",nl)>0) return(3);
	if (string_pos("orc",nl)>0 || string_pos("darklord",nl)>0 || string_pos("demon",nl)>0 || string_pos("beast",nl)>0) return(3);
	if (string_pos("ghost",nl)>0 || string_pos("duergar",nl)>0 || string_pos("dread",nl)>0 || string_pos("cleric bird",nl)>0) return(3);
	if (string_pos("miss ",nl)>0 || string_pos("mrs ",nl)>0 || string_pos("lady",nl)>0 || string_pos("woman",nl)>0) return(1);
	if (string_pos("girl",nl)>0 || string_pos("queen",nl)>0 || string_pos("princess",nl)>0 || string_pos("witch",nl)>0 || string_pos("nun ",nl)>0) return(1);
	if (string_pos("kid",nl)>0 || string_pos("boy ",nl)>0 || string_pos("child",nl)>0 || string_pos("junior",nl)>0) return(2);
	return(0);


}
