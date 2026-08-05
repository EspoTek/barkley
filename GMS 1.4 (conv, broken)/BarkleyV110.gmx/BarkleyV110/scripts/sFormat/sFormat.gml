function sFormat(argument0, argument1, argument2) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0;
	//Arg0=Num, Arg1=Digit amount
	var nnn,p,jjj;
	jjj=string(argument0);
	if (argument1=0) nnn=2;
	else nnn=argument1;
	for (p=nnn; p>1; p-=1) {
	if (string_length(string(argument0))<p) jjj=string(argument2)+jjj;
	}
	return(jjj);


}
