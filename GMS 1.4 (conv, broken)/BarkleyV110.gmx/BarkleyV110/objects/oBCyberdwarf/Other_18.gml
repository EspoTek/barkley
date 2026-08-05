//push
if (stage=0) {
oy=target.fy;
walk=target;
walkdist=30;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=2; }
} else if (stage=2) {
sprite_index=sBCyberPunch;
image_index=2;
image_speed=0;
rou+=1;
if (rou>20) { sBCondition("brain",-ceil(target._rbrain*.13),target); rou=0; x-=10; image_index=5; sound_play(mBFinal); target.direction=180; target.shake=15; target.speed=4; target.friction=0.33; stage=5; }
} else if (stage=5) {
if (target.speed=0) { alarm[0]=45; target.speed=0; target.friction=0; stage=200; }
} else if (stage=200) {
walk=slav;
walkdist=7;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=201;
} else if (stage=201 && wdone=1) {
alarm[5]=5;
target.editing=0;
doing=-1;
}
