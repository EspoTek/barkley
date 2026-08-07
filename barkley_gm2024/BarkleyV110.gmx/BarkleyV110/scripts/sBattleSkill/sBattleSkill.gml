function sBattleSkill(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Adds skill argument1 to argument0 number
	var temp2;
	for (temp2=0; global.char_eskill[argument0,temp2]!=""; temp2+=1) {
	if (global.char_eskill[argument0,temp2]=argument1) exit;
	}
	global.char_eskill[argument0,temp2]=argument1;
	global.char_eskill[argument0,temp2+1]="";


}
