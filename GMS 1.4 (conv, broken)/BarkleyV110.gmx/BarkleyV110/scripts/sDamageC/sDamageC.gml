function sDamageC(argument0, argument1, argument2) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0;
	//Target, message, color
	global.temp7=0;
	global.temp6=argument0.x;
	with (oDamage) if (x=global.temp6) global.temp7+=1;
	global.temp7=global.temp7*10;
	son=(instance_create(argument0.x,argument0.y-global.temp7,oDamage)); 
	son.depth=argument0.depth-1; 
	son.dmg=argument1;
	son.col=argument2;


}
