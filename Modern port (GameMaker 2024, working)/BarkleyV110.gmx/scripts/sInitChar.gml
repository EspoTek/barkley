//MODIFIED DEAL
//res0 = sprite
//res2 = delimit status
//DIRECT INIT
//Init all
hak=0;
for (temp=0; temp<5; temp+=1) {
global.char_xp[temp]=0;
global.char_hp[temp]=0;
global.char_zp[temp]=0;
global.char_chp[temp]=0;
global.char_czp[temp]=0;
global.char_attack[temp]=0;
global.char_defense[temp]=0;
global.char_footwork[temp]=0;
global.char_zauberacity[temp]=0;
for (temp2=0; temp2<20; temp2+=1) global.char_eskill[temp,temp2]='';
}
///
///BARKLEY
///
temp=0;
global.char_name[temp]='Charles Barkley';
global.char_face[temp]=4;
global.char_class[temp]='Slams Master';
global.char_weapon[temp]='BBall';
global.char_armour[temp]='Threads';
global.char_eweapon[temp]='Soccerball';
global.char_earmour[temp]='Rags';
global.char_eaccess[temp]="Maureen's Ring";
global.char_res0[temp]=sBarkley;
global.char_res2[temp]="";
global.char_res1[temp]=1; //level
global.char_eskill[temp,0]='Doubleteam';
if (hak=1) {
global.char_eskill[temp,1]='Showboat Jam';
global.char_eskill[temp,2]='Ghost Muscle';
global.char_eskill[temp,3]='Vampslam';
global.char_eskill[temp,4]='Holy Dunk';
}
///
//BALTHIOS
///
temp=1;
global.char_name[temp]='Ultimate Hellbane';
global.char_face[temp]=10;
global.char_class[temp]='Zaubermancer';
global.char_weapon[temp]='Zauber';
global.char_armour[temp]='Coat';
global.char_eweapon[temp]='Fire Zauber';
global.char_earmour[temp]='Robe';
global.char_eaccess[temp]='Sunglasses';
global.char_res0[temp]=sHellbane;
global.char_res1[temp]=1; //level
global.char_res2[temp]="";
global.char_eskill[temp,0]='Flame Zauber';
global.char_eskill[temp,1]='Ice Zauber';
if (hak=1) {
global.char_eskill[temp,2]='Wind Zauber';
global.char_eskill[temp,3]='Water Zauber';
global.char_eskill[temp,4]='Muscle Zauber';
global.char_eskill[temp,5]='Snail Zauber';
global.char_eskill[temp,6]='Thunder Zauber';
}
///
///CARTER VINCEBORG
///
temp=2;
global.char_name[temp]='Vinceborg';
global.char_face[temp]=13;
global.char_class[temp]='Cyborgballer';
global.char_weapon[temp]='BBall';
global.char_armour[temp]='Threads';
global.char_eweapon[temp]='Volleyball';
global.char_earmour[temp]='Jersey';
global.char_eaccess[temp]='Bapes';
global.char_res0[temp]=sVinceborg;
global.char_res1[temp]=1; //level
global.char_res2[temp]="";
for (temp2=0; temp2<20; temp2+=1) global.char_eskill[temp,temp2]='';
global.char_eskill[temp,0]="Refractor Beam";
///
///CYBERDWARF
///
temp=3;
global.char_name[temp]='Cyberdwarf';
global.char_face[temp]=6;
global.char_class[temp]='Cyberdwarf';
global.char_weapon[temp]='Muscle';
global.char_armour[temp]="Techs'gear";
global.char_eweapon[temp]='Rusty Muscle';
global.char_earmour[temp]='Cyber-Tunic';
global.char_eaccess[temp]='Sweatband';
global.char_res0[temp]=sCyberdwarf;
global.char_res1[temp]=1; //level
global.char_res2[temp]="";
for (temp2=0; temp2<20; temp2+=1) global.char_eskill[temp,temp2]='';
global.char_eskill[temp,0]='Insulin Shot';
global.char_eskill[temp,1]='Dwarven Touch';
if (hak=1) {
global.char_eskill[temp,2]='Glaucoma Prayer';
global.char_eskill[temp,3]='Dwarf Knowledge';
global.char_eskill[temp,4]='Chaff Grenade';
}
///
//HOOPZ
//
temp=4;
global.char_name[temp]='Hoopz';
global.char_face[temp]=1;
global.char_class[temp]="Guns'braster";
global.char_weapon[temp]='Guns';
global.char_armour[temp]='Threads';
global.char_eweapon[temp]='ZX Zaubertech1';
global.char_earmour[temp]='Rags';
global.char_eaccess[temp]='Bapes';
global.char_res0[temp]=sHoopz0;
global.char_res1[temp]=1; //level
global.char_res2[temp]="";
global.char_eskill[temp,0]="Gun's Slay";
if (hak=1) {
global.char_eskill[temp,1]='Bulletdance';
global.char_eskill[temp,2]='TrickGun Assualt';
global.char_eskill[temp,3]='Status Shot';
}
//Level chars - only returns skill does not add skill
for (p=1; p<11; p+=1) { sBattleLevel(0,p); } //barkley
for (p=1; p<11; p+=1) { sBattleLevel(1,p); } //balthios
for (p=1; p<11; p+=1) { sBattleLevel(2,p); } //vince
for (p=1; p<11; p+=1) { sBattleLevel(3,p); } //cyber
for (p=1; p<11; p+=1) { sBattleLevel(4,p); } //hoopz