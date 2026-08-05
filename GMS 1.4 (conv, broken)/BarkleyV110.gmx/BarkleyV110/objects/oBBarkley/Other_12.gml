//Holy Dunk
if (exec!=-1) { lou=0; bou=0; stage=0; }
if (stage=0) {
walk=target;
walkdist=130;
wspd=9;
sprite_index=sBBarkleyRun;
image_index=0;
image_speed=0.5;
stage=1;
} else if (stage=1) {
if (wdone=1) { 
stage=2; sprite_index=sBBarkleyStand; image_index=0; 
fll=instance_create(fx-3,fy+5,oBSpotlight); fll.dalp=175; fll.width=0; fll.height=300;
sS(mBHoly);
}
} else if (stage=2) {
bou+=1;
fll.width=bou*2;
if (bou>29) { oy=y; stage=3; bou=0; sprite_index=sBBarkleyHoly; image_index=0; image_speed=0; }
} else if (stage=3) {
air=1;
bou+=1;
y-=2;
if (bou>19) { stage=4; bou=0; image_index=1; }
} else if (stage=4) {
x-=4;
fll.x-=4;
if (abs(x-target.x)<20) { stage=5; image_index=2; }
} else if (stage=5) {
y+=6;
if (y>oy) { sS(mBDunk); y=oy; air=0; stage=6; fll.dalp=0; sSkillDmg("holydunk"); sprite_index=sBBarkleyStand; image_index=0; }
} else if (stage=6) {
bou+=1;
if (bou>29) { stage=100; }
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
