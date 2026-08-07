//if argument0 is 0=init, 1=save, 2=load, 3=delete, 4=goto room, 5=back
if (argument0=4) { //goes save
global.romname=oController.name;
global.cvx=oBarkley.x;
global.cvy=oBarkley.y;
global.croom=room;
global.cinema=0;
global.doload=0;
room_goto(RomLoad);
exit;
}
if (argument0=5) { //goes back
room_goto(global.croom);
exit;
}
if (argument0=6) { //goes to load
global.doload=1;
room_goto(RomLoad);
exit;
}
var arg;
arg=argument0;
fnam='Save'+string(argument1)+'.sav';
dnam='Save'+string(argument1)+'0.sav';
global.lastload=argument1;
if (argument0=0) global.lastload=-9;
if (argument0=3) {
if (file_exists(fnam)) { file_delete(fnam); return(1); }
else { return(0); }
}
if (arg=2) { //check if empty slot to load
if (file_exists(fnam)=0) return(0);
else global.gameoverfade=1;
}
if (arg=1) { global.savefaggot=0; tfl=file_text_open_write(dnam); }
if (arg=2) { 
global.cinema=0; global.freeze=0; global.nofollow=0;
tfl=file_text_open_read(fnam); if (global.savefaggot=1) global.savefaggot=2;
}
//actual save,load, init below
ww='write';
rr='read';
ss='string';
nn='real';
global.playersprite=sBarkley;
global.itemmax=100;
if (arg=0) global.gold=250; //START MONIES
else if (arg=1) { file_text_write_real(tfl,global.gold); file_text_writeln(tfl); }
else { global.gold=file_text_read_real(tfl); file_text_readln(tfl); }
if (arg=0) global.hours=0;
else if (arg=1) { file_text_write_real(tfl,global.hours); file_text_writeln(tfl); }
else { global.hours=file_text_read_real(tfl); file_text_readln(tfl); }
if (arg=0) global.minutes=0;
else if (arg=1) { file_text_write_real(tfl,global.minutes); file_text_writeln(tfl); }
else { global.minutes=file_text_read_real(tfl); file_text_readln(tfl); }
if (arg=0) { global.startingTime=current_time; global.seconds=0; }
else if (arg=1) { file_text_write_real(tfl,floor(global.seconds)); file_text_writeln(tfl); }
else { global.seconds=file_text_read_real(tfl); global.startingTime=current_time-(global.seconds*1000); file_text_readln(tfl); }
if (arg=0) global.location='South Vortex';
else if (arg=1) { file_text_write_string(tfl,global.romname); file_text_writeln(tfl); }
else { global.location=file_text_read_string(tfl); file_text_readln(tfl); }
//Display victorian faces on load
if (arg=1) { file_text_write_real(tfl,global.scheme[31]); file_text_writeln(tfl); }
if (arg=2) { kkk=file_text_read_real(tfl); file_text_readln(tfl); }
//party member max
temp=0;
repeat (20) {
if (arg=0) { global.party[temp]=-1; global.party[0]=0; }
else if (arg=1) { 
file_text_write_real(tfl,global.party[temp]); 
file_text_writeln(tfl);
kkk=max(0,global.party[temp]);
file_text_write_real(tfl,global.char_face[kkk]);
file_text_writeln(tfl);
file_text_write_real(tfl,global.char_res1[kkk]);
file_text_writeln(tfl);
} else { 
global.party[temp]=file_text_read_real(tfl); 
file_text_readln(tfl); 
kkk=file_text_read_real(tfl);
file_text_readln(tfl); //skipp because i load later
kkk=file_text_read_real(tfl);
file_text_readln(tfl); //skipp because i load later
}
temp+=1;
}
//scheme switches
temp=0;
repeat (50) {
if (arg=0) global.scheme[temp]=0;
else if (arg=1) { file_text_write_real(tfl,global.scheme[temp]); file_text_writeln(tfl); }
else { global.scheme[temp]=file_text_read_real(tfl); file_text_readln(tfl); }
temp+=1;
}
//treasure switches
temp=0;
repeat (50) {
if (arg=0) global.treasure[temp]=0;
else if (arg=1) { file_text_write_real(tfl,global.treasure[temp]); file_text_writeln(tfl); }
else { global.treasure[temp]=file_text_read_real(tfl); file_text_readln(tfl); }
temp+=1;
}
//Auto-Object switches
temp=0;
repeat (400) { //make variable next time,800 total obj
if (arg=0) {
global.aswitch[temp,0]=-1; global.aswitch[temp,1]=-1;
} else if (arg=1) { 
file_text_write_real(tfl,global.aswitch[temp,0]); file_text_writeln(tfl); 
file_text_write_real(tfl,global.aswitch[temp,1]); file_text_writeln(tfl); 
} else { 
global.aswitch[temp,0]=file_text_read_real(tfl); file_text_readln(tfl); 
global.aswitch[temp,1]=file_text_read_real(tfl); file_text_readln(tfl);
}
temp+=1;
}
//followers
temp=0;
repeat (10) {
if (arg=0) global.following[temp]=-1;
else if (arg=1) { file_text_write_real(tfl,global.following[temp]); file_text_writeln(tfl); }
else { global.following[temp]=file_text_read_real(tfl); file_text_readln(tfl); }
temp+=1;
}
//progress
if (arg=0) global.plot=0;
else if (arg=1) { file_text_write_real(tfl,global.plot); file_text_writeln(tfl); }
else { global.plot=file_text_read_real(tfl); file_text_readln(tfl); }
//characters
if (arg=0) {
////////////////////////////////////////////////////////////////BASE INIT
for (temp=0; temp<15; temp+=1) {
global.char_res0[temp]=0;
global.char_res1[temp]=0;
global.char_res2[temp]='';
global.char_res3[temp]='';
global.char_name[temp]='';
global.char_face[temp]=0;
global.char_class[temp]='No Class';
global.char_weapon[temp]='Weapon';
global.char_armour[temp]='Armour';
global.char_xp[temp]=-1;
global.char_hp[temp]=-1;
global.char_zp[temp]=-1;
global.char_chp[temp]=-1;
global.char_czp[temp]=-1;
global.char_attack[temp]=-1;
global.char_defense[temp]=-1;
global.char_footwork[temp]=-1;
global.char_zauberacity[temp]=-1;
global.char_eweapon[temp]='';
global.char_earmour[temp]='';
global.char_eaccess[temp]='';
for (temp2=0; temp2<20; temp2+=1) global.char_eskill[temp,temp2]='';
}
sInitChar();
} else if (arg=1) { //load characters
for (temp=0; temp<15; temp+=1) {
sF(ww,ss,global.char_name[temp]);
sF(ww,nn,global.char_face[temp]);
sF(ww,ss,global.char_class[temp]);
sF(ww,ss,global.char_weapon[temp]);
sF(ww,ss,global.char_armour[temp]);
sF(ww,nn,global.char_xp[temp]);
sF(ww,nn,global.char_hp[temp]);
sF(ww,nn,global.char_zp[temp]);
sF(ww,nn,global.char_chp[temp]);
sF(ww,nn,global.char_czp[temp]);
sF(ww,nn,global.char_attack[temp]);
sF(ww,nn,global.char_defense[temp]);
sF(ww,nn,global.char_footwork[temp]);
sF(ww,nn,global.char_zauberacity[temp]);
sF(ww,ss,global.char_eweapon[temp]);
sF(ww,ss,global.char_earmour[temp]);
sF(ww,ss,global.char_eaccess[temp]);
sF(ww,nn,global.char_res0[temp]); //sprite
sF(ww,nn,global.char_res1[temp]);
sF(ww,ss,global.char_res2[temp]); //condition, delimit
sF(ww,ss,global.char_res3[temp]);
for (temp2=0; temp2<20; temp2+=1) sF(ww,ss,global.char_eskill[temp,temp2]);
}
} else if (arg=2) {
for (temp=0; temp<15; temp+=1) {
global.char_name[temp]=sF(rr,ss);
global.char_face[temp]=sF(rr,nn);
global.char_class[temp]=sF(rr,ss);
global.char_weapon[temp]=sF(rr,ss);
global.char_armour[temp]=sF(rr,ss);
global.char_xp[temp]=sF(rr,nn);
global.char_hp[temp]=sF(rr,nn);
global.char_zp[temp]=sF(rr,nn);
global.char_chp[temp]=sF(rr,nn);
global.char_czp[temp]=sF(rr,nn);
global.char_attack[temp]=sF(rr,nn);
global.char_defense[temp]=sF(rr,nn);
global.char_footwork[temp]=sF(rr,nn);
global.char_zauberacity[temp]=sF(rr,nn);
global.char_eweapon[temp]=sF(rr,ss);
global.char_earmour[temp]=sF(rr,ss);
global.char_eaccess[temp]=sF(rr,ss);
global.char_res0[temp]=sF(rr,nn);
global.char_res1[temp]=sF(rr,nn);
global.char_res2[temp]=sF(rr,ss);
global.char_res3[temp]=sF(rr,ss);
for (temp2=0; temp2<20; temp2+=1) global.char_eskill[temp,temp2]=sF(rr,ss);
}
}
//items
temp=0;
repeat (global.itemmax) {
if (arg=0) { global.item_id[temp]=''; global.item_amount[temp]=0; }
else if (arg=1) { 
sF(ww,ss,global.item_id[temp]);
sF(ww,nn,global.item_amount[temp]);
} else { 
global.item_id[temp]=sF(rr,ss);
global.item_amount[temp]=sF(rr,nn);
}
temp+=1;
}
//position in world
if (arg=0) temp=96-4;
else if (arg=1) { file_text_write_real(tfl,global.cvx); file_text_writeln(tfl); }
else { temp=file_text_read_real(tfl); file_text_readln(tfl); }
if (arg=0) temp2=512;
else if (arg=1) { file_text_write_real(tfl,global.cvy); file_text_writeln(tfl); }
else { temp2=file_text_read_real(tfl); file_text_readln(tfl); }
if (arg=0) temp3=RomBarkleyApart;
else if (arg=1) { file_text_write_real(tfl,global.croom); file_text_writeln(tfl); }
else { temp3=file_text_read_real(tfl); file_text_readln(tfl); }
if (arg=0) for (i=0; i<100; i+=1) { global.fighter[i]=-999; global.fighters[i]=0; }
else if (arg=1) for (i=0; i<100; i+=1) { sF(ww,nn,global.fighter[i]); sF(ww,nn,global.fighters[i]); }
else if (arg=2) for (i=0; i<100; i+=1) { global.fighter[i]=sF(rr,nn); global.fighters[i]=sF(rr,nn); }
if (arg!=0) file_text_close(tfl);
//Remove commas
if (arg=1) sConvert(dnam,fnam);
//start the game
if (arg!=1) { //not save
global.victorian=0;
if (global.scheme[31]=1) global.victorian=1;
global.cvx=temp; 
global.cvy=temp2; 
room_goto(temp3); 
} else sFiler();
return(1);