//Cinema skipper
var plt;
plt=global.plot;
//Start of game cinema
if (global.skipper=1) {
 global.plot=2;
 if (global.skip!=1) { 
  sound_stop(mThatbal);
  sound_stop(mWeari);
  sound_stop(mNeoshek);
  sound_stop(mBase);
  sound_stop(mPart0);
  sound_stop(mPart1);
  sound_stop(mPart2);
  sound_stop(mPart3);
  room_goto(RomBarkleyApart); 
 } else {
  sTrans("fadeout");
  with (oHoopz) { x=224-4; y=512; t=2; }
  with (oBarkley) { x=176-4; y=512; t=2; }
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Larry bird church cinema
if (global.skipper=2) {
 if (global.skip!=1) { 
  global.tempx=oBarkley.x;
  global.tempy=oBarkley.y;
  room_goto(RomChurch); 
 } else {
  sTrans("fadeout");
  with (oBarkley) { x=176-4; y=144; t=0; }
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//GZ flashback past cinema
if (global.skipper=3) {
 if (global.skip!=1) { 
  room_goto(RomNeoYork1); 
 } else {
  sTrans("fadeout");
  with (oBarkley) { x=240-4; y=80+16; t=2; }
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Man I am tired, goes to jordan arrest
if (global.skipper=4) {
 if (global.skip!=1) { 
  room_goto(RomBarkleyApart); 
 } else {
  sTrans("fadeout");
  //with (oBarkley) { x=240-4; y=80+16; t=2; }
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Just entered catacombs cinema
if (global.skipper=5) {
 if (global.skip!=1) { 
  sFollow("add",oFollower0);
  sParty("add",1);
  room_goto(RomCatacombMain); 
 } else {
  sTrans("fadeout");
  with (oBarkley) { x=80-4; y=128; t=2; }
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Cyberdwarf home cinema
if (global.skipper=6) { 
 if (global.skip!=1) { 
  sFollow("add",oFollower2);
  sParty("add",3);
  room_goto(RomSewerCyberhome); 
 } else {
  sTrans("fadeout");
  with (oBarkley) { x=160-4; y=160; t=2; }
  global.nofollow=0;
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Church to cyberhome
if (global.skipper=7) {
 if (global.skip!=1) { 
  global.plot=9;
  room_goto(RomSewerCyberhome); 
 } else {
  sTrans("fadeout");
  global.nofollow=0;
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Talking to juwanna first time, campfire cinema too
if (global.skipper=8) { 
 if (global.skip!=1) { 
  sOvar(oIntro18,1);
  room_goto(RomProtoJuwanna); 
 } else {
  sTrans("fadeout");
  with (oBarkley) { x=128-4; y=96+16; t=1; }
  global.nofollow=0;
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Beat creelman, jordan shoots hoopz then go to juwanna
if (global.skipper=10) { 
 if (global.skip!=1) { 
  room_goto(RomProtoJuwanna); 
 } else {
  sTrans("fadeout");
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Boat after killing duergar
if (global.skipper=11) { 
 if (global.skip!=1) { 
  room_goto(RomFerry); 
 } else {
  sTrans("fadeout");
  with (oBarkley) { x=144-4; y=96; t=3; }
  with (oFollower) { t=3; }
  global.nofollow=0;
  global.skip=0;
  global.skipper=0;
  sA("stopall");
  sA("loop",mLiberty);
  exit;
 }
}
//BTubman cinema in subway going to outskirts
if (global.skipper=12) { 
 if (global.skip!=1) { 
  room_goto(RomOutskirts); 
 } else {
  sTrans("fadeout");
  global.nofollow=0;
  global.skip=0;
  global.skipper=0;
  exit;
 }
}
//Hey kets split in cuch
if (global.skipper=13) { 
 if (global.skip!=1) { 
  room_goto(RomCuchBalthios0); 
 } else {
  sTrans("fadeout"); global.skip=0; global.skipper=0; exit;
 }
}
//Balthios subcinema
if (global.skipper=14) { 
 if (global.skip!=1) { 
  room_goto(RomCuchCyber0); 
 } else {
  sTrans("fadeout"); global.skip=0; global.skipper=0; exit;
 }
}
//Cyber subcinema
if (global.skipper=15) { 
 if (global.skip!=1) { 
  room_goto(RomCuchHoop0); 
 } else {
  sTrans("fadeout"); global.skip=0; global.skipper=0; exit;
 }
}
//Hoopz subcinema
if (global.skipper=16) { 
 if (global.skip!=1) { 
  room_goto(RomCuchBarkley0); 
 } else {
  sTrans("fadeout"); global.skip=0; global.skipper=0; exit;
 }
}
//Barkley subcinema
if (global.skipper=17) { 
 if (global.skip!=1) { 
  room_goto(RomCuchSplit); 
 } else {
  sTrans("fadeout"); global.skip=0; global.skipper=0; exit;
 }
}
//I Am Bball subcinema
if (global.skipper=18) { 
 if (global.skip!=1) { 
  room_goto(RomCuchCorridor); 
 } else {
  sTrans("fadeout"); global.skip=0; global.skipper=0; exit;
 }
}
//Get the hell bball
if (global.skipper=19) { 
 if (global.skip!=1) { 
  sOvar(oIntro32,3);
  room_goto(RomCuchEnter); 
 } else {
  oBarkley.x=160-4;
  oBarkley.y=320+(16*3);
  oBarkley.t=2;
  global.camera=oBarkley;sFollow("add",oFollower0); sFollow("add",oFollower2); sFollow("add",oFollower3); sFollow("update");global.nofollow=0;
  sTrans("fadeout"); global.skip=0; global.skipper=0; exit;
 }
}
//NBA Jam cinema
if (global.skipper=20) { 
 if (global.skip!=1) { 
  sOvar(oIntro40,3);
  sFollow("add",oFollower3);sFollow("update");sParty("add",4);
  if (sItem("Dimension Whistle")=0) sItem("Dimension Whistle",1)
  room_goto(RomSubway1); 
 } else {
  oBarkley.t=2;
  sTrans("fadeout"); global.nofollow=0; global.skip=0; global.skipper=0; exit;
 }
}
//Spalding red keycard
if (global.skipper=21) { 
 if (global.skip!=1) { 
  room_restart();
 } else {
  sPos("load"); with (oFollower) { x=oBarkley.x; y=oBarkley.y; }
  sTrans("fadeout"); global.nofollow=0; global.skip=0; global.skipper=0; exit;
 }
}
//Spalding mini-chaos explosion
if (global.skipper=22) { 
 if (global.skip!=1) { 
  room_restart();
 } else {
  sPos("load"); oBarkley.x+=48; oBarkley.t=1; with (oFollower) { x=oBarkley.x; y=oBarkley.y; }
  sTrans("fadeout"); global.nofollow=0; global.skip=0; global.skipper=0; exit;
 }
}
//Spalding bluekeycard
if (global.skipper=23) { 
 if (global.skip!=1) { 
  room_restart();
 } else {
  sPos("load"); with (oFollower) { x=oBarkley.x; y=oBarkley.y; }
  sTrans("fadeout"); global.nofollow=0; global.skip=0; global.skipper=0; exit;
 }
}
//Spalding bluekeycard
if (global.skipper=24) { 
 if (global.skip!=1) { 
  room_goto(RomNecronEnter);
 } else {
  sTrans("fadeout"); global.nofollow=0; global.skip=0; global.skipper=0; exit;
 }
}
//////
global.skip=1;
global.cinema=0;
global.freeze=0;
sDialog("set",1,"bottom");
