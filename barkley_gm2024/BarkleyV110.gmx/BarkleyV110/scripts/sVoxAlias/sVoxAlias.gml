function sVoxAlias(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): resolve a name plate back to the
	//person wearing it, so one character always sounds like themselves.
	//oLarry introduces himself as "Priest" for the church scene (the author's
	//"//Use sillhoute until you know its larry"), so the plate changes but the
	//man behind it does not. Victorian Steampunk mode also renames the cast,
	//but those names are deliberately left alone -- see sVoxPitch.
	//Returned lowercase; everything downstream lowercases anyway.
	var nl;
	nl=string_lower(string(argument0));
	if (nl="priest") return("larry bird");
	return(nl);


}
