function sCondition(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Arg0 is person, arg1 is condition
	if (string_count(argument1,string_lower(global.char_res2[argument0]))>0) {
	return(2); //have already
	} else {
	global.char_res2[argument0]+=argument1 + " ";
	}


}
