function sF(argument0, argument1, argument2) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0;
	//show_message(string(argument2));
	if (argument0="write") {
	if (argument1="real") file_text_write_real(tfl,argument2);
	else file_text_write_string(tfl,argument2);
	file_text_writeln(tfl);
	}
	if (argument0="read") {
	if (argument1="real") basf=file_text_read_real(tfl);
	else basf=file_text_read_string(tfl);
	file_text_readln(tfl);
	return(basf);
	}


}
