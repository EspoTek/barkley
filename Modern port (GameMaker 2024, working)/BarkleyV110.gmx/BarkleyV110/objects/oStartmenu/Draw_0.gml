sV();
//50 spacing
image_speed=global.rd/2;
draw_sprite(sStart,0,x,y);
if (phase=0) {
if (stage=0) {
//if (pos0=0) draw_sprite(sStart,1,x,y);
if (pos0=1) draw_sprite(sStart,2,x,y);
}
if (stage=2) draw_sprite(sStart,2,x,y);
}
sFont(Courier8,c_white);
draw_text(x+7,y+223,string_hash_to_newline(desc));
if (phase=0) {
if (stage!=1) {
draw_text(x+20,y+3,string_hash_to_newline("EQUIP"));
draw_text(x+20+60,y+3,string_hash_to_newline("ITEM"));
draw_text(x+20+60+60,y+3,string_hash_to_newline("QUIT"));
if (stage=0) draw_sprite(sDialogBlip,image_index,x+7+(tos0*60),y+4);
else draw_sprite(sDialogBlip,0,x+7+(tos0*60),y+4);
} else {
draw_text(x+7,y+3,string_hash_to_newline("QUIT VIDCON?"));
draw_text(x+20+76,y+3,string_hash_to_newline("NAH"));
draw_text(x+20+76+45,y+3,string_hash_to_newline("YEAH"));
draw_sprite(sDialogBlip,image_index,x+36+(pos0*45),y+4);
}
} else { //shop
if (sibstage=-1) {
draw_text(x+20,y+3,string_hash_to_newline(sal[0]));
draw_text(x+20+60,y+3,string_hash_to_newline(sal[1]));
draw_text(x+20+60+60,y+3,string_hash_to_newline(sal[2]));
if (stage=0) draw_sprite(sDialogBlip,image_index,x+7+(tos0*60),y+4);
else draw_sprite(sDialogBlip,0,x+7+(tos0*60),y+4);
} else {
draw_text(x+20,y+3,string_hash_to_newline("EQUIP"));
draw_text(x+20+60,y+3,string_hash_to_newline("ITEM"));
draw_text(x+20+60+60,y+3,string_hash_to_newline("QUIT"));
if (stage=0) draw_sprite(sDialogBlip,image_index,x+7+(tos0*60),y+4);
else draw_sprite(sDialogBlip,0,x+7+(tos0*60),y+4);
}
}
//status
gx=53+4;
if ((phase=0 && stage=0 && pos0=0) || (phase=0 && stage=3)) {
if (substage=-1) {
for (q=0; global.party[q]!=-1; q+=1) {
sp=q*50;
i=global.party[q];
draw_sprite(sStart,1,x,y+sp);
if (stage=3 && pos0=q) draw_sprite(sFaces,12,x+2,y+sp+21);
else draw_sprite(sFaces,0,x+2,y+sp+21);
if (global.victorian=0) draw_sprite(sFaces,global.char_face[i],x+2,y+sp+21);
else draw_sprite(sFaces0,global.char_face[i],x+2,y+sp+21);
sFont(Courier8,c_white);
pp=19+4;

event_user(0); //draw top equip stuff

}
} else { //status
draw_sprite(sStart,4,x,y);
for (q=0; global.party[q]!=-1; q+=1) {
sp=q*50;
i=global.party[q];
if (substage=q) draw_sprite(sFaces,12,x+2,y+sp+21);
else draw_sprite(sFaces,0,x+2,y+sp+21);
if (global.victorian=0) draw_sprite(sFaces,global.char_face[i],x+2,y+sp+21);
else draw_sprite(sFaces0,global.char_face[i],x+2,y+sp+21);
}
sp=0;
pp=19+4;
i=global.party[substage];
sFont(Courier8,c_white);
if (substage!=-1) { //border deals
draw_sprite(sStartHilight,2,x+51,y+sp+pp+11+(10*pos3));
}

event_user(0); //draw top equip stuff

draw_text(x+gx,y+sp+pp+50,string_hash_to_newline("Level "+string(global.char_res1[i])+" " + global.char_class[i]));
draw_text(x+gx,y+sp+pp+60,string_hash_to_newline("Total XP " + string(floor(global.char_xp[i]))));
qh=0;
for (qg=1; qg<=global.char_res1[i]; qg+=1) { qh+=200*qg; }
draw_text(x+gx+135,y+sp+pp+60,string_hash_to_newline("XP to next Level " + string(floor(qh - global.char_xp[i]))));
draw_text(x+gx+135,y+sp+pp+70,string_hash_to_newline("Weapon Class: " + global.char_weapon[i]));
draw_text(x+gx,y+sp+pp+70,string_hash_to_newline("Armour Class: " + global.char_armour[i]));
draw_text(x+gx,y+sp+pp+90,string_hash_to_newline("Skillz"));
for (l=0; global.char_eskill[i,l]!=""; l+=1) {
draw_text(x+gx+((l mod 2)*135),y+pp+90+12+((l div 2)*12),string_hash_to_newline(global.char_eskill[i,l]));
}
}
}

if (stage=2 || (stage=0 && pos0=1)) { //inven
if (stage=2) selected=pos0;
else selected=-1;
sItemShow("draw");
}
//shoppe
if (phase=1 && ((stage=1 || stage=2) || (stage=0 && sal[pos0]!="Leave"))) {
if (stage=2 || (stage=0 && sal[pos0]="Sell")) { 
draw_sprite(sStart,2,x,y); 
yy=41+yn; 
} else { 
draw_sprite(sStart,3,x,y); 
yy=77+yn; 
sFont(Arial8,c_white); 
if (sibstage=-1) draw_text(x+188-5,y+51,string_hash_to_newline("BUY")); 
}
if (stage=2 || stage=1) selected=pos0;
else selected=-1;
sItemShow("draw");
if (stage=1 || (stage=0 && sal[pos0]="Buy")) {
if (sibstage=-1) {
for (q=0; global.party[q]!=-1; q+=1) {
sp=q*28;
draw_sprite_part(global.char_res0[global.party[q]],0,24,64,24,32,x+213-4+sp,y+42);
}
} else { //draw one
sp=-28;
draw_sprite_part(global.char_res0[global.party[sibstage]],0,24,64,24,32,x+213-4+sp,y+42);
}
}
}
//gold AND TIME
sFont(Courier8,c_white);
draw_text(x+199,y+3,string_hash_to_newline(sFormat(global.hours)+":"+sFormat(global.minutes)+":"+sFormat(floor(global.seconds))));
draw_text(x+270,y+3,string_hash_to_newline(string(global.gold)));
//Ivory latta bromdie
if (bromide!=0) {
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(x,y,x+321,y+241,0);
draw_set_alpha(1);
draw_sprite(sBromide0,bromide-1,x+160,y+120);
}
