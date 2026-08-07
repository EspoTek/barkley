function sVoxHash(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): deterministic hash of a speaker
	//name, so every named NPC keeps the same interpolated voice forever.
	//Returns -1 for empty/zero names (nameless narration stays silent).
	var nl, h, hi;
	nl=string_lower(string(argument0));
	if (nl="" || nl="0") return(-1);
	h=0;
	for (hi=1; hi<=string_length(nl); hi+=1) h=(h*31+ord(string_char_at(nl,hi))) mod 100003;
	return(h);


}
