function sItemSyn(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Syn: Arg0=Item to return string synposis of.
	if (string(argument0)!="0") refItem(argument0);
	var sent;
	sent="";
	if (global.tAir!=0) sent=sent + ", Muscle +" + string(global.tAir);
	if (global.tGuard!=0) sent=sent + ", Guard +" + string(global.tGuard);
	if (global.tZaubacity!=0) sent=sent + ", Brain +" + string(global.tZaubacity);
	if (global.tFoot!=0) sent=sent + ", Speed +" + string(global.tFoot);
	if (global.tVp!=0) sent=sent + ", VP +" + string(global.tVp);
	//gm6 bug: this line tested tZp but printed tBp, which is never assigned.
	//Harmless under GM6 (uninitialised read == 0, so it printed "BP +0"); a
	//fatal "not set before reading it" here. Currently unreachable only because
	//no item sets tZp nonzero -- adding one would have crashed the item menu.
	if (global.tZp!=0) sent=sent + ", BP +" + string(global.tZp);
	sent=string_delete(sent,1,2);
	return(sent);



}
