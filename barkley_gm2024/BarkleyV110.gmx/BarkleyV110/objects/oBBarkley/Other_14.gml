//Ghost Muscle
if (exec!=-1) { lou=0; bou=0; stage=0; }
if (stage=0) {
walk=slav;
walkdist=-40;
wspd=9;
sprite_index=sBBarkleyRun;
image_index=0;
image_speed=0.2;
stage=1;
} else if (stage=1) {
if (wdone=1) { 
stage=2; sprite_index=sBBarkleyMuscle0; image_index=0; image_speed=0.2; bou=0; fll=0;
}
} else if (stage=2) {
bou+=1;
if (bou>4) {
fll+=1;
bou=0; instance_create(x,y,oBBarkleyGhost);
}
if (fll>9) { stage=3; bou=0; }
} else if (stage=3) {
if (bou=0) {
sSkillDmg("ghostmuscle");
}
bou+=1;
if (bou>19) { stage=100; }
} else if (stage=100) {
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
