function key_checker(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	{
	//Physically checks key.
	ii=0;
	dd=argument0;
	while (ii<global.key_amount) {
	if (ii!=dd) {
	if (global.cpref[ii]=global.cpref[dd]) {
	global.cpref[ii]=5;
	global.cserv[ii].trr=key_recognizer(5);
	}
	}
	ii+=1;
	}
	}



}
