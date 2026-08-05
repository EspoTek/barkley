function sKey(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Syntax : Arg0 = Key to check ; Arg1 = If true, clear the key
	if (keyboard_check(argument0)) {
	if (argument1=1) keyboard_clear(argument0);
	return (1);
	}
	return (0);


}
