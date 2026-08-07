var ggg;
//item id, item amount
//returns if it appends to item
ggg=0;
while (ggg<global.itemmax) {
if (global.item_id[ggg]=argument0) {
if (argument1<0) global.item_amount[ggg]-=abs(argument1);
else {
if (argument1=0) global.item_amount[ggg]+=1;
else global.item_amount[ggg]+=abs(argument1);
global.item_amount[ggg]=min(99,global.item_amount[ggg]);
}
return(1);
}
ggg+=1;
}
return(0);