function sCredits() {
	jjj="~-_" + string_upper(argument[0]) + "_-~#";
	for (l=1; l < argument_count && string(argument[l])!="0"; l+=1) { // GM6 zero-filled argument slots
	jjj+=argument[l]+"#";
	}
	if (cou<18) jjj+="####";
	else jjj+="#";
	cre+=jjj;
	yy[cou]=string_height(string_hash_to_newline(cre))-55;
	cou+=1;


}
