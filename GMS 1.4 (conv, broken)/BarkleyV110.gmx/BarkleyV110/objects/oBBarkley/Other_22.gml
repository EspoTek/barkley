//Pass
if (tpp!="pass" && tpp!="null") exit;
if (fstage!=0 || jstage!=0) exit;
if (pass=3) { //ball not dead
 if (instance_exists(oProjectile)=0) {
 sprite_index=sBBarkleyStand;
 image_speed=0.25;
 image_index=0;
 pstage=0;
 pass=0;
 doing=-1;
 }
 exit; 
}
if (pstage=0.5 || pstage=1) {

if (sKey(global.key_cancel)) {
pause=5;
image_index=min(image_index+1,pause-1);
} else if (image_index<pause-1) { pass=3; exit; }
if (image_index>=pause-1) {
global.descriptor="Pass";
prefin=3;
if (image_index=pause-1 && pass=0) { pstage=1;pass=1; oBTimer.visible=1; with (oBTimer) event_user(0); oBTimer.lr=1; }
}
}

if (sKey(global.key_cancel)=0) {
if (pass=0) { tpp="null"; pstage=0; }
}

if (sKey(global.key_cancel)) {
 if (pstage=0) {
  tpp="pass";
  bou=0;
  pass=0;
  pstage=0.5;
  sprite_index=sBBarkleyPass0;
  image_speed=0;
  image_index=0;
 }
}
if ((sKey(global.key_cancel)=0 && pstage=1) || pass=2) { //Released
 image_index+=1;
 pass=2;
 if (pass=2 && image_index=6) {
 pstage=3;
 pass=3;
 image_index=6;
 del=abs(oBTimer.zy-40);
 if (oBTimer.zy=4) { del=45; }
 else del=del/1.3;
 oBTimer.lr=0;
 oBTimer.visible=0;
 doing=12;
 sS(mBThrow);
 sBarkDmg("pass");
 gff=sThrow(x,y-44,target.x,target.y,8+(del/10),40);
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=bal;
 global.b_obj=gff;
 if (bal=6) { //Dual Shot
 gff=sThrow(x,y-44,target.x,target.y,8+(del/10)+1,40);
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=7;
 }
 //doing=-1;
 }
}
