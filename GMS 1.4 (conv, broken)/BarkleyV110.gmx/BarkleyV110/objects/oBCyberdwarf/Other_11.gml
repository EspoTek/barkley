//Glaucoma Prayer - +3, +28
if (stage=0) {
target=global.b_middle;
walk=target;
walkdist=9;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=2; coi=0; coh=0; sprite_index=sBCyberSkill0; image_index=0; image_speed=0; image_xscale=-1; }
} else if (stage=2) {
coh+=1;
if (coh>5) { stage=3; coh=0; image_index=1; fll=instance_create(fx-3,fy+5,oBSpotlight); fll.dalp=175; fll.width=50; fll.height=300; }
} else if (stage=3) {
if (fll.alp=175) { stage=3.1; sS(mPrayer); }
} else if (stage=3.1) {
coh+=1;
if (coh>15) { 
with (oBattler) if (enemy=0) sBCondition("cure","glaucoma",id);
stage=4.1; 
coh=0; 
}
} else if (stage=4) {
if (fll.alp=0) { stage=200; with (fll) instance_destroy(); }
} else if (stage=4.1) {
coh+=1;
if (coh>15) { stage=4; fll.dalp=0; }
} else if (stage=200) {
image_xscale=-1;
walk=slav;
walkdist=7;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=201;
} else if (stage=201 && wdone=1) {
alarm[5]=5;
doing=-1;
image_xscale=1;
}

