function sBCondition(argument0, argument1, argument2) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0;
	if (sBConditionSub(argument0,argument1,argument2)=2) {
	 global.temp7=0;
	 global.temp6=x;
	 with (oDamage) if (x=global.temp6) global.temp7+=1;
	 global.temp7=global.temp7*10;
	 sen=(instance_create(argument2.x,argument2.y-global.temp7,oDamage));
	 sen.depth=argument2.depth-1;
	 sen.dmg="No Effect";
	}
	sVerifyStats(); //delete other ones


}
