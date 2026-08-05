function sItemUse(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Arg0 is item to use, arg1 is who
	refItem(argument0);
	sDelimit(global.tEffect);
	area=string_replace_all(string_lower(arr[0])," ","");
	who=argument1;
	for (i=1; arr[i]!="-1"; i+=1) {
	sItemUseSub(arr[i]);
	}




}
