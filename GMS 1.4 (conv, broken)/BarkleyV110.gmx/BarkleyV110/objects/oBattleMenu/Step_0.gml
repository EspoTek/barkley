global.movetor="";

if (global.b_victory!=0) {
ddesc=0;
dene=0;
dname=1;
oBattler.hilight=0;
oBattler.selecte=0;
global.turn=-1;
hilight=-999;
sact=0;  //victory
exit;
}

if (state="pause" || alarm[5]!=-1) { //for status messages etc, end battle stop all
sact=0;  //victory
exit;
}

//Attack

if (state="postshow") {
ddesc=0; dname=1; dene=1;
}

if (state="postattack") { 
ddesc=1; dname=1; dene=0;
if (global.turn.prefin=-1 && global.turn.enemy=0 && global.turn.attack=1) {
if (sKey(global.key_left) && mash=0) { mash=1; sP(); inf-=1; if (inf<0) inf=global.turn.infomax; }
if (sKey(global.key_right) && mash=0) { mash=1; sP(); inf+=1; if (global.turn.info[inf]="") inf=0; }
if (sKey(global.key_right)=0 && sKey(global.key_left)=0) mash=0;
global.descriptor=global.turn.infoh[inf]; global.movetor="";
} else {
ddesc=0; dene=1;
}
}

//Name menu

if (state="names") {
 oasel=asel;
 sact=1; asel=2; dname=1; dene=1; h=0;
 if (sKey(global.key_up))   { asel=0; }
 if (sKey(global.key_down)) { asel=4; }
 if (sKey(global.key_left)) { asel=1; }
 if (sKey(global.key_right)){ asel=3; }
 if (oasel!=asel) sP();
 if (global.turn!=oBCamera.id) {
  global.movetor=global.turn.option[asel];
  global.descriptor=global.turn.optiond[asel];
 }
 
 if (sKey(global.key_action,1)) { 
  global.descriptor="";
  sact=0; pos0=0; h=0; //reset position just in acase
  if (asel=2) { sP(1); pretarget="Enemy"; state="target"; action="Attack"; pos1=0; } //attack
  if (asel=1) { sP(1); h=0; state="skills"; dene=0; key_eat(global.key_left); } //skills
  if (asel=0) { //defense
   sP(1); 
   h=0; state="wait"; global.turn.alarm[5]=10; global.turn.defending=1; //global.descriptor=global.turn.option[0];
   if (global.turn.object_index=oBBarkley) { global.turn.defamt=global.turn._rguard*.66; global.turn._rguard+=global.turn.defamt; } //sDamageC(global.turn,"Guard Up",c_ltgray);
   if (global.turn.object_index=oBVince) { sS(mBRecharge); sBCondition("vp",round(global.turn._rvp/5),global.turn); sBCondition("bp",round(global.turn._rbp/5),global.turn); }
   if (global.turn.object_index=oBCyberdwarf) { global.turn.defamt=global.turn._rguard/3; global.turn._rguard+=global.turn.defamt; global.b_cx=oBCyberdwarf.x; global.b_cy=oBCyberdwarf.y; global.b_cover=1; }
   if (global.turn.object_index=oBHoopz) { global.b_evade=1; }
   sVerifyStats();
   exit; 
  }
  if (asel=3) { //items
   sBattleItem();
   if (item[0]="") {
    state="pause"; global.descriptor="You have no useable items!"; alarm[5]=30; sP(-1);
   } else {
    sP(1); h=0; state="items"; dname=1; dene=0; ditem=1; key_eat(global.key_right);
   }
  }
  if (asel=4) { //run
   global.temp5=0;
   with (oBattler) if (cantrun=1) global.temp5=1;
   //for (i=0; global.party[i]!=-1; i+=1) if (global.b_party[i]._vp<=0) global.temp5=2;
   if (global.temp5=1) { 
    global.descriptor="Can't run from battle!"; alarm[5]=30; sP(-1);
   } else if (global.temp5=2) { 
    global.descriptor="Can't run away with a dead party member!"; alarm[5]=30; sP(-1);
   } else {
    sP(1); h=0; state="wait"; global.descriptor="Run Away"; alarm[2]=15; with (global.turn) { attack=0; sprite_index=runs; image_speed=0.25; image_xscale=-1; running=1; } exit; 
   }
  } 
 }
 
} else asel=2;

//Items

if (state="items") { //plus h on accept
 dname=1; ditem=1;
 if (sKey(global.key_cancel,1)) { sP(-1); pos0=3; state="names"; h=0; ditem=0; exit; }
 if (sKey(global.key_up,1)) { sP(); if (pos0<2) { h-=2; } else pos0=max(0,pos0-2); }
 if (sKey(global.key_down,1)) { sP(); if (pos0>5) { h+=2; } else pos0=min(itemmax,pos0+2); }
 if (sKey(global.key_left,1)) { sP(); if (pos0=0) { if (h!=0) { pos0=1; h-=2; } } else pos0=max(0,pos0-1); }
 if (sKey(global.key_right,1)) { sP(); if (pos0=7) { if (h!=ceil((itemmax-7)/2)*2) { pos0=6; h+=2; } } else pos0=min(itemmax,pos0+1); }
 h=min(h,ceil((itemmax-7)/2)*2);
 h=max(0,h);
 pos0=min(pos0,itemmax-h);
 global.descriptor=itemd[pos0+h];
 
 if (sKey(global.key_action,1)) { 
  sP(1); state="target"; pretarget="Ally"; action="Item"; ection=item[pos0+h]; pos1=0; hilight=-1;
  refItem(ection);
  if (string_copy(global.tEffect,1,3)="All") { //maybe make pretarget ally all
  ditem=0; dene=1;
  global.descriptor="Use " + ection;
  global.turn.target=global.turn;
  oBattler.hilight=0;
  alarm[3]=15;
  global.turn.sprite_index=global.turn.item;
  state="wait";
  exit;
  }
 } //exit was here

}

//Skills

if (state="skills") {
 dname=1; dskill=1;
 if (sKey(global.key_up,1)) { sP(); if (pos0<2) { h-=2; } else pos0=max(0,pos0-2); }
 if (sKey(global.key_down,1)) { sP(); if (pos0>5) { h+=2; } else pos0=min(global.turn.skillmax,pos0+2); }
 if (sKey(global.key_left,1)) { sP(); if (pos0=0) { if (h!=0) { pos0=1; h-=2; } } else pos0=max(0,pos0-1); }
 if (sKey(global.key_right,1)) { sP(); if (pos0=7) { if (h!=ceil((global.turn.skillmax-7)/2)*2) { pos0=6; h+=2; } } else pos0=min(global.turn.skillmax,pos0+1); }
 h=min(h,ceil((global.turn.skillmax-7)/2)*2);
 h=max(0,h);
 pos0=min(pos0,global.turn.skillmax-h);
 if (sKey(global.key_cancel,1)) { sP(-1); pos0=0; state="names"; h=0; dskill=0; exit; }
 if (sKey(global.key_action,1)) { 
  refSkill(global.turn.skill[pos0+h]);
  cost=global.c_mp; pos1=0;
  if (cost<=global.turn._bp) { sP(1); dskill=0; dene=1; state="target"; pretarget=global.turn.skilla[pos0+h]; action=global.turn.skill[pos0+h]; doskill=pos0+h; pos1=0; } 
  else sP(-1);
 } //exit
 global.movetor="BP " + string(global.turn._bp) + "/" + string(global.turn._rbp);
 global.descriptor="Target " + global.turn.skilla[pos0+h];
}

//Targetting

if (state="target") {
 if (sKey(global.key_cancel,1)) { 
  if (action="Item") { sP(-1); state="items"; ditem=1; dene=0; hilight=-1; oBattler.selecte=0; exit; }
  else if (action="Attack") { sP(-1); state="names"; dname=1; dene=1; hilight=-1; oBattler.selecte=0; exit; }
  else { sP(-1); state="skills"; dskill=1; dene=0; hilight=-1; oBattler.selecte=0; exit; } //skill
 }
 
 refSkill(action); //has is pretart=""
 cost=global.c_mp;
 doskill=global.c_event;
 if (action="Attack") {
  global.descriptor="Choose an enemy to attack.";
 } else if (action="Item") {
  if (ection="Golden Potato") {
   instance_create(0,0,oBHiratio);
   state="pause"; dname=1; dene=1; ditem=0; dskill=0; ddesc=0;
   global.descriptor="Potato Chaos";
   oBattler.hilight=0;
   exit;
  }
 } else { global.descriptor="Target " + global.turn.skilla[pos0+h] + " with " + global.turn.skill[pos0+h]; }
 if (pretarget="Ally") {
  dname=1;
  if (action="Item") global.movetor="Use item on:";
  if (sKey(global.key_up,1)) { sP(); pos1=max(0,pos1-1); }
  if (sKey(global.key_down,1)) { sP(); pos1+=1; }
  sIntTarget(0,1);
  if (target[pos1]="") pos1-=1;
  hilight=targetid[pos1];
 } else if (pretarget="Enemy") {
  dname=1;
  if (action="Item") global.movetor="Choose enemy to attack:";
  if (sKey(global.key_up,1)) { sP(); pos1=max(0,pos1-2); }
  if (sKey(global.key_left,1)) { sP(); pos1=max(0,pos1-1); }
  if (sKey(global.key_right,1)) { sP(); pos1+=1; }
  if (sKey(global.key_down,1)) { sP(); pos1+=1; if (target[pos1]="") pos1-=1; pos1+=1; }
  sIntTarget(1);
  if (target[pos1]="") pos1-=1;
  hilight=targetid[pos1];
 } else if (pretarget="Self") {
  global.b_obj=global.turn;
  global.turn.exec=doskill;
  pretarget=""; 
  global.turn.target=global.turn;
  state="wait";
  oBattler.hilight=0;
  global.turn._bp-=cost;
  global.descriptor=action;
  exit;
 } else if (pretarget="All Foe" || pretarget="All Ally") {
  global.b_obj=global.turn;
  global.turn.exec=doskill;
  pretarget=""; 
  state="wait";
  oBattler.hilight=0;
  global.turn._bp-=cost; //reduce bp because it exits
  global.descriptor=action;
  exit;
 }
 oBattler.selecte=0;
 targetid[pos1].selecte=1;
 
 if (sKey(global.key_action,1)) { 
  sP(1); ditem=0; dene=1; hilight=-1;
  global.descriptor=action;
  global.turn.target=targetid[pos1];
  oBattler.hilight=0; oBattler.selecte=0;
  if (action="Attack") {
   global.turn.attack=1;
   global.b_obj=global.turn;
   inf=0;
   state="postattack";
  } else if (action="Item") {
   global.descriptor="Use " + ection + " on " + global.turn.target.name;
   alarm[3]=15;
   global.turn.sprite_index=global.turn.item;
   state="wait";
  } else { //skill, item etc
   global.turn._bp-=cost;
   global.turn.exec=doskill;
   global.b_obj=global.turn;
   state="wait";
  }
 }
 
}
