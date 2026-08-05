function sShop(argument0, argument1, argument2, argument3) {
	nnn=instance_create(floor(__view_get( e__VW.XView, 0 )),floor(__view_get( e__VW.YView, 0 )),oStartmenu);
	nnn.phase=1;
	if (string(argument1)!="0") nnn.sal[0]=argument1;
	if (string(argument2)!="0") nnn.sal[1]=argument2;
	if (string(argument3)!="0") nnn.sal[2]=argument3;
	global.temp=argument0;
	with (oStartmenu) {
	keeper=global.temp;
	sItemShow("global.temp.itemf",2,0,2,1);
	}


}
