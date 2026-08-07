//Filter to item codes
var i,h;
h=0;
for (i=0; global.item_id[i]!=""; i+=1) {
refItem(global.item_id[i]);
if (global.tBattle=1) {
item[h]=global.tName;
itemq[h]=sFormat(global.item_amount[i],2);
iteme[h]=global.tDesc;
itemd[h]=global.tEffect;
h+=1;
}
}
item[h]="";
itemmax=h-1;