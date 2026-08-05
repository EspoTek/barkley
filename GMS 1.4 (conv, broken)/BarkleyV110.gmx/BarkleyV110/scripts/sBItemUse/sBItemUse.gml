function sBItemUse(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Arg0 is item to use, arg1 is ID who
	global.b_scover=1;
	refItem(argument0);
	sDelimit(global.tEffect);
	area=string_replace_all(string_lower(arr[0])," ","");
	who=argument1;
	for (i=1; arr[i]!="-1"; i+=1) { //Apply all effects
	sBItemSub(arr[i]);
	}
	global.b_scover=0;


}
