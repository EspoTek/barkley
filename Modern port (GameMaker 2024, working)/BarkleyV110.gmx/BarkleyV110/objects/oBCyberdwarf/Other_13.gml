//Insulin SHot
if (stage=0) {
if (target!=id) {
walk=target;
walkdist=-90;
} else {
walk=slav;
walkdist=-45;
}
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=2; coi=0; coh=0; sprite_index=sBCyberSkill2; image_index=0; emg=0; if (target!=id) image_xscale=-1; }
} else if (stage=2) {
image_speed=0;
coi+=1;
if (coi>3) {
coh+=1;
coi=0;
if (emg=3) emg=0;
else if (emg=0) emg=1;
else if (emg=1) emg=2;
else if (emg=2) emg=3;
image_index=emg;
}
if (coh>4) { stage=3; coh=0; } //11
} else if (stage=3) {
img=4;
image_index=img;
if (coh=0) instance_create(x+10,y-5,oBNeedle);
coh=1;
if (instance_exists(oBNeedle)=0) stage=200;
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

