//Wind Zauber -- damage in winds
global.b_obj=global.b_middle;
if (stage=0) {
global.tkmp=0;
with (oBattler) global.tkmp+=enemy;
global.tkmp-=1;
walk=slav;
walkdist=-30;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
instance_create(0,0,oBWind2);
stage=1;
} else if (stage=1) {
if (wdone=1) { fll=0; stage=2; sprite_index=sBBalthiosSkill1; image_index=0; image_speed=0; coh=0; }
} else if (stage=2) {
coh+=2;
if (coh>1) { 
coh=0; image_index+=1; 
if (image_index=2) sS(mBLaunchZ);
if (image_index=4) {
oBWind2.intensity+=15;
qqq=instance_create(x-20,y-10,oBWind0);
target=sEnemyTarget("random",1);
qqq.target=target;
}
}
if (image_index=7) {
fll+=1;
image_index=0;
if (fll>global.tkmp) {
stage=3;
image_index=0;
//sprite_index=sBBalthiosStand;
coh=0;
}
}
} else if (stage=3) {
//enemy=2; //nulls shake deal, MAKES PROBLEM CAUSE SHOWS IN BOX
noshake=1;
shake=5;
coh+=1;
if (coh>29) { stage=4; coh=0; }
} else if (stage=4) {
coh+=1;
if (coh>1) { 
coh=0; image_index+=1; 
if (image_index=2) sS(mBLaunchZ);
}
if (image_index=7) {
image_index=6;
stage=5;
coh=0;
noshake=0;
//enemy=0;
}
} else if (stage=5) {
coh+=1;
if (coh>14) { instance_create(x-20,y-10,oBWind1); stage=5.1; coh=0; }
} else if (stage=5.1) {
coh+=1;
if (coh>32) stage=6; //64
} else if (stage=6) {
walk=slav;
walkdist=5;
wspd=3;
image_xscale=-1;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=7;
} else if (stage=7) {
if (wdone=1) { doing=-1; stage=0; image_xscale=1; }
}
