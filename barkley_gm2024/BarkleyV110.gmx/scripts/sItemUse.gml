//Arg0 is item to use, arg1 is who
refItem(argument0);
sDelimit(global.tEffect);
area=string_replace_all(string_lower(arr[0]),' ','');
who=argument1;
for (i=1; arr[i]!='-1'; i+=1) {
sItemUseSub(arr[i]);
}

