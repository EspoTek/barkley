//Free throw
if (tpp!="free" && tpp!="null") exit;
if (pstage!=0 || jstage!=0) exit;
if (tch=1) {
with (oBattleMenu) {
sIntTarget(1);
if (sKey(global.key_left,1)) { sP(); pos1=max(0,pos1-1); }
if (sKey(global.key_right,1)) { sP(); pos1=min(targetmax,pos1+1); }
with (oBattler) hilight=0; 
targetid[pos1].hilight=1;
}
target=oBattleMenu.targetid[oBattleMenu.pos1];
oBattleMenu.hilight=target;
}
global.b_obj=global.b_middle;
if (fstage=3) { //ball not dead
 if (instance_exists(oProjectile)=0) {
 if (fsh<0) {
  sprite_index=sBBarkleyStand;
  image_speed=0.25;
  image_index=0;
  fstage=0;
  doing=-1;
  fsh=2;
  tch=0;
  with (oBattler) hilight=0;
  oBattleMenu.hilight=-1;
 } else { //this is vital
  if (fsh=2) { tpp="null"; fstage=0; exit; }
  if (fsh!=2) global.descriptor="One shot left. Left / Right to change targets.";
  bou=0;
  tch=1;
  fstage=0.5;
  sprite_index=sBBarkleyFree;
  image_speed=0;
  image_index=0;
 }
 }
 exit; 
}
if (fstage=0.5 || fstage=1) {
bou+=1;
if (sKey(global.key_action)) {
pause=5;
} else if (bou<pause) { fstage=3; exit; }
if (bou>=pause) {
prefin=2;
if (bou=pause) { 
if (fsh=2) { global.descriptor="Two shots left. Left / Right to change targets."; }
tch=1; image_index=1; oBTimer.visible=1; with (oBTimer) event_user(0); oBTimer.ud=1; 
}
fstage=1;
}
}

//if (sKey(global.key_action)=0) {
//if (image_index=0 && fsh=2) { tpp='null'; fstage=0; }
//}

if (sKey(global.key_action)) {
 if (fstage=0 || (fstage=0.5 && fsh=1)) {
  if (fstage=0) { fsh=2; }
  else { fsh=0.9; tch=1; }
  tpp="free";
  bou=0;
  fstage=0.5;
  sprite_index=sBBarkleyFree;
  image_speed=0;
  image_index=0;
 }
} else if (fstage=1) { //Released
 if (image_index=1) {
 tch=0;
 fstage=3;
 image_index=2;
 oBTimer.ud=0;
 oBTimer.visible=0;
 del=abs(oBTimer.yy-24);
 del=abs(del-24)/2.4;
 doing=11;
 fsh-=1;
 sS(mBThrow);
 sBarkDmg("freethrow");
 gff=sThrow(x+15,y-31,target.x,target.y,10+(del/3),40); //8
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=bal;
 //global.b_obj=gff;
 if (bal=6) { //Dual Shot
 gff=sThrow(x+15,y-31,target.x,target.y,10+(del/3)+1,40);
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=7;
 }
 //doing=-1;
 }
}

