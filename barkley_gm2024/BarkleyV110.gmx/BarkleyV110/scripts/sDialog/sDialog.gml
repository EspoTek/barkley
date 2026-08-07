function sDialog(argument0, argument1, argument2, argument3, argument4, argument5) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0; if (argument3==undefined) argument3=0; if (argument4==undefined) argument4=0; if (argument5==undefined) argument5=0;
	if (argument0="set") {
	global.dia_border=argument1;
	if (string(argument2)!="0") global.dia_pos=argument2;
	if (string(argument3)!="0") global.dia_face=argument3;
	if (string(argument4)!="0") global.dia_name=argument4;
	} else {
	global.freeze=1;
	ccc=instance_create(0,0,oDialog);
	with (ccc) {

	//GET NAME
	namer="";
	edt=argument0;
	for (i=1; i<55; i+=1) { //45
	if (string_copy(argument0,i,1)=":" && string_copy(argument0,i+1,1)="\\") {
	name=string_copy(argument0,1,i-1);
	namer="y";
	edt=string_copy(argument0,i+2,9999);
	}
	}
	if (namer="" && face=0) name="";

	dmessage[0]=sAlBhed(string_replace_all(edt,"*",""));
	dmessage[1]="n";
	rrr=string_length(dmessage[0]);
	option[0]=sAlBhed(string(argument1));
	option[1]=sAlBhed(string(argument2));
	option[2]=sAlBhed(string(argument3));
	option[3]=sAlBhed(string(argument4));
	option[4]=sAlBhed(string(argument5));
	optionr[0]=string(argument1);
	optionr[1]=string(argument2);
	optionr[2]=string(argument3);
	optionr[3]=string(argument4);
	optionr[4]=string(argument5);
	option[5]="0";

	//QUESTION
	if (option[0]!="0") {
	name=argument0;
	dmessage[0]=""; rrr=0;
	}

	}
	return(ccc);
	}


}
