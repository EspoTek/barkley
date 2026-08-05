//Suplex - changed image index to inverse
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
if (rou>20) { image_index=4; rou=0; stage=3.1; target.shake=5; target.image_angle=90; target.x=x; target.y=y-abs(target.sprite_width/2)-5; target.sx=target.x; target.sy=target.y; }
} else if (stage=3.1) {
rou+=1;
if (rou>20) { image_xscale=-1; rou=0; target.image_xscale=-1; stage=3.2; }
} else if (stage=3.2) {
rou+=1;
if (rou>20) { image_xscale=-1; sprite_index=sBCyberSuplex; image_index=0; target.image_xscale=1; }
if (rou>20) { rou=0; target.direction=180; target.speed=8; target.gravity=1; stage=5; }
} else if (stage=4) {

} else if (stage=5) {
rou+=1;
if (rou>15) { rou=0; stage=5; }
if (target.y>oy) { sBCondition("guard",-ceil(target._rguard*.13),target); global.b_obj=target; sound_play(mBFinal); alarm[0]=45; target.shake=15; target.y=oy; target.speed=0; target.gravity=0; stage=200; }
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
image_xscale=1;
} //target.x=x-(target.sprite_width/2)-5; target.y=y-(target.sprite_width/2)-5;
