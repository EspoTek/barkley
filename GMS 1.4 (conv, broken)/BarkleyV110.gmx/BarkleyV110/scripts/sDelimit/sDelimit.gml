function sDelimit(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Cool,Dude,Equal
	how=argument0;
	c=0;
	while (string_pos(",",how)!=0) {
	arr[c]=string_copy(how,1,string_pos(",",how)-1);
	how=string_delete(how,1,string_pos(",",how));
	c+=1;
	if (c>999) exit;
	}
	arr[c]=how;
	arr[c+1]="-1";


}
