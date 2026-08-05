//Doubleteam
if (exec!=-1) { lou=0; bou=0; stage=0; }
if (stage=0) {
walk=target;
walkdist=80;
wspd=9;
sprite_index=sBBarkleyRun;
image_index=0;
image_speed=0.5;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=2; }
} else if (stage=2) {
bou+=1; 
sprite_index=sBBarkleyJump;
image_index=0;
image_speed=0;
if (bou>4) { bou=0; stage=3; }
} else if (stage=3) {
sprite_index=sBBarkleyStand;
image_index=0;
ddd=instance_create(x,y,object_index);
ddd.enemy=2;
ddd.dummy=1;
ddd.bal=bal;
ddd.master=id;
ddd.sprite_index=sBBarkleyJump;
with (ddd) { image_index=1; air=1; image_speed=0; path_start(pBarkley0,12,0,0); }
stage=3.001;
global.b_obj=target;
} else if (stage=4) {
ddd.image_xscale=-1;
ddd.image_index=0;
ddd.sprite_index=sBBarkleyStand;
bou+=1; 
if (bou>4) { stage=5; bou=0; } //4
} else if (stage=5) {
ddd.sprite_index=sBBarkleyJump;
ddd.image_index=1;
ddd.air=1;
with (ddd) path_start(pBarkley1,12,0,0);
stage=3.002;
} else if (stage=6) { //throw master
sprite_index=sBBarkleyPass0;
bou+=1;
if (bou>0) {
bou=0;
image_index+=1;
if (image_index=5) {
 sS(mBThrow);
 sSkillDmg("doubleteam");
 gff=sThrow(x,y-44,target.x,target.y,12+random(4),40);
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=bal;
 if (bal=6) { //Dual Shot
 gff=sThrow(x,y-44,target.x,target.y,12+random(4),40);
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=7;
 }
}
if (image_index>=6) {
image_index=6; image_speed=0;
if (instance_exists(oProjectile)=0) { sprite_index=sBBarkleyStand; image_index=0; stage=7; }
}
}
} else if (stage=6.1) { //throw slave
ddd.sprite_index=sBBarkleyPass0;
bou+=1;
if (bou>0) {
bou=0;
ddd.image_index+=1;
if (ddd.image_index=5) {
 sS(mBThrow);
 sSkillDmg("doubleteam");
 gff=sThrow(ddd.x,ddd.y-44,target.x,target.y,12+random(4),40);
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=bal;
 if (bal=6) { //Dual Shot
 gff=sThrow(ddd.x,ddd.y-44,target.x,target.y,12+random(4),40);
 gff.target=target;
 gff.sprite_index=sBBall2;
 gff.image_index=7;
 }
}
if (ddd.image_index>=6) {
ddd.image_index=6; ddd.image_speed=0;
if (instance_exists(oProjectile)=0) { ddd.sprite_index=sBBarkleyStand; ddd.image_index=0; stage=7; }
}
}
} else if (stage=7) {
if (lou>4) stage=4;
else {
lou+=1;
if (floor(random(2))=0) stage=6;
else stage=6.1;
}
} else if (stage=100) {
visible=1;
oy=target.fy;
walk=slav;
walkdist=5;
wspd=9;
image_xscale=-1;
sprite_index=sBBarkleyRun;
image_speed=0.5;
stage=101;
} else if (stage=101) {
if (wdone=1) { doing=-1; stage=0; image_xscale=1; alarm[5]=1; }
}
