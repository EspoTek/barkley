function key_ress2(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	if (argument1=1) { 
	if (but[3+nb]=0) {
	but[3+nb]=1;
	if (keyboard_check(argument0)=0) keyboard_key_press(argument0); 
	} else {
	if (but[3+nb]>=twe) {
	but[3+nb]+=1*(global.rendt*3);
	if (but[3+nb]>twe+(deltime/2)) { but[3+nb]=twe; keyboard_key_press(argument0); }
	} else {
	if (keyboard_check(argument0)=1 && but[3+nb]=1) keyboard_key_press(argument0);
	else but[3+nb]+=1*(global.rendt*3);
	if (but[3+nb]>deltime) { but[3+nb]=twe; keyboard_key_press(argument0); }
	}
	}
	} else { 
	but[3+nb]=0;
	if (keyboard_check(argument0)=1) keyboard_key_release(argument0); 
	}


}
