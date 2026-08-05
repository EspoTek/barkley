//Jump shot
if (tpp!="jump" && tpp!="null") exit;
if (pstage!=0 || fstage!=0) exit;
if (jstage=3) { //ball not dead
 if (instance_exists(oProjectile)=0) {
 sprite_index=sBBarkleyStand;
 image_speed=0.25;
 image_index=0;
 jstage=0;
 doing=-1;
 }
 exit; 
}
if (jstage=0.5 || jstage=1) {
bou+=1;
if (sKey(global.key_up)) {
height=10;
pause=15; //was 5
} else if (bou<pause) { jstage=3; exit; }
if (bou>=pause) {
global.descriptor=desc2+"Jumper";
prefin=1;
air=1;
if (bou=pause) { image_index=1; } //set when begin jump
if (bou<pause+height && image_index=1) { //up
x-=mom;
vel=abs((pause+height)-bou);
y-=vel;
} else { //down
x-=mom;
vel=abs(bou-(pause+height));
y+=vel;
}
jstage=1;
} else {
if (sKey(global.key_right)) { desc2="Fadeaway "; mom=-1; }
else if (sKey(global.key_left)) { desc2="Forward "; mom=1; }
else { desc2=""; mom=0; }
}
}

if (sKey(global.key_up)=0) {
global.b_obj=global.b_middle;
if (air=0) { tpp="null"; jstage=0; }
}

if (sKey(global.key_up)) {
 if (jstage=0) {
  global.b_obj=oBBarkley;
  tpp="jump";
  oy=y;
  bou=0;
  jstage=0.5;
  sprite_index=sBBarkleyJump;
  image_speed=0;
  image_index=0;
 }
} else if (jstage=1) { //Released
 if (image_index=1) {
 bou=pause+height;
 image_index=2;
 doing=10;
 sS(mBThrow);
 rvel=abs(vel-height); //0 to 10
 if (mom=1) { sBarkDmg("forward"); alarm[0]=1; fadstat=mom; }
 if (mom=0) sBarkDmg("jumper");
 if (mom=-1) { sBarkDmg("fadeaway"); alarm[0]=1; fadstat=mom; }
 gff=sThrow(x+8,y-28,target.x,target.y,11-(vel/2),40+abs(y-ystart));
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=bal;
 global.b_obj=gff;
 if (bal=6) { //Dual Shot
 gff=sThrow(x+8,y-28,target.x,target.y,11-(vel/2)+1,40+abs(y-ystart));
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=7;
 }
 //doing=-1;
 }
}
if (jstage!=0) {
if (y>oy) { //When landing
 if (image_index=2) {
 y=oy; jstage=3;
 sprite_index=sBBarkleyEmpty;
 image_speed=0;
 image_index=0;
 air=0;
 } else { //fouled
 y=oy;
 keyboard_clear(global.key_up);
 jstage=0;
 sprite_index=sBBarkleyStand;
 image_speed=0.25;
 image_index=0;
 air=0;
 alarm[5]=1; prefin=-2;
 }
}
}

