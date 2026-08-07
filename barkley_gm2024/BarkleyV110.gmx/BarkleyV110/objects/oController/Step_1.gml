//Timer
global.did_action=0; //tells game if press action since i clear it, sand toss
if (global.displayc=1) { room_goto(RomConfig); exit; }
global.rendt=min(33,(current_time-global.rendrate))/100; //Lowest rate 15 fps - was 66 now 33
global.rendt=max(.1,global.rendt*100)/100; //At least 1 milli counted
global.rendrate=current_time;
global.rd=global.rendt*3;
//Joy pad
//key_joyemu();
//if (sKey(vk_alt) && sKey(vk_f4)) game_end();
if (global.posser!=-1) exit;
if (room=RomTitle || room=RomInter || room=RomStarter || room=RomLoad || room=RomConfig || room=RomGameover|| room=RomIntro0 || room=RomIntro1) exit; 
if (room=RomCredits || room=RomChaos) exit;
//Start
if (sKey(global.key_start,1)) {
 if (global.skipper!=0) {
  key_eat(global.key_start);
  if (global.skip=0.5) { global.skip=0; event_user(0); }
  else global.skip=0.5;
 } else {
  if (instance_exists(oStartmenu)=1) {
   with (oStartmenu) instance_destroy();
  } else if (global.cinema=0 && global.freeze=0) {
   if (instance_exists(oStartmenu)=0) {
    if (instance_exists(oFollower9)=0) {
     instance_create(floor(__view_get( e__VW.XView, 0 )),floor(__view_get( e__VW.YView, 0 )),oStartmenu);
     with (oStartmenu) sItemShow("global.item_id",0,0,2,2);
    } else {
     oBarkley.move="";
     if (sItem("F.I.N.A.L. G.U.N.")<1 && global.char_eweapon[4]!="F.I.N.A.L. G.U.N.") {
      sCinema(oBarkley,"dialog","Mark:\\You're bastards. You're all filthy, lying, bastards... I'll make sure you're blacklisted from EVERY Gun'sbraster convention there is!");
      sCinema(oBarkley,"code",cine_0027);
      sCinema(oBarkley,"code",cine_0006)
     } else if (global.char_eweapon[4]="F.I.N.A.L. G.U.N.") {
      sCinema(oBarkley,"dialog","Mark:\\G.U.N.S...");
      sCinema(oFollower0,"dialog","Hoopz has the F.I.N.A.L. G.U.N. equipped. You should take it off him if you want to give Mark the gun.",1);
      sCinema(oBarkley,"code",cine_0027);
      sCinema(oBarkley,"code",cine_0006)
     } else {
      sCinema(oBarkley,"dialog","Mark:\\G.U.N.S...");
      sCinema(oBarkley,"dialog","Give Mark the F.I.N.A.L. G.U.N.?",0,"Yeah","Hell Nah");
      sCinema(oBarkley,"code",cine_0028);
      sCinema(oBarkley,"code",cine_0006)
     }
     exit;
    }
   }
  }
 }
}

//Cancel / Run
if (room!=RomOverworld) {
dosprint=0;
if (keyboard_check(global.key_cancel)) {
 dosprint=0.5; 
 if (global.cinema!=1 && global.sprinter>0) { 
  oBarkley.spd=6; 
  dosprint=1; 
 } 
} else {
 if (oBarkley.spd=6) { if (global.cinema!=1) oBarkley.spd=oBarkley.pspd; }
}
}

if (global.freeze=1 || global.cinema=1) exit;

//Movement and action
with (global.camera) {
moverl="";
moveud="";
if (instance_exists(oDialog)=0 && sKey(global.key_action,1)) { 
global.did_action=1;
global.dialog=0;
with (oItem) {
event_user(0);
if (global.dialog=1) { oBarkley.move=""; global.cleardialog=id; indialog=1; exit; }
}
}
if (global.movefreeze=1) { move=""; exit; }
if (keyboard_check(global.key_up)) { moveud="up"; }
if (keyboard_check(global.key_right)) { moverl="right"; }
if (keyboard_check(global.key_down)) { moveud="down"; }
if (keyboard_check(global.key_left)) { moverl="left"; }
move=moveud+moverl;
}
if (global.devplay=1) exit;
if (oBarkley.move!="") { dia+=global.rd; x_d=1; }
if (oBarkley.move!="" && dosprint=1) { global.sprinter-=global.rd; dia+=global.rd; }
else if (dosprint=0 || oBarkley.move="") { global.sprinter+=global.rd/2; }
