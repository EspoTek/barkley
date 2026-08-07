//Arg0 = Gives, takes, items and gold
//Arg1 = 0 is check, 1 is give, 2 is take
//Arg2 = Value
if (argument0="Nothing") return(0);
if (argument0='goldcheck') if (global.gold>=argument1) return(1); else return(0);
if (argument0='gold') { //minus and plus
global.gold+=argument1;
return(1);
}
//Items
if (argument1<=0) {
ggg=0;
while (ggg<global.itemmax) {
if (global.item_id[ggg]=argument0) {
if (global.item_amount[ggg]<abs(argument1)) return(0);
global.item_amount[ggg]-=abs(argument1);
jxx=floor(global.item_amount[ggg]);
if (jxx=0) {
 ii=ggg;
 for (jj=0; global.item_id[ii+jj+1]!=''; jj+=1) {
  global.item_id[ii+jj]=global.item_id[ii+jj+1];
  global.item_amount[ii+jj]=global.item_amount[ii+jj+1];
 }
 global.item_id[ii+jj]='';
}
//done delete
return(jxx);
}
ggg+=1;
}
return(0);
}
//append
if (sItemApp(argument0,argument1)=1) exit;
//create
ggg=0;
while (ggg<global.itemmax) {
if (global.item_id[ggg]='') {
global.item_id[ggg]=argument0;
global.item_amount[ggg]=argument1;
//item_sort();
exit;
}
ggg+=1;
}