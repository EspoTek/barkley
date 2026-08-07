function sVoxRate(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): per-character speech cadence,
	//milliseconds between bloops. Tuned against the real speakers' delivery:
	//Jordan's reference interview is slow and deliberate, Fresh Prince-era
	//Will Smith is quick. Unmapped speakers get the neutral default.
	var nl;
	nl=string_lower(string(argument0));
	if (string_pos("barkley",nl)>0) return(70);
	if (string_pos("hoopz",nl)>0) return(42);
	if (string_pos("jordan",nl)>0) return(120);
	if (string_pos("balthios",nl)>0) return(95);
	return(55);


}
