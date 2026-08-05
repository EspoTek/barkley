//General hits
//if (stage>=2.1) { oBattleMenu.dene=1; oBattleMenu.ddesc=0; }
if (stage=0) {
flp=0;
target.editing=1; //zomball mainly
oy=target.fy;
walk=target;
walkdist=30;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=1.1; }
} else if (stage=1.1) {
if (sKey(global.key_action) || sKey(global.key_cancel) || sKey(global.key_start)) { 
stage=2.1; oBComboMeter.cur=0; oBComboMeter.fill=0; oBComboMeter.hit[0,0]=-1; oBComboMeter.visible=1; lax="null";
oBattleMenu.state="postshow"; global.descriptor="Combo";
}
} else if (stage=2.11) {
if (flp<3) { flp+=1; stage=100+floor(random(3)); }
else { doing=floor(random(3)); stage=2; }
} else if (stage=3) {
rou+=1;
if (rou>20) { image_index=4; rou=0; stage=4; target.shake=200; target.image_angle=90; target.direction=180; target.speed=4; target.friction=0.33; }
} else if (stage=4) {
rou+=1;
if (rou>20) { image_index=5; target.direction=180; target.shake=15; target.speed=4; target.friction=0.33; stage=5; }
} else if (stage=5) {
if (target.speed=0) { alarm[0]=45; target.speed=0; target.friction=0; stage=200; }
} else if (stage=200) {
walk=slav;
walkdist=7;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=201;
} else if (stage=201 && wdone=1) {
target.editing=0;
alarm[5]=5;
doing=-1;
} else if (stage=100) { ///////////////////////////////jab - 7 - make alternate give more dmg
 if (rou=0) { 
  if (lax!="jab") ert=1.25;
  else ert=1;
  lax="jab";
  sBarkDmg("jab");
  sound_play(mBJab);
 } 
 sprite_index=sBCyberPunch; image_index=0; image_speed=0;
 rou+=1;
 if (rou>4) image_index=2;
 if (rou>7) { rou=0; stage=2.1; }
} else if (stage=102) { ///////////////////////////////////////////////punch - 12
 if (rou=0) { 
  if (lax!="punch") ert=1.25;
  else ert=1;
  lax="punch";
  sBarkDmg("punch");
  sound_play(mBPunch);
 }
 sprite_index=sBCyberPunch; image_index=1; image_speed=0;
 rou+=1;
 if (rou>8) image_index=2;
 if (rou>13) { rou=0; stage=2.1; }
} else if (stage=101) { ////////////////////////////////////////////////kick - 9
 if (rou=0) { 
  if (lax!="kick") ert=1.25;
  else ert=1;
  lax="kick";
  sBarkDmg("kick");
  sound_play(mBKick);
 }
 sprite_index=sBCyberPunch; image_index=8; image_speed=0;
 rou+=1;
 if (rou>6) image_index=2;
 if (rou>9) { rou=0; stage=2.1; }
}
