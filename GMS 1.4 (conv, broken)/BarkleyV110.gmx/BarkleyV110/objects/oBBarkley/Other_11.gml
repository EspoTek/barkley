//Showboat Jam
if (exec!=-1) { lou=0; bou=0; stage=0; }
if (stage=0) {
walk=target;
walkdist=180;
wspd=9;
sprite_index=sBBarkleyRun;
image_index=0;
image_speed=0.5;
stage=1;
} else if (stage=1) {
if (wdone=1) { 
stage=2; sprite_index=sBBarkleyShow; image_index=0; image_speed=0;
}
} else if (stage=2) {
bou+=1;
if (bou>7) { bou=0; image_index+=1; } //0-9
path_speed=5;
if (image_index=1) { air=1; if (bou=0) { path_start(pBarkley2,5,0,0); sS(mBCheer); } }
if (image_index=2) { if (bou=0) instance_create(0,0,oBFlash); if (bou<6) path_speed=0; }
if (image_index=5) { if (bou=0) { instance_create(0,0,oBFlash); event_user(7); } if (bou<6) path_speed=0; }
if (image_index=8) { if (bou=0) instance_create(0,0,oBFlash); if (bou<6) path_speed=0; }
if (image_index=10) { 
sS(mBDunk);
sprite_index=sBBarkleyEmpty; image_index=0; bou=0; stage=3; air=0;
sSkillDmg("showboatjam");
}
} else if (stage=3) {
bou+=1;
if (bou>14) { stage=100; }
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
