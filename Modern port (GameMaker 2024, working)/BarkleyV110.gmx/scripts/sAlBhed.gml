var msg;
msg=argument0;
if (global.victorian=1) {
msg=string_replace_all(msg,"Charles","Sir");
msg=string_replace_all(msg,"Michael","Maester");
msg=string_replace_all(msg,"Balthios","Balthane");
msg=string_replace_all(msg,"Barkley","Bakley");
msg=string_replace_all(msg,"Hoopz","Hooprick");
msg=string_replace_all(msg,"Ultimate Hellbane","Supreme Cogblight");
//msg=string_replace_all(msg,"Larry","Cleric"); //conflict in catacombs larry bball shard
msg=string_replace_all(msg,"Lebron","Lebronus");
msg=string_replace_all(msg,"Chin","Chinley");
msg=string_replace_all(msg,"Ivory","Miss");
msg=string_replace_all(msg,"Vinceborg","Clock Carter");
msg=string_replace_all(msg,"Vinceborg 2050","Clock Carter");
msg=string_replace_all(msg,"Cyberdwarf","Geardwarf");
msg=string_replace_all(msg,"Cyber Dwarf","Gear Dwarf");
msg=string_replace_all(msg,"Zalatar","Zalbrose");
msg=string_replace_all(msg,"Wildman","Wildchap");
msg=string_replace_all(msg,"Juwanna","Juwina");
msg=string_replace_all(msg,"Hundley","Hughley");
}
//Returns Al Bhed string
if (global.sat[5]=0 || argument1=1) return(msg);
var f,i,h,r,s;
f="";
s=0;
for (i=1; i<=string_length(msg); i+=1) {
h=string_copy(msg,i,1);
r=h; //default
if (h=string_lower(h)) s=0;
else s=1;
h=string_lower(h);
if (h="a") r="y";
if (h="b") r="p";
if (h="c") r="l";
if (h="d") r="t";
if (h="e") r="a";
if (h="f") r="v";
if (h="g") r="k";
if (h="h") r="r";
if (h="i") r="e";
if (h="j") r="z";
if (h="k") r="g";
if (h="l") r="m";
if (h="m") r="s";
if (h="n") r="h";
if (h="o") r="u";
if (h="p") r="b";
if (h="q") r="x";
if (h="r") r="n";
if (h="s") r="c";
if (h="t") r="d";
if (h="u") r="i";
if (h="v") r="j";
if (h="w") r="f";
if (h="x") r="q";
if (h="y") r="o";
if (h="z") r="w";
if (s=1 && r!=h) r=string_upper(r);
f=f+r;
}
return (f);
