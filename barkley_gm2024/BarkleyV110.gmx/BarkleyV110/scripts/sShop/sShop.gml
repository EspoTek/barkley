function sShop(argument0, argument1, argument2, argument3) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0; if (argument3==undefined) argument3=0;
	nnn=instance_create(floor(__view_get( e__VW.XView, 0 )),floor(__view_get( e__VW.YView, 0 )),oStartmenu);
	nnn.phase=1;
	if (string(argument1)!="0") nnn.sal[0]=argument1;
	if (string(argument2)!="0") nnn.sal[1]=argument2;
	if (string(argument3)!="0") nnn.sal[2]=argument3;
	global.temp=argument0;
	with (oStartmenu) {
	keeper=global.temp;
	//port: snapshot the shopkeeper's stock into the menu's own array, here, at
	//the one moment it is known to resolve. The original kept only a NAME for the
	//list -- "("+string(keeper)+").itemf" -- and re-resolved it to an instance on
	//every return to the Buy row, because in GM6 that string was pasted into
	//execute_string as code. That re-resolution is what crashed at a vending
	//machine and what came back empty after a trip through the Sell screen.
	//Read it once and keep it; nothing downstream has to find the shopkeeper again.
	var si;
	for (si=0; global.temp.itemf[si]!=""; si+=1) shopitemf[si]=global.temp.itemf[si];
	shopitemf[si]="";
	sItemShow("shopitemf",2,0,2,1);
	}


}
