//toss
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
if (rou>20) { rou=0; stage=3; x-=5; target.shake=5; image_index=5; }
} else if (stage=3) {
rou+=1;
if (rou>20) { image_index=4; rou=0; stage=4; target.shake=5; target.image_angle=90; target.x=x; target.y=y-abs(target.sprite_width/2)-5; target.sx=target.x; target.sy=target.y; }
} else if (stage=4) {
rou+=1;
if (rou>20) { image_index=5; target.direction=130; target.speed=8; target.gravity=1; stage=5; }
} else if (stage=5) {
if (target.y>oy) { sBCondition("power",-ceil(target._rpower*.13),target); global.b_obj=target; sound_play(mBFinal); alarm[0]=45; target.shake=15; target.y=oy; target.speed=0; target.gravity=0; stage=200; }
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
