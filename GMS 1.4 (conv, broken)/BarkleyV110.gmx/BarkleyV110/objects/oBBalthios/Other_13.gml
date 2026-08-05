//Water Zauber - end of path has hit
if (stage=0) {
walk=slav;
walkdist=-50;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=1.08;
} else if (stage=1.08) {
if (wdone=1) { 
sprite_index=sBBalthiosSkill3; image_index=0; image_speed=0;
instance_create(0,0,oBWater);
stage=1.088;
coh=0;
}
} else if (stage=1.088) {
coh+=1;
if (coh>29) { stage=1.123; coh=0; sprite_index=sBBalthiosSkill5; alarm[0]=15; image_index=0; image_speed=0; global.b_obj=global.b_left; }
} else if (stage=1.123) {
global.b_obj=global.b_left;
stage=1.002; coh=0; path_start(pBalthios1,12,0,0); instance_create(0,0,oBWater0);
} else if (stage=2.002) {
coh+=1;
if (coh>14) { 
stage=1.003; coh=0;
image_xscale=-1;
sprite_index=sBBalthiosSkill5; alarm[0]=15; image_index=0; image_speed=0;
path_start(pBalthios2,12,0,0); instance_create(0,0,oBWater0);
}
} else if (stage=2.003) {
oBWater.intensity=0;
image_xscale=1;
stage=6;
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
