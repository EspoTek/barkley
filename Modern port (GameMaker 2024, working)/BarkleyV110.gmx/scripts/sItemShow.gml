//----> Array, Shop, Filter, Rows, Cols
if (argument0="compare") { //com, chr, item, newitem,
//3,42
ch=argument1;
yp=40;
yps=11;
xps=90+3;
xp=34; //40
sFont(Courier8,c_white);
draw_text(x+4,y+yp,'Power');
draw_text(x+4,y+yp+yps,'Speed');
draw_text(x+4,y+yp+yps+yps,'VP');
draw_text(x+4+xps,y+yp,'Guard');
draw_text(x+4+xps,y+yp+yps,'Brain');
draw_text(x+4+xps,y+yp+yps+yps,'BP');
draw_text(x+4+xp,y+yp,global.char_rattack[ch]);
draw_text(x+4+xp,y+yp+yps,floor(global.char_rfootwork[ch]));
draw_text(x+4+xp,y+yp+yps+yps,global.char_rhp[ch]);
draw_text(x+4+xp+xps,y+yp,global.char_rdefense[ch]);
draw_text(x+4+xp+xps,y+yp+yps,global.char_rzauberacity[ch]);
draw_text(x+4+xp+xps,y+yp+yps+yps,global.char_rzp[ch]);
if (string(argument2)!='0') {
refItem(argument3); //3
ni[0]=global.tAir; ni[1]=global.tFoot; ni[2]=global.tVp;
ni[3]=global.tGuard; ni[4]=global.tZaubacity; ni[5]=global.tZp;
refItem(argument2);
oi[0]=global.tAir; oi[1]=global.tFoot; oi[2]=global.tVp;
oi[3]=global.tGuard; oi[4]=global.tZaubacity; oi[5]=global.tZp;
fg[0]=global.char_rattack[ch]-global.tAir;
fg[1]=global.char_rfootwork[ch]-global.tFoot;
fg[2]=global.char_rhp[ch]-global.tVp;
fg[3]=global.char_rdefense[ch]-global.tGuard;
fg[4]=global.char_rzauberacity[ch]-global.tZaubacity;
fg[5]=global.char_rzp[ch]-global.tZp;
for (d=0; d<6; d+=1) {
draw_set_color(c_white);
if (d=2) draw_text(x+3+54+6+(xps*(d div 3)),y+yp+(yps*(d mod 3)),'>');
else draw_text(x+3+54+(xps*(d div 3)),y+yp+(yps*(d mod 3)),'>');
if (oi[d]>ni[d]) draw_set_color(c_red);
else if (oi[d]<ni[d]) draw_set_color(c_lime);
else draw_set_color(c_white);
if (d=2) draw_text(x+3+8+6+54+(xps*(d div 3)),y+yp+(yps*(d mod 3)),string(floor(fg[d]+ni[d])));
else draw_text(x+3+8+54+(xps*(d div 3)),y+yp+(yps*(d mod 3)),string(floor(fg[d]+ni[d])));
}
}
exit;
}
if (argument0="update") { ////////////////////////////////////////update
 sEquipped();
 //arr names the item-array source; was execute_string of a generated copy loop
 if (arr="global.item_id") { for(m=0; global.item_id[m]!=''; m+=1) item[m]=global.item_id[m]; }
 else if (arr="itemf") { for(m=0; itemf[m]!=''; m+=1) item[m]=itemf[m]; }
 else if (arr="global.temp.itemf") { srcinst=global.temp; for(m=0; srcinst.itemf[m]!=''; m+=1) item[m]=srcinst.itemf[m]; }
 else { srcinst=real(string_digits(arr)); for(m=0; srcinst.itemf[m]!=''; m+=1) item[m]=srcinst.itemf[m]; } //"(<id>).itemf"
 item[m]='';
 itemdsc[0]='';
 itempts[0]='';
 for (m=0; item[m]!=''; m+=1) {
  itemqty[m]=sItem(item[m]);
  refItem(item[m]);
  itemdsc[m]=global.tEffect;
  if (global.tEffect!="") itemdsc[m]='- ' + itemdsc[m];
  itempts[m]=global.tAir+global.tGuard+global.tFoot+global.tZaubacity+global.tVp+global.tZp;
 }
 if (item[0]='') { item[0]='No items'; itemqty[0]=0; item[1]=''; }
 qmax=m; rmax=qmax; //rmax is old but i do this not to change code
 for (q=0; global.party[q]!=-1; q+=1) {
  eweapon[q]=global.char_weapon[global.party[q]];
  earmour[q]=global.char_armour[global.party[q]];
  refItem(global.char_eweapon[global.party[q]]);
  weapon[q]=global.tAir+global.tGuard+global.tFoot+global.tZaubacity+global.tVp+global.tZp;
  refItem(global.char_earmour[global.party[q]]);
  armour[q]=global.tAir+global.tGuard+global.tFoot+global.tZaubacity+global.tVp+global.tZp;
  refItem(global.char_eaccess[global.party[q]]);
  access[q]=global.tAir+global.tGuard+global.tFoot+global.tZaubacity+global.tVp+global.tZp;
  name[q]=sAlBhed(global.char_name[global.party[q]],1);
 }
 exit;
}
if (argument0!='draw') { //////////////////////////////////////////init
 arr=argument0;
 shop=argument1;
 if (shop!=0) sho=1;
 else sho=0;
 filter=string(argument2);
 rows=argument3;
 cols=argument4;
 sItemShow('update');
 xx=9;
 yy=45;
 xs=155; //155
 exit;
}
//////////////////////////////////////////////////MAIN CODE
if (sal[pos0]='Leave' && stage=0) exit;
g=0;
lp=0;
if (isc!=0) {
if (cols=2) draw_sprite(sBattleArrow,1,x+156,y+40);
else draw_sprite(sBattleArrow,1,x+156,y+76);
}
for (b=0; item[b+isc]!=''; b+=1) {
refItem(item[b+isc]);
//if (shop=1 && global.tClass='Key Item') {
//key item try to sell
//} else 
if (filter='0' || string_count(global.tClass,filter)>0) {
if ((cols=2 && lp>23) || (cols!=2 && lp>8)) {
draw_sprite(sBattleArrow,0,x+156,y+214);
exit;
}
lp+=1;
dodraw=-1;
i=b;
imax=g;
h=g mod cols;
q=g div cols;
draw_set_color(c_black);
if (selected=g) { //pos0=i
draw_sprite(sStartHilight,0,x+xx-3+(h*xs),y+yy+(q*14));
sFont(Courier8,c_white);
if (shop<=1) {
if (global.tEffect!='') draw_text(x+7,y+23,global.tEffect);
else draw_text(x+7,y+23,sItemSyn());
} else { 
cd=28*(pos1-1);
draw_sprite(sStartHilight,1,x+xx-14+(h*xs)+xs+cd+58,y+yy+(q*14));
if (pos1=0) desc2="Buy ";
else desc2="Buy and Equip ";
desc2=desc2+item[b+isc]+" ";
if (pos1=0) desc2=desc2 + "" + itemdsc[b+isc];
if (pos1!=0) desc2=desc2+"for " + name[pos1-1];
dodraw=pos1;
}
}
vol=c_white;
if (stage=2 || (stage=0 && pos0=1)) { //SELLABLE ITEMS SELL GOES HERE
if (global.tClass!='Item') vol=c_gray;
}
if (shop=1) { if (global.tCansell=1) vol=c_white; else vol=c_gray; }
sFont(Courier8,vol);
if (sibstage=-1) cr=16;
else cr=0;
draw_sprite_ext(sBX,0,x+xx+(h*xs)+133,y+yy+1+(q*14)+6,1,1,0,vol,1); //155 spcing +2'd
draw_text(x+xx+(h*xs)+137,y+yy+(q*14),sFormat(itemqty[i+isc],2,"0"));
if (sho=1) { 
if (cr!=0) {
//draw_sprite_ext(sStartAmt,1,x+16+xx-2+(h*xs),y+yy+1+(q*14),1,1,0,vol,1); //16
if (shop=2) { //x+xx-2+(h*xs)
if (global.vending=0) draw_text(x+xx+(h*xs),y+yy+(q*14),"$"+sFormat(global.tValue,4,"0"));
else draw_text(x+xx+(h*xs),y+yy+(q*14),"$"+sFormat(global.tValue*2,4,"0"));
} else draw_text(x+xx+(h*xs),y+yy+(q*14),"$"+sFormat(floor(global.tValue/2),4,"0"));
} //x+16+xx+(h*xs)
if (shop=2) { uu=77+yn; zz=191-yn; sd=28; //HERE HERE HRE HREHRHE RHEHHRHE
if (sibstage=-1) {
if ((global.gold>=global.tValue && global.vending=0) || global.gold>=global.tValue*2) draw_sprite(sStartChange,3,x+zz,y+uu+(q*14));
else draw_sprite(sStartChange,4,x+zz,y+uu+(q*14));
}
if (dodraw=0) {
sFont(Courier8,c_white);
if (sibstage=-1) draw_text(x+7,y+23,"Buy " + item[i+isc] + " " + itemdsc[b+isc]);
}
for (t=0; global.party[t]!=-1; t+=1) { //up,down,equal,ok(buy),not(buy),irrelevant
va=5;
etm='0';
if (sibstage=-1) gaz=global.party[max(0,dodraw-1)];
else { gaz=global.party[sibstage]; t=sibstage; }
if (global.tClass=eweapon[t] || (global.tClass="Nothing" && pos3=0)) {
etm=global.char_eweapon[gaz];
if (weapon[t]=itempts[i+isc]) va=2;
else if (weapon[t]>itempts[i+isc]) va=1;
else va=0;
}
if (global.tClass=earmour[t] || (global.tClass="Nothing" && pos3=1)) {
etm=global.char_earmour[gaz];
if (armour[t]=itempts[i+isc]) va=2;
else if (armour[t]>itempts[i+isc]) va=1;
else va=0;
}
if (global.tClass='Bling' || (global.tClass="Nothing" && pos3=2)) {
etm=global.char_eaccess[gaz];
if (access[t]=itempts[i+isc]) va=2;
else if (access[t]>itempts[i+isc]) va=1;
else va=0;
}
if (t=dodraw-1 || sibstage!=-1) {
if (sibstage=-1) {
sItemShow('compare',global.party[t],etm,item[i+isc]);
sFont(Courier8,c_white);
if (va!=5) draw_text(x+7,y+23,desc2);
else draw_text(x+7,y+23,"Buy " + item[i+isc] + " " + itemdsc[b+isc]);
} else if (pos0=i) {
sItemShow('compare',global.party[sibstage],etm,item[i+isc]);
sFont(Courier8,c_white);
draw_text(x+7,y+23,"Equip " + item[i+isc]);
}
}
if (global.party[t]=global.party[max(0,pos1-1)] || sibstage!=-1) vaf[i]=va;
if (sibstage=-1) draw_sprite(sStartChange,va,x+zz+((t+1)*28),y+uu+(q*14));
else draw_sprite(sStartChange,va,x+zz,y+uu+(q*14));
if (sibstage!=-1) t=6; //end loop
}
}
}
sFont(Courier8,vol); //was white
if (stage=2 || (stage=0 && pos0=1)) if (global.tClass!='Item') sFont(Courier8,vol);
if (sibstage!=-1) draw_text(x+16+xx+(h*xs)-16,y+yy+(q*14),item[i+isc]); //16
else draw_text(x+16+xx+(37*sho)+(h*xs)-16,y+yy+(q*14),item[i+isc]); //sell 45 is deal
g+=1;
}
}

