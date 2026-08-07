//Muscle zauber
if (stage=0) {
slide=1;
sS(mBDash);
wspd=20;
walk=target;
walkdist=100;
sprite_index=sBBalthiosStand;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { slide=0; stage=2; coh=0; sprite_index=sBBalthiosSkill3; image_index=0; image_speed=0; }
} else if (stage=2) {
coh+=1;
if (coh>14) {
sT(c_black,0.5,0.1);
stage=3;
}
} else if (stage=3) {
coh+=1;
if (coh>9) { 
coh=0;
fll=0;
stage=4;
stg=10+floor(random(5));
}
} else if (stage=4) {
coh+=1;
if (coh>stg) { 
stg=8;//+floor(random(5));
fll+=1;
coh=0;
lop=instance_create(x,y,oBSkull0);
lop.target=target;
 }
 if (fll>5) { stage=4.1; fll=0; }
} else if (stage=4.1) {
coh+=1;
if (coh>14) { 
coh=0;
if (fll=0) {
lop=instance_create(x,y,oBSkull1);
lop.target=target;
} fll+=1;
}
if (fll>3) { stage=4.7; sT(c_black,0,0.1); }
} else if (stage=4.8) {
slide=1;
sS(mBDash);
walk=slav;
walkdist=-40;
wspd=20;
image_xscale=-1;
sprite_index=sBBalthiosStand;
image_speed=0.3;
stage=4.9;
} else if (stage=4.9) {
if (wdone=1) { slide=0; stage=6; }
} else if (stage=4.7) {
coh+=1;
if (coh>9) { 
stage=4.8;
}
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
