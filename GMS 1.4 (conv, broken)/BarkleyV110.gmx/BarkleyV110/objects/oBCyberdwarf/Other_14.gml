//Chaff grenade
global.b_obj=global.b_middle;
target=global.b_middle;
if (stage=0) {
walk=target;
walkdist=7;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { target=sEnemyTarget("random",1); stage=2; coi=0; coh=0; sprite_index=sBCyberSkill4; image_index=0; image_speed=0;  }
} else if (stage=2) {
coh+=1;
if (coh>15) { stage=2.1; coh=0; image_index=1; fol=instance_create(x-7,y-20,oBChaff); }
} else if (stage=2.1) {
coh+=1;
if (coh>15) { image_index=2; with (fol) path_start(pChaff,5,0,0); stage=3; }
} else if (stage=3) {
if (instance_exists(oBChaff)=0) stage=200;
} else if (stage=200) {
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

