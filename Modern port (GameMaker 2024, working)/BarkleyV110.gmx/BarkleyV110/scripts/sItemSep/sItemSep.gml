function sItemSep(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Seperate by armour, weapon, access
	//BBall , Zauber , Muscle
	//Threads , Coats
	//Bling
	var i,h;
	if (pos3!=0) {
	itemf[0]="Nothing";
	h=1;
	} else h=0;
	for (i=0; global.item_id[i]!=""; i+=1) {
	refItem(global.item_id[i]);
	if (global.tClass=argument0) {
	itemf[h]=global.item_id[i];
	h+=1;
	}
	}
	itemf[h]="";
	//qmax=h;
	keeper=oStartmenu;


}
