//Load characters and export them
var i,h;
//Get party
for (i=0; global.party[i]!=-1; i+=1) {
if (global.party[i]=0) global.b_party[i]=oBBarkley;
if (global.party[i]=1) global.b_party[i]=oBBalthios;
if (global.party[i]=2) global.b_party[i]=oBVince;
if (global.party[i]=3) global.b_party[i]=oBCyberdwarf;
if (global.party[i]=4) global.b_party[i]=oBHoopz;
global.b_partyn[i]=global.party[i];
}
global.b_party[i]=-999;
//Place party
for (i=0; global.b_party[i]!=-999; i+=1) i=i;
bx=435;
by=238;
xsp=22;
ysp=28;
if (i=1) {
instance_create(bx,by,global.b_party[0]);
} else if (i=2) {
instance_create(bx-(xsp/2),by-(ysp/2),global.b_party[0]);
instance_create(bx+(xsp/2),by+(ysp/2),global.b_party[1]);
} else if (i=3) {
instance_create(bx-xsp,by-ysp,global.b_party[0]);
instance_create(bx,by,global.b_party[1]);
instance_create(bx+xsp,by+ysp,global.b_party[2]);
} else if (i=4) {
instance_create(bx-(xsp/2)-xsp,by-(ysp/2)-ysp,global.b_party[0]);
instance_create(bx-(xsp/2),by-(ysp/2),global.b_party[1]);
instance_create(bx+(xsp/2),by+(ysp/2),global.b_party[2]);
instance_create(bx+(xsp/2)+xsp,by+(ysp/2)+ysp,global.b_party[3]);
}
//////////////////////////////////////////////////////////Get ID's and weapons
for (i=0; global.b_party[i]!=-999; i+=1) {
global.b_pid[i]=global.b_party[i].id;
global.b_pid[i].ident=global.b_partyn[i];
if (global.b_pid[i].object_index=oBBarkley) {
wah=global.char_eweapon[global.b_pid[i].ident];
if (wah="Soccerball") global.b_pid[i].bal=0;
if (wah="Volleyball") global.b_pid[i].bal=1;
if (wah="B-ball") global.b_pid[i].bal=2;
if (wah="Spiked B-ball") global.b_pid[i].bal=3;
if (wah="Mystic B-ball") global.b_pid[i].bal=4;
if (wah="Hell B-ball") global.b_pid[i].bal=5;
if (wah="Shimmerglobe" || wah="H/S B-ball") global.b_pid[i].bal=6;
}
if (global.b_pid[i].object_index=oBBalthios) {
wah=global.char_eweapon[global.b_pid[i].ident];
global.b_pid[i].wea=string_lower(string_replace(wah," Zauber",""));
}
if (global.b_pid[i].object_index=oBHoopz) {
wah=global.char_eweapon[global.b_pid[i].ident];
if (wah="ZX Zaubertech1") global.b_pid[i].imgz=0;
if (wah="ZX ZaubertechZ") global.b_pid[i].imgz=1;
if (wah="Mithril'braster") global.b_pid[i].imgz=2;
if (wah="Battlestech Gun") global.b_pid[i].imgz=3;
if (wah="ZX ModelX571X") global.b_pid[i].imgz=4;
if (wah="A4431063XZZ 305") global.b_pid[i].imgz=5;
if (wah="Egyptian Gun") global.b_pid[i].imgz=6;
if (wah="F.I.N.A.L. G.U.N.") global.b_pid[i].imgz=7;
}
}
/////////////////////////////////////////////////Get stats
for (i=0; global.b_party[i]!=-999; i+=1) {
global.b_pid[i]._vp=global.char_chp[global.b_partyn[i]];
global.b_pid[i]._rvp=global.char_hp[global.b_partyn[i]];
global.b_pid[i]._bp=global.char_czp[global.b_partyn[i]];
global.b_pid[i]._rbp=global.char_zp[global.b_partyn[i]];
global.b_pid[i]._power=global.char_attack[global.b_partyn[i]];
global.b_pid[i]._guard=global.char_defense[global.b_partyn[i]];
global.b_pid[i]._speed=global.char_footwork[global.b_partyn[i]];
global.b_pid[i]._brain=global.char_zauberacity[global.b_partyn[i]];
global.b_pid[i]._rpower=global.b_pid[i]._power;
global.b_pid[i]._rguard=global.b_pid[i]._guard;
global.b_pid[i]._rspeed=global.b_pid[i]._speed;
global.b_pid[i]._rbrain=global.b_pid[i]._brain;
//Transfer Skills
h=global.b_partyn[i];
for (g=0; global.char_eskill[h,g]!=""; g+=1) {
refSkill(global.char_eskill[h,g]);
global.b_pid[i].skill[g]=global.c_name;
global.b_pid[i].skillp[g]=sFormat(global.c_mp,2);
global.b_pid[i].skilla[g]=global.c_target;
global.b_pid[i].skilld[g]=global.c_desc;
}
global.b_pid[i].skill[g]="";
global.b_pid[i].skillmax=g-1;
//Ailments
h=global.char_res2[global.b_partyn[i]];
if (string_count('glaucoma',string_lower(h))>0) global.b_pid[i].c_glaucoma=1;
if (string_count('diabetes',string_lower(h))>0) global.b_pid[i].c_diabetes=1;
if (string_count('aspergers',string_lower(h))>0) global.b_pid[i].c_aspergers=1;
if (string_count('parkinsons',string_lower(h))>0) global.b_pid[i].c_parkinsons=1;
}
//Set everything
alarm[11]=2;